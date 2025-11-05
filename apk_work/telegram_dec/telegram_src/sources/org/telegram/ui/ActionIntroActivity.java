package org.telegram.ui;

import android.content.Context;
import android.content.Intent;
import android.graphics.Canvas;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.location.Location;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.graphics.ColorUtils;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import org.telegram.PhoneFormat.PhoneFormat;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.LocationController;
import org.telegram.messenger.MrzRecognizer;
import org.telegram.messenger.R;
import org.telegram.messenger.UserConfig;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.ActionBar.ActionBar;
import org.telegram.ui.ActionBar.AlertDialog;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.ActionBar.ThemeDescription;
import org.telegram.ui.CameraScanActivity;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.RLottieImageView;
import org.telegram.ui.Components.URLSpanNoUnderline;
import org.telegram.ui.Components.voip.CellFlickerDrawable;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes4.dex */
public class ActionIntroActivity extends BaseFragment implements LocationController.LocationFetchCallback {
    private TextView buttonTextView;
    private int[] colors;
    private String currentGroupCreateAddress;
    private String currentGroupCreateDisplayAddress;
    private Location currentGroupCreateLocation;
    private int currentType;
    private LinearLayout descriptionLayout;
    private TextView[] descriptionLines = new TextView[6];
    private TextView descriptionText;
    private TextView descriptionText2;
    private Drawable drawable2;
    private boolean flickerButton;
    private RLottieImageView imageView;
    private ActionIntroQRLoginDelegate qrLoginDelegate;
    private boolean showingAsBottomSheet;
    private TextView subtitleTextView;
    private TextView titleTextView;

    public interface ActionIntroQRLoginDelegate {
        void didFindQRCode(String str);
    }

    public ActionIntroActivity(int i) {
        this.currentType = i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$createView$0(View view, MotionEvent motionEvent) {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$1(AlertDialog alertDialog, int i) {
        presentFragment(new LoginActivity().changePhoneNumber(), true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$2(View view) {
        if (getParentActivity() == null) {
            return;
        }
        int i = this.currentType;
        if (i == 0) {
            Bundle bundle = new Bundle();
            bundle.putInt("step", 0);
            presentFragment(new ChannelCreateActivity(bundle), true);
            return;
        }
        if (i == 3) {
            AlertDialog.Builder builder = new AlertDialog.Builder(getParentActivity());
            builder.setTitle(LocaleController.getString(R.string.PhoneNumberChangeTitle));
            builder.setMessage(LocaleController.getString(R.string.PhoneNumberAlert));
            builder.setPositiveButton(LocaleController.getString(R.string.Change), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.ActionIntroActivity$$ExternalSyntheticLambda7
                @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                public final void onClick(AlertDialog alertDialog, int i2) {
                    this.f$0.lambda$createView$1(alertDialog, i2);
                }
            });
            builder.setNegativeButton(LocaleController.getString(R.string.Cancel), null);
            showDialog(builder.create());
            return;
        }
        if (i != 5) {
            if (i != 6) {
                return;
            }
            presentFragment(new PasscodeActivity(1), true);
        } else {
            if (getParentActivity() == null) {
                return;
            }
            if (Build.VERSION.SDK_INT < 23 || getParentActivity().checkSelfPermission("android.permission.CAMERA") == 0) {
                processOpenQrReader();
            } else {
                getParentActivity().requestPermissions(new String[]{"android.permission.CAMERA"}, 34);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$3(View view) {
        if (this.imageView.getAnimatedDrawable().isRunning()) {
            return;
        }
        this.imageView.getAnimatedDrawable().setCurrentFrame(0, false);
        this.imageView.playAnimation();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$4(View view) {
        if (this.imageView.getAnimatedDrawable().isRunning()) {
            return;
        }
        this.imageView.getAnimatedDrawable().setCurrentFrame(0, false);
        this.imageView.playAnimation();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$5(View view) {
        getParentLayout().closeLastFragment(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onRequestPermissionsResultFragment$6(AlertDialog alertDialog, int i) {
        try {
            Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
            intent.setData(Uri.parse("package:" + ApplicationLoader.applicationContext.getPackageName()));
            getParentActivity().startActivity(intent);
        } catch (Exception e) {
            FileLog.e(e);
        }
    }

    private void processOpenQrReader() {
        CameraScanActivity.showAsSheet((BaseFragment) this, false, 1, new CameraScanActivity.CameraScanActivityDelegate() { // from class: org.telegram.ui.ActionIntroActivity.4
            @Override // org.telegram.ui.CameraScanActivity.CameraScanActivityDelegate
            public /* synthetic */ void didFindMrzInfo(MrzRecognizer.Result result) {
                CameraScanActivity.CameraScanActivityDelegate.CC.$default$didFindMrzInfo(this, result);
            }

            @Override // org.telegram.ui.CameraScanActivity.CameraScanActivityDelegate
            public void didFindQr(String str) {
                ActionIntroActivity.this.finishFragment(false);
                ActionIntroActivity.this.qrLoginDelegate.didFindQRCode(str);
            }

            @Override // org.telegram.ui.CameraScanActivity.CameraScanActivityDelegate
            public /* synthetic */ String getSubtitleText() {
                return CameraScanActivity.CameraScanActivityDelegate.CC.$default$getSubtitleText(this);
            }

            @Override // org.telegram.ui.CameraScanActivity.CameraScanActivityDelegate
            public /* synthetic */ void onDismiss() {
                CameraScanActivity.CameraScanActivityDelegate.CC.$default$onDismiss(this);
            }

            @Override // org.telegram.ui.CameraScanActivity.CameraScanActivityDelegate
            public /* synthetic */ boolean processQr(String str, Runnable runnable) {
                return CameraScanActivity.CameraScanActivityDelegate.CC.$default$processQr(this, str, runnable);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateColors() {
        int[] iArr = this.colors;
        if (iArr == null || this.imageView == null) {
            return;
        }
        iArr[0] = 3355443;
        iArr[1] = Theme.getColor(Theme.key_windowBackgroundWhiteBlackText);
        int[] iArr2 = this.colors;
        iArr2[2] = 16777215;
        int i = Theme.key_windowBackgroundWhite;
        iArr2[3] = Theme.getColor(i);
        int[] iArr3 = this.colors;
        iArr3[4] = 5285866;
        iArr3[5] = Theme.getColor(Theme.key_featuredStickers_addButton);
        int[] iArr4 = this.colors;
        iArr4[6] = 2170912;
        iArr4[7] = Theme.getColor(i);
        this.imageView.replaceColors(this.colors);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:90:0x04ce  */
    @Override // org.telegram.ui.ActionBar.BaseFragment
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public View createView(Context context) {
        TextView textView;
        int iDp;
        int iDp2;
        TextView textView2;
        int i;
        int i2;
        TextView textView3;
        String string;
        TextView textView4;
        TextView textView5;
        LinearLayout.LayoutParams layoutParamsCreateLinear;
        int i3 = 2;
        ActionBar actionBar = this.actionBar;
        if (actionBar != null) {
            actionBar.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
            this.actionBar.setBackButtonImage(R.drawable.ic_ab_back);
            this.actionBar.setItemsColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText2), false);
            this.actionBar.setItemsBackgroundColor(Theme.getColor(Theme.key_actionBarWhiteSelector), false);
            this.actionBar.setCastShadows(false);
            this.actionBar.setAddToContainer(false);
            this.actionBar.setActionBarMenuOnItemClick(new ActionBar.ActionBarMenuOnItemClick() { // from class: org.telegram.ui.ActionIntroActivity.1
                @Override // org.telegram.ui.ActionBar.ActionBar.ActionBarMenuOnItemClick
                public void onItemClick(int i4) {
                    if (i4 == -1) {
                        ActionIntroActivity.this.lambda$onBackPressed$354();
                    }
                }
            });
        }
        ViewGroup viewGroup = new ViewGroup(context) { // from class: org.telegram.ui.ActionIntroActivity.2
            @Override // android.view.ViewGroup, android.view.View
            protected void onLayout(boolean z, int i4, int i5, int i6, int i7) {
                float f;
                int i8;
                View view;
                int measuredWidth;
                View view2;
                int measuredWidth2;
                float f2;
                int measuredHeight;
                TextView textView6;
                int measuredWidth3;
                TextView textView7;
                int measuredWidth4;
                int measuredHeight2;
                float f3;
                float f4;
                float measuredWidth5;
                int measuredWidth6 = 0;
                if (((BaseFragment) ActionIntroActivity.this).actionBar != null) {
                    ((BaseFragment) ActionIntroActivity.this).actionBar.layout(0, 0, i6, ((BaseFragment) ActionIntroActivity.this).actionBar.getMeasuredHeight());
                }
                int i9 = i6 - i4;
                int i10 = i7 - i5;
                int i11 = ActionIntroActivity.this.currentType;
                if (i11 != 0) {
                    if (i11 == 3) {
                        if (i6 > i7) {
                            float f5 = i10;
                            int measuredHeight3 = ((int) ((0.95f * f5) - ActionIntroActivity.this.imageView.getMeasuredHeight())) / 2;
                            int width = (int) ((getWidth() * 0.35f) - ActionIntroActivity.this.imageView.getMeasuredWidth());
                            ActionIntroActivity.this.imageView.layout(width, measuredHeight3, ActionIntroActivity.this.imageView.getMeasuredWidth() + width, ActionIntroActivity.this.imageView.getMeasuredHeight() + measuredHeight3);
                            float f6 = i9;
                            float f7 = 0.4f * f6;
                            int i12 = (int) f7;
                            int i13 = (int) (0.12f * f5);
                            ActionIntroActivity.this.titleTextView.layout(i12, i13, ActionIntroActivity.this.titleTextView.getMeasuredWidth() + i12, ActionIntroActivity.this.titleTextView.getMeasuredHeight() + i13);
                            int i14 = (int) (0.24f * f5);
                            ActionIntroActivity.this.descriptionText.layout(i12, i14, ActionIntroActivity.this.descriptionText.getMeasuredWidth() + i12, ActionIntroActivity.this.descriptionText.getMeasuredHeight() + i14);
                            float f8 = f6 * 0.6f;
                            int measuredWidth7 = (int) (((f8 - ActionIntroActivity.this.buttonTextView.getMeasuredWidth()) / 2.0f) + f7);
                            int i15 = (int) (f5 * 0.8f);
                            ActionIntroActivity.this.buttonTextView.layout(measuredWidth7, i15, ActionIntroActivity.this.buttonTextView.getMeasuredWidth() + measuredWidth7, ActionIntroActivity.this.buttonTextView.getMeasuredHeight() + i15);
                            measuredWidth4 = (int) (f7 + ((f8 - ActionIntroActivity.this.subtitleTextView.getMeasuredWidth()) / 2.0f));
                            measuredHeight2 = i15 - (ActionIntroActivity.this.subtitleTextView.getMeasuredHeight() + AndroidUtilities.dp(16.0f));
                        } else {
                            int i16 = (int) (i10 * 0.3f);
                            int measuredWidth8 = (i9 - ActionIntroActivity.this.imageView.getMeasuredWidth()) / 2;
                            ActionIntroActivity.this.imageView.layout(measuredWidth8, i16, ActionIntroActivity.this.imageView.getMeasuredWidth() + measuredWidth8, ActionIntroActivity.this.imageView.getMeasuredHeight() + i16);
                            int measuredHeight4 = i16 + ActionIntroActivity.this.imageView.getMeasuredHeight() + AndroidUtilities.dp(24.0f);
                            ActionIntroActivity.this.titleTextView.layout(0, measuredHeight4, ActionIntroActivity.this.titleTextView.getMeasuredWidth(), ActionIntroActivity.this.titleTextView.getMeasuredHeight() + measuredHeight4);
                            int textSize = (int) (measuredHeight4 + ActionIntroActivity.this.titleTextView.getTextSize() + AndroidUtilities.dp(16.0f));
                            ActionIntroActivity.this.descriptionText.layout(0, textSize, ActionIntroActivity.this.descriptionText.getMeasuredWidth(), ActionIntroActivity.this.descriptionText.getMeasuredHeight() + textSize);
                            int measuredWidth9 = (i9 - ActionIntroActivity.this.buttonTextView.getMeasuredWidth()) / 2;
                            int measuredHeight5 = (i10 - ActionIntroActivity.this.buttonTextView.getMeasuredHeight()) - AndroidUtilities.dp(48.0f);
                            ActionIntroActivity.this.buttonTextView.layout(measuredWidth9, measuredHeight5, ActionIntroActivity.this.buttonTextView.getMeasuredWidth() + measuredWidth9, ActionIntroActivity.this.buttonTextView.getMeasuredHeight() + measuredHeight5);
                            measuredWidth4 = (i9 - ActionIntroActivity.this.subtitleTextView.getMeasuredWidth()) / 2;
                            measuredHeight2 = measuredHeight5 - (ActionIntroActivity.this.subtitleTextView.getMeasuredHeight() + AndroidUtilities.dp(32.0f));
                        }
                        textView7 = ActionIntroActivity.this.subtitleTextView;
                        measuredWidth3 = ActionIntroActivity.this.subtitleTextView.getMeasuredWidth() + measuredWidth4;
                        textView6 = ActionIntroActivity.this.subtitleTextView;
                        textView7.layout(measuredWidth4, measuredHeight2, measuredWidth3, textView6.getMeasuredHeight() + measuredHeight2);
                    }
                    if (i11 != 5) {
                        if (i11 != 6) {
                            return;
                        }
                        if (i6 > i7) {
                            int measuredHeight6 = (i10 - ActionIntroActivity.this.imageView.getMeasuredHeight()) / 2;
                            float f9 = i9;
                            int measuredWidth10 = ((int) ((0.5f * f9) - ActionIntroActivity.this.imageView.getMeasuredWidth())) / 2;
                            ActionIntroActivity.this.imageView.layout(measuredWidth10, measuredHeight6, ActionIntroActivity.this.imageView.getMeasuredWidth() + measuredWidth10, ActionIntroActivity.this.imageView.getMeasuredHeight() + measuredHeight6);
                            float f10 = 0.4f * f9;
                            int i17 = (int) f10;
                            f4 = i10;
                            int i18 = (int) (0.14f * f4);
                            ActionIntroActivity.this.titleTextView.layout(i17, i18, ActionIntroActivity.this.titleTextView.getMeasuredWidth() + i17, ActionIntroActivity.this.titleTextView.getMeasuredHeight() + i18);
                            int i19 = (int) (0.31f * f4);
                            ActionIntroActivity.this.descriptionText.layout(i17, i19, ActionIntroActivity.this.descriptionText.getMeasuredWidth() + i17, ActionIntroActivity.this.descriptionText.getMeasuredHeight() + i19);
                            measuredWidth5 = f10 + (((f9 * 0.6f) - ActionIntroActivity.this.buttonTextView.getMeasuredWidth()) / 2.0f);
                            measuredWidth2 = (int) measuredWidth5;
                            f2 = f4 * 0.78f;
                            measuredHeight = (int) f2;
                        } else {
                            int i20 = (int) (i10 * 0.3f);
                            int measuredWidth11 = (i9 - ActionIntroActivity.this.imageView.getMeasuredWidth()) / 2;
                            ActionIntroActivity.this.imageView.layout(measuredWidth11, i20, ActionIntroActivity.this.imageView.getMeasuredWidth() + measuredWidth11, ActionIntroActivity.this.imageView.getMeasuredHeight() + i20);
                            int measuredHeight7 = i20 + ActionIntroActivity.this.imageView.getMeasuredHeight() + AndroidUtilities.dp(24.0f);
                            ActionIntroActivity.this.titleTextView.layout(0, measuredHeight7, ActionIntroActivity.this.titleTextView.getMeasuredWidth(), ActionIntroActivity.this.titleTextView.getMeasuredHeight() + measuredHeight7);
                            int textSize2 = (int) (measuredHeight7 + ActionIntroActivity.this.titleTextView.getTextSize() + AndroidUtilities.dp(16.0f));
                            ActionIntroActivity.this.descriptionText.layout(0, textSize2, ActionIntroActivity.this.descriptionText.getMeasuredWidth(), ActionIntroActivity.this.descriptionText.getMeasuredHeight() + textSize2);
                            measuredWidth2 = (i9 - ActionIntroActivity.this.buttonTextView.getMeasuredWidth()) / 2;
                            measuredHeight = (i10 - ActionIntroActivity.this.buttonTextView.getMeasuredHeight()) - AndroidUtilities.dp(48.0f);
                        }
                    } else if (ActionIntroActivity.this.showingAsBottomSheet) {
                        ActionIntroActivity.this.imageView.layout(0, 0, ActionIntroActivity.this.imageView.getMeasuredWidth(), ActionIntroActivity.this.imageView.getMeasuredHeight());
                        f = i10;
                        int i21 = (int) (0.403f * f);
                        ActionIntroActivity.this.titleTextView.layout(0, i21, ActionIntroActivity.this.titleTextView.getMeasuredWidth(), ActionIntroActivity.this.titleTextView.getMeasuredHeight() + i21);
                        i8 = (int) (0.631f * f);
                        measuredWidth6 = (getMeasuredWidth() - ActionIntroActivity.this.descriptionLayout.getMeasuredWidth()) / 2;
                        view = ActionIntroActivity.this.descriptionLayout;
                        measuredWidth = ActionIntroActivity.this.descriptionLayout.getMeasuredWidth() + measuredWidth6;
                        view2 = ActionIntroActivity.this.descriptionLayout;
                        view.layout(measuredWidth6, i8, measuredWidth, view2.getMeasuredHeight() + i8);
                        measuredHeight = (int) (f * 0.853f);
                        measuredWidth2 = (i9 - ActionIntroActivity.this.buttonTextView.getMeasuredWidth()) / 2;
                    } else if (i6 > i7) {
                        int measuredHeight8 = (i10 - ActionIntroActivity.this.imageView.getMeasuredHeight()) / 2;
                        ActionIntroActivity.this.imageView.layout(0, measuredHeight8, ActionIntroActivity.this.imageView.getMeasuredWidth(), ActionIntroActivity.this.imageView.getMeasuredHeight() + measuredHeight8);
                        float f11 = i9;
                        float f12 = 0.4f * f11;
                        int i22 = (int) f12;
                        f4 = i10;
                        int i23 = (int) (0.08f * f4);
                        ActionIntroActivity.this.titleTextView.layout(i22, i23, ActionIntroActivity.this.titleTextView.getMeasuredWidth() + i22, ActionIntroActivity.this.titleTextView.getMeasuredHeight() + i23);
                        float f13 = f11 * 0.6f;
                        int measuredWidth12 = (int) (((f13 - ActionIntroActivity.this.descriptionLayout.getMeasuredWidth()) / 2.0f) + f12);
                        int i24 = (int) (0.25f * f4);
                        ActionIntroActivity.this.descriptionLayout.layout(measuredWidth12, i24, ActionIntroActivity.this.descriptionLayout.getMeasuredWidth() + measuredWidth12, ActionIntroActivity.this.descriptionLayout.getMeasuredHeight() + i24);
                        measuredWidth5 = f12 + ((f13 - ActionIntroActivity.this.buttonTextView.getMeasuredWidth()) / 2.0f);
                        measuredWidth2 = (int) measuredWidth5;
                        f2 = f4 * 0.78f;
                        measuredHeight = (int) f2;
                    } else {
                        if (AndroidUtilities.displaySize.y < 1800) {
                            float f14 = i10;
                            int i25 = (int) (0.06f * f14);
                            ActionIntroActivity.this.imageView.layout(0, i25, ActionIntroActivity.this.imageView.getMeasuredWidth(), ActionIntroActivity.this.imageView.getMeasuredHeight() + i25);
                            int i26 = (int) (0.463f * f14);
                            ActionIntroActivity.this.titleTextView.layout(0, i26, ActionIntroActivity.this.titleTextView.getMeasuredWidth(), ActionIntroActivity.this.titleTextView.getMeasuredHeight() + i26);
                            f3 = f14 * 0.543f;
                        } else {
                            float f15 = i10;
                            int i27 = (int) (0.148f * f15);
                            ActionIntroActivity.this.imageView.layout(0, i27, ActionIntroActivity.this.imageView.getMeasuredWidth(), ActionIntroActivity.this.imageView.getMeasuredHeight() + i27);
                            int i28 = (int) (0.551f * f15);
                            ActionIntroActivity.this.titleTextView.layout(0, i28, ActionIntroActivity.this.titleTextView.getMeasuredWidth(), ActionIntroActivity.this.titleTextView.getMeasuredHeight() + i28);
                            f3 = f15 * 0.631f;
                        }
                        int i29 = (int) f3;
                        int measuredWidth13 = (getMeasuredWidth() - ActionIntroActivity.this.descriptionLayout.getMeasuredWidth()) / 2;
                        ActionIntroActivity.this.descriptionLayout.layout(measuredWidth13, i29, ActionIntroActivity.this.descriptionLayout.getMeasuredWidth() + measuredWidth13, ActionIntroActivity.this.descriptionLayout.getMeasuredHeight() + i29);
                        measuredWidth2 = (i9 - ActionIntroActivity.this.buttonTextView.getMeasuredWidth()) / 2;
                        measuredHeight = (int) (i10 * 0.853f);
                    }
                } else if (i6 > i7) {
                    int measuredHeight9 = (i10 - ActionIntroActivity.this.imageView.getMeasuredHeight()) / 2;
                    ActionIntroActivity.this.imageView.layout(0, measuredHeight9, ActionIntroActivity.this.imageView.getMeasuredWidth(), ActionIntroActivity.this.imageView.getMeasuredHeight() + measuredHeight9);
                    float f16 = i9;
                    float f17 = 0.4f * f16;
                    int i30 = (int) f17;
                    float f18 = i10;
                    int i31 = (int) (0.22f * f18);
                    ActionIntroActivity.this.titleTextView.layout(i30, i31, ActionIntroActivity.this.titleTextView.getMeasuredWidth() + i30, ActionIntroActivity.this.titleTextView.getMeasuredHeight() + i31);
                    int i32 = (int) (0.39f * f18);
                    ActionIntroActivity.this.descriptionText.layout(i30, i32, ActionIntroActivity.this.descriptionText.getMeasuredWidth() + i30, ActionIntroActivity.this.descriptionText.getMeasuredHeight() + i32);
                    measuredWidth2 = (int) (f17 + (((f16 * 0.6f) - ActionIntroActivity.this.buttonTextView.getMeasuredWidth()) / 2.0f));
                    f2 = f18 * 0.69f;
                    measuredHeight = (int) f2;
                } else {
                    f = i10;
                    int i33 = (int) (0.188f * f);
                    ActionIntroActivity.this.imageView.layout(0, i33, ActionIntroActivity.this.imageView.getMeasuredWidth(), ActionIntroActivity.this.imageView.getMeasuredHeight() + i33);
                    int i34 = (int) (0.651f * f);
                    ActionIntroActivity.this.titleTextView.layout(0, i34, ActionIntroActivity.this.titleTextView.getMeasuredWidth(), ActionIntroActivity.this.titleTextView.getMeasuredHeight() + i34);
                    i8 = (int) (0.731f * f);
                    view = ActionIntroActivity.this.descriptionText;
                    measuredWidth = ActionIntroActivity.this.descriptionText.getMeasuredWidth();
                    view2 = ActionIntroActivity.this.descriptionText;
                    view.layout(measuredWidth6, i8, measuredWidth, view2.getMeasuredHeight() + i8);
                    measuredHeight = (int) (f * 0.853f);
                    measuredWidth2 = (i9 - ActionIntroActivity.this.buttonTextView.getMeasuredWidth()) / 2;
                }
                textView7 = ActionIntroActivity.this.buttonTextView;
                measuredWidth3 = ActionIntroActivity.this.buttonTextView.getMeasuredWidth() + measuredWidth2;
                textView6 = ActionIntroActivity.this.buttonTextView;
                int i35 = measuredHeight;
                measuredWidth4 = measuredWidth2;
                measuredHeight2 = i35;
                textView7.layout(measuredWidth4, measuredHeight2, measuredWidth3, textView6.getMeasuredHeight() + measuredHeight2);
            }

            @Override // android.view.View
            protected void onMeasure(int i4, int i5) {
                float f;
                TextView textView6;
                TextView textView7;
                int iDp3;
                int iMakeMeasureSpec;
                int i6;
                View view;
                int iMakeMeasureSpec2;
                RLottieImageView rLottieImageView;
                float f2;
                int size = View.MeasureSpec.getSize(i4);
                int size2 = View.MeasureSpec.getSize(i5);
                if (((BaseFragment) ActionIntroActivity.this).actionBar != null) {
                    ((BaseFragment) ActionIntroActivity.this).actionBar.measure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), i5);
                }
                int i7 = ActionIntroActivity.this.currentType;
                float f3 = 50.0f;
                if (i7 == 0) {
                    RLottieImageView rLottieImageView2 = ActionIntroActivity.this.imageView;
                    if (size > size2) {
                        f = size;
                        rLottieImageView2.measure(View.MeasureSpec.makeMeasureSpec((int) (0.45f * f), 1073741824), View.MeasureSpec.makeMeasureSpec((int) (size2 * 0.68f), 1073741824));
                        textView6 = ActionIntroActivity.this.titleTextView;
                        int i8 = (int) (f * 0.6f);
                        textView6.measure(View.MeasureSpec.makeMeasureSpec(i8, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 0));
                        ActionIntroActivity.this.descriptionText.measure(View.MeasureSpec.makeMeasureSpec(i8, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 0));
                        textView7 = ActionIntroActivity.this.buttonTextView;
                        iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i8, 1073741824);
                        f3 = 42.0f;
                    } else {
                        rLottieImageView2.measure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec((int) (size2 * 0.399f), 1073741824));
                        ActionIntroActivity.this.titleTextView.measure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 0));
                        ActionIntroActivity.this.descriptionText.measure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 0));
                        textView7 = ActionIntroActivity.this.buttonTextView;
                        iDp3 = AndroidUtilities.dp(72.0f);
                        iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(size - iDp3, 1073741824);
                    }
                } else {
                    if (i7 != 3) {
                        if (i7 != 5) {
                            if (i7 == 6) {
                                if (ActionIntroActivity.this.currentType == 6) {
                                    rLottieImageView = ActionIntroActivity.this.imageView;
                                    f2 = 140.0f;
                                } else {
                                    rLottieImageView = ActionIntroActivity.this.imageView;
                                    f2 = 100.0f;
                                }
                                rLottieImageView.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(f2), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(f2), 1073741824));
                                textView6 = ActionIntroActivity.this.titleTextView;
                                if (size > size2) {
                                    f = size;
                                    int i82 = (int) (f * 0.6f);
                                    textView6.measure(View.MeasureSpec.makeMeasureSpec(i82, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 0));
                                    ActionIntroActivity.this.descriptionText.measure(View.MeasureSpec.makeMeasureSpec(i82, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 0));
                                    textView7 = ActionIntroActivity.this.buttonTextView;
                                    iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i82, 1073741824);
                                    f3 = 42.0f;
                                } else {
                                    textView6.measure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 0));
                                    ActionIntroActivity.this.descriptionText.measure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 0));
                                    if (ActionIntroActivity.this.currentType == 6) {
                                        textView7 = ActionIntroActivity.this.buttonTextView;
                                        iDp3 = AndroidUtilities.dp(48.0f);
                                    } else {
                                        textView7 = ActionIntroActivity.this.buttonTextView;
                                        iDp3 = AndroidUtilities.dp(72.0f);
                                    }
                                    iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(size - iDp3, 1073741824);
                                }
                            }
                        } else if (ActionIntroActivity.this.showingAsBottomSheet) {
                            ActionIntroActivity.this.imageView.measure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec((int) (size2 * 0.32f), 1073741824));
                            ActionIntroActivity.this.titleTextView.measure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 0));
                            ActionIntroActivity.this.descriptionLayout.measure(View.MeasureSpec.makeMeasureSpec(size, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(size2, 0));
                            ActionIntroActivity.this.buttonTextView.measure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(42.0f), 1073741824));
                            size2 = ActionIntroActivity.this.buttonTextView.getMeasuredHeight() + ActionIntroActivity.this.imageView.getMeasuredHeight() + ActionIntroActivity.this.titleTextView.getMeasuredHeight() + AndroidUtilities.dp(20.0f) + ActionIntroActivity.this.titleTextView.getMeasuredHeight() + ActionIntroActivity.this.descriptionLayout.getMeasuredHeight();
                        } else {
                            RLottieImageView rLottieImageView3 = ActionIntroActivity.this.imageView;
                            if (size > size2) {
                                float f4 = size;
                                rLottieImageView3.measure(View.MeasureSpec.makeMeasureSpec((int) (0.45f * f4), 1073741824), View.MeasureSpec.makeMeasureSpec((int) (size2 * 0.68f), 1073741824));
                                i6 = (int) (f4 * 0.6f);
                                ActionIntroActivity.this.titleTextView.measure(View.MeasureSpec.makeMeasureSpec(i6, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 0));
                                view = ActionIntroActivity.this.descriptionLayout;
                                iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i6, Integer.MIN_VALUE);
                                view.measure(iMakeMeasureSpec2, View.MeasureSpec.makeMeasureSpec(size2, 0));
                                textView7 = ActionIntroActivity.this.buttonTextView;
                                iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i6, Integer.MIN_VALUE);
                                f3 = 42.0f;
                            } else {
                                rLottieImageView3.measure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec((int) (size2 * 0.399f), 1073741824));
                                ActionIntroActivity.this.titleTextView.measure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 0));
                                ActionIntroActivity.this.descriptionLayout.measure(View.MeasureSpec.makeMeasureSpec(size, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(size2, 0));
                                textView7 = ActionIntroActivity.this.buttonTextView;
                                iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(size, Integer.MIN_VALUE);
                                f3 = 42.0f;
                            }
                        }
                        setMeasuredDimension(size, size2);
                    }
                    ActionIntroActivity.this.imageView.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(150.0f), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(150.0f), 1073741824));
                    ActionIntroActivity actionIntroActivity = ActionIntroActivity.this;
                    if (size > size2) {
                        float f5 = size;
                        actionIntroActivity.subtitleTextView.measure(View.MeasureSpec.makeMeasureSpec((int) (0.45f * f5), 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 0));
                        i6 = (int) (f5 * 0.6f);
                        ActionIntroActivity.this.titleTextView.measure(View.MeasureSpec.makeMeasureSpec(i6, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 0));
                        view = ActionIntroActivity.this.descriptionText;
                        iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i6, 1073741824);
                        view.measure(iMakeMeasureSpec2, View.MeasureSpec.makeMeasureSpec(size2, 0));
                        textView7 = ActionIntroActivity.this.buttonTextView;
                        iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i6, Integer.MIN_VALUE);
                        f3 = 42.0f;
                    } else {
                        actionIntroActivity.titleTextView.measure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 0));
                        ActionIntroActivity.this.descriptionText.measure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 0));
                        ActionIntroActivity.this.subtitleTextView.measure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 0));
                        textView7 = ActionIntroActivity.this.buttonTextView;
                        iDp3 = AndroidUtilities.dp(48.0f);
                        iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(size - iDp3, 1073741824);
                    }
                }
                textView7.measure(iMakeMeasureSpec, View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(f3), 1073741824));
                setMeasuredDimension(size, size2);
            }
        };
        this.fragmentView = viewGroup;
        viewGroup.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
        ViewGroup viewGroup2 = (ViewGroup) this.fragmentView;
        viewGroup2.setOnTouchListener(new View.OnTouchListener() { // from class: org.telegram.ui.ActionIntroActivity$$ExternalSyntheticLambda1
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return ActionIntroActivity.lambda$createView$0(view, motionEvent);
            }
        });
        ActionBar actionBar2 = this.actionBar;
        if (actionBar2 != null) {
            viewGroup2.addView(actionBar2);
        }
        RLottieImageView rLottieImageView = new RLottieImageView(context);
        this.imageView = rLottieImageView;
        viewGroup2.addView(rLottieImageView);
        TextView textView6 = new TextView(context);
        this.titleTextView = textView6;
        int i4 = Theme.key_windowBackgroundWhiteBlackText;
        textView6.setTextColor(Theme.getColor(i4));
        this.titleTextView.setGravity(1);
        this.titleTextView.setPadding(AndroidUtilities.dp(32.0f), 0, AndroidUtilities.dp(32.0f), 0);
        this.titleTextView.setTextSize(1, 24.0f);
        viewGroup2.addView(this.titleTextView);
        TextView textView7 = new TextView(context);
        this.subtitleTextView = textView7;
        if (this.currentType == 3) {
            i4 = Theme.key_featuredStickers_addButton;
        }
        textView7.setTextColor(Theme.getColor(i4));
        this.subtitleTextView.setGravity(1);
        float f = 15.0f;
        this.subtitleTextView.setTextSize(1, 15.0f);
        this.subtitleTextView.setSingleLine(true);
        this.subtitleTextView.setEllipsize(TextUtils.TruncateAt.END);
        this.subtitleTextView.setPadding(AndroidUtilities.dp(32.0f), 0, AndroidUtilities.dp(32.0f), 0);
        this.subtitleTextView.setVisibility(8);
        viewGroup2.addView(this.subtitleTextView);
        TextView textView8 = new TextView(context);
        this.descriptionText = textView8;
        textView8.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText6));
        this.descriptionText.setGravity(1);
        this.descriptionText.setLineSpacing(AndroidUtilities.dp(2.0f), 1.0f);
        this.descriptionText.setTextSize(1, 15.0f);
        int i5 = this.currentType;
        if (i5 == 6 || i5 == 3) {
            textView = this.descriptionText;
            iDp = AndroidUtilities.dp(48.0f);
            iDp2 = AndroidUtilities.dp(48.0f);
        } else {
            textView = this.descriptionText;
            iDp = AndroidUtilities.dp(32.0f);
            iDp2 = AndroidUtilities.dp(32.0f);
        }
        textView.setPadding(iDp, 0, iDp2, 0);
        viewGroup2.addView(this.descriptionText);
        if (this.currentType == 5) {
            LinearLayout linearLayout = new LinearLayout(context);
            this.descriptionLayout = linearLayout;
            linearLayout.setOrientation(1);
            this.descriptionLayout.setPadding(AndroidUtilities.dp(24.0f), 0, AndroidUtilities.dp(24.0f), 0);
            this.descriptionLayout.setGravity(LocaleController.isRTL ? 5 : 3);
            viewGroup2.addView(this.descriptionLayout);
            int i6 = 0;
            for (int i7 = 3; i6 < i7; i7 = 3) {
                LinearLayout linearLayout2 = new LinearLayout(context);
                linearLayout2.setOrientation(0);
                this.descriptionLayout.addView(linearLayout2, LayoutHelper.createLinear(-2, -2, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, i6 != i3 ? 7.0f : BitmapDescriptorFactory.HUE_RED));
                int i8 = i6 * 2;
                this.descriptionLines[i8] = new TextView(context);
                TextView textView9 = this.descriptionLines[i8];
                int i9 = Theme.key_windowBackgroundWhiteBlackText;
                textView9.setTextColor(Theme.getColor(i9));
                this.descriptionLines[i8].setGravity(LocaleController.isRTL ? 5 : 3);
                this.descriptionLines[i8].setTextSize(1, f);
                int i10 = i6 + 1;
                this.descriptionLines[i8].setText(String.format(LocaleController.isRTL ? ".%d" : "%d.", Integer.valueOf(i10)));
                this.descriptionLines[i8].setTypeface(AndroidUtilities.bold());
                int i11 = i8 + 1;
                this.descriptionLines[i11] = new TextView(context);
                this.descriptionLines[i11].setTextColor(Theme.getColor(i9));
                this.descriptionLines[i11].setGravity(LocaleController.isRTL ? 5 : 3);
                this.descriptionLines[i11].setTextSize(1, f);
                TextView[] textViewArr = this.descriptionLines;
                if (i6 == 0) {
                    textViewArr[i11].setLinkTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteLinkText));
                    this.descriptionLines[i11].setHighlightColor(Theme.getColor(Theme.key_windowBackgroundWhiteLinkSelection));
                    String string2 = LocaleController.getString(R.string.AuthAnotherClientInfo1);
                    SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(string2);
                    int iIndexOf = string2.indexOf(42);
                    int iLastIndexOf = string2.lastIndexOf(42);
                    if (iIndexOf != -1 && iLastIndexOf != -1 && iIndexOf != iLastIndexOf) {
                        this.descriptionLines[i11].setMovementMethod(new AndroidUtilities.LinkMovementMethodMy());
                        spannableStringBuilder.replace(iLastIndexOf, iLastIndexOf + 1, (CharSequence) "");
                        spannableStringBuilder.replace(iIndexOf, iIndexOf + 1, (CharSequence) "");
                        spannableStringBuilder.setSpan(new URLSpanNoUnderline(LocaleController.getString(R.string.AuthAnotherClientDownloadClientUrl)), iIndexOf, iLastIndexOf - 1, 33);
                    }
                    textView4 = this.descriptionLines[i11];
                    string = spannableStringBuilder;
                } else {
                    if (i6 == 1) {
                        TextView textView10 = textViewArr[i11];
                        i2 = R.string.AuthAnotherClientInfo2;
                        textView3 = textView10;
                    } else {
                        TextView textView11 = textViewArr[i11];
                        i2 = R.string.AuthAnotherClientInfo3;
                        textView3 = textView11;
                    }
                    textView4 = textView3;
                    string = LocaleController.getString(i2);
                }
                textView4.setText(string);
                if (LocaleController.isRTL) {
                    linearLayout2.setGravity(5);
                    linearLayout2.addView(this.descriptionLines[i11], LayoutHelper.createLinear(0, -2, 1.0f));
                    textView5 = this.descriptionLines[i8];
                    layoutParamsCreateLinear = LayoutHelper.createLinear(-2, -2, 4.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
                } else {
                    linearLayout2.addView(this.descriptionLines[i8], LayoutHelper.createLinear(-2, -2, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 4.0f, BitmapDescriptorFactory.HUE_RED));
                    textView5 = this.descriptionLines[i11];
                    layoutParamsCreateLinear = LayoutHelper.createLinear(-2, -2);
                }
                linearLayout2.addView(textView5, layoutParamsCreateLinear);
                i6 = i10;
                i3 = 2;
                f = 15.0f;
            }
            this.descriptionText.setVisibility(8);
        }
        TextView textView12 = new TextView(context);
        this.descriptionText2 = textView12;
        textView12.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText6));
        this.descriptionText2.setGravity(1);
        this.descriptionText2.setLineSpacing(AndroidUtilities.dp(2.0f), 1.0f);
        this.descriptionText2.setTextSize(1, 13.0f);
        this.descriptionText2.setVisibility(8);
        this.descriptionText2.setPadding(AndroidUtilities.dp(32.0f), 0, AndroidUtilities.dp(32.0f), 0);
        viewGroup2.addView(this.descriptionText2);
        TextView textView13 = new TextView(context) { // from class: org.telegram.ui.ActionIntroActivity.3
            CellFlickerDrawable cellFlickerDrawable;

            @Override // android.widget.TextView, android.view.View
            protected void onDraw(Canvas canvas) {
                super.onDraw(canvas);
                if (ActionIntroActivity.this.flickerButton) {
                    if (this.cellFlickerDrawable == null) {
                        CellFlickerDrawable cellFlickerDrawable = new CellFlickerDrawable();
                        this.cellFlickerDrawable = cellFlickerDrawable;
                        cellFlickerDrawable.drawFrame = false;
                        cellFlickerDrawable.repeatProgress = 2.0f;
                    }
                    this.cellFlickerDrawable.setParentWidth(getMeasuredWidth());
                    RectF rectF = AndroidUtilities.rectTmp;
                    rectF.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), getMeasuredHeight());
                    this.cellFlickerDrawable.draw(canvas, rectF, AndroidUtilities.dp(4.0f), null);
                    invalidate();
                }
            }
        };
        this.buttonTextView = textView13;
        textView13.setPadding(AndroidUtilities.dp(34.0f), 0, AndroidUtilities.dp(34.0f), 0);
        this.buttonTextView.setGravity(17);
        this.buttonTextView.setTextColor(Theme.getColor(Theme.key_featuredStickers_buttonText));
        this.buttonTextView.setTextSize(1, 14.0f);
        this.buttonTextView.setTypeface(AndroidUtilities.bold());
        int i12 = this.currentType;
        this.buttonTextView.setBackground(Theme.AdaptiveRipple.filledRectByKey(Theme.key_featuredStickers_addButton, (i12 == 6 || i12 == 3 || i12 == 0) ? 6 : 4));
        viewGroup2.addView(this.buttonTextView);
        this.buttonTextView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ActionIntroActivity$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$createView$2(view);
            }
        });
        int i13 = this.currentType;
        if (i13 == 0) {
            this.imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
            this.imageView.setAnimation(R.raw.channel_create, 200, 200);
            this.titleTextView.setText(LocaleController.getString(R.string.ChannelAlertTitle));
            this.descriptionText.setText(LocaleController.getString(R.string.ChannelAlertText));
            textView2 = this.buttonTextView;
            i = R.string.ChannelAlertCreate2;
        } else {
            if (i13 != 3) {
                if (i13 == 5) {
                    this.colors = new int[8];
                    updateColors();
                    this.imageView.setAnimation(R.raw.qr_login, 334, 334, this.colors);
                    this.imageView.setScaleType(ImageView.ScaleType.CENTER);
                    this.titleTextView.setText(LocaleController.getString(R.string.AuthAnotherClient));
                    this.buttonTextView.setText(LocaleController.getString(R.string.AuthAnotherClientScan));
                    this.imageView.playAnimation();
                } else if (i13 == 6) {
                    this.imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
                    this.imageView.setAnimation(R.raw.utyan_passcode, 200, 200);
                    this.imageView.setFocusable(false);
                    this.imageView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ActionIntroActivity$$ExternalSyntheticLambda3
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            this.f$0.lambda$createView$3(view);
                        }
                    });
                    this.titleTextView.setText(LocaleController.getString(R.string.Passcode));
                    this.descriptionText.setText(LocaleController.getString(R.string.ChangePasscodeInfoShort));
                    textView2 = this.buttonTextView;
                    i = R.string.EnablePasscode;
                }
                if (this.flickerButton) {
                    this.buttonTextView.setPadding(AndroidUtilities.dp(34.0f), AndroidUtilities.dp(8.0f), AndroidUtilities.dp(34.0f), AndroidUtilities.dp(8.0f));
                    this.buttonTextView.setTextSize(1, 15.0f);
                }
                return this.fragmentView;
            }
            this.subtitleTextView.setVisibility(0);
            this.imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
            this.imageView.setAnimation(R.raw.utyan_change_number, 200, 200);
            this.imageView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ActionIntroActivity$$ExternalSyntheticLambda4
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$createView$4(view);
                }
            });
            UserConfig userConfig = getUserConfig();
            TLRPC.User user = getMessagesController().getUser(Long.valueOf(userConfig.clientUserId));
            if (user == null) {
                user = userConfig.getCurrentUser();
            }
            if (user != null) {
                this.subtitleTextView.setText(LocaleController.formatString("PhoneNumberKeepButton", R.string.PhoneNumberKeepButton, PhoneFormat.getInstance().format("+" + user.phone)));
            }
            this.subtitleTextView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ActionIntroActivity$$ExternalSyntheticLambda5
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$createView$5(view);
                }
            });
            TextView textView14 = this.titleTextView;
            i = R.string.PhoneNumberChange2;
            textView14.setText(LocaleController.getString(i));
            this.descriptionText.setText(AndroidUtilities.replaceTags(LocaleController.getString(R.string.PhoneNumberHelp)));
            textView2 = this.buttonTextView;
        }
        textView2.setText(LocaleController.getString(i));
        this.imageView.playAnimation();
        this.flickerButton = true;
        if (this.flickerButton) {
        }
        return this.fragmentView;
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public ArrayList getThemeDescriptions() {
        ArrayList arrayList = new ArrayList();
        ThemeDescription.ThemeDescriptionDelegate themeDescriptionDelegate = new ThemeDescription.ThemeDescriptionDelegate() { // from class: org.telegram.ui.ActionIntroActivity$$ExternalSyntheticLambda6
            @Override // org.telegram.ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                this.f$0.updateColors();
            }

            @Override // org.telegram.ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public /* synthetic */ void onAnimationProgress(float f) {
                ThemeDescription.ThemeDescriptionDelegate.CC.$default$onAnimationProgress(this, f);
            }
        };
        View view = this.fragmentView;
        int i = ThemeDescription.FLAG_BACKGROUND;
        int i2 = Theme.key_windowBackgroundWhite;
        arrayList.add(new ThemeDescription(view, i, null, null, null, themeDescriptionDelegate, i2));
        if (this.actionBar != null) {
            arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, i2));
            arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, null, null, null, null, Theme.key_windowBackgroundWhiteGrayText2));
            arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, Theme.key_actionBarWhiteSelector));
        }
        TextView textView = this.titleTextView;
        int i3 = ThemeDescription.FLAG_TEXTCOLOR;
        int i4 = Theme.key_windowBackgroundWhiteBlackText;
        arrayList.add(new ThemeDescription(textView, i3, null, null, null, themeDescriptionDelegate, i4));
        arrayList.add(new ThemeDescription(this.subtitleTextView, ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, i4));
        arrayList.add(new ThemeDescription(this.descriptionText, ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, Theme.key_windowBackgroundWhiteGrayText6));
        arrayList.add(new ThemeDescription(this.buttonTextView, ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, Theme.key_featuredStickers_buttonText));
        arrayList.add(new ThemeDescription(this.buttonTextView, ThemeDescription.FLAG_USEBACKGROUNDDRAWABLE, null, null, null, themeDescriptionDelegate, Theme.key_featuredStickers_addButton));
        arrayList.add(new ThemeDescription(this.buttonTextView, ThemeDescription.FLAG_USEBACKGROUNDDRAWABLE | ThemeDescription.FLAG_DRAWABLESELECTEDSTATE, null, null, null, null, Theme.key_featuredStickers_addButtonPressed));
        arrayList.add(new ThemeDescription(this.descriptionLines[0], ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, i4));
        arrayList.add(new ThemeDescription(this.descriptionLines[1], ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, i4));
        arrayList.add(new ThemeDescription(this.descriptionLines[1], ThemeDescription.FLAG_LINKCOLOR, null, null, null, null, Theme.key_windowBackgroundWhiteLinkText));
        arrayList.add(new ThemeDescription(this.descriptionLines[2], ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, i4));
        arrayList.add(new ThemeDescription(this.descriptionLines[3], ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, i4));
        arrayList.add(new ThemeDescription(this.descriptionLines[4], ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, i4));
        arrayList.add(new ThemeDescription(this.descriptionLines[5], ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, i4));
        arrayList.add(new ThemeDescription(null, ThemeDescription.FLAG_TEXTCOLOR, null, null, new Drawable[]{this.drawable2}, null, Theme.key_changephoneinfo_image2));
        return arrayList;
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean isLightStatusBar() {
        return ColorUtils.calculateLuminance(Theme.getColor(Theme.key_windowBackgroundWhite, null, true)) > 0.699999988079071d;
    }

    @Override // org.telegram.messenger.LocationController.LocationFetchCallback
    public void onLocationAddressAvailable(String str, String str2, TLRPC.TL_messageMediaVenue tL_messageMediaVenue, TLRPC.TL_messageMediaVenue tL_messageMediaVenue2, Location location) {
        TextView textView = this.subtitleTextView;
        if (textView == null) {
            return;
        }
        textView.setText(str);
        this.currentGroupCreateAddress = str;
        this.currentGroupCreateDisplayAddress = str2;
        this.currentGroupCreateLocation = location;
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onRequestPermissionsResultFragment(int i, String[] strArr, int[] iArr) {
        if (getParentActivity() != null && i == 34) {
            if (iArr.length <= 0 || iArr[0] != 0) {
                new AlertDialog.Builder(getParentActivity()).setMessage(AndroidUtilities.replaceTags(LocaleController.getString(R.string.QRCodePermissionNoCameraWithHint))).setPositiveButton(LocaleController.getString(R.string.PermissionOpenSettings), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.ActionIntroActivity$$ExternalSyntheticLambda0
                    @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                    public final void onClick(AlertDialog alertDialog, int i2) {
                        this.f$0.lambda$onRequestPermissionsResultFragment$6(alertDialog, i2);
                    }
                }).setNegativeButton(LocaleController.getString(R.string.ContactsPermissionAlertNotNow), null).setTopAnimation(R.raw.permission_request_camera, 72, false, Theme.getColor(Theme.key_dialogTopBackground)).show();
            } else {
                processOpenQrReader();
            }
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onResume() {
        super.onResume();
    }

    public void setQrLoginDelegate(ActionIntroQRLoginDelegate actionIntroQRLoginDelegate) {
        this.qrLoginDelegate = actionIntroQRLoginDelegate;
    }
}
