package androidx.activity.result;

import androidx.core.app.ActivityOptionsCompat;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
public abstract class ActivityResultLauncher {
    public void launch(Object obj) {
        launch(obj, null);
    }

    public abstract void launch(Object obj, ActivityOptionsCompat activityOptionsCompat);

    public abstract void unregister();
}
