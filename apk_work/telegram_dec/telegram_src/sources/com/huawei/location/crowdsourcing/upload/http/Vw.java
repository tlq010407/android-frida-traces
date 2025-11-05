package com.huawei.location.crowdsourcing.upload.http;

import android.net.Uri;
import com.google.gson.JsonSyntaxException;
import com.huawei.hms.framework.common.ContainerUtils;
import com.huawei.location.base.activity.constant.ActivityRecognitionConstants;
import com.huawei.location.lite.common.http.request.BaseRequest;
import com.huawei.location.lite.common.log.LogConsole;
import com.huawei.location.lite.common.util.GsonUtil;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.ProtocolException;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.util.Locale;
import java.util.Map;
import java.util.SortedMap;
import java.util.TreeMap;
import javax.net.ssl.HttpsURLConnection;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public abstract class Vw {
    private final SortedMap FB = new TreeMap();
    private final SortedMap LW = new TreeMap();
    private final String Vw;
    private final yn dC;
    private final String yn;

    public enum yn {
        POST(BaseRequest.METHOD_POST),
        PUT("PUT");

        private final String LW;

        yn(String str) {
            this.LW = str;
        }

        @Override // java.lang.Enum
        public String toString() {
            return "Method{value='" + this.LW + "'}";
        }

        String yn() {
            return this.LW;
        }
    }

    public Vw(yn ynVar, String str) {
        this.dC = ynVar;
        Uri uri = Uri.parse(str);
        String scheme = uri.getScheme();
        if (scheme == null || !scheme.toLowerCase(Locale.ENGLISH).equals("https")) {
            this.yn = "";
            this.Vw = "";
            LogConsole.e("HttpsRequest", "not https");
            return;
        }
        String authority = uri.getAuthority();
        String path = uri.getPath();
        authority = authority == null ? "" : authority;
        String str2 = path != null ? path : "";
        this.yn = authority;
        this.Vw = str2;
        yn(uri);
    }

    public Vw(yn ynVar, String str, String str2) {
        this.dC = ynVar;
        this.yn = str;
        this.Vw = str2;
    }

    private boolean Vw(HttpsURLConnection httpsURLConnection) throws IOException {
        String str;
        boolean z;
        InputStream inputStreamLW = LW();
        try {
        } catch (ProtocolException unused) {
            str = "protocol error, method:" + httpsURLConnection.getRequestMethod();
        } catch (IOException unused2) {
            LogConsole.e("HttpsRequest", "IO or close failed");
        }
        if (inputStreamLW == null) {
            str = "get body error";
            LogConsole.e("HttpsRequest", str);
            return false;
        }
        try {
            OutputStream outputStream = httpsURLConnection.getOutputStream();
            try {
                byte[] bArr = new byte[1024];
                int i = 0;
                while (true) {
                    int i2 = inputStreamLW.read(bArr);
                    if (i2 == -1) {
                        break;
                    }
                    outputStream.write(bArr, 0, i2);
                    i += i2;
                }
                LogConsole.d("HttpsRequest", "request body length:" + i);
                z = true;
                if (outputStream != null) {
                    try {
                        outputStream.close();
                    } catch (Throwable th) {
                        th = th;
                        try {
                            throw th;
                        } finally {
                        }
                    }
                }
                inputStreamLW.close();
                return z;
            } finally {
            }
        } catch (Throwable th2) {
            th = th2;
            z = false;
        }
    }

    static String yn(String str) {
        try {
            return URLEncoder.encode(str, "UTF-8");
        } catch (UnsupportedEncodingException unused) {
            LogConsole.e("HttpsRequest", "not support UTF-8");
            return "";
        }
    }

    protected static String yn(SortedMap sortedMap) {
        StringBuilder sb = new StringBuilder();
        for (Map.Entry entry : sortedMap.entrySet()) {
            if (sb.length() > 0) {
                sb.append(ContainerUtils.FIELD_DELIMITER);
            }
            sb.append((String) entry.getKey());
            sb.append(ContainerUtils.KEY_VALUE_DELIMITER);
            sb.append((String) entry.getValue());
        }
        return sb.toString();
    }

    private String yn(HttpsURLConnection httpsURLConnection) throws IOException {
        String str;
        String str2;
        String string = null;
        try {
            httpsURLConnection.setRequestMethod(this.dC.yn());
            for (Map.Entry entry : this.FB.entrySet()) {
                httpsURLConnection.setRequestProperty((String) entry.getKey(), (String) entry.getValue());
            }
            httpsURLConnection.setDoOutput(true);
            httpsURLConnection.setUseCaches(false);
            httpsURLConnection.setReadTimeout(ActivityRecognitionConstants.DEFAULT_DETECTION_INTERVAL_MILLIS);
            httpsURLConnection.setConnectTimeout(ActivityRecognitionConstants.DEFAULT_DETECTION_INTERVAL_MILLIS);
            if (Vw(httpsURLConnection)) {
                try {
                    int responseCode = httpsURLConnection.getResponseCode();
                    if (responseCode >= 200 && responseCode < 300) {
                        LogConsole.d("HttpsRequest", "http code:" + responseCode);
                        try {
                            InputStream inputStream = httpsURLConnection.getInputStream();
                            try {
                                StringBuilder sb = new StringBuilder();
                                byte[] bArr = new byte[1024];
                                while (true) {
                                    int i = inputStream.read(bArr);
                                    if (i == -1) {
                                        break;
                                    }
                                    sb.append(new String(bArr, 0, i, StandardCharsets.UTF_8));
                                }
                                string = sb.toString();
                                inputStream.close();
                            } finally {
                            }
                        } catch (FileNotFoundException unused) {
                            str2 = "path not exist. url:" + httpsURLConnection.getURL();
                            LogConsole.e("HttpsRequest", str2);
                            return string;
                        } catch (IOException unused2) {
                            str2 = "read all error";
                            LogConsole.e("HttpsRequest", str2);
                            return string;
                        }
                        return string;
                    }
                    str = "http code error" + responseCode;
                } catch (IOException unused3) {
                    str = "get response code error, io exception.";
                }
            } else {
                str = "write all failed";
            }
        } catch (ProtocolException unused4) {
            LogConsole.e("HttpsRequest", "protocol not support." + this.dC);
            str = "fill connection failed";
        }
        LogConsole.e("HttpsRequest", str);
        return null;
    }

    private void yn(Uri uri) {
        try {
            for (String str : uri.getQueryParameterNames()) {
                String queryParameter = uri.getQueryParameter(str);
                if (queryParameter == null) {
                    LogConsole.e("HttpsRequest", "arg value null.");
                    LogConsole.d("HttpsRequest", "arg value null. arg name:" + str);
                } else {
                    Vw(str, queryParameter);
                }
            }
        } catch (UnsupportedOperationException unused) {
            LogConsole.e("HttpsRequest", "url not support");
        }
    }

    protected String FB() {
        return this.Vw;
    }

    protected abstract InputStream LW();

    public Vw Vw(String str, String str2) {
        String strYn = yn(str);
        String strYn2 = yn(str2);
        if (!strYn.isEmpty() && !strYn2.isEmpty()) {
            this.LW.put(strYn, strYn2);
        }
        return this;
    }

    protected String Vw() {
        return this.dC.yn();
    }

    protected boolean dC() {
        String str;
        if (this.yn.isEmpty()) {
            str = "domain empty";
        } else {
            if (!this.Vw.isEmpty()) {
                return true;
            }
            str = "path empty";
        }
        LogConsole.e("HttpsRequest", str);
        LogConsole.e("HttpsRequest", "valid failed");
        return false;
    }

    public Vw yn(String str, String str2) {
        if (str.isEmpty()) {
            return this;
        }
        this.FB.put(str, str2);
        return this;
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x007f, code lost:
    
        if (r3 == null) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0081, code lost:
    
        r0 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x009d, code lost:
    
        if (r3 == null) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00a4, code lost:
    
        r0 = null;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00ee  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00f4  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x011c  */
    /* JADX WARN: Type inference failed for: r3v1, types: [boolean] */
    /* JADX WARN: Type inference failed for: r3v22, types: [java.lang.String] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public com.huawei.location.crowdsourcing.upload.http.yn yn(Class cls) throws Throwable {
        HttpsURLConnection httpsURLConnection;
        String strYn;
        String str;
        Object objFromJson;
        com.huawei.location.crowdsourcing.upload.http.yn ynVar;
        String str2;
        HttpURLConnection httpURLConnection = null;
        if (dC()) {
            String strYn2 = yn(this.LW);
            String str3 = this.yn;
            String str4 = this.Vw;
            StringBuilder sb = new StringBuilder();
            sb.append("https");
            sb.append("://");
            sb.append(str3);
            sb.append(str4);
            ?? IsEmpty = strYn2.isEmpty();
            HttpURLConnection httpURLConnection2 = IsEmpty;
            if (IsEmpty == 0) {
                sb.append("?");
                sb.append(strYn2);
                httpURLConnection2 = "?";
            }
            String string = sb.toString();
            try {
                try {
                    LogConsole.d("HttpsRequest", "url:" + string);
                    URLConnection uRLConnectionOpenConnection = new URL(string).openConnection();
                    if (uRLConnectionOpenConnection instanceof HttpsURLConnection) {
                        httpsURLConnection = (HttpsURLConnection) uRLConnectionOpenConnection;
                        try {
                            strYn = yn(httpsURLConnection);
                        } catch (MalformedURLException unused) {
                            LogConsole.e("HttpsRequest", "url format error.");
                            LogConsole.d("HttpsRequest", "url format error, url:" + string);
                        } catch (IOException unused2) {
                            LogConsole.e("HttpsRequest", "connection error.");
                        }
                    } else {
                        LogConsole.e("HttpsRequest", "not HttpsURLConnection");
                        strYn = null;
                        httpsURLConnection = null;
                    }
                } catch (Throwable th) {
                    th = th;
                    httpURLConnection = httpURLConnection2;
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                    throw th;
                }
            } catch (MalformedURLException unused3) {
                httpsURLConnection = null;
            } catch (IOException unused4) {
                httpsURLConnection = null;
            } catch (Throwable th2) {
                th = th2;
                if (httpURLConnection != null) {
                }
                throw th;
            }
            if (httpsURLConnection != null) {
                httpsURLConnection.disconnect();
            }
            if (strYn != null) {
                if (strYn.isEmpty()) {
                    LogConsole.d("HttpsRequest", "body empty and treat as success");
                    try {
                        objFromJson = cls.newInstance();
                    } catch (IllegalAccessException unused5) {
                        str = "can not create resp, IllegalAccessException";
                        LogConsole.e("HttpsRequest", str);
                        objFromJson = null;
                        ynVar = (com.huawei.location.crowdsourcing.upload.http.yn) objFromJson;
                        if (ynVar != null) {
                        }
                        return ynVar;
                    } catch (InstantiationException unused6) {
                        str = "can not create resp, InstantiationException";
                        LogConsole.e("HttpsRequest", str);
                        objFromJson = null;
                        ynVar = (com.huawei.location.crowdsourcing.upload.http.yn) objFromJson;
                        if (ynVar != null) {
                        }
                        return ynVar;
                    }
                } else {
                    LogConsole.d("HttpsRequest", "response body length:" + strYn.length());
                    try {
                        objFromJson = GsonUtil.getInstance().fromJson(strYn, cls);
                    } catch (JsonSyntaxException unused7) {
                        str = "json syntax error";
                        LogConsole.e("HttpsRequest", str);
                        objFromJson = null;
                        ynVar = (com.huawei.location.crowdsourcing.upload.http.yn) objFromJson;
                        if (ynVar != null) {
                        }
                        return ynVar;
                    }
                }
                ynVar = (com.huawei.location.crowdsourcing.upload.http.yn) objFromJson;
                if (ynVar != null) {
                    LogConsole.e("HttpsRequest", "response null");
                } else {
                    if (!ynVar.Vw()) {
                        LogConsole.e("HttpsRequest", "response failed. reason:" + ynVar.yn());
                        return null;
                    }
                    LogConsole.d("HttpsRequest", "got response");
                }
                return ynVar;
            }
            str2 = "responseContent null";
        } else {
            str2 = "pre execute failed";
        }
        LogConsole.e("HttpsRequest", str2);
        return null;
    }

    protected String yn() {
        return yn(this.LW);
    }
}
