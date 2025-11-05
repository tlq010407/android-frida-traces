package androidx.mediarouter.media;

import android.os.Handler;
import java.util.concurrent.Executor;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
public final /* synthetic */ class MediaRoute2Provider$$ExternalSyntheticLambda21 implements Executor {
    public final /* synthetic */ Handler f$0;

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.f$0.post(runnable);
    }
}
