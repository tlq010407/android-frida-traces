package org.telegram.messenger;

import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.Spannable;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.ImageSpan;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.huawei.hms.framework.common.ContainerUtils;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import com.huawei.hms.push.constant.RemoteMessageConst;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import org.telegram.messenger.CompoundEmoji;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.Components.AnimatedEmojiSpan;
import org.telegram.ui.Components.ColoredImageSpan;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class Emoji {
    private static final String[] DEFAULT_RECENT;
    private static final int MAX_RECENT_EMOJI_COUNT = 48;
    public static int bigImgSize;
    public static int drawImgSize;
    private static Bitmap[][] emojiBmp;
    public static final HashMap<String, String> emojiColor;
    private static final int[] emojiCounts;
    public static boolean emojiDrawingUseAlpha;
    public static float emojiDrawingYOffset;
    public static final HashMap<String, Integer> emojiUseHistory;
    public static final Runnable invalidateUiRunnable;
    private static boolean[][] loadingEmoji;
    public static Paint placeholderPaint;
    public static final ArrayList<String> recentEmoji;
    private static boolean recentEmojiLoaded;
    private static final HashMap<CharSequence, DrawableInfo> rects = new HashMap<>();
    private static boolean inited = false;

    private static class DrawableInfo {
        public int emojiIndex;
        public byte page;
        public short page2;

        public DrawableInfo(byte b, short s, int i) {
            this.page = b;
            this.page2 = s;
            this.emojiIndex = i;
        }
    }

    public static abstract class EmojiDrawable extends Drawable {
        public boolean fullSize = false;
        int placeholderColor = 268435456;

        public boolean isLoaded() {
            return false;
        }

        public void preload() {
        }
    }

    public static class EmojiSpan extends ImageSpan {
        public boolean drawn;
        public String emoji;
        public Paint.FontMetricsInt fontMetrics;
        public float lastDrawX;
        public float lastDrawY;
        public float scale;
        public int size;

        public EmojiSpan(Drawable drawable, int i, Paint.FontMetricsInt fontMetricsInt) {
            super(drawable, i);
            this.scale = 1.0f;
            this.size = AndroidUtilities.dp(20.0f);
            this.fontMetrics = fontMetricsInt;
            if (fontMetricsInt != null) {
                int iAbs = Math.abs(fontMetricsInt.descent) + Math.abs(this.fontMetrics.ascent);
                this.size = iAbs;
                if (iAbs == 0) {
                    this.size = AndroidUtilities.dp(20.0f);
                }
            }
        }

        @Override // android.text.style.DynamicDrawableSpan, android.text.style.ReplacementSpan
        public void draw(Canvas canvas, CharSequence charSequence, int i, int i2, float f, int i3, int i4, int i5, Paint paint) {
            boolean z;
            this.lastDrawX = ((this.scale * this.size) / 2.0f) + f;
            this.lastDrawY = i3 + ((i5 - i3) / 2.0f);
            boolean z2 = true;
            this.drawn = true;
            if (paint.getAlpha() == 255 || !Emoji.emojiDrawingUseAlpha) {
                z = false;
            } else {
                getDrawable().setAlpha(paint.getAlpha());
                z = true;
            }
            float f2 = Emoji.emojiDrawingYOffset;
            float f3 = this.size;
            float f4 = f2 - ((f3 - (this.scale * f3)) / 2.0f);
            if (f4 != BitmapDescriptorFactory.HUE_RED) {
                canvas.save();
                canvas.translate(BitmapDescriptorFactory.HUE_RED, f4);
            } else {
                z2 = false;
            }
            super.draw(canvas, charSequence, i, i2, f, i3, i4, i5, paint);
            if (z2) {
                canvas.restore();
            }
            if (z) {
                getDrawable().setAlpha(255);
            }
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            EmojiSpan emojiSpan = (EmojiSpan) obj;
            return Float.compare(this.scale, emojiSpan.scale) == 0 && this.size == emojiSpan.size && Objects.equals(this.emoji, emojiSpan.emoji);
        }

        @Override // android.text.style.DynamicDrawableSpan, android.text.style.ReplacementSpan
        public int getSize(Paint paint, CharSequence charSequence, int i, int i2, Paint.FontMetricsInt fontMetricsInt) {
            if (fontMetricsInt == null) {
                fontMetricsInt = new Paint.FontMetricsInt();
            }
            int i3 = (int) (this.scale * this.size);
            Paint.FontMetricsInt fontMetricsInt2 = this.fontMetrics;
            if (fontMetricsInt2 != null) {
                fontMetricsInt.ascent = fontMetricsInt2.ascent;
                fontMetricsInt.descent = fontMetricsInt2.descent;
                fontMetricsInt.top = fontMetricsInt2.top;
                fontMetricsInt.bottom = fontMetricsInt2.bottom;
                if (getDrawable() != null) {
                    getDrawable().setBounds(0, 0, i3, i3);
                }
                return i3;
            }
            int size = super.getSize(paint, charSequence, i, i2, fontMetricsInt);
            int iDp = AndroidUtilities.dp(8.0f);
            int iDp2 = AndroidUtilities.dp(10.0f);
            int i4 = (-iDp2) - iDp;
            fontMetricsInt.top = i4;
            int i5 = iDp2 - iDp;
            fontMetricsInt.bottom = i5;
            fontMetricsInt.ascent = i4;
            fontMetricsInt.leading = 0;
            fontMetricsInt.descent = i5;
            return size;
        }

        public void replaceFontMetrics(Paint.FontMetricsInt fontMetricsInt) {
            this.fontMetrics = fontMetricsInt;
            if (fontMetricsInt != null) {
                int iAbs = Math.abs(fontMetricsInt.descent) + Math.abs(this.fontMetrics.ascent);
                this.size = iAbs;
                if (iAbs == 0) {
                    this.size = AndroidUtilities.dp(20.0f);
                }
            }
        }

        public void replaceFontMetrics(Paint.FontMetricsInt fontMetricsInt, int i) {
            this.fontMetrics = fontMetricsInt;
            this.size = i;
        }

        @Override // android.text.style.ReplacementSpan, android.text.style.CharacterStyle
        public void updateDrawState(TextPaint textPaint) {
            if (getDrawable() instanceof EmojiDrawable) {
                ((EmojiDrawable) getDrawable()).placeholderColor = textPaint.getColor() & 285212671;
            }
            super.updateDrawState(textPaint);
        }
    }

    public static class EmojiSpanRange {
        public CharSequence code;
        public int end;
        public int start;

        public EmojiSpanRange(int i, int i2, CharSequence charSequence) {
            this.start = i;
            this.end = i2;
            this.code = charSequence;
        }
    }

    public static class SimpleEmojiDrawable extends EmojiDrawable {
        private static Paint paint = new Paint(2);
        private static Rect rect = new Rect();
        private DrawableInfo info;
        private boolean invert;

        public SimpleEmojiDrawable(DrawableInfo drawableInfo, boolean z) {
            this.info = drawableInfo;
            this.invert = z;
        }

        @Override // android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
            if (!isLoaded()) {
                DrawableInfo drawableInfo = this.info;
                Emoji.loadEmoji(drawableInfo.page, drawableInfo.page2);
                Emoji.placeholderPaint.setColor(this.placeholderColor);
                Rect bounds = getBounds();
                canvas.drawCircle(bounds.centerX(), bounds.centerY(), bounds.width() * 0.4f, Emoji.placeholderPaint);
                return;
            }
            Rect drawRect = this.fullSize ? getDrawRect() : getBounds();
            if (canvas.quickReject(drawRect.left, drawRect.top, drawRect.right, drawRect.bottom, Canvas.EdgeType.AA)) {
                return;
            }
            if (this.invert) {
                canvas.save();
                canvas.scale(-1.0f, 1.0f, drawRect.centerX(), drawRect.centerY());
            }
            Bitmap[][] bitmapArr = Emoji.emojiBmp;
            DrawableInfo drawableInfo2 = this.info;
            canvas.drawBitmap(bitmapArr[drawableInfo2.page][drawableInfo2.page2], (Rect) null, drawRect, paint);
            if (this.invert) {
                canvas.restore();
            }
        }

        public Rect getDrawRect() {
            Rect bounds = getBounds();
            int iCenterX = bounds.centerX();
            int iCenterY = bounds.centerY();
            Rect rect2 = rect;
            boolean z = this.fullSize;
            rect2.left = iCenterX - ((z ? Emoji.bigImgSize : Emoji.drawImgSize) / 2);
            rect.right = iCenterX + ((z ? Emoji.bigImgSize : Emoji.drawImgSize) / 2);
            rect.top = iCenterY - ((z ? Emoji.bigImgSize : Emoji.drawImgSize) / 2);
            rect.bottom = iCenterY + ((z ? Emoji.bigImgSize : Emoji.drawImgSize) / 2);
            return rect;
        }

        public DrawableInfo getDrawableInfo() {
            return this.info;
        }

        @Override // android.graphics.drawable.Drawable
        public int getOpacity() {
            return -2;
        }

        @Override // org.telegram.messenger.Emoji.EmojiDrawable
        public boolean isLoaded() {
            Bitmap[][] bitmapArr = Emoji.emojiBmp;
            DrawableInfo drawableInfo = this.info;
            return bitmapArr[drawableInfo.page][drawableInfo.page2] != null;
        }

        @Override // org.telegram.messenger.Emoji.EmojiDrawable
        public void preload() {
            if (isLoaded()) {
                return;
            }
            DrawableInfo drawableInfo = this.info;
            Emoji.loadEmoji(drawableInfo.page, drawableInfo.page2);
        }

        @Override // android.graphics.drawable.Drawable
        public void setAlpha(int i) {
            paint.setAlpha(i);
        }

        @Override // android.graphics.drawable.Drawable
        public void setColorFilter(ColorFilter colorFilter) {
        }
    }

    static {
        String[][] strArr = EmojiData.data;
        emojiCounts = new int[]{strArr[0].length, strArr[1].length, strArr[2].length, strArr[3].length, strArr[4].length, strArr[5].length, strArr[6].length, strArr[7].length};
        emojiBmp = new Bitmap[8][];
        loadingEmoji = new boolean[8][];
        emojiUseHistory = new HashMap<>();
        recentEmoji = new ArrayList<>();
        emojiColor = new HashMap<>();
        invalidateUiRunnable = new Runnable() { // from class: org.telegram.messenger.Emoji$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                Emoji.lambda$static$0();
            }
        };
        emojiDrawingUseAlpha = true;
        DEFAULT_RECENT = new String[]{"😂", "😘", "❤", "😍", "😊", "😁", "👍", "☺", "😔", "😄", "😭", "💋", "😒", "😳", "😜", "🙈", "😉", "😃", "😢", "😝", "😱", "😡", "😏", "😞", "😅", "😚", "🙊", "😌", "😀", "😋", "😆", "👌", "😐", "😕"};
        drawImgSize = AndroidUtilities.dp(20.0f);
        bigImgSize = AndroidUtilities.dp(AndroidUtilities.isTablet() ? 40.0f : 34.0f);
        int i = 0;
        while (true) {
            Bitmap[][] bitmapArr = emojiBmp;
            if (i >= bitmapArr.length) {
                break;
            }
            int i2 = emojiCounts[i];
            bitmapArr[i] = new Bitmap[i2];
            loadingEmoji[i] = new boolean[i2];
            i++;
        }
        for (int i3 = 0; i3 < EmojiData.data.length; i3++) {
            int i4 = 0;
            while (true) {
                String[] strArr2 = EmojiData.data[i3];
                if (i4 < strArr2.length) {
                    rects.put(strArr2[i4], new DrawableInfo((byte) i3, (short) i4, i4));
                    i4++;
                }
            }
        }
        Paint paint = new Paint();
        placeholderPaint = paint;
        paint.setColor(0);
    }

    public static void addRecentEmoji(String str) {
        HashMap<String, Integer> map = emojiUseHistory;
        Integer num = map.get(str);
        if (num == null) {
            num = 0;
        }
        if (num.intValue() == 0 && map.size() >= 48) {
            ArrayList<String> arrayList = recentEmoji;
            map.remove(arrayList.get(arrayList.size() - 1));
            arrayList.set(arrayList.size() - 1, str);
        }
        map.put(str, Integer.valueOf(num.intValue() + 1));
    }

    public static void clearRecentEmoji() {
        MessagesController.getGlobalEmojiSettings().edit().putBoolean("filled_default", true).commit();
        emojiUseHistory.clear();
        recentEmoji.clear();
        saveRecentEmoji();
    }

    public static boolean endsWithRightArrow(CharSequence charSequence) {
        return charSequence != null && charSequence.length() > 2 && charSequence.charAt(charSequence.length() - 2) == 8205 && charSequence.charAt(charSequence.length() - 1) == 10145;
    }

    public static String fixEmoji(String str) {
        StringBuilder sb;
        int length = str.length();
        int i = 0;
        while (i < length) {
            char cCharAt = str.charAt(i);
            if (cCharAt < 55356 || cCharAt > 55358) {
                if (cCharAt == 8419) {
                    return str;
                }
                if (cCharAt >= 8252 && cCharAt <= 12953 && EmojiData.emojiToFE0FMap.containsKey(Character.valueOf(cCharAt))) {
                    sb = new StringBuilder();
                    i++;
                    sb.append(str.substring(0, i));
                    sb.append("️");
                    sb.append(str.substring(i));
                    str = sb.toString();
                    length++;
                }
            } else if (cCharAt != 55356 || i >= length - 1) {
                i++;
            } else {
                int i2 = i + 1;
                char cCharAt2 = str.charAt(i2);
                if (cCharAt2 == 56879 || cCharAt2 == 56324 || cCharAt2 == 56858 || cCharAt2 == 56703) {
                    sb = new StringBuilder();
                    i += 2;
                    sb.append(str.substring(0, i));
                    sb.append("️");
                    sb.append(str.substring(i));
                    str = sb.toString();
                    length++;
                } else {
                    i = i2;
                }
            }
            i++;
        }
        return str;
    }

    public static boolean fullyConsistsOfEmojis(CharSequence charSequence) {
        int[] iArr = new int[1];
        parseEmojis(charSequence, iArr);
        return iArr[0] > 0;
    }

    private static DrawableInfo getDrawableInfo(CharSequence charSequence) {
        CharSequence charSequence2;
        if (endsWithRightArrow(charSequence)) {
            charSequence = charSequence.subSequence(0, charSequence.length() - 2);
        }
        HashMap<CharSequence, DrawableInfo> map = rects;
        DrawableInfo drawableInfo = map.get(charSequence);
        return (drawableInfo != null || (charSequence2 = EmojiData.emojiAliasMap.get(charSequence)) == null) ? drawableInfo : map.get(charSequence2);
    }

    public static Drawable getEmojiBigDrawable(String str) {
        CharSequence charSequence;
        EmojiDrawable compoundEmojiDrawable = CompoundEmoji.getCompoundEmojiDrawable(str);
        if (compoundEmojiDrawable != null) {
            int i = drawImgSize;
            compoundEmojiDrawable.setBounds(0, 0, i, i);
        } else {
            compoundEmojiDrawable = null;
        }
        if (compoundEmojiDrawable == null) {
            compoundEmojiDrawable = getEmojiDrawable(str);
        }
        if (compoundEmojiDrawable == null && (charSequence = EmojiData.emojiAliasMap.get(str)) != null) {
            compoundEmojiDrawable = getEmojiDrawable(charSequence);
        }
        if (compoundEmojiDrawable == null) {
            return null;
        }
        int i2 = bigImgSize;
        compoundEmojiDrawable.setBounds(0, 0, i2, i2);
        compoundEmojiDrawable.fullSize = true;
        return compoundEmojiDrawable;
    }

    public static EmojiDrawable getEmojiDrawable(CharSequence charSequence) {
        CompoundEmoji.CompoundEmojiDrawable compoundEmojiDrawable;
        DrawableInfo drawableInfo = getDrawableInfo(charSequence);
        if (drawableInfo != null) {
            SimpleEmojiDrawable simpleEmojiDrawable = new SimpleEmojiDrawable(drawableInfo, endsWithRightArrow(charSequence));
            int i = drawImgSize;
            simpleEmojiDrawable.setBounds(0, 0, i, i);
            return simpleEmojiDrawable;
        }
        if (charSequence == null || (compoundEmojiDrawable = CompoundEmoji.getCompoundEmojiDrawable(charSequence.toString())) == null) {
            return null;
        }
        int i2 = drawImgSize;
        compoundEmojiDrawable.setBounds(0, 0, i2, i2);
        return compoundEmojiDrawable;
    }

    public static void invalidateAll(View view) {
        if (!(view instanceof ViewGroup)) {
            if (view instanceof TextView) {
                view.invalidate();
            }
        } else {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                invalidateAll(viewGroup.getChildAt(i));
            }
        }
    }

    public static boolean isValidEmoji(CharSequence charSequence) {
        CharSequence charSequence2;
        if (TextUtils.isEmpty(charSequence)) {
            return false;
        }
        HashMap<CharSequence, DrawableInfo> map = rects;
        DrawableInfo drawableInfo = map.get(charSequence);
        if (drawableInfo == null && (charSequence2 = EmojiData.emojiAliasMap.get(charSequence)) != null) {
            drawableInfo = map.get(charSequence2);
        }
        return drawableInfo != null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$loadEmoji$1(byte b, short s) {
        Bitmap bitmapLoadBitmap = loadBitmap("emoji/" + String.format(Locale.US, "%d_%d.png", Byte.valueOf(b), Short.valueOf(s)));
        if (bitmapLoadBitmap != null) {
            emojiBmp[b][s] = bitmapLoadBitmap;
            Runnable runnable = invalidateUiRunnable;
            AndroidUtilities.cancelRunOnUIThread(runnable);
            AndroidUtilities.runOnUIThread(runnable);
        }
        loadingEmoji[b][s] = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$sortEmoji$3(String str, String str2) {
        HashMap<String, Integer> map = emojiUseHistory;
        Integer num = map.get(str);
        Integer num2 = map.get(str2);
        if (num == null) {
            num = 0;
        }
        if (num2 == null) {
            num2 = 0;
        }
        if (num.intValue() > num2.intValue()) {
            return -1;
        }
        return num.intValue() < num2.intValue() ? 1 : 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$static$0() {
        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.emojiLoaded, new Object[0]);
    }

    public static Bitmap loadBitmap(String str) {
        Bitmap bitmapDecodeStream;
        try {
            int i = AndroidUtilities.density <= 1.0f ? 2 : 1;
            try {
                InputStream inputStreamOpen = ApplicationLoader.applicationContext.getAssets().open(str);
                BitmapFactory.Options options = new BitmapFactory.Options();
                options.inJustDecodeBounds = false;
                options.inSampleSize = i;
                bitmapDecodeStream = BitmapFactory.decodeStream(inputStreamOpen, null, options);
                try {
                    inputStreamOpen.close();
                } catch (Throwable th) {
                    th = th;
                    FileLog.e(th);
                    return bitmapDecodeStream;
                }
            } catch (Throwable th2) {
                th = th2;
                bitmapDecodeStream = null;
            }
            return bitmapDecodeStream;
        } catch (Throwable th3) {
            if (BuildVars.LOGS_ENABLED) {
                FileLog.e("Error loading emoji", th3);
            }
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void loadEmoji(final byte b, final short s) {
        if (emojiBmp[b][s] == null) {
            boolean[] zArr = loadingEmoji[b];
            if (zArr[s]) {
                return;
            }
            zArr[s] = true;
            Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.Emoji$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    Emoji.lambda$loadEmoji$1(b, s);
                }
            });
        }
    }

    public static void loadRecentEmoji() {
        if (recentEmojiLoaded) {
            return;
        }
        recentEmojiLoaded = true;
        SharedPreferences globalEmojiSettings = MessagesController.getGlobalEmojiSettings();
        try {
            emojiUseHistory.clear();
            if (globalEmojiSettings.contains("emojis")) {
                String string = globalEmojiSettings.getString("emojis", "");
                if (string != null && string.length() > 0) {
                    for (String str : string.split(",")) {
                        String[] strArrSplit = str.split(ContainerUtils.KEY_VALUE_DELIMITER);
                        long jLongValue = Utilities.parseLong(strArrSplit[0]).longValue();
                        StringBuilder sb = new StringBuilder();
                        for (int i = 0; i < 4; i++) {
                            sb.insert(0, (char) jLongValue);
                            jLongValue >>= 16;
                            if (jLongValue == 0) {
                                break;
                            }
                        }
                        if (sb.length() > 0) {
                            emojiUseHistory.put(sb.toString(), Utilities.parseInt((CharSequence) strArrSplit[1]));
                        }
                    }
                }
                globalEmojiSettings.edit().remove("emojis").commit();
                saveRecentEmoji();
            } else {
                String string2 = globalEmojiSettings.getString("emojis2", "");
                if (string2 != null && string2.length() > 0) {
                    for (String str2 : string2.split(",")) {
                        String[] strArrSplit2 = str2.split(ContainerUtils.KEY_VALUE_DELIMITER);
                        emojiUseHistory.put(strArrSplit2[0], Utilities.parseInt((CharSequence) strArrSplit2[1]));
                    }
                }
            }
            if (emojiUseHistory.isEmpty() && !globalEmojiSettings.getBoolean("filled_default", false)) {
                int i2 = 0;
                while (true) {
                    String[] strArr = DEFAULT_RECENT;
                    if (i2 >= strArr.length) {
                        break;
                    }
                    emojiUseHistory.put(strArr[i2], Integer.valueOf(strArr.length - i2));
                    i2++;
                }
                globalEmojiSettings.edit().putBoolean("filled_default", true).commit();
                saveRecentEmoji();
            }
            sortEmoji();
        } catch (Exception e) {
            FileLog.e(e);
        }
        try {
            String string3 = globalEmojiSettings.getString(RemoteMessageConst.Notification.COLOR, "");
            if (string3 == null || string3.length() <= 0) {
                return;
            }
            for (String str3 : string3.split(",")) {
                String[] strArrSplit3 = str3.split(ContainerUtils.KEY_VALUE_DELIMITER);
                emojiColor.put(strArrSplit3[0], strArrSplit3[1]);
            }
        } catch (Exception e2) {
            FileLog.e(e2);
        }
    }

    public static ArrayList<EmojiSpanRange> parseEmojis(CharSequence charSequence) {
        return parseEmojis(charSequence, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:118:0x019b  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x01a3 A[Catch: Exception -> 0x0078, TryCatch #0 {Exception -> 0x0078, blocks: (B:9:0x0029, B:30:0x006c, B:90:0x0121, B:92:0x0125, B:94:0x0132, B:98:0x0140, B:122:0x01a3, B:124:0x01a7, B:128:0x01b4, B:130:0x01ba, B:164:0x0215, B:146:0x01ea, B:148:0x01ee, B:157:0x0204, B:159:0x0208, B:167:0x021c, B:169:0x0223, B:171:0x0227, B:173:0x0232, B:177:0x0240, B:180:0x0250, B:182:0x0259, B:184:0x025c, B:185:0x026d, B:99:0x014d, B:101:0x0154, B:103:0x015e, B:107:0x016d, B:109:0x0173, B:110:0x017a, B:112:0x0182, B:113:0x0189, B:115:0x0193, B:17:0x0041, B:19:0x004c, B:34:0x007b, B:46:0x009d, B:44:0x0093, B:51:0x00af, B:59:0x00c3, B:79:0x0102, B:70:0x00e4, B:77:0x00fa), top: B:195:0x0029 }] */
    /* JADX WARN: Removed duplicated region for block: B:153:0x01f9 A[PHI: r6 r14 r16
      0x01f9: PHI (r6v38 int) = (r6v34 int), (r6v34 int), (r6v34 int), (r6v34 int), (r6v42 int), (r6v34 int), (r6v34 int) binds: [B:123:0x01a5, B:154:0x01fd, B:141:0x01de, B:143:0x01e3, B:152:0x01f7, B:127:0x01b2, B:129:0x01b8] A[DONT_GENERATE, DONT_INLINE]
      0x01f9: PHI (r14v18 int) = (r14v12 int), (r14v12 int), (r14v12 int), (r14v12 int), (r14v21 int), (r14v12 int), (r14v12 int) binds: [B:123:0x01a5, B:154:0x01fd, B:141:0x01de, B:143:0x01e3, B:152:0x01f7, B:127:0x01b2, B:129:0x01b8] A[DONT_GENERATE, DONT_INLINE]
      0x01f9: PHI (r16v8 boolean) = (r16v5 boolean), (r16v5 boolean), (r16v5 boolean), (r16v5 boolean), (r16v13 boolean), (r16v5 boolean), (r16v5 boolean) binds: [B:123:0x01a5, B:154:0x01fd, B:141:0x01de, B:143:0x01e3, B:152:0x01f7, B:127:0x01b2, B:129:0x01b8] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:166:0x021a A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:169:0x0223 A[Catch: Exception -> 0x0078, TryCatch #0 {Exception -> 0x0078, blocks: (B:9:0x0029, B:30:0x006c, B:90:0x0121, B:92:0x0125, B:94:0x0132, B:98:0x0140, B:122:0x01a3, B:124:0x01a7, B:128:0x01b4, B:130:0x01ba, B:164:0x0215, B:146:0x01ea, B:148:0x01ee, B:157:0x0204, B:159:0x0208, B:167:0x021c, B:169:0x0223, B:171:0x0227, B:173:0x0232, B:177:0x0240, B:180:0x0250, B:182:0x0259, B:184:0x025c, B:185:0x026d, B:99:0x014d, B:101:0x0154, B:103:0x015e, B:107:0x016d, B:109:0x0173, B:110:0x017a, B:112:0x0182, B:113:0x0189, B:115:0x0193, B:17:0x0041, B:19:0x004c, B:34:0x007b, B:46:0x009d, B:44:0x0093, B:51:0x00af, B:59:0x00c3, B:79:0x0102, B:70:0x00e4, B:77:0x00fa), top: B:195:0x0029 }] */
    /* JADX WARN: Removed duplicated region for block: B:179:0x024e  */
    /* JADX WARN: Removed duplicated region for block: B:187:0x0278  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0121 A[Catch: Exception -> 0x0078, TryCatch #0 {Exception -> 0x0078, blocks: (B:9:0x0029, B:30:0x006c, B:90:0x0121, B:92:0x0125, B:94:0x0132, B:98:0x0140, B:122:0x01a3, B:124:0x01a7, B:128:0x01b4, B:130:0x01ba, B:164:0x0215, B:146:0x01ea, B:148:0x01ee, B:157:0x0204, B:159:0x0208, B:167:0x021c, B:169:0x0223, B:171:0x0227, B:173:0x0232, B:177:0x0240, B:180:0x0250, B:182:0x0259, B:184:0x025c, B:185:0x026d, B:99:0x014d, B:101:0x0154, B:103:0x015e, B:107:0x016d, B:109:0x0173, B:110:0x017a, B:112:0x0182, B:113:0x0189, B:115:0x0193, B:17:0x0041, B:19:0x004c, B:34:0x007b, B:46:0x009d, B:44:0x0093, B:51:0x00af, B:59:0x00c3, B:79:0x0102, B:70:0x00e4, B:77:0x00fa), top: B:195:0x0029 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static ArrayList<EmojiSpanRange> parseEmojis(CharSequence charSequence, int[] iArr) {
        boolean z;
        char cCharAt;
        boolean z2;
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        char cCharAt2;
        int i6;
        ArrayList<EmojiSpanRange> arrayList = new ArrayList<>();
        if (charSequence != null && charSequence.length() > 0) {
            StringBuilder sb = new StringBuilder(16);
            int length = charSequence.length();
            int[] iArr2 = iArr;
            int i7 = 0;
            int i8 = 0;
            long j = 0;
            int i9 = -1;
            int i10 = 0;
            boolean z3 = false;
            boolean z4 = false;
            while (i8 < length) {
                try {
                    char cCharAt3 = charSequence.charAt(i8);
                    if ((cCharAt3 < 55356 || cCharAt3 > 55358) && (j == 0 || (j & (-4294967296L)) != 0 || (j & 65535) != 55356 || cCharAt3 < 56806 || cCharAt3 > 56831)) {
                        if ((sb.length() <= 0 || !(cCharAt3 == 9792 || cCharAt3 == 9794 || cCharAt3 == 9877)) && (j <= 0 || (cCharAt3 & 61440) != 53248)) {
                            if (cCharAt3 != 8419) {
                                if (cCharAt3 == 169 || cCharAt3 == 174 || (cCharAt3 >= 8252 && cCharAt3 <= 12953)) {
                                    if (EmojiData.dataCharsMap.containsKey(Character.valueOf(cCharAt3))) {
                                        if (i9 == -1) {
                                            i9 = i8;
                                        } else if (z3) {
                                            i9 = i8;
                                            i10 = 0;
                                            z3 = false;
                                        }
                                        i10++;
                                        sb.append(cCharAt3);
                                        z = false;
                                    }
                                }
                                if (i9 != -1) {
                                    sb.setLength(0);
                                    z = false;
                                    i9 = -1;
                                    i10 = 0;
                                    z3 = false;
                                    z4 = false;
                                } else if (cCharAt3 != 65039 && cCharAt3 != '\n' && cCharAt3 != ' ' && cCharAt3 != '\t') {
                                    z = true;
                                }
                            } else if (i8 > 0 && (((cCharAt = charSequence.charAt(i7)) >= '0' && cCharAt <= '9') || cCharAt == '#' || cCharAt == '*')) {
                                i10 = (i8 - i7) + 1;
                                sb.append(cCharAt);
                                sb.append(cCharAt3);
                                i9 = i7;
                                z = false;
                                z3 = false;
                            }
                            if (!z4 || (i6 = i8 + 2) >= length) {
                                z2 = z;
                            } else {
                                int i11 = i8 + 1;
                                char cCharAt4 = charSequence.charAt(i11);
                                z2 = z;
                                if (cCharAt4 == 55356) {
                                    char cCharAt5 = charSequence.charAt(i6);
                                    if (cCharAt5 >= 57339 && cCharAt5 <= 57343) {
                                        sb.append(charSequence.subSequence(i11, i8 + 3));
                                        i10 += 2;
                                        i7 = i6;
                                    }
                                    i = i7;
                                    for (i2 = 0; i2 < 3; i2++) {
                                        int i12 = i + 1;
                                        if (i12 < length) {
                                            char cCharAt6 = charSequence.charAt(i12);
                                            if (i2 == 1) {
                                                if (cCharAt6 == 8205 && sb.length() > 0) {
                                                    sb.append(cCharAt6);
                                                    i10++;
                                                    i = i12;
                                                    z4 = false;
                                                    z2 = false;
                                                }
                                            } else if (cCharAt3 == '*' || cCharAt3 == '#' || (cCharAt3 >= '0' && cCharAt3 <= '9')) {
                                                if (cCharAt6 >= 65024) {
                                                    if (cCharAt6 <= 65039) {
                                                        i10++;
                                                        if (!z4) {
                                                            z4 = i + 2 >= length;
                                                        }
                                                        i9 = i7;
                                                        i = i12;
                                                        z3 = true;
                                                    }
                                                }
                                            } else if (i9 != -1 && cCharAt6 >= 65024) {
                                                if (cCharAt6 <= 65039) {
                                                    i10++;
                                                    if (!z4) {
                                                        z4 = i + 2 >= length;
                                                    }
                                                    i = i12;
                                                }
                                            }
                                        }
                                    }
                                    if (z2 && iArr2 != null) {
                                        iArr2[0] = 0;
                                        iArr2 = null;
                                    }
                                    if (z4 && (i4 = i + 2) < length) {
                                        i5 = i + 1;
                                        if (charSequence.charAt(i5) == 55356 && (cCharAt2 = charSequence.charAt(i4)) >= 57339 && cCharAt2 <= 57343) {
                                            sb.append(charSequence.subSequence(i5, i + 3));
                                            i10 += 2;
                                            i = i4;
                                        }
                                    }
                                    if (z4) {
                                        if (iArr2 != null) {
                                            iArr2[0] = iArr2[0] + 1;
                                        }
                                        if (i9 >= 0 && (i3 = i10 + i9) <= length) {
                                            arrayList.add(new EmojiSpanRange(i9, i3, sb.subSequence(0, sb.length())));
                                        }
                                        sb.setLength(0);
                                        i9 = -1;
                                        i10 = 0;
                                        z3 = false;
                                        z4 = false;
                                    }
                                    i8 = i + 1;
                                } else if (sb.length() >= 2 && sb.charAt(0) == 55356 && sb.charAt(1) == 57332 && cCharAt4 == 56128) {
                                    do {
                                        if (i11 < charSequence.length()) {
                                            sb.append(charSequence.charAt(i11));
                                        }
                                        i8 = i11 + 1;
                                        if (i8 < charSequence.length()) {
                                            sb.append(charSequence.charAt(i8));
                                        }
                                        i10 += 2;
                                        i11 += 2;
                                        if (i11 >= charSequence.length()) {
                                            break;
                                        }
                                    } while (charSequence.charAt(i11) == 56128);
                                }
                            }
                            i7 = i8;
                            i = i7;
                            while (i2 < 3) {
                            }
                            if (z2) {
                                iArr2[0] = 0;
                                iArr2 = null;
                            }
                            if (z4) {
                                i5 = i + 1;
                                if (charSequence.charAt(i5) == 55356) {
                                    sb.append(charSequence.subSequence(i5, i + 3));
                                    i10 += 2;
                                    i = i4;
                                }
                            }
                            if (z4) {
                            }
                            i8 = i + 1;
                        } else {
                            sb.append(cCharAt3);
                            i10++;
                            z = false;
                            j = 0;
                        }
                        z4 = true;
                        if (z4) {
                            z2 = z;
                            i7 = i8;
                        }
                        i = i7;
                        while (i2 < 3) {
                        }
                        if (z2) {
                        }
                        if (z4) {
                        }
                        if (z4) {
                        }
                        i8 = i + 1;
                    } else {
                        if (i9 == -1) {
                            i9 = i8;
                        } else if (z3) {
                            i9 = i8;
                            i10 = 0;
                            z3 = false;
                        }
                        sb.append(cCharAt3);
                        i10++;
                        j = (j << 16) | cCharAt3;
                    }
                    z = false;
                    if (z4) {
                    }
                    i = i7;
                    while (i2 < 3) {
                    }
                    if (z2) {
                    }
                    if (z4) {
                    }
                    if (z4) {
                    }
                    i8 = i + 1;
                } catch (Exception e) {
                    FileLog.e(e);
                }
            }
            if (iArr2 != null && sb.length() != 0) {
                iArr2[0] = 0;
            }
        }
        return arrayList;
    }

    public static void preloadEmoji(CharSequence charSequence) {
        DrawableInfo drawableInfo = getDrawableInfo(charSequence);
        if (drawableInfo != null) {
            loadEmoji(drawableInfo.page, drawableInfo.page2);
        }
    }

    public static void removeRecentEmoji(String str) {
        HashMap<String, Integer> map = emojiUseHistory;
        map.remove(str);
        ArrayList<String> arrayList = recentEmoji;
        arrayList.remove(str);
        if (map.isEmpty() || arrayList.isEmpty()) {
            addRecentEmoji(DEFAULT_RECENT[0]);
        }
    }

    public static CharSequence replaceEmoji(CharSequence charSequence, Paint.FontMetricsInt fontMetricsInt, boolean z) {
        return replaceEmoji(charSequence, fontMetricsInt, z, (int[]) null);
    }

    public static CharSequence replaceEmoji(CharSequence charSequence, Paint.FontMetricsInt fontMetricsInt, boolean z, float f) {
        return replaceEmoji(charSequence, fontMetricsInt, z, null, 0, f);
    }

    public static CharSequence replaceEmoji(CharSequence charSequence, Paint.FontMetricsInt fontMetricsInt, boolean z, int[] iArr) {
        return replaceEmoji(charSequence, fontMetricsInt, z, iArr, 0);
    }

    public static CharSequence replaceEmoji(CharSequence charSequence, Paint.FontMetricsInt fontMetricsInt, boolean z, int[] iArr, int i) {
        return replaceEmoji(charSequence, fontMetricsInt, z, iArr, i, 1.0f);
    }

    public static CharSequence replaceEmoji(CharSequence charSequence, Paint.FontMetricsInt fontMetricsInt, boolean z, int[] iArr, int i, float f) {
        int i2;
        int i3;
        if (SharedConfig.useSystemEmoji || charSequence == null || charSequence.length() == 0) {
            return charSequence;
        }
        Spannable spannableNewSpannable = (z || !(charSequence instanceof Spannable)) ? Spannable.Factory.getInstance().newSpannable(charSequence.toString()) : (Spannable) charSequence;
        ArrayList<EmojiSpanRange> emojis = parseEmojis(spannableNewSpannable, iArr);
        if (emojis.isEmpty()) {
            return charSequence;
        }
        AnimatedEmojiSpan[] animatedEmojiSpanArr = (AnimatedEmojiSpan[]) spannableNewSpannable.getSpans(0, spannableNewSpannable.length(), AnimatedEmojiSpan.class);
        ColoredImageSpan[] coloredImageSpanArr = (ColoredImageSpan[]) spannableNewSpannable.getSpans(0, spannableNewSpannable.length(), ColoredImageSpan.class);
        int i4 = SharedConfig.getDevicePerformanceClass() >= 2 ? 100 : 50;
        for (int i5 = 0; i5 < emojis.size(); i5++) {
            try {
                EmojiSpanRange emojiSpanRange = emojis.get(i5);
                if (animatedEmojiSpanArr != null && animatedEmojiSpanArr.length > 0) {
                    while (i3 < animatedEmojiSpanArr.length) {
                        AnimatedEmojiSpan animatedEmojiSpan = animatedEmojiSpanArr[i3];
                        i3 = (animatedEmojiSpan != null && spannableNewSpannable.getSpanStart(animatedEmojiSpan) == emojiSpanRange.start && spannableNewSpannable.getSpanEnd(animatedEmojiSpan) == emojiSpanRange.end) ? 0 : i3 + 1;
                    }
                }
                if (coloredImageSpanArr != null && coloredImageSpanArr.length > 0) {
                    while (i2 < coloredImageSpanArr.length) {
                        ColoredImageSpan coloredImageSpan = coloredImageSpanArr[i2];
                        i2 = (coloredImageSpan != null && spannableNewSpannable.getSpanStart(coloredImageSpan) == emojiSpanRange.start && spannableNewSpannable.getSpanEnd(coloredImageSpan) == emojiSpanRange.end) ? 0 : i2 + 1;
                    }
                }
                EmojiDrawable emojiDrawable = getEmojiDrawable(emojiSpanRange.code);
                if (emojiDrawable != null) {
                    EmojiSpan emojiSpan = new EmojiSpan(emojiDrawable, i, fontMetricsInt);
                    CharSequence charSequence2 = emojiSpanRange.code;
                    emojiSpan.emoji = charSequence2 == null ? null : charSequence2.toString();
                    emojiSpan.scale = f;
                    spannableNewSpannable.setSpan(emojiSpan, emojiSpanRange.start, emojiSpanRange.end, 33);
                }
            } catch (Exception e) {
                FileLog.e(e);
            }
            int i6 = Build.VERSION.SDK_INT;
            if ((i6 < 23 || i6 >= 29) && i5 + 1 >= i4) {
                break;
            }
        }
        return spannableNewSpannable;
    }

    public static CharSequence replaceWithRestrictedEmoji(CharSequence charSequence, Paint.FontMetricsInt fontMetricsInt, final Runnable runnable) {
        TLRPC.Document document;
        int i;
        if (SharedConfig.useSystemEmoji || charSequence == null || charSequence.length() == 0) {
            return charSequence;
        }
        int i2 = UserConfig.selectedAccount;
        TLRPC.TL_inputStickerSetShortName tL_inputStickerSetShortName = new TLRPC.TL_inputStickerSetShortName();
        tL_inputStickerSetShortName.short_name = "RestrictedEmoji";
        TLRPC.TL_messages_stickerSet stickerSet = MediaDataController.getInstance(i2).getStickerSet(tL_inputStickerSetShortName, 0, false, true, runnable == null ? null : new Utilities.Callback() { // from class: org.telegram.messenger.Emoji$$ExternalSyntheticLambda1
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                runnable.run();
            }
        });
        Spannable spannableNewSpannable = charSequence instanceof Spannable ? (Spannable) charSequence : Spannable.Factory.getInstance().newSpannable(charSequence.toString());
        ArrayList<EmojiSpanRange> emojis = parseEmojis(spannableNewSpannable, null);
        if (emojis.isEmpty()) {
            return charSequence;
        }
        AnimatedEmojiSpan[] animatedEmojiSpanArr = (AnimatedEmojiSpan[]) spannableNewSpannable.getSpans(0, spannableNewSpannable.length(), AnimatedEmojiSpan.class);
        int i3 = SharedConfig.getDevicePerformanceClass() >= 2 ? 100 : 50;
        for (int i4 = 0; i4 < emojis.size(); i4++) {
            try {
                EmojiSpanRange emojiSpanRange = emojis.get(i4);
                if (animatedEmojiSpanArr != null) {
                    while (i < animatedEmojiSpanArr.length) {
                        AnimatedEmojiSpan animatedEmojiSpan = animatedEmojiSpanArr[i];
                        i = (animatedEmojiSpan != null && spannableNewSpannable.getSpanStart(animatedEmojiSpan) == emojiSpanRange.start && spannableNewSpannable.getSpanEnd(animatedEmojiSpan) == emojiSpanRange.end) ? 0 : i + 1;
                    }
                }
                if (stickerSet != null) {
                    Iterator it = stickerSet.documents.iterator();
                    while (it.hasNext()) {
                        document = (TLRPC.Document) it.next();
                        if (MessageObject.findAnimatedEmojiEmoticon(document, null).contains(emojiSpanRange.code)) {
                            break;
                        }
                    }
                }
                document = null;
                AnimatedEmojiSpan animatedEmojiSpan2 = document != null ? new AnimatedEmojiSpan(document, fontMetricsInt) : new AnimatedEmojiSpan(0L, fontMetricsInt);
                animatedEmojiSpan2.emoji = emojiSpanRange.code.toString();
                animatedEmojiSpan2.cacheType = 20;
                spannableNewSpannable.setSpan(animatedEmojiSpan2, emojiSpanRange.start, emojiSpanRange.end, 33);
            } catch (Exception e) {
                FileLog.e(e);
            }
            int i5 = Build.VERSION.SDK_INT;
            if ((i5 < 23 || i5 >= 29) && i4 + 1 >= i3) {
                break;
            }
        }
        return spannableNewSpannable;
    }

    public static CharSequence replaceWithRestrictedEmoji(CharSequence charSequence, TextView textView, Runnable runnable) {
        return replaceWithRestrictedEmoji(charSequence, textView.getPaint().getFontMetricsInt(), runnable);
    }

    public static void saveEmojiColors() {
        SharedPreferences globalEmojiSettings = MessagesController.getGlobalEmojiSettings();
        StringBuilder sb = new StringBuilder();
        for (Map.Entry<String, String> entry : emojiColor.entrySet()) {
            if (sb.length() != 0) {
                sb.append(",");
            }
            sb.append(entry.getKey());
            sb.append(ContainerUtils.KEY_VALUE_DELIMITER);
            sb.append(entry.getValue());
        }
        globalEmojiSettings.edit().putString(RemoteMessageConst.Notification.COLOR, sb.toString()).commit();
    }

    public static void saveRecentEmoji() {
        SharedPreferences globalEmojiSettings = MessagesController.getGlobalEmojiSettings();
        StringBuilder sb = new StringBuilder();
        for (Map.Entry<String, Integer> entry : emojiUseHistory.entrySet()) {
            if (sb.length() != 0) {
                sb.append(",");
            }
            sb.append(entry.getKey());
            sb.append(ContainerUtils.KEY_VALUE_DELIMITER);
            sb.append(entry.getValue());
        }
        globalEmojiSettings.edit().putString("emojis2", sb.toString()).commit();
    }

    public static void sortEmoji() {
        recentEmoji.clear();
        Iterator<Map.Entry<String, Integer>> it = emojiUseHistory.entrySet().iterator();
        while (it.hasNext()) {
            recentEmoji.add(it.next().getKey());
        }
        Collections.sort(recentEmoji, new Comparator() { // from class: org.telegram.messenger.Emoji$$ExternalSyntheticLambda0
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return Emoji.lambda$sortEmoji$3((String) obj, (String) obj2);
            }
        });
        while (true) {
            ArrayList<String> arrayList = recentEmoji;
            if (arrayList.size() <= 48) {
                return;
            } else {
                arrayList.remove(arrayList.size() - 1);
            }
        }
    }
}
