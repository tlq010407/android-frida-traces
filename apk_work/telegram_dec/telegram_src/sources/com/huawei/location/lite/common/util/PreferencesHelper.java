package com.huawei.location.lite.common.util;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import com.huawei.location.lite.common.android.context.ContextUtil;
import com.huawei.location.lite.common.log.LogConsole;
import java.util.HashMap;
import java.util.Map;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class PreferencesHelper {
    private static final Map DEF_MAP_VALUE = new HashMap();
    private SharedPreferences sharedPreferences;

    public PreferencesHelper(String str) {
        this(str, 0);
    }

    public PreferencesHelper(String str, int i) {
        Context hMSContext = RouterComponentType.getComponentType() == 1 ? ContextUtil.getHMSContext() : ContextUtil.getContext();
        try {
            this.sharedPreferences = (Build.VERSION.SDK_INT >= 24 ? hMSContext.createDeviceProtectedStorageContext() : hMSContext).getSharedPreferences(str, i);
        } catch (Exception e) {
            LogConsole.e("LocationPreferences", "init getSharedPreferences fail:" + e.getMessage());
        }
    }

    public long getLong(String str) {
        SharedPreferences sharedPreferences = this.sharedPreferences;
        if (sharedPreferences == null) {
            return -1L;
        }
        try {
            return sharedPreferences.getLong(str, -1L);
        } catch (Exception unused) {
            LogConsole.e("LocationPreferences", "getLong fail");
            return -1L;
        }
    }

    public String getString(String str) {
        SharedPreferences sharedPreferences = this.sharedPreferences;
        if (sharedPreferences == null) {
            return "";
        }
        try {
            return sharedPreferences.getString(str, "");
        } catch (Exception unused) {
            LogConsole.e("LocationPreferences", "getString fail");
            return "";
        }
    }

    public boolean remove(String str) {
        SharedPreferences sharedPreferences = this.sharedPreferences;
        if (sharedPreferences == null) {
            return false;
        }
        try {
            return sharedPreferences.edit().remove(str).commit();
        } catch (Exception unused) {
            LogConsole.e("LocationPreferences", "remove fail");
            return false;
        }
    }

    public boolean saveLong(String str, long j) {
        SharedPreferences sharedPreferences = this.sharedPreferences;
        if (sharedPreferences == null) {
            return false;
        }
        try {
            return sharedPreferences.edit().putLong(str, j).commit();
        } catch (Exception unused) {
            LogConsole.e("LocationPreferences", "saveLong fail");
            return false;
        }
    }

    public boolean saveString(String str, String str2) {
        SharedPreferences sharedPreferences = this.sharedPreferences;
        if (sharedPreferences == null) {
            return false;
        }
        try {
            SharedPreferences.Editor editorEdit = sharedPreferences.edit();
            if (editorEdit != null) {
                editorEdit.putString(str, str2);
                return editorEdit.commit();
            }
        } catch (Exception unused) {
            LogConsole.e("LocationPreferences", "saveString fail");
        }
        return false;
    }
}
