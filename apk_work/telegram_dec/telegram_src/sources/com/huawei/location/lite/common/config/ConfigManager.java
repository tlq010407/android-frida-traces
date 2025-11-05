package com.huawei.location.lite.common.config;

import android.text.TextUtils;
import com.google.gson.JsonSyntaxException;
import com.google.gson.reflect.TypeToken;
import com.huawei.location.lite.common.http.HttpClientEx;
import com.huawei.location.lite.common.http.exception.OnErrorException;
import com.huawei.location.lite.common.http.exception.OnFailureException;
import com.huawei.location.lite.common.http.request.BaseRequest;
import com.huawei.location.lite.common.http.request.HeadBuilder;
import com.huawei.location.lite.common.http.request.RequestJsonBody;
import com.huawei.location.lite.common.log.LogConsole;
import com.huawei.location.lite.common.security.LocationSecurityManager;
import com.huawei.location.lite.common.util.GsonUtil;
import com.huawei.location.lite.common.util.PreferencesHelper;
import java.util.HashMap;
import java.util.UUID;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class ConfigManager {
    private static final Object SYNC_LOCK = new Object();
    private HashMap configCache;

    private static class Vw {
        private static final ConfigManager yn = new ConfigManager(null);
    }

    class yn extends TypeToken<HashMap<String, String>> {
        yn(ConfigManager configManager) {
        }
    }

    private ConfigManager() {
    }

    /* synthetic */ ConfigManager(yn ynVar) {
        this();
    }

    private boolean checkCacheExpired(PreferencesHelper preferencesHelper) {
        long j = preferencesHelper.getLong("KEY_CACHE_TIME");
        return j == -1 || System.currentTimeMillis() > j + 86400000;
    }

    private void checkConfigData() {
        PreferencesHelper preferencesHelper = new PreferencesHelper("com.huawei.hms.location.config");
        if (!checkCacheExpired(preferencesHelper)) {
            loadConfigCache(preferencesHelper);
        } else {
            this.configCache = null;
            requestConfigSync();
        }
    }

    public static ConfigManager getInstance() {
        return Vw.yn;
    }

    private void jsonArray2Map(String str) throws JSONException {
        JSONArray jSONArray = new JSONArray(str);
        this.configCache = new HashMap();
        for (int i = 0; i < jSONArray.length(); i++) {
            try {
                ConfigResponseItem configResponseItem = (ConfigResponseItem) GsonUtil.getInstance().fromJson(jSONArray.getString(i), ConfigResponseItem.class);
                this.configCache.put(configResponseItem.getItemName(), configResponseItem.getItemValue());
            } catch (JsonSyntaxException unused) {
                LogConsole.e("ConfigManager", "jsonArray2Map failed");
            }
        }
    }

    private void loadConfigCache(PreferencesHelper preferencesHelper) {
        synchronized (SYNC_LOCK) {
            try {
                if (this.configCache != null) {
                    return;
                }
                String string = preferencesHelper.getString("KEY_CONFIG_DATA");
                if (TextUtils.isEmpty(string)) {
                    return;
                }
                String strDecrypt = new LocationSecurityManager(3).decrypt(string, "LOCATION_LITE_SDK");
                if (TextUtils.isEmpty(strDecrypt)) {
                    LogConsole.e("ConfigManager", "load config decrypt failed");
                    return;
                }
                try {
                    this.configCache = (HashMap) GsonUtil.getInstance().fromJson(strDecrypt, new yn(this).getType());
                } catch (JsonSyntaxException unused) {
                    LogConsole.e("ConfigManager", "load config jsonSyntax failed");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private String requestConfig() throws JSONException {
        StringBuilder sb;
        String apiMsg;
        try {
            RequestJsonBody.Builder builderAdd = new RequestJsonBody.Builder().add("groupName", "liteSDK");
            return GsonUtil.getInstance().toJson(((ConfigResponseData) new HttpClientEx().newSubmit(new BaseRequest.Builder("/networklocation/v1/configurations").setHeads(new HeadBuilder(String.valueOf(UUID.randomUUID()))).setBody(builderAdd.build()).builder()).execute(ConfigResponseData.class)).getData());
        } catch (OnErrorException e) {
            sb = new StringBuilder();
            sb.append("OnErrorException:code:");
            sb.append(e.getErrorCode().code);
            sb.append(",apiCode:");
            sb.append(e.getApiCode());
            sb.append(",apiMsg:");
            apiMsg = e.getApiMsg();
            sb.append(apiMsg);
            LogConsole.e("ConfigManager", sb.toString());
            return null;
        } catch (OnFailureException e2) {
            sb = new StringBuilder();
            sb.append("OnFailureException:");
            sb.append(e2.getErrorCode().code);
            sb.append(",");
            apiMsg = e2.getErrorCode().msg;
            sb.append(apiMsg);
            LogConsole.e("ConfigManager", sb.toString());
            return null;
        }
    }

    private void save2Storage(String str) {
        String strEncrypt = new LocationSecurityManager(3).encrypt(str, "LOCATION_LITE_SDK");
        PreferencesHelper preferencesHelper = new PreferencesHelper("com.huawei.hms.location.config");
        preferencesHelper.saveString("KEY_CONFIG_DATA", strEncrypt);
        preferencesHelper.saveLong("KEY_CACHE_TIME", System.currentTimeMillis());
        LogConsole.i("ConfigManager", "save config to storage end");
    }

    public ConfigBaseResponse getConfig(String str, Class cls) {
        checkConfigData();
        HashMap map = this.configCache;
        if (map == null) {
            return null;
        }
        String str2 = (String) map.get(str);
        if (TextUtils.isEmpty(str2)) {
            return null;
        }
        try {
            return (ConfigBaseResponse) GsonUtil.getInstance().fromJson(str2, cls);
        } catch (JsonSyntaxException unused) {
            LogConsole.e("ConfigManager", "getConfig failed");
            return null;
        }
    }

    public String getConfig(String str, String str2) {
        String str3;
        checkConfigData();
        HashMap map = this.configCache;
        if (map == null) {
            return null;
        }
        String str4 = (String) map.get(str);
        if (TextUtils.isEmpty(str4)) {
            return null;
        }
        try {
            str3 = (String) new JSONObject(str4).get(str2);
        } catch (JSONException unused) {
            LogConsole.e("ConfigManager", "json parse failed");
            str3 = "";
        }
        LogConsole.d("ConfigManager", "key=" + str2 + ",value=" + str3);
        return str3;
    }

    public void requestConfigSync() {
        synchronized (SYNC_LOCK) {
            LogConsole.i("ConfigManager", "requestConfigSync start");
            if (this.configCache != null) {
                LogConsole.i("ConfigManager", "configCache is init");
                return;
            }
            try {
                String strRequestConfig = requestConfig();
                if (!TextUtils.isEmpty(strRequestConfig)) {
                    jsonArray2Map(strRequestConfig);
                    save2Storage(GsonUtil.getInstance().toJson(this.configCache));
                }
            } catch (JSONException unused) {
                LogConsole.e("ConfigManager", "JSONException");
            }
        }
    }
}
