package org.telegram.ui.Cells;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.Region;
import android.net.Uri;
import android.text.Layout;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Stack;
import java.util.concurrent.atomic.AtomicReference;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.NotificationCenter;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.AnimatedEmojiSpan;
import org.telegram.ui.Components.CheckBox2;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.LetterDrawable;
import org.telegram.ui.Components.LinkPath;
import org.telegram.ui.Components.LinkSpanDrawable;
import org.telegram.ui.Components.TextStyleSpan;
import org.telegram.ui.Components.spoilers.SpoilerEffect;
import org.telegram.ui.FilteredSearchView;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes4.dex */
public class SharedLinkCell extends FrameLayout {
    private StaticLayout captionLayout;
    private TextPaint captionTextPaint;
    private int captionY;
    private CheckBox2 checkBox;
    private boolean checkingForLongPress;
    private StaticLayout dateLayout;
    private int dateLayoutX;
    private SharedLinkCellDelegate delegate;
    private TextPaint description2TextPaint;
    private int description2Y;
    private StaticLayout descriptionLayout;
    private StaticLayout descriptionLayout2;
    private List descriptionLayout2Spoilers;
    private List descriptionLayoutSpoilers;
    private TextPaint descriptionTextPaint;
    private int descriptionY;
    private boolean drawLinkImageView;
    private StaticLayout fromInfoLayout;
    private AnimatedEmojiSpan.EmojiGroupedSpans fromInfoLayoutEmojis;
    private int fromInfoLayoutY;
    private LetterDrawable letterDrawable;
    private ImageReceiver linkImageView;
    private ArrayList linkLayout;
    private boolean linkPreviewPressed;
    private SparseArray linkSpoilers;
    private int linkY;
    ArrayList links;
    private LinkSpanDrawable.LinkCollector linksCollector;
    private MessageObject message;
    private boolean needDivider;
    private AtomicReference patchedDescriptionLayout;
    private AtomicReference patchedDescriptionLayout2;
    private Path path;
    private CheckForLongPress pendingCheckForLongPress;
    private CheckForTap pendingCheckForTap;
    private int pressCount;
    private LinkSpanDrawable pressedLink;
    private int pressedLinkIndex;
    private Theme.ResourcesProvider resourcesProvider;
    private SpoilerEffect spoilerPressed;
    private int spoilerTypePressed;
    private Stack spoilersPool;
    private StaticLayout titleLayout;
    private TextPaint titleTextPaint;
    private int titleY;
    private int viewType;

    class CheckForLongPress implements Runnable {
        public int currentPressCount;

        CheckForLongPress() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (SharedLinkCell.this.checkingForLongPress && SharedLinkCell.this.getParent() != null && this.currentPressCount == SharedLinkCell.this.pressCount) {
                SharedLinkCell.this.checkingForLongPress = false;
                try {
                    SharedLinkCell.this.performHapticFeedback(0);
                } catch (Exception unused) {
                }
                if (SharedLinkCell.this.pressedLinkIndex >= 0) {
                    SharedLinkCellDelegate sharedLinkCellDelegate = SharedLinkCell.this.delegate;
                    SharedLinkCell sharedLinkCell = SharedLinkCell.this;
                    sharedLinkCellDelegate.onLinkPress(((CharSequence) sharedLinkCell.links.get(sharedLinkCell.pressedLinkIndex)).toString(), true);
                }
                MotionEvent motionEventObtain = MotionEvent.obtain(0L, 0L, 3, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 0);
                SharedLinkCell.this.onTouchEvent(motionEventObtain);
                motionEventObtain.recycle();
            }
        }
    }

    private final class CheckForTap implements Runnable {
        private CheckForTap() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (SharedLinkCell.this.pendingCheckForLongPress == null) {
                SharedLinkCell sharedLinkCell = SharedLinkCell.this;
                sharedLinkCell.pendingCheckForLongPress = sharedLinkCell.new CheckForLongPress();
            }
            SharedLinkCell.this.pendingCheckForLongPress.currentPressCount = SharedLinkCell.access$104(SharedLinkCell.this);
            SharedLinkCell sharedLinkCell2 = SharedLinkCell.this;
            sharedLinkCell2.postDelayed(sharedLinkCell2.pendingCheckForLongPress, ViewConfiguration.getLongPressTimeout() - ViewConfiguration.getTapTimeout());
        }
    }

    public interface SharedLinkCellDelegate {
        boolean canPerformActions();

        void needOpenWebView(TLRPC.WebPage webPage, MessageObject messageObject);

        void onLinkPress(String str, boolean z);
    }

    public SharedLinkCell(Context context, int i) {
        this(context, i, null);
    }

    public SharedLinkCell(Context context, int i, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.checkingForLongPress = false;
        this.pendingCheckForLongPress = null;
        this.pressCount = 0;
        this.pendingCheckForTap = null;
        this.linksCollector = new LinkSpanDrawable.LinkCollector(this);
        this.links = new ArrayList();
        this.linkLayout = new ArrayList();
        this.linkSpoilers = new SparseArray();
        this.descriptionLayoutSpoilers = new ArrayList();
        this.descriptionLayout2Spoilers = new ArrayList();
        this.spoilersPool = new Stack();
        this.path = new Path();
        this.spoilerTypePressed = -1;
        this.titleY = AndroidUtilities.dp(10.0f);
        this.descriptionY = AndroidUtilities.dp(30.0f);
        this.patchedDescriptionLayout = new AtomicReference();
        this.description2Y = AndroidUtilities.dp(30.0f);
        this.patchedDescriptionLayout2 = new AtomicReference();
        this.captionY = AndroidUtilities.dp(30.0f);
        this.fromInfoLayoutY = AndroidUtilities.dp(30.0f);
        this.resourcesProvider = resourcesProvider;
        this.viewType = i;
        setFocusable(true);
        TextPaint textPaint = new TextPaint(1);
        this.titleTextPaint = textPaint;
        textPaint.setTypeface(AndroidUtilities.bold());
        this.titleTextPaint.setColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, resourcesProvider));
        this.descriptionTextPaint = new TextPaint(1);
        this.titleTextPaint.setTextSize(AndroidUtilities.dp(14.0f));
        this.descriptionTextPaint.setTextSize(AndroidUtilities.dp(14.0f));
        setWillNotDraw(false);
        ImageReceiver imageReceiver = new ImageReceiver(this);
        this.linkImageView = imageReceiver;
        imageReceiver.setRoundRadius(AndroidUtilities.dp(4.0f));
        this.letterDrawable = new LetterDrawable(resourcesProvider, 0);
        CheckBox2 checkBox2 = new CheckBox2(context, 21, resourcesProvider);
        this.checkBox = checkBox2;
        checkBox2.setVisibility(4);
        this.checkBox.setColor(-1, Theme.key_windowBackgroundWhite, Theme.key_checkboxCheck);
        this.checkBox.setDrawUnchecked(false);
        this.checkBox.setDrawBackgroundAsArc(2);
        CheckBox2 checkBox22 = this.checkBox;
        boolean z = LocaleController.isRTL;
        addView(checkBox22, LayoutHelper.createFrame(24, 24.0f, (z ? 5 : 3) | 48, z ? BitmapDescriptorFactory.HUE_RED : 44.0f, 44.0f, z ? 44.0f : BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED));
        if (i == 1) {
            TextPaint textPaint2 = new TextPaint(1);
            this.description2TextPaint = textPaint2;
            textPaint2.setTextSize(AndroidUtilities.dp(13.0f));
        }
        TextPaint textPaint3 = new TextPaint(1);
        this.captionTextPaint = textPaint3;
        textPaint3.setTextSize(AndroidUtilities.dp(13.0f));
    }

    static /* synthetic */ int access$104(SharedLinkCell sharedLinkCell) {
        int i = sharedLinkCell.pressCount + 1;
        sharedLinkCell.pressCount = i;
        return i;
    }

    private int getYOffsetForType(int i) {
        return i != 1 ? i != 2 ? this.linkY : this.description2Y : this.descriptionY;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startSpoilerRipples$0() {
        this.message.isSpoilersRevealed = true;
        this.linkSpoilers.clear();
        this.descriptionLayoutSpoilers.clear();
        this.descriptionLayout2Spoilers.clear();
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startSpoilerRipples$1() {
        post(new Runnable() { // from class: org.telegram.ui.Cells.SharedLinkCell$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$startSpoilerRipples$0();
            }
        });
    }

    private void startSpoilerRipples(int i, int i2, int i3) {
        int iDp = AndroidUtilities.dp(LocaleController.isRTL ? 8.0f : AndroidUtilities.leftBaseline);
        resetPressedLink();
        this.spoilerPressed.setOnRippleEndCallback(new Runnable() { // from class: org.telegram.ui.Cells.SharedLinkCell$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$startSpoilerRipples$1();
            }
        });
        int i4 = i - iDp;
        float fSqrt = (float) Math.sqrt(Math.pow(getWidth(), 2.0d) + Math.pow(getHeight(), 2.0d));
        int i5 = this.spoilerTypePressed;
        if (i5 == 0) {
            float lineBottom = BitmapDescriptorFactory.HUE_RED;
            for (int i6 = 0; i6 < this.linkLayout.size(); i6++) {
                Layout layout = (Layout) this.linkLayout.get(i6);
                lineBottom += layout.getLineBottom(layout.getLineCount() - 1);
                Iterator it = ((List) this.linkSpoilers.get(i6)).iterator();
                while (it.hasNext()) {
                    ((SpoilerEffect) it.next()).startRipple(i4, ((i2 - getYOffsetForType(0)) - i3) + lineBottom, fSqrt);
                }
            }
        } else if (i5 == 1) {
            Iterator it2 = this.descriptionLayoutSpoilers.iterator();
            while (it2.hasNext()) {
                ((SpoilerEffect) it2.next()).startRipple(i4, i2 - getYOffsetForType(1), fSqrt);
            }
        } else if (i5 == 2) {
            Iterator it3 = this.descriptionLayout2Spoilers.iterator();
            while (it3.hasNext()) {
                ((SpoilerEffect) it3.next()).startRipple(i4, i2 - getYOffsetForType(2), fSqrt);
            }
        }
        for (int i7 = 0; i7 <= 2; i7++) {
            if (i7 != this.spoilerTypePressed) {
                if (i7 == 0) {
                    for (int i8 = 0; i8 < this.linkLayout.size(); i8++) {
                        Layout layout2 = (Layout) this.linkLayout.get(i8);
                        layout2.getLineBottom(layout2.getLineCount() - 1);
                        Iterator it4 = ((List) this.linkSpoilers.get(i8)).iterator();
                        while (it4.hasNext()) {
                            ((SpoilerEffect) it4.next()).startRipple(r1.getBounds().centerX(), r1.getBounds().centerY(), fSqrt);
                        }
                    }
                } else if (i7 == 1) {
                    Iterator it5 = this.descriptionLayoutSpoilers.iterator();
                    while (it5.hasNext()) {
                        ((SpoilerEffect) it5.next()).startRipple(r13.getBounds().centerX(), r13.getBounds().centerY(), fSqrt);
                    }
                } else if (i7 == 2) {
                    Iterator it6 = this.descriptionLayout2Spoilers.iterator();
                    while (it6.hasNext()) {
                        ((SpoilerEffect) it6.next()).startRipple(r13.getBounds().centerX(), r13.getBounds().centerY(), fSqrt);
                    }
                }
            }
        }
        this.spoilerTypePressed = -1;
        this.spoilerPressed = null;
    }

    protected void cancelCheckLongPress() {
        this.checkingForLongPress = false;
        CheckForLongPress checkForLongPress = this.pendingCheckForLongPress;
        if (checkForLongPress != null) {
            removeCallbacks(checkForLongPress);
        }
        CheckForTap checkForTap = this.pendingCheckForTap;
        if (checkForTap != null) {
            removeCallbacks(checkForTap);
        }
    }

    public String getLink(int i) {
        if (i < 0 || i >= this.links.size()) {
            return null;
        }
        return ((CharSequence) this.links.get(i)).toString();
    }

    public ImageReceiver getLinkImageView() {
        return this.linkImageView;
    }

    public MessageObject getMessage() {
        return this.message;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.drawLinkImageView) {
            this.linkImageView.onAttachedToWindow();
        }
        this.fromInfoLayoutEmojis = AnimatedEmojiSpan.update(0, this, this.fromInfoLayoutEmojis, this.fromInfoLayout);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.drawLinkImageView) {
            this.linkImageView.onDetachedFromWindow();
        }
        AnimatedEmojiSpan.release(this, this.fromInfoLayoutEmojis);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        float fDp;
        float measuredHeight;
        float measuredWidth;
        float measuredHeight2;
        Paint paint;
        if (this.viewType == 1) {
            this.description2TextPaint.setColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText3, this.resourcesProvider));
        }
        if (this.dateLayout != null) {
            canvas.save();
            canvas.translate(AndroidUtilities.dp(LocaleController.isRTL ? 8.0f : AndroidUtilities.leftBaseline) + (LocaleController.isRTL ? 0 : this.dateLayoutX), this.titleY);
            this.dateLayout.draw(canvas);
            canvas.restore();
        }
        if (this.titleLayout != null) {
            canvas.save();
            float fDp2 = AndroidUtilities.dp(LocaleController.isRTL ? 8.0f : AndroidUtilities.leftBaseline);
            if (LocaleController.isRTL) {
                fDp2 += this.dateLayout == null ? BitmapDescriptorFactory.HUE_RED : r1.getWidth() + AndroidUtilities.dp(4.0f);
            }
            canvas.translate(fDp2, this.titleY);
            this.titleLayout.draw(canvas);
            canvas.restore();
        }
        if (this.captionLayout != null) {
            this.captionTextPaint.setColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, this.resourcesProvider));
            canvas.save();
            canvas.translate(AndroidUtilities.dp(LocaleController.isRTL ? 8.0f : AndroidUtilities.leftBaseline), this.captionY);
            this.captionLayout.draw(canvas);
            canvas.restore();
        }
        if (this.descriptionLayout != null) {
            this.descriptionTextPaint.setColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, this.resourcesProvider));
            canvas.save();
            canvas.translate(AndroidUtilities.dp(LocaleController.isRTL ? 8.0f : AndroidUtilities.leftBaseline), this.descriptionY);
            SpoilerEffect.renderWithRipple(this, false, this.descriptionTextPaint.getColor(), -AndroidUtilities.dp(2.0f), this.patchedDescriptionLayout, 0, this.descriptionLayout, this.descriptionLayoutSpoilers, canvas, false);
            canvas.restore();
        }
        if (this.descriptionLayout2 != null) {
            this.descriptionTextPaint.setColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, this.resourcesProvider));
            canvas.save();
            canvas.translate(AndroidUtilities.dp(LocaleController.isRTL ? 8.0f : AndroidUtilities.leftBaseline), this.description2Y);
            SpoilerEffect.renderWithRipple(this, false, this.descriptionTextPaint.getColor(), -AndroidUtilities.dp(2.0f), this.patchedDescriptionLayout2, 0, this.descriptionLayout2, this.descriptionLayout2Spoilers, canvas, false);
            canvas.restore();
        }
        if (!this.linkLayout.isEmpty()) {
            this.descriptionTextPaint.setColor(Theme.getColor(Theme.key_windowBackgroundWhiteLinkText, this.resourcesProvider));
            int lineBottom = 0;
            for (int i = 0; i < this.linkLayout.size(); i++) {
                StaticLayout staticLayout = (StaticLayout) this.linkLayout.get(i);
                List list = (List) this.linkSpoilers.get(i);
                if (staticLayout.getLineCount() > 0) {
                    canvas.save();
                    canvas.translate(AndroidUtilities.dp(LocaleController.isRTL ? 8.0f : AndroidUtilities.leftBaseline), this.linkY + lineBottom);
                    this.path.rewind();
                    if (list != null) {
                        Iterator it = list.iterator();
                        while (it.hasNext()) {
                            Rect bounds = ((SpoilerEffect) it.next()).getBounds();
                            this.path.addRect(bounds.left, bounds.top, bounds.right, bounds.bottom, Path.Direction.CW);
                        }
                    }
                    canvas.save();
                    canvas.clipPath(this.path, Region.Op.DIFFERENCE);
                    staticLayout.draw(canvas);
                    canvas.restore();
                    canvas.save();
                    canvas.clipPath(this.path);
                    this.path.rewind();
                    if (list != null && !list.isEmpty()) {
                        ((SpoilerEffect) list.get(0)).getRipplePath(this.path);
                    }
                    canvas.clipPath(this.path);
                    staticLayout.draw(canvas);
                    canvas.restore();
                    if (list != null) {
                        Iterator it2 = list.iterator();
                        while (it2.hasNext()) {
                            ((SpoilerEffect) it2.next()).draw(canvas);
                        }
                    }
                    canvas.restore();
                    lineBottom += staticLayout.getLineBottom(staticLayout.getLineCount() - 1);
                }
            }
            if (this.linksCollector.draw(canvas)) {
                invalidate();
            }
        }
        if (this.fromInfoLayout != null) {
            canvas.save();
            canvas.translate(AndroidUtilities.dp(LocaleController.isRTL ? 8.0f : AndroidUtilities.leftBaseline), this.fromInfoLayoutY);
            this.fromInfoLayout.draw(canvas);
            AnimatedEmojiSpan.drawAnimatedEmojis(canvas, this.fromInfoLayout, this.fromInfoLayoutEmojis, BitmapDescriptorFactory.HUE_RED, null, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f);
            canvas.restore();
        }
        this.letterDrawable.draw(canvas);
        if (this.drawLinkImageView) {
            this.linkImageView.draw(canvas);
        }
        if (this.needDivider) {
            if (LocaleController.isRTL) {
                measuredHeight = getMeasuredHeight() - 1;
                measuredWidth = getMeasuredWidth() - AndroidUtilities.dp(AndroidUtilities.leftBaseline);
                measuredHeight2 = getMeasuredHeight() - 1;
                paint = Theme.dividerPaint;
                fDp = BitmapDescriptorFactory.HUE_RED;
            } else {
                fDp = AndroidUtilities.dp(AndroidUtilities.leftBaseline);
                measuredHeight = getMeasuredHeight() - 1;
                measuredWidth = getMeasuredWidth();
                measuredHeight2 = getMeasuredHeight() - 1;
                paint = Theme.dividerPaint;
            }
            canvas.drawLine(fDp, measuredHeight, measuredWidth, measuredHeight2, paint);
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        StringBuilder sb = new StringBuilder();
        StaticLayout staticLayout = this.titleLayout;
        if (staticLayout != null) {
            sb.append(staticLayout.getText());
        }
        if (this.descriptionLayout != null) {
            sb.append(", ");
            sb.append(this.descriptionLayout.getText());
        }
        if (this.descriptionLayout2 != null) {
            sb.append(", ");
            sb.append(this.descriptionLayout2.getText());
        }
        accessibilityNodeInfo.setText(sb.toString());
        if (this.checkBox.isChecked()) {
            accessibilityNodeInfo.setChecked(true);
            accessibilityNodeInfo.setCheckable(true);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x01ef A[Catch: Exception -> 0x010f, TryCatch #0 {Exception -> 0x010f, blocks: (B:50:0x00f9, B:52:0x00fd, B:55:0x0102, B:58:0x0108, B:63:0x0112, B:65:0x0145, B:94:0x01ef, B:96:0x01f7, B:98:0x0207, B:100:0x0217, B:102:0x022b, B:103:0x023e, B:105:0x0244, B:109:0x0259, B:111:0x0282, B:67:0x0153, B:68:0x015d, B:92:0x01e9, B:70:0x0164, B:72:0x0168, B:75:0x017c, B:77:0x0182, B:79:0x0190, B:81:0x0197, B:83:0x019f, B:85:0x01a9, B:86:0x01af, B:87:0x01cb, B:89:0x01cf, B:91:0x01dd, B:73:0x0178), top: B:268:0x00f9 }] */
    /* JADX WARN: Type inference failed for: r2v125 */
    /* JADX WARN: Type inference failed for: r2v126 */
    /* JADX WARN: Type inference failed for: r2v99, types: [android.text.Spannable] */
    /* JADX WARN: Type inference failed for: r4v3, types: [java.lang.CharSequence] */
    @Override // android.widget.FrameLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected void onMeasure(int i, int i2) {
        String str;
        String host;
        String str2;
        boolean z;
        SpannableStringBuilder spannableStringBuilder;
        int iDp;
        String str3;
        TLRPC.PhotoSize photoSize;
        boolean z2;
        int lineBottom;
        int lineBottom2;
        int i3;
        TLRPC.PhotoSize photoSize2;
        CharSequence charSequenceEllipsize;
        int i4;
        String strSubstring;
        int iLastIndexOf;
        ?? ValueOf;
        int i5;
        int i6 = 0;
        this.drawLinkImageView = false;
        String str4 = null;
        this.descriptionLayout = null;
        this.titleLayout = null;
        this.descriptionLayout2 = null;
        this.captionLayout = null;
        this.linkLayout.clear();
        this.links.clear();
        int size = (View.MeasureSpec.getSize(i) - AndroidUtilities.dp(AndroidUtilities.leftBaseline)) - AndroidUtilities.dp(8.0f);
        MessageObject messageObject = this.message;
        TLRPC.MessageMedia messageMedia = messageObject.messageOwner.media;
        int i7 = 1;
        if (messageMedia instanceof TLRPC.TL_messageMediaWebPage) {
            TLRPC.WebPage webPage = messageMedia.webpage;
            if (webPage instanceof TLRPC.TL_webPage) {
                if (messageObject.photoThumbs == null && webPage.photo != null) {
                    messageObject.generateThumbs(true);
                }
                boolean z3 = (webPage.photo == null || this.message.photoThumbs == null) ? false : true;
                host = webPage.title;
                if (host == null) {
                    host = webPage.site_name;
                }
                str2 = webPage.description;
                str = webPage.url;
                z = z3;
            } else {
                str = null;
                host = null;
                str2 = null;
                z = false;
            }
        }
        MessageObject messageObject2 = this.message;
        if (messageObject2 == null || messageObject2.messageOwner.entities.isEmpty()) {
            spannableStringBuilder = null;
        } else {
            SpannableStringBuilder spannableStringBuilderValueOf = null;
            int i8 = 0;
            while (i8 < this.message.messageOwner.entities.size()) {
                TLRPC.MessageEntity messageEntity = (TLRPC.MessageEntity) this.message.messageOwner.entities.get(i8);
                if (messageEntity.length > 0 && (i4 = messageEntity.offset) >= 0 && i4 < this.message.messageOwner.message.length()) {
                    if (messageEntity.offset + messageEntity.length > this.message.messageOwner.message.length()) {
                        messageEntity.length = this.message.messageOwner.message.length() - messageEntity.offset;
                    }
                    if (i8 == 0 && str != null && ((messageEntity.offset != 0 || messageEntity.length != this.message.messageOwner.message.length()) && (this.message.messageOwner.entities.size() != i7 || str2 == null))) {
                        spannableStringBuilderValueOf = SpannableStringBuilder.valueOf(this.message.messageOwner.message);
                        MediaDataController.addTextStyleRuns(this.message, spannableStringBuilderValueOf);
                    }
                    SpannableStringBuilder spannableStringBuilder2 = spannableStringBuilderValueOf;
                    try {
                    } catch (Exception e) {
                        FileLog.e(e);
                    }
                    if ((messageEntity instanceof TLRPC.TL_messageEntityTextUrl) || (messageEntity instanceof TLRPC.TL_messageEntityUrl)) {
                        if (messageEntity instanceof TLRPC.TL_messageEntityUrl) {
                            String str5 = this.message.messageOwner.message;
                            int i9 = messageEntity.offset;
                            strSubstring = str5.substring(i9, messageEntity.length + i9);
                        } else {
                            strSubstring = messageEntity.url;
                        }
                        if (host == null || host.length() == 0) {
                            host = Uri.parse(strSubstring.toString()).getHost();
                            if (host == null) {
                                host = strSubstring.toString();
                            }
                            if (host != null && (iLastIndexOf = host.lastIndexOf(46)) >= 0) {
                                String strSubstring2 = host.substring(i6, iLastIndexOf);
                                int iLastIndexOf2 = strSubstring2.lastIndexOf(46);
                                if (iLastIndexOf2 >= 0) {
                                    strSubstring2 = strSubstring2.substring(iLastIndexOf2 + i7);
                                }
                                host = strSubstring2.substring(i6, i7).toUpperCase() + strSubstring2.substring(i7);
                            }
                            if (messageEntity.offset != 0 || messageEntity.length != this.message.messageOwner.message.length()) {
                                ValueOf = SpannableStringBuilder.valueOf(this.message.messageOwner.message);
                                MediaDataController.addTextStyleRuns(this.message, ValueOf);
                                str2 = ValueOf;
                            }
                        }
                        if (strSubstring != null) {
                            if (AndroidUtilities.charSequenceContains(strSubstring, "://") || strSubstring.toString().toLowerCase().indexOf("http") == 0 || strSubstring.toString().toLowerCase().indexOf("mailto") == 0) {
                                i5 = 0;
                            } else {
                                strSubstring = "http://" + ((Object) strSubstring);
                                i5 = 7;
                            }
                            SpannableString spannableStringValueOf = SpannableString.valueOf(strSubstring);
                            int i10 = messageEntity.offset;
                            int i11 = messageEntity.length + i10;
                            Iterator it = this.message.messageOwner.entities.iterator();
                            while (it.hasNext()) {
                                TLRPC.MessageEntity messageEntity2 = (TLRPC.MessageEntity) it.next();
                                int i12 = messageEntity2.offset;
                                int i13 = messageEntity2.length + i12;
                                if ((messageEntity2 instanceof TLRPC.TL_messageEntitySpoiler) && i10 <= i13 && i11 >= i12) {
                                    TextStyleSpan.TextStyleRun textStyleRun = new TextStyleSpan.TextStyleRun();
                                    textStyleRun.flags |= 256;
                                    spannableStringValueOf.setSpan(new TextStyleSpan(textStyleRun), Math.max(i10, i12), Math.min(i11, i13) + i5, 33);
                                }
                            }
                            this.links.add(spannableStringValueOf);
                        }
                        spannableStringBuilderValueOf = spannableStringBuilder2;
                    } else {
                        if ((messageEntity instanceof TLRPC.TL_messageEntityEmail) && (host == null || host.length() == 0)) {
                            StringBuilder sb = new StringBuilder();
                            sb.append("mailto:");
                            String str6 = this.message.messageOwner.message;
                            int i14 = messageEntity.offset;
                            sb.append(str6.substring(i14, messageEntity.length + i14));
                            strSubstring = sb.toString();
                            String str7 = this.message.messageOwner.message;
                            int i15 = messageEntity.offset;
                            host = str7.substring(i15, messageEntity.length + i15);
                            if (messageEntity.offset != 0 || messageEntity.length != this.message.messageOwner.message.length()) {
                                ValueOf = SpannableStringBuilder.valueOf(this.message.messageOwner.message);
                                MediaDataController.addTextStyleRuns(this.message, ValueOf);
                                str2 = ValueOf;
                            }
                        } else {
                            strSubstring = str4;
                        }
                        if (strSubstring != null) {
                        }
                        spannableStringBuilderValueOf = spannableStringBuilder2;
                    }
                }
                i8++;
                i6 = 0;
                str4 = null;
                i7 = 1;
            }
            spannableStringBuilder = spannableStringBuilderValueOf;
        }
        if (str != null && this.links.isEmpty()) {
            this.links.add(str);
        }
        if (this.viewType == 1) {
            String strStringForMessageListDate = LocaleController.stringForMessageListDate(this.message.messageOwner.date);
            int iCeil = (int) Math.ceil(this.description2TextPaint.measureText(strStringForMessageListDate));
            this.dateLayout = ChatMessageCell.generateStaticLayout(strStringForMessageListDate, this.description2TextPaint, iCeil, iCeil, 0, 1);
            this.dateLayoutX = (size - iCeil) - AndroidUtilities.dp(8.0f);
            iDp = iCeil + AndroidUtilities.dp(12.0f);
        } else {
            iDp = 0;
        }
        if (host != null) {
            try {
                ?? HighlightText = AndroidUtilities.highlightText(host, this.message.highlightedWords, (Theme.ResourcesProvider) null);
                int i16 = size - iDp;
                StaticLayout staticLayoutGenerateStaticLayout = ChatMessageCell.generateStaticLayout(HighlightText != 0 ? HighlightText : host, this.titleTextPaint, i16 - AndroidUtilities.dp(4.0f), i16 - AndroidUtilities.dp(4.0f), 0, 3);
                this.titleLayout = staticLayoutGenerateStaticLayout;
                if (staticLayoutGenerateStaticLayout.getLineCount() > 0) {
                    int i17 = this.titleY;
                    StaticLayout staticLayout = this.titleLayout;
                    this.descriptionY = i17 + staticLayout.getLineBottom(staticLayout.getLineCount() - 1) + AndroidUtilities.dp(4.0f);
                }
            } catch (Exception e2) {
                FileLog.e(e2);
            }
            this.letterDrawable.setTitle(host);
        }
        this.description2Y = this.descriptionY;
        StaticLayout staticLayout2 = this.titleLayout;
        int iMax = Math.max(1, 4 - (staticLayout2 != null ? staticLayout2.getLineCount() : 0));
        if (this.viewType == 1) {
            spannableStringBuilder = null;
            str3 = null;
        } else {
            str3 = str2;
        }
        if (str3 != null) {
            try {
                StaticLayout staticLayoutGenerateStaticLayout2 = ChatMessageCell.generateStaticLayout(str3, this.descriptionTextPaint, size, size, 0, iMax);
                this.descriptionLayout = staticLayoutGenerateStaticLayout2;
                if (staticLayoutGenerateStaticLayout2.getLineCount() > 0) {
                    int i18 = this.descriptionY;
                    StaticLayout staticLayout3 = this.descriptionLayout;
                    this.description2Y = i18 + staticLayout3.getLineBottom(staticLayout3.getLineCount() - 1) + AndroidUtilities.dp(5.0f);
                }
                this.spoilersPool.addAll(this.descriptionLayoutSpoilers);
                this.descriptionLayoutSpoilers.clear();
                if (!this.message.isSpoilersRevealed) {
                    SpoilerEffect.addSpoilers(this, this.descriptionLayout, this.spoilersPool, this.descriptionLayoutSpoilers);
                }
            } catch (Exception e3) {
                FileLog.e(e3);
            }
        }
        if (spannableStringBuilder != null) {
            try {
                this.descriptionLayout2 = ChatMessageCell.generateStaticLayout(spannableStringBuilder, this.descriptionTextPaint, size, size, 0, iMax);
                if (this.descriptionLayout != null) {
                    this.description2Y += AndroidUtilities.dp(10.0f);
                }
                this.spoilersPool.addAll(this.descriptionLayout2Spoilers);
                this.descriptionLayout2Spoilers.clear();
                if (!this.message.isSpoilersRevealed) {
                    SpoilerEffect.addSpoilers(this, this.descriptionLayout2, this.spoilersPool, this.descriptionLayout2Spoilers);
                }
            } catch (Exception e4) {
                FileLog.e(e4);
            }
        }
        MessageObject messageObject3 = this.message;
        if (messageObject3 == null || TextUtils.isEmpty(messageObject3.messageOwner.message)) {
            photoSize = null;
        } else {
            photoSize = null;
            CharSequence charSequenceHighlightText = AndroidUtilities.highlightText(Emoji.replaceEmoji(this.message.messageOwner.message.replace("\n", " ").replaceAll(" +", " ").trim(), Theme.chat_msgTextPaint.getFontMetricsInt(), false), this.message.highlightedWords, (Theme.ResourcesProvider) null);
            if (charSequenceHighlightText != null) {
                this.captionLayout = new StaticLayout(TextUtils.ellipsize(AndroidUtilities.ellipsizeCenterEnd(charSequenceHighlightText, this.message.highlightedWords.get(0), size, this.captionTextPaint, NotificationCenter.walletPendingTransactionsChanged), this.captionTextPaint, size, TextUtils.TruncateAt.END), this.captionTextPaint, size + AndroidUtilities.dp(4.0f), Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
            }
        }
        StaticLayout staticLayout4 = this.captionLayout;
        if (staticLayout4 != null) {
            int i19 = this.descriptionY;
            this.captionY = i19;
            int lineBottom3 = i19 + staticLayout4.getLineBottom(staticLayout4.getLineCount() - 1) + AndroidUtilities.dp(5.0f);
            this.descriptionY = lineBottom3;
            this.description2Y = lineBottom3;
        }
        if (!this.links.isEmpty()) {
            for (int i20 = 0; i20 < this.linkSpoilers.size(); i20++) {
                this.spoilersPool.addAll((Collection) this.linkSpoilers.get(i20));
            }
            this.linkSpoilers.clear();
            int i21 = 0;
            while (i21 < this.links.size()) {
                try {
                    charSequenceEllipsize = TextUtils.ellipsize(AndroidUtilities.replaceNewLines(SpannableStringBuilder.valueOf((CharSequence) this.links.get(i21))), this.descriptionTextPaint, Math.min((int) Math.ceil(this.descriptionTextPaint.measureText(r0, 0, r0.length())), size), TextUtils.TruncateAt.MIDDLE);
                    photoSize2 = photoSize;
                } catch (Exception e5) {
                    e = e5;
                    photoSize2 = photoSize;
                }
                try {
                    StaticLayout staticLayout5 = new StaticLayout(charSequenceEllipsize, this.descriptionTextPaint, size, Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
                    this.linkY = this.description2Y;
                    StaticLayout staticLayout6 = this.descriptionLayout2;
                    if (staticLayout6 != null && staticLayout6.getLineCount() != 0) {
                        int i22 = this.linkY;
                        StaticLayout staticLayout7 = this.descriptionLayout2;
                        this.linkY = i22 + staticLayout7.getLineBottom(staticLayout7.getLineCount() - 1) + AndroidUtilities.dp(5.0f);
                    }
                    if (!this.message.isSpoilersRevealed) {
                        ArrayList arrayList = new ArrayList();
                        if (charSequenceEllipsize instanceof Spannable) {
                            SpoilerEffect.addSpoilers(this, staticLayout5, (Spannable) charSequenceEllipsize, this.spoilersPool, arrayList);
                        }
                        this.linkSpoilers.put(i21, arrayList);
                    }
                    this.linkLayout.add(staticLayout5);
                } catch (Exception e6) {
                    e = e6;
                    FileLog.e(e);
                    i21++;
                    photoSize = photoSize2;
                }
                i21++;
                photoSize = photoSize2;
            }
        }
        TLRPC.PhotoSize photoSize3 = photoSize;
        int iDp2 = AndroidUtilities.dp(52.0f);
        int size2 = LocaleController.isRTL ? (View.MeasureSpec.getSize(i) - AndroidUtilities.dp(10.0f)) - iDp2 : AndroidUtilities.dp(10.0f);
        this.letterDrawable.setBounds(size2, AndroidUtilities.dp(11.0f), size2 + iDp2, AndroidUtilities.dp(63.0f));
        if (z) {
            TLRPC.PhotoSize closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(this.message.photoThumbs, iDp2, true);
            TLRPC.PhotoSize closestPhotoSizeWithSize2 = FileLoader.getClosestPhotoSizeWithSize(this.message.photoThumbs, 80);
            if (closestPhotoSizeWithSize2 == closestPhotoSizeWithSize) {
                closestPhotoSizeWithSize2 = photoSize3;
            }
            if (closestPhotoSizeWithSize != null) {
                closestPhotoSizeWithSize.size = -1;
            }
            if (closestPhotoSizeWithSize2 != null) {
                closestPhotoSizeWithSize2.size = -1;
            }
            float f = iDp2;
            this.linkImageView.setImageCoords(size2, AndroidUtilities.dp(11.0f), f, f);
            FileLoader.getAttachFileName(closestPhotoSizeWithSize);
            Locale locale = Locale.US;
            this.linkImageView.setImage(ImageLocation.getForObject(closestPhotoSizeWithSize, this.message.photoThumbsObject), String.format(locale, "%d_%d", Integer.valueOf(iDp2), Integer.valueOf(iDp2)), ImageLocation.getForObject(closestPhotoSizeWithSize2, this.message.photoThumbsObject), String.format(locale, "%d_%d_b", Integer.valueOf(iDp2), Integer.valueOf(iDp2)), 0L, null, this.message, 0);
            z2 = true;
            this.drawLinkImageView = true;
        } else {
            z2 = true;
        }
        if (this.viewType == z2) {
            StaticLayout staticLayoutGenerateStaticLayout3 = ChatMessageCell.generateStaticLayout(FilteredSearchView.createFromInfoString(this.message, z2, 2, this.description2TextPaint), this.description2TextPaint, size, size, 0, iMax);
            this.fromInfoLayout = staticLayoutGenerateStaticLayout3;
            lineBottom = 0;
            this.fromInfoLayoutEmojis = AnimatedEmojiSpan.update(0, this, this.fromInfoLayoutEmojis, staticLayoutGenerateStaticLayout3);
        } else {
            lineBottom = 0;
        }
        StaticLayout staticLayout8 = this.titleLayout;
        if (staticLayout8 == null || staticLayout8.getLineCount() == 0) {
            lineBottom2 = 0;
        } else {
            StaticLayout staticLayout9 = this.titleLayout;
            lineBottom2 = staticLayout9.getLineBottom(staticLayout9.getLineCount() - 1) + AndroidUtilities.dp(4.0f);
        }
        StaticLayout staticLayout10 = this.captionLayout;
        if (staticLayout10 != null && staticLayout10.getLineCount() != 0) {
            StaticLayout staticLayout11 = this.captionLayout;
            lineBottom2 += staticLayout11.getLineBottom(staticLayout11.getLineCount() - 1) + AndroidUtilities.dp(5.0f);
        }
        StaticLayout staticLayout12 = this.descriptionLayout;
        if (staticLayout12 != null && staticLayout12.getLineCount() != 0) {
            StaticLayout staticLayout13 = this.descriptionLayout;
            lineBottom2 += staticLayout13.getLineBottom(staticLayout13.getLineCount() - 1) + AndroidUtilities.dp(5.0f);
        }
        StaticLayout staticLayout14 = this.descriptionLayout2;
        if (staticLayout14 != null && staticLayout14.getLineCount() != 0) {
            StaticLayout staticLayout15 = this.descriptionLayout2;
            lineBottom2 += staticLayout15.getLineBottom(staticLayout15.getLineCount() - 1) + AndroidUtilities.dp(5.0f);
            if (this.descriptionLayout != null) {
                lineBottom2 += AndroidUtilities.dp(10.0f);
            }
        }
        int i23 = 0;
        while (i23 < this.linkLayout.size()) {
            StaticLayout staticLayout16 = (StaticLayout) this.linkLayout.get(i23);
            if (staticLayout16.getLineCount() > 0) {
                i3 = 1;
                lineBottom += staticLayout16.getLineBottom(staticLayout16.getLineCount() - 1);
            } else {
                i3 = 1;
            }
            i23 += i3;
        }
        int lineBottom4 = lineBottom2 + lineBottom;
        if (this.fromInfoLayout != null) {
            this.fromInfoLayoutY = this.linkY + lineBottom + AndroidUtilities.dp(5.0f);
            StaticLayout staticLayout17 = this.fromInfoLayout;
            lineBottom4 += staticLayout17.getLineBottom(staticLayout17.getLineCount() - 1) + AndroidUtilities.dp(5.0f);
        }
        this.checkBox.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(24.0f), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(24.0f), 1073741824));
        setMeasuredDimension(View.MeasureSpec.getSize(i), Math.max(AndroidUtilities.dp(76.0f), lineBottom4 + AndroidUtilities.dp(17.0f)) + (this.needDivider ? 1 : 0));
    }

    /* JADX WARN: Removed duplicated region for block: B:137:0x0224 A[PHI: r0
      0x0224: PHI (r0v2 boolean) = (r0v1 boolean), (r0v16 boolean) binds: [B:136:0x0223, B:134:0x0220] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z;
        SharedLinkCellDelegate sharedLinkCellDelegate;
        boolean z2;
        int i;
        int i2;
        int i3;
        String str;
        TLRPC.MessageMedia messageMedia;
        if (this.message == null || this.linkLayout.isEmpty() || (sharedLinkCellDelegate = this.delegate) == null || !sharedLinkCellDelegate.canPerformActions()) {
            z = false;
            resetPressedLink();
        } else if (motionEvent.getAction() == 0 || ((this.linkPreviewPressed || this.spoilerPressed != null) && motionEvent.getAction() == 1)) {
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            int i4 = 0;
            int i5 = 0;
            while (true) {
                if (i4 >= this.linkLayout.size()) {
                    z = false;
                    z2 = false;
                    break;
                }
                StaticLayout staticLayout = (StaticLayout) this.linkLayout.get(i4);
                if (staticLayout.getLineCount() > 0) {
                    int lineBottom = staticLayout.getLineBottom(staticLayout.getLineCount() - 1);
                    int iDp = AndroidUtilities.dp(LocaleController.isRTL ? 8.0f : AndroidUtilities.leftBaseline);
                    float f = x;
                    float f2 = iDp;
                    if (f < staticLayout.getLineLeft(0) + f2 || f > staticLayout.getLineWidth(0) + f2 || y < (i3 = this.linkY + i5) || y > i3 + lineBottom) {
                        i5 += lineBottom;
                    } else {
                        TLRPC.WebPage webPage = null;
                        if (motionEvent.getAction() == 0) {
                            this.spoilerPressed = null;
                            if (this.linkSpoilers.get(i4, null) != null) {
                                Iterator it = ((List) this.linkSpoilers.get(i4)).iterator();
                                while (true) {
                                    if (!it.hasNext()) {
                                        break;
                                    }
                                    SpoilerEffect spoilerEffect = (SpoilerEffect) it.next();
                                    if (spoilerEffect.getBounds().contains(x - iDp, (y - this.linkY) - i5)) {
                                        resetPressedLink();
                                        this.spoilerPressed = spoilerEffect;
                                        this.spoilerTypePressed = 0;
                                        break;
                                    }
                                }
                            }
                            if (this.spoilerPressed == null && (this.pressedLinkIndex != i4 || this.pressedLink == null || !this.linkPreviewPressed)) {
                                resetPressedLink();
                                this.pressedLinkIndex = i4;
                                LinkSpanDrawable linkSpanDrawable = new LinkSpanDrawable(null, this.resourcesProvider, x - iDp, (y - this.linkY) - i5);
                                this.pressedLink = linkSpanDrawable;
                                LinkPath linkPathObtainNewPath = linkSpanDrawable.obtainNewPath();
                                this.linkPreviewPressed = true;
                                this.linksCollector.addLink(this.pressedLink);
                                startCheckLongPress();
                                try {
                                    linkPathObtainNewPath.setCurrentLayout(staticLayout, 0, f2, this.linkY + i5);
                                    staticLayout.getSelectionPath(0, staticLayout.getText().length(), linkPathObtainNewPath);
                                } catch (Exception e) {
                                    FileLog.e(e);
                                }
                            }
                        } else if (this.linkPreviewPressed) {
                            try {
                                if (this.pressedLinkIndex == 0 && (messageMedia = this.message.messageOwner.media) != null) {
                                    webPage = messageMedia.webpage;
                                }
                                if (webPage == null || (str = webPage.embed_url) == null || str.length() == 0) {
                                    this.delegate.onLinkPress(((CharSequence) this.links.get(this.pressedLinkIndex)).toString(), false);
                                } else {
                                    this.delegate.needOpenWebView(webPage, this.message);
                                }
                            } catch (Exception e2) {
                                FileLog.e(e2);
                            }
                            resetPressedLink();
                        } else if (this.spoilerPressed != null) {
                            startSpoilerRipples(x, y, i5);
                        } else {
                            z = false;
                            z2 = true;
                        }
                        z = true;
                        z2 = true;
                    }
                }
                i4++;
            }
            if (motionEvent.getAction() == 0) {
                int iDp2 = AndroidUtilities.dp(LocaleController.isRTL ? 8.0f : AndroidUtilities.leftBaseline);
                StaticLayout staticLayout2 = this.descriptionLayout;
                if (staticLayout2 != null && x >= iDp2 && x <= staticLayout2.getWidth() + iDp2 && y >= (i2 = this.descriptionY) && y <= i2 + this.descriptionLayout.getHeight()) {
                    Iterator it2 = this.descriptionLayoutSpoilers.iterator();
                    while (true) {
                        if (!it2.hasNext()) {
                            break;
                        }
                        SpoilerEffect spoilerEffect2 = (SpoilerEffect) it2.next();
                        if (spoilerEffect2.getBounds().contains(x - iDp2, y - this.descriptionY)) {
                            this.spoilerPressed = spoilerEffect2;
                            this.spoilerTypePressed = 1;
                            z = true;
                            z2 = true;
                            break;
                        }
                    }
                }
                StaticLayout staticLayout3 = this.descriptionLayout2;
                if (staticLayout3 != null && x >= iDp2 && x <= staticLayout3.getWidth() + iDp2 && y >= (i = this.description2Y) && y <= i + this.descriptionLayout2.getHeight()) {
                    for (SpoilerEffect spoilerEffect3 : this.descriptionLayout2Spoilers) {
                        if (spoilerEffect3.getBounds().contains(x - iDp2, y - this.description2Y)) {
                            this.spoilerPressed = spoilerEffect3;
                            this.spoilerTypePressed = 2;
                            z = true;
                            z2 = true;
                            break;
                        }
                    }
                }
                if (!z2) {
                    resetPressedLink();
                }
            } else {
                if (motionEvent.getAction() == 1 && this.spoilerPressed != null) {
                    startSpoilerRipples(x, y, 0);
                    z = true;
                    z2 = true;
                    break;
                }
                if (!z2) {
                }
            }
        } else {
            if (motionEvent.getAction() != 3) {
                z = false;
            }
            z = false;
            resetPressedLink();
        }
        return z || super.onTouchEvent(motionEvent);
    }

    protected void resetPressedLink() {
        this.linksCollector.clear(true);
        this.pressedLinkIndex = -1;
        this.pressedLink = null;
        this.linkPreviewPressed = false;
        cancelCheckLongPress();
        invalidate();
    }

    public void setChecked(boolean z, boolean z2) {
        if (this.checkBox.getVisibility() != 0) {
            this.checkBox.setVisibility(0);
        }
        this.checkBox.setChecked(z, z2);
    }

    public void setDelegate(SharedLinkCellDelegate sharedLinkCellDelegate) {
        this.delegate = sharedLinkCellDelegate;
    }

    public void setLink(MessageObject messageObject, boolean z) {
        this.needDivider = z;
        resetPressedLink();
        this.message = messageObject;
        requestLayout();
    }

    protected void startCheckLongPress() {
        if (this.checkingForLongPress) {
            return;
        }
        this.checkingForLongPress = true;
        if (this.pendingCheckForTap == null) {
            this.pendingCheckForTap = new CheckForTap();
        }
        postDelayed(this.pendingCheckForTap, ViewConfiguration.getTapTimeout());
    }
}
