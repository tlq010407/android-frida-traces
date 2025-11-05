package org.telegram.ui.Cells;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.AccelerateInterpolator;
import android.widget.FrameLayout;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.DocumentObject;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.R;
import org.telegram.messenger.SvgHelper;
import org.telegram.messenger.UserConfig;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.BackupImageView;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.Premium.PremiumLockIconView;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes4.dex */
public class StickerCell extends FrameLayout {
    private static AccelerateInterpolator interpolator = new AccelerateInterpolator(0.5f);
    private boolean clearsInputField;
    private BackupImageView imageView;
    private boolean isPremiumSticker;
    private long lastUpdateTime;
    private Object parentObject;
    private float premiumAlpha;
    private PremiumLockIconView premiumIconView;
    Theme.ResourcesProvider resourcesProvider;
    private float scale;
    private boolean scaled;
    private boolean showPremiumLock;
    private TLRPC.Document sticker;
    private long time;

    public StickerCell(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.time = 0L;
        this.premiumAlpha = 1.0f;
        this.resourcesProvider = resourcesProvider;
        BackupImageView backupImageView = new BackupImageView(context);
        this.imageView = backupImageView;
        backupImageView.setAspectFit(true);
        this.imageView.setLayerNum(1);
        addView(this.imageView, LayoutHelper.createFrame(66, 66.0f, 1, BitmapDescriptorFactory.HUE_RED, 5.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED));
        setFocusable(true);
        PremiumLockIconView premiumLockIconView = new PremiumLockIconView(context, PremiumLockIconView.TYPE_STICKERS_PREMIUM_LOCKED);
        this.premiumIconView = premiumLockIconView;
        premiumLockIconView.setPadding(AndroidUtilities.dp(4.0f), AndroidUtilities.dp(4.0f), AndroidUtilities.dp(4.0f), AndroidUtilities.dp(4.0f));
        this.premiumIconView.setImageReceiver(this.imageView.getImageReceiver());
        addView(this.premiumIconView, LayoutHelper.createFrame(24, 24.0f, 81, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED));
    }

    private void updatePremiumStatus(boolean z) {
        PremiumLockIconView premiumLockIconView;
        float f;
        if (this.isPremiumSticker) {
            this.showPremiumLock = true;
        } else {
            this.showPremiumLock = false;
        }
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.premiumIconView.getLayoutParams();
        if (UserConfig.getInstance(UserConfig.selectedAccount).isPremium()) {
            int iDp = AndroidUtilities.dp(16.0f);
            layoutParams.width = iDp;
            layoutParams.height = iDp;
            layoutParams.gravity = 85;
            layoutParams.bottomMargin = AndroidUtilities.dp(8.0f);
            layoutParams.rightMargin = AndroidUtilities.dp(8.0f);
            premiumLockIconView = this.premiumIconView;
            f = 1.0f;
        } else {
            int iDp2 = AndroidUtilities.dp(24.0f);
            layoutParams.width = iDp2;
            layoutParams.height = iDp2;
            layoutParams.gravity = 81;
            layoutParams.rightMargin = 0;
            layoutParams.bottomMargin = 0;
            premiumLockIconView = this.premiumIconView;
            f = 4.0f;
        }
        premiumLockIconView.setPadding(AndroidUtilities.dp(f), AndroidUtilities.dp(f), AndroidUtilities.dp(f), AndroidUtilities.dp(f));
        this.premiumIconView.setLocked(true ^ UserConfig.getInstance(UserConfig.selectedAccount).isPremium());
        AndroidUtilities.updateViewVisibilityAnimated(this.premiumIconView, this.showPremiumLock, 0.9f, z);
        invalidate();
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0041  */
    @Override // android.view.ViewGroup
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected boolean drawChild(Canvas canvas, View view, long j) {
        boolean z;
        boolean zDrawChild = super.drawChild(canvas, view, j);
        if (view == this.imageView && (((z = this.scaled) && this.scale != 0.8f) || (!z && this.scale != 1.0f))) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            long j2 = jCurrentTimeMillis - this.lastUpdateTime;
            this.lastUpdateTime = jCurrentTimeMillis;
            if (this.scaled) {
                float f = this.scale;
                if (f != 0.8f) {
                    float f2 = f - (j2 / 400.0f);
                    this.scale = f2;
                    if (f2 < 0.8f) {
                        this.scale = 0.8f;
                    }
                } else {
                    float f3 = this.scale + (j2 / 400.0f);
                    this.scale = f3;
                    if (f3 > 1.0f) {
                        this.scale = 1.0f;
                    }
                }
                this.imageView.setScaleX(this.scale);
                this.imageView.setScaleY(this.scale);
                this.imageView.invalidate();
                invalidate();
            }
        }
        return zDrawChild;
    }

    public Object getParentObject() {
        return this.parentObject;
    }

    public MessageObject.SendAnimationData getSendAnimationData() {
        ImageReceiver imageReceiver = this.imageView.getImageReceiver();
        if (!imageReceiver.hasNotThumb()) {
            return null;
        }
        MessageObject.SendAnimationData sendAnimationData = new MessageObject.SendAnimationData();
        this.imageView.getLocationInWindow(new int[2]);
        sendAnimationData.x = imageReceiver.getCenterX() + r2[0];
        sendAnimationData.y = imageReceiver.getCenterY() + r2[1];
        sendAnimationData.width = imageReceiver.getImageWidth();
        sendAnimationData.height = imageReceiver.getImageHeight();
        return sendAnimationData;
    }

    public TLRPC.Document getSticker() {
        return this.sticker;
    }

    public boolean isClearsInputField() {
        return this.clearsInputField;
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        if (this.sticker == null) {
            return;
        }
        String str = null;
        for (int i = 0; i < this.sticker.attributes.size(); i++) {
            TLRPC.DocumentAttribute documentAttribute = this.sticker.attributes.get(i);
            if (documentAttribute instanceof TLRPC.TL_documentAttributeSticker) {
                String str2 = documentAttribute.alt;
                str = (str2 == null || str2.length() <= 0) ? null : documentAttribute.alt;
            }
        }
        accessibilityNodeInfo.setText(str != null ? str + " " + LocaleController.getString(R.string.AttachSticker) : LocaleController.getString(R.string.AttachSticker));
        accessibilityNodeInfo.setEnabled(true);
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(76.0f) + getPaddingLeft() + getPaddingRight(), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(78.0f), 1073741824));
    }

    public void setClearsInputField(boolean z) {
        this.clearsInputField = z;
    }

    @Override // android.view.View
    public void setPressed(boolean z) {
        if (this.imageView.getImageReceiver().getPressed() != z) {
            this.imageView.getImageReceiver().setPressed(z ? 1 : 0);
            this.imageView.invalidate();
        }
        super.setPressed(z);
    }

    public void setScaled(boolean z) {
        this.scaled = z;
        this.lastUpdateTime = System.currentTimeMillis();
        invalidate();
    }

    public void setSticker(TLRPC.Document document, Object obj) {
        BackupImageView backupImageView;
        ImageLocation forDocument;
        Object obj2;
        String str;
        String str2;
        this.parentObject = obj;
        boolean zIsPremiumSticker = MessageObject.isPremiumSticker(document);
        this.isPremiumSticker = zIsPremiumSticker;
        if (zIsPremiumSticker) {
            this.premiumIconView.setColor(Theme.getColor(Theme.key_windowBackgroundWhite));
            this.premiumIconView.setWaitingImage();
        }
        if (document != null) {
            TLRPC.PhotoSize closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(document.thumbs, 90);
            SvgHelper.SvgDrawable svgThumb = DocumentObject.getSvgThumb(document, Theme.key_windowBackgroundGray, 1.0f, 1.0f, this.resourcesProvider);
            if (MessageObject.canAutoplayAnimatedSticker(document)) {
                if (svgThumb != null) {
                    backupImageView = this.imageView;
                    forDocument = ImageLocation.getForDocument(document);
                    obj2 = this.parentObject;
                    str = "80_80";
                    str2 = null;
                    backupImageView.setImage(forDocument, str, str2, svgThumb, obj2);
                } else if (closestPhotoSizeWithSize != null) {
                    this.imageView.setImage(ImageLocation.getForDocument(document), "80_80", ImageLocation.getForDocument(closestPhotoSizeWithSize, document), (String) null, 0, this.parentObject);
                } else {
                    this.imageView.setImage(ImageLocation.getForDocument(document), "80_80", (String) null, (Drawable) null, this.parentObject);
                }
            } else if (svgThumb != null) {
                backupImageView = this.imageView;
                forDocument = closestPhotoSizeWithSize != null ? ImageLocation.getForDocument(closestPhotoSizeWithSize, document) : ImageLocation.getForDocument(document);
                obj2 = this.parentObject;
                str = null;
                str2 = "webp";
                backupImageView.setImage(forDocument, str, str2, svgThumb, obj2);
            } else {
                this.imageView.setImage(ImageLocation.getForDocument(closestPhotoSizeWithSize, document), (String) null, "webp", (Drawable) null, this.parentObject);
            }
        }
        this.sticker = document;
        Drawable background = getBackground();
        if (background != null) {
            background.setAlpha(230);
            background.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_chat_stickersHintPanel), PorterDuff.Mode.MULTIPLY));
        }
        updatePremiumStatus(false);
    }

    public boolean showingBitmap() {
        return this.imageView.getImageReceiver().getBitmap() != null;
    }
}
