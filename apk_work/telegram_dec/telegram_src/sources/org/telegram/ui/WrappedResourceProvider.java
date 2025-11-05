package org.telegram.ui;

import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.util.SparseIntArray;
import org.telegram.ui.ActionBar.Theme;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes4.dex */
public class WrappedResourceProvider implements Theme.ResourcesProvider {
    Theme.ResourcesProvider resourcesProvider;
    public SparseIntArray sparseIntArray = new SparseIntArray();

    public WrappedResourceProvider(Theme.ResourcesProvider resourcesProvider) {
        this.resourcesProvider = resourcesProvider;
        appendColors();
    }

    public void appendColors() {
    }

    @Override // org.telegram.ui.ActionBar.Theme.ResourcesProvider
    public void applyServiceShaderMatrix(int i, int i2, float f, float f2) {
        Theme.ResourcesProvider resourcesProvider = this.resourcesProvider;
        if (resourcesProvider == null) {
            Theme.applyServiceShaderMatrix(i, i2, f, f2);
        } else {
            resourcesProvider.applyServiceShaderMatrix(i, i2, f, f2);
        }
    }

    @Override // org.telegram.ui.ActionBar.Theme.ResourcesProvider
    public ColorFilter getAnimatedEmojiColorFilter() {
        Theme.ResourcesProvider resourcesProvider = this.resourcesProvider;
        return resourcesProvider == null ? Theme.getAnimatedEmojiColorFilter(null) : resourcesProvider.getAnimatedEmojiColorFilter();
    }

    @Override // org.telegram.ui.ActionBar.Theme.ResourcesProvider
    public int getColor(int i) {
        int iIndexOfKey = this.sparseIntArray.indexOfKey(i);
        if (iIndexOfKey >= 0) {
            return this.sparseIntArray.valueAt(iIndexOfKey);
        }
        Theme.ResourcesProvider resourcesProvider = this.resourcesProvider;
        return resourcesProvider == null ? Theme.getColor(i) : resourcesProvider.getColor(i);
    }

    @Override // org.telegram.ui.ActionBar.Theme.ResourcesProvider
    public int getColorOrDefault(int i) {
        Theme.ResourcesProvider resourcesProvider = this.resourcesProvider;
        return resourcesProvider == null ? Theme.getColor(i) : resourcesProvider.getColorOrDefault(i);
    }

    @Override // org.telegram.ui.ActionBar.Theme.ResourcesProvider
    public int getCurrentColor(int i) {
        Theme.ResourcesProvider resourcesProvider = this.resourcesProvider;
        return resourcesProvider == null ? Theme.getColor(i) : resourcesProvider.getCurrentColor(i);
    }

    @Override // org.telegram.ui.ActionBar.Theme.ResourcesProvider
    public Drawable getDrawable(String str) {
        Theme.ResourcesProvider resourcesProvider = this.resourcesProvider;
        return resourcesProvider == null ? Theme.getThemeDrawable(str) : resourcesProvider.getDrawable(str);
    }

    @Override // org.telegram.ui.ActionBar.Theme.ResourcesProvider
    public Paint getPaint(String str) {
        Theme.ResourcesProvider resourcesProvider = this.resourcesProvider;
        return resourcesProvider == null ? Theme.getThemePaint(str) : resourcesProvider.getPaint(str);
    }

    @Override // org.telegram.ui.ActionBar.Theme.ResourcesProvider
    public boolean hasGradientService() {
        Theme.ResourcesProvider resourcesProvider = this.resourcesProvider;
        return resourcesProvider == null ? Theme.hasGradientService() : resourcesProvider.hasGradientService();
    }

    @Override // org.telegram.ui.ActionBar.Theme.ResourcesProvider
    public /* synthetic */ boolean isDark() {
        return Theme.isCurrentThemeDark();
    }

    @Override // org.telegram.ui.ActionBar.Theme.ResourcesProvider
    public void setAnimatedColor(int i, int i2) {
        Theme.ResourcesProvider resourcesProvider = this.resourcesProvider;
        if (resourcesProvider != null) {
            resourcesProvider.setAnimatedColor(i, i2);
        }
    }
}
