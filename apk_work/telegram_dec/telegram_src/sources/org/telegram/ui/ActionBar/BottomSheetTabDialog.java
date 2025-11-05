package org.telegram.ui.ActionBar;

import android.app.Dialog;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.widget.FrameLayout;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.R;
import org.telegram.ui.ActionBar.BottomSheetTabsOverlay;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.LaunchActivity;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes4.dex */
public class BottomSheetTabDialog extends Dialog {
    private boolean attached;
    public final View navigationBar;
    public final Paint navigationBarPaint;
    public final BottomSheetTabsOverlay.Sheet sheet;
    public final BottomSheetTabsOverlay.SheetView sheetView;
    public final WindowView windowView;

    public static class WindowView extends FrameLayout implements BottomSheetTabsOverlay.SheetView {
        public final BottomSheetTabsOverlay.SheetView sheetView;

        public WindowView(BottomSheetTabsOverlay.SheetView sheetView) {
            super(sheetView.getContext());
            this.sheetView = sheetView;
        }

        @Override // org.telegram.ui.ActionBar.BottomSheetTabsOverlay.SheetView
        public float drawInto(Canvas canvas, RectF rectF, float f, RectF rectF2, float f2, boolean z) {
            return this.sheetView.drawInto(canvas, rectF, f, rectF2, f2, z);
        }

        @Override // org.telegram.ui.ActionBar.BottomSheetTabsOverlay.SheetView
        public RectF getRect() {
            return this.sheetView.getRect();
        }

        public void putView() {
            View view = (View) this.sheetView;
            AndroidUtilities.removeFromParent(view);
            addView(view, LayoutHelper.createFrame(-1, -1, R.styleable.AppCompatTheme_windowActionModeOverlay));
        }

        @Override // org.telegram.ui.ActionBar.BottomSheetTabsOverlay.SheetView
        public void setDrawingFromOverlay(boolean z) {
            this.sheetView.setDrawingFromOverlay(z);
        }
    }

    public BottomSheetTabDialog(BottomSheetTabsOverlay.Sheet sheet) {
        super(sheet.mo1096getWindowView().getContext(), R.style.TransparentDialog);
        Paint paint = new Paint(1);
        this.navigationBarPaint = paint;
        this.sheet = sheet;
        BottomSheetTabsOverlay.SheetView sheetViewMo1096getWindowView = sheet.mo1096getWindowView();
        this.sheetView = sheetViewMo1096getWindowView;
        View view = new View(getContext()) { // from class: org.telegram.ui.ActionBar.BottomSheetTabDialog.1
            @Override // android.view.View
            protected void dispatchDraw(Canvas canvas) {
                canvas.drawRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getWidth(), getHeight(), BottomSheetTabDialog.this.navigationBarPaint);
            }

            @Override // android.view.View
            protected void onMeasure(int i, int i2) {
                setMeasuredDimension(View.MeasureSpec.getSize(i), AndroidUtilities.navigationBarHeight);
                setTranslationY(AndroidUtilities.navigationBarHeight);
            }
        };
        this.navigationBar = view;
        paint.setColor(Theme.getColor(Theme.key_windowBackgroundGray));
        WindowView windowView = new WindowView(sheetViewMo1096getWindowView);
        this.windowView = windowView;
        setContentView(windowView, new ViewGroup.LayoutParams(-1, -1));
        windowView.addView(view, LayoutHelper.createFrame(-1, -2, 80));
        windowView.setClipToPadding(false);
    }

    public static BottomSheetTabsOverlay.Sheet checkSheet(BottomSheetTabsOverlay.Sheet sheet) {
        BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
        if (safeLastFragment == null) {
            return sheet;
        }
        if (AndroidUtilities.isTablet() || sheet.hadDialog() || AndroidUtilities.hasDialogOnTop(safeLastFragment)) {
            BottomSheetTabDialog bottomSheetTabDialog = new BottomSheetTabDialog(sheet);
            if (sheet.setDialog(bottomSheetTabDialog)) {
                bottomSheetTabDialog.windowView.putView();
            }
        }
        return sheet;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ WindowInsets lambda$onCreate$0(View view, WindowInsets windowInsets) {
        view.setPadding(0, 0, 0, windowInsets.getSystemWindowInsetBottom());
        return Build.VERSION.SDK_INT >= 30 ? WindowInsets.CONSUMED : windowInsets.consumeSystemWindowInsets();
    }

    public void attach() {
        if (this.attached) {
            return;
        }
        this.attached = true;
        try {
            super.show();
        } catch (Exception e) {
            FileLog.e(e);
        }
    }

    public void detach() {
        this.sheet.setDialog(null);
        if (this.attached) {
            this.attached = false;
            try {
                super.dismiss();
            } catch (Exception e) {
                FileLog.e(e);
            }
        }
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        this.sheet.dismiss(false);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:18:? A[RETURN, SYNTHETIC] */
    @Override // android.app.Dialog
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected void onCreate(Bundle bundle) {
        int i;
        super.onCreate(bundle);
        Window window = getWindow();
        int i2 = Build.VERSION.SDK_INT;
        if (i2 < 30) {
            i = i2 >= 21 ? -2147417856 : -2147483392;
            window.setWindowAnimations(R.style.DialogNoAnimation);
            WindowManager.LayoutParams attributes = window.getAttributes();
            attributes.width = -1;
            attributes.gravity = 51;
            attributes.dimAmount = BitmapDescriptorFactory.HUE_RED;
            attributes.flags &= -3;
            attributes.softInputMode = 16;
            attributes.height = -1;
            if (i2 >= 28) {
                attributes.layoutInDisplayCutoutMode = 1;
            }
            window.setAttributes(attributes);
            if (i2 >= 23) {
                window.setStatusBarColor(0);
            }
            this.windowView.setFitsSystemWindows(true);
            this.windowView.setSystemUiVisibility(1792);
            this.windowView.setPadding(0, 0, 0, 0);
            if (i2 < 21) {
                this.windowView.setOnApplyWindowInsetsListener(new View.OnApplyWindowInsetsListener() { // from class: org.telegram.ui.ActionBar.BottomSheetTabDialog$$ExternalSyntheticLambda0
                    @Override // android.view.View.OnApplyWindowInsetsListener
                    public final WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
                        return BottomSheetTabDialog.lambda$onCreate$0(view, windowInsets);
                    }
                });
                return;
            }
            return;
        }
        window.addFlags(i);
        window.setWindowAnimations(R.style.DialogNoAnimation);
        WindowManager.LayoutParams attributes2 = window.getAttributes();
        attributes2.width = -1;
        attributes2.gravity = 51;
        attributes2.dimAmount = BitmapDescriptorFactory.HUE_RED;
        attributes2.flags &= -3;
        attributes2.softInputMode = 16;
        attributes2.height = -1;
        if (i2 >= 28) {
        }
        window.setAttributes(attributes2);
        if (i2 >= 23) {
        }
        this.windowView.setFitsSystemWindows(true);
        this.windowView.setSystemUiVisibility(1792);
        this.windowView.setPadding(0, 0, 0, 0);
        if (i2 < 21) {
        }
    }

    public void updateNavigationBarColor() {
        int navigationBarColor = this.sheet.getNavigationBarColor(Theme.getColor(Theme.key_windowBackgroundGray));
        this.navigationBarPaint.setColor(navigationBarColor);
        this.navigationBar.invalidate();
        AndroidUtilities.setNavigationBarColor(getWindow(), navigationBarColor);
        AndroidUtilities.setLightNavigationBar(getWindow(), AndroidUtilities.computePerceivedBrightness(navigationBarColor) >= 0.721f);
        LaunchActivity.instance.checkSystemBarColors(true, true, true, false);
    }
}
