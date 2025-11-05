package okhttp3;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public interface Call extends Cloneable {
    void enqueue(Callback callback);

    Response execute();
}
