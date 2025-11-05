package com.huawei.location.lite.common.http;

import android.content.Context;
import com.huawei.location.lite.common.http.interceptor.d2;
import com.huawei.location.lite.common.log.LogConsole;
import com.huawei.location.lite.common.util.LocationUtil;
import com.huawei.location.lite.common.util.RouterComponentType;
import com.huawei.secure.android.common.ssl.SecureSSLSocketFactory;
import com.huawei.secure.android.common.ssl.SecureX509SingleInstance;
import com.huawei.secure.android.common.ssl.SecureX509TrustManager;
import com.huawei.secure.android.common.ssl.hostname.StrictHostnameVerifier;
import java.io.IOException;
import java.security.KeyManagementException;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.X509TrustManager;
import okhttp3.ConnectionPool;
import okhttp3.Interceptor;
import okhttp3.OkHttpClient;
import okhttp3.Protocol;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class Vw {
    private static final ConnectionPool Vw;
    private static final int yn;

    public static final class yn {
        X509TrustManager E5;
        int FB;
        int LW;
        HostnameVerifier d2;
        SSLSocketFactory dC;
        List yn = new ArrayList();
        List Vw = new ArrayList();

        public yn Vw(int i) {
            this.LW = i;
            return this;
        }

        public yn yn(int i) {
            this.FB = i;
            return this;
        }
    }

    static {
        int iAvailableProcessors = Runtime.getRuntime().availableProcessors();
        yn = iAvailableProcessors;
        Vw = new ConnectionPool(iAvailableProcessors, 30000L, TimeUnit.MILLISECONDS);
    }

    public static void Vw() {
        Vw.evictAll();
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0062 A[LOOP:0: B:17:0x005c->B:19:0x0062, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00cf  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00d9  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00e3  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00fd A[LOOP:1: B:54:0x00f7->B:56:0x00fd, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0113 A[LOOP:2: B:58:0x010d->B:60:0x0113, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public OkHttpClient yn(Context context, yn ynVar, HttpConfigInfo httpConfigInfo) {
        SecureSSLSocketFactory secureSSLSocketFactory;
        String str;
        OkHttpClient.Builder builderProtocols;
        int i;
        int i2;
        HostnameVerifier hostnameVerifier;
        SSLSocketFactory sSLSocketFactory;
        Iterator it;
        Iterator it2;
        X509TrustManager x509TrustManager;
        Interceptor dCVar;
        Iterator it3;
        LocationUtil.registerScreenStatusBroadcast();
        if (httpConfigInfo.isNeedInterceptor()) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(new com.huawei.location.lite.common.http.interceptor.FB());
            arrayList.add(new com.huawei.location.lite.common.http.interceptor.LW());
            if (RouterComponentType.getComponentType() == 0) {
                if (httpConfigInfo.isNeedCheckUcsAuth()) {
                    arrayList.add(new d2());
                }
                if (httpConfigInfo.isNeedCheckAGC()) {
                    dCVar = new com.huawei.location.lite.common.http.interceptor.yn();
                    arrayList.add(dCVar);
                }
                it3 = arrayList.iterator();
                while (it3.hasNext()) {
                    ynVar.yn.add((Interceptor) it3.next());
                }
            } else {
                if (httpConfigInfo.isNeedCheckTssAuth()) {
                    arrayList.add(new com.huawei.location.lite.common.http.interceptor.E5());
                    dCVar = new com.huawei.location.lite.common.http.interceptor.dC();
                    arrayList.add(dCVar);
                }
                it3 = arrayList.iterator();
                while (it3.hasNext()) {
                }
            }
        }
        SecureX509TrustManager secureX509SingleInstance = null;
        try {
            secureSSLSocketFactory = SecureSSLSocketFactory.getInstance(context);
        } catch (IOException unused) {
            secureSSLSocketFactory = null;
        } catch (IllegalAccessException unused2) {
            secureSSLSocketFactory = null;
        } catch (IllegalArgumentException unused3) {
            secureSSLSocketFactory = null;
        } catch (KeyManagementException unused4) {
            secureSSLSocketFactory = null;
        } catch (KeyStoreException unused5) {
            secureSSLSocketFactory = null;
        } catch (NoSuchAlgorithmException unused6) {
            secureSSLSocketFactory = null;
        } catch (CertificateException unused7) {
            secureSSLSocketFactory = null;
        }
        try {
            secureX509SingleInstance = SecureX509SingleInstance.getInstance(context);
        } catch (IOException unused8) {
            str = "addSslSocketFactory IOException";
            LogConsole.e("HttpClientFactory", str);
            ynVar.dC = secureSSLSocketFactory;
            ynVar.E5 = secureX509SingleInstance;
            ynVar.d2 = new StrictHostnameVerifier();
            builderProtocols = new OkHttpClient.Builder().connectionPool(Vw).retryOnConnectionFailure(false).protocols(Collections.unmodifiableList(Arrays.asList(Protocol.HTTP_2, Protocol.HTTP_1_1)));
            i = ynVar.LW;
            if (i > 0) {
            }
            i2 = ynVar.FB;
            if (i2 > 0) {
            }
            hostnameVerifier = ynVar.d2;
            if (hostnameVerifier != null) {
            }
            sSLSocketFactory = ynVar.dC;
            if (sSLSocketFactory != null) {
                builderProtocols.sslSocketFactory(sSLSocketFactory, x509TrustManager);
            }
            it = ynVar.yn.iterator();
            while (it.hasNext()) {
            }
            it2 = ynVar.Vw.iterator();
            while (it2.hasNext()) {
            }
            return builderProtocols.build();
        } catch (IllegalAccessException unused9) {
            str = "addSslSocketFactory IllegalAccessException";
            LogConsole.e("HttpClientFactory", str);
            ynVar.dC = secureSSLSocketFactory;
            ynVar.E5 = secureX509SingleInstance;
            ynVar.d2 = new StrictHostnameVerifier();
            builderProtocols = new OkHttpClient.Builder().connectionPool(Vw).retryOnConnectionFailure(false).protocols(Collections.unmodifiableList(Arrays.asList(Protocol.HTTP_2, Protocol.HTTP_1_1)));
            i = ynVar.LW;
            if (i > 0) {
            }
            i2 = ynVar.FB;
            if (i2 > 0) {
            }
            hostnameVerifier = ynVar.d2;
            if (hostnameVerifier != null) {
            }
            sSLSocketFactory = ynVar.dC;
            if (sSLSocketFactory != null) {
            }
            it = ynVar.yn.iterator();
            while (it.hasNext()) {
            }
            it2 = ynVar.Vw.iterator();
            while (it2.hasNext()) {
            }
            return builderProtocols.build();
        } catch (IllegalArgumentException unused10) {
            str = "addSslSocketFactory IllegalArgumentException";
            LogConsole.e("HttpClientFactory", str);
            ynVar.dC = secureSSLSocketFactory;
            ynVar.E5 = secureX509SingleInstance;
            ynVar.d2 = new StrictHostnameVerifier();
            builderProtocols = new OkHttpClient.Builder().connectionPool(Vw).retryOnConnectionFailure(false).protocols(Collections.unmodifiableList(Arrays.asList(Protocol.HTTP_2, Protocol.HTTP_1_1)));
            i = ynVar.LW;
            if (i > 0) {
            }
            i2 = ynVar.FB;
            if (i2 > 0) {
            }
            hostnameVerifier = ynVar.d2;
            if (hostnameVerifier != null) {
            }
            sSLSocketFactory = ynVar.dC;
            if (sSLSocketFactory != null) {
            }
            it = ynVar.yn.iterator();
            while (it.hasNext()) {
            }
            it2 = ynVar.Vw.iterator();
            while (it2.hasNext()) {
            }
            return builderProtocols.build();
        } catch (KeyManagementException unused11) {
            str = "addSslSocketFactory KeyManagementException";
            LogConsole.e("HttpClientFactory", str);
            ynVar.dC = secureSSLSocketFactory;
            ynVar.E5 = secureX509SingleInstance;
            ynVar.d2 = new StrictHostnameVerifier();
            builderProtocols = new OkHttpClient.Builder().connectionPool(Vw).retryOnConnectionFailure(false).protocols(Collections.unmodifiableList(Arrays.asList(Protocol.HTTP_2, Protocol.HTTP_1_1)));
            i = ynVar.LW;
            if (i > 0) {
            }
            i2 = ynVar.FB;
            if (i2 > 0) {
            }
            hostnameVerifier = ynVar.d2;
            if (hostnameVerifier != null) {
            }
            sSLSocketFactory = ynVar.dC;
            if (sSLSocketFactory != null) {
            }
            it = ynVar.yn.iterator();
            while (it.hasNext()) {
            }
            it2 = ynVar.Vw.iterator();
            while (it2.hasNext()) {
            }
            return builderProtocols.build();
        } catch (KeyStoreException unused12) {
            str = "addSslSocketFactory KeyStoreException";
            LogConsole.e("HttpClientFactory", str);
            ynVar.dC = secureSSLSocketFactory;
            ynVar.E5 = secureX509SingleInstance;
            ynVar.d2 = new StrictHostnameVerifier();
            builderProtocols = new OkHttpClient.Builder().connectionPool(Vw).retryOnConnectionFailure(false).protocols(Collections.unmodifiableList(Arrays.asList(Protocol.HTTP_2, Protocol.HTTP_1_1)));
            i = ynVar.LW;
            if (i > 0) {
            }
            i2 = ynVar.FB;
            if (i2 > 0) {
            }
            hostnameVerifier = ynVar.d2;
            if (hostnameVerifier != null) {
            }
            sSLSocketFactory = ynVar.dC;
            if (sSLSocketFactory != null) {
            }
            it = ynVar.yn.iterator();
            while (it.hasNext()) {
            }
            it2 = ynVar.Vw.iterator();
            while (it2.hasNext()) {
            }
            return builderProtocols.build();
        } catch (NoSuchAlgorithmException unused13) {
            str = "addSslSocketFactory NoSuchAlgorithmException";
            LogConsole.e("HttpClientFactory", str);
            ynVar.dC = secureSSLSocketFactory;
            ynVar.E5 = secureX509SingleInstance;
            ynVar.d2 = new StrictHostnameVerifier();
            builderProtocols = new OkHttpClient.Builder().connectionPool(Vw).retryOnConnectionFailure(false).protocols(Collections.unmodifiableList(Arrays.asList(Protocol.HTTP_2, Protocol.HTTP_1_1)));
            i = ynVar.LW;
            if (i > 0) {
            }
            i2 = ynVar.FB;
            if (i2 > 0) {
            }
            hostnameVerifier = ynVar.d2;
            if (hostnameVerifier != null) {
            }
            sSLSocketFactory = ynVar.dC;
            if (sSLSocketFactory != null) {
            }
            it = ynVar.yn.iterator();
            while (it.hasNext()) {
            }
            it2 = ynVar.Vw.iterator();
            while (it2.hasNext()) {
            }
            return builderProtocols.build();
        } catch (CertificateException unused14) {
            str = "addSslSocketFactory CertificateException";
            LogConsole.e("HttpClientFactory", str);
            ynVar.dC = secureSSLSocketFactory;
            ynVar.E5 = secureX509SingleInstance;
            ynVar.d2 = new StrictHostnameVerifier();
            builderProtocols = new OkHttpClient.Builder().connectionPool(Vw).retryOnConnectionFailure(false).protocols(Collections.unmodifiableList(Arrays.asList(Protocol.HTTP_2, Protocol.HTTP_1_1)));
            i = ynVar.LW;
            if (i > 0) {
            }
            i2 = ynVar.FB;
            if (i2 > 0) {
            }
            hostnameVerifier = ynVar.d2;
            if (hostnameVerifier != null) {
            }
            sSLSocketFactory = ynVar.dC;
            if (sSLSocketFactory != null) {
            }
            it = ynVar.yn.iterator();
            while (it.hasNext()) {
            }
            it2 = ynVar.Vw.iterator();
            while (it2.hasNext()) {
            }
            return builderProtocols.build();
        }
        ynVar.dC = secureSSLSocketFactory;
        ynVar.E5 = secureX509SingleInstance;
        ynVar.d2 = new StrictHostnameVerifier();
        builderProtocols = new OkHttpClient.Builder().connectionPool(Vw).retryOnConnectionFailure(false).protocols(Collections.unmodifiableList(Arrays.asList(Protocol.HTTP_2, Protocol.HTTP_1_1)));
        i = ynVar.LW;
        if (i > 0) {
            builderProtocols.readTimeout(i, TimeUnit.MILLISECONDS);
        }
        i2 = ynVar.FB;
        if (i2 > 0) {
            builderProtocols.connectTimeout(i2, TimeUnit.MILLISECONDS);
        }
        hostnameVerifier = ynVar.d2;
        if (hostnameVerifier != null) {
            builderProtocols.hostnameVerifier(hostnameVerifier);
        }
        sSLSocketFactory = ynVar.dC;
        if (sSLSocketFactory != null && (x509TrustManager = ynVar.E5) != null) {
            builderProtocols.sslSocketFactory(sSLSocketFactory, x509TrustManager);
        }
        it = ynVar.yn.iterator();
        while (it.hasNext()) {
            builderProtocols.addInterceptor((Interceptor) it.next());
        }
        it2 = ynVar.Vw.iterator();
        while (it2.hasNext()) {
            builderProtocols.addNetworkInterceptor((Interceptor) it2.next());
        }
        return builderProtocols.build();
    }
}
