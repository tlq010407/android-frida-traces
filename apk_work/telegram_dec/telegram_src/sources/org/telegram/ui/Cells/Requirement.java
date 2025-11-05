package org.telegram.ui.Cells;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes4.dex */
class Requirement {
    public int padding;
    public CharSequence text;

    private Requirement(CharSequence charSequence, int i) {
        this.text = charSequence;
        this.padding = i;
    }

    public static Requirement make(int i, CharSequence charSequence) {
        return new Requirement(charSequence, i);
    }

    public static Requirement make(CharSequence charSequence) {
        return new Requirement(charSequence, 0);
    }
}
