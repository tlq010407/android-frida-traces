package org.telegram.ui.Business;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import j$.time.DayOfWeek;
import j$.time.format.TextStyle;
import java.util.ArrayList;
import java.util.Calendar;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.R;
import org.telegram.messenger.UserConfig;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.tl.TL_account$TL_businessWeeklyOpen;
import org.telegram.tgnet.tl.TL_account$TL_businessWorkHours;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.ClickableAnimatedTextView;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.LayoutHelper;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes4.dex */
public abstract class ProfileHoursCell extends LinearLayout {
    private ImageView arrowView;
    private boolean expanded;
    private boolean firstAfterAttach;
    private final TextView[] labelText;
    private TextView[] labelTimeText;
    private final ViewGroup[] lines;
    private boolean needDivider;
    private final Theme.ResourcesProvider resourcesProvider;
    private ClickableAnimatedTextView switchText;
    private TextView textView;
    private final TextView[][] timeText;
    private int todayLinesCount;
    private int todayLinesHeight;
    private FrameLayout todayTimeContainer;
    private FrameLayout todayTimeTextContainer;
    private LinearLayout todayTimeTextContainer2;

    public ProfileHoursCell(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.labelTimeText = new TextView[2];
        this.lines = new ViewGroup[7];
        this.labelText = new TextView[7];
        this.timeText = new TextView[7][];
        this.todayLinesCount = 1;
        this.todayLinesHeight = 0;
        this.firstAfterAttach = true;
        this.resourcesProvider = resourcesProvider;
        setOrientation(1);
        setClipChildren(false);
        int i = 0;
        for (int i2 = 7; i < i2; i2 = 7) {
            if (i == 0) {
                FrameLayout frameLayout = new FrameLayout(context) { // from class: org.telegram.ui.Business.ProfileHoursCell.1
                    @Override // android.widget.FrameLayout, android.view.View
                    protected void onMeasure(int i3, int i4) {
                        super.onMeasure(i3, View.MeasureSpec.makeMeasureSpec(Math.max(View.MeasureSpec.getSize(i4), AndroidUtilities.dp(60.0f)), View.MeasureSpec.getMode(i4)));
                    }
                };
                frameLayout.setMinimumHeight(AndroidUtilities.dp(60.0f));
                TextView textView = new TextView(context);
                this.textView = textView;
                textView.setGravity(LocaleController.isRTL ? 5 : 3);
                this.textView.setTextSize(1, 16.0f);
                frameLayout.addView(this.textView, LayoutHelper.createFrameRelatively(-1.0f, -2.0f, 8388659, BitmapDescriptorFactory.HUE_RED, 9.33f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED));
                this.labelText[i] = new TextView(context);
                this.labelText[i].setGravity(LocaleController.isRTL ? 5 : 3);
                this.labelText[i].setTextSize(1, 13.0f);
                this.labelText[i].setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText2, resourcesProvider));
                frameLayout.addView(this.labelText[i], LayoutHelper.createFrameRelatively(-2.0f, -2.0f, 8388659, BitmapDescriptorFactory.HUE_RED, 33.0f, BitmapDescriptorFactory.HUE_RED, 10.0f));
                LinearLayout linearLayout = new LinearLayout(context);
                this.todayTimeTextContainer2 = linearLayout;
                linearLayout.setOrientation(1);
                this.todayTimeTextContainer = new FrameLayout(context);
                this.timeText[i] = new TextView[2];
                for (int i3 = 0; i3 < 2; i3++) {
                    this.timeText[i][i3] = new TextView(context);
                    this.timeText[i][i3].setTextSize(1, 14.0f);
                    this.timeText[i][i3].setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText2, resourcesProvider));
                    this.timeText[i][i3].setGravity(LocaleController.isRTL ? 3 : 5);
                    this.todayTimeTextContainer.addView(this.timeText[i][i3], LayoutHelper.createFrameRelatively(-1.0f, -1.0f, R.styleable.AppCompatTheme_windowActionModeOverlay, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 20.0f, BitmapDescriptorFactory.HUE_RED));
                }
                for (int i4 = 0; i4 < 2; i4++) {
                    this.labelTimeText[i4] = new TextView(context);
                    this.labelTimeText[i4].setTextSize(1, 14.0f);
                    this.labelTimeText[i4].setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText2, resourcesProvider));
                    this.labelTimeText[i4].setGravity(LocaleController.isRTL ? 3 : 5);
                    this.todayTimeTextContainer.addView(this.labelTimeText[i4], LayoutHelper.createFrameRelatively(-1.0f, -1.0f, R.styleable.AppCompatTheme_windowActionModeOverlay, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 20.0f, BitmapDescriptorFactory.HUE_RED));
                }
                ImageView imageView = new ImageView(context);
                this.arrowView = imageView;
                imageView.setScaleType(ImageView.ScaleType.CENTER);
                this.arrowView.setScaleX(0.6f);
                this.arrowView.setScaleY(0.6f);
                this.arrowView.setImageResource(R.drawable.arrow_more);
                this.arrowView.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText2, resourcesProvider), PorterDuff.Mode.SRC_IN));
                this.todayTimeTextContainer.addView(this.arrowView, LayoutHelper.createFrameRelatively(20.0f, 20.0f, 8388629));
                this.todayTimeTextContainer2.addView(this.todayTimeTextContainer, LayoutHelper.createLinearRelatively(-1.0f, -1.0f, R.styleable.AppCompatTheme_windowActionModeOverlay));
                ClickableAnimatedTextView clickableAnimatedTextView = new ClickableAnimatedTextView(context);
                this.switchText = clickableAnimatedTextView;
                clickableAnimatedTextView.getDrawable().updateAll = true;
                this.switchText.setTextSize(AndroidUtilities.dp(13.0f));
                this.switchText.setPadding(AndroidUtilities.dp(6.0f), 0, AndroidUtilities.dp(6.0f), 0);
                this.switchText.setGravity(LocaleController.isRTL ? 3 : 5);
                ClickableAnimatedTextView clickableAnimatedTextView2 = this.switchText;
                int iDp = AndroidUtilities.dp(8.0f);
                int i5 = Theme.key_windowBackgroundWhiteBlueText2;
                clickableAnimatedTextView2.setBackground(Theme.createSimpleSelectorRoundRectDrawable(iDp, Theme.multAlpha(processColor(Theme.getColor(i5, resourcesProvider)), 0.1f), Theme.multAlpha(processColor(Theme.getColor(i5, resourcesProvider)), 0.22f)));
                this.switchText.setTextColor(processColor(Theme.getColor(i5, resourcesProvider)));
                this.switchText.getDrawable().setScaleProperty(0.6f);
                this.switchText.setVisibility(8);
                this.todayTimeTextContainer2.addView(this.switchText, LayoutHelper.createLinearRelatively(-1.0f, 17.0f, 8388613, BitmapDescriptorFactory.HUE_RED, 4.0f, 18.0f, BitmapDescriptorFactory.HUE_RED));
                FrameLayout frameLayout2 = new FrameLayout(context);
                this.todayTimeContainer = frameLayout2;
                frameLayout2.addView(this.todayTimeTextContainer2, LayoutHelper.createFrameRelatively(-1.0f, -2.0f, 8388693, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED));
                frameLayout.addView(this.todayTimeContainer, LayoutHelper.createFrameRelatively(-1.0f, -2.0f, 8388693, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 12.0f));
                this.lines[i] = frameLayout;
                addView(frameLayout, LayoutHelper.createFrameRelatively(-1.0f, -2.0f, 51, 22.0f, BitmapDescriptorFactory.HUE_RED, 13.0f, BitmapDescriptorFactory.HUE_RED));
            } else {
                LinearLayout linearLayout2 = new LinearLayout(context);
                linearLayout2.setOrientation(0);
                this.labelText[i] = new TextView(context);
                this.labelText[i].setTextSize(1, 14.0f);
                this.labelText[i].setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, resourcesProvider));
                this.labelText[i].setGravity(LocaleController.isRTL ? 5 : 3);
                FrameLayout frameLayout3 = new FrameLayout(context);
                this.timeText[i] = new TextView[2];
                for (int i6 = 0; i6 < 2; i6++) {
                    this.timeText[i][i6] = new TextView(context);
                    this.timeText[i][i6].setTextSize(1, 14.0f);
                    this.timeText[i][i6].setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText2, resourcesProvider));
                    this.timeText[i][i6].setGravity(LocaleController.isRTL ? 3 : 5);
                    frameLayout3.addView(this.timeText[i][i6], LayoutHelper.createFrame(-1, -1, R.styleable.AppCompatTheme_windowActionModeOverlay));
                }
                if (LocaleController.isRTL) {
                    linearLayout2.addView(frameLayout3, LayoutHelper.createLinear(-2, -1, 51));
                    linearLayout2.addView(this.labelText[i], LayoutHelper.createLinear(-1, -1, 53));
                } else {
                    linearLayout2.addView(this.labelText[i], LayoutHelper.createLinear(-2, -1, 51));
                    linearLayout2.addView(frameLayout3, LayoutHelper.createLinear(-1, -1, 53));
                }
                this.lines[i] = linearLayout2;
                addView(linearLayout2, LayoutHelper.createLinearRelatively(-1.0f, -2.0f, 51, 22.0f, i == 1 ? 1.0f : 11.66f, 33.0f, i == 6 ? 16.66f : BitmapDescriptorFactory.HUE_RED));
            }
            i++;
        }
        setWillNotDraw(false);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.needDivider) {
            Paint themePaint = Theme.getThemePaint("paintDivider", this.resourcesProvider);
            if (themePaint == null) {
                themePaint = Theme.dividerPaint;
            }
            canvas.drawRect(AndroidUtilities.dp(LocaleController.isRTL ? BitmapDescriptorFactory.HUE_RED : 21.33f), getMeasuredHeight() - 1, getWidth() - AndroidUtilities.dp(LocaleController.isRTL ? 21.33f : BitmapDescriptorFactory.HUE_RED), getMeasuredHeight(), themePaint);
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        int iDp;
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), 1073741824);
        if (!this.expanded) {
            int iDp2 = AndroidUtilities.dp(60.0f);
            if (this.todayLinesCount > 2 || this.switchText.getVisibility() == 0) {
                iDp = this.todayLinesHeight + AndroidUtilities.dp(15.0f) + AndroidUtilities.dp(this.switchText.getVisibility() == 0 ? 21.0f : BitmapDescriptorFactory.HUE_RED);
            } else {
                iDp = 0;
            }
            i2 = View.MeasureSpec.makeMeasureSpec(Math.max(iDp2, iDp) + (this.needDivider ? 1 : 0), 1073741824);
        }
        super.onMeasure(iMakeMeasureSpec, i2);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        ClickableAnimatedTextView clickableAnimatedTextView = this.switchText;
        if (clickableAnimatedTextView == null || clickableAnimatedTextView.getVisibility() != 0) {
            return super.onTouchEvent(motionEvent);
        }
        return this.switchText.getClickBounds().contains((int) ((((motionEvent.getX() - this.lines[0].getX()) - this.todayTimeContainer.getX()) - this.todayTimeTextContainer.getX()) - this.switchText.getX()), (int) ((((motionEvent.getY() - this.lines[0].getY()) - this.todayTimeContainer.getY()) - this.todayTimeTextContainer.getY()) - this.switchText.getY()));
    }

    protected abstract int processColor(int i);

    /* JADX WARN: Removed duplicated region for block: B:81:0x0158  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void set(TL_account$TL_businessWorkHours tL_account$TL_businessWorkHours, boolean z, boolean z2, boolean z3) {
        boolean z4;
        ArrayList[] arrayListArr;
        boolean z5;
        int i;
        String string;
        int i2;
        int i3;
        int i4;
        float f;
        boolean z6 = z;
        this.expanded = z6;
        this.needDivider = z3;
        if (tL_account$TL_businessWorkHours == null) {
            return;
        }
        boolean zIs24x7 = OpeningHoursActivity.is24x7(tL_account$TL_businessWorkHours);
        if (zIs24x7) {
            this.expanded = false;
            z6 = false;
        }
        int i5 = 8;
        this.arrowView.setVisibility(zIs24x7 ? 8 : 0);
        this.todayTimeTextContainer2.setTranslationX(zIs24x7 ? AndroidUtilities.dp(11.0f) : BitmapDescriptorFactory.HUE_RED);
        TLRPC.TL_timezone tL_timezoneFindTimezone = TimezonesController.getInstance(UserConfig.selectedAccount).findTimezone(tL_account$TL_businessWorkHours.timezone_id);
        Calendar calendar = Calendar.getInstance();
        int offset = ((calendar.getTimeZone().getOffset(System.currentTimeMillis()) / 1000) - (tL_timezoneFindTimezone == null ? 0 : tL_timezoneFindTimezone.utc_offset)) / 60;
        ClickableAnimatedTextView clickableAnimatedTextView = this.switchText;
        if (offset != 0 && !zIs24x7) {
            i5 = 0;
        }
        clickableAnimatedTextView.setVisibility(i5);
        boolean z7 = offset == 0 ? false : z2;
        invalidate();
        int i6 = 1;
        if (this.firstAfterAttach) {
            this.labelTimeText[0].setAlpha((z6 || z7) ? BitmapDescriptorFactory.HUE_RED : 1.0f);
            this.labelTimeText[1].setAlpha((z6 || !z7) ? BitmapDescriptorFactory.HUE_RED : 1.0f);
            this.arrowView.setRotation(z6 ? 180.0f : BitmapDescriptorFactory.HUE_RED);
        } else {
            ViewPropertyAnimator duration = this.labelTimeText[0].animate().alpha((z6 || z7) ? BitmapDescriptorFactory.HUE_RED : 1.0f).setDuration(320L);
            CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
            duration.setInterpolator(cubicBezierInterpolator).start();
            this.labelTimeText[1].animate().alpha((z6 || !z7) ? BitmapDescriptorFactory.HUE_RED : 1.0f).setDuration(320L).setInterpolator(cubicBezierInterpolator).start();
            this.timeText[0][0].animate().alpha(z6 ? 1.0f : BitmapDescriptorFactory.HUE_RED).setDuration(320L).setInterpolator(cubicBezierInterpolator).start();
            this.timeText[0][1].animate().alpha(z6 ? 1.0f : BitmapDescriptorFactory.HUE_RED).setDuration(320L).setInterpolator(cubicBezierInterpolator).start();
            this.arrowView.animate().rotation(z6 ? 180.0f : BitmapDescriptorFactory.HUE_RED).setDuration(320L).setInterpolator(cubicBezierInterpolator).start();
        }
        int i7 = 0;
        while (i7 < this.timeText.length) {
            int i8 = 0;
            while (true) {
                TextView[] textViewArr = this.timeText[i7];
                if (i8 < textViewArr.length) {
                    if (i7 != 0 || z6) {
                        f = (i8 == i6) == z7 ? 1.0f : BitmapDescriptorFactory.HUE_RED;
                    }
                    if (this.firstAfterAttach) {
                        textViewArr[i8].setAlpha(f);
                    } else {
                        textViewArr[i8].animate().alpha(f).setDuration(320L).setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT).start();
                    }
                    i8++;
                    i6 = 1;
                }
            }
            i7++;
            i6 = 1;
        }
        ClickableAnimatedTextView clickableAnimatedTextView2 = this.switchText;
        if (clickableAnimatedTextView2 != null) {
            clickableAnimatedTextView2.setText(LocaleController.getString(z7 ? R.string.BusinessHoursProfileSwitchMy : R.string.BusinessHoursProfileSwitchLocal), (LocaleController.isRTL || this.firstAfterAttach) ? false : true);
        }
        this.firstAfterAttach = false;
        ArrayList[] daysHours = OpeningHoursActivity.getDaysHours(new ArrayList(tL_account$TL_businessWorkHours.weekly_open));
        int i9 = 7;
        int i10 = (calendar.get(7) + 5) % 7;
        int i11 = calendar.get(11);
        int i12 = calendar.get(12);
        ArrayList arrayListAdaptWeeklyOpen = OpeningHoursActivity.adaptWeeklyOpen(tL_account$TL_businessWorkHours.weekly_open, offset);
        int i13 = i12 + (i11 * 60) + (i10 * 1440);
        for (int i14 = 0; i14 < arrayListAdaptWeeklyOpen.size(); i14++) {
            TL_account$TL_businessWeeklyOpen tL_account$TL_businessWeeklyOpen = (TL_account$TL_businessWeeklyOpen) arrayListAdaptWeeklyOpen.get(i14);
            int i15 = tL_account$TL_businessWeeklyOpen.start_minute;
            if ((i13 >= i15 && i13 <= tL_account$TL_businessWeeklyOpen.end_minute) || (((i3 = i13 + 10080) >= i15 && i3 <= tL_account$TL_businessWeeklyOpen.end_minute) || (i13 - 10080 >= i15 && i4 <= tL_account$TL_businessWeeklyOpen.end_minute))) {
                z4 = true;
                break;
            }
        }
        z4 = false;
        ArrayList[] daysHours2 = OpeningHoursActivity.getDaysHours(arrayListAdaptWeeklyOpen);
        this.textView.setText(LocaleController.getString(z4 ? R.string.BusinessHoursProfileNowOpen : R.string.BusinessHoursProfileNowClosed));
        this.textView.setTextColor(Theme.getColor(z4 ? Theme.key_avatar_nameInMessageGreen : Theme.key_text_RedRegular, this.resourcesProvider));
        int i16 = this.todayLinesHeight;
        int i17 = this.todayLinesCount;
        this.todayLinesCount = 1;
        this.todayLinesHeight = 0;
        int i18 = 0;
        while (i18 < 2) {
            ArrayList[] arrayListArr2 = i18 == 0 ? daysHours : daysHours2;
            int i19 = 0;
            while (i19 < i9) {
                int i20 = (i10 + i19) % 7;
                if (i19 == 0) {
                    this.labelText[i19].setText(LocaleController.getString(R.string.BusinessHoursProfile));
                    arrayListArr = daysHours;
                } else {
                    String displayName = DayOfWeek.values()[i20].getDisplayName(TextStyle.FULL, LocaleController.getInstance().getCurrentLocale());
                    StringBuilder sb = new StringBuilder();
                    arrayListArr = daysHours;
                    sb.append(displayName.substring(0, 1).toUpperCase());
                    sb.append(displayName.substring(1));
                    this.labelText[i19].setText(sb.toString());
                    this.timeText[i19][0].setVisibility(z6 ? 0 : 4);
                    this.timeText[i19][1].setVisibility(z6 ? 0 : 4);
                    this.labelText[i19].setVisibility(z6 ? 0 : 4);
                }
                int i21 = 0;
                while (true) {
                    if (i21 < (i19 == 0 ? 2 : 1)) {
                        TextView textView = i21 == 0 ? this.timeText[i19][i18] : this.labelTimeText[i18];
                        if (i19 == 0 && !z4 && i21 == 1) {
                            int i22 = 0;
                            while (true) {
                                z5 = z6;
                                if (i22 >= arrayListAdaptWeeklyOpen.size()) {
                                    i2 = -1;
                                    break;
                                }
                                i2 = ((TL_account$TL_businessWeeklyOpen) arrayListAdaptWeeklyOpen.get(i22)).start_minute;
                                if (i13 < i2) {
                                    break;
                                }
                                i22++;
                                z6 = z5;
                            }
                            if (i2 == -1 && !arrayListAdaptWeeklyOpen.isEmpty()) {
                                i2 = ((TL_account$TL_businessWeeklyOpen) arrayListAdaptWeeklyOpen.get(0)).start_minute;
                            }
                            if (i2 != -1) {
                                int i23 = i2 < i13 ? i2 + (10080 - i13) : i2 - i13;
                                string = i23 < 60 ? LocaleController.formatPluralString("BusinessHoursProfileOpensInMinutes", i23, new Object[0]) : i23 < 1440 ? LocaleController.formatPluralString("BusinessHoursProfileOpensInHours", (int) Math.ceil(i23 / 60.0f), new Object[0]) : LocaleController.formatPluralString("BusinessHoursProfileOpensInDays", (int) Math.ceil((i23 / 60.0f) / 24.0f), new Object[0]);
                                textView.setText(string);
                                i21++;
                                z6 = z5;
                            }
                        } else {
                            z5 = z6;
                            if (zIs24x7) {
                                i = R.string.BusinessHoursProfileFullOpen;
                            } else if (!arrayListArr2[i20].isEmpty()) {
                                if (OpeningHoursActivity.isFull(arrayListArr2[i20])) {
                                    i = R.string.BusinessHoursProfileOpen;
                                } else {
                                    StringBuilder sb2 = new StringBuilder();
                                    for (int i24 = 0; i24 < arrayListArr2[i20].size(); i24++) {
                                        if (i24 > 0) {
                                            sb2.append("\n");
                                        }
                                        sb2.append(arrayListArr2[i20].get(i24));
                                    }
                                    int size = arrayListArr2[i20].size();
                                    textView.setText(sb2);
                                    if (i19 == 0) {
                                        this.todayLinesCount = Math.max(this.todayLinesCount, size);
                                        this.todayLinesHeight = Math.max(this.todayLinesHeight, textView.getLineHeight() * size);
                                    }
                                    i21++;
                                    z6 = z5;
                                }
                            }
                            string = LocaleController.getString(i);
                            textView.setText(string);
                            i21++;
                            z6 = z5;
                        }
                        i = R.string.BusinessHoursProfileClose;
                        string = LocaleController.getString(i);
                        textView.setText(string);
                        i21++;
                        z6 = z5;
                    }
                }
                i19++;
                daysHours = arrayListArr;
                i9 = 7;
            }
            i18++;
            i9 = 7;
        }
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.todayTimeContainer.getLayoutParams();
        float f2 = 6.0f;
        layoutParams.topMargin = AndroidUtilities.dp((this.todayLinesCount > 2 || this.switchText.getVisibility() == 0) ? 6.0f : 12.0f);
        if (this.todayLinesCount <= 2 && this.switchText.getVisibility() != 0) {
            f2 = 12.0f;
        }
        layoutParams.bottomMargin = AndroidUtilities.dp(f2);
        layoutParams.gravity = ((this.todayLinesCount > 2 || this.switchText.getVisibility() == 0) ? 16 : 80) | (LocaleController.isRTL ? 3 : 5);
        if (i17 == this.todayLinesCount && i16 == this.todayLinesHeight) {
            return;
        }
        requestLayout();
    }

    public void setOnTimezoneSwitchClick(View.OnClickListener onClickListener) {
        ClickableAnimatedTextView clickableAnimatedTextView = this.switchText;
        if (clickableAnimatedTextView != null) {
            clickableAnimatedTextView.setOnClickListener(onClickListener);
        }
    }

    public void updateColors() {
        ClickableAnimatedTextView clickableAnimatedTextView = this.switchText;
        int iDp = AndroidUtilities.dp(8.0f);
        int i = Theme.key_windowBackgroundWhiteBlueText2;
        clickableAnimatedTextView.setBackground(Theme.createSimpleSelectorRoundRectDrawable(iDp, Theme.multAlpha(processColor(Theme.getColor(i, this.resourcesProvider)), 0.1f), Theme.multAlpha(processColor(Theme.getColor(i, this.resourcesProvider)), 0.22f)));
        this.switchText.setTextColor(processColor(Theme.getColor(i, this.resourcesProvider)));
    }
}
