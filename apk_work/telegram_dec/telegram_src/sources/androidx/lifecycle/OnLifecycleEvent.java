package androidx.lifecycle;

import androidx.lifecycle.Lifecycle;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

@Retention(RetentionPolicy.RUNTIME)
/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
public @interface OnLifecycleEvent {
    Lifecycle.Event value();
}
