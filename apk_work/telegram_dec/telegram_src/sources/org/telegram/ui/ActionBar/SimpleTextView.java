package org.telegram.ui.ActionBar;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.Shader;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.text.Layout;
import android.text.Spannable;
import android.text.SpannableStringBuilder;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Stack;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.R;
import org.telegram.ui.Cells.DialogCell;
import org.telegram.ui.Components.AnimatedEmojiDrawable;
import org.telegram.ui.Components.AnimatedEmojiSpan;
import org.telegram.ui.Components.EmptyStubSpan;
import org.telegram.ui.Components.StaticLayoutEx;
import org.telegram.ui.Components.spoilers.SpoilerEffect;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes4.dex */
public class SimpleTextView extends View implements Drawable.Callback {
    private boolean attachedToWindow;
    private boolean buildFullLayout;
    private boolean canHideRightDrawable;
    private int currentScrollDelay;
    private int drawablePadding;
    private boolean ellipsizeByGradient;
    private boolean ellipsizeByGradientLeft;
    private int ellipsizeByGradientWidthDp;
    private int emojiCacheType;
    private AnimatedEmojiSpan.EmojiGroupedSpans emojiStack;
    private ColorFilter emojiStackColorFilter;
    private Paint fadeEllpsizePaint;
    private int fadeEllpsizePaintWidth;
    private Paint fadePaint;
    private Paint fadePaintBack;
    private Layout firstLineLayout;
    private Boolean forceEllipsizeByGradientLeft;
    private float fullAlpha;
    private Layout fullLayout;
    private int fullLayoutAdditionalWidth;
    private float fullLayoutLeftCharactersOffset;
    private int fullLayoutLeftOffset;
    private int fullTextMaxLines;
    private int gravity;
    private long lastUpdateTime;
    private int lastWidth;
    private Layout layout;
    private float layoutX;
    private float layoutY;
    private Drawable leftDrawable;
    private boolean leftDrawableOutside;
    private int leftDrawableTopPadding;
    private Layout.Alignment mAlignment;
    private int maxLines;
    private boolean maybeClick;
    private int minWidth;
    private int minusWidth;
    private int offsetX;
    private int offsetY;
    private int paddingRight;
    private Layout partLayout;
    private Path path;
    private Drawable replacedDrawable;
    private String replacedText;
    private int replacingDrawableTextIndex;
    private float replacingDrawableTextOffset;
    private Drawable rightDrawable;
    private Drawable rightDrawable2;
    private boolean rightDrawableHidden;
    private boolean rightDrawableInside;
    private View.OnClickListener rightDrawableOnClickListener;
    private boolean rightDrawableOutside;
    private float rightDrawableScale;
    private int rightDrawableTopPadding;
    public int rightDrawableX;
    public int rightDrawableY;
    private boolean scrollNonFitText;
    private float scrollingOffset;
    private List spoilers;
    private Stack spoilersPool;
    private CharSequence text;
    private boolean textDoesNotFit;
    private int textHeight;
    private TextPaint textPaint;
    private int textWidth;
    private int totalWidth;
    private float touchDownX;
    private float touchDownY;
    private boolean usaAlphaForEmoji;
    private boolean wasLayout;
    private boolean widthWrapContent;
    private Drawable wrapBackgroundDrawable;

    public interface PressableDrawable {
        void setPressed(boolean z);
    }

    public SimpleTextView(Context context) {
        super(context);
        this.gravity = 51;
        this.maxLines = 1;
        this.rightDrawableScale = 1.0f;
        this.drawablePadding = AndroidUtilities.dp(4.0f);
        this.ellipsizeByGradientWidthDp = 16;
        this.fullTextMaxLines = 3;
        this.spoilers = new ArrayList();
        this.spoilersPool = new Stack();
        this.path = new Path();
        this.emojiCacheType = 0;
        this.mAlignment = Layout.Alignment.ALIGN_NORMAL;
        this.textPaint = new TextPaint(1);
        setImportantForAccessibility(1);
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00af  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00d7  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00e1  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00e8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void calcOffset(int i) {
        int lineBottom;
        int i2;
        int iDp;
        int lineWidth;
        int intrinsicWidth;
        Layout layout;
        Layout layout2 = this.layout;
        if (layout2 == null) {
            return;
        }
        if (layout2.getLineCount() > 0) {
            this.textWidth = (int) Math.max(Math.ceil(this.layout.getLineWidth(0)), Math.ceil(this.layout.getLineRight(0) - this.layout.getLineLeft(0)));
            Layout layout3 = this.fullLayout;
            if (layout3 != null) {
                lineBottom = layout3.getLineBottom(layout3.getLineCount() - 1);
                this.textHeight = lineBottom;
                i2 = this.gravity & 7;
                if (i2 == 1) {
                }
                this.offsetX = lineWidth;
                this.offsetX += getPaddingLeft();
                if (this.rightDrawableInside) {
                }
                this.textDoesNotFit = this.textWidth + intrinsicWidth > i - this.paddingRight;
                layout = this.fullLayout;
                if (layout != null) {
                }
            } else if (this.maxLines <= 1 || this.layout.getLineCount() <= 0) {
                lineBottom = this.layout.getLineBottom(0);
                this.textHeight = lineBottom;
                i2 = this.gravity & 7;
                if (i2 == 1) {
                    lineWidth = ((i - this.textWidth) / 2) - ((int) this.layout.getLineLeft(0));
                } else {
                    if (i2 == 3) {
                        Layout layout4 = this.firstLineLayout;
                        if (layout4 == null) {
                            layout4 = this.layout;
                        }
                        iDp = (int) layout4.getLineLeft(0);
                    } else if (this.layout.getLineLeft(0) == BitmapDescriptorFactory.HUE_RED) {
                        Layout layout5 = this.firstLineLayout;
                        lineWidth = layout5 != null ? (int) (i - layout5.getLineWidth(0)) : i - this.textWidth;
                    } else {
                        iDp = AndroidUtilities.dp(8.0f);
                    }
                    lineWidth = -iDp;
                }
                this.offsetX = lineWidth;
                this.offsetX += getPaddingLeft();
                if (this.rightDrawableInside) {
                    intrinsicWidth = (this.rightDrawable == null || this.rightDrawableOutside) ? 0 : (int) (r0.getIntrinsicWidth() * this.rightDrawableScale);
                    if (this.rightDrawable2 != null && !this.rightDrawableOutside) {
                        intrinsicWidth += (int) (r4.getIntrinsicWidth() * this.rightDrawableScale);
                    }
                } else {
                    intrinsicWidth = 0;
                }
                this.textDoesNotFit = this.textWidth + intrinsicWidth > i - this.paddingRight;
                layout = this.fullLayout;
                if (layout != null && this.fullLayoutAdditionalWidth > 0) {
                    this.fullLayoutLeftCharactersOffset = layout.getPrimaryHorizontal(0) - this.firstLineLayout.getPrimaryHorizontal(0);
                }
            } else {
                layout3 = this.layout;
                lineBottom = layout3.getLineBottom(layout3.getLineCount() - 1);
                this.textHeight = lineBottom;
                i2 = this.gravity & 7;
                if (i2 == 1) {
                }
                this.offsetX = lineWidth;
                this.offsetX += getPaddingLeft();
                if (this.rightDrawableInside) {
                }
                this.textDoesNotFit = this.textWidth + intrinsicWidth > i - this.paddingRight;
                layout = this.fullLayout;
                if (layout != null) {
                    this.fullLayoutLeftCharactersOffset = layout.getPrimaryHorizontal(0) - this.firstLineLayout.getPrimaryHorizontal(0);
                }
            }
        }
        int i3 = this.replacingDrawableTextIndex;
        if (i3 >= 0) {
            this.replacingDrawableTextOffset = this.layout.getPrimaryHorizontal(i3);
        } else {
            this.replacingDrawableTextOffset = BitmapDescriptorFactory.HUE_RED;
        }
    }

    private void clipOutSpoilers(Canvas canvas) {
        this.path.rewind();
        Iterator it = this.spoilers.iterator();
        while (it.hasNext()) {
            Rect bounds = ((SpoilerEffect) it.next()).getBounds();
            this.path.addRect(bounds.left, bounds.top, bounds.right, bounds.bottom, Path.Direction.CW);
        }
        canvas.clipPath(this.path, Region.Op.DIFFERENCE);
    }

    private void drawLayout(Canvas canvas) {
        if (this.fullAlpha <= BitmapDescriptorFactory.HUE_RED || this.fullLayoutLeftOffset == 0) {
            canvas.save();
            clipOutSpoilers(canvas);
            AnimatedEmojiSpan.EmojiGroupedSpans emojiGroupedSpans = this.emojiStack;
            if (emojiGroupedSpans != null) {
                emojiGroupedSpans.clearPositions();
            }
            this.layout.draw(canvas);
            canvas.restore();
            AnimatedEmojiSpan.drawAnimatedEmojis(canvas, this.layout, this.emojiStack, BitmapDescriptorFactory.HUE_RED, null, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f, this.emojiStackColorFilter);
            drawSpoilers(canvas);
            return;
        }
        canvas.save();
        float f = -this.fullLayoutLeftOffset;
        float f2 = this.fullAlpha;
        canvas.translate((f * f2) + (this.fullLayoutLeftCharactersOffset * f2), BitmapDescriptorFactory.HUE_RED);
        float f3 = this.layoutX;
        float f4 = -this.fullLayoutLeftOffset;
        float f5 = this.fullAlpha;
        this.layoutX = f3 + (f4 * f5) + (this.fullLayoutLeftCharactersOffset * f5);
        canvas.save();
        clipOutSpoilers(canvas);
        AnimatedEmojiSpan.EmojiGroupedSpans emojiGroupedSpans2 = this.emojiStack;
        if (emojiGroupedSpans2 != null) {
            emojiGroupedSpans2.clearPositions();
        }
        this.layout.draw(canvas);
        canvas.restore();
        AnimatedEmojiSpan.drawAnimatedEmojis(canvas, this.layout, this.emojiStack, BitmapDescriptorFactory.HUE_RED, null, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f, this.emojiStackColorFilter);
        drawSpoilers(canvas);
        canvas.restore();
    }

    private void drawSpoilers(Canvas canvas) {
        Iterator it = this.spoilers.iterator();
        while (it.hasNext()) {
            ((SpoilerEffect) it.next()).draw(canvas);
        }
    }

    private Layout.Alignment getAlignment() {
        return this.mAlignment;
    }

    private boolean recreateLayoutMaybe() {
        if (!this.wasLayout || getMeasuredHeight() == 0 || this.buildFullLayout) {
            requestLayout();
            return true;
        }
        boolean zCreateLayout = createLayout(((getMaxTextWidth() - getPaddingLeft()) - getPaddingRight()) - this.minusWidth);
        this.offsetY = (this.gravity & R.styleable.AppCompatTheme_toolbarNavigationButtonStyle) == 16 ? (getMeasuredHeight() - this.textHeight) / 2 : getPaddingTop();
        return zCreateLayout;
    }

    private void updateFadePaints() {
        Paint paint;
        LinearGradient linearGradient;
        if ((this.fadePaint == null || this.fadePaintBack == null) && this.scrollNonFitText) {
            Paint paint2 = new Paint();
            this.fadePaint = paint2;
            float[] fArr = {BitmapDescriptorFactory.HUE_RED, 1.0f};
            Shader.TileMode tileMode = Shader.TileMode.CLAMP;
            paint2.setShader(new LinearGradient(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, AndroidUtilities.dp(6.0f), BitmapDescriptorFactory.HUE_RED, new int[]{-1, 0}, fArr, tileMode));
            Paint paint3 = this.fadePaint;
            PorterDuff.Mode mode = PorterDuff.Mode.DST_OUT;
            paint3.setXfermode(new PorterDuffXfermode(mode));
            Paint paint4 = new Paint();
            this.fadePaintBack = paint4;
            paint4.setShader(new LinearGradient(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, AndroidUtilities.dp(6.0f), BitmapDescriptorFactory.HUE_RED, new int[]{0, -1}, new float[]{BitmapDescriptorFactory.HUE_RED, 1.0f}, tileMode));
            this.fadePaintBack.setXfermode(new PorterDuffXfermode(mode));
        }
        Boolean bool = this.forceEllipsizeByGradientLeft;
        boolean zBooleanValue = bool != null ? bool.booleanValue() : false;
        if (!(this.fadeEllpsizePaint != null && this.fadeEllpsizePaintWidth == AndroidUtilities.dp(this.ellipsizeByGradientWidthDp) && this.ellipsizeByGradientLeft == zBooleanValue) && this.ellipsizeByGradient) {
            if (this.fadeEllpsizePaint == null) {
                this.fadeEllpsizePaint = new Paint();
            }
            this.ellipsizeByGradientLeft = zBooleanValue;
            if (zBooleanValue) {
                paint = this.fadeEllpsizePaint;
                int iDp = AndroidUtilities.dp(this.ellipsizeByGradientWidthDp);
                this.fadeEllpsizePaintWidth = iDp;
                linearGradient = new LinearGradient(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, iDp, BitmapDescriptorFactory.HUE_RED, new int[]{-1, 0}, new float[]{BitmapDescriptorFactory.HUE_RED, 1.0f}, Shader.TileMode.CLAMP);
            } else {
                paint = this.fadeEllpsizePaint;
                int iDp2 = AndroidUtilities.dp(this.ellipsizeByGradientWidthDp);
                this.fadeEllpsizePaintWidth = iDp2;
                linearGradient = new LinearGradient(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, iDp2, BitmapDescriptorFactory.HUE_RED, new int[]{0, -1}, new float[]{BitmapDescriptorFactory.HUE_RED, 1.0f}, Shader.TileMode.CLAMP);
            }
            paint.setShader(linearGradient);
            this.fadeEllpsizePaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
        }
    }

    private void updateScrollAnimation() {
        if (this.scrollNonFitText) {
            if (this.textDoesNotFit || this.scrollingOffset != BitmapDescriptorFactory.HUE_RED) {
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                long j = jElapsedRealtime - this.lastUpdateTime;
                if (j > 17) {
                    j = 17;
                }
                int i = this.currentScrollDelay;
                if (i > 0) {
                    this.currentScrollDelay = (int) (i - j);
                } else {
                    int iDp = this.totalWidth + AndroidUtilities.dp(16.0f);
                    float fDp = this.scrollingOffset + ((j / 1000.0f) * AndroidUtilities.dp(this.scrollingOffset < ((float) AndroidUtilities.dp(100.0f)) ? ((this.scrollingOffset / AndroidUtilities.dp(100.0f)) * 20.0f) + 30.0f : this.scrollingOffset >= ((float) (iDp - AndroidUtilities.dp(100.0f))) ? 50.0f - (((this.scrollingOffset - (iDp - AndroidUtilities.dp(100.0f))) / AndroidUtilities.dp(100.0f)) * 20.0f) : 50.0f));
                    this.scrollingOffset = fDp;
                    this.lastUpdateTime = jElapsedRealtime;
                    if (fDp > iDp) {
                        this.scrollingOffset = BitmapDescriptorFactory.HUE_RED;
                        this.currentScrollDelay = 500;
                    }
                }
                invalidate();
            }
        }
    }

    public void copyScrolling(SimpleTextView simpleTextView) {
        this.scrollingOffset = simpleTextView.scrollingOffset;
    }

    protected boolean createLayout(int i) {
        int intrinsicWidth;
        int intrinsicWidth2;
        StaticLayout staticLayout;
        int i2;
        CharSequence charSequence = this.text;
        this.replacingDrawableTextIndex = -1;
        this.rightDrawableHidden = false;
        if (charSequence != null) {
            try {
                Drawable drawable = this.leftDrawable;
                if (drawable == null || this.leftDrawableOutside) {
                    intrinsicWidth = i;
                } else {
                    drawable.getIntrinsicWidth();
                    intrinsicWidth = (i - this.leftDrawable.getIntrinsicWidth()) - this.drawablePadding;
                }
                if (this.rightDrawableInside) {
                    intrinsicWidth2 = 0;
                } else {
                    if (this.rightDrawable == null || this.rightDrawableOutside) {
                        intrinsicWidth2 = 0;
                    } else {
                        intrinsicWidth2 = (int) (r3.getIntrinsicWidth() * this.rightDrawableScale);
                        intrinsicWidth = (intrinsicWidth - intrinsicWidth2) - this.drawablePadding;
                    }
                    if (this.rightDrawable2 != null && !this.rightDrawableOutside) {
                        intrinsicWidth2 += (int) (r4.getIntrinsicWidth() * this.rightDrawableScale);
                        intrinsicWidth = (intrinsicWidth - intrinsicWidth2) - this.drawablePadding;
                    }
                }
                CharSequence charSequence2 = charSequence;
                if (this.replacedText != null) {
                    charSequence2 = charSequence;
                    if (this.replacedDrawable != null) {
                        int iIndexOf = charSequence.toString().indexOf(this.replacedText);
                        this.replacingDrawableTextIndex = iIndexOf;
                        if (iIndexOf >= 0) {
                            SpannableStringBuilder spannableStringBuilderValueOf = SpannableStringBuilder.valueOf(charSequence);
                            DialogCell.FixedWidthSpan fixedWidthSpan = new DialogCell.FixedWidthSpan(this.replacedDrawable.getIntrinsicWidth());
                            int i3 = this.replacingDrawableTextIndex;
                            spannableStringBuilderValueOf.setSpan(fixedWidthSpan, i3, this.replacedText.length() + i3, 0);
                            charSequence2 = spannableStringBuilderValueOf;
                        } else {
                            intrinsicWidth = (intrinsicWidth - this.replacedDrawable.getIntrinsicWidth()) - this.drawablePadding;
                            charSequence2 = charSequence;
                        }
                    }
                }
                if (this.canHideRightDrawable && intrinsicWidth2 != 0 && !this.rightDrawableOutside && !charSequence2.equals(TextUtils.ellipsize(charSequence2, this.textPaint, intrinsicWidth, TextUtils.TruncateAt.END))) {
                    this.rightDrawableHidden = true;
                    intrinsicWidth = intrinsicWidth + intrinsicWidth2 + this.drawablePadding;
                }
                int i4 = intrinsicWidth;
                if (this.buildFullLayout) {
                    CharSequence charSequenceEllipsize = !this.ellipsizeByGradient ? TextUtils.ellipsize(charSequence2, this.textPaint, i4, TextUtils.TruncateAt.END) : charSequence2;
                    if (this.ellipsizeByGradient || charSequenceEllipsize.equals(charSequence2)) {
                        this.layout = new StaticLayout(charSequenceEllipsize, 0, charSequenceEllipsize.length(), this.textPaint, (this.scrollNonFitText || this.ellipsizeByGradient) ? AndroidUtilities.dp(2000.0f) : AndroidUtilities.dp(8.0f) + i4, getAlignment(), 1.0f, BitmapDescriptorFactory.HUE_RED, false);
                        this.fullLayout = null;
                        this.partLayout = null;
                        this.firstLineLayout = null;
                    } else {
                        TextPaint textPaint = this.textPaint;
                        Layout.Alignment alignment = getAlignment();
                        TextUtils.TruncateAt truncateAt = TextUtils.TruncateAt.END;
                        StaticLayout staticLayoutCreateStaticLayout = StaticLayoutEx.createStaticLayout(charSequence2, textPaint, i4, alignment, 1.0f, BitmapDescriptorFactory.HUE_RED, false, truncateAt, i4, this.fullTextMaxLines, false);
                        this.fullLayout = staticLayoutCreateStaticLayout;
                        if (staticLayoutCreateStaticLayout != null) {
                            int lineEnd = staticLayoutCreateStaticLayout.getLineEnd(0);
                            int lineStart = this.fullLayout.getLineStart(1);
                            CharSequence charSequenceSubSequence = charSequence2.subSequence(0, lineEnd);
                            SpannableStringBuilder spannableStringBuilderValueOf2 = SpannableStringBuilder.valueOf(charSequence2);
                            spannableStringBuilderValueOf2.setSpan(new EmptyStubSpan(), 0, lineStart, 0);
                            String strSubSequence = lineEnd < charSequenceEllipsize.length() ? charSequenceEllipsize.subSequence(lineEnd, charSequenceEllipsize.length()) : "…";
                            this.firstLineLayout = new StaticLayout(charSequenceEllipsize, 0, charSequenceEllipsize.length(), this.textPaint, this.scrollNonFitText ? AndroidUtilities.dp(2000.0f) : AndroidUtilities.dp(8.0f) + i4, getAlignment(), 1.0f, BitmapDescriptorFactory.HUE_RED, false);
                            StaticLayout staticLayout2 = new StaticLayout(charSequenceSubSequence, 0, charSequenceSubSequence.length(), this.textPaint, this.scrollNonFitText ? AndroidUtilities.dp(2000.0f) : AndroidUtilities.dp(8.0f) + i4, getAlignment(), 1.0f, BitmapDescriptorFactory.HUE_RED, false);
                            this.layout = staticLayout2;
                            if (staticLayout2.getLineLeft(0) != BitmapDescriptorFactory.HUE_RED) {
                                strSubSequence = "\u200f" + ((Object) strSubSequence);
                            }
                            CharSequence charSequence3 = strSubSequence;
                            this.partLayout = new StaticLayout(charSequence3, 0, charSequence3.length(), this.textPaint, this.scrollNonFitText ? AndroidUtilities.dp(2000.0f) : AndroidUtilities.dp(8.0f) + i4, getAlignment(), 1.0f, BitmapDescriptorFactory.HUE_RED, false);
                            this.fullLayout = StaticLayoutEx.createStaticLayout(spannableStringBuilderValueOf2, this.textPaint, AndroidUtilities.dp(8.0f) + i4 + this.fullLayoutAdditionalWidth, getAlignment(), 1.0f, BitmapDescriptorFactory.HUE_RED, false, truncateAt, i4 + this.fullLayoutAdditionalWidth, this.fullTextMaxLines, false);
                        }
                    }
                } else {
                    if (this.maxLines > 1) {
                        staticLayout = StaticLayoutEx.createStaticLayout(charSequence2, this.textPaint, i4, getAlignment(), 1.0f, BitmapDescriptorFactory.HUE_RED, false, TextUtils.TruncateAt.END, i4, this.maxLines, false);
                    } else {
                        CharSequence charSequenceEllipsize2 = charSequence2;
                        if (!this.scrollNonFitText) {
                            charSequenceEllipsize2 = this.ellipsizeByGradient ? charSequence2 : TextUtils.ellipsize(charSequence2, this.textPaint, i4, TextUtils.TruncateAt.END);
                        }
                        CharSequence charSequence4 = charSequenceEllipsize2;
                        staticLayout = new StaticLayout(charSequence4, 0, charSequence4.length(), this.textPaint, (this.scrollNonFitText || this.ellipsizeByGradient) ? AndroidUtilities.dp(2000.0f) : AndroidUtilities.dp(8.0f) + i4, getAlignment(), 1.0f, BitmapDescriptorFactory.HUE_RED, false);
                    }
                    this.layout = staticLayout;
                }
                this.spoilersPool.addAll(this.spoilers);
                this.spoilers.clear();
                Layout layout = this.layout;
                if (layout == null || !(layout.getText() instanceof Spannable)) {
                    i2 = i4;
                } else {
                    i2 = i4;
                    SpoilerEffect.addSpoilers(this, this.layout, -2, -2, this.spoilersPool, this.spoilers);
                }
                calcOffset(i2);
            } catch (Exception unused) {
            }
        } else {
            this.layout = null;
            this.textWidth = 0;
            this.textHeight = 0;
        }
        AnimatedEmojiSpan.release(this, this.emojiStack);
        if (this.attachedToWindow) {
            this.emojiStack = AnimatedEmojiSpan.update(this.emojiCacheType, this, this.emojiStack, this.layout);
        }
        invalidate();
        return true;
    }

    @Override // android.view.View
    public Drawable getBackground() {
        Drawable drawable = this.wrapBackgroundDrawable;
        return drawable != null ? drawable : super.getBackground();
    }

    public float getFullAlpha() {
        return this.fullAlpha;
    }

    public Layout getLayout() {
        return this.layout;
    }

    public float getLayoutX() {
        return this.layoutX;
    }

    public float getLayoutY() {
        return this.layoutY;
    }

    public Drawable getLeftDrawable() {
        return this.leftDrawable;
    }

    public int getLineCount() {
        Layout layout = this.layout;
        int lineCount = layout != null ? layout.getLineCount() : 0;
        Layout layout2 = this.fullLayout;
        return layout2 != null ? lineCount + layout2.getLineCount() : lineCount;
    }

    public int getMaxTextWidth() {
        Drawable drawable;
        Drawable drawable2;
        int intrinsicWidth = 0;
        int measuredWidth = getMeasuredWidth() - ((!this.rightDrawableOutside || (drawable2 = this.rightDrawable) == null) ? 0 : drawable2.getIntrinsicWidth() + this.drawablePadding);
        if (this.rightDrawableOutside && (drawable = this.rightDrawable2) != null) {
            intrinsicWidth = this.drawablePadding + drawable.getIntrinsicWidth();
        }
        return measuredWidth - intrinsicWidth;
    }

    public TextPaint getPaint() {
        return this.textPaint;
    }

    public Drawable getRightDrawable() {
        return this.rightDrawable;
    }

    public Drawable getRightDrawable2() {
        return this.rightDrawable2;
    }

    public boolean getRightDrawableOutside() {
        return this.rightDrawableOutside;
    }

    public int getRightDrawableWidth() {
        if (this.rightDrawable == null) {
            return 0;
        }
        return (int) (this.drawablePadding + (r0.getIntrinsicWidth() * this.rightDrawableScale));
    }

    public int getRightDrawableX() {
        return this.rightDrawableX;
    }

    public int getRightDrawableY() {
        return this.rightDrawableY;
    }

    public int getSideDrawablesSize() {
        Drawable drawable = this.leftDrawable;
        int intrinsicWidth = drawable != null ? drawable.getIntrinsicWidth() + this.drawablePadding : 0;
        if (this.rightDrawable != null) {
            intrinsicWidth += ((int) (r1.getIntrinsicWidth() * this.rightDrawableScale)) + this.drawablePadding;
        }
        return this.rightDrawable2 != null ? intrinsicWidth + ((int) (r1.getIntrinsicWidth() * this.rightDrawableScale)) + this.drawablePadding : intrinsicWidth;
    }

    public CharSequence getText() {
        CharSequence charSequence = this.text;
        return charSequence == null ? "" : charSequence;
    }

    public int getTextColor() {
        return this.textPaint.getColor();
    }

    public int getTextHeight() {
        return this.textHeight;
    }

    public TextPaint getTextPaint() {
        return this.textPaint;
    }

    public int getTextStartX() {
        int intrinsicWidth = 0;
        if (this.layout == null) {
            return 0;
        }
        Drawable drawable = this.leftDrawable;
        if (drawable != null && (this.gravity & 7) == 3) {
            intrinsicWidth = this.drawablePadding + drawable.getIntrinsicWidth();
        }
        Drawable drawable2 = this.replacedDrawable;
        if (drawable2 != null && this.replacingDrawableTextIndex < 0 && (this.gravity & 7) == 3) {
            intrinsicWidth += this.drawablePadding + drawable2.getIntrinsicWidth();
        }
        return ((int) getX()) + this.offsetX + intrinsicWidth;
    }

    public int getTextStartY() {
        if (this.layout == null) {
            return 0;
        }
        return (int) getY();
    }

    public int getTextWidth() {
        int i = this.textWidth;
        if (this.rightDrawableInside) {
            intrinsicWidth = (this.rightDrawable2 != null ? (int) (r3.getIntrinsicWidth() * this.rightDrawableScale) : 0) + (this.rightDrawable != null ? (int) (r1.getIntrinsicWidth() * this.rightDrawableScale) : 0);
        }
        return i + intrinsicWidth;
    }

    @Override // android.view.View
    public boolean hasOverlappingRendering() {
        return false;
    }

    @Override // android.view.View, android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable drawable) {
        Drawable drawable2 = this.leftDrawable;
        if (drawable == drawable2 || drawable == (drawable2 = this.rightDrawable) || drawable == (drawable2 = this.rightDrawable2) || drawable == (drawable2 = this.replacedDrawable)) {
            invalidate(drawable2.getBounds());
        }
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.attachedToWindow = true;
        this.emojiStack = AnimatedEmojiSpan.update(this.emojiCacheType, this, this.emojiStack, this.layout);
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.attachedToWindow = false;
        AnimatedEmojiSpan.release(this, this.emojiStack);
        this.wasLayout = false;
    }

    /* JADX WARN: Removed duplicated region for block: B:279:0x06db  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected void onDraw(Canvas canvas) {
        int intrinsicWidth;
        float f;
        float fDp;
        float measuredHeight;
        Paint paint;
        float f2;
        Paint paint2;
        int iDp;
        float fDp2;
        super.onDraw(canvas);
        this.layoutX = BitmapDescriptorFactory.HUE_RED;
        this.layoutY = BitmapDescriptorFactory.HUE_RED;
        boolean z = this.scrollNonFitText && (this.textDoesNotFit || this.scrollingOffset != BitmapDescriptorFactory.HUE_RED);
        int iSaveLayerAlpha = (z || this.ellipsizeByGradient) ? canvas.saveLayerAlpha(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), getMeasuredHeight(), 255, 31) : Integer.MIN_VALUE;
        this.totalWidth = this.textWidth;
        Drawable drawable = this.leftDrawable;
        if (drawable == null || this.leftDrawableOutside) {
            intrinsicWidth = (!this.leftDrawableOutside || drawable == null) ? 0 : drawable.getIntrinsicWidth() + this.drawablePadding;
        } else {
            int i = (int) (-this.scrollingOffset);
            int i2 = this.gravity;
            if ((i2 & 7) == 1) {
                i += this.offsetX;
            }
            int measuredHeight2 = ((i2 & R.styleable.AppCompatTheme_toolbarNavigationButtonStyle) == 16 ? (getMeasuredHeight() - this.leftDrawable.getIntrinsicHeight()) / 2 : getPaddingTop() + ((this.textHeight - this.leftDrawable.getIntrinsicHeight()) / 2)) + this.leftDrawableTopPadding;
            Drawable drawable2 = this.leftDrawable;
            drawable2.setBounds(i, measuredHeight2, drawable2.getIntrinsicWidth() + i, this.leftDrawable.getIntrinsicHeight() + measuredHeight2);
            this.leftDrawable.draw(canvas);
            int i3 = this.gravity & 7;
            intrinsicWidth = (i3 == 3 || i3 == 1) ? this.drawablePadding + this.leftDrawable.getIntrinsicWidth() : 0;
            this.totalWidth += this.drawablePadding + this.leftDrawable.getIntrinsicWidth();
        }
        Drawable drawable3 = this.replacedDrawable;
        if (drawable3 != null && this.replacedText != null) {
            int i4 = (int) ((-this.scrollingOffset) + this.replacingDrawableTextOffset);
            int i5 = this.gravity;
            if ((i5 & 7) == 1) {
                i4 += this.offsetX;
            }
            int measuredHeight3 = (i5 & R.styleable.AppCompatTheme_toolbarNavigationButtonStyle) == 16 ? ((getMeasuredHeight() - this.replacedDrawable.getIntrinsicHeight()) / 2) + this.leftDrawableTopPadding : this.leftDrawableTopPadding + ((this.textHeight - drawable3.getIntrinsicHeight()) / 2);
            Drawable drawable4 = this.replacedDrawable;
            drawable4.setBounds(i4, measuredHeight3, drawable4.getIntrinsicWidth() + i4, this.replacedDrawable.getIntrinsicHeight() + measuredHeight3);
            this.replacedDrawable.draw(canvas);
            if (this.replacingDrawableTextIndex < 0) {
                int i6 = this.gravity & 7;
                if (i6 == 3 || i6 == 1) {
                    intrinsicWidth += this.drawablePadding + this.replacedDrawable.getIntrinsicWidth();
                }
                this.totalWidth += this.drawablePadding + this.replacedDrawable.getIntrinsicWidth();
            }
        }
        int i7 = intrinsicWidth;
        if (this.rightDrawable != null && !this.rightDrawableHidden && this.rightDrawableScale > BitmapDescriptorFactory.HUE_RED && !this.rightDrawableOutside && !this.rightDrawableInside) {
            int i8 = this.textWidth + i7 + this.drawablePadding + ((int) (-this.scrollingOffset));
            int i9 = this.gravity & 7;
            if (i9 == 1 || i9 == 5) {
                i8 += this.offsetX;
            }
            int intrinsicWidth2 = (int) (r1.getIntrinsicWidth() * this.rightDrawableScale);
            int intrinsicHeight = (int) (this.rightDrawable.getIntrinsicHeight() * this.rightDrawableScale);
            int measuredHeight4 = ((this.gravity & R.styleable.AppCompatTheme_toolbarNavigationButtonStyle) == 16 ? (getMeasuredHeight() - intrinsicHeight) / 2 : getPaddingTop() + ((this.textHeight - intrinsicHeight) / 2)) + this.rightDrawableTopPadding;
            this.rightDrawable.setBounds(i8, measuredHeight4, i8 + intrinsicWidth2, measuredHeight4 + intrinsicHeight);
            this.rightDrawableX = i8 + (intrinsicWidth2 >> 1);
            this.rightDrawableY = measuredHeight4 + (intrinsicHeight >> 1);
            this.rightDrawable.draw(canvas);
            this.totalWidth += this.drawablePadding + intrinsicWidth2;
        }
        if (this.rightDrawable2 != null && !this.rightDrawableHidden && this.rightDrawableScale > BitmapDescriptorFactory.HUE_RED && !this.rightDrawableOutside && !this.rightDrawableInside) {
            int intrinsicWidth3 = this.textWidth + i7 + this.drawablePadding + ((int) (-this.scrollingOffset));
            if (this.rightDrawable != null) {
                intrinsicWidth3 += ((int) (r3.getIntrinsicWidth() * this.rightDrawableScale)) + this.drawablePadding;
            }
            int i10 = this.gravity & 7;
            if (i10 == 1 || i10 == 5) {
                intrinsicWidth3 += this.offsetX;
            }
            int intrinsicWidth4 = (int) (this.rightDrawable2.getIntrinsicWidth() * this.rightDrawableScale);
            int intrinsicHeight2 = (int) (this.rightDrawable2.getIntrinsicHeight() * this.rightDrawableScale);
            int measuredHeight5 = ((this.gravity & R.styleable.AppCompatTheme_toolbarNavigationButtonStyle) == 16 ? (getMeasuredHeight() - intrinsicHeight2) / 2 : getPaddingTop() + ((this.textHeight - intrinsicHeight2) / 2)) + this.rightDrawableTopPadding;
            this.rightDrawable2.setBounds(intrinsicWidth3, measuredHeight5, intrinsicWidth3 + intrinsicWidth4, intrinsicHeight2 + measuredHeight5);
            this.rightDrawable2.draw(canvas);
            this.totalWidth += this.drawablePadding + intrinsicWidth4;
        }
        int iDp2 = this.totalWidth + AndroidUtilities.dp(16.0f);
        float f3 = this.scrollingOffset;
        if (f3 != BitmapDescriptorFactory.HUE_RED) {
            if (this.leftDrawable != null && !this.leftDrawableOutside) {
                int i11 = ((int) (-f3)) + iDp2;
                int measuredHeight6 = ((this.gravity & R.styleable.AppCompatTheme_toolbarNavigationButtonStyle) == 16 ? (getMeasuredHeight() - this.leftDrawable.getIntrinsicHeight()) / 2 : getPaddingTop() + ((this.textHeight - this.leftDrawable.getIntrinsicHeight()) / 2)) + this.leftDrawableTopPadding;
                Drawable drawable5 = this.leftDrawable;
                drawable5.setBounds(i11, measuredHeight6, drawable5.getIntrinsicWidth() + i11, this.leftDrawable.getIntrinsicHeight() + measuredHeight6);
                this.leftDrawable.draw(canvas);
            }
            if (this.rightDrawable != null && !this.rightDrawableOutside) {
                int intrinsicWidth5 = (int) (r1.getIntrinsicWidth() * this.rightDrawableScale);
                int intrinsicHeight3 = (int) (this.rightDrawable.getIntrinsicHeight() * this.rightDrawableScale);
                int i12 = this.textWidth + i7 + this.drawablePadding + ((int) (-this.scrollingOffset)) + iDp2;
                int measuredHeight7 = ((this.gravity & R.styleable.AppCompatTheme_toolbarNavigationButtonStyle) == 16 ? (getMeasuredHeight() - intrinsicHeight3) / 2 : getPaddingTop() + ((this.textHeight - intrinsicHeight3) / 2)) + this.rightDrawableTopPadding;
                this.rightDrawable.setBounds(i12, measuredHeight7, i12 + intrinsicWidth5, measuredHeight7 + intrinsicHeight3);
                this.rightDrawableX = i12 + (intrinsicWidth5 >> 1);
                this.rightDrawableY = measuredHeight7 + (intrinsicHeight3 >> 1);
                this.rightDrawable.draw(canvas);
            }
            if (this.rightDrawable2 != null && !this.rightDrawableOutside) {
                int intrinsicWidth6 = (int) (r1.getIntrinsicWidth() * this.rightDrawableScale);
                int intrinsicHeight4 = (int) (this.rightDrawable2.getIntrinsicHeight() * this.rightDrawableScale);
                int intrinsicWidth7 = this.textWidth + i7 + this.drawablePadding + ((int) (-this.scrollingOffset)) + iDp2;
                if (this.rightDrawable != null) {
                    intrinsicWidth7 += ((int) (r4.getIntrinsicWidth() * this.rightDrawableScale)) + this.drawablePadding;
                }
                int measuredHeight8 = ((this.gravity & R.styleable.AppCompatTheme_toolbarNavigationButtonStyle) == 16 ? (getMeasuredHeight() - intrinsicHeight4) / 2 : getPaddingTop() + ((this.textHeight - intrinsicHeight4) / 2)) + this.rightDrawableTopPadding;
                this.rightDrawable2.setBounds(intrinsicWidth7, measuredHeight8, intrinsicWidth6 + intrinsicWidth7, intrinsicHeight4 + measuredHeight8);
                this.rightDrawable2.draw(canvas);
            }
        }
        if (this.layout != null) {
            if (this.leftDrawableOutside || this.rightDrawableOutside || this.ellipsizeByGradient || this.paddingRight > 0) {
                canvas.save();
                int maxTextWidth = getMaxTextWidth() - this.paddingRight;
                Drawable drawable6 = this.rightDrawable;
                canvas.clipRect(i7, 0, maxTextWidth - AndroidUtilities.dp((drawable6 == null || (drawable6 instanceof AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable) || !this.rightDrawableOutside) ? BitmapDescriptorFactory.HUE_RED : 2.0f), getMeasuredHeight());
            }
            Emoji.emojiDrawingUseAlpha = this.usaAlphaForEmoji;
            if (this.wrapBackgroundDrawable != null) {
                int i13 = (int) ((this.offsetX + i7) - this.scrollingOffset);
                int i14 = this.textWidth;
                int i15 = i13 + (i14 / 2);
                int iMax = Math.max(i14 + getPaddingLeft() + getPaddingRight(), this.minWidth);
                int i16 = i15 - (iMax / 2);
                this.wrapBackgroundDrawable.setBounds(i16, 0, iMax + i16, getMeasuredHeight());
                this.wrapBackgroundDrawable.draw(canvas);
            }
            if (this.offsetX + i7 != 0 || this.offsetY != 0 || this.scrollingOffset != BitmapDescriptorFactory.HUE_RED) {
                canvas.save();
                canvas.translate((this.offsetX + i7) - this.scrollingOffset, this.offsetY);
                this.layoutX += (this.offsetX + i7) - this.scrollingOffset;
                this.layoutY += this.offsetY;
            }
            drawLayout(canvas);
            if (this.partLayout != null && this.fullAlpha < 1.0f) {
                int alpha = this.textPaint.getAlpha();
                this.textPaint.setAlpha((int) ((1.0f - this.fullAlpha) * 255.0f));
                canvas.save();
                if (this.partLayout.getText().length() == 1) {
                    fDp2 = AndroidUtilities.dp(this.fullTextMaxLines == 1 ? 0.5f : 4.0f);
                } else {
                    fDp2 = BitmapDescriptorFactory.HUE_RED;
                }
                canvas.translate(this.layout.getLineLeft(0) != BitmapDescriptorFactory.HUE_RED ? (-this.layout.getLineWidth(0)) + fDp2 : this.layout.getLineWidth(0) - fDp2, BitmapDescriptorFactory.HUE_RED);
                float f4 = -this.fullLayoutLeftOffset;
                float f5 = this.fullAlpha;
                canvas.translate((f4 * f5) + (this.fullLayoutLeftCharactersOffset * f5), BitmapDescriptorFactory.HUE_RED);
                this.partLayout.draw(canvas);
                canvas.restore();
                this.textPaint.setAlpha(alpha);
            }
            if (this.fullLayout != null && this.fullAlpha > BitmapDescriptorFactory.HUE_RED) {
                int alpha2 = this.textPaint.getAlpha();
                this.textPaint.setAlpha((int) (this.fullAlpha * 255.0f));
                float f6 = -this.fullLayoutLeftOffset;
                float f7 = this.fullAlpha;
                float f8 = this.fullLayoutLeftCharactersOffset;
                canvas.translate(((f6 * f7) + (f7 * f8)) - f8, BitmapDescriptorFactory.HUE_RED);
                this.fullLayout.draw(canvas);
                this.textPaint.setAlpha(alpha2);
            }
            if (this.scrollingOffset != BitmapDescriptorFactory.HUE_RED) {
                canvas.translate(iDp2, BitmapDescriptorFactory.HUE_RED);
                drawLayout(canvas);
            }
            if (this.offsetX + i7 != 0 || this.offsetY != 0 || this.scrollingOffset != BitmapDescriptorFactory.HUE_RED) {
                canvas.restore();
            }
            if (this.rightDrawable != null && !this.rightDrawableHidden && this.rightDrawableScale > BitmapDescriptorFactory.HUE_RED && !this.rightDrawableOutside && this.rightDrawableInside) {
                int i17 = this.textWidth + i7 + this.drawablePadding + ((int) (-this.scrollingOffset));
                int i18 = this.gravity & 7;
                if (i18 == 1 || i18 == 5) {
                    i17 += this.offsetX;
                }
                int intrinsicWidth8 = (int) (r1.getIntrinsicWidth() * this.rightDrawableScale);
                int intrinsicHeight5 = (int) (this.rightDrawable.getIntrinsicHeight() * this.rightDrawableScale);
                int measuredHeight9 = (this.gravity & R.styleable.AppCompatTheme_toolbarNavigationButtonStyle) == 16 ? ((getMeasuredHeight() - intrinsicHeight5) / 2) + this.rightDrawableTopPadding : this.rightDrawableTopPadding + getPaddingTop() + ((this.textHeight - intrinsicHeight5) / 2);
                this.rightDrawable.setBounds(i17, measuredHeight9, i17 + intrinsicWidth8, measuredHeight9 + intrinsicHeight5);
                this.rightDrawableX = i17 + (intrinsicWidth8 >> 1);
                this.rightDrawableY = measuredHeight9 + (intrinsicHeight5 >> 1);
                this.rightDrawable.draw(canvas);
                this.totalWidth += this.drawablePadding + intrinsicWidth8;
            }
            if (this.rightDrawable2 != null && !this.rightDrawableHidden && this.rightDrawableScale > BitmapDescriptorFactory.HUE_RED && !this.rightDrawableOutside && this.rightDrawableInside) {
                int intrinsicWidth9 = this.textWidth + i7 + this.drawablePadding + ((int) (-this.scrollingOffset));
                if (this.rightDrawable != null) {
                    intrinsicWidth9 += ((int) (r2.getIntrinsicWidth() * this.rightDrawableScale)) + this.drawablePadding;
                }
                int i19 = this.gravity & 7;
                if (i19 == 1 || i19 == 5) {
                    intrinsicWidth9 += this.offsetX;
                }
                int intrinsicWidth10 = (int) (this.rightDrawable2.getIntrinsicWidth() * this.rightDrawableScale);
                int intrinsicHeight6 = (int) (this.rightDrawable2.getIntrinsicHeight() * this.rightDrawableScale);
                int measuredHeight10 = ((this.gravity & R.styleable.AppCompatTheme_toolbarNavigationButtonStyle) == 16 ? (getMeasuredHeight() - intrinsicHeight6) / 2 : getPaddingTop() + ((this.textHeight - intrinsicHeight6) / 2)) + this.rightDrawableTopPadding;
                this.rightDrawable2.setBounds(intrinsicWidth9, measuredHeight10, intrinsicWidth9 + intrinsicWidth10, intrinsicHeight6 + measuredHeight10);
                this.rightDrawable2.draw(canvas);
                this.totalWidth += this.drawablePadding + intrinsicWidth10;
            }
            if (z) {
                if (this.scrollingOffset < AndroidUtilities.dp(10.0f)) {
                    paint2 = this.fadePaint;
                    iDp = (int) ((this.scrollingOffset / AndroidUtilities.dp(10.0f)) * 255.0f);
                } else if (this.scrollingOffset > (this.totalWidth + AndroidUtilities.dp(16.0f)) - AndroidUtilities.dp(10.0f)) {
                    this.fadePaint.setAlpha((int) ((1.0f - ((this.scrollingOffset - ((this.totalWidth + AndroidUtilities.dp(16.0f)) - AndroidUtilities.dp(10.0f))) / AndroidUtilities.dp(10.0f))) * 255.0f));
                    float fDp3 = AndroidUtilities.dp(6.0f) + i7;
                    float measuredHeight11 = getMeasuredHeight();
                    Paint paint3 = this.fadePaint;
                    f2 = BitmapDescriptorFactory.HUE_RED;
                    canvas.drawRect(i7, BitmapDescriptorFactory.HUE_RED, fDp3, measuredHeight11, paint3);
                    canvas.save();
                    canvas.translate((getMaxTextWidth() - this.paddingRight) - AndroidUtilities.dp(6.0f), BitmapDescriptorFactory.HUE_RED);
                    fDp = AndroidUtilities.dp(6.0f);
                    measuredHeight = getMeasuredHeight();
                    paint = this.fadePaintBack;
                    f = BitmapDescriptorFactory.HUE_RED;
                } else {
                    paint2 = this.fadePaint;
                    iDp = 255;
                }
                paint2.setAlpha(iDp);
                float fDp32 = AndroidUtilities.dp(6.0f) + i7;
                float measuredHeight112 = getMeasuredHeight();
                Paint paint32 = this.fadePaint;
                f2 = BitmapDescriptorFactory.HUE_RED;
                canvas.drawRect(i7, BitmapDescriptorFactory.HUE_RED, fDp32, measuredHeight112, paint32);
                canvas.save();
                canvas.translate((getMaxTextWidth() - this.paddingRight) - AndroidUtilities.dp(6.0f), BitmapDescriptorFactory.HUE_RED);
                fDp = AndroidUtilities.dp(6.0f);
                measuredHeight = getMeasuredHeight();
                paint = this.fadePaintBack;
                f = BitmapDescriptorFactory.HUE_RED;
            } else {
                if (this.ellipsizeByGradient && this.textDoesNotFit && this.fadeEllpsizePaint != null) {
                    canvas.save();
                    updateFadePaints();
                    if (!this.ellipsizeByGradientLeft) {
                        int maxTextWidth2 = (getMaxTextWidth() - this.paddingRight) - this.fadeEllpsizePaintWidth;
                        Drawable drawable7 = this.rightDrawable;
                        canvas.translate(maxTextWidth2 - AndroidUtilities.dp((drawable7 == null || (drawable7 instanceof AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable) || !this.rightDrawableOutside) ? BitmapDescriptorFactory.HUE_RED : 2.0f), BitmapDescriptorFactory.HUE_RED);
                    }
                    f = i7;
                    fDp = this.fadeEllpsizePaintWidth;
                    measuredHeight = getMeasuredHeight();
                    paint = this.fadeEllpsizePaint;
                    f2 = BitmapDescriptorFactory.HUE_RED;
                }
                updateScrollAnimation();
                Emoji.emojiDrawingUseAlpha = true;
                if (!this.leftDrawableOutside || this.rightDrawableOutside || this.ellipsizeByGradient || this.paddingRight > 0) {
                    canvas.restore();
                }
            }
            canvas.drawRect(f, f2, fDp, measuredHeight, paint);
            canvas.restore();
            updateScrollAnimation();
            Emoji.emojiDrawingUseAlpha = true;
            if (!this.leftDrawableOutside) {
                canvas.restore();
            }
        }
        if (z || this.ellipsizeByGradient) {
            canvas.restoreToCount(iSaveLayerAlpha);
        }
        Drawable drawable8 = this.leftDrawable;
        if (drawable8 != null && this.leftDrawableOutside) {
            int intrinsicWidth11 = drawable8.getIntrinsicWidth();
            int intrinsicHeight7 = this.leftDrawable.getIntrinsicHeight();
            int measuredHeight12 = ((this.gravity & R.styleable.AppCompatTheme_toolbarNavigationButtonStyle) == 16 ? (getMeasuredHeight() - intrinsicHeight7) / 2 : getPaddingTop() + ((this.textHeight - intrinsicHeight7) / 2)) + this.leftDrawableTopPadding;
            this.leftDrawable.setBounds(0, measuredHeight12, intrinsicWidth11, intrinsicHeight7 + measuredHeight12);
            this.leftDrawable.draw(canvas);
        }
        if (this.rightDrawable != null && this.rightDrawableOutside) {
            int i20 = this.textWidth + i7 + this.drawablePadding;
            float f9 = this.scrollingOffset;
            int iMin = Math.min(i20 + (f9 == BitmapDescriptorFactory.HUE_RED ? -iDp2 : (int) (-f9)) + iDp2, (getMaxTextWidth() - this.paddingRight) + this.drawablePadding);
            int intrinsicWidth12 = (int) (this.rightDrawable.getIntrinsicWidth() * this.rightDrawableScale);
            int intrinsicHeight8 = (int) (this.rightDrawable.getIntrinsicHeight() * this.rightDrawableScale);
            int measuredHeight13 = ((this.gravity & R.styleable.AppCompatTheme_toolbarNavigationButtonStyle) == 16 ? (getMeasuredHeight() - intrinsicHeight8) / 2 : getPaddingTop() + ((this.textHeight - intrinsicHeight8) / 2)) + this.rightDrawableTopPadding;
            this.rightDrawable.setBounds(iMin, measuredHeight13, iMin + intrinsicWidth12, measuredHeight13 + intrinsicHeight8);
            this.rightDrawableX = iMin + (intrinsicWidth12 >> 1);
            this.rightDrawableY = measuredHeight13 + (intrinsicHeight8 >> 1);
            this.rightDrawable.draw(canvas);
        }
        if (this.rightDrawable2 == null || !this.rightDrawableOutside) {
            return;
        }
        int i21 = i7 + this.textWidth + this.drawablePadding;
        float f10 = this.scrollingOffset;
        int iMin2 = Math.min(i21 + (f10 == BitmapDescriptorFactory.HUE_RED ? -iDp2 : (int) (-f10)) + iDp2, (getMaxTextWidth() - this.paddingRight) + this.drawablePadding);
        if (this.rightDrawable != null) {
            iMin2 += ((int) (r2.getIntrinsicWidth() * this.rightDrawableScale)) + this.drawablePadding;
        }
        int intrinsicWidth13 = (int) (this.rightDrawable2.getIntrinsicWidth() * this.rightDrawableScale);
        int intrinsicHeight9 = (int) (this.rightDrawable2.getIntrinsicHeight() * this.rightDrawableScale);
        int measuredHeight14 = ((this.gravity & R.styleable.AppCompatTheme_toolbarNavigationButtonStyle) == 16 ? (getMeasuredHeight() - intrinsicHeight9) / 2 : getPaddingTop() + ((this.textHeight - intrinsicHeight9) / 2)) + this.rightDrawableTopPadding;
        this.rightDrawable2.setBounds(iMin2, measuredHeight14, intrinsicWidth13 + iMin2, intrinsicHeight9 + measuredHeight14);
        this.rightDrawable2.draw(canvas);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setVisibleToUser(true);
        accessibilityNodeInfo.setClassName("android.widget.TextView");
        accessibilityNodeInfo.setText(this.text);
    }

    @Override // android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        this.wasLayout = true;
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        Drawable drawable;
        Drawable drawable2;
        Drawable drawable3;
        Drawable drawable4;
        Drawable drawable5;
        Drawable drawable6;
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        int i3 = this.lastWidth;
        int i4 = AndroidUtilities.displaySize.x;
        if (i3 != i4) {
            this.lastWidth = i4;
            this.scrollingOffset = BitmapDescriptorFactory.HUE_RED;
            this.currentScrollDelay = 500;
        }
        int intrinsicWidth = 0;
        createLayout((((((size - getPaddingLeft()) - getPaddingRight()) - this.minusWidth) - ((!this.leftDrawableOutside || (drawable6 = this.leftDrawable) == null) ? 0 : drawable6.getIntrinsicWidth() + this.drawablePadding)) - ((!this.rightDrawableOutside || (drawable5 = this.rightDrawable) == null) ? 0 : drawable5.getIntrinsicWidth() + this.drawablePadding)) - ((!this.rightDrawableOutside || (drawable4 = this.rightDrawable2) == null) ? 0 : drawable4.getIntrinsicWidth() + this.drawablePadding));
        if (View.MeasureSpec.getMode(i2) != 1073741824) {
            size2 = getPaddingBottom() + getPaddingTop() + this.textHeight;
        }
        if (this.widthWrapContent) {
            int paddingLeft = getPaddingLeft() + this.textWidth + getPaddingRight() + this.minusWidth + ((!this.leftDrawableOutside || (drawable3 = this.leftDrawable) == null) ? 0 : drawable3.getIntrinsicWidth() + this.drawablePadding) + ((!this.rightDrawableOutside || (drawable2 = this.rightDrawable) == null) ? 0 : drawable2.getIntrinsicWidth() + this.drawablePadding);
            if (this.rightDrawableOutside && (drawable = this.rightDrawable2) != null) {
                intrinsicWidth = drawable.getIntrinsicWidth() + this.drawablePadding;
            }
            size = Math.min(size, paddingLeft + intrinsicWidth);
        }
        setMeasuredDimension(size, size2);
        this.offsetY = (this.gravity & R.styleable.AppCompatTheme_toolbarNavigationButtonStyle) == 16 ? getPaddingTop() + ((((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom()) - this.textHeight) / 2) : getPaddingTop();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.rightDrawableOnClickListener != null && this.rightDrawable != null) {
            RectF rectF = AndroidUtilities.rectTmp;
            rectF.set(this.rightDrawableX - AndroidUtilities.dp(16.0f), this.rightDrawableY - AndroidUtilities.dp(16.0f), this.rightDrawableX + AndroidUtilities.dp(16.0f), this.rightDrawableY + AndroidUtilities.dp(16.0f));
            if (motionEvent.getAction() == 0 && rectF.contains((int) motionEvent.getX(), (int) motionEvent.getY())) {
                this.maybeClick = true;
                this.touchDownX = motionEvent.getX();
                this.touchDownY = motionEvent.getY();
                getParent().requestDisallowInterceptTouchEvent(true);
                Object obj = this.rightDrawable;
                if (obj instanceof PressableDrawable) {
                    ((PressableDrawable) obj).setPressed(true);
                }
            } else if (motionEvent.getAction() == 2 && this.maybeClick) {
                if (Math.abs(motionEvent.getX() - this.touchDownX) >= AndroidUtilities.touchSlop || Math.abs(motionEvent.getY() - this.touchDownY) >= AndroidUtilities.touchSlop) {
                    this.maybeClick = false;
                    getParent().requestDisallowInterceptTouchEvent(false);
                    Object obj2 = this.rightDrawable;
                    if (obj2 instanceof PressableDrawable) {
                        ((PressableDrawable) obj2).setPressed(false);
                    }
                }
            } else if (motionEvent.getAction() == 1 || motionEvent.getAction() == 3) {
                if (this.maybeClick && motionEvent.getAction() == 1) {
                    this.rightDrawableOnClickListener.onClick(this);
                    Object obj3 = this.rightDrawable;
                    if (obj3 instanceof PressableDrawable) {
                        ((PressableDrawable) obj3).setPressed(false);
                    }
                }
                this.maybeClick = false;
                getParent().requestDisallowInterceptTouchEvent(false);
            }
        }
        return super.onTouchEvent(motionEvent) || this.maybeClick;
    }

    public void replaceTextWithDrawable(Drawable drawable, String str) {
        Drawable drawable2 = this.replacedDrawable;
        if (drawable2 == drawable) {
            return;
        }
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.replacedDrawable = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
        }
        if (!recreateLayoutMaybe()) {
            invalidate();
        }
        this.replacedText = str;
    }

    public void resetScrolling() {
        this.scrollingOffset = BitmapDescriptorFactory.HUE_RED;
    }

    public void setAlignment(Layout.Alignment alignment) {
        this.mAlignment = alignment;
        requestLayout();
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        if (this.maxLines > 1) {
            super.setBackgroundDrawable(drawable);
        } else {
            this.wrapBackgroundDrawable = drawable;
        }
    }

    public void setBuildFullLayout(boolean z) {
        this.buildFullLayout = z;
    }

    public void setCanHideRightDrawable(boolean z) {
        this.canHideRightDrawable = z;
    }

    public void setDrawablePadding(int i) {
        if (this.drawablePadding == i) {
            return;
        }
        this.drawablePadding = i;
        if (recreateLayoutMaybe()) {
            return;
        }
        invalidate();
    }

    public void setEllipsizeByGradient(int i) {
        setEllipsizeByGradient(i, (Boolean) null);
    }

    public void setEllipsizeByGradient(int i, Boolean bool) {
        setEllipsizeByGradient(true, bool);
        this.ellipsizeByGradientWidthDp = i;
        updateFadePaints();
    }

    public void setEllipsizeByGradient(boolean z) {
        setEllipsizeByGradient(z, (Boolean) null);
    }

    public void setEllipsizeByGradient(boolean z, Boolean bool) {
        if (this.scrollNonFitText == z) {
            return;
        }
        this.ellipsizeByGradient = z;
        this.forceEllipsizeByGradientLeft = bool;
        updateFadePaints();
    }

    public void setEmojiCacheType(int i) {
        if (i != this.emojiCacheType) {
            AnimatedEmojiSpan.release(this, this.emojiStack);
            this.emojiCacheType = i;
            if (this.attachedToWindow) {
                this.emojiStack = AnimatedEmojiSpan.update(i, this, this.emojiStack, this.layout);
            }
        }
    }

    public void setEmojiColor(int i) {
        this.emojiStackColorFilter = new PorterDuffColorFilter(i, PorterDuff.Mode.SRC_IN);
    }

    public void setFullAlpha(float f) {
        this.fullAlpha = f;
        invalidate();
    }

    public void setFullLayoutAdditionalWidth(int i, int i2) {
        if (this.fullLayoutAdditionalWidth == i && this.fullLayoutLeftOffset == i2) {
            return;
        }
        this.fullLayoutAdditionalWidth = i;
        this.fullLayoutLeftOffset = i2;
        createLayout(((getMaxTextWidth() - getPaddingLeft()) - getPaddingRight()) - this.minusWidth);
    }

    public void setFullTextMaxLines(int i) {
        this.fullTextMaxLines = i;
    }

    public void setGravity(int i) {
        this.gravity = i;
    }

    public void setLeftDrawable(int i) {
        setLeftDrawable(i == 0 ? null : getContext().getResources().getDrawable(i));
    }

    public void setLeftDrawable(Drawable drawable) {
        Drawable drawable2 = this.leftDrawable;
        if (drawable2 == drawable) {
            return;
        }
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.leftDrawable = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
        }
        if (recreateLayoutMaybe()) {
            return;
        }
        invalidate();
    }

    public void setLeftDrawableOutside(boolean z) {
        this.leftDrawableOutside = z;
    }

    public void setLeftDrawableTopPadding(int i) {
        this.leftDrawableTopPadding = i;
    }

    public void setLinkTextColor(int i) {
        this.textPaint.linkColor = i;
        invalidate();
    }

    public void setMaxLines(int i) {
        this.maxLines = i;
    }

    public void setMinWidth(int i) {
        this.minWidth = i;
    }

    public void setMinusWidth(int i) {
        if (i == this.minusWidth) {
            return;
        }
        this.minusWidth = i;
        if (recreateLayoutMaybe()) {
            return;
        }
        invalidate();
    }

    public void setRightDrawable(int i) {
        setRightDrawable(i == 0 ? null : getContext().getResources().getDrawable(i));
    }

    public boolean setRightDrawable(Drawable drawable) {
        Drawable drawable2 = this.rightDrawable;
        if (drawable2 == drawable) {
            return false;
        }
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.rightDrawable = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
        }
        if (recreateLayoutMaybe()) {
            return true;
        }
        invalidate();
        return true;
    }

    public boolean setRightDrawable2(Drawable drawable) {
        Drawable drawable2 = this.rightDrawable2;
        if (drawable2 == drawable) {
            return false;
        }
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.rightDrawable2 = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
        }
        if (recreateLayoutMaybe()) {
            return true;
        }
        invalidate();
        return true;
    }

    public void setRightDrawableInside(boolean z) {
        this.rightDrawableInside = z;
    }

    public void setRightDrawableOnClick(View.OnClickListener onClickListener) {
        this.rightDrawableOnClickListener = onClickListener;
    }

    public void setRightDrawableOutside(boolean z) {
        this.rightDrawableOutside = z;
    }

    public void setRightDrawableScale(float f) {
        this.rightDrawableScale = f;
    }

    public void setRightDrawableTopPadding(int i) {
        this.rightDrawableTopPadding = i;
    }

    public void setRightPadding(int i) {
        if (this.paddingRight != i) {
            this.paddingRight = i;
            int maxTextWidth = ((getMaxTextWidth() - getPaddingLeft()) - getPaddingRight()) - this.minusWidth;
            Drawable drawable = this.leftDrawable;
            if (drawable != null && !this.leftDrawableOutside) {
                maxTextWidth = (maxTextWidth - drawable.getIntrinsicWidth()) - this.drawablePadding;
            }
            int intrinsicWidth = 0;
            if (!this.rightDrawableInside) {
                if (this.rightDrawable != null && !this.rightDrawableOutside) {
                    intrinsicWidth = (int) (r0.getIntrinsicWidth() * this.rightDrawableScale);
                    maxTextWidth = (maxTextWidth - intrinsicWidth) - this.drawablePadding;
                }
                if (this.rightDrawable2 != null && !this.rightDrawableOutside) {
                    intrinsicWidth = (int) (r0.getIntrinsicWidth() * this.rightDrawableScale);
                    maxTextWidth = (maxTextWidth - intrinsicWidth) - this.drawablePadding;
                }
            }
            if (this.replacedText != null && this.replacedDrawable != null) {
                int iIndexOf = this.text.toString().indexOf(this.replacedText);
                this.replacingDrawableTextIndex = iIndexOf;
                if (iIndexOf < 0) {
                    maxTextWidth = (maxTextWidth - this.replacedDrawable.getIntrinsicWidth()) - this.drawablePadding;
                }
            }
            if (this.canHideRightDrawable && intrinsicWidth != 0 && !this.rightDrawableOutside) {
                if (!this.text.equals(TextUtils.ellipsize(this.text, this.textPaint, maxTextWidth, TextUtils.TruncateAt.END))) {
                    this.rightDrawableHidden = true;
                    maxTextWidth = maxTextWidth + intrinsicWidth + this.drawablePadding;
                }
            }
            calcOffset(maxTextWidth);
            invalidate();
        }
    }

    public void setScrollNonFitText(boolean z) {
        if (this.scrollNonFitText == z) {
            return;
        }
        this.scrollNonFitText = z;
        updateFadePaints();
        requestLayout();
    }

    public void setSideDrawablesColor(int i) {
        Theme.setDrawableColor(this.rightDrawable, i);
        Theme.setDrawableColor(this.leftDrawable, i);
    }

    public boolean setText(CharSequence charSequence) {
        return setText(charSequence, false);
    }

    public boolean setText(CharSequence charSequence, boolean z) {
        CharSequence charSequence2 = this.text;
        if (charSequence2 == null && charSequence == null) {
            return false;
        }
        if (!z && charSequence2 != null && charSequence2.equals(charSequence)) {
            return false;
        }
        this.text = charSequence;
        this.currentScrollDelay = 500;
        recreateLayoutMaybe();
        return true;
    }

    public void setTextColor(int i) {
        this.textPaint.setColor(i);
        invalidate();
    }

    public void setTextSize(int i) {
        float fDp = AndroidUtilities.dp(i);
        if (fDp == this.textPaint.getTextSize()) {
            return;
        }
        this.textPaint.setTextSize(fDp);
        if (recreateLayoutMaybe()) {
            return;
        }
        invalidate();
    }

    public void setTypeface(Typeface typeface) {
        this.textPaint.setTypeface(typeface);
    }

    public void setWidthWrapContent(boolean z) {
        this.widthWrapContent = z;
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return drawable == this.rightDrawable || drawable == this.rightDrawable2 || drawable == this.leftDrawable || super.verifyDrawable(drawable);
    }
}
