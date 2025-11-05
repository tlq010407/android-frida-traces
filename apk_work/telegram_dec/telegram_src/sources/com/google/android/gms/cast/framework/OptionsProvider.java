package com.google.android.gms.cast.framework;

import android.content.Context;
import java.util.List;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
public interface OptionsProvider {
    List getAdditionalSessionProviders(Context context);

    CastOptions getCastOptions(Context context);
}
