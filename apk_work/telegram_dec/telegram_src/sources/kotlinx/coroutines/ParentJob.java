package kotlinx.coroutines;

import java.util.concurrent.CancellationException;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public interface ParentJob extends Job {
    CancellationException getChildJobCancellationCause();
}
