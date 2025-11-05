package androidx.lifecycle;

import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.viewmodel.CreationExtras;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
public interface HasDefaultViewModelProviderFactory {

    /* renamed from: androidx.lifecycle.HasDefaultViewModelProviderFactory$-CC, reason: invalid class name */
    public abstract /* synthetic */ class CC {
    }

    CreationExtras getDefaultViewModelCreationExtras();

    ViewModelProvider.Factory getDefaultViewModelProviderFactory();
}
