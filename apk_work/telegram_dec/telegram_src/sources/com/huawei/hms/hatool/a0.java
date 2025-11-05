package com.huawei.hms.hatool;

import android.text.TextUtils;
import com.huawei.location.lite.common.http.request.BaseRequest;
import com.huawei.secure.android.common.ssl.SecureSSLSocketFactory;
import com.huawei.secure.android.common.ssl.hostname.StrictHostnameVerifier;
import java.io.BufferedOutputStream;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.net.ConnectException;
import java.net.HttpURLConnection;
import java.net.ProtocolException;
import java.net.URL;
import java.net.UnknownHostException;
import java.security.GeneralSecurityException;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public abstract class a0 {

    public static class a extends Exception {
        public a(String str) {
            super(str);
        }
    }

    public static b0 a(String str, byte[] bArr, Map<String, String> map) {
        return a(str, bArr, map, BaseRequest.METHOD_POST);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v0, types: [java.lang.CharSequence, java.lang.String] */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v10, types: [java.net.HttpURLConnection] */
    /* JADX WARN: Type inference failed for: r6v11, types: [java.net.HttpURLConnection] */
    /* JADX WARN: Type inference failed for: r6v12, types: [java.net.HttpURLConnection] */
    /* JADX WARN: Type inference failed for: r6v13, types: [java.net.HttpURLConnection] */
    /* JADX WARN: Type inference failed for: r6v14, types: [java.net.HttpURLConnection] */
    /* JADX WARN: Type inference failed for: r6v15, types: [java.net.HttpURLConnection] */
    /* JADX WARN: Type inference failed for: r6v16, types: [java.net.HttpURLConnection] */
    /* JADX WARN: Type inference failed for: r6v17, types: [java.net.HttpURLConnection, java.net.URLConnection] */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Type inference failed for: r6v4 */
    /* JADX WARN: Type inference failed for: r6v5 */
    /* JADX WARN: Type inference failed for: r6v6 */
    /* JADX WARN: Type inference failed for: r6v7 */
    /* JADX WARN: Type inference failed for: r6v8 */
    /* JADX WARN: Type inference failed for: r6v9, types: [java.net.HttpURLConnection] */
    /* JADX WARN: Type inference failed for: r8v0, types: [java.util.Map, java.util.Map<java.lang.String, java.lang.String>] */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v10, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r8v11, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r8v12, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r8v13, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r8v14, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r8v15, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r8v16, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r8v17 */
    /* JADX WARN: Type inference failed for: r8v18 */
    /* JADX WARN: Type inference failed for: r8v19 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v20 */
    /* JADX WARN: Type inference failed for: r8v21 */
    /* JADX WARN: Type inference failed for: r8v22 */
    /* JADX WARN: Type inference failed for: r8v23 */
    /* JADX WARN: Type inference failed for: r8v24 */
    /* JADX WARN: Type inference failed for: r8v25, types: [java.io.Closeable, java.io.OutputStream] */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Type inference failed for: r8v5 */
    /* JADX WARN: Type inference failed for: r8v6 */
    /* JADX WARN: Type inference failed for: r8v7 */
    /* JADX WARN: Type inference failed for: r8v8 */
    /* JADX WARN: Type inference failed for: r8v9, types: [java.io.Closeable] */
    public static b0 a(String str, byte[] bArr, Map<String, String> map, String str2) throws Throwable {
        BufferedOutputStream bufferedOutputStream;
        if (TextUtils.isEmpty(str)) {
            return new b0(-100, "");
        }
        BufferedOutputStream bufferedOutputStream2 = null;
        int responseCode = -102;
        try {
            try {
                str = a((String) str, bArr.length, (Map<String, String>) map, str2);
                try {
                    if (str == 0) {
                        b0 b0Var = new b0(-101, "");
                        t0.a((Closeable) null);
                        t0.a((Closeable) null);
                        if (str != 0) {
                            t0.a((HttpURLConnection) str);
                        }
                        return b0Var;
                    }
                    map = str.getOutputStream();
                    try {
                        bufferedOutputStream = new BufferedOutputStream(map);
                    } catch (a unused) {
                    } catch (SecurityException unused2) {
                    } catch (ConnectException unused3) {
                    } catch (UnknownHostException unused4) {
                    } catch (SSLHandshakeException unused5) {
                    } catch (SSLPeerUnverifiedException unused6) {
                    } catch (IOException unused7) {
                    }
                    try {
                        bufferedOutputStream.write(bArr);
                        bufferedOutputStream.flush();
                        responseCode = str.getResponseCode();
                        b0 b0Var2 = new b0(responseCode, b(str));
                        t0.a((Closeable) bufferedOutputStream);
                        t0.a((Closeable) map);
                        t0.a((HttpURLConnection) str);
                        return b0Var2;
                    } catch (a unused8) {
                        bufferedOutputStream2 = bufferedOutputStream;
                        y.f("hmsSdk", "PostRequest(byte[]): No ssl socket factory set!");
                        b0 b0Var3 = new b0(-101, "");
                        t0.a((Closeable) bufferedOutputStream2);
                        t0.a((Closeable) map);
                        if (str != 0) {
                            t0.a((HttpURLConnection) str);
                        }
                        return b0Var3;
                    } catch (SecurityException unused9) {
                        bufferedOutputStream2 = bufferedOutputStream;
                        y.f("hmsSdk", "SecurityException with HttpClient. Please check INTERNET permission.");
                        b0 b0Var4 = new b0(responseCode, "");
                        t0.a((Closeable) bufferedOutputStream2);
                        t0.a((Closeable) map);
                        if (str != 0) {
                            t0.a((HttpURLConnection) str);
                        }
                        return b0Var4;
                    } catch (ConnectException unused10) {
                        bufferedOutputStream2 = bufferedOutputStream;
                        y.f("hmsSdk", "Network is unreachable or Connection refused");
                        b0 b0Var5 = new b0(responseCode, "");
                        t0.a((Closeable) bufferedOutputStream2);
                        t0.a((Closeable) map);
                        if (str != 0) {
                            t0.a((HttpURLConnection) str);
                        }
                        return b0Var5;
                    } catch (UnknownHostException unused11) {
                        bufferedOutputStream2 = bufferedOutputStream;
                        y.f("hmsSdk", "No address associated with hostname or No network");
                        b0 b0Var6 = new b0(responseCode, "");
                        t0.a((Closeable) bufferedOutputStream2);
                        t0.a((Closeable) map);
                        if (str != 0) {
                            t0.a((HttpURLConnection) str);
                        }
                        return b0Var6;
                    } catch (SSLHandshakeException unused12) {
                        bufferedOutputStream2 = bufferedOutputStream;
                        y.f("hmsSdk", "Chain validation failed,Certificate expired");
                        b0 b0Var7 = new b0(responseCode, "");
                        t0.a((Closeable) bufferedOutputStream2);
                        t0.a((Closeable) map);
                        if (str != 0) {
                            t0.a((HttpURLConnection) str);
                        }
                        return b0Var7;
                    } catch (SSLPeerUnverifiedException unused13) {
                        bufferedOutputStream2 = bufferedOutputStream;
                        y.f("hmsSdk", "Certificate has not been verified,Request is restricted!");
                        b0 b0Var8 = new b0(responseCode, "");
                        t0.a((Closeable) bufferedOutputStream2);
                        t0.a((Closeable) map);
                        if (str != 0) {
                            t0.a((HttpURLConnection) str);
                        }
                        return b0Var8;
                    } catch (IOException unused14) {
                        bufferedOutputStream2 = bufferedOutputStream;
                        y.f("hmsSdk", "events PostRequest(byte[]): IOException occurred.");
                        b0 b0Var9 = new b0(responseCode, "");
                        t0.a((Closeable) bufferedOutputStream2);
                        t0.a((Closeable) map);
                        if (str != 0) {
                            t0.a((HttpURLConnection) str);
                        }
                        return b0Var9;
                    } catch (Throwable th) {
                        th = th;
                        bufferedOutputStream2 = bufferedOutputStream;
                        t0.a((Closeable) bufferedOutputStream2);
                        t0.a((Closeable) map);
                        if (str != 0) {
                            t0.a((HttpURLConnection) str);
                        }
                        throw th;
                    }
                } catch (a unused15) {
                    map = 0;
                } catch (SecurityException unused16) {
                    map = 0;
                } catch (ConnectException unused17) {
                    map = 0;
                } catch (UnknownHostException unused18) {
                    map = 0;
                } catch (SSLHandshakeException unused19) {
                    map = 0;
                } catch (SSLPeerUnverifiedException unused20) {
                    map = 0;
                } catch (IOException unused21) {
                    map = 0;
                } catch (Throwable th2) {
                    th = th2;
                    map = 0;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (a unused22) {
            str = 0;
            map = 0;
        } catch (SecurityException unused23) {
            str = 0;
            map = 0;
        } catch (ConnectException unused24) {
            str = 0;
            map = 0;
        } catch (UnknownHostException unused25) {
            str = 0;
            map = 0;
        } catch (SSLHandshakeException unused26) {
            str = 0;
            map = 0;
        } catch (SSLPeerUnverifiedException unused27) {
            str = 0;
            map = 0;
        } catch (IOException unused28) {
            str = 0;
            map = 0;
        } catch (Throwable th4) {
            th = th4;
            str = 0;
            map = 0;
        }
    }

    public static HttpURLConnection a(String str, int i, Map<String, String> map, String str2) throws ProtocolException, a {
        if (TextUtils.isEmpty(str)) {
            y.b("hmsSdk", "CreateConnection: invalid urlPath.");
            return null;
        }
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
        a(httpURLConnection);
        httpURLConnection.setRequestMethod(str2);
        httpURLConnection.setConnectTimeout(15000);
        httpURLConnection.setReadTimeout(15000);
        httpURLConnection.setDoOutput(true);
        httpURLConnection.setRequestProperty("Content-Type", "application/json; charset=UTF-8");
        httpURLConnection.setRequestProperty("Content-Length", String.valueOf(i));
        httpURLConnection.setRequestProperty("Connection", "close");
        if (map != null && map.size() >= 1) {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                String key = entry.getKey();
                if (key != null && !TextUtils.isEmpty(key)) {
                    httpURLConnection.setRequestProperty(key, entry.getValue());
                }
            }
        }
        return httpURLConnection;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0026  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0032  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void a(HttpURLConnection httpURLConnection) throws a {
        String str;
        SecureSSLSocketFactory secureSSLSocketFactory;
        if (httpURLConnection instanceof HttpsURLConnection) {
            HttpsURLConnection httpsURLConnection = (HttpsURLConnection) httpURLConnection;
            try {
                secureSSLSocketFactory = SecureSSLSocketFactory.getInstance(b.i());
            } catch (IOException unused) {
                str = "getSocketFactory(): IO Exception!";
                y.f("hmsSdk", str);
                secureSSLSocketFactory = null;
                if (secureSSLSocketFactory != null) {
                }
            } catch (IllegalAccessException unused2) {
                str = "getSocketFactory(): Illegal Access Exception ";
                y.f("hmsSdk", str);
                secureSSLSocketFactory = null;
                if (secureSSLSocketFactory != null) {
                }
            } catch (KeyStoreException unused3) {
                str = "getSocketFactory(): Key Store exception";
                y.f("hmsSdk", str);
                secureSSLSocketFactory = null;
                if (secureSSLSocketFactory != null) {
                }
            } catch (NoSuchAlgorithmException unused4) {
                str = "getSocketFactory(): Algorithm Exception!";
                y.f("hmsSdk", str);
                secureSSLSocketFactory = null;
                if (secureSSLSocketFactory != null) {
                }
            } catch (GeneralSecurityException unused5) {
                str = "getSocketFactory(): General Security Exception";
                y.f("hmsSdk", str);
                secureSSLSocketFactory = null;
                if (secureSSLSocketFactory != null) {
                }
            }
            if (secureSSLSocketFactory != null) {
                throw new a("No ssl socket factory set");
            }
            httpsURLConnection.setSSLSocketFactory(secureSSLSocketFactory);
            httpsURLConnection.setHostnameVerifier(new StrictHostnameVerifier());
        }
    }

    public static String b(HttpURLConnection httpURLConnection) throws IOException {
        InputStream inputStream = null;
        try {
            try {
                inputStream = httpURLConnection.getInputStream();
                return t0.a(inputStream);
            } catch (IOException unused) {
                y.f("hmsSdk", "When Response Content From Connection inputStream operation exception! " + httpURLConnection.getResponseCode());
                t0.a((Closeable) inputStream);
                return "";
            }
        } finally {
            t0.a((Closeable) inputStream);
        }
    }
}
