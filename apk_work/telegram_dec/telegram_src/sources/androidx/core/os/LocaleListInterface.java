package androidx.core.os;

import java.util.Locale;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
interface LocaleListInterface {
    Locale get(int i);

    Object getLocaleList();

    boolean isEmpty();

    int size();

    String toLanguageTags();
}
