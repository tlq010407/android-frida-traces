package org.telegram.ui.Cells;

import android.animation.TimeInterpolator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.transition.ChangeBounds;
import android.transition.Fade;
import android.transition.TransitionManager;
import android.transition.TransitionSet;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import java.io.File;
import java.util.Date;
import java.util.Locale;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.DownloadController;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.ImageLoader;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.R;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.AnimatedEmojiSpan;
import org.telegram.ui.Components.BackupImageView;
import org.telegram.ui.Components.CheckBox2;
import org.telegram.ui.Components.CombinedDrawable;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.DotDividerSpan;
import org.telegram.ui.Components.FlickerLoadingView;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.LineProgressView;
import org.telegram.ui.Components.RLottieDrawable;
import org.telegram.ui.Components.RLottieImageView;
import org.telegram.ui.FilteredSearchView;
import org.webrtc.MediaStreamTrack;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes4.dex */
public class SharedDocumentCell extends FrameLayout implements DownloadController.FileDownloadProgressListener {
    private int TAG;
    private CharSequence caption;
    private TextView captionTextView;
    private CheckBox2 checkBox;
    private int currentAccount;
    private AnimatedEmojiSpan.TextViewEmojis dateTextView;
    private SpannableStringBuilder dotSpan;
    private long downloadedSize;
    private boolean drawDownloadIcon;
    float enterAlpha;
    private TextView extTextView;
    FlickerLoadingView globalGradientView;
    boolean ignoreRequestLayout;
    private boolean loaded;
    private boolean loading;
    private MessageObject message;
    private TextView nameTextView;
    private boolean needDivider;
    private ImageView placeholderImageView;
    private LineProgressView progressView;
    private final Theme.ResourcesProvider resourcesProvider;
    public TextView rightDateTextView;
    boolean showReorderIcon;
    float showReorderIconProgress;
    private RLottieDrawable statusDrawable;
    private RLottieImageView statusImageView;
    private BackupImageView thumbImageView;
    private int viewType;

    public SharedDocumentCell(Context context, int i) {
        this(context, i, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:132:0x0312 A[PHI: r5 r11 r14 r15
      0x0312: PHI (r5v27 android.view.View) = (r5v15 android.view.View), (r5v41 android.view.View) binds: [B:131:0x0310, B:87:0x0204] A[DONT_GENERATE, DONT_INLINE]
      0x0312: PHI (r11v15 int) = (r11v10 int), (r11v32 int) binds: [B:131:0x0310, B:87:0x0204] A[DONT_GENERATE, DONT_INLINE]
      0x0312: PHI (r14v10 float) = (r14v1 float), (r14v34 float) binds: [B:131:0x0310, B:87:0x0204] A[DONT_GENERATE, DONT_INLINE]
      0x0312: PHI (r15v4 float) = (r15v0 float), (r15v18 float) binds: [B:131:0x0310, B:87:0x0204] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:133:0x031b A[PHI: r5 r11 r14 r15
      0x031b: PHI (r5v37 android.view.View) = (r5v15 android.view.View), (r5v41 android.view.View) binds: [B:131:0x0310, B:87:0x0204] A[DONT_GENERATE, DONT_INLINE]
      0x031b: PHI (r11v29 int) = (r11v10 int), (r11v32 int) binds: [B:131:0x0310, B:87:0x0204] A[DONT_GENERATE, DONT_INLINE]
      0x031b: PHI (r14v33 float) = (r14v1 float), (r14v34 float) binds: [B:131:0x0310, B:87:0x0204] A[DONT_GENERATE, DONT_INLINE]
      0x031b: PHI (r15v17 float) = (r15v0 float), (r15v18 float) binds: [B:131:0x0310, B:87:0x0204] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:137:0x0375  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x0388  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x039a A[PHI: r14 r15 r20
      0x039a: PHI (r14v16 int) = (r14v14 int), (r14v31 int) binds: [B:155:0x0398, B:145:0x0385] A[DONT_GENERATE, DONT_INLINE]
      0x039a: PHI (r15v8 float) = (r15v6 float), (r15v15 float) binds: [B:155:0x0398, B:145:0x0385] A[DONT_GENERATE, DONT_INLINE]
      0x039a: PHI (r20v16 float) = (r20v15 float), (r20v21 float) binds: [B:155:0x0398, B:145:0x0385] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:157:0x03a3 A[PHI: r14 r15 r20
      0x03a3: PHI (r14v28 int) = (r14v14 int), (r14v31 int) binds: [B:155:0x0398, B:145:0x0385] A[DONT_GENERATE, DONT_INLINE]
      0x03a3: PHI (r15v13 float) = (r15v6 float), (r15v15 float) binds: [B:155:0x0398, B:145:0x0385] A[DONT_GENERATE, DONT_INLINE]
      0x03a3: PHI (r20v20 float) = (r20v15 float), (r20v21 float) binds: [B:155:0x0398, B:145:0x0385] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:160:0x03e2  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x03e4  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x03fa  */
    /* JADX WARN: Removed duplicated region for block: B:174:0x040d  */
    /* JADX WARN: Removed duplicated region for block: B:183:0x041f A[PHI: r10 r11 r14
      0x041f: PHI (r10v13 int) = (r10v11 int), (r10v17 int) binds: [B:182:0x041d, B:172:0x040a] A[DONT_GENERATE, DONT_INLINE]
      0x041f: PHI (r11v24 float) = (r11v22 float), (r11v27 float) binds: [B:182:0x041d, B:172:0x040a] A[DONT_GENERATE, DONT_INLINE]
      0x041f: PHI (r14v18 float) = (r14v17 float), (r14v27 float) binds: [B:182:0x041d, B:172:0x040a] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:184:0x0428 A[PHI: r10 r11 r14
      0x0428: PHI (r10v14 int) = (r10v11 int), (r10v17 int) binds: [B:182:0x041d, B:172:0x040a] A[DONT_GENERATE, DONT_INLINE]
      0x0428: PHI (r11v25 float) = (r11v22 float), (r11v27 float) binds: [B:182:0x041d, B:172:0x040a] A[DONT_GENERATE, DONT_INLINE]
      0x0428: PHI (r14v26 float) = (r14v17 float), (r14v27 float) binds: [B:182:0x041d, B:172:0x040a] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:187:0x0451  */
    /* JADX WARN: Removed duplicated region for block: B:188:0x0453  */
    /* JADX WARN: Removed duplicated region for block: B:191:0x0458  */
    /* JADX WARN: Removed duplicated region for block: B:192:0x045b  */
    /* JADX WARN: Removed duplicated region for block: B:194:0x045f  */
    /* JADX WARN: Removed duplicated region for block: B:195:0x0462  */
    /* JADX WARN: Removed duplicated region for block: B:198:0x049a  */
    /* JADX WARN: Removed duplicated region for block: B:208:0x04b5  */
    /* JADX WARN: Removed duplicated region for block: B:222:0x04e8  */
    /* JADX WARN: Removed duplicated region for block: B:224:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0117 A[PHI: r21 r22 r23
      0x0117: PHI (r21v7 int) = (r21v5 int), (r21v26 int) binds: [B:46:0x010e, B:35:0x00ef] A[DONT_GENERATE, DONT_INLINE]
      0x0117: PHI (r22v6 float) = (r22v4 float), (r22v29 float) binds: [B:46:0x010e, B:35:0x00ef] A[DONT_GENERATE, DONT_INLINE]
      0x0117: PHI (r23v5 float) = (r23v3 float), (r23v32 float) binds: [B:46:0x010e, B:35:0x00ef] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public SharedDocumentCell(Context context, int i, Theme.ResourcesProvider resourcesProvider) {
        int i2;
        float f;
        int i3;
        float f2;
        float f3;
        int i4;
        float f4;
        int i5;
        float f5;
        float f6;
        float f7;
        int i6;
        float f8;
        float f9;
        float f10;
        float f11;
        float f12;
        int i7;
        float f13;
        float f14;
        float f15;
        int i8;
        int i9;
        float f16;
        int i10;
        float f17;
        float f18;
        float f19;
        View view;
        int i11;
        float f20;
        float f21;
        TextView textView;
        int i12;
        int i13;
        int i14;
        int i15;
        float f22;
        int i16;
        int i17;
        float f23;
        float f24;
        float f25;
        int i18;
        float f26;
        float f27;
        int i19;
        float f28;
        float f29;
        float f30;
        int i20;
        float f31;
        float f32;
        int i21;
        float f33;
        float f34;
        float f35;
        int i22;
        float f36;
        float f37;
        int i23;
        float f38;
        float f39;
        float f40;
        super(context);
        this.drawDownloadIcon = true;
        int i24 = UserConfig.selectedAccount;
        this.currentAccount = i24;
        this.enterAlpha = 1.0f;
        this.resourcesProvider = resourcesProvider;
        this.viewType = i;
        this.TAG = DownloadController.getInstance(i24).generateObserverTag();
        ImageView imageView = new ImageView(context);
        this.placeholderImageView = imageView;
        boolean z = LocaleController.isRTL;
        if (i == 1) {
            i2 = (z ? 5 : 3) | 48;
            f = z ? BitmapDescriptorFactory.HUE_RED : 15.0f;
            if (z) {
                i4 = i2;
                f4 = f;
                i5 = 42;
                f5 = 42.0f;
                f6 = 12.0f;
                f7 = 15.0f;
            } else {
                i3 = 42;
                f2 = 42.0f;
                f3 = 12.0f;
                i5 = i3;
                i4 = i2;
                f5 = f2;
                f4 = f;
                f6 = f3;
                f7 = BitmapDescriptorFactory.HUE_RED;
            }
        } else {
            i2 = (z ? 5 : 3) | 48;
            f = z ? BitmapDescriptorFactory.HUE_RED : 12.0f;
            if (z) {
                i4 = i2;
                f4 = f;
                i5 = 40;
                f5 = 40.0f;
                f6 = 8.0f;
                f7 = 12.0f;
            } else {
                i3 = 40;
                f2 = 40.0f;
                f3 = 8.0f;
                i5 = i3;
                i4 = i2;
                f5 = f2;
                f4 = f;
                f6 = f3;
                f7 = BitmapDescriptorFactory.HUE_RED;
            }
        }
        addView(imageView, LayoutHelper.createFrame(i5, f5, i4, f4, f6, f7, BitmapDescriptorFactory.HUE_RED));
        TextView textView2 = new TextView(context);
        this.extTextView = textView2;
        textView2.setTextColor(getThemedColor(Theme.key_files_iconText));
        this.extTextView.setTextSize(1, 14.0f);
        this.extTextView.setTypeface(AndroidUtilities.bold());
        this.extTextView.setLines(1);
        this.extTextView.setMaxLines(1);
        this.extTextView.setSingleLine(true);
        this.extTextView.setGravity(17);
        TextView textView3 = this.extTextView;
        TextUtils.TruncateAt truncateAt = TextUtils.TruncateAt.END;
        textView3.setEllipsize(truncateAt);
        this.extTextView.setImportantForAccessibility(2);
        View view2 = this.extTextView;
        boolean z2 = LocaleController.isRTL;
        if (i == 1) {
            i6 = (z2 ? 5 : 3) | 48;
            f8 = z2 ? BitmapDescriptorFactory.HUE_RED : 20.0f;
            f9 = 28.0f;
            if (z2) {
                f10 = f8;
                f11 = 28.0f;
                f12 = 20.0f;
            } else {
                f11 = f9;
                f12 = BitmapDescriptorFactory.HUE_RED;
                f10 = f8;
            }
        } else {
            i6 = (z2 ? 5 : 3) | 48;
            f8 = z2 ? BitmapDescriptorFactory.HUE_RED : 16.0f;
            f9 = 22.0f;
            if (z2) {
                f10 = f8;
                f11 = 22.0f;
                f12 = 16.0f;
            }
        }
        addView(view2, LayoutHelper.createFrame(32, -2.0f, i6, f10, f11, f12, BitmapDescriptorFactory.HUE_RED));
        BackupImageView backupImageView = new BackupImageView(context) { // from class: org.telegram.ui.Cells.SharedDocumentCell.1
            @Override // org.telegram.ui.Components.BackupImageView, android.view.View
            protected void onDraw(Canvas canvas) {
                float currentAlpha = SharedDocumentCell.this.thumbImageView.getImageReceiver().hasBitmapImage() ? 1.0f - SharedDocumentCell.this.thumbImageView.getImageReceiver().getCurrentAlpha() : 1.0f;
                SharedDocumentCell.this.extTextView.setAlpha(currentAlpha);
                SharedDocumentCell.this.placeholderImageView.setAlpha(currentAlpha);
                super.onDraw(canvas);
            }
        };
        this.thumbImageView = backupImageView;
        backupImageView.setRoundRadius(AndroidUtilities.dp(4.0f));
        View view3 = this.thumbImageView;
        boolean z3 = LocaleController.isRTL;
        if (i == 1) {
            int i25 = (z3 ? 5 : 3) | 48;
            float f41 = z3 ? BitmapDescriptorFactory.HUE_RED : 16.0f;
            if (z3) {
                i9 = i25;
                f16 = f41;
                i10 = 42;
                f17 = 42.0f;
                f18 = 12.0f;
                f19 = 16.0f;
            } else {
                i7 = i25;
                f13 = f41;
                f14 = 12.0f;
                f15 = 42.0f;
                i8 = 42;
                f18 = f14;
                f17 = f15;
                i10 = i8;
                i9 = i7;
                f16 = f13;
                f19 = BitmapDescriptorFactory.HUE_RED;
            }
        } else {
            i7 = (z3 ? 5 : 3) | 48;
            f13 = z3 ? BitmapDescriptorFactory.HUE_RED : 12.0f;
            if (z3) {
                i9 = i7;
                f16 = f13;
                i10 = 40;
                f17 = 40.0f;
                f18 = 8.0f;
                f19 = 12.0f;
            } else {
                f14 = 8.0f;
                f15 = 40.0f;
                i8 = 40;
                f18 = f14;
                f17 = f15;
                i10 = i8;
                i9 = i7;
                f16 = f13;
                f19 = BitmapDescriptorFactory.HUE_RED;
            }
        }
        addView(view3, LayoutHelper.createFrame(i10, f17, i9, f16, f18, f19, BitmapDescriptorFactory.HUE_RED));
        TextView textView4 = new TextView(context);
        this.nameTextView = textView4;
        int i26 = Theme.key_windowBackgroundWhiteBlackText;
        textView4.setTextColor(getThemedColor(i26));
        this.nameTextView.setTextSize(1, 16.0f);
        this.nameTextView.setTypeface(AndroidUtilities.bold());
        this.nameTextView.setEllipsize(truncateAt);
        this.nameTextView.setGravity((LocaleController.isRTL ? 5 : 3) | 16);
        if (i == 1) {
            this.nameTextView.setLines(1);
            this.nameTextView.setMaxLines(1);
            this.nameTextView.setSingleLine(true);
            view = this.nameTextView;
            boolean z4 = LocaleController.isRTL;
            i11 = (z4 ? 5 : 3) | 48;
            f20 = z4 ? 8.0f : 72.0f;
            f21 = 9.0f;
            if (z4) {
                i17 = i11;
                f23 = f20;
                f24 = f21;
                f25 = 72.0f;
            } else {
                i17 = i11;
                f23 = f20;
                f24 = f21;
                f25 = 8.0f;
            }
        } else {
            if (i == 2) {
                LinearLayout linearLayout = new LinearLayout(context);
                linearLayout.setOrientation(0);
                boolean z5 = LocaleController.isRTL;
                addView(linearLayout, LayoutHelper.createFrame(-1, -2.0f, (z5 ? 5 : 3) | 48, z5 ? 16.0f : 72.0f, 5.0f, z5 ? 72.0f : 16.0f, BitmapDescriptorFactory.HUE_RED));
                TextView textView5 = new TextView(context);
                this.rightDateTextView = textView5;
                textView5.setTextColor(getThemedColor(Theme.key_windowBackgroundWhiteGrayText3));
                this.rightDateTextView.setTextSize(1, 14.0f);
                if (LocaleController.isRTL) {
                    linearLayout.addView(this.rightDateTextView, LayoutHelper.createLinear(-2, -2, BitmapDescriptorFactory.HUE_RED));
                    textView = this.nameTextView;
                    i12 = 4;
                    i13 = 0;
                    i14 = -2;
                    i15 = -2;
                    f22 = 1.0f;
                    i16 = 0;
                } else {
                    linearLayout.addView(this.nameTextView, LayoutHelper.createLinear(-2, -2, 1.0f));
                    textView = this.rightDateTextView;
                    i12 = 0;
                    i13 = 0;
                    i14 = -2;
                    i15 = -2;
                    f22 = BitmapDescriptorFactory.HUE_RED;
                    i16 = 4;
                }
                linearLayout.addView(textView, LayoutHelper.createLinear(i14, i15, f22, i16, 0, i12, i13));
                this.nameTextView.setMaxLines(2);
                TextView textView6 = new TextView(context);
                this.captionTextView = textView6;
                textView6.setTextColor(getThemedColor(i26));
                this.captionTextView.setLines(1);
                this.captionTextView.setMaxLines(1);
                this.captionTextView.setSingleLine(true);
                this.captionTextView.setEllipsize(truncateAt);
                this.captionTextView.setGravity((LocaleController.isRTL ? 5 : 3) | 16);
                this.captionTextView.setTextSize(1, 13.0f);
                View view4 = this.captionTextView;
                boolean z6 = LocaleController.isRTL;
                addView(view4, LayoutHelper.createFrame(-1, -2.0f, (z6 ? 5 : 3) | 48, z6 ? 8.0f : 72.0f, 30.0f, z6 ? 72.0f : 8.0f, BitmapDescriptorFactory.HUE_RED));
                this.captionTextView.setVisibility(8);
                this.statusDrawable = new RLottieDrawable(R.raw.download_arrow, "download_arrow", AndroidUtilities.dp(14.0f), AndroidUtilities.dp(14.0f), true, null);
                RLottieImageView rLottieImageView = new RLottieImageView(context);
                this.statusImageView = rLottieImageView;
                rLottieImageView.setAnimation(this.statusDrawable);
                this.statusImageView.setVisibility(4);
                RLottieImageView rLottieImageView2 = this.statusImageView;
                int i27 = Theme.key_sharedMedia_startStopLoadIcon;
                rLottieImageView2.setColorFilter(new PorterDuffColorFilter(getThemedColor(i27), PorterDuff.Mode.MULTIPLY));
                View view5 = this.statusImageView;
                boolean z7 = LocaleController.isRTL;
                if (i != 1) {
                    i18 = (z7 ? 5 : 3) | 48;
                    f26 = z7 ? 8.0f : 70.0f;
                    f27 = 37.0f;
                    if (z7) {
                        i19 = i18;
                        f28 = f26;
                        f29 = f27;
                        f30 = 72.0f;
                    } else {
                        i19 = i18;
                        f28 = f26;
                        f29 = f27;
                        f30 = 8.0f;
                    }
                } else {
                    i18 = (z7 ? 5 : 3) | 48;
                    f26 = z7 ? 8.0f : 70.0f;
                    f27 = 33.0f;
                    if (z7) {
                    }
                }
                addView(view5, LayoutHelper.createFrame(14, 14.0f, i19, f28, f29, f30, BitmapDescriptorFactory.HUE_RED));
                AnimatedEmojiSpan.TextViewEmojis textViewEmojis = new AnimatedEmojiSpan.TextViewEmojis(context);
                this.dateTextView = textViewEmojis;
                textViewEmojis.setTextColor(getThemedColor(Theme.key_windowBackgroundWhiteGrayText3));
                this.dateTextView.setLines(1);
                this.dateTextView.setMaxLines(1);
                this.dateTextView.setSingleLine(true);
                this.dateTextView.setEllipsize(truncateAt);
                this.dateTextView.setGravity((!LocaleController.isRTL ? 5 : 3) | 16);
                NotificationCenter.listenEmojiLoading(this.dateTextView);
                this.dateTextView.setTextSize(1, 13.0f);
                View view6 = this.dateTextView;
                boolean z8 = LocaleController.isRTL;
                if (i != 1) {
                    i20 = (z8 ? 5 : 3) | 48;
                    f31 = z8 ? 8.0f : 72.0f;
                    f32 = 34.0f;
                    if (z8) {
                        i21 = i20;
                        f33 = f31;
                        f34 = f32;
                        f35 = 72.0f;
                    } else {
                        i21 = i20;
                        f33 = f31;
                        f34 = f32;
                        f35 = 8.0f;
                    }
                } else {
                    i20 = (z8 ? 5 : 3) | 48;
                    f31 = z8 ? 8.0f : 72.0f;
                    f32 = 30.0f;
                    if (z8) {
                    }
                }
                addView(view6, LayoutHelper.createFrame(-1, -2.0f, i21, f33, f34, f35, BitmapDescriptorFactory.HUE_RED));
                LineProgressView lineProgressView = new LineProgressView(context);
                this.progressView = lineProgressView;
                lineProgressView.setProgressColor(getThemedColor(i27));
                View view7 = this.progressView;
                boolean z9 = LocaleController.isRTL;
                addView(view7, LayoutHelper.createFrame(-1, 2.0f, (!z9 ? 5 : 3) | 48, !z9 ? BitmapDescriptorFactory.HUE_RED : 72.0f, 54.0f, !z9 ? 72.0f : BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED));
                CheckBox2 checkBox2 = new CheckBox2(context, 21, resourcesProvider);
                this.checkBox = checkBox2;
                checkBox2.setVisibility(4);
                this.checkBox.setColor(-1, Theme.key_windowBackgroundWhite, Theme.key_checkboxCheck);
                this.checkBox.setDrawUnchecked(false);
                this.checkBox.setDrawBackgroundAsArc(2);
                View view8 = this.checkBox;
                boolean z10 = LocaleController.isRTL;
                if (i != 1) {
                    i22 = (z10 ? 5 : 3) | 48;
                    f36 = z10 ? BitmapDescriptorFactory.HUE_RED : 38.0f;
                    f37 = 36.0f;
                    if (z10) {
                        i23 = i22;
                        f38 = f36;
                        f39 = 36.0f;
                        f40 = 38.0f;
                    } else {
                        i23 = i22;
                        f38 = f36;
                        f39 = f37;
                        f40 = BitmapDescriptorFactory.HUE_RED;
                    }
                } else {
                    int i28 = (z10 ? 5 : 3) | 48;
                    float f42 = z10 ? BitmapDescriptorFactory.HUE_RED : 33.0f;
                    if (z10) {
                        i23 = i28;
                        f38 = f42;
                        f39 = 28.0f;
                        f40 = 33.0f;
                    } else {
                        i22 = i28;
                        f36 = f42;
                        f37 = 28.0f;
                        i23 = i22;
                        f38 = f36;
                        f39 = f37;
                        f40 = BitmapDescriptorFactory.HUE_RED;
                    }
                }
                addView(view8, LayoutHelper.createFrame(24, 24.0f, i23, f38, f39, f40, BitmapDescriptorFactory.HUE_RED));
                if (i != 2) {
                    SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(".");
                    this.dotSpan = spannableStringBuilder;
                    spannableStringBuilder.setSpan(new DotDividerSpan(), 0, 1, 0);
                    return;
                }
                return;
            }
            this.nameTextView.setMaxLines(1);
            view = this.nameTextView;
            boolean z11 = LocaleController.isRTL;
            i11 = (z11 ? 5 : 3) | 48;
            f20 = z11 ? 8.0f : 72.0f;
            f21 = 5.0f;
            if (z11) {
            }
        }
        addView(view, LayoutHelper.createFrame(-1, -2.0f, i17, f23, f24, f25, BitmapDescriptorFactory.HUE_RED));
        this.statusDrawable = new RLottieDrawable(R.raw.download_arrow, "download_arrow", AndroidUtilities.dp(14.0f), AndroidUtilities.dp(14.0f), true, null);
        RLottieImageView rLottieImageView3 = new RLottieImageView(context);
        this.statusImageView = rLottieImageView3;
        rLottieImageView3.setAnimation(this.statusDrawable);
        this.statusImageView.setVisibility(4);
        RLottieImageView rLottieImageView22 = this.statusImageView;
        int i272 = Theme.key_sharedMedia_startStopLoadIcon;
        rLottieImageView22.setColorFilter(new PorterDuffColorFilter(getThemedColor(i272), PorterDuff.Mode.MULTIPLY));
        View view52 = this.statusImageView;
        boolean z72 = LocaleController.isRTL;
        if (i != 1) {
        }
        addView(view52, LayoutHelper.createFrame(14, 14.0f, i19, f28, f29, f30, BitmapDescriptorFactory.HUE_RED));
        AnimatedEmojiSpan.TextViewEmojis textViewEmojis2 = new AnimatedEmojiSpan.TextViewEmojis(context);
        this.dateTextView = textViewEmojis2;
        textViewEmojis2.setTextColor(getThemedColor(Theme.key_windowBackgroundWhiteGrayText3));
        this.dateTextView.setLines(1);
        this.dateTextView.setMaxLines(1);
        this.dateTextView.setSingleLine(true);
        this.dateTextView.setEllipsize(truncateAt);
        this.dateTextView.setGravity((!LocaleController.isRTL ? 5 : 3) | 16);
        NotificationCenter.listenEmojiLoading(this.dateTextView);
        this.dateTextView.setTextSize(1, 13.0f);
        View view62 = this.dateTextView;
        boolean z82 = LocaleController.isRTL;
        if (i != 1) {
        }
        addView(view62, LayoutHelper.createFrame(-1, -2.0f, i21, f33, f34, f35, BitmapDescriptorFactory.HUE_RED));
        LineProgressView lineProgressView2 = new LineProgressView(context);
        this.progressView = lineProgressView2;
        lineProgressView2.setProgressColor(getThemedColor(i272));
        View view72 = this.progressView;
        boolean z92 = LocaleController.isRTL;
        addView(view72, LayoutHelper.createFrame(-1, 2.0f, (!z92 ? 5 : 3) | 48, !z92 ? BitmapDescriptorFactory.HUE_RED : 72.0f, 54.0f, !z92 ? 72.0f : BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED));
        CheckBox2 checkBox22 = new CheckBox2(context, 21, resourcesProvider);
        this.checkBox = checkBox22;
        checkBox22.setVisibility(4);
        this.checkBox.setColor(-1, Theme.key_windowBackgroundWhite, Theme.key_checkboxCheck);
        this.checkBox.setDrawUnchecked(false);
        this.checkBox.setDrawBackgroundAsArc(2);
        View view82 = this.checkBox;
        boolean z102 = LocaleController.isRTL;
        if (i != 1) {
        }
        addView(view82, LayoutHelper.createFrame(24, 24.0f, i23, f38, f39, f40, BitmapDescriptorFactory.HUE_RED));
        if (i != 2) {
        }
    }

    private void drawDivider(Canvas canvas) {
        if (this.needDivider) {
            canvas.drawLine(AndroidUtilities.dp(72.0f), getHeight() - 1, getWidth() - getPaddingRight(), getHeight() - 1, Theme.getThemePaint("paintDivider", this.resourcesProvider));
        }
    }

    private int getThemedColor(int i) {
        return Theme.getColor(i, this.resourcesProvider);
    }

    private void updateDateView() {
        MessageObject messageObject = this.message;
        if (messageObject == null || messageObject.getDocument() == null) {
            return;
        }
        MessageObject messageObject2 = this.message;
        long j = messageObject2.messageOwner.date * 1000;
        long j2 = this.downloadedSize;
        String fileSize = j2 == 0 ? AndroidUtilities.formatFileSize(messageObject2.getDocument().size) : String.format(Locale.ENGLISH, "%s / %s", AndroidUtilities.formatFileSize(j2), AndroidUtilities.formatFileSize(this.message.getDocument().size));
        if (this.viewType != 2) {
            this.dateTextView.setText(String.format("%s, %s", fileSize, LocaleController.formatString("formatDateAtTime", R.string.formatDateAtTime, LocaleController.getInstance().getFormatterYear().format(new Date(j)), LocaleController.getInstance().getFormatterDay().format(new Date(j)))));
        } else {
            this.dateTextView.setText(new SpannableStringBuilder().append((CharSequence) fileSize).append(' ').append((CharSequence) this.dotSpan).append(' ').append(FilteredSearchView.createFromInfoString(this.message, true, 2, this.dateTextView.getPaint())));
            this.rightDateTextView.setText(LocaleController.stringForMessageListDate(this.message.messageOwner.date));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x007f  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected void dispatchDraw(Canvas canvas) {
        if (this.enterAlpha == 1.0f || this.globalGradientView == null) {
            super.dispatchDraw(canvas);
            drawDivider(canvas);
        } else {
            canvas.saveLayerAlpha(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), getMeasuredHeight(), (int) ((1.0f - this.enterAlpha) * 255.0f), 31);
            this.globalGradientView.setViewType(3);
            this.globalGradientView.updateColors();
            this.globalGradientView.updateGradient();
            this.globalGradientView.draw(canvas);
            canvas.restore();
            canvas.saveLayerAlpha(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), getMeasuredHeight(), (int) (this.enterAlpha * 255.0f), 31);
            super.dispatchDraw(canvas);
            drawDivider(canvas);
            canvas.restore();
        }
        boolean z = this.showReorderIcon;
        if (z || this.showReorderIconProgress != BitmapDescriptorFactory.HUE_RED) {
            if (z) {
                float f = this.showReorderIconProgress;
                if (f != 1.0f) {
                    this.showReorderIconProgress = f + 0.10666667f;
                } else if (!z) {
                    float f2 = this.showReorderIconProgress;
                    if (f2 != BitmapDescriptorFactory.HUE_RED) {
                        this.showReorderIconProgress = f2 - 0.10666667f;
                    }
                }
                invalidate();
            }
            this.showReorderIconProgress = Utilities.clamp(this.showReorderIconProgress, 1.0f, BitmapDescriptorFactory.HUE_RED);
            int measuredWidth = (getMeasuredWidth() - AndroidUtilities.dp(12.0f)) - Theme.dialogs_reorderDrawable.getIntrinsicWidth();
            int measuredHeight = (getMeasuredHeight() - Theme.dialogs_reorderDrawable.getIntrinsicHeight()) >> 1;
            canvas.save();
            float f3 = this.showReorderIconProgress;
            canvas.scale(f3, f3, measuredWidth + (Theme.dialogs_reorderDrawable.getIntrinsicWidth() / 2.0f), measuredHeight + (Theme.dialogs_reorderDrawable.getIntrinsicHeight() / 2.0f));
            Drawable drawable = Theme.dialogs_reorderDrawable;
            drawable.setBounds(measuredWidth, measuredHeight, drawable.getIntrinsicWidth() + measuredWidth, Theme.dialogs_reorderDrawable.getIntrinsicHeight() + measuredHeight);
            Theme.dialogs_reorderDrawable.draw(canvas);
            canvas.restore();
        }
    }

    public BackupImageView getImageView() {
        return this.thumbImageView;
    }

    public MessageObject getMessage() {
        return this.message;
    }

    @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
    public int getObserverTag() {
        return this.TAG;
    }

    public boolean isLoaded() {
        return this.loaded;
    }

    public boolean isLoading() {
        return this.loading;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.progressView.getVisibility() == 0) {
            updateFileExistIcon(false);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        DownloadController.getInstance(this.currentAccount).removeLoadingFileObserver(this);
    }

    @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
    public void onFailedDownload(String str, boolean z) {
        updateFileExistIcon(true);
        this.downloadedSize = 0L;
        updateDateView();
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        if (this.checkBox.isChecked()) {
            accessibilityNodeInfo.setCheckable(true);
            accessibilityNodeInfo.setChecked(this.checkBox.isChecked());
        }
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        TextView textView;
        super.onLayout(z, i, i2, i3, i4);
        if (this.viewType != 1) {
            if (this.nameTextView.getLineCount() > 1 || ((textView = this.captionTextView) != null && textView.getVisibility() == 0)) {
                int measuredHeight = this.nameTextView.getMeasuredHeight() - AndroidUtilities.dp(22.0f);
                TextView textView2 = this.captionTextView;
                if (textView2 != null && textView2.getVisibility() == 0) {
                    TextView textView3 = this.captionTextView;
                    textView3.layout(textView3.getLeft(), this.captionTextView.getTop() + measuredHeight, this.captionTextView.getRight(), this.captionTextView.getBottom() + measuredHeight);
                    measuredHeight += this.captionTextView.getMeasuredHeight() + AndroidUtilities.dp(3.0f);
                }
                AnimatedEmojiSpan.TextViewEmojis textViewEmojis = this.dateTextView;
                textViewEmojis.layout(textViewEmojis.getLeft(), this.dateTextView.getTop() + measuredHeight, this.dateTextView.getRight(), this.dateTextView.getBottom() + measuredHeight);
                RLottieImageView rLottieImageView = this.statusImageView;
                rLottieImageView.layout(rLottieImageView.getLeft(), this.statusImageView.getTop() + measuredHeight, this.statusImageView.getRight(), measuredHeight + this.statusImageView.getBottom());
                LineProgressView lineProgressView = this.progressView;
                lineProgressView.layout(lineProgressView.getLeft(), (getMeasuredHeight() - this.progressView.getMeasuredHeight()) - (this.needDivider ? 1 : 0), this.progressView.getRight(), getMeasuredHeight() - (this.needDivider ? 1 : 0));
            }
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        int iMakeMeasureSpec;
        int iDp;
        int i3 = this.viewType;
        if (i3 == 1) {
            iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), 1073741824);
            iDp = AndroidUtilities.dp(64.0f) + (this.needDivider ? 1 : 0);
        } else {
            iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), 1073741824);
            if (i3 != 0) {
                super.onMeasure(iMakeMeasureSpec, View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(56.0f), 1073741824));
                int iDp2 = AndroidUtilities.dp(34.0f) + this.nameTextView.getMeasuredHeight() + (this.needDivider ? 1 : 0);
                if (this.caption != null && this.captionTextView != null && this.message.hasHighlightedWords()) {
                    this.ignoreRequestLayout = true;
                    this.captionTextView.setText(AndroidUtilities.ellipsizeCenterEnd(this.caption, this.message.highlightedWords.get(0), this.captionTextView.getMeasuredWidth(), this.captionTextView.getPaint(), NotificationCenter.walletPendingTransactionsChanged));
                    this.ignoreRequestLayout = false;
                    iDp2 += this.captionTextView.getMeasuredHeight() + AndroidUtilities.dp(3.0f);
                }
                setMeasuredDimension(getMeasuredWidth(), iDp2);
                return;
            }
            iDp = AndroidUtilities.dp(56.0f);
        }
        super.onMeasure(iMakeMeasureSpec, View.MeasureSpec.makeMeasureSpec(iDp, 1073741824));
    }

    @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
    public void onProgressDownload(String str, long j, long j2) {
        if (this.progressView.getVisibility() != 0) {
            updateFileExistIcon(true);
        }
        this.downloadedSize = j;
        updateDateView();
        this.progressView.setProgress(Math.min(1.0f, j / j2), true);
    }

    @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
    public void onProgressUpload(String str, long j, long j2, boolean z) {
    }

    @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
    public void onSuccessDownload(String str) {
        this.progressView.setProgress(1.0f, true);
        updateFileExistIcon(true);
        this.downloadedSize = 0L;
        updateDateView();
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (this.ignoreRequestLayout) {
            return;
        }
        super.requestLayout();
    }

    public void setChecked(boolean z, boolean z2) {
        if (this.checkBox.getVisibility() != 0) {
            this.checkBox.setVisibility(0);
        }
        this.checkBox.setChecked(z, z2);
    }

    /* JADX WARN: Removed duplicated region for block: B:105:0x0236 A[PHI: r1
      0x0236: PHI (r1v14 android.widget.TextView) = (r1v13 android.widget.TextView), (r1v23 android.widget.TextView) binds: [B:104:0x0234, B:101:0x0200] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00d2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void setDocument(MessageObject messageObject, boolean z) {
        boolean z2;
        boolean z3;
        TextView textView;
        String str;
        int i;
        String str2;
        String str3;
        MessageObject messageObject2 = this.message;
        if (messageObject2 == null || messageObject == null || messageObject2.getId() == messageObject.getId()) {
            z2 = z;
            z3 = false;
        } else {
            z2 = z;
            z3 = true;
        }
        this.needDivider = z2;
        this.message = messageObject;
        this.loaded = false;
        this.loading = false;
        if (!z3) {
            this.downloadedSize = 0L;
        }
        TLRPC.Document document = messageObject.getDocument();
        if (document != null) {
            String str4 = null;
            if (messageObject.isMusic()) {
                for (int i2 = 0; i2 < document.attributes.size(); i2++) {
                    TLRPC.DocumentAttribute documentAttribute = document.attributes.get(i2);
                    if ((documentAttribute instanceof TLRPC.TL_documentAttributeAudio) && (((str2 = documentAttribute.performer) != null && str2.length() != 0) || ((str3 = documentAttribute.title) != null && str3.length() != 0))) {
                        str4 = messageObject.getMusicAuthor() + " - " + messageObject.getMusicTitle();
                    }
                }
            }
            String documentFileName = (messageObject.isVideo() || (messageObject.messageOwner.media instanceof TLRPC.TL_messageMediaPhoto) || MessageObject.isGifDocument(document)) ? null : FileLoader.getDocumentFileName(document);
            if (TextUtils.isEmpty(documentFileName) && (str = document.mime_type) != null) {
                if (str.startsWith(MediaStreamTrack.VIDEO_TRACK_KIND)) {
                    i = MessageObject.isGifDocument(document) ? R.string.AttachGif : R.string.AttachVideo;
                    documentFileName = LocaleController.getString(i);
                } else {
                    if (!document.mime_type.startsWith("image")) {
                        i = document.mime_type.startsWith(MediaStreamTrack.AUDIO_TRACK_KIND) ? R.string.AttachAudio : R.string.AttachDocument;
                    } else if (!MessageObject.isGifDocument(document)) {
                        i = R.string.AttachPhoto;
                    }
                    documentFileName = LocaleController.getString(i);
                }
            }
            if (str4 == null) {
                str4 = documentFileName;
            }
            CharSequence charSequenceHighlightText = AndroidUtilities.highlightText(str4, messageObject.highlightedWords, this.resourcesProvider);
            if (charSequenceHighlightText != null) {
                this.nameTextView.setText(charSequenceHighlightText);
            } else {
                this.nameTextView.setText(str4);
            }
            this.placeholderImageView.setVisibility(0);
            this.extTextView.setVisibility(0);
            this.placeholderImageView.setImageResource(AndroidUtilities.getThumbForNameOrMime(documentFileName, document.mime_type, false));
            TextView textView2 = this.extTextView;
            int iLastIndexOf = documentFileName.lastIndexOf(46);
            textView2.setText(iLastIndexOf != -1 ? documentFileName.substring(iLastIndexOf + 1).toLowerCase() : "");
            TLRPC.PhotoSize closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(document.thumbs, 320);
            TLRPC.PhotoSize closestPhotoSizeWithSize2 = FileLoader.getClosestPhotoSizeWithSize(document.thumbs, 40);
            if (closestPhotoSizeWithSize2 == closestPhotoSizeWithSize) {
                closestPhotoSizeWithSize = null;
            }
            if ((closestPhotoSizeWithSize2 instanceof TLRPC.TL_photoSizeEmpty) || closestPhotoSizeWithSize2 == null) {
                this.thumbImageView.setVisibility(4);
                this.thumbImageView.setImageBitmap(null);
                this.extTextView.setAlpha(1.0f);
                this.placeholderImageView.setAlpha(1.0f);
            } else {
                this.thumbImageView.getImageReceiver().setNeedsQualityThumb(closestPhotoSizeWithSize == null);
                this.thumbImageView.getImageReceiver().setShouldGenerateQualityThumb(closestPhotoSizeWithSize == null);
                this.thumbImageView.setVisibility(0);
                if (messageObject.strippedThumb != null) {
                    this.thumbImageView.setImage(ImageLocation.getForDocument(closestPhotoSizeWithSize, document), "40_40", (ImageLocation) null, (String) null, messageObject.strippedThumb, (Bitmap) null, (String) null, 1, messageObject);
                } else {
                    this.thumbImageView.setImage(ImageLocation.getForDocument(closestPhotoSizeWithSize, document), "40_40", ImageLocation.getForDocument(closestPhotoSizeWithSize2, document), "40_40_b", null, 0L, 1, messageObject);
                }
            }
            updateDateView();
            if (!messageObject.hasHighlightedWords() || TextUtils.isEmpty(this.message.messageOwner.message)) {
                textView = this.captionTextView;
                if (textView != null) {
                    textView.setVisibility(8);
                }
            } else {
                CharSequence charSequenceHighlightText2 = AndroidUtilities.highlightText(this.message.messageOwner.message.replace("\n", " ").replaceAll(" +", " ").trim(), this.message.highlightedWords, this.resourcesProvider);
                this.caption = charSequenceHighlightText2;
                TextView textView3 = this.captionTextView;
                if (textView3 != null) {
                    textView3.setVisibility(charSequenceHighlightText2 != null ? 0 : 8);
                }
            }
        } else {
            this.nameTextView.setText("");
            this.extTextView.setText("");
            this.dateTextView.setText("");
            this.placeholderImageView.setVisibility(0);
            this.extTextView.setVisibility(0);
            this.extTextView.setAlpha(1.0f);
            this.placeholderImageView.setAlpha(1.0f);
            this.thumbImageView.setVisibility(4);
            this.thumbImageView.setImageBitmap(null);
            this.caption = null;
            textView = this.captionTextView;
            if (textView != null) {
            }
        }
        setWillNotDraw(!this.needDivider);
        this.progressView.setProgress(BitmapDescriptorFactory.HUE_RED, false);
        updateFileExistIcon(z3);
    }

    public void setDrawDownloadIcon(boolean z) {
        this.drawDownloadIcon = z;
    }

    public void setEnterAnimationAlpha(float f) {
        if (this.enterAlpha != f) {
            this.enterAlpha = f;
            invalidate();
        }
    }

    public void setGlobalGradientView(FlickerLoadingView flickerLoadingView) {
        this.globalGradientView = flickerLoadingView;
    }

    public void setPhoto(String str) {
        BackupImageView backupImageView;
        StringBuilder sb;
        String str2;
        if (str.endsWith("mp4")) {
            backupImageView = this.thumbImageView;
            sb = new StringBuilder();
            str2 = "vthumb://0:";
        } else if (!str.endsWith(".jpg") && !str.endsWith(".jpeg") && !str.endsWith(".png") && !str.endsWith(".gif")) {
            this.thumbImageView.setVisibility(8);
            return;
        } else {
            backupImageView = this.thumbImageView;
            sb = new StringBuilder();
            str2 = "thumb://0:";
        }
        sb.append(str2);
        sb.append(str);
        backupImageView.setImage(sb.toString(), null, null);
        this.thumbImageView.setVisibility(0);
    }

    public void setPhotoEntry(MediaController.PhotoEntry photoEntry) {
        String str;
        BackupImageView backupImageView;
        StringBuilder sb;
        String str2;
        String str3 = photoEntry.thumbPath;
        if (str3 != null) {
            this.thumbImageView.setImage(str3, null, Theme.chat_attachEmptyDrawable);
            str = photoEntry.thumbPath;
        } else if (photoEntry.path != null) {
            if (photoEntry.isVideo) {
                this.thumbImageView.setOrientation(0, true);
                backupImageView = this.thumbImageView;
                sb = new StringBuilder();
                str2 = "vthumb://";
            } else {
                this.thumbImageView.setOrientation(photoEntry.orientation, photoEntry.invert, true);
                backupImageView = this.thumbImageView;
                sb = new StringBuilder();
                str2 = "thumb://";
            }
            sb.append(str2);
            sb.append(photoEntry.imageId);
            sb.append(":");
            sb.append(photoEntry.path);
            backupImageView.setImage(sb.toString(), null, Theme.chat_attachEmptyDrawable);
            str = photoEntry.path;
        } else {
            this.thumbImageView.setImageDrawable(Theme.chat_attachEmptyDrawable);
            str = "";
        }
        File file = new File(str);
        this.nameTextView.setText(file.getName());
        FileLoader.getFileExtension(file);
        this.extTextView.setVisibility(8);
        StringBuilder sb2 = new StringBuilder();
        if (photoEntry.width != 0 && photoEntry.height != 0) {
            if (sb2.length() > 0) {
                sb2.append(", ");
            }
            sb2.append(String.format(Locale.US, "%dx%d", Integer.valueOf(photoEntry.width), Integer.valueOf(photoEntry.height)));
        }
        if (photoEntry.isVideo) {
            if (sb2.length() > 0) {
                sb2.append(", ");
            }
            sb2.append(AndroidUtilities.formatShortDuration(photoEntry.duration));
        }
        if (photoEntry.size != 0) {
            if (sb2.length() > 0) {
                sb2.append(", ");
            }
            sb2.append(AndroidUtilities.formatFileSize(photoEntry.size));
        }
        if (sb2.length() > 0) {
            sb2.append(", ");
        }
        sb2.append(LocaleController.getInstance().getFormatterStats().format(photoEntry.dateTaken));
        this.dateTextView.setText(sb2);
        this.placeholderImageView.setVisibility(8);
    }

    public void setTextAndValueAndTypeAndThumb(String str, String str2, String str3, String str4, int i, boolean z) {
        int i2;
        int i3;
        this.nameTextView.setText(str);
        this.dateTextView.setText(str2);
        TextView textView = this.extTextView;
        if (str3 != null) {
            textView.setVisibility(0);
            this.extTextView.setText(str3.toLowerCase());
        } else {
            textView.setVisibility(4);
        }
        this.needDivider = z;
        if (i == 0) {
            this.placeholderImageView.setImageResource(AndroidUtilities.getThumbForNameOrMime(str, str3, false));
            this.placeholderImageView.setVisibility(0);
        } else {
            this.placeholderImageView.setVisibility(4);
        }
        if (str4 == null && i == 0) {
            this.extTextView.setAlpha(1.0f);
            this.placeholderImageView.setAlpha(1.0f);
            if (this.viewType != 3) {
                this.thumbImageView.setImageBitmap(null);
                this.thumbImageView.setVisibility(4);
            }
        } else {
            if (str4 == null) {
                CombinedDrawable combinedDrawableCreateCircleDrawableWithIcon = Theme.createCircleDrawableWithIcon(AndroidUtilities.dp(42.0f), i);
                if (i == R.drawable.files_storage) {
                    i2 = Theme.key_chat_attachLocationBackground;
                } else if (i == R.drawable.files_gallery) {
                    i2 = Theme.key_chat_attachContactBackground;
                } else if (i == R.drawable.files_music) {
                    i2 = Theme.key_chat_attachAudioBackground;
                } else if (i == R.drawable.files_internal) {
                    i2 = Theme.key_chat_attachGalleryBackground;
                } else {
                    i2 = Theme.key_files_folderIconBackground;
                    i3 = Theme.key_files_folderIcon;
                    Theme.setCombinedDrawableColor(combinedDrawableCreateCircleDrawableWithIcon, getThemedColor(i2), false);
                    Theme.setCombinedDrawableColor(combinedDrawableCreateCircleDrawableWithIcon, getThemedColor(i3), true);
                    this.thumbImageView.setImageDrawable(combinedDrawableCreateCircleDrawableWithIcon);
                }
                i3 = Theme.key_chat_attachIcon;
                Theme.setCombinedDrawableColor(combinedDrawableCreateCircleDrawableWithIcon, getThemedColor(i2), false);
                Theme.setCombinedDrawableColor(combinedDrawableCreateCircleDrawableWithIcon, getThemedColor(i3), true);
                this.thumbImageView.setImageDrawable(combinedDrawableCreateCircleDrawableWithIcon);
            } else if (this.viewType != 3) {
                this.thumbImageView.setImage(str4, "42_42", null);
            }
            this.thumbImageView.setVisibility(0);
        }
        setWillNotDraw(true ^ this.needDivider);
    }

    public void showReorderIcon(boolean z, boolean z2) {
        if (this.showReorderIcon == z) {
            return;
        }
        this.showReorderIcon = z;
        if (!z2) {
            this.showReorderIconProgress = z ? 1.0f : BitmapDescriptorFactory.HUE_RED;
        }
        invalidate();
    }

    public void updateFileExistIcon(boolean z) {
        if (z) {
            TransitionSet transitionSet = new TransitionSet();
            ChangeBounds changeBounds = new ChangeBounds();
            changeBounds.setDuration(150L);
            transitionSet.addTransition(new Fade().setDuration(150L)).addTransition(changeBounds);
            transitionSet.setOrdering(0);
            transitionSet.setInterpolator((TimeInterpolator) CubicBezierInterpolator.DEFAULT);
            TransitionManager.beginDelayedTransition(this, transitionSet);
        }
        MessageObject messageObject = this.message;
        if (messageObject == null || messageObject.messageOwner.media == null) {
            this.loading = false;
            this.loaded = true;
            this.progressView.setVisibility(4);
            this.progressView.setProgress(BitmapDescriptorFactory.HUE_RED, false);
            this.statusImageView.setVisibility(4);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.dateTextView.getLayoutParams();
            if (layoutParams != null) {
                layoutParams.leftMargin = AndroidUtilities.dp(LocaleController.isRTL ? 8.0f : 72.0f);
                layoutParams.rightMargin = AndroidUtilities.dp(LocaleController.isRTL ? 72.0f : 8.0f);
                this.dateTextView.requestLayout();
            }
        } else {
            this.loaded = false;
            if (!messageObject.attachPathExists && !messageObject.mediaExists && this.drawDownloadIcon) {
                String attachFileName = FileLoader.getAttachFileName(messageObject.getDocument());
                DownloadController.getInstance(this.currentAccount).addLoadingFileObserver(attachFileName, this.message, this);
                this.loading = FileLoader.getInstance(this.currentAccount).isLoadingFile(attachFileName);
                this.statusImageView.setVisibility(0);
                this.statusDrawable.setCustomEndFrame(this.loading ? 15 : 0);
                this.statusDrawable.setPlayInDirectionOfCustomEndFrame(true);
                if (z) {
                    this.statusImageView.playAnimation();
                } else {
                    this.statusDrawable.setCurrentFrame(this.loading ? 15 : 0);
                    this.statusImageView.invalidate();
                }
                FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) this.dateTextView.getLayoutParams();
                if (layoutParams2 != null) {
                    layoutParams2.leftMargin = AndroidUtilities.dp(LocaleController.isRTL ? 8.0f : 86.0f);
                    layoutParams2.rightMargin = AndroidUtilities.dp(LocaleController.isRTL ? 86.0f : 8.0f);
                    this.dateTextView.requestLayout();
                }
                if (!this.loading) {
                    this.progressView.setVisibility(4);
                    return;
                }
                this.progressView.setVisibility(0);
                Float fileProgress = ImageLoader.getInstance().getFileProgress(attachFileName);
                if (fileProgress == null) {
                    fileProgress = Float.valueOf(BitmapDescriptorFactory.HUE_RED);
                }
                this.progressView.setProgress(fileProgress.floatValue(), false);
                return;
            }
            this.statusImageView.setVisibility(4);
            this.progressView.setVisibility(4);
            FrameLayout.LayoutParams layoutParams3 = (FrameLayout.LayoutParams) this.dateTextView.getLayoutParams();
            if (layoutParams3 != null) {
                layoutParams3.leftMargin = AndroidUtilities.dp(LocaleController.isRTL ? 8.0f : 72.0f);
                layoutParams3.rightMargin = AndroidUtilities.dp(LocaleController.isRTL ? 72.0f : 8.0f);
                this.dateTextView.requestLayout();
            }
            this.loading = false;
            this.loaded = true;
        }
        DownloadController.getInstance(this.currentAccount).removeLoadingFileObserver(this);
    }
}
