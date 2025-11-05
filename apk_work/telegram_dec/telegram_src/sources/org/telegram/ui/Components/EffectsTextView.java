package org.telegram.ui.Components;

import android.content.Context;
import android.graphics.Canvas;
import android.text.Layout;
import android.text.SpannableString;
import android.text.style.ClickableSpan;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import android.widget.TextView;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.Emoji;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.LinkSpanDrawable;
import org.telegram.ui.Components.spoilers.SpoilersTextView;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes5.dex */
public class EffectsTextView extends SpoilersTextView {
    private boolean disablePaddingsOffset;
    private boolean disablePaddingsOffsetX;
    private boolean disablePaddingsOffsetY;
    private boolean isCustomLinkCollector;
    private LinkSpanDrawable.LinkCollector links;
    private LinkSpanDrawable.LinksTextView.OnLinkPress onLongPressListener;
    private LinkSpanDrawable.LinksTextView.OnLinkPress onPressListener;
    private LinkSpanDrawable pressedLink;
    private Theme.ResourcesProvider resourcesProvider;

    public EffectsTextView(Context context) {
        this(context, null);
    }

    public EffectsTextView(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context, true);
        this.isCustomLinkCollector = false;
        this.links = new LinkSpanDrawable.LinkCollector(this);
        this.resourcesProvider = resourcesProvider;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onTouchEvent$0(LinkSpanDrawable linkSpanDrawable, ClickableSpan clickableSpan) {
        LinkSpanDrawable.LinksTextView.OnLinkPress onLinkPress = this.onLongPressListener;
        if (onLinkPress == null || this.pressedLink != linkSpanDrawable) {
            return;
        }
        onLinkPress.run(clickableSpan);
        this.pressedLink = null;
        this.links.clear();
    }

    @Override // org.telegram.ui.Components.spoilers.SpoilersTextView
    public ClickableSpan hit(int i, int i2) {
        Layout layout = getLayout();
        if (layout == null) {
            return null;
        }
        int paddingLeft = i - getPaddingLeft();
        int paddingTop = i2 - getPaddingTop();
        int lineForVertical = layout.getLineForVertical(paddingTop);
        float f = paddingLeft;
        int offsetForHorizontal = layout.getOffsetForHorizontal(lineForVertical, f);
        float lineLeft = getLayout().getLineLeft(lineForVertical);
        if (lineLeft <= f && lineLeft + layout.getLineWidth(lineForVertical) >= f && paddingTop >= 0 && paddingTop <= layout.getHeight()) {
            ClickableSpan[] clickableSpanArr = (ClickableSpan[]) new SpannableString(layout.getText()).getSpans(offsetForHorizontal, offsetForHorizontal, ClickableSpan.class);
            if (clickableSpanArr.length != 0 && !AndroidUtilities.isAccessibilityScreenReaderEnabled()) {
                return clickableSpanArr[0];
            }
        }
        return null;
    }

    @Override // org.telegram.ui.Components.spoilers.SpoilersTextView, android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        if (!this.isCustomLinkCollector) {
            canvas.save();
            if (!this.disablePaddingsOffset) {
                boolean z = this.disablePaddingsOffsetX;
                float paddingTop = BitmapDescriptorFactory.HUE_RED;
                float paddingLeft = z ? BitmapDescriptorFactory.HUE_RED : getPaddingLeft();
                if (!this.disablePaddingsOffsetY) {
                    paddingTop = getPaddingTop();
                }
                canvas.translate(paddingLeft, paddingTop);
            }
            if (this.links.draw(canvas)) {
                invalidate();
            }
            canvas.restore();
        }
        super.onDraw(canvas);
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.links != null) {
            Layout layout = getLayout();
            final ClickableSpan clickableSpanHit = hit((int) motionEvent.getX(), (int) motionEvent.getY());
            if (clickableSpanHit != null && motionEvent.getAction() == 0) {
                final LinkSpanDrawable linkSpanDrawable = new LinkSpanDrawable(clickableSpanHit, this.resourcesProvider, motionEvent.getX(), motionEvent.getY());
                this.pressedLink = linkSpanDrawable;
                this.links.addLink(linkSpanDrawable);
                SpannableString spannableString = new SpannableString(layout.getText());
                int spanStart = spannableString.getSpanStart(this.pressedLink.getSpan());
                int spanEnd = spannableString.getSpanEnd(this.pressedLink.getSpan());
                LinkPath linkPathObtainNewPath = this.pressedLink.obtainNewPath();
                linkPathObtainNewPath.setCurrentLayout(layout, spanStart, getPaddingTop());
                layout.getSelectionPath(spanStart, spanEnd, linkPathObtainNewPath);
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.EffectsTextView$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onTouchEvent$0(linkSpanDrawable, clickableSpanHit);
                    }
                }, ViewConfiguration.getLongPressTimeout());
                return true;
            }
            if (motionEvent.getAction() == 1) {
                this.links.clear();
                LinkSpanDrawable linkSpanDrawable2 = this.pressedLink;
                if (linkSpanDrawable2 != null && linkSpanDrawable2.getSpan() == clickableSpanHit) {
                    LinkSpanDrawable.LinksTextView.OnLinkPress onLinkPress = this.onPressListener;
                    if (onLinkPress != null) {
                        onLinkPress.run((ClickableSpan) this.pressedLink.getSpan());
                    } else if (this.pressedLink.getSpan() != null) {
                        ((ClickableSpan) this.pressedLink.getSpan()).onClick(this);
                    }
                    this.pressedLink = null;
                    return true;
                }
                this.pressedLink = null;
            }
            if (motionEvent.getAction() == 3) {
                this.links.clear();
                this.pressedLink = null;
            }
        }
        return this.pressedLink != null || super.onTouchEvent(motionEvent);
    }

    @Override // org.telegram.ui.Components.spoilers.SpoilersTextView
    public void setDisablePaddingsOffset(boolean z) {
        this.disablePaddingsOffset = z;
    }

    @Override // org.telegram.ui.Components.spoilers.SpoilersTextView
    public void setDisablePaddingsOffsetX(boolean z) {
        this.disablePaddingsOffsetX = z;
    }

    @Override // org.telegram.ui.Components.spoilers.SpoilersTextView
    public void setDisablePaddingsOffsetY(boolean z) {
        this.disablePaddingsOffsetY = z;
    }

    public void setOnLinkLongPressListener(LinkSpanDrawable.LinksTextView.OnLinkPress onLinkPress) {
        this.onLongPressListener = onLinkPress;
    }

    public void setOnLinkPressListener(LinkSpanDrawable.LinksTextView.OnLinkPress onLinkPress) {
        this.onPressListener = onLinkPress;
    }

    @Override // org.telegram.ui.Components.spoilers.SpoilersTextView, android.widget.TextView
    public void setText(CharSequence charSequence, TextView.BufferType bufferType) {
        super.setText(Emoji.replaceEmoji(charSequence, getPaint().getFontMetricsInt(), false), bufferType);
    }
}
