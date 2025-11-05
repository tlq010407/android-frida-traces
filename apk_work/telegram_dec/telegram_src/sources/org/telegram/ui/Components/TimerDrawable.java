package org.telegram.ui.Components;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import androidx.core.content.ContextCompat;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.R;
import org.telegram.ui.ActionBar.Theme;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes5.dex */
public class TimerDrawable extends Drawable {
    Context context;
    ColorFilter currentColorFilter;
    private Drawable currentTtlIcon;
    private int iconColor;
    private boolean isDialog;
    private boolean isStaticIcon;
    private boolean overrideColor;
    Theme.ResourcesProvider resourcesProvider;
    private StaticLayout timeLayout;
    private TextPaint timePaint = new TextPaint(1);
    private Paint paint = new Paint(1);
    private Paint linePaint = new Paint(1);
    private float timeWidth = BitmapDescriptorFactory.HUE_RED;
    private int timeHeight = 0;
    private int time = -1;

    public TimerDrawable(Context context, Theme.ResourcesProvider resourcesProvider) {
        this.context = context;
        this.resourcesProvider = resourcesProvider;
        this.timePaint.setTypeface(AndroidUtilities.getTypeface("fonts/rcondensedbold.ttf"));
        this.linePaint.setStrokeWidth(AndroidUtilities.dp(1.0f));
        this.linePaint.setStyle(Paint.Style.STROKE);
    }

    public static TimerDrawable getTtlIcon(int i) {
        TimerDrawable timerDrawable = new TimerDrawable(ApplicationLoader.applicationContext, null);
        timerDrawable.setTime(i);
        timerDrawable.isStaticIcon = true;
        return timerDrawable;
    }

    public static TimerDrawable getTtlIconForDialogs(int i) {
        TimerDrawable timerDrawable = new TimerDrawable(ApplicationLoader.applicationContext, null);
        timerDrawable.isDialog = true;
        timerDrawable.setTime(i);
        return timerDrawable;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        TextPaint textPaint;
        int i;
        float f;
        int intrinsicWidth = getIntrinsicWidth();
        int intrinsicHeight = getIntrinsicHeight();
        if (this.isDialog) {
            this.timePaint.setColor(-1);
        } else {
            if (this.isStaticIcon) {
                textPaint = this.timePaint;
                i = Theme.key_actionBarDefaultSubmenuItemIcon;
            } else {
                if (!this.overrideColor) {
                    this.paint.setColor(Theme.getColor(Theme.key_actionBarDefault, this.resourcesProvider));
                }
                textPaint = this.timePaint;
                i = Theme.key_actionBarDefaultTitle;
            }
            textPaint.setColor(Theme.getColor(i, this.resourcesProvider));
        }
        if (this.currentTtlIcon != null) {
            if (!this.isStaticIcon && !this.isDialog) {
                canvas.drawCircle(getBounds().centerX(), getBounds().centerY(), getBounds().width() / 2.0f, this.paint);
                int color = Theme.getColor(Theme.key_actionBarDefaultTitle, this.resourcesProvider);
                if (this.iconColor != color) {
                    this.iconColor = color;
                    this.currentTtlIcon.setColorFilter(new PorterDuffColorFilter(color, PorterDuff.Mode.MULTIPLY));
                }
            }
            if (this.isDialog) {
                this.currentTtlIcon.setBounds(getBounds().left, getBounds().top, getBounds().left + this.currentTtlIcon.getIntrinsicWidth(), getBounds().top + this.currentTtlIcon.getIntrinsicHeight());
            } else {
                android.graphics.Rect rect = AndroidUtilities.rectTmp2;
                rect.set(getBounds().centerX() - AndroidUtilities.dp(10.5f), getBounds().centerY() - AndroidUtilities.dp(10.5f), (getBounds().centerX() - AndroidUtilities.dp(10.5f)) + this.currentTtlIcon.getIntrinsicWidth(), (getBounds().centerY() - AndroidUtilities.dp(10.5f)) + this.currentTtlIcon.getIntrinsicHeight());
                this.currentTtlIcon.setBounds(rect);
            }
            this.currentTtlIcon.draw(canvas);
        }
        if (this.time == 0 || this.timeLayout == null) {
            return;
        }
        int i2 = AndroidUtilities.density != 3.0f ? 0 : -1;
        if (this.isDialog) {
            double dWidth = getBounds().width() / 2;
            double dCeil = Math.ceil(this.timeWidth / 2.0f);
            Double.isNaN(dWidth);
            double d = i2;
            Double.isNaN(d);
            f = (float) ((dWidth - dCeil) + d);
            intrinsicHeight = getBounds().height();
        } else {
            double d2 = intrinsicWidth / 2;
            double dCeil2 = Math.ceil(this.timeWidth / 2.0f);
            Double.isNaN(d2);
            f = ((int) (d2 - dCeil2)) + i2;
        }
        canvas.translate(f, (intrinsicHeight - this.timeHeight) / 2.0f);
        this.timeLayout.draw(canvas);
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return AndroidUtilities.dp(23.0f);
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return AndroidUtilities.dp(23.0f);
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -2;
    }

    public int getTime() {
        return this.time;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
    }

    public void setBackgroundColor(int i) {
        this.overrideColor = true;
        this.paint.setColor(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.currentColorFilter = colorFilter;
        if (this.isStaticIcon) {
            this.currentTtlIcon.setColorFilter(colorFilter);
        }
    }

    public void setTime(int i) {
        String string;
        StringBuilder sb;
        int i2;
        if (this.time != i) {
            this.time = i;
            if (this.isDialog) {
                this.currentTtlIcon = ContextCompat.getDrawable(this.context, R.drawable.msg_autodelete_badge2).mutate();
            } else {
                Drawable drawableMutate = ContextCompat.getDrawable(this.context, i == 0 ? R.drawable.msg_mini_autodelete : R.drawable.msg_mini_autodelete_empty).mutate();
                this.currentTtlIcon = drawableMutate;
                drawableMutate.setColorFilter(this.currentColorFilter);
            }
            invalidateSelf();
            int i3 = this.time;
            if (i3 >= 1 && i3 < 60) {
                string = "" + i;
                if (string.length() < 2) {
                    sb = new StringBuilder();
                    sb.append(string);
                    i2 = R.string.SecretChatTimerSeconds;
                    sb.append(LocaleController.getString(i2));
                    string = sb.toString();
                }
            } else if (i3 >= 60 && i3 < 3600) {
                string = "" + (i / 60);
                if (string.length() < 2) {
                    sb = new StringBuilder();
                    sb.append(string);
                    i2 = R.string.SecretChatTimerMinutes;
                    sb.append(LocaleController.getString(i2));
                    string = sb.toString();
                }
            } else if (i3 >= 3600 && i3 < 86400) {
                string = "" + ((i / 60) / 60);
                if (string.length() < 2) {
                    sb = new StringBuilder();
                    sb.append(string);
                    i2 = R.string.SecretChatTimerHours;
                    sb.append(LocaleController.getString(i2));
                    string = sb.toString();
                }
            } else if (i3 >= 86400 && i3 < 604800) {
                string = "" + (((i / 60) / 60) / 24);
                if (string.length() < 2) {
                    sb = new StringBuilder();
                    sb.append(string);
                    i2 = R.string.SecretChatTimerDays;
                    sb.append(LocaleController.getString(i2));
                    string = sb.toString();
                }
            } else if (i3 < 2678400) {
                string = "" + ((((i / 60) / 60) / 24) / 7);
                if (string.length() < 2) {
                    sb = new StringBuilder();
                    sb.append(string);
                    i2 = R.string.SecretChatTimerWeeks;
                    sb.append(LocaleController.getString(i2));
                    string = sb.toString();
                } else if (string.length() > 2) {
                    string = "c";
                }
            } else if (i3 < 31449600) {
                string = "" + ((((i / 60) / 60) / 24) / 30);
                if (string.length() < 2) {
                    sb = new StringBuilder();
                    sb.append(string);
                    i2 = R.string.SecretChatTimerMonths;
                    sb.append(LocaleController.getString(i2));
                    string = sb.toString();
                }
            } else {
                string = "" + ((((i / 60) / 60) / 24) / 364);
                if (string.length() < 2) {
                    sb = new StringBuilder();
                    sb.append(string);
                    i2 = R.string.SecretChatTimerYears;
                    sb.append(LocaleController.getString(i2));
                    string = sb.toString();
                }
            }
            String str = string;
            this.timePaint.setTextSize(AndroidUtilities.dp(11.0f));
            float fMeasureText = this.timePaint.measureText(str);
            this.timeWidth = fMeasureText;
            if (fMeasureText > AndroidUtilities.dp(13.0f)) {
                this.timePaint.setTextSize(AndroidUtilities.dp(9.0f));
                this.timeWidth = this.timePaint.measureText(str);
            }
            if (this.timeWidth > AndroidUtilities.dp(13.0f)) {
                this.timePaint.setTextSize(AndroidUtilities.dp(6.0f));
                this.timeWidth = this.timePaint.measureText(str);
            }
            try {
                StaticLayout staticLayout = new StaticLayout(str, this.timePaint, (int) Math.ceil(this.timeWidth), Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
                this.timeLayout = staticLayout;
                this.timeHeight = staticLayout.getHeight();
            } catch (Exception e) {
                this.timeLayout = null;
                FileLog.e(e);
            }
            invalidateSelf();
        }
    }
}
