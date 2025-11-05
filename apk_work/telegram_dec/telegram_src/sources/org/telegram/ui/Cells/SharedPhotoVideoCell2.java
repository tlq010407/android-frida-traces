package org.telegram.ui.Cells;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.ColorUtils;
import androidx.core.math.MathUtils;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import java.util.HashMap;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.DownloadController;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.R;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.tl.TL_stories$StoryItem;
import org.telegram.tgnet.tl.TL_stories$StoryViews;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.AvatarSpan;
import org.telegram.ui.Components.AnimatedFloat;
import org.telegram.ui.Components.AnimatedTextView;
import org.telegram.ui.Components.CanvasButton;
import org.telegram.ui.Components.CheckBoxBase;
import org.telegram.ui.Components.CombinedDrawable;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.FlickerLoadingView;
import org.telegram.ui.Components.Shaker;
import org.telegram.ui.Components.Text;
import org.telegram.ui.Components.spoilers.SpoilerEffect;
import org.telegram.ui.Components.spoilers.SpoilerEffect2;
import org.telegram.ui.PhotoViewer;
import org.telegram.ui.Stories.StoriesController;
import org.telegram.ui.Stories.StoryWidgetsImageDecorator;
import org.telegram.ui.Stories.recorder.DominantColors;
import org.telegram.ui.Stories.recorder.StoryPrivacyBottomSheet;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes4.dex */
public class SharedPhotoVideoCell2 extends FrameLayout {
    static boolean lastAutoDownload;
    static long lastUpdateDownloadSettingsTime;
    private final AnimatedFloat animatedProgress;
    ValueAnimator animator;
    private boolean attached;
    private Text authorText;
    public ImageReceiver blurImageReceiver;
    private final RectF bounds;
    CanvasButton canvasButton;
    private boolean check2;
    CheckBoxBase checkBoxBase;
    float checkBoxProgress;
    float crossfadeProgress;
    float crossfadeToColumnsCount;
    SharedPhotoVideoCell2 crossfadeView;
    int currentAccount;
    MessageObject currentMessageObject;
    int currentParentColumnsCount;
    boolean drawVideoIcon;
    boolean drawViews;
    FlickerLoadingView globalGradientView;
    private Drawable gradientDrawable;
    private boolean gradientDrawableLoading;
    float highlightProgress;
    float imageAlpha;
    public ImageReceiver imageReceiver;
    public int imageReceiverColor;
    float imageScale;
    public boolean isFirst;
    public boolean isLast;
    public boolean isSearchingHashtag;
    public boolean isStory;
    public boolean isStoryPinned;
    public boolean isStoryUploading;
    private SpoilerEffect mediaSpoilerEffect;
    private SpoilerEffect2 mediaSpoilerEffect2;
    private Path path;
    private Bitmap privacyBitmap;
    private Paint privacyPaint;
    private int privacyType;
    private final Paint progressPaint;
    private boolean reorder;
    private final Paint scrimPaint;
    private Shaker shaker;
    SharedResources sharedResources;
    boolean showVideoLayout;
    private float spoilerMaxRadius;
    private float spoilerRevealProgress;
    private float spoilerRevealX;
    private float spoilerRevealY;
    public int storyId;
    private int style;
    StaticLayout videoInfoLayot;
    String videoText;
    AnimatedFloat viewsAlpha;
    AnimatedTextView.AnimatedTextDrawable viewsText;

    public static class SharedResources {
        Drawable playDrawable;
        Drawable viewDrawable;
        TextPaint textPaint = new TextPaint(1);
        private Paint backgroundPaint = new Paint();
        Paint highlightPaint = new Paint();
        SparseArray imageFilters = new SparseArray();
        private final HashMap privacyBitmaps = new HashMap();

        public SharedResources(Context context, Theme.ResourcesProvider resourcesProvider) {
            this.textPaint.setTextSize(AndroidUtilities.dp(12.0f));
            this.textPaint.setColor(-1);
            this.textPaint.setTypeface(AndroidUtilities.bold());
            Drawable drawableMutate = ContextCompat.getDrawable(context, R.drawable.play_mini_video).mutate();
            this.playDrawable = drawableMutate;
            drawableMutate.setBounds(0, 0, drawableMutate.getIntrinsicWidth(), this.playDrawable.getIntrinsicHeight());
            Drawable drawableMutate2 = ContextCompat.getDrawable(context, R.drawable.filled_views).mutate();
            this.viewDrawable = drawableMutate2;
            drawableMutate2.setBounds(0, 0, (int) (drawableMutate2.getIntrinsicWidth() * 0.7f), (int) (this.viewDrawable.getIntrinsicHeight() * 0.7f));
            this.backgroundPaint.setColor(Theme.getColor(Theme.key_sharedMedia_photoPlaceholder, resourcesProvider));
        }

        public String getFilterString(int i) {
            String str = (String) this.imageFilters.get(i);
            if (str != null) {
                return str;
            }
            String str2 = i + "_" + i + "_isc";
            this.imageFilters.put(i, str2);
            return str2;
        }

        public Bitmap getPrivacyBitmap(Context context, int i) {
            Bitmap bitmap = (Bitmap) this.privacyBitmaps.get(Integer.valueOf(i));
            if (bitmap != null) {
                return bitmap;
            }
            Bitmap bitmapDecodeResource = BitmapFactory.decodeResource(context.getResources(), i);
            int width = bitmapDecodeResource.getWidth();
            int height = bitmapDecodeResource.getHeight();
            Bitmap.Config config = Bitmap.Config.ARGB_8888;
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(width, height, config);
            Canvas canvas = new Canvas(bitmapCreateBitmap);
            Paint paint = new Paint(3);
            PorterDuff.Mode mode = PorterDuff.Mode.SRC_IN;
            paint.setColorFilter(new PorterDuffColorFilter(-10461088, mode));
            canvas.drawBitmap(bitmapDecodeResource, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, paint);
            Utilities.stackBlurBitmap(bitmapCreateBitmap, AndroidUtilities.dp(1.0f));
            Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(bitmapDecodeResource.getWidth(), bitmapDecodeResource.getHeight(), config);
            Canvas canvas2 = new Canvas(bitmapCreateBitmap2);
            canvas2.drawBitmap(bitmapCreateBitmap, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, paint);
            canvas2.drawBitmap(bitmapCreateBitmap, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, paint);
            canvas2.drawBitmap(bitmapCreateBitmap, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, paint);
            paint.setColorFilter(new PorterDuffColorFilter(-1, mode));
            canvas2.drawBitmap(bitmapDecodeResource, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, paint);
            bitmapCreateBitmap.recycle();
            bitmapDecodeResource.recycle();
            this.privacyBitmaps.put(Integer.valueOf(i), bitmapCreateBitmap2);
            return bitmapCreateBitmap2;
        }
    }

    public SharedPhotoVideoCell2(Context context, SharedResources sharedResources, int i) {
        super(context);
        this.imageReceiverColor = 0;
        this.imageReceiver = new ImageReceiver();
        this.blurImageReceiver = new ImageReceiver();
        this.imageAlpha = 1.0f;
        this.imageScale = 1.0f;
        this.drawVideoIcon = true;
        CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
        this.viewsAlpha = new AnimatedFloat(this, 0L, 350L, cubicBezierInterpolator);
        this.viewsText = new AnimatedTextView.AnimatedTextDrawable(false, true, true);
        this.path = new Path();
        this.style = 0;
        this.scrimPaint = new Paint(1);
        this.progressPaint = new Paint(1);
        this.animatedProgress = new AnimatedFloat(this, 0L, 200L, cubicBezierInterpolator);
        this.bounds = new RectF();
        this.sharedResources = sharedResources;
        this.currentAccount = i;
        setChecked(false, false);
        this.imageReceiver.setParentView(this);
        this.blurImageReceiver.setParentView(this);
        this.imageReceiver.setDelegate(new ImageReceiver.ImageReceiverDelegate() { // from class: org.telegram.ui.Cells.SharedPhotoVideoCell2$$ExternalSyntheticLambda1
            @Override // org.telegram.messenger.ImageReceiver.ImageReceiverDelegate
            public final void didSetImage(ImageReceiver imageReceiver, boolean z, boolean z2, boolean z3) {
                this.f$0.lambda$new$0(imageReceiver, z, z2, z3);
            }

            @Override // org.telegram.messenger.ImageReceiver.ImageReceiverDelegate
            public /* synthetic */ void didSetImageBitmap(int i2, String str, Drawable drawable) {
                ImageReceiver.ImageReceiverDelegate.CC.$default$didSetImageBitmap(this, i2, str, drawable);
            }

            @Override // org.telegram.messenger.ImageReceiver.ImageReceiverDelegate
            public /* synthetic */ void onAnimationReady(ImageReceiver imageReceiver) {
                ImageReceiver.ImageReceiverDelegate.CC.$default$onAnimationReady(this, imageReceiver);
            }
        });
        this.viewsText.setCallback(this);
        this.viewsText.setTextSize(AndroidUtilities.dp(12.0f));
        this.viewsText.setTextColor(-1);
        this.viewsText.setTypeface(AndroidUtilities.bold());
        this.viewsText.setOverrideFullWidth(AndroidUtilities.displaySize.x);
        setWillNotDraw(false);
    }

    private boolean canAutoDownload(MessageObject messageObject) {
        if (System.currentTimeMillis() - lastUpdateDownloadSettingsTime > 5000) {
            lastUpdateDownloadSettingsTime = System.currentTimeMillis();
            lastAutoDownload = DownloadController.getInstance(this.currentAccount).canDownloadMedia(messageObject);
        }
        return lastAutoDownload;
    }

    private float getPadding() {
        float fDpf2;
        float fDpf22;
        if (this.crossfadeProgress != BitmapDescriptorFactory.HUE_RED) {
            float f = this.crossfadeToColumnsCount;
            if (f == 9.0f || this.currentParentColumnsCount == 9) {
                if (f == 9.0f) {
                    fDpf2 = AndroidUtilities.dpf2(0.5f) * this.crossfadeProgress;
                    fDpf22 = AndroidUtilities.dpf2(1.0f);
                } else {
                    fDpf2 = AndroidUtilities.dpf2(1.0f) * this.crossfadeProgress;
                    fDpf22 = AndroidUtilities.dpf2(0.5f);
                }
                return fDpf2 + (fDpf22 * (1.0f - this.crossfadeProgress));
            }
        }
        return this.currentParentColumnsCount == 9 ? AndroidUtilities.dpf2(0.5f) : AndroidUtilities.dpf2(1.0f);
    }

    private int getPrivacyType(MessageObject messageObject) {
        TL_stories$StoryItem tL_stories$StoryItem;
        if (this.isStoryPinned) {
            return 100;
        }
        if (!this.isStory || messageObject == null || (tL_stories$StoryItem = messageObject.storyItem) == null) {
            return -1;
        }
        if (tL_stories$StoryItem.parsedPrivacy == null) {
            tL_stories$StoryItem.parsedPrivacy = new StoryPrivacyBottomSheet.StoryPrivacy(this.currentAccount, tL_stories$StoryItem.privacy);
        }
        int i = messageObject.storyItem.parsedPrivacy.type;
        if (i == 2 || i == 1 || i == 3) {
            return i;
        }
        return -1;
    }

    private TLRPC.MessageMedia getStoryMedia(MessageObject messageObject) {
        TL_stories$StoryItem tL_stories$StoryItem;
        if (messageObject == null || (tL_stories$StoryItem = messageObject.storyItem) == null) {
            return null;
        }
        return tL_stories$StoryItem.media;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(ImageReceiver imageReceiver, boolean z, boolean z2, boolean z3) {
        MessageObject messageObject;
        if (z && !z2 && (messageObject = this.currentMessageObject) != null && messageObject.hasMediaSpoilers() && this.imageReceiver.getBitmap() != null) {
            if (this.blurImageReceiver.getBitmap() != null) {
                this.blurImageReceiver.getBitmap().recycle();
            }
            this.blurImageReceiver.setImageBitmap(Utilities.stackBlurBitmapMax(this.imageReceiver.getBitmap()));
        }
        if (!z || z2 || !this.check2 || this.imageReceiver.getBitmap() == null) {
            return;
        }
        int dominantColor = AndroidUtilities.getDominantColor(this.imageReceiver.getBitmap());
        this.imageReceiverColor = dominantColor;
        CheckBoxBase checkBoxBase = this.checkBoxBase;
        if (checkBoxBase != null) {
            checkBoxBase.setBackgroundColor(Theme.blendOver(dominantColor, Theme.multAlpha(-1, 0.25f)));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onDraw$2(int[] iArr) {
        if (this.gradientDrawableLoading) {
            this.gradientDrawable = new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM, iArr);
            invalidate();
            this.gradientDrawableLoading = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startRevealMedia$3(ValueAnimator valueAnimator) {
        this.spoilerRevealProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        invalidate();
    }

    private boolean mediaEqual(TLRPC.MessageMedia messageMedia, TLRPC.MessageMedia messageMedia2) {
        TLRPC.Photo photo;
        if (messageMedia == null && messageMedia2 == null) {
            return true;
        }
        if (messageMedia != null && messageMedia2 != null) {
            TLRPC.Document document = messageMedia.document;
            if (document != null) {
                TLRPC.Document document2 = messageMedia2.document;
                return document2 != null && document2.id == document.id;
            }
            TLRPC.Photo photo2 = messageMedia.photo;
            return (photo2 == null || (photo = messageMedia2.photo) == null || photo.id != photo2.id) ? false : true;
        }
        return false;
    }

    private void setPrivacyType(int i) {
        if (this.privacyType == i) {
            return;
        }
        this.privacyType = i;
        this.privacyBitmap = null;
        int i2 = i != 1 ? i != 2 ? i != 3 ? i != 100 ? 0 : R.drawable.msg_pin_mini : R.drawable.msg_folders_groups : R.drawable.msg_folders_private : R.drawable.msg_stories_closefriends;
        if (i2 != 0) {
            this.privacyBitmap = this.sharedResources.getPrivacyBitmap(getContext(), i2);
        }
        invalidate();
    }

    private void updateSpoilers2() {
        SpoilerEffect2 spoilerEffect2;
        if (getMeasuredHeight() <= 0 || getMeasuredWidth() <= 0) {
            return;
        }
        MessageObject messageObject = this.currentMessageObject;
        if (messageObject == null || !messageObject.hasMediaSpoilers() || !SpoilerEffect2.supports()) {
            SpoilerEffect2 spoilerEffect22 = this.mediaSpoilerEffect2;
            if (spoilerEffect22 == null) {
                return;
            }
            spoilerEffect22.detach(this);
            spoilerEffect2 = null;
        } else if (this.mediaSpoilerEffect2 != null) {
            return;
        } else {
            spoilerEffect2 = SpoilerEffect2.getInstance(this);
        }
        this.mediaSpoilerEffect2 = spoilerEffect2;
    }

    public boolean canRevealSpoiler() {
        MessageObject messageObject = this.currentMessageObject;
        return messageObject != null && messageObject.hasMediaSpoilers() && this.spoilerRevealProgress == BitmapDescriptorFactory.HUE_RED && !this.currentMessageObject.isMediaSpoilersRevealedInSharedMedia;
    }

    public void drawAuthor(Canvas canvas, RectF rectF, float f) {
        if (this.isStory) {
            ImageReceiver imageReceiver = this.imageReceiver;
            if ((imageReceiver == null || imageReceiver.getVisible()) && this.isSearchingHashtag && this.authorText != null) {
                this.authorText.ellipsize((int) (rectF.width() - (2.0f * r0))).setVerticalClipPadding(AndroidUtilities.dp(14.0f)).setShadow(0.4f * f).draw(canvas, rectF.left + AndroidUtilities.dp(5.33f), rectF.top + AndroidUtilities.dp(this.currentParentColumnsCount <= 2 ? 15.0f : 11.33f), Theme.multAlpha(-1, f), 1.0f);
            }
        }
    }

    public void drawCrossafadeImage(Canvas canvas) {
        if (this.crossfadeView != null) {
            canvas.save();
            canvas.translate(getX(), getY());
            this.crossfadeView.setImageScale(((getMeasuredWidth() - AndroidUtilities.dp(2.0f)) * this.imageScale) / (this.crossfadeView.getMeasuredWidth() - AndroidUtilities.dp(2.0f)), false);
            this.crossfadeView.draw(canvas);
            canvas.restore();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x00a6  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00ab  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00b1  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00b8  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00dd  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00e4  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x011e  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0160  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void drawDuration(Canvas canvas, RectF rectF, float f) {
        StaticLayout staticLayout;
        String str;
        float fPow = f;
        if (this.showVideoLayout) {
            ImageReceiver imageReceiver = this.imageReceiver;
            if (imageReceiver == null || imageReceiver.getVisible()) {
                float fWidth = rectF.width() + (AndroidUtilities.dp(20.0f) * this.checkBoxProgress);
                float fWidth2 = rectF.width() / fWidth;
                if (fPow < 1.0f) {
                    fPow = (float) Math.pow(fPow, 8.0d);
                }
                canvas.save();
                canvas.translate(rectF.left, rectF.top);
                canvas.scale(fWidth2, fWidth2, BitmapDescriptorFactory.HUE_RED, rectF.height());
                canvas.clipRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, rectF.width(), rectF.height());
                int i = this.currentParentColumnsCount;
                if (i == 9 || this.videoInfoLayot != null || (str = this.videoText) == null) {
                    if ((i >= 9 || this.videoText == null) && this.videoInfoLayot != null) {
                        staticLayout = null;
                    }
                    boolean zViewsOnLeft = viewsOnLeft(fWidth);
                    int iDp = AndroidUtilities.dp(8.0f);
                    StaticLayout staticLayout2 = this.videoInfoLayot;
                    int width = iDp + (staticLayout2 == null ? staticLayout2.getWidth() : 0) + (!this.drawVideoIcon ? AndroidUtilities.dp(10.0f) : 0);
                    canvas.translate(AndroidUtilities.dp(5.0f), (((AndroidUtilities.dp(1.0f) + rectF.height()) - AndroidUtilities.dp(17.0f)) - AndroidUtilities.dp(4.0f)) - (!zViewsOnLeft ? AndroidUtilities.dp(22.0f) : 0));
                    RectF rectF2 = AndroidUtilities.rectTmp;
                    rectF2.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, width, AndroidUtilities.dp(17.0f));
                    int alpha = Theme.chat_timeBackgroundPaint.getAlpha();
                    Theme.chat_timeBackgroundPaint.setAlpha((int) (alpha * fPow));
                    canvas.drawRoundRect(rectF2, AndroidUtilities.dp(4.0f), AndroidUtilities.dp(4.0f), Theme.chat_timeBackgroundPaint);
                    Theme.chat_timeBackgroundPaint.setAlpha(alpha);
                    if (this.drawVideoIcon) {
                        canvas.save();
                        canvas.translate(this.videoInfoLayot == null ? AndroidUtilities.dp(5.0f) : AndroidUtilities.dp(4.0f), (AndroidUtilities.dp(17.0f) - this.sharedResources.playDrawable.getIntrinsicHeight()) / 2.0f);
                        this.sharedResources.playDrawable.setAlpha((int) (this.imageAlpha * 255.0f * fPow));
                        this.sharedResources.playDrawable.draw(canvas);
                        canvas.restore();
                    }
                    if (this.videoInfoLayot != null) {
                        canvas.translate(AndroidUtilities.dp((this.drawVideoIcon ? 10 : 0) + 4), (AndroidUtilities.dp(17.0f) - this.videoInfoLayot.getHeight()) / 2.0f);
                        int alpha2 = this.sharedResources.textPaint.getAlpha();
                        this.sharedResources.textPaint.setAlpha((int) (alpha2 * fPow));
                        this.videoInfoLayot.draw(canvas);
                        this.sharedResources.textPaint.setAlpha(alpha2);
                    }
                    canvas.restore();
                }
                staticLayout = new StaticLayout(this.videoText, this.sharedResources.textPaint, (int) Math.ceil(this.sharedResources.textPaint.measureText(str)), Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
                this.videoInfoLayot = staticLayout;
                boolean zViewsOnLeft2 = viewsOnLeft(fWidth);
                int iDp2 = AndroidUtilities.dp(8.0f);
                StaticLayout staticLayout22 = this.videoInfoLayot;
                int width2 = iDp2 + (staticLayout22 == null ? staticLayout22.getWidth() : 0) + (!this.drawVideoIcon ? AndroidUtilities.dp(10.0f) : 0);
                canvas.translate(AndroidUtilities.dp(5.0f), (((AndroidUtilities.dp(1.0f) + rectF.height()) - AndroidUtilities.dp(17.0f)) - AndroidUtilities.dp(4.0f)) - (!zViewsOnLeft2 ? AndroidUtilities.dp(22.0f) : 0));
                RectF rectF22 = AndroidUtilities.rectTmp;
                rectF22.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, width2, AndroidUtilities.dp(17.0f));
                int alpha3 = Theme.chat_timeBackgroundPaint.getAlpha();
                Theme.chat_timeBackgroundPaint.setAlpha((int) (alpha3 * fPow));
                canvas.drawRoundRect(rectF22, AndroidUtilities.dp(4.0f), AndroidUtilities.dp(4.0f), Theme.chat_timeBackgroundPaint);
                Theme.chat_timeBackgroundPaint.setAlpha(alpha3);
                if (this.drawVideoIcon) {
                }
                if (this.videoInfoLayot != null) {
                }
                canvas.restore();
            }
        }
    }

    public void drawPrivacy(Canvas canvas, RectF rectF, float f) {
        Bitmap bitmap;
        if (!this.isStory || (bitmap = this.privacyBitmap) == null || bitmap.isRecycled()) {
            return;
        }
        int iDp = AndroidUtilities.dp((rectF.width() / (rectF.width() + (AndroidUtilities.dp(20.0f) * this.checkBoxProgress))) * 17.33f);
        canvas.save();
        float f2 = iDp;
        canvas.translate((rectF.right - f2) - AndroidUtilities.dp(5.66f), rectF.top + AndroidUtilities.dp(5.66f));
        if (this.privacyPaint == null) {
            this.privacyPaint = new Paint(3);
        }
        this.privacyPaint.setAlpha((int) (f * 255.0f));
        RectF rectF2 = AndroidUtilities.rectTmp;
        rectF2.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, f2, f2);
        canvas.drawBitmap(this.privacyBitmap, (Rect) null, rectF2, this.privacyPaint);
        canvas.restore();
    }

    public void drawViews(Canvas canvas, RectF rectF, float f) {
        if (this.isStory) {
            ImageReceiver imageReceiver = this.imageReceiver;
            if ((imageReceiver == null || imageReceiver.getVisible()) && this.currentParentColumnsCount < 5) {
                float fWidth = rectF.width() + (AndroidUtilities.dp(20.0f) * this.checkBoxProgress);
                float fWidth2 = rectF.width() / fWidth;
                boolean zViewsOnLeft = viewsOnLeft(fWidth);
                float f2 = this.viewsAlpha.set(this.drawViews);
                float fPow = f * f2;
                if (fPow < 1.0f) {
                    fPow = (float) Math.pow(fPow, 8.0d);
                }
                if (f2 <= BitmapDescriptorFactory.HUE_RED) {
                    return;
                }
                canvas.save();
                canvas.translate(rectF.left, rectF.top);
                canvas.scale(fWidth2, fWidth2, zViewsOnLeft ? BitmapDescriptorFactory.HUE_RED : rectF.width(), rectF.height());
                canvas.clipRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, rectF.width(), rectF.height());
                float fDp = AndroidUtilities.dp(26.0f) + this.viewsText.getCurrentWidth();
                canvas.translate(zViewsOnLeft ? AndroidUtilities.dp(5.0f) : (rectF.width() - AndroidUtilities.dp(5.0f)) - fDp, ((AndroidUtilities.dp(1.0f) + rectF.height()) - AndroidUtilities.dp(17.0f)) - AndroidUtilities.dp(4.0f));
                RectF rectF2 = AndroidUtilities.rectTmp;
                rectF2.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, fDp, AndroidUtilities.dp(17.0f));
                int alpha = Theme.chat_timeBackgroundPaint.getAlpha();
                Theme.chat_timeBackgroundPaint.setAlpha((int) (alpha * fPow));
                canvas.drawRoundRect(rectF2, AndroidUtilities.dp(4.0f), AndroidUtilities.dp(4.0f), Theme.chat_timeBackgroundPaint);
                Theme.chat_timeBackgroundPaint.setAlpha(alpha);
                canvas.save();
                canvas.translate(AndroidUtilities.dp(3.0f), (AndroidUtilities.dp(17.0f) - this.sharedResources.viewDrawable.getBounds().height()) / 2.0f);
                this.sharedResources.viewDrawable.setAlpha((int) (this.imageAlpha * 255.0f * fPow));
                this.sharedResources.viewDrawable.draw(canvas);
                canvas.restore();
                canvas.translate(AndroidUtilities.dp(22.0f), BitmapDescriptorFactory.HUE_RED);
                this.viewsText.setBounds(0, 0, (int) fDp, AndroidUtilities.dp(17.0f));
                this.viewsText.setAlpha((int) (fPow * 255.0f));
                this.viewsText.draw(canvas);
                canvas.restore();
            }
        }
    }

    public View getCrossfadeView() {
        return this.crossfadeView;
    }

    public int getMessageId() {
        MessageObject messageObject = this.currentMessageObject;
        if (messageObject != null) {
            return messageObject.getId();
        }
        return 0;
    }

    public MessageObject getMessageObject() {
        return this.currentMessageObject;
    }

    public int getStyle() {
        return this.style;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.attached = true;
        CheckBoxBase checkBoxBase = this.checkBoxBase;
        if (checkBoxBase != null) {
            checkBoxBase.onAttachedToWindow();
        }
        if (this.currentMessageObject != null) {
            this.imageReceiver.onAttachedToWindow();
            this.blurImageReceiver.onAttachedToWindow();
        }
        SpoilerEffect2 spoilerEffect2 = this.mediaSpoilerEffect2;
        if (spoilerEffect2 != null) {
            if (spoilerEffect2.destroyed) {
                this.mediaSpoilerEffect2 = SpoilerEffect2.getInstance(this);
            } else {
                spoilerEffect2.attach(this);
            }
        }
    }

    /* renamed from: onCheckBoxPressed, reason: merged with bridge method [inline-methods] */
    public void lambda$setStyle$1() {
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.attached = false;
        CheckBoxBase checkBoxBase = this.checkBoxBase;
        if (checkBoxBase != null) {
            checkBoxBase.onDetachedFromWindow();
        }
        if (this.currentMessageObject != null) {
            this.imageReceiver.onDetachedFromWindow();
            this.blurImageReceiver.onDetachedFromWindow();
        }
        SpoilerEffect2 spoilerEffect2 = this.mediaSpoilerEffect2;
        if (spoilerEffect2 != null) {
            spoilerEffect2.detach(this);
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        float f;
        float f2;
        float f3;
        boolean z;
        float fDp;
        float fDp2;
        FlickerLoadingView flickerLoadingView;
        super.onDraw(canvas);
        float padding = getPadding();
        boolean z2 = this.isStory;
        float f4 = (z2 && this.isFirst) ? BitmapDescriptorFactory.HUE_RED : padding;
        float f5 = (z2 && this.isLast) ? BitmapDescriptorFactory.HUE_RED : padding;
        float measuredWidth = ((getMeasuredWidth() - f4) - f5) * this.imageScale;
        float f6 = padding * 2.0f;
        float measuredHeight = (getMeasuredHeight() - f6) * this.imageScale;
        if (this.crossfadeProgress > 0.5f && this.crossfadeToColumnsCount != 9.0f && this.currentParentColumnsCount != 9) {
            measuredWidth -= 2.0f;
            measuredHeight -= 2.0f;
        }
        float f7 = measuredWidth;
        float f8 = measuredHeight;
        if ((this.currentMessageObject != null || this.style == 1) && this.imageReceiver.hasBitmapImage() && this.imageReceiver.getCurrentAlpha() == 1.0f && this.imageAlpha == 1.0f) {
            f = f8;
            f2 = f7;
            f3 = 1.0f;
            z = true;
        } else {
            if (getParent() == null || (flickerLoadingView = this.globalGradientView) == null) {
                f = f8;
                f2 = f7;
                f3 = 1.0f;
                z = true;
            } else {
                flickerLoadingView.setParentSize(((View) getParent()).getMeasuredWidth(), getMeasuredHeight(), -getX());
                this.globalGradientView.updateColors();
                this.globalGradientView.updateGradient();
                float f9 = (this.crossfadeProgress <= 0.5f || this.crossfadeToColumnsCount == 9.0f || this.currentParentColumnsCount == 9) ? BitmapDescriptorFactory.HUE_RED : 1.0f;
                float f10 = f4 + f9;
                float f11 = padding + f9;
                f3 = 1.0f;
                z = true;
                f = f8;
                f2 = f7;
                canvas.drawRect(f10, f11, f10 + f7, f11 + f8, this.globalGradientView.getPaint());
            }
            invalidate();
        }
        float f12 = this.imageAlpha;
        if (f12 != f3) {
            canvas.saveLayerAlpha(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, f4 + f5 + f2, f6 + f, (int) (f12 * 255.0f), 31);
        } else {
            canvas.save();
        }
        CheckBoxBase checkBoxBase = this.checkBoxBase;
        if (((checkBoxBase != null && checkBoxBase.isChecked()) || PhotoViewer.isShowingImage(this.currentMessageObject)) && !this.check2) {
            canvas.drawRect(f4, padding, (f4 + f2) - f5, f, this.sharedResources.backgroundPaint);
        }
        if (this.isStory && this.currentParentColumnsCount == z) {
            float height = getHeight() * 0.72f;
            Drawable drawable = this.gradientDrawable;
            if (drawable != null) {
                drawable.setBounds(0, 0, getWidth(), getHeight());
                this.gradientDrawable.draw(canvas);
            } else if (!this.gradientDrawableLoading && this.imageReceiver.getBitmap() != null) {
                this.gradientDrawableLoading = z;
                DominantColors.getColors(false, this.imageReceiver.getBitmap(), Theme.isCurrentThemeDark(), new Utilities.Callback() { // from class: org.telegram.ui.Cells.SharedPhotoVideoCell2$$ExternalSyntheticLambda2
                    @Override // org.telegram.messenger.Utilities.Callback
                    public final void run(Object obj) {
                        this.f$0.lambda$onDraw$2((int[]) obj);
                    }
                });
            }
            this.imageReceiver.setImageCoords((f2 - height) / 2.0f, BitmapDescriptorFactory.HUE_RED, height, getHeight());
        } else if (this.checkBoxProgress > BitmapDescriptorFactory.HUE_RED) {
            float fDp3 = AndroidUtilities.dp(this.check2 ? 7.0f : 10.0f) * this.checkBoxProgress;
            float f13 = f4 + fDp3;
            float f14 = padding + fDp3;
            float f15 = fDp3 * 2.0f;
            float f16 = f2 - f15;
            float f17 = f - f15;
            this.imageReceiver.setImageCoords(f13, f14, f16, f17);
            this.blurImageReceiver.setImageCoords(f13, f14, f16, f17);
        } else {
            float f18 = (this.crossfadeProgress <= 0.5f || this.crossfadeToColumnsCount == 9.0f || this.currentParentColumnsCount == 9) ? BitmapDescriptorFactory.HUE_RED : 1.0f;
            float f19 = f4 + f18;
            float f20 = f18 + padding;
            this.imageReceiver.setImageCoords(f19, f20, f2, f);
            this.blurImageReceiver.setImageCoords(f19, f20, f2, f);
        }
        if (this.check2) {
            this.imageReceiver.setRoundRadius(AndroidUtilities.lerp(0, AndroidUtilities.dp(8.0f), this.checkBoxProgress));
            canvas.save();
            if (this.reorder) {
                canvas.translate(this.imageReceiver.getCenterX(), this.imageReceiver.getCenterY());
                if (this.shaker == null) {
                    this.shaker = new Shaker(this);
                }
                this.shaker.concat(canvas, this.checkBoxProgress);
                canvas.translate(-this.imageReceiver.getCenterX(), -this.imageReceiver.getCenterY());
            }
        }
        if (!PhotoViewer.isShowingImage(this.currentMessageObject)) {
            this.imageReceiver.draw(canvas);
            MessageObject messageObject = this.currentMessageObject;
            if (messageObject != null && messageObject.hasMediaSpoilers() && !this.currentMessageObject.isMediaSpoilersRevealedInSharedMedia) {
                canvas.save();
                canvas.clipRect(f4, padding, (f4 + f2) - f5, padding + f);
                if (this.spoilerRevealProgress != BitmapDescriptorFactory.HUE_RED) {
                    this.path.rewind();
                    this.path.addCircle(this.spoilerRevealX, this.spoilerRevealY, this.spoilerMaxRadius * this.spoilerRevealProgress, Path.Direction.CW);
                    canvas.clipPath(this.path, Region.Op.DIFFERENCE);
                }
                this.blurImageReceiver.draw(canvas);
                if (this.mediaSpoilerEffect2 != null) {
                    canvas.clipRect(this.imageReceiver.getImageX(), this.imageReceiver.getImageY(), this.imageReceiver.getImageX2(), this.imageReceiver.getImageY2());
                    this.mediaSpoilerEffect2.draw(canvas, this, (int) this.imageReceiver.getImageWidth(), (int) this.imageReceiver.getImageHeight());
                } else {
                    if (this.mediaSpoilerEffect == null) {
                        this.mediaSpoilerEffect = new SpoilerEffect();
                    }
                    this.mediaSpoilerEffect.setColor(ColorUtils.setAlphaComponent(-1, (int) (Color.alpha(-1) * 0.325f)));
                    this.mediaSpoilerEffect.setBounds((int) this.imageReceiver.getImageX(), (int) this.imageReceiver.getImageY(), (int) this.imageReceiver.getImageX2(), (int) this.imageReceiver.getImageY2());
                    this.mediaSpoilerEffect.draw(canvas);
                }
                canvas.restore();
                invalidate();
            }
            if (!this.isSearchingHashtag) {
                float f21 = this.highlightProgress;
                if (f21 > BitmapDescriptorFactory.HUE_RED) {
                    this.sharedResources.highlightPaint.setColor(ColorUtils.setAlphaComponent(-16777216, (int) (f21 * 0.5f * 255.0f)));
                    canvas.drawRect(this.imageReceiver.getDrawRegion(), this.sharedResources.highlightPaint);
                }
            }
        }
        if (this.isStoryUploading) {
            this.scrimPaint.setColor(805306368);
            canvas.drawRect(this.imageReceiver.getDrawRegion(), this.scrimPaint);
            this.progressPaint.setStyle(Paint.Style.STROKE);
            this.progressPaint.setColor(-1);
            this.progressPaint.setStrokeWidth(AndroidUtilities.dp(3.0f));
            this.progressPaint.setStrokeJoin(Paint.Join.ROUND);
            this.progressPaint.setStrokeCap(Paint.Cap.ROUND);
            float fDp4 = AndroidUtilities.dp(18.0f);
            RectF rectF = AndroidUtilities.rectTmp;
            rectF.set(this.imageReceiver.getCenterX() - fDp4, this.imageReceiver.getCenterY() - fDp4, this.imageReceiver.getCenterX() + fDp4, this.imageReceiver.getCenterY() + fDp4);
            float fCurrentTimeMillis = ((System.currentTimeMillis() % 1500) / 1500.0f) * 360.0f;
            AnimatedFloat animatedFloat = this.animatedProgress;
            MessageObject messageObject2 = this.currentMessageObject;
            canvas.drawArc(rectF, fCurrentTimeMillis, animatedFloat.set(AndroidUtilities.lerp(0.15f, 0.95f, messageObject2 != null ? messageObject2.getProgress() : BitmapDescriptorFactory.HUE_RED)) * 360.0f, false, this.progressPaint);
            invalidate();
        }
        this.bounds.set(this.imageReceiver.getImageX(), this.imageReceiver.getImageY(), this.imageReceiver.getImageX2(), this.imageReceiver.getImageY2());
        drawDuration(canvas, this.bounds, f3);
        drawViews(canvas, this.bounds, f3);
        if (this.isSearchingHashtag) {
            drawAuthor(canvas, this.bounds, f3);
        } else {
            drawPrivacy(canvas, this.bounds, f3);
        }
        if (this.check2) {
            canvas.restore();
        }
        CheckBoxBase checkBoxBase2 = this.checkBoxBase;
        if (checkBoxBase2 != null && (this.style == z || checkBoxBase2.getProgress() != BitmapDescriptorFactory.HUE_RED)) {
            canvas.save();
            if (this.check2 && this.reorder) {
                canvas.translate(this.imageReceiver.getCenterX(), this.imageReceiver.getCenterY());
                if (this.shaker == null) {
                    this.shaker = new Shaker(this);
                }
                this.shaker.concat(canvas, this.checkBoxProgress * 0.5f);
                canvas.translate(-this.imageReceiver.getCenterX(), -this.imageReceiver.getCenterY());
            }
            if (this.style == z) {
                fDp = ((f2 + AndroidUtilities.dp(2.0f)) - AndroidUtilities.dp(25.0f)) - AndroidUtilities.dp(4.0f);
                fDp2 = AndroidUtilities.dp(4.0f);
            } else if (this.check2) {
                fDp = (f2 + AndroidUtilities.dp(2.0f)) - AndroidUtilities.dp((this.checkBoxProgress * 5.0f) + 22.0f);
                fDp2 = AndroidUtilities.dp(-2.0f) + (AndroidUtilities.dp(5.0f) * this.checkBoxProgress);
            } else {
                fDp = (f2 + AndroidUtilities.dp(2.0f)) - AndroidUtilities.dp(25.0f);
                fDp2 = BitmapDescriptorFactory.HUE_RED;
            }
            canvas.translate(fDp, fDp2);
            this.checkBoxBase.draw(canvas);
            if (this.canvasButton != null) {
                RectF rectF2 = AndroidUtilities.rectTmp;
                rectF2.set(fDp, fDp2, this.checkBoxBase.bounds.width() + fDp, this.checkBoxBase.bounds.height() + fDp2);
                this.canvasButton.setRect(rectF2);
            }
            canvas.restore();
        }
        canvas.restore();
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        int size = View.MeasureSpec.getSize(i);
        boolean z = this.isStory;
        int i3 = z ? (int) (size * 1.25f) : size;
        if (z && this.currentParentColumnsCount == 1) {
            i3 /= 2;
        }
        setMeasuredDimension(size, i3);
        updateSpoilers2();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        CanvasButton canvasButton = this.canvasButton;
        if (canvasButton == null || !canvasButton.checkTouchEvent(motionEvent)) {
            return super.onTouchEvent(motionEvent);
        }
        return true;
    }

    public void setCheck2() {
        this.check2 = true;
    }

    public void setChecked(final boolean z, boolean z2) {
        int i;
        CheckBoxBase checkBoxBase = this.checkBoxBase;
        if ((checkBoxBase != null && checkBoxBase.isChecked()) == z) {
            return;
        }
        if (this.checkBoxBase == null) {
            CheckBoxBase checkBoxBase2 = new CheckBoxBase(this, 21, null);
            this.checkBoxBase = checkBoxBase2;
            checkBoxBase2.setColor(-1, Theme.key_sharedMedia_photoPlaceholder, Theme.key_checkboxCheck);
            if (this.check2 && (i = this.imageReceiverColor) != 0) {
                this.checkBoxBase.setBackgroundColor(Theme.blendOver(i, Theme.multAlpha(-1, 0.25f)));
            }
            this.checkBoxBase.setDrawUnchecked(false);
            this.checkBoxBase.setBackgroundType(1);
            this.checkBoxBase.setBounds(0, 0, AndroidUtilities.dp(24.0f), AndroidUtilities.dp(24.0f));
            if (this.attached) {
                this.checkBoxBase.onAttachedToWindow();
            }
        }
        this.checkBoxBase.setChecked(z, z2);
        ValueAnimator valueAnimator = this.animator;
        if (valueAnimator != null) {
            this.animator = null;
            valueAnimator.cancel();
        }
        float f = BitmapDescriptorFactory.HUE_RED;
        if (z2) {
            float f2 = this.checkBoxProgress;
            if (z) {
                f = 1.0f;
            }
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(f2, f);
            this.animator = valueAnimatorOfFloat;
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Cells.SharedPhotoVideoCell2.2
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    SharedPhotoVideoCell2.this.checkBoxProgress = ((Float) valueAnimator2.getAnimatedValue()).floatValue();
                    SharedPhotoVideoCell2.this.invalidate();
                }
            });
            this.animator.setDuration(200L);
            this.animator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Cells.SharedPhotoVideoCell2.3
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    ValueAnimator valueAnimator2 = SharedPhotoVideoCell2.this.animator;
                    if (valueAnimator2 == null || !valueAnimator2.equals(animator)) {
                        return;
                    }
                    SharedPhotoVideoCell2 sharedPhotoVideoCell2 = SharedPhotoVideoCell2.this;
                    sharedPhotoVideoCell2.checkBoxProgress = z ? 1.0f : BitmapDescriptorFactory.HUE_RED;
                    sharedPhotoVideoCell2.animator = null;
                }
            });
            this.animator.start();
        } else {
            if (z) {
                f = 1.0f;
            }
            this.checkBoxProgress = f;
        }
        invalidate();
    }

    public void setCrossfadeView(SharedPhotoVideoCell2 sharedPhotoVideoCell2, float f, int i) {
        this.crossfadeView = sharedPhotoVideoCell2;
        this.crossfadeProgress = f;
        this.crossfadeToColumnsCount = i;
    }

    public void setGradientView(FlickerLoadingView flickerLoadingView) {
        this.globalGradientView = flickerLoadingView;
    }

    public void setHighlightProgress(float f) {
        if (this.highlightProgress != f) {
            this.highlightProgress = f;
            invalidate();
        }
    }

    public void setImageAlpha(float f, boolean z) {
        if (this.imageAlpha != f) {
            this.imageAlpha = f;
            if (z) {
                invalidate();
            }
        }
    }

    public void setImageScale(float f, boolean z) {
        if (this.imageScale != f) {
            this.imageScale = f;
            if (z) {
                invalidate();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:167:0x0325 A[PHI: r3 r8 r10 r11
      0x0325: PHI (r3v57 org.telegram.messenger.ImageReceiver) = (r3v47 org.telegram.messenger.ImageReceiver), (r3v71 org.telegram.messenger.ImageReceiver) binds: [B:166:0x0323, B:113:0x0204] A[DONT_GENERATE, DONT_INLINE]
      0x0325: PHI (r8v12 org.telegram.messenger.ImageLocation) = (r8v9 org.telegram.messenger.ImageLocation), (r8v17 org.telegram.messenger.ImageLocation) binds: [B:166:0x0323, B:113:0x0204] A[DONT_GENERATE, DONT_INLINE]
      0x0325: PHI (r10v13 android.graphics.drawable.BitmapDrawable) = (r10v9 android.graphics.drawable.BitmapDrawable), (r10v20 android.graphics.drawable.BitmapDrawable) binds: [B:166:0x0323, B:113:0x0204] A[DONT_GENERATE, DONT_INLINE]
      0x0325: PHI (r11v15 long) = (r11v9 long), (r11v30 long) binds: [B:166:0x0323, B:113:0x0204] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:169:0x032e A[PHI: r3 r8 r10 r11
      0x032e: PHI (r3v59 org.telegram.messenger.ImageReceiver) = (r3v47 org.telegram.messenger.ImageReceiver), (r3v71 org.telegram.messenger.ImageReceiver) binds: [B:166:0x0323, B:113:0x0204] A[DONT_GENERATE, DONT_INLINE]
      0x032e: PHI (r8v14 org.telegram.messenger.ImageLocation) = (r8v9 org.telegram.messenger.ImageLocation), (r8v17 org.telegram.messenger.ImageLocation) binds: [B:166:0x0323, B:113:0x0204] A[DONT_GENERATE, DONT_INLINE]
      0x032e: PHI (r10v14 android.graphics.drawable.BitmapDrawable) = (r10v9 android.graphics.drawable.BitmapDrawable), (r10v20 android.graphics.drawable.BitmapDrawable) binds: [B:166:0x0323, B:113:0x0204] A[DONT_GENERATE, DONT_INLINE]
      0x032e: PHI (r11v17 long) = (r11v9 long), (r11v30 long) binds: [B:166:0x0323, B:113:0x0204] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:176:0x0363 A[PHI: r3 r8 r10 r11 r14
      0x0363: PHI (r3v54 org.telegram.messenger.ImageLocation) = (r3v46 org.telegram.messenger.ImageLocation), (r3v70 org.telegram.messenger.ImageLocation) binds: [B:175:0x0361, B:119:0x022e] A[DONT_GENERATE, DONT_INLINE]
      0x0363: PHI (r8v10 java.lang.String) = (r8v7 java.lang.String), (r8v15 java.lang.String) binds: [B:175:0x0361, B:119:0x022e] A[DONT_GENERATE, DONT_INLINE]
      0x0363: PHI (r10v10 org.telegram.messenger.ImageReceiver) = (r10v8 org.telegram.messenger.ImageReceiver), (r10v19 org.telegram.messenger.ImageReceiver) binds: [B:175:0x0361, B:119:0x022e] A[DONT_GENERATE, DONT_INLINE]
      0x0363: PHI (r11v12 long) = (r11v7 long), (r11v28 long) binds: [B:175:0x0361, B:119:0x022e] A[DONT_GENERATE, DONT_INLINE]
      0x0363: PHI (r14v7 org.telegram.messenger.ImageLocation) = (r14v2 org.telegram.messenger.ImageLocation), (r14v19 org.telegram.messenger.ImageLocation) binds: [B:175:0x0361, B:119:0x022e] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:178:0x036c A[PHI: r3 r8 r10 r11 r14
      0x036c: PHI (r3v56 org.telegram.messenger.ImageLocation) = (r3v46 org.telegram.messenger.ImageLocation), (r3v70 org.telegram.messenger.ImageLocation) binds: [B:175:0x0361, B:119:0x022e] A[DONT_GENERATE, DONT_INLINE]
      0x036c: PHI (r8v11 java.lang.String) = (r8v7 java.lang.String), (r8v15 java.lang.String) binds: [B:175:0x0361, B:119:0x022e] A[DONT_GENERATE, DONT_INLINE]
      0x036c: PHI (r10v12 org.telegram.messenger.ImageReceiver) = (r10v8 org.telegram.messenger.ImageReceiver), (r10v19 org.telegram.messenger.ImageReceiver) binds: [B:175:0x0361, B:119:0x022e] A[DONT_GENERATE, DONT_INLINE]
      0x036c: PHI (r11v14 long) = (r11v7 long), (r11v28 long) binds: [B:175:0x0361, B:119:0x022e] A[DONT_GENERATE, DONT_INLINE]
      0x036c: PHI (r14v9 org.telegram.messenger.ImageLocation) = (r14v2 org.telegram.messenger.ImageLocation), (r14v19 org.telegram.messenger.ImageLocation) binds: [B:175:0x0361, B:119:0x022e] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:180:0x037b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void setMessageObject(MessageObject messageObject, int i) {
        AnimatedTextView.AnimatedTextDrawable animatedTextDrawable;
        ImageLocation imageLocation;
        ImageReceiver imageReceiver;
        ImageLocation forObject;
        ImageLocation forObject2;
        String str;
        long j;
        ImageReceiver imageReceiver2;
        ImageLocation forObject3;
        BitmapDrawable bitmapDrawable;
        BitmapDrawable bitmapDrawable2;
        ImageReceiver imageReceiver3;
        ImageLocation forDocument;
        StringBuilder sb;
        ImageReceiver imageReceiver4;
        ImageLocation forObject4;
        String str2;
        int i2;
        ImageLocation imageLocation2;
        String str3;
        String str4;
        BitmapDrawable bitmapDrawable3;
        long j2;
        String str5;
        long j3;
        ImageLocation imageLocation3;
        int i3;
        BitmapDrawable bitmapDrawable4;
        long j4;
        int i4;
        ImageLocation forDocument2;
        String string;
        String str6;
        BitmapDrawable bitmapDrawable5;
        ImageLocation forDocument3;
        ImageReceiver imageReceiver5;
        String str7;
        int i5;
        String str8;
        TL_stories$StoryViews tL_stories$StoryViews;
        int i6 = this.currentParentColumnsCount;
        this.currentParentColumnsCount = i;
        MessageObject messageObject2 = this.currentMessageObject;
        if (messageObject2 == null && messageObject == null) {
            return;
        }
        if (messageObject2 != null && messageObject != null && messageObject2.getId() == messageObject.getId()) {
            MessageObject messageObject3 = this.currentMessageObject;
            if ((messageObject3 != null ? messageObject3.uploadingStory : null) == messageObject.uploadingStory) {
                if ((messageObject3 != null ? messageObject3.parentStoriesList : null) == messageObject.parentStoriesList && mediaEqual(getStoryMedia(messageObject3), getStoryMedia(messageObject)) && i6 == i) {
                    int i7 = this.privacyType;
                    if ((i7 == 100) == this.isStoryPinned && i7 == getPrivacyType(messageObject)) {
                        return;
                    }
                }
            }
        }
        this.currentMessageObject = messageObject;
        this.isStory = messageObject != null && messageObject.isStory();
        MessageObject messageObject4 = this.currentMessageObject;
        this.isStoryUploading = (messageObject4 == null || messageObject4.uploadingStory == null) ? false : true;
        updateSpoilers2();
        String wholeNumber = "";
        float f = BitmapDescriptorFactory.HUE_RED;
        if (messageObject == null) {
            this.imageReceiver.onDetachedFromWindow();
            this.blurImageReceiver.onDetachedFromWindow();
            this.videoText = null;
            this.drawViews = false;
            this.viewsAlpha.set(BitmapDescriptorFactory.HUE_RED, true);
            this.viewsText.setText("", false);
            this.videoInfoLayot = null;
            this.showVideoLayout = false;
            this.gradientDrawableLoading = false;
            this.gradientDrawable = null;
            this.privacyType = -1;
            this.privacyBitmap = null;
            this.authorText = null;
            return;
        }
        if (this.attached) {
            this.imageReceiver.onAttachedToWindow();
            this.blurImageReceiver.onAttachedToWindow();
        }
        String restrictionReason = MessagesController.getInstance(this.currentAccount).getRestrictionReason(messageObject.messageOwner.restriction_reason);
        String filterString = this.sharedResources.getFilterString((int) ((AndroidUtilities.displaySize.x / i) / AndroidUtilities.density));
        int photoSize = i <= 2 ? AndroidUtilities.getPhotoSize() : 320;
        this.videoText = null;
        this.videoInfoLayot = null;
        this.showVideoLayout = false;
        this.imageReceiver.clearDecorators();
        if (!this.isStory || (tL_stories$StoryViews = messageObject.storyItem.views) == null) {
            this.drawViews = false;
            this.viewsAlpha.set(BitmapDescriptorFactory.HUE_RED, true);
            animatedTextDrawable = this.viewsText;
        } else {
            int i8 = tL_stories$StoryViews.views_count;
            this.drawViews = i8 > 0;
            animatedTextDrawable = this.viewsText;
            wholeNumber = AndroidUtilities.formatWholeNumber(i8, 0);
        }
        animatedTextDrawable.setText(wholeNumber, false);
        AnimatedFloat animatedFloat = this.viewsAlpha;
        if (this.drawViews) {
            f = 1.0f;
        }
        animatedFloat.set(f, true);
        Object obj = messageObject.parentStoriesList != null ? messageObject.storyItem : messageObject;
        if (TextUtils.isEmpty(restrictionReason)) {
            TL_stories$StoryItem tL_stories$StoryItem = messageObject.storyItem;
            if (tL_stories$StoryItem == null || !(tL_stories$StoryItem.media instanceof TLRPC.TL_messageMediaUnsupported)) {
                StoriesController.UploadingStory uploadingStory = messageObject.uploadingStory;
                if (uploadingStory == null || (str8 = uploadingStory.firstFramePath) == null) {
                    if (messageObject.isVideo()) {
                        this.showVideoLayout = true;
                        if (i != 9) {
                            this.videoText = AndroidUtilities.formatShortDuration((int) messageObject.getDuration());
                        }
                        imageLocation = messageObject.mediaThumb;
                        if (imageLocation != null) {
                            bitmapDrawable2 = messageObject.strippedThumb;
                            if (bitmapDrawable2 == null) {
                                imageReceiver3 = this.imageReceiver;
                                forDocument = messageObject.mediaSmallThumb;
                                sb = new StringBuilder();
                                sb.append(filterString);
                                sb.append("_b");
                                string = sb.toString();
                                str6 = null;
                                i4 = 0;
                                bitmapDrawable4 = null;
                                j4 = 0;
                                forDocument2 = imageLocation;
                                imageReceiver3.setImage(forDocument2, filterString, forDocument, string, bitmapDrawable4, j4, str6, obj, i4);
                            }
                            forDocument3 = imageLocation;
                            bitmapDrawable5 = bitmapDrawable2;
                            imageReceiver5 = this.imageReceiver;
                            str7 = null;
                            i5 = 0;
                        } else if (messageObject.hasVideoCover()) {
                            TLRPC.PhotoSize closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(messageObject.photoThumbs, 50);
                            TLRPC.PhotoSize closestPhotoSizeWithSize2 = FileLoader.getClosestPhotoSizeWithSize(messageObject.photoThumbs, photoSize, false, closestPhotoSizeWithSize, this.isStory);
                            if (closestPhotoSizeWithSize2 == closestPhotoSizeWithSize) {
                                closestPhotoSizeWithSize = null;
                            }
                            if (messageObject.strippedThumb != null) {
                                imageReceiver2 = this.imageReceiver;
                                forObject3 = ImageLocation.getForObject(closestPhotoSizeWithSize2, messageObject.photoThumbsObject);
                                bitmapDrawable = messageObject.strippedThumb;
                                j = closestPhotoSizeWithSize2 != null ? closestPhotoSizeWithSize2.size : 0L;
                                if (messageObject.shouldEncryptPhotoOrVideo()) {
                                    bitmapDrawable4 = bitmapDrawable;
                                    j4 = j;
                                    i4 = 2;
                                } else {
                                    bitmapDrawable4 = bitmapDrawable;
                                    j4 = j;
                                    i4 = 1;
                                }
                                imageReceiver3 = imageReceiver2;
                                forDocument2 = forObject3;
                                forDocument = null;
                                string = null;
                                str6 = null;
                                imageReceiver3.setImage(forDocument2, filterString, forDocument, string, bitmapDrawable4, j4, str6, obj, i4);
                            } else {
                                imageReceiver = this.imageReceiver;
                                forObject = ImageLocation.getForObject(closestPhotoSizeWithSize2, messageObject.photoThumbsObject);
                                forObject2 = ImageLocation.getForObject(closestPhotoSizeWithSize, messageObject.photoThumbsObject);
                                str = filterString + "_b";
                                j = closestPhotoSizeWithSize2 != null ? closestPhotoSizeWithSize2.size : 0L;
                                if (messageObject.shouldEncryptPhotoOrVideo()) {
                                    str5 = str;
                                    j3 = j;
                                    imageLocation3 = forObject;
                                    i3 = 2;
                                } else {
                                    str5 = str;
                                    j3 = j;
                                    imageLocation3 = forObject;
                                    i3 = 1;
                                }
                                imageReceiver.setImage(imageLocation3, filterString, forObject2, str5, j3, null, obj, i3);
                            }
                        } else {
                            TLRPC.Document document = messageObject.getDocument();
                            TLRPC.PhotoSize closestPhotoSizeWithSize3 = FileLoader.getClosestPhotoSizeWithSize(document.thumbs, 50);
                            TLRPC.PhotoSize closestPhotoSizeWithSize4 = FileLoader.getClosestPhotoSizeWithSize(document.thumbs, photoSize, false, null, this.isStory);
                            if (closestPhotoSizeWithSize3 == closestPhotoSizeWithSize4 && !this.isStory) {
                                closestPhotoSizeWithSize4 = null;
                            }
                            if (closestPhotoSizeWithSize3 != null) {
                                if (messageObject.strippedThumb != null) {
                                    imageReceiver5 = this.imageReceiver;
                                    forDocument3 = ImageLocation.getForDocument(closestPhotoSizeWithSize4, document);
                                    bitmapDrawable5 = messageObject.strippedThumb;
                                    str7 = null;
                                    i5 = 0;
                                } else {
                                    imageReceiver3 = this.imageReceiver;
                                    forDocument2 = ImageLocation.getForDocument(closestPhotoSizeWithSize4, document);
                                    forDocument = ImageLocation.getForDocument(closestPhotoSizeWithSize3, document);
                                    string = filterString + "_b";
                                    str6 = null;
                                    i4 = 0;
                                    bitmapDrawable4 = null;
                                    j4 = 0;
                                    imageReceiver3.setImage(forDocument2, filterString, forDocument, string, bitmapDrawable4, j4, str6, obj, i4);
                                }
                            }
                            this.imageReceiver.setImageBitmap(ContextCompat.getDrawable(getContext(), R.drawable.photo_placeholder_in));
                        }
                    } else if (!(MessageObject.getMedia(messageObject.messageOwner) instanceof TLRPC.TL_messageMediaPhoto) || MessageObject.getMedia(messageObject.messageOwner).photo == null || messageObject.photoThumbs.isEmpty()) {
                        this.imageReceiver.setImageBitmap(ContextCompat.getDrawable(getContext(), R.drawable.photo_placeholder_in));
                    } else if (messageObject.mediaExists || canAutoDownload(messageObject) || this.isStory) {
                        imageLocation = messageObject.mediaThumb;
                        if (imageLocation != null) {
                            bitmapDrawable2 = messageObject.strippedThumb;
                            if (bitmapDrawable2 == null) {
                                imageReceiver3 = this.imageReceiver;
                                forDocument = messageObject.mediaSmallThumb;
                                sb = new StringBuilder();
                                sb.append(filterString);
                                sb.append("_b");
                                string = sb.toString();
                                str6 = null;
                                i4 = 0;
                                bitmapDrawable4 = null;
                                j4 = 0;
                                forDocument2 = imageLocation;
                                imageReceiver3.setImage(forDocument2, filterString, forDocument, string, bitmapDrawable4, j4, str6, obj, i4);
                            }
                            forDocument3 = imageLocation;
                            bitmapDrawable5 = bitmapDrawable2;
                            imageReceiver5 = this.imageReceiver;
                            str7 = null;
                            i5 = 0;
                        } else {
                            TLRPC.PhotoSize closestPhotoSizeWithSize5 = FileLoader.getClosestPhotoSizeWithSize(messageObject.photoThumbs, 50);
                            TLRPC.PhotoSize closestPhotoSizeWithSize6 = FileLoader.getClosestPhotoSizeWithSize(messageObject.photoThumbs, photoSize, false, closestPhotoSizeWithSize5, this.isStory);
                            if (closestPhotoSizeWithSize6 == closestPhotoSizeWithSize5) {
                                closestPhotoSizeWithSize5 = null;
                            }
                            if (messageObject.strippedThumb != null) {
                                imageReceiver2 = this.imageReceiver;
                                forObject3 = ImageLocation.getForObject(closestPhotoSizeWithSize6, messageObject.photoThumbsObject);
                                bitmapDrawable = messageObject.strippedThumb;
                                j = closestPhotoSizeWithSize6 != null ? closestPhotoSizeWithSize6.size : 0L;
                                if (messageObject.shouldEncryptPhotoOrVideo()) {
                                }
                                imageReceiver3 = imageReceiver2;
                                forDocument2 = forObject3;
                                forDocument = null;
                                string = null;
                                str6 = null;
                                imageReceiver3.setImage(forDocument2, filterString, forDocument, string, bitmapDrawable4, j4, str6, obj, i4);
                            } else {
                                imageReceiver = this.imageReceiver;
                                forObject = ImageLocation.getForObject(closestPhotoSizeWithSize6, messageObject.photoThumbsObject);
                                forObject2 = ImageLocation.getForObject(closestPhotoSizeWithSize5, messageObject.photoThumbsObject);
                                str = filterString + "_b";
                                j = closestPhotoSizeWithSize6 != null ? closestPhotoSizeWithSize6.size : 0L;
                                if (messageObject.shouldEncryptPhotoOrVideo()) {
                                }
                                imageReceiver.setImage(imageLocation3, filterString, forObject2, str5, j3, null, obj, i3);
                            }
                        }
                    } else {
                        BitmapDrawable bitmapDrawable6 = messageObject.strippedThumb;
                        if (bitmapDrawable6 != null) {
                            imageReceiver4 = this.imageReceiver;
                            str2 = null;
                            i2 = 0;
                            imageLocation2 = null;
                            str3 = null;
                            forObject4 = null;
                            str4 = null;
                            j2 = 0;
                            bitmapDrawable3 = bitmapDrawable6;
                        } else {
                            TLRPC.PhotoSize closestPhotoSizeWithSize7 = FileLoader.getClosestPhotoSizeWithSize(messageObject.photoThumbs, 50);
                            imageReceiver4 = this.imageReceiver;
                            forObject4 = ImageLocation.getForObject(closestPhotoSizeWithSize7, messageObject.photoThumbsObject);
                            str2 = null;
                            i2 = 0;
                            imageLocation2 = null;
                            str3 = null;
                            str4 = "b";
                            bitmapDrawable3 = null;
                            j2 = 0;
                        }
                        imageReceiver4.setImage(imageLocation2, str3, forObject4, str4, bitmapDrawable3, j2, str2, obj, i2);
                    }
                } else {
                    imageReceiver5 = this.imageReceiver;
                    forDocument3 = ImageLocation.getForPath(str8);
                    str7 = null;
                    i5 = 0;
                    bitmapDrawable5 = null;
                }
                imageReceiver5.setImage(forDocument3, filterString, bitmapDrawable5, str7, obj, i5);
            } else {
                tL_stories$StoryItem.dialogId = messageObject.getDialogId();
                Drawable drawableMutate = getContext().getResources().getDrawable(R.drawable.msg_emoji_recent).mutate();
                drawableMutate.setColorFilter(new PorterDuffColorFilter(1090519039, PorterDuff.Mode.SRC_IN));
                this.imageReceiver.setImageBitmap(new CombinedDrawable(new ColorDrawable(-13421773), drawableMutate));
            }
        }
        if (this.blurImageReceiver.getBitmap() != null) {
            this.blurImageReceiver.getBitmap().recycle();
            this.blurImageReceiver.setImageBitmap((Bitmap) null);
        }
        if (this.imageReceiver.getBitmap() != null && this.currentMessageObject.hasMediaSpoilers() && !this.currentMessageObject.isMediaSpoilersRevealed) {
            this.blurImageReceiver.setImageBitmap(Utilities.stackBlurBitmapMax(this.imageReceiver.getBitmap()));
        }
        TL_stories$StoryItem tL_stories$StoryItem2 = messageObject.storyItem;
        if (tL_stories$StoryItem2 != null) {
            this.imageReceiver.addDecorator(new StoryWidgetsImageDecorator(tL_stories$StoryItem2));
        }
        setPrivacyType(getPrivacyType(messageObject));
        if (this.isSearchingHashtag) {
            long dialogId = messageObject.getDialogId();
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder("x ");
            spannableStringBuilder.append((CharSequence) MessagesController.getInstance(this.currentAccount).getPeerName(dialogId));
            AvatarSpan avatarSpan = new AvatarSpan(this, this.currentAccount, i == 2 ? 16.0f : 13.66f);
            avatarSpan.setDialogId(dialogId);
            spannableStringBuilder.setSpan(avatarSpan, 0, 1, 33);
            this.authorText = new Text(spannableStringBuilder, i == 2 ? 14.0f : 10.1666f, AndroidUtilities.bold());
        }
        invalidate();
    }

    public void setReorder(boolean z) {
        this.reorder = z;
        invalidate();
    }

    public void setStyle(int i) {
        if (this.style == i) {
            return;
        }
        this.style = i;
        if (i == 1) {
            CheckBoxBase checkBoxBase = new CheckBoxBase(this, 21, null);
            this.checkBoxBase = checkBoxBase;
            checkBoxBase.setColor(-1, Theme.key_sharedMedia_photoPlaceholder, Theme.key_checkboxCheck);
            this.checkBoxBase.setDrawUnchecked(true);
            this.checkBoxBase.setBackgroundType(0);
            this.checkBoxBase.setBounds(0, 0, AndroidUtilities.dp(24.0f), AndroidUtilities.dp(24.0f));
            if (this.attached) {
                this.checkBoxBase.onAttachedToWindow();
            }
            CanvasButton canvasButton = new CanvasButton(this);
            this.canvasButton = canvasButton;
            canvasButton.setDelegate(new Runnable() { // from class: org.telegram.ui.Cells.SharedPhotoVideoCell2$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$setStyle$1();
                }
            });
        }
    }

    public void setVideoText(String str, boolean z) {
        StaticLayout staticLayout;
        this.videoText = str;
        boolean z2 = str != null;
        this.showVideoLayout = z2;
        if (z2 && (staticLayout = this.videoInfoLayot) != null && !staticLayout.getText().toString().equals(str)) {
            this.videoInfoLayot = null;
        }
        this.drawVideoIcon = z;
    }

    public void startRevealMedia(float f, float f2) {
        this.spoilerRevealX = f;
        this.spoilerRevealY = f2;
        this.spoilerMaxRadius = (float) Math.sqrt(Math.pow(getWidth(), 2.0d) + Math.pow(getHeight(), 2.0d));
        ValueAnimator duration = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f).setDuration((long) MathUtils.clamp(this.spoilerMaxRadius * 0.3f, 250.0f, 550.0f));
        duration.setInterpolator(CubicBezierInterpolator.EASE_BOTH);
        duration.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Cells.SharedPhotoVideoCell2$$ExternalSyntheticLambda0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f$0.lambda$startRevealMedia$3(valueAnimator);
            }
        });
        duration.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Cells.SharedPhotoVideoCell2.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                SharedPhotoVideoCell2 sharedPhotoVideoCell2 = SharedPhotoVideoCell2.this;
                sharedPhotoVideoCell2.currentMessageObject.isMediaSpoilersRevealedInSharedMedia = true;
                sharedPhotoVideoCell2.invalidate();
            }
        });
        duration.start();
    }

    public void updateViews() {
        MessageObject messageObject;
        TL_stories$StoryItem tL_stories$StoryItem;
        TL_stories$StoryViews tL_stories$StoryViews;
        if (!this.isStory || (messageObject = this.currentMessageObject) == null || (tL_stories$StoryItem = messageObject.storyItem) == null || (tL_stories$StoryViews = tL_stories$StoryItem.views) == null) {
            this.drawViews = false;
            this.viewsText.setText("", false);
        } else {
            int i = tL_stories$StoryViews.views_count;
            this.drawViews = i > 0;
            this.viewsText.setText(AndroidUtilities.formatWholeNumber(i, 0), true);
        }
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return this.viewsText == drawable || super.verifyDrawable(drawable);
    }

    public boolean viewsOnLeft(float f) {
        int width;
        if (!this.isStory || this.currentParentColumnsCount >= 5) {
            return false;
        }
        int iDp = AndroidUtilities.dp(26.0f) + ((int) this.viewsText.getCurrentWidth());
        if (this.showVideoLayout) {
            int iDp2 = AndroidUtilities.dp(8.0f);
            StaticLayout staticLayout = this.videoInfoLayot;
            width = iDp2 + (staticLayout != null ? staticLayout.getWidth() : 0) + (this.drawVideoIcon ? AndroidUtilities.dp(10.0f) : 0);
        } else {
            width = 0;
        }
        return ((float) ((iDp + ((iDp <= 0 || width <= 0) ? 0 : AndroidUtilities.dp(8.0f))) + width)) > f;
    }
}
