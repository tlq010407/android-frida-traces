package org.telegram.ui.ActionBar;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.RenderNode;
import android.graphics.Shader;
import android.graphics.SurfaceTexture;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.view.MotionEvent;
import android.view.PixelCopy;
import android.view.Surface;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.OverScroller;
import com.google.zxing.common.detector.MathUtils;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.BotFullscreenButtons$$ExternalSyntheticApiModelOutline2;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.R;
import org.telegram.messenger.Utilities;
import org.telegram.ui.ActionBar.BottomSheetTabs;
import org.telegram.ui.ActionBar.BottomSheetTabsOverlay;
import org.telegram.ui.Components.AnimatedFloat;
import org.telegram.ui.Components.ButtonBounce;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.Text;
import org.telegram.ui.GradientClip;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes4.dex */
public class BottomSheetTabsOverlay extends FrameLayout {
    private View actionBarLayout;
    private final AnimatedFloat animatedCount;
    private ValueAnimator animator;
    private Bitmap blurBitmap;
    private Paint blurBitmapPaint;
    private BitmapShader blurBitmapShader;
    private Matrix blurMatrix;
    private final Path clipPath;
    private final RectF clipRect;
    private Drawable closeAllButtonBackground;
    private boolean closeAllButtonBackgroundDark;
    private Text closeAllButtonText;
    private float dismissProgress;
    private Sheet dismissingSheet;
    private BottomSheetTabs.TabDrawable dismissingTab;
    private GradientClip gradientClip;
    private boolean hitCloseAllButton;
    private boolean horizontallySwiping;
    private boolean isOpen;
    private float lastY;
    private final int maximumVelocity;
    private final int minimumVelocity;
    public float offset;
    private ValueAnimator openAnimator;
    private float openProgress;
    private float openingProgress;
    private Sheet openingSheet;
    private BottomSheetTabs.TabDrawable openingTab;
    private float openingTabScroll;
    private final int[] pos;
    private final int[] pos2;
    private final int[] pos3;
    private TabPreview pressTab;
    private boolean pressTabClose;
    private final RectF rect;
    private final RectF rect2;
    private ValueAnimator scrollAnimator;
    private final OverScroller scroller;
    private boolean slowerDismiss;
    private long startTime;
    private float startX;
    private float startY;
    private final ArrayList tabs;
    private BottomSheetTabs tabsView;
    private final RectF tabsViewBounds;
    private VelocityTracker velocityTracker;
    private boolean verticallyScrolling;

    /* renamed from: org.telegram.ui.ActionBar.BottomSheetTabsOverlay$2, reason: invalid class name */
    class AnonymousClass2 extends AnimatorListenerAdapter {
        final /* synthetic */ Sheet val$sheet;
        final /* synthetic */ BottomSheetTabs.WebTabData val$tab;

        AnonymousClass2(BottomSheetTabs.WebTabData webTabData, Sheet sheet) {
            this.val$tab = webTabData;
            this.val$sheet = sheet;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$onAnimationEnd$0(BottomSheetTabs.WebTabData webTabData, Sheet sheet, Bitmap bitmap) {
            webTabData.previewBitmap = bitmap;
            sheet.mo1096getWindowView().setDrawingFromOverlay(false);
            sheet.release();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            int i;
            int i2;
            final BottomSheetTabs.WebTabData webTabData = this.val$tab;
            View view = webTabData.webView;
            if (view == null) {
                view = webTabData.view2;
            }
            if (view == null || webTabData.previewBitmap != null || (i = webTabData.viewWidth) <= 0 || (i2 = webTabData.viewHeight) <= 0) {
                this.val$sheet.mo1096getWindowView().setDrawingFromOverlay(false);
                this.val$sheet.release();
            } else if (Build.VERSION.SDK_INT >= 26) {
                float f = -webTabData.viewScroll;
                final Sheet sheet = this.val$sheet;
                BottomSheetTabsOverlay.renderHardwareViewToBitmap(view, f, new Utilities.Callback() { // from class: org.telegram.ui.ActionBar.BottomSheetTabsOverlay$2$$ExternalSyntheticLambda0
                    @Override // org.telegram.messenger.Utilities.Callback
                    public final void run(Object obj) {
                        BottomSheetTabsOverlay.AnonymousClass2.lambda$onAnimationEnd$0(webTabData, sheet, (Bitmap) obj);
                    }
                });
            } else {
                webTabData.previewBitmap = Bitmap.createBitmap(i, i2, Bitmap.Config.RGB_565);
                Canvas canvas = new Canvas(this.val$tab.previewBitmap);
                canvas.translate(BitmapDescriptorFactory.HUE_RED, -this.val$tab.viewScroll);
                view.draw(canvas);
                this.val$sheet.mo1096getWindowView().setDrawingFromOverlay(false);
                this.val$sheet.release();
            }
            BottomSheetTabsOverlay.this.dismissingSheet = null;
            BottomSheetTabsOverlay.this.invalidate();
        }
    }

    public interface Sheet {

        /* renamed from: org.telegram.ui.ActionBar.BottomSheetTabsOverlay$Sheet$-CC, reason: invalid class name */
        public abstract /* synthetic */ class CC {
            public static void $default$setLastVisible(Sheet sheet, boolean z) {
            }
        }

        void dismiss(boolean z);

        int getNavigationBarColor(int i);

        /* renamed from: getWindowView */
        SheetView mo1096getWindowView();

        boolean hadDialog();

        void release();

        BottomSheetTabs.WebTabData saveState();

        boolean setDialog(BottomSheetTabDialog bottomSheetTabDialog);

        void setLastVisible(boolean z);
    }

    public interface SheetView {
        float drawInto(Canvas canvas, RectF rectF, float f, RectF rectF2, float f2, boolean z);

        Context getContext();

        RectF getRect();

        void setDrawingFromOverlay(boolean z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    static class TabPreview {
        private final Paint backgroundPaint;
        private final Paint bitmapPaint;
        public final ButtonBounce bounce;
        public final RectF clickBounds = new RectF();
        private final Path clipPath;
        private ValueAnimator dismissAnimator;
        public float dismissProgress;
        private final float[] dst;
        private final RadialGradient gradient;
        private final Matrix gradientMatrix;
        private final Paint gradientPaint;
        private final Matrix matrix;
        public final View parentView;
        private final Paint shadowPaint;
        private final float[] src;
        private final RectF tabBounds;
        public final BottomSheetTabs.WebTabData tabData;
        public final BottomSheetTabs.TabDrawable tabDrawable;
        public WebView webView;

        public TabPreview(View view, BottomSheetTabs.WebTabData webTabData, BottomSheetTabs.TabDrawable tabDrawable) {
            Paint paint = new Paint(1);
            this.backgroundPaint = paint;
            this.matrix = new Matrix();
            this.src = new float[8];
            this.dst = new float[8];
            this.dismissProgress = BitmapDescriptorFactory.HUE_RED;
            this.shadowPaint = new Paint(1);
            this.tabBounds = new RectF();
            this.clipPath = new Path();
            this.bitmapPaint = new Paint(3);
            this.gradient = new RadialGradient(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 255.0f, new int[]{0, 805306368}, new float[]{0.5f, 1.0f}, Shader.TileMode.CLAMP);
            this.gradientMatrix = new Matrix();
            this.gradientPaint = new Paint(1);
            this.parentView = view;
            this.tabData = webTabData;
            this.tabDrawable = tabDrawable;
            this.webView = null;
            this.bounce = new ButtonBounce(view);
            paint.setColor(webTabData.backgroundColor);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$animateDismiss$0(ValueAnimator valueAnimator) {
            this.dismissProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            View view = this.parentView;
            if (view != null) {
                view.invalidate();
            }
        }

        public void animateDismiss(final float f) {
            cancelDismissAnimator();
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.dismissProgress, f);
            this.dismissAnimator = valueAnimatorOfFloat;
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.ActionBar.BottomSheetTabsOverlay$TabPreview$$ExternalSyntheticLambda0
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    this.f$0.lambda$animateDismiss$0(valueAnimator);
                }
            });
            this.dismissAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.ActionBar.BottomSheetTabsOverlay.TabPreview.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    TabPreview tabPreview = TabPreview.this;
                    tabPreview.dismissProgress = f;
                    View view = tabPreview.parentView;
                    if (view != null) {
                        view.invalidate();
                    }
                }
            });
            if (Math.abs(f) < 0.1f) {
                AndroidUtilities.applySpring(this.dismissAnimator, 285.0d, 20.0d);
            } else {
                this.dismissAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
            }
            this.dismissAnimator.start();
        }

        public void cancelDismissAnimator() {
            ValueAnimator valueAnimator = this.dismissAnimator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
        }

        public void draw(Canvas canvas, RectF rectF, boolean z, float f, float f2, float f3, float f4) {
            float f5;
            float f6;
            Object obj;
            float fClamp = f * Utilities.clamp(1.0f - ((Math.abs(this.dismissProgress) - 0.3f) / 0.7f), 1.0f, BitmapDescriptorFactory.HUE_RED);
            if (fClamp <= BitmapDescriptorFactory.HUE_RED) {
                return;
            }
            float f7 = 1.0f - f3;
            float f8 = f2 * f7;
            float fLerp = AndroidUtilities.lerp(1.0f, 1.3f, f8);
            float currentActionBarHeight = f3 * ((AndroidUtilities.statusBarHeight + ActionBar.getCurrentActionBarHeight()) - AndroidUtilities.dp(50.0f));
            canvas.save();
            canvas.rotate(this.dismissProgress * 20.0f, rectF.centerX() + (AndroidUtilities.dp(50.0f) * this.dismissProgress), rectF.bottom + AndroidUtilities.dp(350.0f));
            float scale = this.bounce.getScale(0.01f);
            canvas.scale(scale, scale, rectF.centerX(), rectF.centerY());
            float fLerp2 = AndroidUtilities.lerp(AndroidUtilities.dp(10.0f), AndroidUtilities.dp(6.0f), f2);
            if (z) {
                this.shadowPaint.setColor(0);
                this.shadowPaint.setShadowLayer(AndroidUtilities.dp(30.0f), BitmapDescriptorFactory.HUE_RED, AndroidUtilities.dp(10.0f), Theme.multAlpha(536870912, fClamp * f2 * f7));
                canvas.drawRoundRect(rectF, fLerp2, fLerp2, this.shadowPaint);
                this.backgroundPaint.setAlpha((int) (fClamp * 255.0f));
                canvas.drawRoundRect(rectF, fLerp2, fLerp2, this.backgroundPaint);
            } else {
                this.clipPath.rewind();
                this.clipPath.addRoundRect(rectF, fLerp2, fLerp2, Path.Direction.CW);
                canvas.save();
                this.shadowPaint.setColor(0);
                float f9 = fClamp * f2;
                this.shadowPaint.setShadowLayer(AndroidUtilities.dp(30.0f), BitmapDescriptorFactory.HUE_RED, AndroidUtilities.dp(10.0f), Theme.multAlpha(536870912, f9 * f7));
                canvas.drawPath(this.clipPath, this.shadowPaint);
                canvas.clipPath(this.clipPath);
                float f10 = fClamp * 255.0f * f2;
                int i = (int) f10;
                this.backgroundPaint.setAlpha(i);
                canvas.drawRoundRect(rectF, fLerp2, fLerp2, this.backgroundPaint);
                canvas.save();
                canvas.translate(rectF.left, rectF.top + (AndroidUtilities.dp(50.0f) * fLerp) + currentActionBarHeight);
                canvas.scale(1.0f, AndroidUtilities.lerp(1.0f, 1.25f, f8));
                BottomSheetTabs.WebTabData webTabData = this.tabData;
                if (webTabData == null || (obj = webTabData.previewNode) == null || Build.VERSION.SDK_INT < 29 || !BotFullscreenButtons$$ExternalSyntheticApiModelOutline2.m(obj).hasDisplayList()) {
                    BottomSheetTabs.WebTabData webTabData2 = this.tabData;
                    if (webTabData2 == null || webTabData2.previewBitmap == null) {
                        if (this.webView != null) {
                            float fWidth = rectF.width() / this.webView.getWidth();
                            canvas.scale(fWidth, fWidth);
                            f5 = fLerp2;
                            f6 = currentActionBarHeight;
                            canvas.saveLayerAlpha(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, this.webView.getWidth(), this.webView.getHeight(), i, 31);
                            this.webView.draw(canvas);
                            canvas.restore();
                        }
                        canvas.restore();
                        canvas.save();
                        this.gradientPaint.setAlpha((int) (f10 * f7));
                        this.gradientMatrix.reset();
                        float fHeight = rectF.height() / 255.0f;
                        this.gradientMatrix.postScale(fHeight, fHeight);
                        this.gradientMatrix.postTranslate(rectF.centerX(), rectF.top);
                        this.gradient.setLocalMatrix(this.gradientMatrix);
                        this.gradientPaint.setShader(this.gradient);
                        canvas.drawRect(rectF, this.gradientPaint);
                        canvas.restore();
                        this.tabBounds.set(rectF);
                        RectF rectF2 = this.tabBounds;
                        rectF2.bottom = rectF2.top + Math.min(rectF.height(), AndroidUtilities.dp(50.0f));
                        this.tabBounds.offset(BitmapDescriptorFactory.HUE_RED, f6);
                        this.tabDrawable.setExpandProgress(f2);
                        canvas.scale(1.0f, fLerp, this.tabBounds.centerX(), this.tabBounds.top);
                        this.tabDrawable.draw(canvas, this.tabBounds, f5, fClamp * fClamp, f4);
                        canvas.restore();
                    } else {
                        float fWidth2 = rectF.width() / this.tabData.previewBitmap.getWidth();
                        canvas.scale(fWidth2, fWidth2);
                        this.bitmapPaint.setAlpha(i);
                        canvas.drawBitmap(this.tabData.previewBitmap, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, this.bitmapPaint);
                    }
                } else {
                    RenderNode renderNodeM = BotFullscreenButtons$$ExternalSyntheticApiModelOutline2.m(this.tabData.previewNode);
                    float fWidth3 = rectF.width() / renderNodeM.getWidth();
                    canvas.scale(fWidth3, fWidth3);
                    renderNodeM.setAlpha(f9);
                    canvas.drawRenderNode(renderNodeM);
                }
                f5 = fLerp2;
                f6 = currentActionBarHeight;
                canvas.restore();
                canvas.save();
                this.gradientPaint.setAlpha((int) (f10 * f7));
                this.gradientMatrix.reset();
                float fHeight2 = rectF.height() / 255.0f;
                this.gradientMatrix.postScale(fHeight2, fHeight2);
                this.gradientMatrix.postTranslate(rectF.centerX(), rectF.top);
                this.gradient.setLocalMatrix(this.gradientMatrix);
                this.gradientPaint.setShader(this.gradient);
                canvas.drawRect(rectF, this.gradientPaint);
                canvas.restore();
                this.tabBounds.set(rectF);
                RectF rectF22 = this.tabBounds;
                rectF22.bottom = rectF22.top + Math.min(rectF.height(), AndroidUtilities.dp(50.0f));
                this.tabBounds.offset(BitmapDescriptorFactory.HUE_RED, f6);
                this.tabDrawable.setExpandProgress(f2);
                canvas.scale(1.0f, fLerp, this.tabBounds.centerX(), this.tabBounds.top);
                this.tabDrawable.draw(canvas, this.tabBounds, f5, fClamp * fClamp, f4);
                canvas.restore();
            }
            canvas.restore();
        }

        public boolean isPressed() {
            return this.bounce.isPressed();
        }

        public void setPressed(boolean z) {
            this.bounce.setPressed(z);
        }
    }

    public BottomSheetTabsOverlay(Context context) {
        super(context);
        this.animatedCount = new AnimatedFloat(this, 0L, 350L, CubicBezierInterpolator.EASE_OUT_QUINT);
        this.tabsViewBounds = new RectF();
        this.tabs = new ArrayList();
        this.pos = new int[2];
        this.pos2 = new int[2];
        this.pos3 = new int[2];
        this.rect = new RectF();
        this.rect2 = new RectF();
        this.clipRect = new RectF();
        this.clipPath = new Path();
        setWillNotDraw(false);
        this.scroller = new OverScroller(context);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.maximumVelocity = viewConfiguration.getScaledMaximumFlingVelocity();
        this.minimumVelocity = viewConfiguration.getScaledMinimumFlingVelocity();
    }

    private void animateOpen(boolean z) {
        if (this.isOpen == z) {
            return;
        }
        ValueAnimator valueAnimator = this.openAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        this.isOpen = z;
        BottomSheetTabs bottomSheetTabs = this.tabsView;
        if (bottomSheetTabs != null) {
            bottomSheetTabs.drawTabs = false;
            bottomSheetTabs.invalidate();
        }
        invalidate();
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.openProgress, z ? 1.0f : BitmapDescriptorFactory.HUE_RED);
        this.openAnimator = valueAnimatorOfFloat;
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.ActionBar.BottomSheetTabsOverlay$$ExternalSyntheticLambda1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                this.f$0.lambda$animateOpen$6(valueAnimator2);
            }
        });
        this.openAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.ActionBar.BottomSheetTabsOverlay.3
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (BottomSheetTabsOverlay.this.tabsView != null) {
                    BottomSheetTabsOverlay.this.tabsView.drawTabs = true;
                    BottomSheetTabsOverlay.this.tabsView.invalidate();
                }
                BottomSheetTabsOverlay bottomSheetTabsOverlay = BottomSheetTabsOverlay.this;
                bottomSheetTabsOverlay.openProgress = bottomSheetTabsOverlay.isOpen ? 1.0f : BitmapDescriptorFactory.HUE_RED;
                BottomSheetTabsOverlay.this.invalidate();
                if (BottomSheetTabsOverlay.this.isOpen || BottomSheetTabsOverlay.this.openingSheet != null) {
                    return;
                }
                BottomSheetTabsOverlay.this.clearTabs();
            }
        });
        this.openAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
        this.openAnimator.setDuration(320L);
        this.openAnimator.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearTabs() {
        this.tabs.clear();
    }

    private void drawDismissingTab(Canvas canvas) {
        if (this.dismissingSheet != null) {
            getLocationOnScreen(this.pos2);
            this.tabsView.getLocationOnScreen(this.pos);
            this.tabsView.getTabBounds(this.rect, BitmapDescriptorFactory.HUE_RED);
            RectF rectF = this.rect;
            int i = this.pos[0];
            int[] iArr = this.pos2;
            rectF.offset(i - iArr[0], r1[1] - iArr[1]);
            SheetView sheetViewMo1096getWindowView = this.dismissingSheet.mo1096getWindowView();
            RectF rectF2 = this.rect;
            float f = this.dismissProgress;
            float fDrawInto = sheetViewMo1096getWindowView.drawInto(canvas, rectF2, f, this.clipRect, f, false);
            if (this.dismissingTab != null) {
                this.clipPath.rewind();
                this.clipPath.addRoundRect(this.clipRect, fDrawInto, fDrawInto, Path.Direction.CW);
                canvas.save();
                canvas.clipPath(this.clipPath);
                float fDp = this.clipRect.top - (AndroidUtilities.dp(50.0f) * (1.0f - this.dismissProgress));
                RectF rectF3 = this.rect;
                RectF rectF4 = this.clipRect;
                rectF3.set(rectF4.left, fDp, rectF4.right, AndroidUtilities.dp(50.0f) + fDp);
                this.tabsView.setupTab(this.dismissingTab);
                this.dismissingTab.draw(canvas, this.rect, fDrawInto, this.dismissProgress, 1.0f);
                canvas.restore();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:72:0x0258  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x02d1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void drawTabsPreview(Canvas canvas) {
        float f;
        int i;
        int i2;
        Object obj;
        float f2;
        int i3;
        int i4;
        float f3;
        int i5;
        int i6;
        float f4;
        int i7;
        if (this.openProgress > BitmapDescriptorFactory.HUE_RED || this.openingProgress > BitmapDescriptorFactory.HUE_RED) {
            canvas.save();
            View view = this.actionBarLayout;
            if (view != null) {
                view.getLocationOnScreen(this.pos);
                getLocationOnScreen(this.pos2);
                this.tabsViewBounds.set(this.pos[0] - this.pos2[0], r2[1] - r4[1], r3 + this.actionBarLayout.getWidth(), (this.pos[1] - this.pos2[1]) + this.actionBarLayout.getHeight());
            } else {
                int[] iArr = this.pos;
                iArr[1] = 0;
                iArr[0] = 0;
                this.tabsViewBounds.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
            }
            canvas.clipRect(this.tabsViewBounds);
            RectF rectF = this.tabsViewBounds;
            canvas.translate(rectF.left, rectF.top);
            float fWidth = this.tabsViewBounds.width();
            float fHeight = this.tabsViewBounds.height();
            if (this.blurBitmap != null) {
                this.blurMatrix.reset();
                float fWidth2 = this.tabsViewBounds.width() / this.blurBitmap.getWidth();
                this.blurMatrix.postScale(fWidth2, fWidth2);
                this.blurBitmapShader.setLocalMatrix(this.blurMatrix);
                this.blurBitmapPaint.setAlpha((int) (this.openProgress * 255.0f));
                canvas.drawRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, fWidth, fHeight, this.blurBitmapPaint);
            }
            canvas.saveLayerAlpha(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, fWidth, fHeight, 255, 31);
            float fDp = AndroidUtilities.statusBarHeight + AndroidUtilities.dp(40.0f) + AndroidUtilities.dp(55.0f);
            float fDp2 = AndroidUtilities.dp(68.0f);
            int iMin = (int) Math.min(AndroidUtilities.dp(340.0f), 0.95f * fWidth);
            int iHeight = (int) (AndroidUtilities.isTablet() ? this.tabsViewBounds.height() * 0.5f : 0.75f * fHeight);
            float f5 = fWidth / 2.0f;
            int i8 = 0;
            float f6 = BitmapDescriptorFactory.HUE_RED;
            while (true) {
                f = 1.0f;
                if (i8 >= this.tabs.size()) {
                    break;
                }
                if (((TabPreview) this.tabs.get(i8)).tabDrawable.index < 0) {
                    f = BitmapDescriptorFactory.HUE_RED;
                }
                f6 += f;
                i8++;
            }
            float f7 = this.animatedCount.set(f6);
            float fLerp = AndroidUtilities.lerp(BitmapDescriptorFactory.HUE_RED, 1.0f - Utilities.clamp(getScrollWindow() <= BitmapDescriptorFactory.HUE_RED ? BitmapDescriptorFactory.HUE_RED : ((getScrollMin() - getScrollOffset()) / (getScrollWindow() * 0.15f)) * 0.2f, 1.0f, BitmapDescriptorFactory.HUE_RED), this.openProgress);
            int i9 = 0;
            int i10 = -1;
            for (int i11 = 1; i9 < this.tabs.size() + i11; i11 = 1) {
                if (i9 != this.tabs.size()) {
                    obj = this.tabs.get(i9);
                } else if (i10 < 0 || this.openingProgress <= 0.5f) {
                    i6 = i9;
                    i5 = i10;
                    f3 = fLerp;
                    i4 = iHeight;
                    i3 = iMin;
                    f2 = fDp2;
                    f4 = fDp;
                    i10 = i5;
                    i9 = i6 + 1;
                    fDp = f4;
                    fLerp = f3;
                    iHeight = i4;
                    iMin = i3;
                    fDp2 = f2;
                    f = 1.0f;
                } else {
                    obj = this.tabs.get(i10);
                }
                TabPreview tabPreview = (TabPreview) obj;
                if (i9 >= this.tabs.size() || tabPreview.tabDrawable != this.openingTab || this.openingProgress <= 0.5f) {
                    BottomSheetTabs.TabDrawable tabDrawable = tabPreview.tabDrawable;
                    BottomSheetTabs.TabDrawable tabDrawable2 = this.openingTab;
                    float f8 = tabDrawable == tabDrawable2 ? 1.0f : fLerp;
                    float f9 = tabDrawable == tabDrawable2 ? this.openingProgress : BitmapDescriptorFactory.HUE_RED;
                    float position = (f7 - f) - tabDrawable.getPosition();
                    float fMax = tabPreview.tabDrawable == this.openingTab ? this.openingTabScroll : (position - Math.max(getScrollMin(), getScrollOffset())) / getScrollWindow();
                    Math.max(fMax, BitmapDescriptorFactory.HUE_RED);
                    int i12 = i9;
                    Math.max(Math.min(fMax, 1.0f), -4.0f);
                    float fDp3 = (AndroidUtilities.dp(6.0f) * Math.min(5.0f, position)) + fDp;
                    int i13 = i10;
                    float f10 = iHeight;
                    float f11 = fDp3 + ((((fHeight - fDp2) - (0.26f * f10)) - fDp3) * fMax);
                    float f12 = iMin / 2.0f;
                    i4 = iHeight;
                    this.rect2.set(f5 - f12, f11, f5 + f12, f10 + f11);
                    BottomSheetTabs.TabDrawable tabDrawable3 = tabPreview.tabDrawable;
                    BottomSheetTabs.TabDrawable tabDrawable4 = this.openingTab;
                    if (tabDrawable3 != tabDrawable4) {
                        RectF rectF2 = this.rect2;
                        boolean z = (rectF2.top > fHeight || rectF2.bottom < BitmapDescriptorFactory.HUE_RED || fLerp < 0.1f) && position < f7 - 3.0f;
                        Sheet sheet = this.openingSheet;
                        if (sheet == null || tabDrawable3 != tabDrawable4) {
                            i7 = iMin;
                            this.tabsView.getTabBounds(this.rect, Utilities.clamp(tabDrawable3.getPosition(), 1.0f, BitmapDescriptorFactory.HUE_RED));
                            this.rect.offset(this.tabsView.getX(), this.tabsView.getY());
                            RectF rectF3 = this.rect;
                            RectF rectF4 = this.rect2;
                            AndroidUtilities.lerpCentered(rectF3, rectF4, fLerp, rectF4);
                        } else {
                            this.rect.set(sheet.mo1096getWindowView().getRect());
                            RectF rectF5 = this.rect2;
                            AndroidUtilities.lerpCentered(rectF5, this.rect, f9, rectF5);
                            i7 = iMin;
                        }
                        BottomSheetTabs bottomSheetTabs = this.tabsView;
                        if (bottomSheetTabs != null) {
                            bottomSheetTabs.setupTab(tabPreview.tabDrawable);
                        }
                        if (tabPreview.tabDrawable != this.openingTab) {
                            RectF rectF6 = this.rect2;
                            if (rectF6.top > fHeight || rectF6.bottom < BitmapDescriptorFactory.HUE_RED) {
                                f4 = fDp;
                                i6 = i12;
                                i5 = i13;
                                i3 = i7;
                                f3 = fLerp;
                                f2 = fDp2;
                            } else {
                                canvas.save();
                                tabPreview.clickBounds.set(this.rect2);
                                tabPreview.matrix.reset();
                                tabPreview.src[0] = this.rect2.left;
                                tabPreview.src[1] = this.rect2.top;
                                tabPreview.src[2] = this.rect2.right;
                                tabPreview.src[3] = this.rect2.top;
                                tabPreview.src[4] = this.rect2.right;
                                float[] fArr = tabPreview.src;
                                RectF rectF7 = this.rect2;
                                fArr[5] = rectF7.top + (rectF7.height() * 1.0f);
                                tabPreview.src[6] = this.rect2.left;
                                float[] fArr2 = tabPreview.src;
                                RectF rectF8 = this.rect2;
                                fArr2[7] = rectF8.top + (rectF8.height() * 1.0f);
                                tabPreview.dst[0] = this.rect2.left;
                                tabPreview.dst[1] = this.rect2.top - AndroidUtilities.dp(BitmapDescriptorFactory.HUE_RED);
                                tabPreview.dst[2] = this.rect2.right;
                                tabPreview.dst[3] = this.rect2.top - AndroidUtilities.dp(BitmapDescriptorFactory.HUE_RED);
                                float f13 = (1.0f - f9) * f8;
                                float f14 = fLerp;
                                tabPreview.dst[4] = this.rect2.centerX() + ((this.rect2.width() / 2.0f) * AndroidUtilities.lerp(1.0f, 0.83f, f13));
                                tabPreview.dst[5] = (this.rect2.top - AndroidUtilities.dp(BitmapDescriptorFactory.HUE_RED)) + (((this.rect2.height() * 1.0f) + AndroidUtilities.dp(BitmapDescriptorFactory.HUE_RED)) * AndroidUtilities.lerp(1.0f, 0.6f, f13));
                                tabPreview.dst[6] = this.rect2.centerX() - ((this.rect2.width() / 2.0f) * AndroidUtilities.lerp(1.0f, 0.83f, f13));
                                tabPreview.dst[7] = (this.rect2.top - AndroidUtilities.dp(BitmapDescriptorFactory.HUE_RED)) + (((this.rect2.height() * 1.0f) + AndroidUtilities.dp(BitmapDescriptorFactory.HUE_RED)) * AndroidUtilities.lerp(1.0f, 0.6f, f13));
                                tabPreview.matrix.setPolyToPoly(tabPreview.src, 0, tabPreview.dst, 0, 4);
                                canvas.concat(tabPreview.matrix);
                                RectF rectF9 = this.rect2;
                                BottomSheetTabs.TabDrawable tabDrawable5 = tabPreview.tabDrawable;
                                float fLerp2 = tabDrawable5 == this.openingTab ? 1.0f : AndroidUtilities.lerp(tabDrawable5.getAlpha(), 1.0f, this.openProgress);
                                if (tabPreview.tabDrawable == this.openingTab) {
                                    f13 = 1.0f;
                                }
                                float fLerp3 = AndroidUtilities.lerp(Utilities.clamp01((position - f7) + 2.0f), 1.0f, Utilities.clamp01((f8 - 0.1f) / 0.8f));
                                i6 = i12;
                                i5 = i13;
                                f3 = f14;
                                boolean z2 = z;
                                float f15 = fLerp2;
                                i3 = i7;
                                float f16 = f13;
                                f2 = fDp2;
                                f4 = fDp;
                                tabPreview.draw(canvas, rectF9, z2, f15, f16, f9, fLerp3);
                                Sheet sheet2 = this.openingSheet;
                                if (sheet2 != null && tabPreview.tabDrawable == this.openingTab) {
                                    SheetView sheetViewMo1096getWindowView = sheet2.mo1096getWindowView();
                                    RectF rectF10 = this.rect2;
                                    sheetViewMo1096getWindowView.drawInto(canvas, rectF10, 1.0f, rectF10, f9, true);
                                }
                                canvas.restore();
                            }
                            i10 = i5;
                        }
                    }
                    i9 = i6 + 1;
                    fDp = f4;
                    fLerp = f3;
                    iHeight = i4;
                    iMin = i3;
                    fDp2 = f2;
                    f = 1.0f;
                } else {
                    i10 = i9;
                    i6 = i10;
                    f3 = fLerp;
                    i4 = iHeight;
                    i3 = iMin;
                    f2 = fDp2;
                    f4 = fDp;
                    i9 = i6 + 1;
                    fDp = f4;
                    fLerp = f3;
                    iHeight = i4;
                    iMin = i3;
                    fDp2 = f2;
                    f = 1.0f;
                }
            }
            float f17 = fDp;
            canvas.save();
            if (this.gradientClip == null) {
                this.gradientClip = new GradientClip();
            }
            RectF rectF11 = AndroidUtilities.rectTmp;
            rectF11.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, fWidth, f17);
            this.gradientClip.draw(canvas, rectF11, true, this.openProgress);
            canvas.restore();
            canvas.restore();
            if (this.closeAllButtonText == null) {
                this.closeAllButtonText = new Text(LocaleController.getString(R.string.BotCloseAllTabs), 14.0f, AndroidUtilities.bold());
            }
            if (this.closeAllButtonBackground == null || this.closeAllButtonBackgroundDark != Theme.isCurrentThemeDark()) {
                boolean zIsCurrentThemeDark = Theme.isCurrentThemeDark();
                this.closeAllButtonBackgroundDark = zIsCurrentThemeDark;
                if (zIsCurrentThemeDark) {
                    i = 553648127;
                    i2 = 872415231;
                } else {
                    i = 771751936;
                    i2 = 1140850688;
                }
                this.closeAllButtonBackground = Theme.createSimpleSelectorRoundRectDrawable(64, i, i2);
                this.closeAllButtonBackground.setCallback(this);
            }
            float currentWidth = this.closeAllButtonText.getCurrentWidth() + AndroidUtilities.dp(24.0f);
            float f18 = (fWidth - currentWidth) / 2.0f;
            this.closeAllButtonBackground.setBounds((int) f18, (int) ((f17 - (AndroidUtilities.dp(95.0f) / 2.0f)) - AndroidUtilities.dp(14.0f)), (int) ((fWidth + currentWidth) / 2.0f), (int) ((f17 - (AndroidUtilities.dp(95.0f) / 2.0f)) + AndroidUtilities.dp(14.0f)));
            this.closeAllButtonBackground.setAlpha((int) (this.openProgress * 255.0f));
            this.closeAllButtonBackground.draw(canvas);
            this.closeAllButtonText.draw(canvas, f18 + AndroidUtilities.dp(12.0f), f17 - (AndroidUtilities.dp(95.0f) / 2.0f), -1, this.openProgress);
            canvas.restore();
        }
    }

    private float getScrollStep() {
        return AndroidUtilities.dp(200.0f);
    }

    private TabPreview getTabAt(float f, float f2) {
        if (this.openProgress < 1.0f) {
            return null;
        }
        for (int size = this.tabs.size() - 1; size >= 0; size--) {
            TabPreview tabPreview = (TabPreview) this.tabs.get(size);
            if (Math.abs(tabPreview.dismissProgress) < 0.4f && tabPreview.clickBounds.contains(f, f2)) {
                return tabPreview;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$animateOpen$6(ValueAnimator valueAnimator) {
        this.openProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$dismissSheet$3(Sheet sheet) {
        if (sheet == null || sheet.mo1096getWindowView() == null) {
            return;
        }
        sheet.mo1096getWindowView().setDrawingFromOverlay(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$dismissSheet$4(ValueAnimator valueAnimator) {
        this.dismissProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$dispatchTouchEvent$0(TabPreview tabPreview, Boolean bool) {
        if (!bool.booleanValue()) {
            tabPreview.animateDismiss(BitmapDescriptorFactory.HUE_RED);
            return;
        }
        tabPreview.animateDismiss(tabPreview.dismissProgress < BitmapDescriptorFactory.HUE_RED ? -1.0f : 1.0f);
        scrollTo(Utilities.clamp(this.offset, getScrollMax(false), getScrollMin(false)));
        if (this.tabsView.getTabs().isEmpty()) {
            closeTabsView();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$dispatchTouchEvent$1(TabPreview tabPreview, Boolean bool) {
        if (!bool.booleanValue()) {
            tabPreview.animateDismiss(BitmapDescriptorFactory.HUE_RED);
            return;
        }
        tabPreview.animateDismiss(1.0f);
        scrollTo(Utilities.clamp(this.offset, getScrollMax(false), getScrollMin(false)));
        if (this.tabsView.getTabs().isEmpty()) {
            closeTabsView();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$scrollTo$5(ValueAnimator valueAnimator) {
        this.offset = ((Float) valueAnimator.getAnimatedValue()).floatValue();
    }

    private void prepareBlur(View view) {
        AndroidUtilities.makingGlobalBlurBitmap = true;
        this.blurBitmap = AndroidUtilities.makeBlurBitmap(view, 14.0f, 14);
        AndroidUtilities.makingGlobalBlurBitmap = false;
        Paint paint = new Paint(1);
        this.blurBitmapPaint = paint;
        Bitmap bitmap = this.blurBitmap;
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        BitmapShader bitmapShader = new BitmapShader(bitmap, tileMode, tileMode);
        this.blurBitmapShader = bitmapShader;
        paint.setShader(bitmapShader);
        ColorMatrix colorMatrix = new ColorMatrix();
        AndroidUtilities.adjustSaturationColorMatrix(colorMatrix, Theme.isCurrentThemeDark() ? 0.08f : 0.25f);
        this.blurBitmapPaint.setColorFilter(new ColorMatrixColorFilter(colorMatrix));
        this.blurMatrix = new Matrix();
    }

    private void prepareTabs() {
        BottomSheetTabs.TabDrawable tabDrawable;
        ArrayList<BottomSheetTabs.WebTabData> tabs = this.tabsView.getTabs();
        ArrayList<BottomSheetTabs.TabDrawable> tabDrawables = this.tabsView.getTabDrawables();
        for (int size = tabs.size() - 1; size >= 0; size--) {
            BottomSheetTabs.WebTabData webTabData = tabs.get(size);
            int i = 0;
            while (true) {
                if (i >= tabDrawables.size()) {
                    tabDrawable = null;
                    break;
                }
                tabDrawable = tabDrawables.get(i);
                if (tabDrawable.tab == webTabData) {
                    break;
                } else {
                    i++;
                }
            }
            if (tabDrawable != null) {
                this.tabs.add(new TabPreview(this, webTabData, tabDrawable));
            }
        }
        this.animatedCount.set(this.tabs.size(), true);
        setScrollOffset(getScrollMax());
    }

    public static void renderHardwareViewToBitmap(View view, float f, final Utilities.Callback callback) {
        if (view == null || callback == null || view.getWidth() <= 0 || view.getHeight() <= 0) {
            if (callback != null) {
                callback.run(null);
                return;
            }
            return;
        }
        final SurfaceTexture surfaceTexture = new SurfaceTexture(false);
        surfaceTexture.setDefaultBufferSize(view.getWidth(), view.getHeight());
        final Surface surface = new Surface(surfaceTexture);
        final Bitmap bitmapCreateBitmap = Bitmap.createBitmap(view.getWidth(), view.getHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvasLockHardwareCanvas = surface.lockHardwareCanvas();
        canvasLockHardwareCanvas.translate(BitmapDescriptorFactory.HUE_RED, f);
        view.draw(canvasLockHardwareCanvas);
        surface.unlockCanvasAndPost(canvasLockHardwareCanvas);
        PixelCopy.request(surface, bitmapCreateBitmap, new PixelCopy.OnPixelCopyFinishedListener() { // from class: org.telegram.ui.ActionBar.BottomSheetTabsOverlay.5
            @Override // android.view.PixelCopy.OnPixelCopyFinishedListener
            public void onPixelCopyFinished(int i) {
                Utilities.Callback callback2;
                Bitmap bitmap;
                if (i == 0) {
                    callback2 = callback;
                    bitmap = bitmapCreateBitmap;
                } else {
                    bitmapCreateBitmap.recycle();
                    callback2 = callback;
                    bitmap = null;
                }
                callback2.run(bitmap);
                surface.release();
                surfaceTexture.release();
            }
        }, new Handler());
    }

    private void scrollTo(float f) {
        ValueAnimator valueAnimator = this.scrollAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.scrollAnimator = null;
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.offset, f);
        this.scrollAnimator = valueAnimatorOfFloat;
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.ActionBar.BottomSheetTabsOverlay$$ExternalSyntheticLambda6
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                this.f$0.lambda$scrollTo$5(valueAnimator2);
            }
        });
        this.scrollAnimator.setDuration(250L);
        this.scrollAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
        this.scrollAnimator.start();
    }

    public void closeTabsView() {
        animateOpen(false);
    }

    @Override // android.view.View
    public void computeScroll() {
        if (this.scroller.computeScrollOffset()) {
            setScrollOffset(this.scroller.getCurrY() / getScrollStep());
            postInvalidateOnAnimation();
        }
    }

    public boolean dismissSheet(final Sheet sheet) {
        ValueAnimator valueAnimator;
        if (sheet == null || this.tabsView == null) {
            return false;
        }
        if ((this.dismissingSheet != null || this.openingSheet != null) && (valueAnimator = this.animator) != null) {
            valueAnimator.end();
            this.animator = null;
        }
        this.dismissingSheet = sheet;
        sheet.setLastVisible(false);
        ValueAnimator valueAnimator2 = this.animator;
        if (valueAnimator2 != null) {
            valueAnimator2.cancel();
        }
        BottomSheetTabs.WebTabData webTabDataSaveState = sheet.saveState();
        this.dismissingTab = this.tabsView.pushTab(webTabDataSaveState);
        post(new Runnable() { // from class: org.telegram.ui.ActionBar.BottomSheetTabsOverlay$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                BottomSheetTabsOverlay.lambda$dismissSheet$3(sheet);
            }
        });
        invalidate();
        this.dismissProgress = BitmapDescriptorFactory.HUE_RED;
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
        this.animator = valueAnimatorOfFloat;
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.ActionBar.BottomSheetTabsOverlay$$ExternalSyntheticLambda3
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator3) {
                this.f$0.lambda$dismissSheet$4(valueAnimator3);
            }
        });
        this.animator.addListener(new AnonymousClass2(webTabDataSaveState, sheet));
        AndroidUtilities.applySpring(this.animator, 220.0d, 30.0d, 1.0d);
        this.animator.setDuration((long) (r12.getDuration() * 1.1f));
        this.animator.start();
        this.slowerDismiss = false;
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        drawDismissingTab(canvas);
        drawTabsPreview(canvas);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if ((AndroidUtilities.isTablet() && motionEvent.getAction() == 0 && !this.tabsViewBounds.contains(motionEvent.getX(), motionEvent.getY())) || this.openProgress <= BitmapDescriptorFactory.HUE_RED) {
            return false;
        }
        if (this.velocityTracker == null) {
            this.velocityTracker = VelocityTracker.obtain();
        }
        this.velocityTracker.addMovement(motionEvent);
        if (motionEvent.getAction() == 0) {
            this.startTime = System.currentTimeMillis();
            this.startX = motionEvent.getX();
            this.startY = motionEvent.getY();
            this.pressTab = getTabAt(motionEvent.getX(), motionEvent.getY());
            Drawable drawable = this.closeAllButtonBackground;
            boolean z = drawable != null && drawable.getBounds().contains((int) motionEvent.getX(), (int) motionEvent.getY());
            this.hitCloseAllButton = z;
            if (z) {
                this.pressTab = null;
            }
            Drawable drawable2 = this.closeAllButtonBackground;
            if (drawable2 != null) {
                if (Build.VERSION.SDK_INT >= 21) {
                    drawable2.setHotspot(motionEvent.getX(), motionEvent.getY());
                }
                this.closeAllButtonBackground.setState(this.hitCloseAllButton ? new int[]{android.R.attr.state_pressed, android.R.attr.state_enabled} : new int[0]);
            }
            this.verticallyScrolling = false;
            this.horizontallySwiping = false;
            this.pressTabClose = false;
            TabPreview tabPreview = this.pressTab;
            if (tabPreview != null) {
                tabPreview.cancelDismissAnimator();
                boolean zContains = this.pressTab.tabDrawable.closeRipple.getBounds().contains((int) (motionEvent.getX() - this.pressTab.clickBounds.left), (int) ((motionEvent.getY() - this.pressTab.clickBounds.top) - AndroidUtilities.dp(24.0f)));
                this.pressTabClose = zContains;
                if (Build.VERSION.SDK_INT >= 21 && zContains) {
                    this.pressTab.tabDrawable.closeRipple.setHotspot((int) (motionEvent.getX() - this.rect.left), (int) (motionEvent.getY() - this.rect.centerY()));
                }
                this.pressTab.setPressed(!this.pressTabClose);
                this.pressTab.tabDrawable.closeRipple.setState(this.pressTabClose ? new int[]{android.R.attr.state_pressed, android.R.attr.state_enabled} : new int[0]);
            }
            this.lastY = motionEvent.getY();
            if (!this.scroller.isFinished()) {
                this.scroller.abortAnimation();
            }
            ValueAnimator valueAnimator = this.scrollAnimator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
                this.scrollAnimator = null;
            }
        } else if (motionEvent.getAction() == 2) {
            TabPreview tabPreview2 = this.pressTab;
            if (tabPreview2 != null) {
                if (tabPreview2.isPressed()) {
                    if (!this.horizontallySwiping && !this.verticallyScrolling && MathUtils.distance(this.startX, motionEvent.getY(), motionEvent.getX(), motionEvent.getY()) > AndroidUtilities.touchSlop) {
                        this.horizontallySwiping = true;
                    }
                    if (!this.verticallyScrolling && !this.horizontallySwiping && MathUtils.distance(motionEvent.getX(), this.startY, motionEvent.getX(), motionEvent.getY()) > AndroidUtilities.touchSlop) {
                        if (!this.scroller.isFinished()) {
                            this.scroller.abortAnimation();
                        }
                        ValueAnimator valueAnimator2 = this.scrollAnimator;
                        if (valueAnimator2 != null) {
                            valueAnimator2.cancel();
                            this.scrollAnimator = null;
                        }
                        this.verticallyScrolling = true;
                    }
                    if (this.tabsView != null && (this.verticallyScrolling || this.horizontallySwiping)) {
                        this.pressTab.setPressed(false);
                        this.pressTab.cancelDismissAnimator();
                    }
                } else {
                    if (!this.pressTabClose && !this.horizontallySwiping && !this.verticallyScrolling && MathUtils.distance(this.startX, motionEvent.getY(), motionEvent.getX(), motionEvent.getY()) > AndroidUtilities.touchSlop) {
                        this.horizontallySwiping = true;
                    }
                    if (!this.pressTabClose && !this.verticallyScrolling && !this.horizontallySwiping && MathUtils.distance(motionEvent.getX(), this.startY, motionEvent.getX(), motionEvent.getY()) > AndroidUtilities.touchSlop) {
                        if (!this.scroller.isFinished()) {
                            this.scroller.abortAnimation();
                        }
                        ValueAnimator valueAnimator3 = this.scrollAnimator;
                        if (valueAnimator3 != null) {
                            valueAnimator3.cancel();
                            this.scrollAnimator = null;
                        }
                        this.verticallyScrolling = true;
                    }
                    if (this.pressTabClose) {
                        boolean zContains2 = this.pressTab.tabDrawable.closeRipple.getBounds().contains((int) (motionEvent.getX() - this.pressTab.clickBounds.left), (int) ((motionEvent.getY() - this.pressTab.clickBounds.top) - AndroidUtilities.dp(24.0f)));
                        this.pressTabClose = zContains2;
                        if (!zContains2) {
                            this.pressTab.tabDrawable.closeRipple.setState(new int[0]);
                        }
                    }
                }
                if (!this.pressTab.isPressed()) {
                    if (this.horizontallySwiping) {
                        this.pressTab.dismissProgress = (motionEvent.getX() - this.startX) / AndroidUtilities.dp(300.0f);
                    } else if (this.verticallyScrolling) {
                        float y = motionEvent.getY() - this.lastY;
                        if (this.offset < getScrollMin()) {
                            y *= 1.0f - (Utilities.clamp((getScrollMin() - this.offset) / getScrollStep(), 1.0f, BitmapDescriptorFactory.HUE_RED) * 0.5f);
                        }
                        setScrollOffset(Utilities.clamp(((getScrollOffset() * getScrollStep()) - y) / getScrollStep(), getScrollMax(), getScrollMin() - (getScrollStep() * 1.4f)));
                        invalidate();
                    }
                }
                invalidate();
            }
            Drawable drawable3 = this.closeAllButtonBackground;
            if (drawable3 != null && this.hitCloseAllButton) {
                boolean z2 = this.pressTab == null && drawable3.getBounds().contains((int) motionEvent.getX(), (int) motionEvent.getY());
                this.hitCloseAllButton = z2;
                if (!z2) {
                    this.closeAllButtonBackground.setState(new int[0]);
                }
            }
            this.lastY = motionEvent.getY();
        } else if (motionEvent.getAction() == 1) {
            TabPreview tabPreview3 = this.pressTab;
            if (tabPreview3 != null) {
                if (this.tabsView == null || Math.abs(tabPreview3.dismissProgress) <= 0.4f) {
                    this.pressTab.animateDismiss(BitmapDescriptorFactory.HUE_RED);
                    if (this.tabsView != null && this.pressTab.isPressed()) {
                        closeTabsView();
                        TabPreview tabPreview4 = this.pressTab;
                        tabPreview4.webView = null;
                        this.tabsView.openTab(tabPreview4.tabData);
                    } else if (this.verticallyScrolling) {
                        if (this.offset < getScrollMin() - (getScrollWindow() * 0.15f)) {
                            closeTabsView();
                        } else if (this.offset < getScrollMin()) {
                            scrollTo(getScrollMin());
                        } else {
                            this.velocityTracker.computeCurrentVelocity(1000, this.maximumVelocity);
                            float yVelocity = this.velocityTracker.getYVelocity();
                            if (Math.abs(yVelocity) > this.minimumVelocity) {
                                this.scroller.fling(0, (int) (getScrollOffset() * getScrollStep()), 0, (int) (-yVelocity), 0, 0, (int) (getScrollMin() * getScrollStep()), (int) (getScrollMax() * getScrollStep()), 0, (int) (getScrollStep() * 0.1f));
                            } else {
                                this.scroller.startScroll(0, (int) (getScrollOffset() * getScrollStep()), 0, 0, 0);
                            }
                        }
                        this.velocityTracker.recycle();
                        this.velocityTracker = null;
                        postInvalidateOnAnimation();
                    }
                } else {
                    final TabPreview tabPreview5 = this.pressTab;
                    this.tabsView.removeTab(tabPreview5.tabData, new Utilities.Callback() { // from class: org.telegram.ui.ActionBar.BottomSheetTabsOverlay$$ExternalSyntheticLambda4
                        @Override // org.telegram.messenger.Utilities.Callback
                        public final void run(Object obj) {
                            this.f$0.lambda$dispatchTouchEvent$0(tabPreview5, (Boolean) obj);
                        }
                    });
                }
                this.pressTab.setPressed(false);
                if (this.pressTabClose) {
                    this.pressTabClose = this.pressTab.tabDrawable.closeRipple.getBounds().contains((int) (motionEvent.getX() - this.pressTab.clickBounds.left), (int) ((motionEvent.getY() - this.pressTab.clickBounds.top) - AndroidUtilities.dp(24.0f)));
                }
                if (this.pressTabClose) {
                    final TabPreview tabPreview6 = this.pressTab;
                    this.tabsView.removeTab(tabPreview6.tabData, new Utilities.Callback() { // from class: org.telegram.ui.ActionBar.BottomSheetTabsOverlay$$ExternalSyntheticLambda5
                        @Override // org.telegram.messenger.Utilities.Callback
                        public final void run(Object obj) {
                            this.f$0.lambda$dispatchTouchEvent$1(tabPreview6, (Boolean) obj);
                        }
                    });
                }
                this.pressTab.tabDrawable.closeRipple.setState(new int[0]);
            } else {
                if (this.hitCloseAllButton) {
                    this.tabsView.removeAll();
                } else if (MathUtils.distance(this.startX, this.startY, motionEvent.getX(), motionEvent.getY()) <= AndroidUtilities.touchSlop && !this.verticallyScrolling && !this.horizontallySwiping && System.currentTimeMillis() - this.startTime <= ViewConfiguration.getTapTimeout() * 1.2f) {
                }
                closeTabsView();
            }
            this.pressTab = null;
            this.pressTabClose = false;
            VelocityTracker velocityTracker = this.velocityTracker;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.velocityTracker = null;
            }
            this.hitCloseAllButton = false;
            Drawable drawable4 = this.closeAllButtonBackground;
            if (drawable4 != null) {
                drawable4.setState(new int[0]);
            }
        } else if (motionEvent.getAction() == 3) {
            TabPreview tabPreview7 = this.pressTab;
            if (tabPreview7 != null) {
                tabPreview7.animateDismiss(BitmapDescriptorFactory.HUE_RED);
                this.pressTab.setPressed(false);
                this.pressTab.tabDrawable.closeRipple.setState(new int[0]);
            }
            this.pressTab = null;
            this.pressTabClose = false;
            VelocityTracker velocityTracker2 = this.velocityTracker;
            if (velocityTracker2 != null) {
                velocityTracker2.recycle();
                this.velocityTracker = null;
            }
            this.hitCloseAllButton = false;
            Drawable drawable5 = this.closeAllButtonBackground;
            if (drawable5 != null) {
                drawable5.setState(new int[0]);
            }
        }
        return true;
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j) {
        return false;
    }

    public float getScrollMax() {
        return getScrollMax(true);
    }

    public float getScrollMax(boolean z) {
        return (getScrollRange(z) - getScrollWindow(z)) - ((getScrollWindow(z) / 3.0f) * Utilities.clamp(4.0f - getScrollRange(z), 0.5f, BitmapDescriptorFactory.HUE_RED));
    }

    public float getScrollMin() {
        return getScrollMin(true);
    }

    public float getScrollMin(boolean z) {
        return ((-getScrollWindow()) / 3.0f) * Utilities.clamp(getScrollRange(z), 1.0f, BitmapDescriptorFactory.HUE_RED);
    }

    public float getScrollOffset() {
        return this.offset;
    }

    public float getScrollRange() {
        return getScrollRange(true);
    }

    public float getScrollRange(boolean z) {
        float f = BitmapDescriptorFactory.HUE_RED;
        for (int i = 0; i < this.tabs.size(); i++) {
            f += ((TabPreview) this.tabs.get(i)).tabDrawable.index >= 0 ? 1.0f : BitmapDescriptorFactory.HUE_RED;
        }
        return z ? this.animatedCount.set(f) : f;
    }

    public float getScrollWindow() {
        return Math.min(3.0f, getScrollRange());
    }

    public float getScrollWindow(boolean z) {
        return Math.min(3.0f, getScrollRange(z));
    }

    public boolean onBackPressed() {
        if (!this.isOpen) {
            return false;
        }
        closeTabsView();
        return true;
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i2) + AndroidUtilities.navigationBarHeight, 1073741824));
    }

    public void openTabsView() {
        BottomSheetTabs bottomSheetTabs = this.tabsView;
        if (bottomSheetTabs == null || !(bottomSheetTabs.getParent() instanceof View)) {
            return;
        }
        stopAnimations();
        View view = (View) this.tabsView.getParent();
        this.actionBarLayout = view;
        if (view != null) {
            view.getLocationOnScreen(this.pos);
        } else {
            int[] iArr = this.pos;
            iArr[1] = 0;
            iArr[0] = 0;
        }
        getLocationOnScreen(this.pos2);
        this.tabsViewBounds.set(this.pos[0] - this.pos2[0], r3[1] - r5[1], r4 + this.actionBarLayout.getWidth(), (this.pos[1] - this.pos2[1]) + this.actionBarLayout.getHeight());
        prepareBlur(this.actionBarLayout);
        clearTabs();
        prepareTabs();
        animateOpen(true);
    }

    public void setScrollOffset(float f) {
        this.offset = f;
    }

    public void setSlowerDismiss(boolean z) {
        this.slowerDismiss = z;
    }

    public void setTabsView(BottomSheetTabs bottomSheetTabs) {
        this.tabsView = bottomSheetTabs;
    }

    public void stopAnimations() {
        ValueAnimator valueAnimator = this.animator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.animator = null;
        }
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return drawable == this.closeAllButtonBackground || super.verifyDrawable(drawable);
    }
}
