package okhttp3;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public interface Interceptor {

    public interface Chain {
        int connectTimeoutMillis();

        Response proceed(Request request);

        int readTimeoutMillis();

        Request request();

        int writeTimeoutMillis();
    }

    Response intercept(Chain chain);
}
