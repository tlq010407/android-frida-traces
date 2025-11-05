package androidx.lifecycle;

import android.view.View;
import androidx.lifecycle.runtime.R$id;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
public abstract class ViewTreeLifecycleOwner {
    public static void set(View view, LifecycleOwner lifecycleOwner) {
        view.setTag(R$id.view_tree_lifecycle_owner, lifecycleOwner);
    }
}
