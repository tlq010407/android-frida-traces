package com.huawei.hms.opendevice;

import android.content.Context;
import android.text.TextUtils;
import com.huawei.hms.support.log.HMSLog;
import com.huawei.location.lite.common.http.request.BaseRequest;
import com.huawei.secure.android.common.ssl.SecureSSLSocketFactory;
import com.huawei.secure.android.common.util.IOUtil;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.security.GeneralSecurityException;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public abstract class d {

    private enum a {
        GET(BaseRequest.METHOD_GET),
        POST(BaseRequest.METHOD_POST);

        public String d;

        a(String str) {
            this.d = str;
        }

        public String a() {
            return this.d;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v11 */
    /* JADX WARN: Type inference failed for: r10v14 */
    /* JADX WARN: Type inference failed for: r10v17 */
    /* JADX WARN: Type inference failed for: r10v22 */
    /* JADX WARN: Type inference failed for: r10v5, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v11 */
    /* JADX WARN: Type inference failed for: r2v12 */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v3, types: [java.net.HttpURLConnection] */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v10 */
    /* JADX WARN: Type inference failed for: r8v11, types: [java.io.OutputStream] */
    /* JADX WARN: Type inference failed for: r8v12 */
    /* JADX WARN: Type inference failed for: r8v13 */
    /* JADX WARN: Type inference failed for: r8v15 */
    /* JADX WARN: Type inference failed for: r8v18 */
    /* JADX WARN: Type inference failed for: r8v22, types: [java.io.BufferedOutputStream, java.io.FilterOutputStream] */
    /* JADX WARN: Type inference failed for: r8v28 */
    /* JADX WARN: Type inference failed for: r8v29 */
    /* JADX WARN: Type inference failed for: r8v30 */
    /* JADX WARN: Type inference failed for: r8v31 */
    /* JADX WARN: Type inference failed for: r8v32 */
    /* JADX WARN: Type inference failed for: r8v33 */
    /* JADX WARN: Type inference failed for: r8v34 */
    /* JADX WARN: Type inference failed for: r8v35 */
    /* JADX WARN: Type inference failed for: r8v36 */
    /* JADX WARN: Type inference failed for: r8v8 */
    /* JADX WARN: Type inference failed for: r8v9 */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v14 */
    /* JADX WARN: Type inference failed for: r9v16 */
    /* JADX WARN: Type inference failed for: r9v34 */
    /* JADX WARN: Type inference failed for: r9v35 */
    /* JADX WARN: Type inference failed for: r9v8, types: [java.io.InputStream] */
    public static String a(Context context, String str, String str2, Map<String, String> map) throws Throwable {
        ?? r8;
        ?? r9;
        ?? r10;
        HttpURLConnection httpURLConnectionA;
        InputStream inputStream;
        InputStream inputStream2;
        InputStream inputStream3;
        InputStream errorStream;
        ?? bufferedOutputStream;
        InputStream bufferedInputStream;
        String string;
        InputStream inputStream4;
        OutputStream outputStream;
        InputStream inputStream5;
        OutputStream outputStream2;
        ?? r2 = 0;
        strA = null;
        String strA = null;
        if (str2 == null || TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return null;
        }
        int responseCode = -1;
        try {
            try {
                httpURLConnectionA = a(context, str, map, a.POST.a());
            } catch (Throwable th) {
                r2 = context;
                th = th;
                r8 = str;
                r9 = str2;
                r10 = map;
            }
        } catch (IOException unused) {
            httpURLConnectionA = null;
            inputStream3 = null;
        } catch (RuntimeException unused2) {
            httpURLConnectionA = null;
            inputStream2 = null;
        } catch (Exception unused3) {
            httpURLConnectionA = null;
            inputStream = null;
        } catch (Throwable th2) {
            th = th2;
            r8 = 0;
            r9 = 0;
            r10 = 0;
        }
        if (httpURLConnectionA == null) {
            IOUtil.closeSecure((OutputStream) null);
            IOUtil.closeSecure((InputStream) null);
            IOUtil.closeSecure((InputStream) null);
            s.a(httpURLConnectionA);
            HMSLog.i("PushHttpClient", "close connection");
            return strA;
        }
        try {
            bufferedOutputStream = new BufferedOutputStream(httpURLConnectionA.getOutputStream());
        } catch (IOException unused4) {
            inputStream3 = null;
            errorStream = inputStream3;
            bufferedOutputStream = inputStream3;
            bufferedInputStream = errorStream;
            StringBuilder sb = new StringBuilder();
            sb.append("http execute encounter IOException - http code:");
            sb.append(responseCode);
            string = sb.toString();
            outputStream = bufferedOutputStream;
            inputStream4 = errorStream;
            HMSLog.w("PushHttpClient", string);
            outputStream2 = outputStream;
            inputStream5 = inputStream4;
            IOUtil.closeSecure(outputStream2);
            IOUtil.closeSecure(inputStream5);
            IOUtil.closeSecure(bufferedInputStream);
            s.a(httpURLConnectionA);
            HMSLog.i("PushHttpClient", "close connection");
            return strA;
        } catch (RuntimeException unused5) {
            inputStream2 = null;
            errorStream = inputStream2;
            bufferedOutputStream = inputStream2;
            bufferedInputStream = errorStream;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("http execute encounter RuntimeException - http code:");
            sb2.append(responseCode);
            string = sb2.toString();
            outputStream = bufferedOutputStream;
            inputStream4 = errorStream;
            HMSLog.w("PushHttpClient", string);
            outputStream2 = outputStream;
            inputStream5 = inputStream4;
            IOUtil.closeSecure(outputStream2);
            IOUtil.closeSecure(inputStream5);
            IOUtil.closeSecure(bufferedInputStream);
            s.a(httpURLConnectionA);
            HMSLog.i("PushHttpClient", "close connection");
            return strA;
        } catch (Exception unused6) {
            inputStream = null;
            errorStream = inputStream;
            bufferedOutputStream = inputStream;
            bufferedInputStream = errorStream;
            StringBuilder sb3 = new StringBuilder();
            sb3.append("http execute encounter unknown exception - http code:");
            sb3.append(responseCode);
            string = sb3.toString();
            outputStream = bufferedOutputStream;
            inputStream4 = errorStream;
            HMSLog.w("PushHttpClient", string);
            outputStream2 = outputStream;
            inputStream5 = inputStream4;
            IOUtil.closeSecure(outputStream2);
            IOUtil.closeSecure(inputStream5);
            IOUtil.closeSecure(bufferedInputStream);
            s.a(httpURLConnectionA);
            HMSLog.i("PushHttpClient", "close connection");
            return strA;
        } catch (Throwable th3) {
            r9 = 0;
            r10 = 0;
            r2 = httpURLConnectionA;
            th = th3;
            r8 = 0;
        }
        try {
            bufferedOutputStream.write(str2.getBytes("UTF-8"));
            bufferedOutputStream.flush();
            responseCode = httpURLConnectionA.getResponseCode();
            StringBuilder sb4 = new StringBuilder();
            sb4.append("http post response code: ");
            sb4.append(responseCode);
            HMSLog.d("PushHttpClient", sb4.toString());
            errorStream = responseCode >= 400 ? httpURLConnectionA.getErrorStream() : httpURLConnectionA.getInputStream();
            try {
                bufferedInputStream = new BufferedInputStream(errorStream);
                try {
                    strA = s.a(bufferedInputStream);
                    outputStream2 = bufferedOutputStream;
                    inputStream5 = errorStream;
                } catch (IOException unused7) {
                    StringBuilder sb5 = new StringBuilder();
                    sb5.append("http execute encounter IOException - http code:");
                    sb5.append(responseCode);
                    string = sb5.toString();
                    outputStream = bufferedOutputStream;
                    inputStream4 = errorStream;
                    HMSLog.w("PushHttpClient", string);
                    outputStream2 = outputStream;
                    inputStream5 = inputStream4;
                    IOUtil.closeSecure(outputStream2);
                    IOUtil.closeSecure(inputStream5);
                    IOUtil.closeSecure(bufferedInputStream);
                    s.a(httpURLConnectionA);
                    HMSLog.i("PushHttpClient", "close connection");
                    return strA;
                } catch (RuntimeException unused8) {
                    StringBuilder sb22 = new StringBuilder();
                    sb22.append("http execute encounter RuntimeException - http code:");
                    sb22.append(responseCode);
                    string = sb22.toString();
                    outputStream = bufferedOutputStream;
                    inputStream4 = errorStream;
                    HMSLog.w("PushHttpClient", string);
                    outputStream2 = outputStream;
                    inputStream5 = inputStream4;
                    IOUtil.closeSecure(outputStream2);
                    IOUtil.closeSecure(inputStream5);
                    IOUtil.closeSecure(bufferedInputStream);
                    s.a(httpURLConnectionA);
                    HMSLog.i("PushHttpClient", "close connection");
                    return strA;
                } catch (Exception unused9) {
                    StringBuilder sb32 = new StringBuilder();
                    sb32.append("http execute encounter unknown exception - http code:");
                    sb32.append(responseCode);
                    string = sb32.toString();
                    outputStream = bufferedOutputStream;
                    inputStream4 = errorStream;
                    HMSLog.w("PushHttpClient", string);
                    outputStream2 = outputStream;
                    inputStream5 = inputStream4;
                    IOUtil.closeSecure(outputStream2);
                    IOUtil.closeSecure(inputStream5);
                    IOUtil.closeSecure(bufferedInputStream);
                    s.a(httpURLConnectionA);
                    HMSLog.i("PushHttpClient", "close connection");
                    return strA;
                }
            } catch (IOException unused10) {
                bufferedInputStream = null;
            } catch (RuntimeException unused11) {
                bufferedInputStream = null;
            } catch (Exception unused12) {
                bufferedInputStream = null;
            } catch (Throwable th4) {
                r2 = httpURLConnectionA;
                th = th4;
                r10 = 0;
                r8 = bufferedOutputStream;
                r9 = errorStream;
                IOUtil.closeSecure((OutputStream) r8);
                IOUtil.closeSecure((InputStream) r9);
                IOUtil.closeSecure((InputStream) r10);
                s.a((HttpURLConnection) r2);
                HMSLog.i("PushHttpClient", "close connection");
                throw th;
            }
        } catch (IOException unused13) {
            errorStream = null;
            bufferedOutputStream = bufferedOutputStream;
            bufferedInputStream = errorStream;
            StringBuilder sb52 = new StringBuilder();
            sb52.append("http execute encounter IOException - http code:");
            sb52.append(responseCode);
            string = sb52.toString();
            outputStream = bufferedOutputStream;
            inputStream4 = errorStream;
            HMSLog.w("PushHttpClient", string);
            outputStream2 = outputStream;
            inputStream5 = inputStream4;
            IOUtil.closeSecure(outputStream2);
            IOUtil.closeSecure(inputStream5);
            IOUtil.closeSecure(bufferedInputStream);
            s.a(httpURLConnectionA);
            HMSLog.i("PushHttpClient", "close connection");
            return strA;
        } catch (RuntimeException unused14) {
            errorStream = null;
            bufferedOutputStream = bufferedOutputStream;
            bufferedInputStream = errorStream;
            StringBuilder sb222 = new StringBuilder();
            sb222.append("http execute encounter RuntimeException - http code:");
            sb222.append(responseCode);
            string = sb222.toString();
            outputStream = bufferedOutputStream;
            inputStream4 = errorStream;
            HMSLog.w("PushHttpClient", string);
            outputStream2 = outputStream;
            inputStream5 = inputStream4;
            IOUtil.closeSecure(outputStream2);
            IOUtil.closeSecure(inputStream5);
            IOUtil.closeSecure(bufferedInputStream);
            s.a(httpURLConnectionA);
            HMSLog.i("PushHttpClient", "close connection");
            return strA;
        } catch (Exception unused15) {
            errorStream = null;
            bufferedOutputStream = bufferedOutputStream;
            bufferedInputStream = errorStream;
            StringBuilder sb322 = new StringBuilder();
            sb322.append("http execute encounter unknown exception - http code:");
            sb322.append(responseCode);
            string = sb322.toString();
            outputStream = bufferedOutputStream;
            inputStream4 = errorStream;
            HMSLog.w("PushHttpClient", string);
            outputStream2 = outputStream;
            inputStream5 = inputStream4;
            IOUtil.closeSecure(outputStream2);
            IOUtil.closeSecure(inputStream5);
            IOUtil.closeSecure(bufferedInputStream);
            s.a(httpURLConnectionA);
            HMSLog.i("PushHttpClient", "close connection");
            return strA;
        } catch (Throwable th5) {
            r10 = 0;
            r2 = httpURLConnectionA;
            th = th5;
            r9 = 0;
            r8 = bufferedOutputStream;
        }
        IOUtil.closeSecure(outputStream2);
        IOUtil.closeSecure(inputStream5);
        IOUtil.closeSecure(bufferedInputStream);
        s.a(httpURLConnectionA);
        HMSLog.i("PushHttpClient", "close connection");
        return strA;
    }

    public static HttpURLConnection a(Context context, String str, Map<String, String> map, String str2) throws Exception {
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
        a(context, httpURLConnection);
        httpURLConnection.setRequestMethod(str2);
        httpURLConnection.setConnectTimeout(15000);
        httpURLConnection.setReadTimeout(15000);
        httpURLConnection.setDoOutput(true);
        httpURLConnection.setDoInput(true);
        httpURLConnection.setRequestProperty("Content-type", "application/json; charset=UTF-8");
        httpURLConnection.setRequestProperty("Connection", "close");
        if (map != null && map.size() >= 1) {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                String key = entry.getKey();
                if (key != null && !TextUtils.isEmpty(key)) {
                    httpURLConnection.setRequestProperty(key, URLEncoder.encode(entry.getValue() == null ? "" : entry.getValue(), "UTF-8"));
                }
            }
        }
        return httpURLConnection;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x002e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void a(Context context, HttpURLConnection httpURLConnection) throws Exception {
        String str;
        SecureSSLSocketFactory secureSSLSocketFactory;
        if (httpURLConnection instanceof HttpsURLConnection) {
            HttpsURLConnection httpsURLConnection = (HttpsURLConnection) httpURLConnection;
            try {
                secureSSLSocketFactory = SecureSSLSocketFactory.getInstance(context);
            } catch (IOException unused) {
                str = "Get SocketFactory IO Exception.";
                HMSLog.w("PushHttpClient", str);
                secureSSLSocketFactory = null;
                if (secureSSLSocketFactory == null) {
                }
            } catch (IllegalAccessException unused2) {
                str = "Get SocketFactory Illegal Access Exception.";
                HMSLog.w("PushHttpClient", str);
                secureSSLSocketFactory = null;
                if (secureSSLSocketFactory == null) {
                }
            } catch (IllegalArgumentException unused3) {
                str = "Get SocketFactory Illegal Argument Exception.";
                HMSLog.w("PushHttpClient", str);
                secureSSLSocketFactory = null;
                if (secureSSLSocketFactory == null) {
                }
            } catch (KeyStoreException unused4) {
                str = "Get SocketFactory Key Store exception.";
                HMSLog.w("PushHttpClient", str);
                secureSSLSocketFactory = null;
                if (secureSSLSocketFactory == null) {
                }
            } catch (NoSuchAlgorithmException unused5) {
                str = "Get SocketFactory Algorithm Exception.";
                HMSLog.w("PushHttpClient", str);
                secureSSLSocketFactory = null;
                if (secureSSLSocketFactory == null) {
                }
            } catch (GeneralSecurityException unused6) {
                str = "Get SocketFactory General Security Exception.";
                HMSLog.w("PushHttpClient", str);
                secureSSLSocketFactory = null;
                if (secureSSLSocketFactory == null) {
                }
            }
            if (secureSSLSocketFactory == null) {
                throw new Exception("No ssl socket factory set.");
            }
            httpsURLConnection.setSSLSocketFactory(secureSSLSocketFactory);
            httpsURLConnection.setHostnameVerifier(SecureSSLSocketFactory.STRICT_HOSTNAME_VERIFIER);
        }
    }
}
