package com.google.android.exoplayer2;

import android.os.Bundle;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
public interface Bundleable {

    public interface Creator {
        Bundleable fromBundle(Bundle bundle);
    }

    Bundle toBundle();
}
