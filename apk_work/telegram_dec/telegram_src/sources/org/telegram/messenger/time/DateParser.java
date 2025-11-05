package org.telegram.messenger.time;

import java.text.ParsePosition;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public interface DateParser {
    Locale getLocale();

    String getPattern();

    TimeZone getTimeZone();

    Date parse(String str);

    Date parse(String str, ParsePosition parsePosition);

    Object parseObject(String str);

    Object parseObject(String str, ParsePosition parsePosition);
}
