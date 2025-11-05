package org.telegram.messenger.time;

import j$.util.concurrent.ConcurrentHashMap;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.text.DateFormatSymbols;
import java.text.FieldPosition;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;
import java.util.concurrent.ConcurrentMap;
import org.telegram.messenger.R;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class FastDatePrinter implements DatePrinter, Serializable {
    public static final int FULL = 0;
    public static final int LONG = 1;
    public static final int MEDIUM = 2;
    public static final int SHORT = 3;
    private static final ConcurrentMap<TimeZoneDisplayKey, String> cTimeZoneDisplayCache = new ConcurrentHashMap(7);
    private static final long serialVersionUID = 1;
    private final Locale mLocale;
    private transient int mMaxLengthEstimate;
    private final String mPattern;
    private transient Rule[] mRules;
    private final TimeZone mTimeZone;

    private static class CharacterLiteral implements Rule {
        private final char mValue;

        CharacterLiteral(char c) {
            this.mValue = c;
        }

        @Override // org.telegram.messenger.time.FastDatePrinter.Rule
        public void appendTo(StringBuffer stringBuffer, Calendar calendar) {
            stringBuffer.append(this.mValue);
        }

        @Override // org.telegram.messenger.time.FastDatePrinter.Rule
        public int estimateLength() {
            return 1;
        }
    }

    private interface NumberRule extends Rule {
        void appendTo(StringBuffer stringBuffer, int i);
    }

    private static class PaddedNumberField implements NumberRule {
        private final int mField;
        private final int mSize;

        PaddedNumberField(int i, int i2) {
            if (i2 < 3) {
                throw new IllegalArgumentException();
            }
            this.mField = i;
            this.mSize = i2;
        }

        @Override // org.telegram.messenger.time.FastDatePrinter.NumberRule
        public final void appendTo(StringBuffer stringBuffer, int i) {
            if (i < 100) {
                int i2 = this.mSize;
                while (true) {
                    i2--;
                    if (i2 < 2) {
                        stringBuffer.append((char) ((i / 10) + 48));
                        stringBuffer.append((char) ((i % 10) + 48));
                        return;
                    }
                    stringBuffer.append('0');
                }
            } else {
                int length = i < 1000 ? 3 : Integer.toString(i).length();
                int i3 = this.mSize;
                while (true) {
                    i3--;
                    if (i3 < length) {
                        stringBuffer.append(Integer.toString(i));
                        return;
                    }
                    stringBuffer.append('0');
                }
            }
        }

        @Override // org.telegram.messenger.time.FastDatePrinter.Rule
        public void appendTo(StringBuffer stringBuffer, Calendar calendar) {
            appendTo(stringBuffer, calendar.get(this.mField));
        }

        @Override // org.telegram.messenger.time.FastDatePrinter.Rule
        public int estimateLength() {
            return 4;
        }
    }

    private interface Rule {
        void appendTo(StringBuffer stringBuffer, Calendar calendar);

        int estimateLength();
    }

    private static class StringLiteral implements Rule {
        private final String mValue;

        StringLiteral(String str) {
            this.mValue = str;
        }

        @Override // org.telegram.messenger.time.FastDatePrinter.Rule
        public void appendTo(StringBuffer stringBuffer, Calendar calendar) {
            stringBuffer.append(this.mValue);
        }

        @Override // org.telegram.messenger.time.FastDatePrinter.Rule
        public int estimateLength() {
            return this.mValue.length();
        }
    }

    private static class TextField implements Rule {
        private final int mField;
        private final String[] mValues;

        TextField(int i, String[] strArr) {
            this.mField = i;
            this.mValues = strArr;
        }

        @Override // org.telegram.messenger.time.FastDatePrinter.Rule
        public void appendTo(StringBuffer stringBuffer, Calendar calendar) {
            stringBuffer.append(this.mValues[calendar.get(this.mField)]);
        }

        @Override // org.telegram.messenger.time.FastDatePrinter.Rule
        public int estimateLength() {
            int length = this.mValues.length;
            int i = 0;
            while (true) {
                length--;
                if (length < 0) {
                    return i;
                }
                int length2 = this.mValues[length].length();
                if (length2 > i) {
                    i = length2;
                }
            }
        }
    }

    private static class TimeZoneDisplayKey {
        private final Locale mLocale;
        private final int mStyle;
        private final TimeZone mTimeZone;

        TimeZoneDisplayKey(TimeZone timeZone, boolean z, int i, Locale locale) {
            this.mTimeZone = timeZone;
            if (z) {
                this.mStyle = Integer.MIN_VALUE | i;
            } else {
                this.mStyle = i;
            }
            this.mLocale = locale;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof TimeZoneDisplayKey)) {
                return false;
            }
            TimeZoneDisplayKey timeZoneDisplayKey = (TimeZoneDisplayKey) obj;
            return this.mTimeZone.equals(timeZoneDisplayKey.mTimeZone) && this.mStyle == timeZoneDisplayKey.mStyle && this.mLocale.equals(timeZoneDisplayKey.mLocale);
        }

        public int hashCode() {
            return (((this.mStyle * 31) + this.mLocale.hashCode()) * 31) + this.mTimeZone.hashCode();
        }
    }

    private static class TimeZoneNameRule implements Rule {
        private final String mDaylight;
        private final Locale mLocale;
        private final String mStandard;
        private final int mStyle;

        TimeZoneNameRule(TimeZone timeZone, Locale locale, int i) {
            this.mLocale = locale;
            this.mStyle = i;
            this.mStandard = FastDatePrinter.getTimeZoneDisplay(timeZone, false, i, locale);
            this.mDaylight = FastDatePrinter.getTimeZoneDisplay(timeZone, true, i, locale);
        }

        @Override // org.telegram.messenger.time.FastDatePrinter.Rule
        public void appendTo(StringBuffer stringBuffer, Calendar calendar) {
            int i;
            Locale locale;
            boolean z;
            TimeZone timeZone = calendar.getTimeZone();
            if (!timeZone.useDaylightTime() || calendar.get(16) == 0) {
                i = this.mStyle;
                locale = this.mLocale;
                z = false;
            } else {
                i = this.mStyle;
                locale = this.mLocale;
                z = true;
            }
            stringBuffer.append(FastDatePrinter.getTimeZoneDisplay(timeZone, z, i, locale));
        }

        @Override // org.telegram.messenger.time.FastDatePrinter.Rule
        public int estimateLength() {
            return Math.max(this.mStandard.length(), this.mDaylight.length());
        }
    }

    private static class TimeZoneNumberRule implements Rule {
        static final TimeZoneNumberRule INSTANCE_COLON = new TimeZoneNumberRule(true);
        static final TimeZoneNumberRule INSTANCE_NO_COLON = new TimeZoneNumberRule(false);
        final boolean mColon;

        TimeZoneNumberRule(boolean z) {
            this.mColon = z;
        }

        @Override // org.telegram.messenger.time.FastDatePrinter.Rule
        public void appendTo(StringBuffer stringBuffer, Calendar calendar) {
            int i = calendar.get(15) + calendar.get(16);
            if (i < 0) {
                stringBuffer.append('-');
                i = -i;
            } else {
                stringBuffer.append('+');
            }
            int i2 = i / 3600000;
            stringBuffer.append((char) ((i2 / 10) + 48));
            stringBuffer.append((char) ((i2 % 10) + 48));
            if (this.mColon) {
                stringBuffer.append(':');
            }
            int i3 = (i / 60000) - (i2 * 60);
            stringBuffer.append((char) ((i3 / 10) + 48));
            stringBuffer.append((char) ((i3 % 10) + 48));
        }

        @Override // org.telegram.messenger.time.FastDatePrinter.Rule
        public int estimateLength() {
            return 5;
        }
    }

    private static class TwelveHourField implements NumberRule {
        private final NumberRule mRule;

        TwelveHourField(NumberRule numberRule) {
            this.mRule = numberRule;
        }

        @Override // org.telegram.messenger.time.FastDatePrinter.NumberRule
        public void appendTo(StringBuffer stringBuffer, int i) {
            this.mRule.appendTo(stringBuffer, i);
        }

        @Override // org.telegram.messenger.time.FastDatePrinter.Rule
        public void appendTo(StringBuffer stringBuffer, Calendar calendar) {
            int leastMaximum = calendar.get(10);
            if (leastMaximum == 0) {
                leastMaximum = calendar.getLeastMaximum(10) + 1;
            }
            this.mRule.appendTo(stringBuffer, leastMaximum);
        }

        @Override // org.telegram.messenger.time.FastDatePrinter.Rule
        public int estimateLength() {
            return this.mRule.estimateLength();
        }
    }

    private static class TwentyFourHourField implements NumberRule {
        private final NumberRule mRule;

        TwentyFourHourField(NumberRule numberRule) {
            this.mRule = numberRule;
        }

        @Override // org.telegram.messenger.time.FastDatePrinter.NumberRule
        public void appendTo(StringBuffer stringBuffer, int i) {
            this.mRule.appendTo(stringBuffer, i);
        }

        @Override // org.telegram.messenger.time.FastDatePrinter.Rule
        public void appendTo(StringBuffer stringBuffer, Calendar calendar) {
            int maximum = calendar.get(11);
            if (maximum == 0) {
                maximum = calendar.getMaximum(11) + 1;
            }
            this.mRule.appendTo(stringBuffer, maximum);
        }

        @Override // org.telegram.messenger.time.FastDatePrinter.Rule
        public int estimateLength() {
            return this.mRule.estimateLength();
        }
    }

    private static class TwoDigitMonthField implements NumberRule {
        static final TwoDigitMonthField INSTANCE = new TwoDigitMonthField();

        TwoDigitMonthField() {
        }

        @Override // org.telegram.messenger.time.FastDatePrinter.NumberRule
        public final void appendTo(StringBuffer stringBuffer, int i) {
            stringBuffer.append((char) ((i / 10) + 48));
            stringBuffer.append((char) ((i % 10) + 48));
        }

        @Override // org.telegram.messenger.time.FastDatePrinter.Rule
        public void appendTo(StringBuffer stringBuffer, Calendar calendar) {
            appendTo(stringBuffer, calendar.get(2) + 1);
        }

        @Override // org.telegram.messenger.time.FastDatePrinter.Rule
        public int estimateLength() {
            return 2;
        }
    }

    private static class TwoDigitNumberField implements NumberRule {
        private final int mField;

        TwoDigitNumberField(int i) {
            this.mField = i;
        }

        @Override // org.telegram.messenger.time.FastDatePrinter.NumberRule
        public final void appendTo(StringBuffer stringBuffer, int i) {
            if (i >= 100) {
                stringBuffer.append(Integer.toString(i));
            } else {
                stringBuffer.append((char) ((i / 10) + 48));
                stringBuffer.append((char) ((i % 10) + 48));
            }
        }

        @Override // org.telegram.messenger.time.FastDatePrinter.Rule
        public void appendTo(StringBuffer stringBuffer, Calendar calendar) {
            appendTo(stringBuffer, calendar.get(this.mField));
        }

        @Override // org.telegram.messenger.time.FastDatePrinter.Rule
        public int estimateLength() {
            return 2;
        }
    }

    private static class TwoDigitYearField implements NumberRule {
        static final TwoDigitYearField INSTANCE = new TwoDigitYearField();

        TwoDigitYearField() {
        }

        @Override // org.telegram.messenger.time.FastDatePrinter.NumberRule
        public final void appendTo(StringBuffer stringBuffer, int i) {
            stringBuffer.append((char) ((i / 10) + 48));
            stringBuffer.append((char) ((i % 10) + 48));
        }

        @Override // org.telegram.messenger.time.FastDatePrinter.Rule
        public void appendTo(StringBuffer stringBuffer, Calendar calendar) {
            appendTo(stringBuffer, calendar.get(1) % 100);
        }

        @Override // org.telegram.messenger.time.FastDatePrinter.Rule
        public int estimateLength() {
            return 2;
        }
    }

    private static class UnpaddedMonthField implements NumberRule {
        static final UnpaddedMonthField INSTANCE = new UnpaddedMonthField();

        UnpaddedMonthField() {
        }

        @Override // org.telegram.messenger.time.FastDatePrinter.NumberRule
        public final void appendTo(StringBuffer stringBuffer, int i) {
            if (i >= 10) {
                stringBuffer.append((char) ((i / 10) + 48));
                i %= 10;
            }
            stringBuffer.append((char) (i + 48));
        }

        @Override // org.telegram.messenger.time.FastDatePrinter.Rule
        public void appendTo(StringBuffer stringBuffer, Calendar calendar) {
            appendTo(stringBuffer, calendar.get(2) + 1);
        }

        @Override // org.telegram.messenger.time.FastDatePrinter.Rule
        public int estimateLength() {
            return 2;
        }
    }

    private static class UnpaddedNumberField implements NumberRule {
        private final int mField;

        UnpaddedNumberField(int i) {
            this.mField = i;
        }

        @Override // org.telegram.messenger.time.FastDatePrinter.NumberRule
        public final void appendTo(StringBuffer stringBuffer, int i) {
            if (i >= 10) {
                if (i >= 100) {
                    stringBuffer.append(Integer.toString(i));
                    return;
                } else {
                    stringBuffer.append((char) ((i / 10) + 48));
                    i %= 10;
                }
            }
            stringBuffer.append((char) (i + 48));
        }

        @Override // org.telegram.messenger.time.FastDatePrinter.Rule
        public void appendTo(StringBuffer stringBuffer, Calendar calendar) {
            appendTo(stringBuffer, calendar.get(this.mField));
        }

        @Override // org.telegram.messenger.time.FastDatePrinter.Rule
        public int estimateLength() {
            return 4;
        }
    }

    protected FastDatePrinter(String str, TimeZone timeZone, Locale locale) {
        this.mPattern = str;
        this.mTimeZone = timeZone;
        this.mLocale = locale;
        init();
    }

    private String applyRulesToString(Calendar calendar) {
        return applyRules(calendar, new StringBuffer(this.mMaxLengthEstimate)).toString();
    }

    static String getTimeZoneDisplay(TimeZone timeZone, boolean z, int i, Locale locale) {
        TimeZoneDisplayKey timeZoneDisplayKey = new TimeZoneDisplayKey(timeZone, z, i, locale);
        ConcurrentMap<TimeZoneDisplayKey, String> concurrentMap = cTimeZoneDisplayCache;
        String str = concurrentMap.get(timeZoneDisplayKey);
        if (str != null) {
            return str;
        }
        String displayName = timeZone.getDisplayName(z, i, locale);
        String strPutIfAbsent = concurrentMap.putIfAbsent(timeZoneDisplayKey, displayName);
        return strPutIfAbsent != null ? strPutIfAbsent : displayName;
    }

    private void init() {
        List<Rule> pattern = parsePattern();
        Rule[] ruleArr = (Rule[]) pattern.toArray(new Rule[pattern.size()]);
        this.mRules = ruleArr;
        int length = ruleArr.length;
        int iEstimateLength = 0;
        while (true) {
            length--;
            if (length < 0) {
                this.mMaxLengthEstimate = iEstimateLength;
                return;
            }
            iEstimateLength += this.mRules[length].estimateLength();
        }
    }

    private GregorianCalendar newCalendar() {
        return new GregorianCalendar(this.mTimeZone, this.mLocale);
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        init();
    }

    protected StringBuffer applyRules(Calendar calendar, StringBuffer stringBuffer) {
        for (Rule rule : this.mRules) {
            rule.appendTo(stringBuffer, calendar);
        }
        return stringBuffer;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof FastDatePrinter)) {
            return false;
        }
        FastDatePrinter fastDatePrinter = (FastDatePrinter) obj;
        return this.mPattern.equals(fastDatePrinter.mPattern) && this.mTimeZone.equals(fastDatePrinter.mTimeZone) && this.mLocale.equals(fastDatePrinter.mLocale);
    }

    @Override // org.telegram.messenger.time.DatePrinter
    public String format(long j) {
        GregorianCalendar gregorianCalendarNewCalendar = newCalendar();
        gregorianCalendarNewCalendar.setTimeInMillis(j);
        return applyRulesToString(gregorianCalendarNewCalendar);
    }

    @Override // org.telegram.messenger.time.DatePrinter
    public String format(Calendar calendar) {
        return format(calendar, new StringBuffer(this.mMaxLengthEstimate)).toString();
    }

    @Override // org.telegram.messenger.time.DatePrinter
    public String format(Date date) {
        GregorianCalendar gregorianCalendarNewCalendar = newCalendar();
        gregorianCalendarNewCalendar.setTime(date);
        return applyRulesToString(gregorianCalendarNewCalendar);
    }

    @Override // org.telegram.messenger.time.DatePrinter
    public StringBuffer format(long j, StringBuffer stringBuffer) {
        return format(new Date(j), stringBuffer);
    }

    @Override // org.telegram.messenger.time.DatePrinter
    public StringBuffer format(Object obj, StringBuffer stringBuffer, FieldPosition fieldPosition) {
        if (obj instanceof Date) {
            return format((Date) obj, stringBuffer);
        }
        if (obj instanceof Calendar) {
            return format((Calendar) obj, stringBuffer);
        }
        if (obj instanceof Long) {
            return format(((Long) obj).longValue(), stringBuffer);
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Unknown class: ");
        sb.append(obj == null ? "<null>" : obj.getClass().getName());
        throw new IllegalArgumentException(sb.toString());
    }

    @Override // org.telegram.messenger.time.DatePrinter
    public StringBuffer format(Calendar calendar, StringBuffer stringBuffer) {
        return applyRules(calendar, stringBuffer);
    }

    @Override // org.telegram.messenger.time.DatePrinter
    public StringBuffer format(Date date, StringBuffer stringBuffer) {
        GregorianCalendar gregorianCalendarNewCalendar = newCalendar();
        gregorianCalendarNewCalendar.setTime(date);
        return applyRules(gregorianCalendarNewCalendar, stringBuffer);
    }

    @Override // org.telegram.messenger.time.DatePrinter
    public Locale getLocale() {
        return this.mLocale;
    }

    public int getMaxLengthEstimate() {
        return this.mMaxLengthEstimate;
    }

    @Override // org.telegram.messenger.time.DatePrinter
    public String getPattern() {
        return this.mPattern;
    }

    @Override // org.telegram.messenger.time.DatePrinter
    public TimeZone getTimeZone() {
        return this.mTimeZone;
    }

    public int hashCode() {
        return this.mPattern.hashCode() + ((this.mTimeZone.hashCode() + (this.mLocale.hashCode() * 13)) * 13);
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x009f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected List<Rule> parsePattern() {
        int i;
        Rule ruleSelectNumberRule;
        Rule timeZoneNameRule;
        Rule timeZoneNameRule2;
        DateFormatSymbols dateFormatSymbols = new DateFormatSymbols(this.mLocale);
        ArrayList arrayList = new ArrayList();
        String[] eras = dateFormatSymbols.getEras();
        String[] months = dateFormatSymbols.getMonths();
        String[] shortMonths = dateFormatSymbols.getShortMonths();
        String[] weekdays = dateFormatSymbols.getWeekdays();
        String[] shortWeekdays = dateFormatSymbols.getShortWeekdays();
        String[] amPmStrings = dateFormatSymbols.getAmPmStrings();
        int length = this.mPattern.length();
        int i2 = 0;
        int i3 = 0;
        while (i3 < length) {
            int[] iArr = {i3};
            String token = parseToken(this.mPattern, iArr);
            int i4 = iArr[i2];
            int length2 = token.length();
            if (length2 == 0) {
                return arrayList;
            }
            char cCharAt = token.charAt(i2);
            int i5 = 4;
            if (cCharAt != 'y') {
                if (cCharAt != 'z') {
                    switch (cCharAt) {
                        case R.styleable.AppCompatTheme_autoCompleteTextViewStyle /* 39 */:
                            String strSubstring = token.substring(1);
                            ruleSelectNumberRule = strSubstring.length() == 1 ? new CharacterLiteral(strSubstring.charAt(0)) : new StringLiteral(strSubstring);
                            i = 1;
                            break;
                        case R.styleable.AppCompatTheme_listPreferredItemPaddingLeft /* 83 */:
                            i5 = 14;
                            timeZoneNameRule2 = selectNumberRule(i5, length2);
                            break;
                        case R.styleable.AppCompatTheme_panelMenuListTheme /* 87 */:
                            timeZoneNameRule2 = selectNumberRule(i5, length2);
                            break;
                        case 'Z':
                            if (length2 != 1) {
                                timeZoneNameRule2 = TimeZoneNumberRule.INSTANCE_COLON;
                                break;
                            } else {
                                timeZoneNameRule2 = TimeZoneNumberRule.INSTANCE_NO_COLON;
                                break;
                            }
                        case R.styleable.AppCompatTheme_selectableItemBackground /* 97 */:
                            timeZoneNameRule2 = new TextField(9, amPmStrings);
                            break;
                        case 'd':
                            i5 = 5;
                            timeZoneNameRule2 = selectNumberRule(i5, length2);
                            break;
                        case 'h':
                            timeZoneNameRule2 = new TwelveHourField(selectNumberRule(10, length2));
                            break;
                        case 'k':
                            timeZoneNameRule2 = new TwentyFourHourField(selectNumberRule(11, length2));
                            break;
                        case R.styleable.AppCompatTheme_textAppearanceSmallPopupMenu /* 109 */:
                            i5 = 12;
                            timeZoneNameRule2 = selectNumberRule(i5, length2);
                            break;
                        case R.styleable.AppCompatTheme_tooltipFrameBackground /* 115 */:
                            i5 = 13;
                            timeZoneNameRule2 = selectNumberRule(i5, length2);
                            break;
                        case R.styleable.AppCompatTheme_windowActionModeOverlay /* 119 */:
                            timeZoneNameRule2 = selectNumberRule(3, length2);
                            break;
                        default:
                            switch (cCharAt) {
                                case R.styleable.AppCompatTheme_editTextBackground /* 68 */:
                                    i5 = 6;
                                    timeZoneNameRule2 = selectNumberRule(i5, length2);
                                    break;
                                case R.styleable.AppCompatTheme_editTextColor /* 69 */:
                                    ruleSelectNumberRule = new TextField(7, length2 < 4 ? shortWeekdays : weekdays);
                                    i = 1;
                                    break;
                                case R.styleable.AppCompatTheme_editTextStyle /* 70 */:
                                    i5 = 8;
                                    timeZoneNameRule2 = selectNumberRule(i5, length2);
                                    break;
                                case R.styleable.AppCompatTheme_homeAsUpIndicator /* 71 */:
                                    timeZoneNameRule2 = new TextField(0, eras);
                                    break;
                                case R.styleable.AppCompatTheme_imageButtonStyle /* 72 */:
                                    i5 = 11;
                                    timeZoneNameRule2 = selectNumberRule(i5, length2);
                                    break;
                                default:
                                    switch (cCharAt) {
                                        case R.styleable.AppCompatTheme_listChoiceIndicatorSingleAnimated /* 75 */:
                                            i5 = 10;
                                            timeZoneNameRule2 = selectNumberRule(i5, length2);
                                            break;
                                        case R.styleable.AppCompatTheme_listDividerAlertDialog /* 76 */:
                                            if (length2 < 4) {
                                                if (length2 != 3) {
                                                    if (length2 != 2) {
                                                        timeZoneNameRule2 = UnpaddedMonthField.INSTANCE;
                                                        break;
                                                    } else {
                                                        timeZoneNameRule2 = TwoDigitMonthField.INSTANCE;
                                                        break;
                                                    }
                                                } else {
                                                    timeZoneNameRule2 = new TextField(2, shortMonths);
                                                    break;
                                                }
                                            } else {
                                                timeZoneNameRule2 = new TextField(2, months);
                                                break;
                                            }
                                        case R.styleable.AppCompatTheme_listMenuViewStyle /* 77 */:
                                            if (length2 >= 4) {
                                                timeZoneNameRule2 = new TextField(2, months);
                                                break;
                                            } else if (length2 == 3) {
                                                timeZoneNameRule2 = new TextField(2, shortMonths);
                                                break;
                                            } else if (length2 == 2) {
                                            }
                                            break;
                                        default:
                                            throw new IllegalArgumentException("Illegal pattern component: " + token);
                                    }
                            }
                    }
                } else if (length2 >= 4) {
                    timeZoneNameRule2 = new TimeZoneNameRule(this.mTimeZone, this.mLocale, 1);
                } else {
                    timeZoneNameRule = new TimeZoneNameRule(this.mTimeZone, this.mLocale, 0);
                    ruleSelectNumberRule = timeZoneNameRule;
                    i = 1;
                }
                ruleSelectNumberRule = timeZoneNameRule2;
                i = 1;
            } else if (length2 == 2) {
                timeZoneNameRule = TwoDigitYearField.INSTANCE;
                ruleSelectNumberRule = timeZoneNameRule;
                i = 1;
            } else {
                if (length2 < 4) {
                    i = 1;
                    length2 = 4;
                } else {
                    i = 1;
                }
                ruleSelectNumberRule = selectNumberRule(i, length2);
            }
            arrayList.add(ruleSelectNumberRule);
            i3 = i4 + i;
            i2 = 0;
        }
        return arrayList;
    }

    protected String parseToken(String str, int[] iArr) {
        StringBuilder sb = new StringBuilder();
        int i = iArr[0];
        int length = str.length();
        char cCharAt = str.charAt(i);
        if ((cCharAt < 'A' || cCharAt > 'Z') && (cCharAt < 'a' || cCharAt > 'z')) {
            sb.append('\'');
            boolean z = false;
            while (i < length) {
                char cCharAt2 = str.charAt(i);
                if (cCharAt2 != '\'') {
                    if (!z && ((cCharAt2 >= 'A' && cCharAt2 <= 'Z') || (cCharAt2 >= 'a' && cCharAt2 <= 'z'))) {
                        i--;
                        break;
                    }
                    sb.append(cCharAt2);
                } else {
                    int i2 = i + 1;
                    if (i2 >= length || str.charAt(i2) != '\'') {
                        z = !z;
                    } else {
                        sb.append(cCharAt2);
                        i = i2;
                    }
                }
                i++;
            }
        } else {
            sb.append(cCharAt);
            while (true) {
                int i3 = i + 1;
                if (i3 >= length || str.charAt(i3) != cCharAt) {
                    break;
                }
                sb.append(cCharAt);
                i = i3;
            }
        }
        iArr[0] = i;
        return sb.toString();
    }

    protected NumberRule selectNumberRule(int i, int i2) {
        return i2 != 1 ? i2 != 2 ? new PaddedNumberField(i, i2) : new TwoDigitNumberField(i) : new UnpaddedNumberField(i);
    }

    public String toString() {
        return "FastDatePrinter[" + this.mPattern + "," + this.mLocale + "," + this.mTimeZone.getID() + "]";
    }
}
