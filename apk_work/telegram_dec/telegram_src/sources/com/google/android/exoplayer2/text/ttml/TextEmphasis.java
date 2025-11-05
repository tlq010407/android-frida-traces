package com.google.android.exoplayer2.text.ttml;

import android.text.TextUtils;
import com.google.common.base.Ascii;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.Iterables;
import com.google.common.collect.Sets;
import java.util.regex.Pattern;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
final class TextEmphasis {
    public final int markFill;
    public final int markShape;
    public final int position;
    private static final Pattern WHITESPACE_PATTERN = Pattern.compile("\\s+");
    private static final ImmutableSet SINGLE_STYLE_VALUES = ImmutableSet.of((Object) "auto", (Object) "none");
    private static final ImmutableSet MARK_SHAPE_VALUES = ImmutableSet.of((Object) "dot", (Object) "sesame", (Object) "circle");
    private static final ImmutableSet MARK_FILL_VALUES = ImmutableSet.of((Object) "filled", (Object) "open");
    private static final ImmutableSet POSITION_VALUES = ImmutableSet.of((Object) "after", (Object) "before", (Object) "outside");

    private TextEmphasis(int i, int i2, int i3) {
        this.markShape = i;
        this.markFill = i2;
        this.position = i3;
    }

    public static TextEmphasis parse(String str) {
        if (str == null) {
            return null;
        }
        String lowerCase = Ascii.toLowerCase(str.trim());
        if (lowerCase.isEmpty()) {
            return null;
        }
        return parseWords(ImmutableSet.copyOf(TextUtils.split(lowerCase, WHITESPACE_PATTERN)));
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00da  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x00f8  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0103  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static TextEmphasis parseWords(ImmutableSet immutableSet) {
        char c;
        int iHashCode;
        String str = (String) Iterables.getFirst(Sets.intersection(POSITION_VALUES, immutableSet), "outside");
        int iHashCode2 = str.hashCode();
        char c2 = 0;
        int i = -1;
        if (iHashCode2 != -1392885889) {
            if (iHashCode2 != -1106037339) {
                c = (iHashCode2 == 92734940 && str.equals("after")) ? (char) 0 : (char) 65535;
            } else if (str.equals("outside")) {
                c = 1;
            }
        } else if (str.equals("before")) {
            c = 2;
        }
        int i2 = c != 0 ? c != 1 ? 1 : -2 : 2;
        Sets.SetView setViewIntersection = Sets.intersection(SINGLE_STYLE_VALUES, immutableSet);
        if (!setViewIntersection.isEmpty()) {
            String str2 = (String) setViewIntersection.iterator().next();
            int iHashCode3 = str2.hashCode();
            if (iHashCode3 == 3005871) {
                str2.equals("auto");
            } else if (iHashCode3 == 3387192 && str2.equals("none")) {
                i = 0;
            }
            return new TextEmphasis(i, 0, i2);
        }
        Sets.SetView setViewIntersection2 = Sets.intersection(MARK_FILL_VALUES, immutableSet);
        Sets.SetView setViewIntersection3 = Sets.intersection(MARK_SHAPE_VALUES, immutableSet);
        if (setViewIntersection2.isEmpty() && setViewIntersection3.isEmpty()) {
            return new TextEmphasis(-1, 0, i2);
        }
        String str3 = (String) Iterables.getFirst(setViewIntersection2, "filled");
        int iHashCode4 = str3.hashCode();
        if (iHashCode4 != -1274499742) {
            int i3 = (iHashCode4 == 3417674 && str3.equals("open")) ? 2 : 1;
            String str4 = (String) Iterables.getFirst(setViewIntersection3, "circle");
            iHashCode = str4.hashCode();
            if (iHashCode == -1360216880) {
                if (iHashCode != -905816648) {
                    if (iHashCode != 99657 || !str4.equals("dot")) {
                        c2 = 65535;
                    }
                } else if (str4.equals("sesame")) {
                    c2 = 1;
                }
            } else if (str4.equals("circle")) {
                c2 = 2;
            }
            return new TextEmphasis(c2 != 0 ? c2 != 1 ? 1 : 3 : 2, i3, i2);
        }
        str3.equals("filled");
        String str42 = (String) Iterables.getFirst(setViewIntersection3, "circle");
        iHashCode = str42.hashCode();
        if (iHashCode == -1360216880) {
        }
        return new TextEmphasis(c2 != 0 ? c2 != 1 ? 1 : 3 : 2, i3, i2);
    }
}
