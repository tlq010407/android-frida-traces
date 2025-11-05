package androidx.startup;

import android.content.Context;
import java.util.List;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
public interface Initializer {
    Object create(Context context);

    List dependencies();
}
