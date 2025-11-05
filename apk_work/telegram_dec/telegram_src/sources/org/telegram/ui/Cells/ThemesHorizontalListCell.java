package org.telegram.ui.Cells;

import android.animation.ArgbEvaluator;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.net.Uri;
import android.os.Build;
import android.os.SystemClock;
import android.text.TextPaint;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Button;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.R;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.tl.TL_account$getWallPaper;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.EmojiThemes;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.ActionBar.ThemeColors;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.MotionBackgroundDrawable;
import org.telegram.ui.Components.RadioButton;
import org.telegram.ui.Components.RecyclerListView;
import org.telegram.ui.ThemeSetUrlActivity;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes4.dex */
public abstract class ThemesHorizontalListCell extends RecyclerListView implements NotificationCenter.NotificationCenterDelegate {
    public static byte[] bytes = new byte[1024];
    private ThemesListAdapter adapter;
    private int currentType;
    private ArrayList customThemes;
    private ArrayList defaultThemes;
    private boolean drawDivider;
    private BaseFragment fragment;
    private LinearLayoutManager horizontalLayoutManager;
    private HashMap loadingThemes;
    private HashMap loadingWallpapers;
    private int prevCount;
    private Theme.ThemeInfo prevThemeInfo;

    /* JADX INFO: Access modifiers changed from: private */
    class InnerThemeView extends FrameLayout {
        private ObjectAnimator accentAnimator;
        private boolean accentColorChanged;
        private int accentId;
        private float accentState;
        private int backColor;
        private Drawable backgroundDrawable;
        private Paint bitmapPaint;
        private BitmapShader bitmapShader;
        private RadioButton button;
        private int checkColor;
        private final ArgbEvaluator evaluator;
        private boolean hasWhiteBackground;
        private int inColor;
        private Drawable inDrawable;
        private boolean isFirst;
        private boolean isLast;
        private long lastDrawTime;
        private int loadingColor;
        private Drawable loadingDrawable;
        private int oldBackColor;
        private int oldCheckColor;
        private int oldInColor;
        private int oldOutColor;
        private Drawable optionsDrawable;
        private int outColor;
        private Drawable outDrawable;
        private Paint paint;
        private float placeholderAlpha;
        private boolean pressed;
        private RectF rect;
        private Matrix shaderMatrix;
        private TextPaint textPaint;
        private Theme.ThemeInfo themeInfo;

        public InnerThemeView(Context context) {
            super(context);
            this.rect = new RectF();
            this.paint = new Paint(1);
            this.textPaint = new TextPaint(1);
            this.evaluator = new ArgbEvaluator();
            this.bitmapPaint = new Paint(3);
            this.shaderMatrix = new Matrix();
            setWillNotDraw(false);
            this.inDrawable = context.getResources().getDrawable(R.drawable.minibubble_in).mutate();
            this.outDrawable = context.getResources().getDrawable(R.drawable.minibubble_out).mutate();
            this.textPaint.setTextSize(AndroidUtilities.dp(13.0f));
            RadioButton radioButton = new RadioButton(context);
            this.button = radioButton;
            radioButton.setSize(AndroidUtilities.dp(20.0f));
            addView(this.button, LayoutHelper.createFrame(22, 22.0f, 51, 27.0f, 75.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED));
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:32:0x0136  */
        /* JADX WARN: Removed duplicated region for block: B:41:0x0158  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void applyTheme() throws IOException {
            Drawable drawableCreateDefaultWallpaper;
            GradientDrawable gradientDrawable;
            Drawable drawable = this.inDrawable;
            int previewInColor = this.themeInfo.getPreviewInColor();
            PorterDuff.Mode mode = PorterDuff.Mode.MULTIPLY;
            drawable.setColorFilter(new PorterDuffColorFilter(previewInColor, mode));
            this.outDrawable.setColorFilter(new PorterDuffColorFilter(this.themeInfo.getPreviewOutColor(), mode));
            double[] dArrRgbToHsv = null;
            if (this.themeInfo.pathToFile == null) {
                updateColors(false);
                this.optionsDrawable = null;
            } else {
                this.optionsDrawable = getResources().getDrawable(R.drawable.preview_dots).mutate();
                int previewBackgroundColor = this.themeInfo.getPreviewBackgroundColor();
                this.backColor = previewBackgroundColor;
                this.oldBackColor = previewBackgroundColor;
            }
            this.bitmapShader = null;
            this.backgroundDrawable = null;
            Theme.ThemeInfo themeInfo = this.themeInfo;
            int i = themeInfo.previewBackgroundGradientColor1;
            if (i != 0 && themeInfo.previewBackgroundGradientColor2 != 0) {
                int previewBackgroundColor2 = this.themeInfo.getPreviewBackgroundColor();
                Theme.ThemeInfo themeInfo2 = this.themeInfo;
                MotionBackgroundDrawable motionBackgroundDrawable = new MotionBackgroundDrawable(previewBackgroundColor2, themeInfo2.previewBackgroundGradientColor1, themeInfo2.previewBackgroundGradientColor2, themeInfo2.previewBackgroundGradientColor3, true);
                motionBackgroundDrawable.setRoundRadius(AndroidUtilities.dp(6.0f));
                gradientDrawable = motionBackgroundDrawable;
            } else {
                if (i == 0) {
                    if (themeInfo.previewWallpaperOffset > 0 || themeInfo.pathToWallpaper != null) {
                        float fDp = AndroidUtilities.dp(76.0f);
                        float fDp2 = AndroidUtilities.dp(97.0f);
                        Theme.ThemeInfo themeInfo3 = this.themeInfo;
                        Bitmap scaledBitmap = AndroidUtilities.getScaledBitmap(fDp, fDp2, themeInfo3.pathToWallpaper, themeInfo3.pathToFile, themeInfo3.previewWallpaperOffset);
                        if (scaledBitmap != null) {
                            this.backgroundDrawable = new BitmapDrawable(scaledBitmap);
                            Shader.TileMode tileMode = Shader.TileMode.CLAMP;
                            BitmapShader bitmapShader = new BitmapShader(scaledBitmap, tileMode, tileMode);
                            this.bitmapShader = bitmapShader;
                            this.bitmapPaint.setShader(bitmapShader);
                            int[] iArrCalcDrawableColor = AndroidUtilities.calcDrawableColor(this.backgroundDrawable);
                            dArrRgbToHsv = AndroidUtilities.rgbToHsv(Color.red(iArrCalcDrawableColor[0]), Color.green(iArrCalcDrawableColor[0]), Color.blue(iArrCalcDrawableColor[0]));
                        }
                    } else if (themeInfo.getPreviewBackgroundColor() != 0) {
                        dArrRgbToHsv = AndroidUtilities.rgbToHsv(Color.red(this.themeInfo.getPreviewBackgroundColor()), Color.green(this.themeInfo.getPreviewBackgroundColor()), Color.blue(this.themeInfo.getPreviewBackgroundColor()));
                    }
                    if (dArrRgbToHsv != null || dArrRgbToHsv[1] > 0.10000000149011612d || dArrRgbToHsv[2] < 0.9599999785423279d) {
                        this.hasWhiteBackground = false;
                    } else {
                        this.hasWhiteBackground = true;
                    }
                    if (this.themeInfo.getPreviewBackgroundColor() == 0 && this.themeInfo.previewParsed && this.backgroundDrawable == null) {
                        drawableCreateDefaultWallpaper = Theme.createDefaultWallpaper(100, 200);
                        this.backgroundDrawable = drawableCreateDefaultWallpaper;
                        if (drawableCreateDefaultWallpaper instanceof MotionBackgroundDrawable) {
                            ((MotionBackgroundDrawable) drawableCreateDefaultWallpaper).setRoundRadius(AndroidUtilities.dp(6.0f));
                        }
                    }
                    invalidate();
                }
                GradientDrawable gradientDrawable2 = new GradientDrawable(GradientDrawable.Orientation.BL_TR, new int[]{this.themeInfo.getPreviewBackgroundColor(), this.themeInfo.previewBackgroundGradientColor1});
                gradientDrawable2.setCornerRadius(AndroidUtilities.dp(6.0f));
                gradientDrawable = gradientDrawable2;
            }
            this.backgroundDrawable = gradientDrawable;
            dArrRgbToHsv = AndroidUtilities.rgbToHsv(Color.red(this.themeInfo.getPreviewBackgroundColor()), Color.green(this.themeInfo.getPreviewBackgroundColor()), Color.blue(this.themeInfo.getPreviewBackgroundColor()));
            if (dArrRgbToHsv != null) {
                this.hasWhiteBackground = false;
            }
            if (this.themeInfo.getPreviewBackgroundColor() == 0) {
                drawableCreateDefaultWallpaper = Theme.createDefaultWallpaper(100, 200);
                this.backgroundDrawable = drawableCreateDefaultWallpaper;
                if (drawableCreateDefaultWallpaper instanceof MotionBackgroundDrawable) {
                }
            }
            invalidate();
        }

        private int blend(int i, int i2) {
            float f = this.accentState;
            return f == 1.0f ? i2 : ((Integer) this.evaluator.evaluate(f, Integer.valueOf(i), Integer.valueOf(i2))).intValue();
        }

        private String getThemeName() {
            String name = this.themeInfo.getName();
            return name.toLowerCase().endsWith(".attheme") ? name.substring(0, name.lastIndexOf(46)) : name;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$parseTheme$0(TLObject tLObject) {
            if (!(tLObject instanceof TLRPC.TL_wallPaper)) {
                this.themeInfo.badWallpaper = true;
                return;
            }
            TLRPC.WallPaper wallPaper = (TLRPC.WallPaper) tLObject;
            String attachFileName = FileLoader.getAttachFileName(wallPaper.document);
            if (ThemesHorizontalListCell.this.loadingThemes.containsKey(attachFileName)) {
                return;
            }
            ThemesHorizontalListCell.this.loadingThemes.put(attachFileName, this.themeInfo);
            FileLoader.getInstance(this.themeInfo.account).loadFile(wallPaper.document, wallPaper, 1, 1);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$parseTheme$1(final TLObject tLObject, TLRPC.TL_error tL_error) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Cells.ThemesHorizontalListCell$InnerThemeView$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$parseTheme$0(tLObject);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Removed duplicated region for block: B:89:0x01df A[Catch: all -> 0x00aa, TryCatch #2 {all -> 0x00aa, blocks: (B:10:0x001e, B:14:0x002c, B:16:0x0034, B:18:0x0047, B:20:0x0088, B:22:0x0094, B:25:0x0098, B:27:0x009b, B:29:0x00a5, B:32:0x00ae, B:33:0x00b1, B:35:0x00bd, B:37:0x00c9, B:39:0x00e5, B:41:0x00ef, B:42:0x00fe, B:44:0x0106, B:46:0x0110, B:47:0x0120, B:49:0x0128, B:51:0x0132, B:105:0x0213, B:52:0x0142, B:54:0x014e, B:55:0x015a, B:57:0x0166, B:58:0x0172, B:60:0x0178, B:62:0x017f, B:64:0x0187, B:65:0x018f, B:67:0x0198, B:69:0x01a5, B:71:0x01a9, B:73:0x01ad, B:75:0x01b1, B:77:0x01b5, B:79:0x01b9, B:81:0x01c5, B:84:0x01ce, B:87:0x01db, B:89:0x01df, B:90:0x01e5, B:92:0x01e9, B:93:0x01ef, B:95:0x01f3, B:96:0x01f9, B:98:0x01fd, B:99:0x0202, B:101:0x0206, B:102:0x020b, B:104:0x020f, B:86:0x01d3, B:106:0x0215, B:110:0x021e), top: B:144:0x001e, outer: #4 }] */
        /* JADX WARN: Removed duplicated region for block: B:90:0x01e5 A[Catch: all -> 0x00aa, TryCatch #2 {all -> 0x00aa, blocks: (B:10:0x001e, B:14:0x002c, B:16:0x0034, B:18:0x0047, B:20:0x0088, B:22:0x0094, B:25:0x0098, B:27:0x009b, B:29:0x00a5, B:32:0x00ae, B:33:0x00b1, B:35:0x00bd, B:37:0x00c9, B:39:0x00e5, B:41:0x00ef, B:42:0x00fe, B:44:0x0106, B:46:0x0110, B:47:0x0120, B:49:0x0128, B:51:0x0132, B:105:0x0213, B:52:0x0142, B:54:0x014e, B:55:0x015a, B:57:0x0166, B:58:0x0172, B:60:0x0178, B:62:0x017f, B:64:0x0187, B:65:0x018f, B:67:0x0198, B:69:0x01a5, B:71:0x01a9, B:73:0x01ad, B:75:0x01b1, B:77:0x01b5, B:79:0x01b9, B:81:0x01c5, B:84:0x01ce, B:87:0x01db, B:89:0x01df, B:90:0x01e5, B:92:0x01e9, B:93:0x01ef, B:95:0x01f3, B:96:0x01f9, B:98:0x01fd, B:99:0x0202, B:101:0x0206, B:102:0x020b, B:104:0x020f, B:86:0x01d3, B:106:0x0215, B:110:0x021e), top: B:144:0x001e, outer: #4 }] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public boolean parseTheme() {
            int iStringKeyToInt;
            int iIntValue;
            String[] strArrSplit;
            Theme.ThemeInfo themeInfo = this.themeInfo;
            if (themeInfo == null || themeInfo.pathToFile == null) {
                return false;
            }
            try {
                FileInputStream fileInputStream = new FileInputStream(new File(this.themeInfo.pathToFile));
                int i = 0;
                boolean z = false;
                while (true) {
                    try {
                        int i2 = fileInputStream.read(ThemesHorizontalListCell.bytes);
                        if (i2 == -1) {
                            break;
                        }
                        int i3 = i;
                        int i4 = 0;
                        int i5 = 0;
                        while (true) {
                            if (i4 >= i2) {
                                break;
                            }
                            byte[] bArr = ThemesHorizontalListCell.bytes;
                            if (bArr[i4] == 10) {
                                int i6 = i4 - i5;
                                int i7 = i6 + 1;
                                String str = new String(bArr, i5, i6, "UTF-8");
                                if (str.startsWith("WLS=")) {
                                    String strSubstring = str.substring(4);
                                    Uri uri = Uri.parse(strSubstring);
                                    this.themeInfo.slug = uri.getQueryParameter("slug");
                                    this.themeInfo.pathToWallpaper = new File(ApplicationLoader.getFilesDirFixed(), Utilities.MD5(strSubstring) + ".wp").getAbsolutePath();
                                    String queryParameter = uri.getQueryParameter("mode");
                                    if (queryParameter != null && (strArrSplit = queryParameter.toLowerCase().split(" ")) != null && strArrSplit.length > 0) {
                                        int i8 = 0;
                                        while (true) {
                                            if (i8 >= strArrSplit.length) {
                                                break;
                                            }
                                            if ("blur".equals(strArrSplit[i8])) {
                                                this.themeInfo.isBlured = true;
                                                break;
                                            }
                                            i8++;
                                        }
                                    }
                                    if (!TextUtils.isEmpty(uri.getQueryParameter("pattern"))) {
                                        try {
                                            String queryParameter2 = uri.getQueryParameter("bg_color");
                                            if (!TextUtils.isEmpty(queryParameter2)) {
                                                this.themeInfo.patternBgColor = Integer.parseInt(queryParameter2.substring(0, 6), 16) | (-16777216);
                                                if (queryParameter2.length() >= 13 && AndroidUtilities.isValidWallChar(queryParameter2.charAt(6))) {
                                                    this.themeInfo.patternBgGradientColor1 = Integer.parseInt(queryParameter2.substring(7, 13), 16) | (-16777216);
                                                }
                                                if (queryParameter2.length() >= 20 && AndroidUtilities.isValidWallChar(queryParameter2.charAt(13))) {
                                                    this.themeInfo.patternBgGradientColor2 = Integer.parseInt(queryParameter2.substring(14, 20), 16) | (-16777216);
                                                }
                                                if (queryParameter2.length() == 27 && AndroidUtilities.isValidWallChar(queryParameter2.charAt(20))) {
                                                    this.themeInfo.patternBgGradientColor3 = Integer.parseInt(queryParameter2.substring(21), 16) | (-16777216);
                                                }
                                            }
                                        } catch (Exception unused) {
                                        }
                                        try {
                                            String queryParameter3 = uri.getQueryParameter("rotation");
                                            if (!TextUtils.isEmpty(queryParameter3)) {
                                                this.themeInfo.patternBgGradientRotation = Utilities.parseInt((CharSequence) queryParameter3).intValue();
                                            }
                                        } catch (Exception unused2) {
                                        }
                                        String queryParameter4 = uri.getQueryParameter("intensity");
                                        if (!TextUtils.isEmpty(queryParameter4)) {
                                            this.themeInfo.patternIntensity = Utilities.parseInt((CharSequence) queryParameter4).intValue();
                                        }
                                        Theme.ThemeInfo themeInfo2 = this.themeInfo;
                                        if (themeInfo2.patternIntensity == 0) {
                                            themeInfo2.patternIntensity = 50;
                                        }
                                    }
                                } else {
                                    if (str.startsWith("WPS")) {
                                        this.themeInfo.previewWallpaperOffset = i7 + i3;
                                        z = true;
                                        break;
                                    }
                                    int iIndexOf = str.indexOf(61);
                                    if (iIndexOf != -1 && ((iStringKeyToInt = ThemeColors.stringKeyToInt(str.substring(0, iIndexOf))) == Theme.key_chat_inBubble || iStringKeyToInt == Theme.key_chat_outBubble || iStringKeyToInt == Theme.key_chat_wallpaper || iStringKeyToInt == Theme.key_chat_wallpaper_gradient_to1 || iStringKeyToInt == Theme.key_chat_wallpaper_gradient_to2 || iStringKeyToInt == Theme.key_chat_wallpaper_gradient_to3)) {
                                        String strSubstring2 = str.substring(iIndexOf + 1);
                                        if (strSubstring2.length() <= 0 || strSubstring2.charAt(0) != '#') {
                                            iIntValue = Utilities.parseInt((CharSequence) strSubstring2).intValue();
                                            if (iStringKeyToInt != Theme.key_chat_inBubble) {
                                                this.themeInfo.setPreviewInColor(iIntValue);
                                            } else if (iStringKeyToInt == Theme.key_chat_outBubble) {
                                                this.themeInfo.setPreviewOutColor(iIntValue);
                                            } else if (iStringKeyToInt == Theme.key_chat_wallpaper) {
                                                this.themeInfo.setPreviewBackgroundColor(iIntValue);
                                            } else if (iStringKeyToInt == Theme.key_chat_wallpaper_gradient_to1) {
                                                this.themeInfo.previewBackgroundGradientColor1 = iIntValue;
                                            } else if (iStringKeyToInt == Theme.key_chat_wallpaper_gradient_to2) {
                                                this.themeInfo.previewBackgroundGradientColor2 = iIntValue;
                                            } else if (iStringKeyToInt == Theme.key_chat_wallpaper_gradient_to3) {
                                                this.themeInfo.previewBackgroundGradientColor3 = iIntValue;
                                            }
                                        } else {
                                            try {
                                                iIntValue = Color.parseColor(strSubstring2);
                                            } catch (Exception unused3) {
                                            }
                                            if (iStringKeyToInt != Theme.key_chat_inBubble) {
                                            }
                                        }
                                    }
                                }
                                i5 += i7;
                                i3 += i7;
                            }
                            i4++;
                        }
                        if (z || i == i3) {
                            break;
                        }
                        fileInputStream.getChannel().position(i3);
                        i = i3;
                    } finally {
                    }
                }
                fileInputStream.close();
            } catch (Throwable th) {
                FileLog.e(th);
            }
            Theme.ThemeInfo themeInfo3 = this.themeInfo;
            if (themeInfo3.pathToWallpaper == null || themeInfo3.badWallpaper || new File(this.themeInfo.pathToWallpaper).exists()) {
                this.themeInfo.previewParsed = true;
                return true;
            }
            if (ThemesHorizontalListCell.this.loadingWallpapers.containsKey(this.themeInfo)) {
                return false;
            }
            HashMap map = ThemesHorizontalListCell.this.loadingWallpapers;
            Theme.ThemeInfo themeInfo4 = this.themeInfo;
            map.put(themeInfo4, themeInfo4.slug);
            TL_account$getWallPaper tL_account$getWallPaper = new TL_account$getWallPaper();
            TLRPC.TL_inputWallPaperSlug tL_inputWallPaperSlug = new TLRPC.TL_inputWallPaperSlug();
            Theme.ThemeInfo themeInfo5 = this.themeInfo;
            tL_inputWallPaperSlug.slug = themeInfo5.slug;
            tL_account$getWallPaper.wallpaper = tL_inputWallPaperSlug;
            ConnectionsManager.getInstance(themeInfo5.account).sendRequest(tL_account$getWallPaper, new RequestDelegate() { // from class: org.telegram.ui.Cells.ThemesHorizontalListCell$InnerThemeView$$ExternalSyntheticLambda1
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$parseTheme$1(tLObject, tL_error);
                }
            });
            return false;
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onAttachedToWindow() throws IOException {
            TLRPC.TL_theme tL_theme;
            super.onAttachedToWindow();
            this.button.setChecked(this.themeInfo == (ThemesHorizontalListCell.this.currentType == 1 ? Theme.getCurrentNightTheme() : Theme.getCurrentTheme()), false);
            Theme.ThemeInfo themeInfo = this.themeInfo;
            if (themeInfo == null || (tL_theme = themeInfo.info) == null || themeInfo.themeLoaded) {
                return;
            }
            if (ThemesHorizontalListCell.this.loadingThemes.containsKey(FileLoader.getAttachFileName(tL_theme.document)) || ThemesHorizontalListCell.this.loadingWallpapers.containsKey(this.themeInfo)) {
                return;
            }
            this.themeInfo.themeLoaded = true;
            this.placeholderAlpha = BitmapDescriptorFactory.HUE_RED;
            parseTheme();
            applyTheme();
        }

        /* JADX WARN: Removed duplicated region for block: B:40:0x0198  */
        /* JADX WARN: Removed duplicated region for block: B:46:0x01d2  */
        @Override // android.view.View
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        protected void onDraw(Canvas canvas) {
            RectF rectF;
            float fDp;
            float fDp2;
            Paint paint;
            Theme.ThemeInfo themeInfo;
            if (this.accentId != this.themeInfo.currentAccentId) {
                updateColors(true);
            }
            int iDp = this.isFirst ? AndroidUtilities.dp(22.0f) : 0;
            float f = iDp;
            float fDp3 = AndroidUtilities.dp(11.0f);
            this.rect.set(f, fDp3, AndroidUtilities.dp(76.0f) + iDp, r3 + AndroidUtilities.dp(97.0f));
            String string = TextUtils.ellipsize(getThemeName(), this.textPaint, (getMeasuredWidth() - AndroidUtilities.dp(this.isFirst ? 10.0f : 15.0f)) - (this.isLast ? AndroidUtilities.dp(7.0f) : 0), TextUtils.TruncateAt.END).toString();
            int iCeil = (int) Math.ceil(this.textPaint.measureText(string));
            this.textPaint.setColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText));
            canvas.drawText(string, ((AndroidUtilities.dp(76.0f) - iCeil) / 2) + iDp, AndroidUtilities.dp(131.0f), this.textPaint);
            Theme.ThemeInfo themeInfo2 = this.themeInfo;
            TLRPC.TL_theme tL_theme = themeInfo2.info;
            if (tL_theme == null || (tL_theme.document != null && themeInfo2.themeLoaded)) {
                this.paint.setColor(blend(this.oldBackColor, this.backColor));
                if (this.accentColorChanged) {
                    Drawable drawable = this.inDrawable;
                    int iBlend = blend(this.oldInColor, this.inColor);
                    PorterDuff.Mode mode = PorterDuff.Mode.MULTIPLY;
                    drawable.setColorFilter(new PorterDuffColorFilter(iBlend, mode));
                    this.outDrawable.setColorFilter(new PorterDuffColorFilter(blend(this.oldOutColor, this.outColor), mode));
                    this.accentColorChanged = false;
                }
                Drawable drawable2 = this.backgroundDrawable;
                if (drawable2 == null) {
                    rectF = this.rect;
                    fDp = AndroidUtilities.dp(6.0f);
                    fDp2 = AndroidUtilities.dp(6.0f);
                    paint = this.paint;
                } else if (this.bitmapShader != null) {
                    BitmapDrawable bitmapDrawable = (BitmapDrawable) drawable2;
                    float width = bitmapDrawable.getBitmap().getWidth();
                    float height = bitmapDrawable.getBitmap().getHeight();
                    float fWidth = width / this.rect.width();
                    float fHeight = height / this.rect.height();
                    this.shaderMatrix.reset();
                    float fMin = 1.0f / Math.min(fWidth, fHeight);
                    float f2 = width / fHeight;
                    if (f2 > this.rect.width()) {
                        this.shaderMatrix.setTranslate(f - ((f2 - this.rect.width()) / 2.0f), fDp3);
                    } else {
                        this.shaderMatrix.setTranslate(f, fDp3 - (((height / fWidth) - this.rect.height()) / 2.0f));
                    }
                    this.shaderMatrix.preScale(fMin, fMin);
                    this.bitmapShader.setLocalMatrix(this.shaderMatrix);
                    rectF = this.rect;
                    fDp = AndroidUtilities.dp(6.0f);
                    fDp2 = AndroidUtilities.dp(6.0f);
                    paint = this.bitmapPaint;
                } else {
                    RectF rectF2 = this.rect;
                    drawable2.setBounds((int) rectF2.left, (int) rectF2.top, (int) rectF2.right, (int) rectF2.bottom);
                    this.backgroundDrawable.draw(canvas);
                    this.button.setColor(1728053247, -1);
                    themeInfo = this.themeInfo;
                    if (themeInfo.accentBaseColor == 0) {
                        if ("Day".equals(themeInfo.name) || "Arctic Blue".equals(this.themeInfo.name)) {
                            this.button.setColor(-5000269, blend(this.oldCheckColor, this.checkColor));
                            Theme.chat_instantViewRectPaint.setColor(733001146);
                            canvas.drawRoundRect(this.rect, AndroidUtilities.dp(6.0f), AndroidUtilities.dp(6.0f), Theme.chat_instantViewRectPaint);
                        }
                        this.inDrawable.setBounds(AndroidUtilities.dp(6.0f) + iDp, AndroidUtilities.dp(22.0f), AndroidUtilities.dp(49.0f) + iDp, AndroidUtilities.dp(36.0f));
                        this.inDrawable.draw(canvas);
                        this.outDrawable.setBounds(AndroidUtilities.dp(27.0f) + iDp, AndroidUtilities.dp(41.0f), iDp + AndroidUtilities.dp(70.0f), AndroidUtilities.dp(55.0f));
                        this.outDrawable.draw(canvas);
                        if (this.optionsDrawable != null && ThemesHorizontalListCell.this.currentType == 0) {
                            int iDp2 = ((int) this.rect.right) - AndroidUtilities.dp(16.0f);
                            int iDp3 = ((int) this.rect.top) + AndroidUtilities.dp(6.0f);
                            Drawable drawable3 = this.optionsDrawable;
                            drawable3.setBounds(iDp2, iDp3, drawable3.getIntrinsicWidth() + iDp2, this.optionsDrawable.getIntrinsicHeight() + iDp3);
                            this.optionsDrawable.draw(canvas);
                        }
                    } else {
                        if (this.hasWhiteBackground) {
                            this.button.setColor(-5000269, themeInfo.getPreviewOutColor());
                            Theme.chat_instantViewRectPaint.setColor(733001146);
                            canvas.drawRoundRect(this.rect, AndroidUtilities.dp(6.0f), AndroidUtilities.dp(6.0f), Theme.chat_instantViewRectPaint);
                        }
                        this.inDrawable.setBounds(AndroidUtilities.dp(6.0f) + iDp, AndroidUtilities.dp(22.0f), AndroidUtilities.dp(49.0f) + iDp, AndroidUtilities.dp(36.0f));
                        this.inDrawable.draw(canvas);
                        this.outDrawable.setBounds(AndroidUtilities.dp(27.0f) + iDp, AndroidUtilities.dp(41.0f), iDp + AndroidUtilities.dp(70.0f), AndroidUtilities.dp(55.0f));
                        this.outDrawable.draw(canvas);
                        if (this.optionsDrawable != null) {
                            int iDp22 = ((int) this.rect.right) - AndroidUtilities.dp(16.0f);
                            int iDp32 = ((int) this.rect.top) + AndroidUtilities.dp(6.0f);
                            Drawable drawable32 = this.optionsDrawable;
                            drawable32.setBounds(iDp22, iDp32, drawable32.getIntrinsicWidth() + iDp22, this.optionsDrawable.getIntrinsicHeight() + iDp32);
                            this.optionsDrawable.draw(canvas);
                        }
                    }
                }
                canvas.drawRoundRect(rectF, fDp, fDp2, paint);
                this.button.setColor(1728053247, -1);
                themeInfo = this.themeInfo;
                if (themeInfo.accentBaseColor == 0) {
                }
            }
            Theme.ThemeInfo themeInfo3 = this.themeInfo;
            TLRPC.TL_theme tL_theme2 = themeInfo3.info;
            if (tL_theme2 != null && tL_theme2.document == null) {
                this.button.setAlpha(BitmapDescriptorFactory.HUE_RED);
                Theme.chat_instantViewRectPaint.setColor(733001146);
                canvas.drawRoundRect(this.rect, AndroidUtilities.dp(6.0f), AndroidUtilities.dp(6.0f), Theme.chat_instantViewRectPaint);
                if (this.loadingDrawable != null) {
                    int color = Theme.getColor(Theme.key_windowBackgroundWhiteGrayText7);
                    if (this.loadingColor != color) {
                        Drawable drawable4 = this.loadingDrawable;
                        this.loadingColor = color;
                        Theme.setDrawableColor(drawable4, color);
                    }
                    int iCenterX = (int) (this.rect.centerX() - (this.loadingDrawable.getIntrinsicWidth() / 2));
                    int iCenterY = (int) (this.rect.centerY() - (this.loadingDrawable.getIntrinsicHeight() / 2));
                    Drawable drawable5 = this.loadingDrawable;
                    drawable5.setBounds(iCenterX, iCenterY, drawable5.getIntrinsicWidth() + iCenterX, this.loadingDrawable.getIntrinsicHeight() + iCenterY);
                    this.loadingDrawable.draw(canvas);
                    return;
                }
                return;
            }
            if ((tL_theme2 == null || themeInfo3.themeLoaded) && this.placeholderAlpha <= BitmapDescriptorFactory.HUE_RED) {
                if (this.button.getAlpha() != 1.0f) {
                    this.button.setAlpha(1.0f);
                    return;
                }
                return;
            }
            this.button.setAlpha(1.0f - this.placeholderAlpha);
            this.paint.setColor(Theme.getColor(Theme.key_windowBackgroundGray));
            this.paint.setAlpha((int) (this.placeholderAlpha * 255.0f));
            canvas.drawRoundRect(this.rect, AndroidUtilities.dp(6.0f), AndroidUtilities.dp(6.0f), this.paint);
            if (this.loadingDrawable != null) {
                int color2 = Theme.getColor(Theme.key_windowBackgroundWhiteGrayText7);
                if (this.loadingColor != color2) {
                    Drawable drawable6 = this.loadingDrawable;
                    this.loadingColor = color2;
                    Theme.setDrawableColor(drawable6, color2);
                }
                int iCenterX2 = (int) (this.rect.centerX() - (this.loadingDrawable.getIntrinsicWidth() / 2));
                int iCenterY2 = (int) (this.rect.centerY() - (this.loadingDrawable.getIntrinsicHeight() / 2));
                this.loadingDrawable.setAlpha((int) (this.placeholderAlpha * 255.0f));
                Drawable drawable7 = this.loadingDrawable;
                drawable7.setBounds(iCenterX2, iCenterY2, drawable7.getIntrinsicWidth() + iCenterX2, this.loadingDrawable.getIntrinsicHeight() + iCenterY2);
                this.loadingDrawable.draw(canvas);
            }
            if (this.themeInfo.themeLoaded) {
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                long jMin = Math.min(17L, jElapsedRealtime - this.lastDrawTime);
                this.lastDrawTime = jElapsedRealtime;
                float f3 = this.placeholderAlpha - (jMin / 180.0f);
                this.placeholderAlpha = f3;
                if (f3 < BitmapDescriptorFactory.HUE_RED) {
                    this.placeholderAlpha = BitmapDescriptorFactory.HUE_RED;
                }
                invalidate();
            }
        }

        @Override // android.view.View
        public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            accessibilityNodeInfo.setText(getThemeName());
            accessibilityNodeInfo.setClassName(Button.class.getName());
            accessibilityNodeInfo.setChecked(this.button.isChecked());
            accessibilityNodeInfo.setCheckable(true);
            accessibilityNodeInfo.setEnabled(true);
            if (Build.VERSION.SDK_INT >= 21) {
                accessibilityNodeInfo.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_CLICK);
                accessibilityNodeInfo.addAction(new AccessibilityNodeInfo.AccessibilityAction(32, LocaleController.getString(R.string.AccDescrMoreOptions)));
            }
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp((this.isLast ? 22 : 15) + 76 + (this.isFirst ? 22 : 0)), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(148.0f), 1073741824));
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            Theme.ThemeInfo themeInfo;
            if (this.optionsDrawable == null || (themeInfo = this.themeInfo) == null || !((themeInfo.info == null || themeInfo.themeLoaded) && ThemesHorizontalListCell.this.currentType == 0)) {
                return super.onTouchEvent(motionEvent);
            }
            int action = motionEvent.getAction();
            if (action == 0 || action == 1) {
                float x = motionEvent.getX();
                float y = motionEvent.getY();
                if (x > this.rect.centerX() && y < this.rect.centerY() - AndroidUtilities.dp(10.0f)) {
                    if (action == 0) {
                        this.pressed = true;
                    } else {
                        try {
                            performHapticFeedback(3);
                        } catch (Exception unused) {
                        }
                        ThemesHorizontalListCell.this.showOptionsForTheme(this.themeInfo);
                    }
                }
                if (action == 1) {
                    this.pressed = false;
                }
            }
            return this.pressed;
        }

        public void setAccentState(float f) {
            this.accentState = f;
            this.accentColorChanged = true;
            invalidate();
        }

        public void setTheme(Theme.ThemeInfo themeInfo, boolean z, boolean z2) throws IOException {
            Theme.ThemeInfo themeInfo2;
            TLRPC.TL_theme tL_theme;
            this.themeInfo = themeInfo;
            this.isFirst = z2;
            this.isLast = z;
            this.accentId = themeInfo.currentAccentId;
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.button.getLayoutParams();
            layoutParams.leftMargin = AndroidUtilities.dp(this.isFirst ? 49.0f : 27.0f);
            this.button.setLayoutParams(layoutParams);
            this.placeholderAlpha = BitmapDescriptorFactory.HUE_RED;
            Theme.ThemeInfo themeInfo3 = this.themeInfo;
            if (themeInfo3.pathToFile != null && !themeInfo3.previewParsed) {
                themeInfo3.setPreviewInColor(Theme.getDefaultColor(Theme.key_chat_inBubble));
                this.themeInfo.setPreviewOutColor(Theme.getDefaultColor(Theme.key_chat_outBubble));
                boolean zExists = new File(this.themeInfo.pathToFile).exists();
                if ((!zExists || !parseTheme() || !zExists) && (tL_theme = (themeInfo2 = this.themeInfo).info) != null) {
                    if (tL_theme.document != null) {
                        themeInfo2.themeLoaded = false;
                        this.placeholderAlpha = 1.0f;
                        Drawable drawableMutate = getResources().getDrawable(R.drawable.msg_theme).mutate();
                        this.loadingDrawable = drawableMutate;
                        int color = Theme.getColor(Theme.key_windowBackgroundWhiteGrayText7);
                        this.loadingColor = color;
                        Theme.setDrawableColor(drawableMutate, color);
                        if (!zExists) {
                            String attachFileName = FileLoader.getAttachFileName(this.themeInfo.info.document);
                            if (!ThemesHorizontalListCell.this.loadingThemes.containsKey(attachFileName)) {
                                ThemesHorizontalListCell.this.loadingThemes.put(attachFileName, this.themeInfo);
                                FileLoader fileLoader = FileLoader.getInstance(this.themeInfo.account);
                                TLRPC.TL_theme tL_theme2 = this.themeInfo.info;
                                fileLoader.loadFile(tL_theme2.document, tL_theme2, 1, 1);
                            }
                        }
                    } else {
                        Drawable drawableMutate2 = getResources().getDrawable(R.drawable.preview_custom).mutate();
                        this.loadingDrawable = drawableMutate2;
                        int color2 = Theme.getColor(Theme.key_windowBackgroundWhiteGrayText7);
                        this.loadingColor = color2;
                        Theme.setDrawableColor(drawableMutate2, color2);
                    }
                }
            }
            applyTheme();
        }

        void updateColors(boolean z) {
            int i;
            int i2;
            this.oldInColor = this.inColor;
            this.oldOutColor = this.outColor;
            this.oldBackColor = this.backColor;
            this.oldCheckColor = this.checkColor;
            int i3 = 0;
            Theme.ThemeAccent accent = this.themeInfo.getAccent(false);
            if (accent != null) {
                i3 = accent.accentColor;
                i2 = accent.myMessagesAccentColor;
                if (i2 == 0) {
                    i2 = i3;
                }
                i = (int) accent.backgroundOverrideColor;
                if (i == 0) {
                    i = i3;
                }
            } else {
                i = 0;
                i2 = 0;
            }
            Theme.ThemeInfo themeInfo = this.themeInfo;
            this.inColor = Theme.changeColorAccent(themeInfo, i3, themeInfo.getPreviewInColor());
            Theme.ThemeInfo themeInfo2 = this.themeInfo;
            this.outColor = Theme.changeColorAccent(themeInfo2, i2, themeInfo2.getPreviewOutColor());
            Theme.ThemeInfo themeInfo3 = this.themeInfo;
            this.backColor = Theme.changeColorAccent(themeInfo3, i, themeInfo3.getPreviewBackgroundColor());
            this.checkColor = this.outColor;
            this.accentId = this.themeInfo.currentAccentId;
            ObjectAnimator objectAnimator = this.accentAnimator;
            if (objectAnimator != null) {
                objectAnimator.cancel();
            }
            if (!z) {
                setAccentState(1.0f);
                return;
            }
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, "accentState", BitmapDescriptorFactory.HUE_RED, 1.0f);
            this.accentAnimator = objectAnimatorOfFloat;
            objectAnimatorOfFloat.setDuration(200L);
            this.accentAnimator.start();
        }

        public void updateCurrentThemeCheck() {
            this.button.setChecked(this.themeInfo == (ThemesHorizontalListCell.this.currentType == 1 ? Theme.getCurrentNightTheme() : Theme.getCurrentTheme()), true);
        }
    }

    private class ThemesListAdapter extends RecyclerListView.SelectionAdapter {
        private Context mContext;

        ThemesListAdapter(Context context) {
            this.mContext = context;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            ThemesHorizontalListCell themesHorizontalListCell = ThemesHorizontalListCell.this;
            return themesHorizontalListCell.prevCount = themesHorizontalListCell.defaultThemes.size() + ThemesHorizontalListCell.this.customThemes.size();
        }

        @Override // org.telegram.ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            return false;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) throws IOException {
            ArrayList arrayList;
            int size;
            InnerThemeView innerThemeView = (InnerThemeView) viewHolder.itemView;
            if (i < ThemesHorizontalListCell.this.defaultThemes.size()) {
                arrayList = ThemesHorizontalListCell.this.defaultThemes;
                size = i;
            } else {
                arrayList = ThemesHorizontalListCell.this.customThemes;
                size = i - ThemesHorizontalListCell.this.defaultThemes.size();
            }
            innerThemeView.setTheme((Theme.ThemeInfo) arrayList.get(size), i == getItemCount() - 1, i == 0);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            return new RecyclerListView.Holder(ThemesHorizontalListCell.this.new InnerThemeView(this.mContext));
        }
    }

    public ThemesHorizontalListCell(Context context, BaseFragment baseFragment, int i, ArrayList arrayList, ArrayList arrayList2) {
        super(context);
        this.loadingThemes = new HashMap();
        this.loadingWallpapers = new HashMap();
        this.customThemes = arrayList2;
        this.defaultThemes = arrayList;
        this.currentType = i;
        this.fragment = baseFragment;
        setBackgroundColor(Theme.getColor(i == 2 ? Theme.key_dialogBackground : Theme.key_windowBackgroundWhite));
        setItemAnimator(null);
        setLayoutAnimation(null);
        this.horizontalLayoutManager = new LinearLayoutManager(context) { // from class: org.telegram.ui.Cells.ThemesHorizontalListCell.1
            @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
            public boolean supportsPredictiveItemAnimations() {
                return false;
            }
        };
        setPadding(0, 0, 0, 0);
        setClipToPadding(false);
        this.horizontalLayoutManager.setOrientation(0);
        setLayoutManager(this.horizontalLayoutManager);
        ThemesListAdapter themesListAdapter = new ThemesListAdapter(context);
        this.adapter = themesListAdapter;
        setAdapter(themesListAdapter);
        setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.Cells.ThemesHorizontalListCell$$ExternalSyntheticLambda0
            @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view, int i2) {
                this.f$0.lambda$new$0(view, i2);
            }
        });
        setOnItemLongClickListener(new RecyclerListView.OnItemLongClickListener() { // from class: org.telegram.ui.Cells.ThemesHorizontalListCell$$ExternalSyntheticLambda1
            @Override // org.telegram.ui.Components.RecyclerListView.OnItemLongClickListener
            public final boolean onItemClick(View view, int i2) {
                return this.f$0.lambda$new$1(view, i2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: checkVisibleTheme, reason: merged with bridge method [inline-methods] */
    public void lambda$didReceivedNotification$2(Theme.ThemeInfo themeInfo) throws IOException {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt instanceof InnerThemeView) {
                InnerThemeView innerThemeView = (InnerThemeView) childAt;
                if (innerThemeView.themeInfo == themeInfo && innerThemeView.parseTheme()) {
                    innerThemeView.themeInfo.themeLoaded = true;
                    innerThemeView.applyTheme();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$didReceivedNotification$3(final Theme.ThemeInfo themeInfo, File file) {
        themeInfo.badWallpaper = !themeInfo.createBackground(file, themeInfo.pathToWallpaper);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Cells.ThemesHorizontalListCell$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() throws IOException {
                this.f$0.lambda$didReceivedNotification$2(themeInfo);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(View view, int i) {
        selectTheme(((InnerThemeView) view).themeInfo);
        int left = view.getLeft();
        int right = view.getRight();
        if (left < 0) {
            smoothScrollBy(left - AndroidUtilities.dp(8.0f), 0);
        } else if (right > getMeasuredWidth()) {
            smoothScrollBy(right - getMeasuredWidth(), 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$new$1(View view, int i) {
        showOptionsForTheme(((InnerThemeView) view).themeInfo);
        return true;
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) throws IOException {
        if (i != NotificationCenter.fileLoaded) {
            if (i == NotificationCenter.fileLoadFailed) {
                this.loadingThemes.remove((String) objArr[0]);
                return;
            }
            return;
        }
        String str = (String) objArr[0];
        final File file = (File) objArr[1];
        final Theme.ThemeInfo themeInfo = (Theme.ThemeInfo) this.loadingThemes.get(str);
        if (themeInfo != null) {
            this.loadingThemes.remove(str);
            if (this.loadingWallpapers.remove(themeInfo) != null) {
                Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.Cells.ThemesHorizontalListCell$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$didReceivedNotification$3(themeInfo, file);
                    }
                });
            } else {
                lambda$didReceivedNotification$2(themeInfo);
            }
        }
    }

    public void notifyDataSetChanged(int i) {
        if (this.prevCount == this.adapter.getItemCount()) {
            return;
        }
        this.adapter.notifyDataSetChanged();
        if (this.prevThemeInfo != (this.currentType == 1 ? Theme.getCurrentNightTheme() : Theme.getCurrentTheme())) {
            scrollToCurrentTheme(i, false);
        }
    }

    @Override // org.telegram.ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        for (int i = 0; i < 4; i++) {
            NotificationCenter.getInstance(i).addObserver(this, NotificationCenter.fileLoaded);
            NotificationCenter.getInstance(i).addObserver(this, NotificationCenter.fileLoadFailed);
        }
    }

    @Override // org.telegram.ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        for (int i = 0; i < 4; i++) {
            NotificationCenter.getInstance(i).removeObserver(this, NotificationCenter.fileLoaded);
            NotificationCenter.getInstance(i).removeObserver(this, NotificationCenter.fileLoadFailed);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.drawDivider) {
            canvas.drawLine(LocaleController.isRTL ? BitmapDescriptorFactory.HUE_RED : AndroidUtilities.dp(20.0f), getMeasuredHeight() - 1, getMeasuredWidth() - (LocaleController.isRTL ? AndroidUtilities.dp(20.0f) : 0), getMeasuredHeight() - 1, Theme.dividerPaint);
        }
    }

    @Override // org.telegram.ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (getParent() != null && getParent().getParent() != null) {
            getParent().getParent().requestDisallowInterceptTouchEvent(canScrollHorizontally(-1));
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    public void scrollToCurrentTheme(int i, boolean z) {
        View view;
        if (i == 0 && (view = (View) getParent()) != null) {
            i = view.getMeasuredWidth();
        }
        if (i == 0) {
            return;
        }
        Theme.ThemeInfo currentNightTheme = this.currentType == 1 ? Theme.getCurrentNightTheme() : Theme.getCurrentTheme();
        this.prevThemeInfo = currentNightTheme;
        int iIndexOf = this.defaultThemes.indexOf(currentNightTheme);
        if (iIndexOf >= 0 || (iIndexOf = this.customThemes.indexOf(this.prevThemeInfo) + this.defaultThemes.size()) >= 0) {
            if (z) {
                smoothScrollToPosition(iIndexOf);
            } else {
                this.horizontalLayoutManager.scrollToPositionWithOffset(iIndexOf, (i - AndroidUtilities.dp(76.0f)) / 2);
            }
        }
    }

    public void selectTheme(Theme.ThemeInfo themeInfo) {
        TLRPC.TL_theme tL_theme = themeInfo.info;
        if (tL_theme != null) {
            if (!themeInfo.themeLoaded) {
                return;
            }
            if (tL_theme.document == null) {
                BaseFragment baseFragment = this.fragment;
                if (baseFragment != null) {
                    baseFragment.presentFragment(new ThemeSetUrlActivity(themeInfo, null, true));
                    return;
                }
                return;
            }
        }
        if (!TextUtils.isEmpty(themeInfo.assetName)) {
            Theme.PatternsLoader.createLoader(false);
        }
        SharedPreferences.Editor editorEdit = ApplicationLoader.applicationContext.getSharedPreferences("themeconfig", 0).edit();
        editorEdit.putString((this.currentType == 1 || themeInfo.isDark()) ? "lastDarkTheme" : "lastDayTheme", themeInfo.getKey());
        editorEdit.commit();
        if (this.currentType == 1) {
            if (themeInfo == Theme.getCurrentNightTheme()) {
                return;
            } else {
                Theme.setCurrentNightTheme(themeInfo);
            }
        } else if (themeInfo == Theme.getCurrentTheme()) {
            return;
        } else {
            NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.needSetDayNightTheme, themeInfo, Boolean.FALSE, null, -1);
        }
        updateRows();
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt instanceof InnerThemeView) {
                ((InnerThemeView) childAt).updateCurrentThemeCheck();
            }
        }
        EmojiThemes.saveCustomTheme(themeInfo, themeInfo.currentAccentId);
        if (this.currentType != 1) {
            Theme.turnOffAutoNight(this.fragment);
        }
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        super.setBackgroundColor(i);
        invalidateViews();
    }

    public void setDrawDivider(boolean z) {
        this.drawDivider = z;
    }

    protected void showOptionsForTheme(Theme.ThemeInfo themeInfo) {
    }

    protected abstract void updateRows();
}
