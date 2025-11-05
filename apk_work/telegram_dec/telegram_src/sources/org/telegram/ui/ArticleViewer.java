package org.telegram.ui;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.IntEvaluator;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Point;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Looper;
import android.text.Editable;
import android.text.Layout;
import android.text.Spannable;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.style.MetricAffectingSpan;
import android.text.style.URLSpan;
import android.util.Property;
import android.util.SparseArray;
import android.view.DisplayCutout;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.Surface;
import android.view.SurfaceView;
import android.view.TextureView;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.DecelerateInterpolator;
import android.webkit.CookieManager;
import android.webkit.JavascriptInterface;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebBackForwardList;
import android.webkit.WebChromeClient;
import android.webkit.WebHistoryItem;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import android.widget.Toast;
import androidx.collection.LongSparseArray;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.ColorUtils;
import androidx.core.util.Consumer;
import androidx.core.view.WindowInsetsCompat$$ExternalSyntheticApiModelOutline0;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.GridLayoutManagerFixed;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.google.android.exoplayer2.ui.AspectRatioFrameLayout;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import java.io.File;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import org.json.JSONObject;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.AnimationNotificationsLocker;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.DownloadController;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.FileStreamLoadOperation;
import org.telegram.messenger.ImageLoader;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LiteMode;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaController;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.MessagesStorage;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.R;
import org.telegram.messenger.SendMessagesHelper;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.WebFile;
import org.telegram.messenger.browser.Browser;
import org.telegram.messenger.video.VideoPlayerHolderBase;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.ActionBar.ActionBar;
import org.telegram.ui.ActionBar.ActionBarLayout;
import org.telegram.ui.ActionBar.ActionBarMenuSubItem;
import org.telegram.ui.ActionBar.ActionBarPopupWindow;
import org.telegram.ui.ActionBar.AlertDialog;
import org.telegram.ui.ActionBar.BackDrawable;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.BottomSheet;
import org.telegram.ui.ActionBar.BottomSheetTabDialog;
import org.telegram.ui.ActionBar.BottomSheetTabs;
import org.telegram.ui.ActionBar.BottomSheetTabsOverlay;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Cells.CheckBoxCell;
import org.telegram.ui.Cells.HeaderCell;
import org.telegram.ui.Cells.TextSelectionHelper;
import org.telegram.ui.Components.AlertsCreator;
import org.telegram.ui.Components.AnchorSpan;
import org.telegram.ui.Components.AnimatedArrowDrawable;
import org.telegram.ui.Components.AnimatedColor;
import org.telegram.ui.Components.AnimatedFloat;
import org.telegram.ui.Components.AnimatedTextView;
import org.telegram.ui.Components.AnimationProperties;
import org.telegram.ui.Components.AvatarDrawable;
import org.telegram.ui.Components.BackupImageView;
import org.telegram.ui.Components.BulletinFactory;
import org.telegram.ui.Components.CombinedDrawable;
import org.telegram.ui.Components.ContextProgressView;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.EditTextBoldCursor;
import org.telegram.ui.Components.ItemOptions;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.LineProgressView;
import org.telegram.ui.Components.LinkPath;
import org.telegram.ui.Components.LinkSpanDrawable;
import org.telegram.ui.Components.LoadingDrawable;
import org.telegram.ui.Components.RadialProgress2;
import org.telegram.ui.Components.RadioButton;
import org.telegram.ui.Components.RecyclerListView;
import org.telegram.ui.Components.SeekBar;
import org.telegram.ui.Components.SeekBarView;
import org.telegram.ui.Components.ShareAlert;
import org.telegram.ui.Components.SizeNotifierFrameLayout;
import org.telegram.ui.Components.SmoothScroller;
import org.telegram.ui.Components.StaticLayoutEx;
import org.telegram.ui.Components.TableLayout;
import org.telegram.ui.Components.TextPaintImageReceiverSpan;
import org.telegram.ui.Components.TextPaintMarkSpan;
import org.telegram.ui.Components.TextPaintSpan;
import org.telegram.ui.Components.TextPaintUrlSpan;
import org.telegram.ui.Components.TextPaintWebpageUrlSpan;
import org.telegram.ui.Components.TranslateAlert2;
import org.telegram.ui.Components.TypefaceSpan;
import org.telegram.ui.Components.VideoPlayer;
import org.telegram.ui.Components.WebPlayerView;
import org.telegram.ui.PhotoViewer;
import org.telegram.ui.PinchToZoomHelper;
import org.telegram.ui.Stories.DarkThemeResourceProvider;
import org.telegram.ui.Stories.recorder.ButtonWithCounterView;
import org.telegram.ui.Stories.recorder.HintView2;
import org.telegram.ui.Stories.recorder.KeyboardNotifier;
import org.telegram.ui.bots.BotSensors;
import org.telegram.ui.bots.ChatAttachAlertBotWebViewLayout;
import org.telegram.ui.web.AddressBarList;
import org.telegram.ui.web.BookmarksFragment;
import org.telegram.ui.web.BotWebViewContainer;
import org.telegram.ui.web.BrowserHistory;
import org.telegram.ui.web.HistoryFragment;
import org.telegram.ui.web.RestrictedDomainsList;
import org.telegram.ui.web.SearchEngine;
import org.telegram.ui.web.WebActionBar;
import org.telegram.ui.web.WebBrowserSettings;
import org.telegram.ui.web.WebInstantView;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes4.dex */
public class ArticleViewer implements NotificationCenter.NotificationCenterDelegate {
    private static volatile ArticleViewer Instance;
    private static TextPaint channelNamePaint;
    private static TextPaint channelNamePhotoPaint;
    private static Paint dividerPaint;
    private static Paint dotsPaint;
    private static TextPaint embedPostAuthorPaint;
    private static TextPaint embedPostDatePaint;
    private static TextPaint errorTextPaint;
    private static TextPaint listTextNumPaint;
    private static TextPaint listTextPointerPaint;
    private static Paint photoBackgroundPaint;
    private static Paint preformattedBackgroundPaint;
    private static Paint quoteLinePaint;
    private static TextPaint relatedArticleHeaderPaint;
    private static TextPaint relatedArticleTextPaint;
    private static Paint tableHalfLinePaint;
    private static Paint tableHeaderPaint;
    private static Paint tableLinePaint;
    private static Paint tableStripPaint;
    private static Paint urlPaint;
    private static Paint webpageMarkPaint;
    private static Paint webpageSearchPaint;
    private static Paint webpageUrlPaint;
    private final String BOTTOM_SHEET_VIEW_TAG;
    private WebActionBar actionBar;
    private AddressBarList addressBarList;
    private int anchorsOffsetMeasuredWidth;
    private Runnable animationEndRunnable;
    private int animationInProgress;
    private boolean attachedToWindow;
    private Paint backgroundPaint;
    private FrameLayout bulletinContainer;
    private Drawable chat_redLocationIcon;
    private boolean checkingForLongPress;
    private boolean closeAnimationInProgress;
    private boolean collapsed;
    private FrameLayout containerView;
    private ArrayList createdWebViews;
    private int currentAccount;
    private int currentHeaderHeight;
    BlockVideoCell currentPlayer;
    private WebPlayerView currentPlayingVideo;
    private int currentSearchIndex;
    private View customView;
    private WebChromeClient.CustomViewCallback customViewCallback;
    private TextView deleteView;
    private boolean drawBlockSelection;
    private FontCell[] fontCells;
    private AspectRatioFrameLayout fullscreenAspectRatioView;
    private TextureView fullscreenTextureView;
    private FrameLayout fullscreenVideoContainer;
    private WebPlayerView fullscreenedVideo;
    private boolean hasCutout;
    private Paint headerPaint;
    private Paint headerProgressPaint;
    private DecelerateInterpolator interpolator;
    public final boolean isSheet;
    private boolean isVisible;
    private boolean keyboardVisible;
    private int lastBlockNum;
    private Object lastInsets;
    private int lastReqId;
    private int lastSearchIndex;
    private Drawable layerShadowDrawable;
    private Runnable lineProgressTickRunnable;
    private BottomSheet linkSheet;
    private LinkSpanDrawable.LinkCollector links;
    private TLRPC.Chat loadedChannel;
    private boolean loadingChannel;
    private TextPaintUrlSpan loadingLink;
    private LoadingDrawable loadingLinkDrawable;
    private View loadingLinkView;
    private Browser.Progress loadingProgress;
    private DrawingText loadingText;
    private Paint navigationBarPaint;
    private final AnimationNotificationsLocker notificationsLocker;
    private int openUrlReqId;
    private final AnimatedColor page0Background;
    private final AnimatedColor page1Background;
    private AnimatorSet pageSwitchAnimation;
    public PageLayout[] pages;
    public final ArrayList pagesStack;
    private Activity parentActivity;
    private BaseFragment parentFragment;
    private CheckForLongPress pendingCheckForLongPress;
    private CheckForTap pendingCheckForTap;
    PinchToZoomHelper pinchToZoomHelper;
    private ActionBarPopupWindow.ActionBarPopupWindowLayout popupLayout;
    private Rect popupRect;
    private ActionBarPopupWindow popupWindow;
    private int pressCount;
    private int pressedLayoutY;
    private LinkSpanDrawable pressedLink;
    private DrawingText pressedLinkOwnerLayout;
    private View pressedLinkOwnerView;
    private int previewsReqId;
    private ContextProgressView progressView;
    private AnimatorSet progressViewAnimation;
    private AnimatorSet runAfterKeyboardClose;
    private Paint scrimPaint;
    private AnimatedTextView searchCountText;
    private ImageView searchDownButton;
    private FrameLayout searchPanel;
    private float searchPanelAlpha;
    private ValueAnimator searchPanelAnimator;
    private float searchPanelTranslation;
    private ArrayList searchResults;
    private Runnable searchRunnable;
    private String searchText;
    private ImageView searchUpButton;
    private int selectedFont;
    public final Sheet sheet;
    private boolean showRestrictedToastOnResume;
    private Drawable slideDotBigDrawable;
    private Drawable slideDotDrawable;
    private Paint statusBarPaint;
    TextSelectionHelper.ArticleTextSelectionHelper textSelectionHelper;
    TextSelectionHelper.ArticleTextSelectionHelper textSelectionHelperBottomSheet;
    private long transitionAnimationStartTime;
    private LinkPath urlPath;
    VideoPlayerHolderBase videoPlayer;
    private LongSparseArray videoStates;
    private Dialog visibleDialog;
    private WindowManager.LayoutParams windowLayoutParams;
    private WindowView windowView;
    public static final Property ARTICLE_VIEWER_INNER_TRANSLATION_X = new AnimationProperties.FloatProperty("innerTranslationX") { // from class: org.telegram.ui.ArticleViewer.1
        @Override // android.util.Property
        public Float get(WindowView windowView) {
            return Float.valueOf(windowView.getInnerTranslationX());
        }

        @Override // org.telegram.ui.Components.AnimationProperties.FloatProperty
        public void setValue(WindowView windowView, float f) {
            windowView.setInnerTranslationX(f);
        }
    };
    private static final TextPaint audioTimePaint = new TextPaint(1);
    private static final SparseArray photoCaptionTextPaints = new SparseArray();
    private static final SparseArray photoCreditTextPaints = new SparseArray();
    private static final SparseArray titleTextPaints = new SparseArray();
    private static final SparseArray kickerTextPaints = new SparseArray();
    private static final SparseArray headerTextPaints = new SparseArray();
    private static final SparseArray subtitleTextPaints = new SparseArray();
    private static final SparseArray subheaderTextPaints = new SparseArray();
    private static final SparseArray authorTextPaints = new SparseArray();
    private static final SparseArray footerTextPaints = new SparseArray();
    private static final SparseArray paragraphTextPaints = new SparseArray();
    private static final SparseArray listTextPaints = new SparseArray();
    private static final SparseArray preformattedTextPaints = new SparseArray();
    private static final SparseArray quoteTextPaints = new SparseArray();
    private static final SparseArray embedPostTextPaints = new SparseArray();
    private static final SparseArray embedPostCaptionTextPaints = new SparseArray();
    private static final SparseArray mediaCaptionTextPaints = new SparseArray();
    private static final SparseArray mediaCreditTextPaints = new SparseArray();
    private static final SparseArray relatedArticleTextPaints = new SparseArray();
    private static final SparseArray detailsTextPaints = new SparseArray();
    private static final SparseArray tableTextPaints = new SparseArray();

    /* renamed from: org.telegram.ui.ArticleViewer$23, reason: invalid class name */
    class AnonymousClass23 extends AnimatorListenerAdapter {
        AnonymousClass23() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onAnimationEnd$0() {
            ArticleViewer.this.notificationsLocker.unlock();
            if (ArticleViewer.this.animationEndRunnable != null) {
                ArticleViewer.this.animationEndRunnable.run();
                ArticleViewer.this.animationEndRunnable = null;
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ArticleViewer$23$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onAnimationEnd$0();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class BlockAudioCell extends View implements DownloadController.FileDownloadProgressListener, TextSelectionHelper.ArticleSelectableView {
        private int TAG;
        private int buttonPressed;
        private int buttonState;
        private int buttonX;
        private int buttonY;
        private DrawingText captionLayout;
        private DrawingText creditLayout;
        private int creditOffset;
        private TLRPC.TL_pageBlockAudio currentBlock;
        private TLRPC.Document currentDocument;
        private MessageObject currentMessageObject;
        private StaticLayout durationLayout;
        private boolean isFirst;
        private String lastTimeString;
        private WebpageAdapter parentAdapter;
        private RadialProgress2 radialProgress;
        private SeekBar seekBar;
        private int seekBarX;
        private int seekBarY;
        private int textX;
        private int textY;
        private DrawingText titleLayout;

        public BlockAudioCell(Context context, WebpageAdapter webpageAdapter) {
            super(context);
            this.textY = AndroidUtilities.dp(58.0f);
            this.parentAdapter = webpageAdapter;
            RadialProgress2 radialProgress2 = new RadialProgress2(this);
            this.radialProgress = radialProgress2;
            radialProgress2.setCircleRadius(AndroidUtilities.dp(24.0f));
            this.TAG = DownloadController.getInstance(ArticleViewer.this.currentAccount).generateObserverTag();
            SeekBar seekBar = new SeekBar(this);
            this.seekBar = seekBar;
            seekBar.setDelegate(new SeekBar.SeekBarDelegate() { // from class: org.telegram.ui.ArticleViewer$BlockAudioCell$$ExternalSyntheticLambda0
                @Override // org.telegram.ui.Components.SeekBar.SeekBarDelegate
                public /* synthetic */ boolean isSeekBarDragAllowed() {
                    return SeekBar.SeekBarDelegate.CC.$default$isSeekBarDragAllowed(this);
                }

                @Override // org.telegram.ui.Components.SeekBar.SeekBarDelegate
                public /* synthetic */ void onSeekBarContinuousDrag(float f) {
                    SeekBar.SeekBarDelegate.CC.$default$onSeekBarContinuousDrag(this, f);
                }

                @Override // org.telegram.ui.Components.SeekBar.SeekBarDelegate
                public final void onSeekBarDrag(float f) {
                    this.f$0.lambda$new$0(f);
                }

                @Override // org.telegram.ui.Components.SeekBar.SeekBarDelegate
                public /* synthetic */ void onSeekBarPressed() {
                    SeekBar.SeekBarDelegate.CC.$default$onSeekBarPressed(this);
                }

                @Override // org.telegram.ui.Components.SeekBar.SeekBarDelegate
                public /* synthetic */ void onSeekBarReleased() {
                    SeekBar.SeekBarDelegate.CC.$default$onSeekBarReleased(this);
                }

                @Override // org.telegram.ui.Components.SeekBar.SeekBarDelegate
                public /* synthetic */ boolean reverseWaveform() {
                    return SeekBar.SeekBarDelegate.CC.$default$reverseWaveform(this);
                }
            });
        }

        private void didPressedButton(boolean z) {
            int i = this.buttonState;
            if (i == 0) {
                if (!MediaController.getInstance().setPlaylist(this.parentAdapter.audioMessages, this.currentMessageObject, 0L, false, null)) {
                    return;
                } else {
                    this.buttonState = 1;
                }
            } else if (i == 1) {
                if (!MediaController.getInstance().lambda$startAudioAgain$7(this.currentMessageObject)) {
                    return;
                } else {
                    this.buttonState = 0;
                }
            } else {
                if (i == 2) {
                    this.radialProgress.setProgress(BitmapDescriptorFactory.HUE_RED, false);
                    FileLoader.getInstance(ArticleViewer.this.currentAccount).loadFile(this.currentDocument, this.parentAdapter.currentPage, 1, 1);
                    this.buttonState = 3;
                    this.radialProgress.setIcon(getIconForCurrentState(), true, z);
                    invalidate();
                }
                if (i != 3) {
                    return;
                }
                FileLoader.getInstance(ArticleViewer.this.currentAccount).cancelLoadFile(this.currentDocument);
                this.buttonState = 2;
            }
            this.radialProgress.setIcon(getIconForCurrentState(), false, z);
            invalidate();
        }

        private int getIconForCurrentState() {
            int i = this.buttonState;
            if (i == 1) {
                return 1;
            }
            if (i == 2) {
                return 2;
            }
            return i == 3 ? 3 : 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0(float f) {
            MessageObject messageObject = this.currentMessageObject;
            if (messageObject == null) {
                return;
            }
            messageObject.audioProgress = f;
            MediaController.getInstance().seekToProgress(this.currentMessageObject, f);
        }

        @Override // org.telegram.ui.Cells.TextSelectionHelper.ArticleSelectableView
        public void fillTextLayoutBlocks(ArrayList arrayList) {
            DrawingText drawingText = this.titleLayout;
            if (drawingText != null) {
                arrayList.add(drawingText);
            }
            DrawingText drawingText2 = this.captionLayout;
            if (drawingText2 != null) {
                arrayList.add(drawingText2);
            }
            DrawingText drawingText3 = this.creditLayout;
            if (drawingText3 != null) {
                arrayList.add(drawingText3);
            }
        }

        public MessageObject getMessageObject() {
            return this.currentMessageObject;
        }

        @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
        public int getObserverTag() {
            return this.TAG;
        }

        @Override // android.view.View
        protected void onAttachedToWindow() {
            super.onAttachedToWindow();
            updateButtonState(false);
        }

        @Override // android.view.View
        protected void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            DownloadController.getInstance(ArticleViewer.this.currentAccount).removeLoadingFileObserver(this);
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            int i;
            if (this.currentBlock == null) {
                return;
            }
            this.radialProgress.setColorKeys(Theme.key_chat_inLoader, Theme.key_chat_inLoaderSelected, Theme.key_chat_inMediaIcon, Theme.key_chat_inMediaIconSelected);
            this.radialProgress.setProgressColor(ArticleViewer.this.getThemedColor(Theme.key_chat_inFileProgress));
            this.radialProgress.draw(canvas);
            canvas.save();
            canvas.translate(this.seekBarX, this.seekBarY);
            this.seekBar.draw(canvas);
            canvas.restore();
            if (this.durationLayout != null) {
                canvas.save();
                canvas.translate(this.buttonX + AndroidUtilities.dp(54.0f), this.seekBarY + AndroidUtilities.dp(6.0f));
                this.durationLayout.draw(canvas);
                canvas.restore();
            }
            if (this.titleLayout != null) {
                canvas.save();
                this.titleLayout.x = this.buttonX + AndroidUtilities.dp(54.0f);
                this.titleLayout.y = this.seekBarY - AndroidUtilities.dp(16.0f);
                DrawingText drawingText = this.titleLayout;
                canvas.translate(drawingText.x, drawingText.y);
                ArticleViewer.this.drawTextSelection(canvas, this, 0);
                this.titleLayout.draw(canvas, this);
                canvas.restore();
                i = 1;
            } else {
                i = 0;
            }
            if (this.captionLayout != null) {
                canvas.save();
                DrawingText drawingText2 = this.captionLayout;
                int i2 = this.textX;
                drawingText2.x = i2;
                int i3 = this.textY;
                drawingText2.y = i3;
                canvas.translate(i2, i3);
                ArticleViewer.this.drawTextSelection(canvas, this, i);
                this.captionLayout.draw(canvas, this);
                canvas.restore();
                i++;
            }
            if (this.creditLayout != null) {
                canvas.save();
                DrawingText drawingText3 = this.creditLayout;
                int i4 = this.textX;
                drawingText3.x = i4;
                int i5 = this.textY + this.creditOffset;
                drawingText3.y = i5;
                canvas.translate(i4, i5);
                ArticleViewer.this.drawTextSelection(canvas, this, i);
                this.creditLayout.draw(canvas, this);
                canvas.restore();
            }
            if (this.currentBlock.level > 0) {
                canvas.drawRect(AndroidUtilities.dp(18.0f), BitmapDescriptorFactory.HUE_RED, AndroidUtilities.dp(20.0f), getMeasuredHeight() - (this.currentBlock.bottom ? AndroidUtilities.dp(6.0f) : 0), ArticleViewer.quoteLinePaint);
            }
        }

        @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
        public void onFailedDownload(String str, boolean z) {
            updateButtonState(true);
        }

        @Override // android.view.View
        protected void onMeasure(int i, int i2) {
            int iDp;
            int i3 = 1;
            int size = View.MeasureSpec.getSize(i);
            int iDp2 = AndroidUtilities.dp(54.0f);
            TLRPC.TL_pageBlockAudio tL_pageBlockAudio = this.currentBlock;
            if (tL_pageBlockAudio != null) {
                this.textX = tL_pageBlockAudio.level > 0 ? AndroidUtilities.dp(r0 * 14) + AndroidUtilities.dp(18.0f) : AndroidUtilities.dp(18.0f);
                int iDp3 = (size - this.textX) - AndroidUtilities.dp(18.0f);
                int iDp4 = AndroidUtilities.dp(44.0f);
                this.buttonX = AndroidUtilities.dp(16.0f);
                int iDp5 = AndroidUtilities.dp(5.0f);
                this.buttonY = iDp5;
                RadialProgress2 radialProgress2 = this.radialProgress;
                int i4 = this.buttonX;
                radialProgress2.setProgressRect(i4, iDp5, i4 + iDp4, iDp5 + iDp4);
                ArticleViewer articleViewer = ArticleViewer.this;
                TLRPC.TL_pageBlockAudio tL_pageBlockAudio2 = this.currentBlock;
                DrawingText drawingTextCreateLayoutForText = articleViewer.createLayoutForText(this, null, tL_pageBlockAudio2.caption.text, iDp3, this.textY, tL_pageBlockAudio2, this.parentAdapter);
                this.captionLayout = drawingTextCreateLayoutForText;
                if (drawingTextCreateLayoutForText != null) {
                    int iDp6 = AndroidUtilities.dp(8.0f) + this.captionLayout.getHeight();
                    this.creditOffset = iDp6;
                    iDp2 += iDp6 + AndroidUtilities.dp(8.0f);
                }
                int iDp7 = iDp2;
                ArticleViewer articleViewer2 = ArticleViewer.this;
                TLRPC.TL_pageBlockAudio tL_pageBlockAudio3 = this.currentBlock;
                DrawingText drawingTextCreateLayoutForText2 = articleViewer2.createLayoutForText(this, null, tL_pageBlockAudio3.caption.credit, iDp3, this.textY + this.creditOffset, tL_pageBlockAudio3, this.parentAdapter.isRtl ? StaticLayoutEx.ALIGN_RIGHT() : Layout.Alignment.ALIGN_NORMAL, this.parentAdapter);
                this.creditLayout = drawingTextCreateLayoutForText2;
                if (drawingTextCreateLayoutForText2 != null) {
                    iDp7 += AndroidUtilities.dp(4.0f) + this.creditLayout.getHeight();
                }
                if (!this.isFirst && this.currentBlock.level <= 0) {
                    iDp7 += AndroidUtilities.dp(8.0f);
                }
                String musicAuthor = this.currentMessageObject.getMusicAuthor(false);
                String musicTitle = this.currentMessageObject.getMusicTitle(false);
                int iDp8 = this.buttonX + AndroidUtilities.dp(50.0f) + iDp4;
                this.seekBarX = iDp8;
                int iDp9 = (size - iDp8) - AndroidUtilities.dp(18.0f);
                if (TextUtils.isEmpty(musicTitle) && TextUtils.isEmpty(musicAuthor)) {
                    this.titleLayout = null;
                    iDp = this.buttonY + ((iDp4 - AndroidUtilities.dp(30.0f)) / 2);
                } else {
                    SpannableStringBuilder spannableStringBuilder = (TextUtils.isEmpty(musicTitle) || TextUtils.isEmpty(musicAuthor)) ? !TextUtils.isEmpty(musicTitle) ? new SpannableStringBuilder(musicTitle) : new SpannableStringBuilder(musicAuthor) : new SpannableStringBuilder(String.format("%s - %s", musicAuthor, musicTitle));
                    if (!TextUtils.isEmpty(musicAuthor)) {
                        spannableStringBuilder.setSpan(new TypefaceSpan(AndroidUtilities.bold()), 0, musicAuthor.length(), 18);
                    }
                    CharSequence charSequenceEllipsize = TextUtils.ellipsize(spannableStringBuilder, Theme.chat_audioTitlePaint, iDp9, TextUtils.TruncateAt.END);
                    DrawingText drawingText = ArticleViewer.this.new DrawingText();
                    this.titleLayout = drawingText;
                    drawingText.textLayout = new StaticLayout(charSequenceEllipsize, ArticleViewer.audioTimePaint, iDp9, Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
                    this.titleLayout.parentBlock = this.currentBlock;
                    iDp = this.buttonY + ((iDp4 - AndroidUtilities.dp(30.0f)) / 2) + AndroidUtilities.dp(11.0f);
                }
                this.seekBarY = iDp;
                this.seekBar.setSize(iDp9, AndroidUtilities.dp(30.0f));
                i3 = iDp7;
            }
            setMeasuredDimension(size, i3);
            updatePlayingMessageProgress();
        }

        @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
        public void onProgressDownload(String str, long j, long j2) {
            this.radialProgress.setProgress(Math.min(1.0f, j / j2), true);
            if (this.buttonState != 3) {
                updateButtonState(true);
            }
        }

        @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
        public void onProgressUpload(String str, long j, long j2, boolean z) {
        }

        @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
        public void onSuccessDownload(String str) {
            this.radialProgress.setProgress(1.0f, true);
            updateButtonState(true);
        }

        /* JADX WARN: Code restructure failed: missing block: B:22:0x0068, code lost:
        
            if (r12.buttonState == 0) goto L23;
         */
        /* JADX WARN: Removed duplicated region for block: B:21:0x0066  */
        @Override // android.view.View
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public boolean onTouchEvent(MotionEvent motionEvent) {
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            if (this.seekBar.onTouch(motionEvent.getAction(), motionEvent.getX() - this.seekBarX, motionEvent.getY() - this.seekBarY)) {
                if (motionEvent.getAction() == 0) {
                    getParent().requestDisallowInterceptTouchEvent(true);
                }
                invalidate();
                return true;
            }
            if (motionEvent.getAction() == 0) {
                if (this.buttonState != -1) {
                    if (x >= this.buttonX && x <= r2 + AndroidUtilities.dp(48.0f)) {
                        if (y < this.buttonY || y > r0 + AndroidUtilities.dp(48.0f)) {
                        }
                        this.buttonPressed = 1;
                        invalidate();
                    }
                }
            } else if (motionEvent.getAction() == 1) {
                if (this.buttonPressed == 1) {
                    this.buttonPressed = 0;
                    playSoundEffect(0);
                    didPressedButton(true);
                    invalidate();
                }
            } else if (motionEvent.getAction() == 3) {
                this.buttonPressed = 0;
            }
            return this.buttonPressed != 0 || ArticleViewer.this.checkLayoutForLinks(this.parentAdapter, motionEvent, this, this.captionLayout, this.textX, this.textY) || ArticleViewer.this.checkLayoutForLinks(this.parentAdapter, motionEvent, this, this.creditLayout, this.textX, this.textY + this.creditOffset) || super.onTouchEvent(motionEvent);
        }

        public void setBlock(TLRPC.TL_pageBlockAudio tL_pageBlockAudio, boolean z, boolean z2) {
            this.currentBlock = tL_pageBlockAudio;
            MessageObject messageObject = (MessageObject) this.parentAdapter.audioBlocks.get(this.currentBlock);
            this.currentMessageObject = messageObject;
            if (messageObject != null) {
                this.currentDocument = messageObject.getDocument();
            }
            this.isFirst = z;
            SeekBar seekBar = this.seekBar;
            int themedColor = ArticleViewer.this.getThemedColor(Theme.key_chat_inAudioSeekbar);
            int themedColor2 = ArticleViewer.this.getThemedColor(Theme.key_chat_inAudioCacheSeekbar);
            ArticleViewer articleViewer = ArticleViewer.this;
            int i = Theme.key_chat_inAudioSeekbarFill;
            seekBar.setColors(themedColor, themedColor2, articleViewer.getThemedColor(i), ArticleViewer.this.getThemedColor(i), ArticleViewer.this.getThemedColor(Theme.key_chat_inAudioSeekbarSelected));
            updateButtonState(false);
            requestLayout();
        }

        public void updateButtonState(boolean z) {
            String attachFileName = FileLoader.getAttachFileName(this.currentDocument);
            boolean zExists = FileLoader.getInstance(ArticleViewer.this.currentAccount).getPathToAttach(this.currentDocument, true).exists();
            if (TextUtils.isEmpty(attachFileName)) {
                this.radialProgress.setIcon(4, false, false);
                return;
            }
            if (zExists) {
                DownloadController.getInstance(ArticleViewer.this.currentAccount).removeLoadingFileObserver(this);
                boolean zIsPlayingMessage = MediaController.getInstance().isPlayingMessage(this.currentMessageObject);
                if (!zIsPlayingMessage || (zIsPlayingMessage && MediaController.getInstance().isMessagePaused())) {
                    this.buttonState = 0;
                } else {
                    this.buttonState = 1;
                }
            } else {
                DownloadController.getInstance(ArticleViewer.this.currentAccount).addLoadingFileObserver(attachFileName, null, this);
                if (FileLoader.getInstance(ArticleViewer.this.currentAccount).isLoadingFile(attachFileName)) {
                    this.buttonState = 3;
                    Float fileProgress = ImageLoader.getInstance().getFileProgress(attachFileName);
                    if (fileProgress != null) {
                        this.radialProgress.setProgress(fileProgress.floatValue(), z);
                    } else {
                        this.radialProgress.setProgress(BitmapDescriptorFactory.HUE_RED, z);
                    }
                    this.radialProgress.setIcon(getIconForCurrentState(), true, z);
                    updatePlayingMessageProgress();
                }
                this.buttonState = 2;
                this.radialProgress.setProgress(BitmapDescriptorFactory.HUE_RED, z);
            }
            this.radialProgress.setIcon(getIconForCurrentState(), false, z);
            updatePlayingMessageProgress();
        }

        public void updatePlayingMessageProgress() {
            int i;
            if (this.currentDocument == null || this.currentMessageObject == null) {
                return;
            }
            if (!this.seekBar.isDragging()) {
                this.seekBar.setProgress(this.currentMessageObject.audioProgress);
            }
            if (!MediaController.getInstance().isPlayingMessage(this.currentMessageObject)) {
                i = 0;
                int i2 = 0;
                while (true) {
                    if (i2 >= this.currentDocument.attributes.size()) {
                        break;
                    }
                    TLRPC.DocumentAttribute documentAttribute = this.currentDocument.attributes.get(i2);
                    if (documentAttribute instanceof TLRPC.TL_documentAttributeAudio) {
                        i = (int) documentAttribute.duration;
                        break;
                    }
                    i2++;
                }
            } else {
                i = this.currentMessageObject.audioProgressSec;
            }
            String shortDuration = AndroidUtilities.formatShortDuration(i);
            String str = this.lastTimeString;
            if (str == null || !str.equals(shortDuration)) {
                this.lastTimeString = shortDuration;
                ArticleViewer.audioTimePaint.setTextSize(AndroidUtilities.dp(16.0f));
                this.durationLayout = new StaticLayout(shortDuration, ArticleViewer.audioTimePaint, (int) Math.ceil(ArticleViewer.audioTimePaint.measureText(shortDuration)), Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
            }
            ArticleViewer.audioTimePaint.setColor(ArticleViewer.this.getTextColor());
            invalidate();
        }
    }

    private class BlockAuthorDateCell extends View implements TextSelectionHelper.ArticleSelectableView {
        private TLRPC.TL_pageBlockAuthorDate currentBlock;
        private WebpageAdapter parentAdapter;
        private DrawingText textLayout;
        private int textX;
        private int textY;

        public BlockAuthorDateCell(Context context, WebpageAdapter webpageAdapter) {
            super(context);
            this.textY = AndroidUtilities.dp(8.0f);
            this.parentAdapter = webpageAdapter;
        }

        @Override // org.telegram.ui.Cells.TextSelectionHelper.ArticleSelectableView
        public void fillTextLayoutBlocks(ArrayList arrayList) {
            DrawingText drawingText = this.textLayout;
            if (drawingText != null) {
                arrayList.add(drawingText);
            }
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            if (this.currentBlock == null || this.textLayout == null) {
                return;
            }
            canvas.save();
            canvas.translate(this.textX, this.textY);
            ArticleViewer.this.drawTextSelection(canvas, this);
            this.textLayout.draw(canvas, this);
            canvas.restore();
        }

        @Override // android.view.View
        public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            accessibilityNodeInfo.setEnabled(true);
            DrawingText drawingText = this.textLayout;
            if (drawingText == null) {
                return;
            }
            accessibilityNodeInfo.setText(drawingText.getText());
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r4v10 */
        /* JADX WARN: Type inference failed for: r4v11, types: [android.text.Spannable] */
        /* JADX WARN: Type inference failed for: r4v12 */
        /* JADX WARN: Type inference failed for: r4v16 */
        /* JADX WARN: Type inference failed for: r4v17 */
        /* JADX WARN: Type inference failed for: r4v18 */
        /* JADX WARN: Type inference failed for: r4v9, types: [java.lang.CharSequence] */
        /* JADX WARN: Type inference failed for: r5v5, types: [android.text.Spannable$Factory] */
        @Override // android.view.View
        protected void onMeasure(int i, int i2) {
            Spannable spannable;
            MetricAffectingSpan[] metricAffectingSpanArr;
            int iIndexOf;
            int i3 = 0;
            int size = View.MeasureSpec.getSize(i);
            TLRPC.TL_pageBlockAuthorDate tL_pageBlockAuthorDate = this.currentBlock;
            if (tL_pageBlockAuthorDate != null) {
                ArticleViewer articleViewer = ArticleViewer.this;
                WebpageAdapter webpageAdapter = this.parentAdapter;
                TLRPC.RichText richText = tL_pageBlockAuthorDate.author;
                CharSequence text = articleViewer.getText(webpageAdapter, this, richText, richText, tL_pageBlockAuthorDate, size);
                if (text instanceof Spannable) {
                    spannable = (Spannable) text;
                    metricAffectingSpanArr = (MetricAffectingSpan[]) spannable.getSpans(0, text.length(), MetricAffectingSpan.class);
                } else {
                    spannable = null;
                    metricAffectingSpanArr = null;
                }
                CharSequence string = (this.currentBlock.published_date == 0 || TextUtils.isEmpty(text)) ? !TextUtils.isEmpty(text) ? LocaleController.formatString("ArticleByAuthor", R.string.ArticleByAuthor, text) : LocaleController.getInstance().getChatFullDate().format(this.currentBlock.published_date * 1000) : LocaleController.formatString("ArticleDateByAuthor", R.string.ArticleDateByAuthor, LocaleController.getInstance().getChatFullDate().format(this.currentBlock.published_date * 1000), text);
                if (metricAffectingSpanArr != null) {
                    try {
                        if (metricAffectingSpanArr.length > 0 && (iIndexOf = TextUtils.indexOf((CharSequence) string, text)) != -1) {
                            string = Spannable.Factory.getInstance().newSpannable(string);
                            for (int i4 = 0; i4 < metricAffectingSpanArr.length; i4++) {
                                MetricAffectingSpan metricAffectingSpan = metricAffectingSpanArr[i4];
                                string.setSpan(metricAffectingSpan, spannable.getSpanStart(metricAffectingSpan) + iIndexOf, spannable.getSpanEnd(metricAffectingSpanArr[i4]) + iIndexOf, 33);
                            }
                        }
                    } catch (Exception e) {
                        FileLog.e(e);
                    }
                }
                DrawingText drawingTextCreateLayoutForText = ArticleViewer.this.createLayoutForText(this, string, null, size - AndroidUtilities.dp(36.0f), this.textY, this.currentBlock, this.parentAdapter);
                this.textLayout = drawingTextCreateLayoutForText;
                if (drawingTextCreateLayoutForText != null) {
                    int iDp = AndroidUtilities.dp(16.0f) + this.textLayout.getHeight();
                    this.textX = this.parentAdapter.isRtl ? (int) Math.floor(((size - this.textLayout.getLineLeft(0)) - this.textLayout.getLineWidth(0)) - AndroidUtilities.dp(16.0f)) : AndroidUtilities.dp(18.0f);
                    DrawingText drawingText = this.textLayout;
                    drawingText.x = this.textX;
                    drawingText.y = this.textY;
                    i3 = iDp;
                }
            } else {
                i3 = 1;
            }
            setMeasuredDimension(size, i3);
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            return ArticleViewer.this.checkLayoutForLinks(this.parentAdapter, motionEvent, this, this.textLayout, this.textX, this.textY) || super.onTouchEvent(motionEvent);
        }

        public void setBlock(TLRPC.TL_pageBlockAuthorDate tL_pageBlockAuthorDate) {
            this.currentBlock = tL_pageBlockAuthorDate;
            requestLayout();
        }
    }

    private class BlockBlockquoteCell extends View implements TextSelectionHelper.ArticleSelectableView {
        private TLRPC.TL_pageBlockBlockquote currentBlock;
        private WebpageAdapter parentAdapter;
        private DrawingText textLayout;
        private DrawingText textLayout2;
        private int textX;
        private int textY;
        private int textY2;

        public BlockBlockquoteCell(Context context, WebpageAdapter webpageAdapter) {
            super(context);
            this.textY = AndroidUtilities.dp(8.0f);
            this.parentAdapter = webpageAdapter;
        }

        @Override // org.telegram.ui.Cells.TextSelectionHelper.ArticleSelectableView
        public void fillTextLayoutBlocks(ArrayList arrayList) {
            DrawingText drawingText = this.textLayout;
            if (drawingText != null) {
                arrayList.add(drawingText);
            }
            DrawingText drawingText2 = this.textLayout2;
            if (drawingText2 != null) {
                arrayList.add(drawingText2);
            }
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            int i;
            float fDp;
            float fDp2;
            int iDp;
            if (this.currentBlock == null) {
                return;
            }
            if (this.textLayout != null) {
                canvas.save();
                canvas.translate(this.textX, this.textY);
                ArticleViewer.this.drawTextSelection(canvas, this, 0);
                this.textLayout.draw(canvas, this);
                canvas.restore();
                i = 1;
            } else {
                i = 0;
            }
            if (this.textLayout2 != null) {
                canvas.save();
                canvas.translate(this.textX, this.textY2);
                ArticleViewer.this.drawTextSelection(canvas, this, i);
                this.textLayout2.draw(canvas, this);
                canvas.restore();
            }
            if (this.parentAdapter.isRtl) {
                int measuredWidth = getMeasuredWidth() - AndroidUtilities.dp(20.0f);
                fDp = measuredWidth;
                fDp2 = AndroidUtilities.dp(6.0f);
                iDp = measuredWidth + AndroidUtilities.dp(2.0f);
            } else {
                fDp = AndroidUtilities.dp((this.currentBlock.level * 14) + 18);
                fDp2 = AndroidUtilities.dp(6.0f);
                iDp = AndroidUtilities.dp((this.currentBlock.level * 14) + 20);
            }
            canvas.drawRect(fDp, fDp2, iDp, getMeasuredHeight() - AndroidUtilities.dp(6.0f), ArticleViewer.quoteLinePaint);
            if (this.currentBlock.level > 0) {
                canvas.drawRect(AndroidUtilities.dp(18.0f), BitmapDescriptorFactory.HUE_RED, AndroidUtilities.dp(20.0f), getMeasuredHeight() - (this.currentBlock.bottom ? AndroidUtilities.dp(6.0f) : 0), ArticleViewer.quoteLinePaint);
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:25:0x00a0  */
        /* JADX WARN: Removed duplicated region for block: B:27:0x00ae  */
        /* JADX WARN: Removed duplicated region for block: B:30:0x00b7  */
        /* JADX WARN: Removed duplicated region for block: B:33:0x00c3  */
        @Override // android.view.View
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        protected void onMeasure(int i, int i2) {
            int iDp;
            int iDp2;
            float f;
            DrawingText drawingTextCreateLayoutForText;
            DrawingText drawingText;
            DrawingText drawingText2;
            int size = View.MeasureSpec.getSize(i);
            if (this.currentBlock != null) {
                int iDp3 = size - AndroidUtilities.dp(50.0f);
                if (this.currentBlock.level > 0) {
                    iDp3 -= AndroidUtilities.dp(r0 * 14);
                }
                ArticleViewer articleViewer = ArticleViewer.this;
                TLRPC.TL_pageBlockBlockquote tL_pageBlockBlockquote = this.currentBlock;
                DrawingText drawingTextCreateLayoutForText2 = articleViewer.createLayoutForText(this, null, tL_pageBlockBlockquote.text, iDp3, this.textY, tL_pageBlockBlockquote, this.parentAdapter);
                this.textLayout = drawingTextCreateLayoutForText2;
                iDp = drawingTextCreateLayoutForText2 != null ? AndroidUtilities.dp(8.0f) + this.textLayout.getHeight() : 0;
                if (this.currentBlock.level > 0) {
                    if (this.parentAdapter.isRtl) {
                        f = (this.currentBlock.level * 14) + 14;
                        iDp2 = AndroidUtilities.dp(f);
                        this.textX = iDp2;
                        int iDp4 = iDp + AndroidUtilities.dp(8.0f);
                        this.textY2 = iDp4;
                        ArticleViewer articleViewer2 = ArticleViewer.this;
                        TLRPC.TL_pageBlockBlockquote tL_pageBlockBlockquote2 = this.currentBlock;
                        drawingTextCreateLayoutForText = articleViewer2.createLayoutForText(this, null, tL_pageBlockBlockquote2.caption, iDp3, iDp4, tL_pageBlockBlockquote2, this.parentAdapter);
                        this.textLayout2 = drawingTextCreateLayoutForText;
                        if (drawingTextCreateLayoutForText != null) {
                            iDp += AndroidUtilities.dp(8.0f) + this.textLayout2.getHeight();
                        }
                        if (iDp != 0) {
                            iDp += AndroidUtilities.dp(8.0f);
                        }
                        drawingText = this.textLayout;
                        if (drawingText != null) {
                            drawingText.x = this.textX;
                            drawingText.y = this.textY;
                        }
                        drawingText2 = this.textLayout2;
                        if (drawingText2 != null) {
                            drawingText2.x = this.textX;
                            drawingText2.y = this.textY2;
                        }
                    } else {
                        iDp2 = AndroidUtilities.dp(this.currentBlock.level * 14) + AndroidUtilities.dp(32.0f);
                        this.textX = iDp2;
                        int iDp42 = iDp + AndroidUtilities.dp(8.0f);
                        this.textY2 = iDp42;
                        ArticleViewer articleViewer22 = ArticleViewer.this;
                        TLRPC.TL_pageBlockBlockquote tL_pageBlockBlockquote22 = this.currentBlock;
                        drawingTextCreateLayoutForText = articleViewer22.createLayoutForText(this, null, tL_pageBlockBlockquote22.caption, iDp3, iDp42, tL_pageBlockBlockquote22, this.parentAdapter);
                        this.textLayout2 = drawingTextCreateLayoutForText;
                        if (drawingTextCreateLayoutForText != null) {
                        }
                        if (iDp != 0) {
                        }
                        drawingText = this.textLayout;
                        if (drawingText != null) {
                        }
                        drawingText2 = this.textLayout2;
                        if (drawingText2 != null) {
                        }
                    }
                } else if (this.parentAdapter.isRtl) {
                    f = 14.0f;
                    iDp2 = AndroidUtilities.dp(f);
                    this.textX = iDp2;
                    int iDp422 = iDp + AndroidUtilities.dp(8.0f);
                    this.textY2 = iDp422;
                    ArticleViewer articleViewer222 = ArticleViewer.this;
                    TLRPC.TL_pageBlockBlockquote tL_pageBlockBlockquote222 = this.currentBlock;
                    drawingTextCreateLayoutForText = articleViewer222.createLayoutForText(this, null, tL_pageBlockBlockquote222.caption, iDp3, iDp422, tL_pageBlockBlockquote222, this.parentAdapter);
                    this.textLayout2 = drawingTextCreateLayoutForText;
                    if (drawingTextCreateLayoutForText != null) {
                    }
                    if (iDp != 0) {
                    }
                    drawingText = this.textLayout;
                    if (drawingText != null) {
                    }
                    drawingText2 = this.textLayout2;
                    if (drawingText2 != null) {
                    }
                } else {
                    iDp2 = AndroidUtilities.dp(32.0f);
                    this.textX = iDp2;
                    int iDp4222 = iDp + AndroidUtilities.dp(8.0f);
                    this.textY2 = iDp4222;
                    ArticleViewer articleViewer2222 = ArticleViewer.this;
                    TLRPC.TL_pageBlockBlockquote tL_pageBlockBlockquote2222 = this.currentBlock;
                    drawingTextCreateLayoutForText = articleViewer2222.createLayoutForText(this, null, tL_pageBlockBlockquote2222.caption, iDp3, iDp4222, tL_pageBlockBlockquote2222, this.parentAdapter);
                    this.textLayout2 = drawingTextCreateLayoutForText;
                    if (drawingTextCreateLayoutForText != null) {
                    }
                    if (iDp != 0) {
                    }
                    drawingText = this.textLayout;
                    if (drawingText != null) {
                    }
                    drawingText2 = this.textLayout2;
                    if (drawingText2 != null) {
                    }
                }
            } else {
                iDp = 1;
            }
            setMeasuredDimension(size, iDp);
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            return ArticleViewer.this.checkLayoutForLinks(this.parentAdapter, motionEvent, this, this.textLayout, this.textX, this.textY) || ArticleViewer.this.checkLayoutForLinks(this.parentAdapter, motionEvent, this, this.textLayout2, this.textX, this.textY2) || super.onTouchEvent(motionEvent);
        }

        public void setBlock(TLRPC.TL_pageBlockBlockquote tL_pageBlockBlockquote) {
            this.currentBlock = tL_pageBlockBlockquote;
            requestLayout();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class BlockChannelCell extends FrameLayout implements TextSelectionHelper.ArticleSelectableView {
        private Paint backgroundPaint;
        private int buttonWidth;
        private AnimatorSet currentAnimation;
        private TLRPC.TL_pageBlockChannel currentBlock;
        private int currentState;
        private int currentType;
        private ImageView imageView;
        private WebpageAdapter parentAdapter;
        private ContextProgressView progressView;
        private DrawingText textLayout;
        private TextView textView;
        private int textX;
        private int textX2;
        private int textY;

        public BlockChannelCell(Context context, WebpageAdapter webpageAdapter, int i) {
            super(context);
            this.textX = AndroidUtilities.dp(18.0f);
            this.textY = AndroidUtilities.dp(11.0f);
            this.parentAdapter = webpageAdapter;
            setWillNotDraw(false);
            this.backgroundPaint = new Paint();
            this.currentType = i;
            TextView textView = new TextView(context);
            this.textView = textView;
            textView.setTextSize(1, 14.0f);
            this.textView.setTypeface(AndroidUtilities.bold());
            this.textView.setText(LocaleController.getString(R.string.ChannelJoin));
            this.textView.setGravity(19);
            addView(this.textView, LayoutHelper.createFrame(-2, 39, 53));
            this.textView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ArticleViewer$BlockChannelCell$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$new$0(view);
                }
            });
            ImageView imageView = new ImageView(context);
            this.imageView = imageView;
            imageView.setImageResource(R.drawable.list_check);
            this.imageView.setScaleType(ImageView.ScaleType.CENTER);
            addView(this.imageView, LayoutHelper.createFrame(39, 39, 53));
            ContextProgressView contextProgressView = new ContextProgressView(context, 0);
            this.progressView = contextProgressView;
            addView(contextProgressView, LayoutHelper.createFrame(39, 39, 53));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0(View view) {
            if (this.currentState != 0) {
                return;
            }
            setState(1, true);
            ArticleViewer articleViewer = ArticleViewer.this;
            articleViewer.joinChannel(this, articleViewer.loadedChannel);
        }

        @Override // org.telegram.ui.Cells.TextSelectionHelper.ArticleSelectableView
        public void fillTextLayoutBlocks(ArrayList arrayList) {
            DrawingText drawingText = this.textLayout;
            if (drawingText != null) {
                arrayList.add(drawingText);
            }
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            if (this.currentBlock == null) {
                return;
            }
            canvas.drawRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), AndroidUtilities.dp(39.0f), this.backgroundPaint);
            DrawingText drawingText = this.textLayout;
            if (drawingText == null || drawingText.getLineCount() <= 0) {
                return;
            }
            canvas.save();
            canvas.translate(this.parentAdapter.isRtl ? (getMeasuredWidth() - this.textLayout.getLineWidth(0)) - this.textX : this.textX, this.textY);
            if (this.currentType == 0) {
                ArticleViewer.this.drawTextSelection(canvas, this);
            }
            this.textLayout.draw(canvas, this);
            canvas.restore();
        }

        @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
            this.imageView.layout((this.textX2 + (this.buttonWidth / 2)) - AndroidUtilities.dp(19.0f), 0, this.textX2 + (this.buttonWidth / 2) + AndroidUtilities.dp(20.0f), AndroidUtilities.dp(39.0f));
            this.progressView.layout((this.textX2 + (this.buttonWidth / 2)) - AndroidUtilities.dp(19.0f), 0, this.textX2 + (this.buttonWidth / 2) + AndroidUtilities.dp(20.0f), AndroidUtilities.dp(39.0f));
            TextView textView = this.textView;
            int i5 = this.textX2;
            textView.layout(i5, 0, textView.getMeasuredWidth() + i5, this.textView.getMeasuredHeight());
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            int size = View.MeasureSpec.getSize(i);
            setMeasuredDimension(size, AndroidUtilities.dp(48.0f));
            this.textView.measure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(39.0f), 1073741824));
            this.buttonWidth = this.textView.getMeasuredWidth();
            this.progressView.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(39.0f), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(39.0f), 1073741824));
            this.imageView.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(39.0f), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(39.0f), 1073741824));
            TLRPC.TL_pageBlockChannel tL_pageBlockChannel = this.currentBlock;
            if (tL_pageBlockChannel != null) {
                this.textLayout = ArticleViewer.this.createLayoutForText(this, tL_pageBlockChannel.channel.title, null, (size - AndroidUtilities.dp(52.0f)) - this.buttonWidth, this.textY, this.currentBlock, StaticLayoutEx.ALIGN_LEFT(), 1, this.parentAdapter);
                this.textX2 = this.parentAdapter.isRtl ? this.textX : (getMeasuredWidth() - this.textX) - this.buttonWidth;
                DrawingText drawingText = this.textLayout;
                if (drawingText != null) {
                    drawingText.x = this.textX;
                    drawingText.y = this.textY;
                }
            }
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            return this.currentType != 0 ? super.onTouchEvent(motionEvent) : ArticleViewer.this.checkLayoutForLinks(this.parentAdapter, motionEvent, this, this.textLayout, this.textX, this.textY) || super.onTouchEvent(motionEvent);
        }

        public void setBlock(TLRPC.TL_pageBlockChannel tL_pageBlockChannel) {
            int i;
            this.currentBlock = tL_pageBlockChannel;
            if (this.currentType == 0) {
                int themedColor = ArticleViewer.this.getThemedColor(Theme.key_switchTrack);
                int iRed = Color.red(themedColor);
                int iGreen = Color.green(themedColor);
                int iBlue = Color.blue(themedColor);
                this.textView.setTextColor(ArticleViewer.this.getLinkTextColor());
                this.backgroundPaint.setColor(Color.argb(34, iRed, iGreen, iBlue));
                this.imageView.setColorFilter(new PorterDuffColorFilter(ArticleViewer.this.getGrayTextColor(), PorterDuff.Mode.MULTIPLY));
            } else {
                this.textView.setTextColor(-1);
                this.backgroundPaint.setColor(2130706432);
                this.imageView.setColorFilter(new PorterDuffColorFilter(-1, PorterDuff.Mode.MULTIPLY));
            }
            TLRPC.Chat chat = MessagesController.getInstance(ArticleViewer.this.currentAccount).getChat(Long.valueOf(tL_pageBlockChannel.channel.id));
            if (chat == null || chat.min) {
                ArticleViewer.this.loadChannel(this, this.parentAdapter, tL_pageBlockChannel.channel);
                i = 1;
            } else {
                ArticleViewer.this.loadedChannel = chat;
                if (chat.left && !chat.kicked) {
                    setState(0, false);
                    requestLayout();
                }
                i = 4;
            }
            setState(i, false);
            requestLayout();
        }

        public void setState(int i, boolean z) {
            AnimatorSet animatorSet = this.currentAnimation;
            if (animatorSet != null) {
                animatorSet.cancel();
            }
            this.currentState = i;
            if (!z) {
                this.textView.setAlpha(i == 0 ? 1.0f : BitmapDescriptorFactory.HUE_RED);
                this.textView.setScaleX(i == 0 ? 1.0f : 0.1f);
                this.textView.setScaleY(i == 0 ? 1.0f : 0.1f);
                this.progressView.setAlpha(i == 1 ? 1.0f : BitmapDescriptorFactory.HUE_RED);
                this.progressView.setScaleX(i == 1 ? 1.0f : 0.1f);
                this.progressView.setScaleY(i == 1 ? 1.0f : 0.1f);
                this.imageView.setAlpha(i == 2 ? 1.0f : BitmapDescriptorFactory.HUE_RED);
                this.imageView.setScaleX(i == 2 ? 1.0f : 0.1f);
                this.imageView.setScaleY(i == 2 ? 1.0f : 0.1f);
                return;
            }
            AnimatorSet animatorSet2 = new AnimatorSet();
            this.currentAnimation = animatorSet2;
            TextView textView = this.textView;
            Property property = View.ALPHA;
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(textView, (Property<TextView, Float>) property, i == 0 ? 1.0f : BitmapDescriptorFactory.HUE_RED);
            TextView textView2 = this.textView;
            Property property2 = View.SCALE_X;
            ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(textView2, (Property<TextView, Float>) property2, i == 0 ? 1.0f : 0.1f);
            TextView textView3 = this.textView;
            Property property3 = View.SCALE_Y;
            animatorSet2.playTogether(objectAnimatorOfFloat, objectAnimatorOfFloat2, ObjectAnimator.ofFloat(textView3, (Property<TextView, Float>) property3, i == 0 ? 1.0f : 0.1f), ObjectAnimator.ofFloat(this.progressView, (Property<ContextProgressView, Float>) property, i == 1 ? 1.0f : BitmapDescriptorFactory.HUE_RED), ObjectAnimator.ofFloat(this.progressView, (Property<ContextProgressView, Float>) property2, i == 1 ? 1.0f : 0.1f), ObjectAnimator.ofFloat(this.progressView, (Property<ContextProgressView, Float>) property3, i == 1 ? 1.0f : 0.1f), ObjectAnimator.ofFloat(this.imageView, (Property<ImageView, Float>) property, i == 2 ? 1.0f : BitmapDescriptorFactory.HUE_RED), ObjectAnimator.ofFloat(this.imageView, (Property<ImageView, Float>) property2, i == 2 ? 1.0f : 0.1f), ObjectAnimator.ofFloat(this.imageView, (Property<ImageView, Float>) property3, i == 2 ? 1.0f : 0.1f));
            this.currentAnimation.setDuration(150L);
            this.currentAnimation.start();
        }
    }

    private class BlockCollageCell extends FrameLayout implements TextSelectionHelper.ArticleSelectableView {
        private DrawingText captionLayout;
        private DrawingText creditLayout;
        private int creditOffset;
        private TLRPC.TL_pageBlockCollage currentBlock;
        private GroupedMessages group;
        private boolean inLayout;
        private RecyclerView.Adapter innerAdapter;
        private RecyclerListView innerListView;
        private int listX;
        private WebpageAdapter parentAdapter;
        private int textX;
        private int textY;

        public class GroupedMessages {
            public boolean hasSibling;
            public ArrayList posArray = new ArrayList();
            public HashMap positions = new HashMap();
            private int maxSizeWidth = 1000;

            private class MessageGroupedLayoutAttempt {
                public float[] heights;
                public int[] lineCounts;

                public MessageGroupedLayoutAttempt(int i, int i2, float f, float f2) {
                    this.lineCounts = new int[]{i, i2};
                    this.heights = new float[]{f, f2};
                }

                public MessageGroupedLayoutAttempt(int i, int i2, int i3, float f, float f2, float f3) {
                    this.lineCounts = new int[]{i, i2, i3};
                    this.heights = new float[]{f, f2, f3};
                }

                public MessageGroupedLayoutAttempt(int i, int i2, int i3, int i4, float f, float f2, float f3, float f4) {
                    this.lineCounts = new int[]{i, i2, i3, i4};
                    this.heights = new float[]{f, f2, f3, f4};
                }
            }

            public GroupedMessages() {
            }

            private float multiHeight(float[] fArr, int i, int i2) {
                float f = BitmapDescriptorFactory.HUE_RED;
                while (i < i2) {
                    f += fArr[i];
                    i++;
                }
                return this.maxSizeWidth / f;
            }

            /* JADX WARN: Removed duplicated region for block: B:112:0x055d  */
            /* JADX WARN: Removed duplicated region for block: B:23:0x0085  */
            /* JADX WARN: Removed duplicated region for block: B:24:0x0087  */
            /* JADX WARN: Removed duplicated region for block: B:27:0x008c  */
            /* JADX WARN: Removed duplicated region for block: B:28:0x008f  */
            /* JADX WARN: Removed duplicated region for block: B:31:0x009c  */
            /* JADX WARN: Removed duplicated region for block: B:33:0x00a2  */
            /* JADX WARN: Removed duplicated region for block: B:39:0x00b8  */
            /* JADX WARN: Type inference failed for: r8v1 */
            /* JADX WARN: Type inference failed for: r8v20, types: [boolean, int] */
            /* JADX WARN: Type inference failed for: r8v24 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public void calculate() {
                int i;
                ?? r8;
                int i2;
                int i3;
                int i4;
                int i5;
                int i6;
                int i7;
                int i8;
                float f;
                int i9;
                int i10;
                float fMin;
                int i11;
                int i12;
                int i13;
                int i14;
                int i15;
                MessageObject.GroupedMessagePosition groupedMessagePosition;
                int i16;
                TLRPC.Document documentWithId;
                ArrayList<TLRPC.PhotoSize> arrayList;
                int photoSize;
                float f2;
                this.posArray.clear();
                this.positions.clear();
                int size = BlockCollageCell.this.currentBlock.items.size();
                if (size <= 1) {
                    return;
                }
                StringBuilder sb = new StringBuilder();
                this.hasSibling = false;
                int i17 = 0;
                boolean z = false;
                float f3 = 1.0f;
                while (i17 < size) {
                    TLObject tLObject = (TLObject) BlockCollageCell.this.currentBlock.items.get(i17);
                    if (tLObject instanceof TLRPC.TL_pageBlockPhoto) {
                        TLRPC.Photo photoWithId = BlockCollageCell.this.parentAdapter.getPhotoWithId(((TLRPC.TL_pageBlockPhoto) tLObject).photo_id);
                        if (photoWithId != null) {
                            arrayList = photoWithId.sizes;
                            photoSize = AndroidUtilities.getPhotoSize();
                            TLRPC.PhotoSize closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(arrayList, photoSize);
                            MessageObject.GroupedMessagePosition groupedMessagePosition2 = new MessageObject.GroupedMessagePosition();
                            groupedMessagePosition2.last = i17 != size + (-1);
                            float f4 = closestPhotoSizeWithSize != null ? 1.0f : closestPhotoSizeWithSize.w / closestPhotoSizeWithSize.h;
                            groupedMessagePosition2.aspectRatio = f4;
                            sb.append(f4 <= 1.2f ? "w" : f4 < 0.8f ? "n" : "q");
                            f2 = groupedMessagePosition2.aspectRatio;
                            f3 += f2;
                            if (f2 > 2.0f) {
                                z = true;
                            }
                            this.positions.put(tLObject, groupedMessagePosition2);
                            this.posArray.add(groupedMessagePosition2);
                        }
                    } else if ((tLObject instanceof TLRPC.TL_pageBlockVideo) && (documentWithId = BlockCollageCell.this.parentAdapter.getDocumentWithId(((TLRPC.TL_pageBlockVideo) tLObject).video_id)) != null) {
                        arrayList = documentWithId.thumbs;
                        photoSize = 90;
                        TLRPC.PhotoSize closestPhotoSizeWithSize2 = FileLoader.getClosestPhotoSizeWithSize(arrayList, photoSize);
                        MessageObject.GroupedMessagePosition groupedMessagePosition22 = new MessageObject.GroupedMessagePosition();
                        groupedMessagePosition22.last = i17 != size + (-1);
                        if (closestPhotoSizeWithSize2 != null) {
                        }
                        groupedMessagePosition22.aspectRatio = f4;
                        sb.append(f4 <= 1.2f ? "w" : f4 < 0.8f ? "n" : "q");
                        f2 = groupedMessagePosition22.aspectRatio;
                        f3 += f2;
                        if (f2 > 2.0f) {
                        }
                        this.positions.put(tLObject, groupedMessagePosition22);
                        this.posArray.add(groupedMessagePosition22);
                    }
                    i17++;
                }
                int iDp = AndroidUtilities.dp(120.0f);
                float fDp = AndroidUtilities.dp(120.0f);
                Point point = AndroidUtilities.displaySize;
                int iMin = (int) (fDp / (Math.min(point.x, point.y) / this.maxSizeWidth));
                float fDp2 = AndroidUtilities.dp(40.0f);
                Point point2 = AndroidUtilities.displaySize;
                float fMin2 = Math.min(point2.x, point2.y);
                float f5 = this.maxSizeWidth;
                int i18 = (int) (fDp2 / (fMin2 / f5));
                float f6 = f5 / 814.0f;
                float f7 = f3 / size;
                if (z || !(size == 2 || size == 3 || size == 4)) {
                    int size2 = this.posArray.size();
                    float[] fArr = new float[size2];
                    for (int i19 = 0; i19 < size; i19++) {
                        if (f7 > 1.1f) {
                            fArr[i19] = Math.max(1.0f, ((MessageObject.GroupedMessagePosition) this.posArray.get(i19)).aspectRatio);
                        } else {
                            fArr[i19] = Math.min(1.0f, ((MessageObject.GroupedMessagePosition) this.posArray.get(i19)).aspectRatio);
                        }
                        fArr[i19] = Math.max(0.66667f, Math.min(1.7f, fArr[i19]));
                    }
                    ArrayList arrayList2 = new ArrayList();
                    for (int i20 = 1; i20 < size2; i20++) {
                        int i21 = size2 - i20;
                        if (i20 <= 3) {
                            if (i21 <= 3) {
                                arrayList2.add(new MessageGroupedLayoutAttempt(i20, i21, multiHeight(fArr, 0, i20), multiHeight(fArr, i20, size2)));
                            }
                        }
                    }
                    for (int i22 = 1; i22 < size2 - 1; i22++) {
                        int i23 = 1;
                        while (true) {
                            int i24 = size2 - i22;
                            if (i23 < i24) {
                                int i25 = i24 - i23;
                                if (i22 > 3) {
                                    f = f7;
                                    i9 = i23;
                                } else if (i23 <= (f7 < 0.85f ? 4 : 3) && i25 <= 3) {
                                    int i26 = i22 + i23;
                                    f = f7;
                                    i9 = i23;
                                    arrayList2.add(new MessageGroupedLayoutAttempt(i22, i23, i25, multiHeight(fArr, 0, i22), multiHeight(fArr, i22, i26), multiHeight(fArr, i26, size2)));
                                }
                                i23 = i9 + 1;
                                f7 = f;
                            }
                        }
                    }
                    int i27 = 1;
                    while (i27 < size2 - 2) {
                        int i28 = 1;
                        while (true) {
                            int i29 = size2 - i27;
                            if (i28 < i29) {
                                int i30 = 1;
                                while (true) {
                                    int i31 = i29 - i28;
                                    if (i30 < i31) {
                                        int i32 = i31 - i30;
                                        if (i27 > 3 || i28 > 3 || i30 > 3) {
                                            i3 = i30;
                                            i4 = i29;
                                            i5 = i28;
                                            i6 = size2;
                                            i7 = size;
                                            i8 = iMin;
                                        } else if (i32 > 3) {
                                            i3 = i30;
                                            i4 = i29;
                                            i5 = i28;
                                            i6 = size2;
                                            i7 = size;
                                            i8 = iMin;
                                            i30 = i3 + 1;
                                            iMin = i8;
                                            i29 = i4;
                                            size = i7;
                                            i28 = i5;
                                            size2 = i6;
                                        } else {
                                            int i33 = i27 + i28;
                                            int i34 = i33 + i30;
                                            i6 = size2;
                                            i3 = i30;
                                            i4 = i29;
                                            i5 = i28;
                                            i7 = size;
                                            i8 = iMin;
                                            arrayList2.add(new MessageGroupedLayoutAttempt(i27, i28, i30, i32, multiHeight(fArr, 0, i27), multiHeight(fArr, i27, i33), multiHeight(fArr, i33, i34), multiHeight(fArr, i34, size2)));
                                        }
                                        i30 = i3 + 1;
                                        iMin = i8;
                                        i29 = i4;
                                        size = i7;
                                        i28 = i5;
                                        size2 = i6;
                                    }
                                }
                                i28++;
                                size = size;
                            }
                        }
                        i27++;
                        size = size;
                    }
                    i = size;
                    int i35 = iMin;
                    float f8 = (this.maxSizeWidth / 3) * 4;
                    MessageGroupedLayoutAttempt messageGroupedLayoutAttempt = null;
                    float f9 = BitmapDescriptorFactory.HUE_RED;
                    for (int i36 = 0; i36 < arrayList2.size(); i36++) {
                        MessageGroupedLayoutAttempt messageGroupedLayoutAttempt2 = (MessageGroupedLayoutAttempt) arrayList2.get(i36);
                        int i37 = 0;
                        float f10 = Float.MAX_VALUE;
                        float f11 = BitmapDescriptorFactory.HUE_RED;
                        while (true) {
                            float[] fArr2 = messageGroupedLayoutAttempt2.heights;
                            if (i37 >= fArr2.length) {
                                break;
                            }
                            float f12 = fArr2[i37];
                            f11 += f12;
                            if (f12 < f10) {
                                f10 = f12;
                            }
                            i37++;
                        }
                        float fAbs = Math.abs(f11 - f8);
                        int[] iArr = messageGroupedLayoutAttempt2.lineCounts;
                        if (iArr.length > 1) {
                            int i38 = iArr[0];
                            int i39 = iArr[1];
                            if (i38 <= i39 && (iArr.length <= 2 || i39 <= iArr[2])) {
                                if (iArr.length > 3 && iArr[2] > iArr[3]) {
                                }
                            }
                            fAbs *= 1.2f;
                        }
                        if (f10 < i35) {
                            fAbs *= 1.5f;
                        }
                        if (messageGroupedLayoutAttempt == null || fAbs < f9) {
                            messageGroupedLayoutAttempt = messageGroupedLayoutAttempt2;
                            f9 = fAbs;
                        }
                    }
                    if (messageGroupedLayoutAttempt == null) {
                        return;
                    }
                    int i40 = 0;
                    int i41 = 0;
                    while (true) {
                        int[] iArr2 = messageGroupedLayoutAttempt.lineCounts;
                        if (i41 >= iArr2.length) {
                            break;
                        }
                        int i42 = iArr2[i41];
                        float f13 = messageGroupedLayoutAttempt.heights[i41];
                        int i43 = this.maxSizeWidth;
                        MessageObject.GroupedMessagePosition groupedMessagePosition3 = null;
                        for (int i44 = 0; i44 < i42; i44++) {
                            int i45 = (int) (fArr[i40] * f13);
                            i43 -= i45;
                            MessageObject.GroupedMessagePosition groupedMessagePosition4 = (MessageObject.GroupedMessagePosition) this.posArray.get(i40);
                            int i46 = i41 == 0 ? 4 : 0;
                            if (i41 == messageGroupedLayoutAttempt.lineCounts.length - 1) {
                                i46 |= 8;
                            }
                            if (i44 == 0) {
                                i46 |= 1;
                            }
                            if (i44 == i42 - 1) {
                                i2 = i46 | 2;
                                groupedMessagePosition3 = groupedMessagePosition4;
                            } else {
                                i2 = i46;
                            }
                            groupedMessagePosition4.set(i44, i44, i41, i41, i45, f13 / 814.0f, i2);
                            i40++;
                        }
                        groupedMessagePosition3.pw += i43;
                        groupedMessagePosition3.spanSize += i43;
                        i41++;
                    }
                    r8 = 1;
                } else {
                    if (size == 2) {
                        MessageObject.GroupedMessagePosition groupedMessagePosition5 = (MessageObject.GroupedMessagePosition) this.posArray.get(0);
                        MessageObject.GroupedMessagePosition groupedMessagePosition6 = (MessageObject.GroupedMessagePosition) this.posArray.get(1);
                        String string = sb.toString();
                        if (string.equals("ww")) {
                            double d = f7;
                            double d2 = f6;
                            Double.isNaN(d2);
                            if (d > d2 * 1.4d) {
                                float f14 = groupedMessagePosition5.aspectRatio;
                                float f15 = groupedMessagePosition6.aspectRatio;
                                if (f14 - f15 < 0.2d) {
                                    float f16 = this.maxSizeWidth;
                                    i13 = 0;
                                    i14 = 0;
                                    fMin = Math.round(Math.min(f16 / f14, Math.min(f16 / f15, 407.0f))) / 814.0f;
                                    groupedMessagePosition5.set(0, 0, 0, 0, this.maxSizeWidth, fMin, 7);
                                    i10 = this.maxSizeWidth;
                                    i11 = 1;
                                    i12 = 11;
                                    i15 = 1;
                                    groupedMessagePosition = groupedMessagePosition6;
                                }
                            }
                        }
                        if (string.equals("ww") || string.equals("qq")) {
                            int i47 = this.maxSizeWidth / 2;
                            float f17 = i47;
                            i11 = 0;
                            i15 = 0;
                            i16 = i47;
                            fMin = Math.round(Math.min(f17 / groupedMessagePosition5.aspectRatio, Math.min(f17 / groupedMessagePosition6.aspectRatio, 814.0f))) / 814.0f;
                            groupedMessagePosition5.set(0, 0, 0, 0, i16, fMin, 13);
                            i12 = 14;
                            i13 = 1;
                            i14 = 1;
                            groupedMessagePosition = groupedMessagePosition6;
                        } else {
                            float f18 = this.maxSizeWidth;
                            float f19 = groupedMessagePosition5.aspectRatio;
                            int iMax = (int) Math.max(0.4f * f18, Math.round((f18 / f19) / ((1.0f / f19) + (1.0f / groupedMessagePosition6.aspectRatio))));
                            int i48 = this.maxSizeWidth - iMax;
                            if (i48 < iMin) {
                                iMax -= iMin - i48;
                                i48 = iMin;
                            }
                            i11 = 0;
                            i15 = 0;
                            fMin = Math.min(814.0f, Math.round(Math.min(i48 / groupedMessagePosition5.aspectRatio, iMax / groupedMessagePosition6.aspectRatio))) / 814.0f;
                            groupedMessagePosition5.set(0, 0, 0, 0, i48, fMin, 13);
                            i12 = 14;
                            i13 = 1;
                            i14 = 1;
                            groupedMessagePosition = groupedMessagePosition6;
                            i16 = iMax;
                        }
                        groupedMessagePosition.set(i13, i14, i15, i11, i16, fMin, i12);
                        i = size;
                        r8 = 1;
                    } else {
                        if (size == 3) {
                            MessageObject.GroupedMessagePosition groupedMessagePosition7 = (MessageObject.GroupedMessagePosition) this.posArray.get(0);
                            MessageObject.GroupedMessagePosition groupedMessagePosition8 = (MessageObject.GroupedMessagePosition) this.posArray.get(1);
                            MessageObject.GroupedMessagePosition groupedMessagePosition9 = (MessageObject.GroupedMessagePosition) this.posArray.get(2);
                            if (sb.charAt(0) == 'n') {
                                float f20 = groupedMessagePosition8.aspectRatio;
                                float fMin3 = Math.min(407.0f, Math.round((this.maxSizeWidth * f20) / (groupedMessagePosition9.aspectRatio + f20)));
                                int iMax2 = (int) Math.max(iMin, Math.min(this.maxSizeWidth * 0.5f, Math.round(Math.min(groupedMessagePosition9.aspectRatio * fMin3, groupedMessagePosition8.aspectRatio * r3))));
                                int iRound = Math.round(Math.min((groupedMessagePosition7.aspectRatio * 814.0f) + i18, this.maxSizeWidth - iMax2));
                                groupedMessagePosition7.set(0, 0, 0, 1, iRound, 1.0f, 13);
                                float f21 = (814.0f - fMin3) / 814.0f;
                                groupedMessagePosition8.set(1, 1, 0, 0, iMax2, f21, 6);
                                float f22 = fMin3 / 814.0f;
                                groupedMessagePosition9.set(0, 1, 1, 1, iMax2, f22, 10);
                                int i49 = this.maxSizeWidth;
                                groupedMessagePosition9.spanSize = i49;
                                groupedMessagePosition7.siblingHeights = new float[]{f22, f21};
                                groupedMessagePosition8.spanSize = i49 - iRound;
                                groupedMessagePosition9.leftSpanOffset = iRound;
                                this.hasSibling = true;
                            } else {
                                float fRound = Math.round(Math.min(this.maxSizeWidth / groupedMessagePosition7.aspectRatio, 537.24005f)) / 814.0f;
                                groupedMessagePosition7.set(0, 1, 0, 0, this.maxSizeWidth, fRound, 7);
                                i10 = this.maxSizeWidth / 2;
                                float f23 = i10;
                                fMin = Math.min(814.0f - fRound, Math.round(Math.min(f23 / groupedMessagePosition8.aspectRatio, f23 / groupedMessagePosition9.aspectRatio))) / 814.0f;
                                groupedMessagePosition8.set(0, 0, 1, 1, i10, fMin, 9);
                                i11 = 1;
                                i12 = 10;
                                i13 = 1;
                                i14 = 1;
                                i15 = 1;
                                groupedMessagePosition = groupedMessagePosition9;
                            }
                        } else if (size == 4) {
                            MessageObject.GroupedMessagePosition groupedMessagePosition10 = (MessageObject.GroupedMessagePosition) this.posArray.get(0);
                            MessageObject.GroupedMessagePosition groupedMessagePosition11 = (MessageObject.GroupedMessagePosition) this.posArray.get(1);
                            MessageObject.GroupedMessagePosition groupedMessagePosition12 = (MessageObject.GroupedMessagePosition) this.posArray.get(2);
                            MessageObject.GroupedMessagePosition groupedMessagePosition13 = (MessageObject.GroupedMessagePosition) this.posArray.get(3);
                            if (sb.charAt(0) == 'w') {
                                float fRound2 = Math.round(Math.min(this.maxSizeWidth / groupedMessagePosition10.aspectRatio, 537.24005f)) / 814.0f;
                                groupedMessagePosition10.set(0, 2, 0, 0, this.maxSizeWidth, fRound2, 7);
                                float fRound3 = Math.round(this.maxSizeWidth / ((groupedMessagePosition11.aspectRatio + groupedMessagePosition12.aspectRatio) + groupedMessagePosition13.aspectRatio));
                                float f24 = iMin;
                                int iMax3 = (int) Math.max(f24, Math.min(this.maxSizeWidth * 0.4f, groupedMessagePosition11.aspectRatio * fRound3));
                                int iMax4 = (int) Math.max(Math.max(f24, this.maxSizeWidth * 0.33f), groupedMessagePosition13.aspectRatio * fRound3);
                                int i50 = (this.maxSizeWidth - iMax3) - iMax4;
                                float fMin4 = Math.min(814.0f - fRound2, fRound3) / 814.0f;
                                groupedMessagePosition11.set(0, 0, 1, 1, iMax3, fMin4, 9);
                                groupedMessagePosition12.set(1, 1, 1, 1, i50, fMin4, 8);
                                groupedMessagePosition13.set(2, 2, 1, 1, iMax4, fMin4, 10);
                            } else {
                                int iMax5 = Math.max(iMin, Math.round(814.0f / (((1.0f / groupedMessagePosition11.aspectRatio) + (1.0f / groupedMessagePosition12.aspectRatio)) + (1.0f / ((MessageObject.GroupedMessagePosition) this.posArray.get(3)).aspectRatio))));
                                float f25 = iDp;
                                float f26 = iMax5;
                                float fMin5 = Math.min(0.33f, Math.max(f25, f26 / groupedMessagePosition11.aspectRatio) / 814.0f);
                                float fMin6 = Math.min(0.33f, Math.max(f25, f26 / groupedMessagePosition12.aspectRatio) / 814.0f);
                                float f27 = (1.0f - fMin5) - fMin6;
                                int iRound2 = Math.round(Math.min((814.0f * groupedMessagePosition10.aspectRatio) + i18, this.maxSizeWidth - iMax5));
                                groupedMessagePosition10.set(0, 0, 0, 2, iRound2, fMin5 + fMin6 + f27, 13);
                                groupedMessagePosition11.set(1, 1, 0, 0, iMax5, fMin5, 6);
                                groupedMessagePosition12.set(0, 1, 1, 1, iMax5, fMin6, 2);
                                groupedMessagePosition12.spanSize = this.maxSizeWidth;
                                groupedMessagePosition13.set(0, 1, 2, 2, iMax5, f27, 10);
                                int i51 = this.maxSizeWidth;
                                groupedMessagePosition13.spanSize = i51;
                                groupedMessagePosition11.spanSize = i51 - iRound2;
                                groupedMessagePosition12.leftSpanOffset = iRound2;
                                groupedMessagePosition13.leftSpanOffset = iRound2;
                                groupedMessagePosition10.siblingHeights = new float[]{fMin5, fMin6, f27};
                                this.hasSibling = true;
                            }
                        }
                        i = size;
                        r8 = 1;
                    }
                    i16 = i10;
                    groupedMessagePosition.set(i13, i14, i15, i11, i16, fMin, i12);
                    i = size;
                    r8 = 1;
                }
                int i52 = i;
                for (int i53 = 0; i53 < i52; i53 += r8) {
                    MessageObject.GroupedMessagePosition groupedMessagePosition14 = (MessageObject.GroupedMessagePosition) this.posArray.get(i53);
                    if ((groupedMessagePosition14.flags & r8) != 0) {
                        groupedMessagePosition14.edge = r8;
                    }
                }
            }
        }

        public BlockCollageCell(Context context, WebpageAdapter webpageAdapter) {
            super(context);
            this.group = new GroupedMessages();
            this.parentAdapter = webpageAdapter;
            RecyclerListView recyclerListView = new RecyclerListView(context) { // from class: org.telegram.ui.ArticleViewer.BlockCollageCell.1
                @Override // org.telegram.ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.View, android.view.ViewParent
                public void requestLayout() {
                    if (BlockCollageCell.this.inLayout) {
                        return;
                    }
                    super.requestLayout();
                }
            };
            this.innerListView = recyclerListView;
            recyclerListView.addItemDecoration(new RecyclerView.ItemDecoration() { // from class: org.telegram.ui.ArticleViewer.BlockCollageCell.2
                @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
                public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
                    MessageObject.GroupedMessagePosition groupedMessagePosition;
                    HashMap map;
                    Object obj;
                    int i = 0;
                    rect.bottom = 0;
                    if (view instanceof BlockPhotoCell) {
                        map = BlockCollageCell.this.group.positions;
                        obj = ((BlockPhotoCell) view).currentBlock;
                    } else {
                        if (!(view instanceof BlockVideoCell)) {
                            groupedMessagePosition = null;
                            if (groupedMessagePosition != null || groupedMessagePosition.siblingHeights == null) {
                            }
                            Point point = AndroidUtilities.displaySize;
                            float fMax = Math.max(point.x, point.y) * 0.5f;
                            int i2 = 0;
                            int iCeil = 0;
                            while (true) {
                                if (i2 >= groupedMessagePosition.siblingHeights.length) {
                                    break;
                                }
                                iCeil += (int) Math.ceil(r2[i2] * fMax);
                                i2++;
                            }
                            int iDp2 = iCeil + ((groupedMessagePosition.maxY - groupedMessagePosition.minY) * AndroidUtilities.dp2(11.0f));
                            int size = BlockCollageCell.this.group.posArray.size();
                            while (true) {
                                if (i < size) {
                                    MessageObject.GroupedMessagePosition groupedMessagePosition2 = (MessageObject.GroupedMessagePosition) BlockCollageCell.this.group.posArray.get(i);
                                    byte b = groupedMessagePosition2.minY;
                                    byte b2 = groupedMessagePosition.minY;
                                    if (b == b2 && ((groupedMessagePosition2.minX != groupedMessagePosition.minX || groupedMessagePosition2.maxX != groupedMessagePosition.maxX || b != b2 || groupedMessagePosition2.maxY != groupedMessagePosition.maxY) && b == b2)) {
                                        iDp2 -= ((int) Math.ceil(fMax * groupedMessagePosition2.ph)) - AndroidUtilities.dp(4.0f);
                                        break;
                                    }
                                    i++;
                                } else {
                                    break;
                                }
                            }
                            rect.bottom = -iDp2;
                            return;
                        }
                        map = BlockCollageCell.this.group.positions;
                        obj = ((BlockVideoCell) view).currentBlock;
                    }
                    groupedMessagePosition = (MessageObject.GroupedMessagePosition) map.get(obj);
                    if (groupedMessagePosition != null) {
                    }
                }
            });
            GridLayoutManagerFixed gridLayoutManagerFixed = new GridLayoutManagerFixed(context, 1000, 1, true) { // from class: org.telegram.ui.ArticleViewer.BlockCollageCell.3
                @Override // androidx.recyclerview.widget.GridLayoutManagerFixed
                protected boolean hasSiblingChild(int i) {
                    byte b;
                    MessageObject.GroupedMessagePosition groupedMessagePosition = (MessageObject.GroupedMessagePosition) BlockCollageCell.this.group.positions.get((TLObject) BlockCollageCell.this.currentBlock.items.get((BlockCollageCell.this.currentBlock.items.size() - i) - 1));
                    if (groupedMessagePosition.minX != groupedMessagePosition.maxX && (b = groupedMessagePosition.minY) == groupedMessagePosition.maxY && b != 0) {
                        int size = BlockCollageCell.this.group.posArray.size();
                        for (int i2 = 0; i2 < size; i2++) {
                            MessageObject.GroupedMessagePosition groupedMessagePosition2 = (MessageObject.GroupedMessagePosition) BlockCollageCell.this.group.posArray.get(i2);
                            if (groupedMessagePosition2 != groupedMessagePosition) {
                                byte b2 = groupedMessagePosition2.minY;
                                byte b3 = groupedMessagePosition.minY;
                                if (b2 <= b3 && groupedMessagePosition2.maxY >= b3) {
                                    return true;
                                }
                            }
                        }
                    }
                    return false;
                }

                @Override // androidx.recyclerview.widget.GridLayoutManagerFixed
                public boolean shouldLayoutChildFromOpositeSide(View view) {
                    return false;
                }

                @Override // androidx.recyclerview.widget.GridLayoutManager, androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
                public boolean supportsPredictiveItemAnimations() {
                    return false;
                }
            };
            gridLayoutManagerFixed.setSpanSizeLookup(new GridLayoutManager.SpanSizeLookup() { // from class: org.telegram.ui.ArticleViewer.BlockCollageCell.4
                @Override // androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup
                public int getSpanSize(int i) {
                    return ((MessageObject.GroupedMessagePosition) BlockCollageCell.this.group.positions.get((TLObject) BlockCollageCell.this.currentBlock.items.get((BlockCollageCell.this.currentBlock.items.size() - i) - 1))).spanSize;
                }
            });
            this.innerListView.setLayoutManager(gridLayoutManagerFixed);
            RecyclerListView recyclerListView2 = this.innerListView;
            RecyclerView.Adapter adapter = new RecyclerView.Adapter() { // from class: org.telegram.ui.ArticleViewer.BlockCollageCell.5
                @Override // androidx.recyclerview.widget.RecyclerView.Adapter
                public int getItemCount() {
                    if (BlockCollageCell.this.currentBlock == null) {
                        return 0;
                    }
                    return BlockCollageCell.this.currentBlock.items.size();
                }

                @Override // androidx.recyclerview.widget.RecyclerView.Adapter
                public int getItemViewType(int i) {
                    return ((TLRPC.PageBlock) BlockCollageCell.this.currentBlock.items.get((BlockCollageCell.this.currentBlock.items.size() - i) - 1)) instanceof TLRPC.TL_pageBlockPhoto ? 0 : 1;
                }

                @Override // androidx.recyclerview.widget.RecyclerView.Adapter
                public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) throws InterruptedException {
                    TLRPC.PageBlock pageBlock = (TLRPC.PageBlock) BlockCollageCell.this.currentBlock.items.get((BlockCollageCell.this.currentBlock.items.size() - i) - 1);
                    int itemViewType = viewHolder.getItemViewType();
                    View view = viewHolder.itemView;
                    if (itemViewType == 0) {
                        BlockPhotoCell blockPhotoCell = (BlockPhotoCell) view;
                        blockPhotoCell.groupPosition = (MessageObject.GroupedMessagePosition) BlockCollageCell.this.group.positions.get(pageBlock);
                        blockPhotoCell.setBlock((TLRPC.TL_pageBlockPhoto) pageBlock, false, true, true);
                    } else {
                        BlockVideoCell blockVideoCell = (BlockVideoCell) view;
                        blockVideoCell.groupPosition = (MessageObject.GroupedMessagePosition) BlockCollageCell.this.group.positions.get(pageBlock);
                        TLRPC.TL_pageBlockVideo tL_pageBlockVideo = (TLRPC.TL_pageBlockVideo) pageBlock;
                        blockVideoCell.setBlock(tL_pageBlockVideo, (BlockVideoCellState) ArticleViewer.this.videoStates.get(tL_pageBlockVideo.video_id), false, true, true);
                    }
                }

                @Override // androidx.recyclerview.widget.RecyclerView.Adapter
                public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
                    View blockPhotoCell;
                    if (i != 0) {
                        BlockCollageCell blockCollageCell = BlockCollageCell.this;
                        blockPhotoCell = ArticleViewer.this.new BlockVideoCell(blockCollageCell.getContext(), BlockCollageCell.this.parentAdapter, 2);
                    } else {
                        BlockCollageCell blockCollageCell2 = BlockCollageCell.this;
                        blockPhotoCell = ArticleViewer.this.new BlockPhotoCell(blockCollageCell2.getContext(), BlockCollageCell.this.parentAdapter, 2);
                    }
                    return new RecyclerListView.Holder(blockPhotoCell);
                }
            };
            this.innerAdapter = adapter;
            recyclerListView2.setAdapter(adapter);
            addView(this.innerListView, LayoutHelper.createFrame(-1, -2.0f));
            setWillNotDraw(false);
        }

        @Override // org.telegram.ui.Cells.TextSelectionHelper.ArticleSelectableView
        public void fillTextLayoutBlocks(ArrayList arrayList) {
            DrawingText drawingText = this.captionLayout;
            if (drawingText != null) {
                arrayList.add(drawingText);
            }
            DrawingText drawingText2 = this.creditLayout;
            if (drawingText2 != null) {
                arrayList.add(drawingText2);
            }
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            int i;
            if (this.currentBlock == null) {
                return;
            }
            if (this.captionLayout != null) {
                canvas.save();
                canvas.translate(this.textX, this.textY);
                ArticleViewer.this.drawTextSelection(canvas, this, 0);
                this.captionLayout.draw(canvas, this);
                canvas.restore();
                i = 1;
            } else {
                i = 0;
            }
            if (this.creditLayout != null) {
                canvas.save();
                canvas.translate(this.textX, this.textY + this.creditOffset);
                ArticleViewer.this.drawTextSelection(canvas, this, i);
                this.creditLayout.draw(canvas, this);
                canvas.restore();
            }
            if (this.currentBlock.level > 0) {
                canvas.drawRect(AndroidUtilities.dp(18.0f), BitmapDescriptorFactory.HUE_RED, AndroidUtilities.dp(20.0f), getMeasuredHeight() - (this.currentBlock.bottom ? AndroidUtilities.dp(6.0f) : 0), ArticleViewer.quoteLinePaint);
            }
        }

        @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
            this.innerListView.layout(this.listX, AndroidUtilities.dp(8.0f), this.listX + this.innerListView.getMeasuredWidth(), this.innerListView.getMeasuredHeight() + AndroidUtilities.dp(8.0f));
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            int iDp;
            int iDp2;
            int iDp3 = 1;
            this.inLayout = true;
            int size = View.MeasureSpec.getSize(i);
            TLRPC.TL_pageBlockCollage tL_pageBlockCollage = this.currentBlock;
            if (tL_pageBlockCollage != null) {
                if (tL_pageBlockCollage.level > 0) {
                    int iDp4 = AndroidUtilities.dp(r15 * 14) + AndroidUtilities.dp(18.0f);
                    this.listX = iDp4;
                    this.textX = iDp4;
                    iDp2 = size - (iDp4 + AndroidUtilities.dp(18.0f));
                    iDp = iDp2;
                } else {
                    this.listX = 0;
                    this.textX = AndroidUtilities.dp(18.0f);
                    iDp = size - AndroidUtilities.dp(36.0f);
                    iDp2 = size;
                }
                this.innerListView.measure(View.MeasureSpec.makeMeasureSpec(iDp2, 1073741824), View.MeasureSpec.makeMeasureSpec(0, 0));
                int measuredHeight = this.innerListView.getMeasuredHeight();
                int iDp5 = measuredHeight + AndroidUtilities.dp(8.0f);
                this.textY = iDp5;
                ArticleViewer articleViewer = ArticleViewer.this;
                TLRPC.TL_pageBlockCollage tL_pageBlockCollage2 = this.currentBlock;
                DrawingText drawingTextCreateLayoutForText = articleViewer.createLayoutForText(this, null, tL_pageBlockCollage2.caption.text, iDp, iDp5, tL_pageBlockCollage2, this.parentAdapter);
                this.captionLayout = drawingTextCreateLayoutForText;
                if (drawingTextCreateLayoutForText != null) {
                    int iDp6 = AndroidUtilities.dp(4.0f) + this.captionLayout.getHeight();
                    this.creditOffset = iDp6;
                    measuredHeight += iDp6 + AndroidUtilities.dp(4.0f);
                    DrawingText drawingText = this.captionLayout;
                    drawingText.x = this.textX;
                    drawingText.y = this.textY;
                } else {
                    this.creditOffset = 0;
                }
                ArticleViewer articleViewer2 = ArticleViewer.this;
                TLRPC.TL_pageBlockCollage tL_pageBlockCollage3 = this.currentBlock;
                DrawingText drawingTextCreateLayoutForText2 = articleViewer2.createLayoutForText(this, null, tL_pageBlockCollage3.caption.credit, iDp, this.textY + this.creditOffset, tL_pageBlockCollage3, this.parentAdapter.isRtl ? StaticLayoutEx.ALIGN_RIGHT() : Layout.Alignment.ALIGN_NORMAL, this.parentAdapter);
                this.creditLayout = drawingTextCreateLayoutForText2;
                if (drawingTextCreateLayoutForText2 != null) {
                    measuredHeight += AndroidUtilities.dp(4.0f) + this.creditLayout.getHeight();
                    DrawingText drawingText2 = this.creditLayout;
                    drawingText2.x = this.textX;
                    drawingText2.y = this.textY + this.creditOffset;
                }
                iDp3 = measuredHeight + AndroidUtilities.dp(16.0f);
                TLRPC.TL_pageBlockCollage tL_pageBlockCollage4 = this.currentBlock;
                if (tL_pageBlockCollage4.level > 0 && !tL_pageBlockCollage4.bottom) {
                    iDp3 += AndroidUtilities.dp(8.0f);
                }
            }
            setMeasuredDimension(size, iDp3);
            this.inLayout = false;
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            return ArticleViewer.this.checkLayoutForLinks(this.parentAdapter, motionEvent, this, this.captionLayout, this.textX, this.textY) || ArticleViewer.this.checkLayoutForLinks(this.parentAdapter, motionEvent, this, this.creditLayout, this.textX, this.textY + this.creditOffset) || super.onTouchEvent(motionEvent);
        }

        public void setBlock(TLRPC.TL_pageBlockCollage tL_pageBlockCollage) {
            if (this.currentBlock != tL_pageBlockCollage) {
                this.currentBlock = tL_pageBlockCollage;
                this.group.calculate();
            }
            this.innerAdapter.notifyDataSetChanged();
            this.innerListView.setGlowColor(ArticleViewer.this.getThemedColor(Theme.key_windowBackgroundWhite));
            requestLayout();
        }
    }

    private static class BlockDetailsBottomCell extends View {
        private RectF rect;

        public BlockDetailsBottomCell(Context context) {
            super(context);
            this.rect = new RectF();
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            canvas.drawLine(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), BitmapDescriptorFactory.HUE_RED, ArticleViewer.dividerPaint);
        }

        @Override // android.view.View
        protected void onMeasure(int i, int i2) {
            setMeasuredDimension(View.MeasureSpec.getSize(i), AndroidUtilities.dp(4.0f) + 1);
        }
    }

    private class BlockDetailsCell extends View implements Drawable.Callback, TextSelectionHelper.ArticleSelectableView {
        private AnimatedArrowDrawable arrow;
        private TLRPC.TL_pageBlockDetails currentBlock;
        private WebpageAdapter parentAdapter;
        private DrawingText textLayout;
        private int textX;
        private int textY;

        public BlockDetailsCell(Context context, WebpageAdapter webpageAdapter) {
            super(context);
            this.textX = AndroidUtilities.dp(50.0f);
            this.textY = AndroidUtilities.dp(11.0f) + 1;
            this.parentAdapter = webpageAdapter;
            this.arrow = new AnimatedArrowDrawable(ArticleViewer.this.getGrayTextColor(), true);
        }

        @Override // org.telegram.ui.Cells.TextSelectionHelper.ArticleSelectableView
        public void fillTextLayoutBlocks(ArrayList arrayList) {
            DrawingText drawingText = this.textLayout;
            if (drawingText != null) {
                arrayList.add(drawingText);
            }
        }

        @Override // android.view.View, android.graphics.drawable.Drawable.Callback
        public void invalidateDrawable(Drawable drawable) {
            invalidate();
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            if (this.currentBlock == null) {
                return;
            }
            canvas.save();
            canvas.translate(AndroidUtilities.dp(18.0f), ((getMeasuredHeight() - AndroidUtilities.dp(13.0f)) - 1) / 2);
            this.arrow.draw(canvas);
            canvas.restore();
            if (this.textLayout != null) {
                canvas.save();
                canvas.translate(this.textX, this.textY);
                ArticleViewer.this.drawTextSelection(canvas, this);
                this.textLayout.draw(canvas, this);
                canvas.restore();
            }
            float measuredHeight = getMeasuredHeight() - 1;
            canvas.drawLine(BitmapDescriptorFactory.HUE_RED, measuredHeight, getMeasuredWidth(), measuredHeight, ArticleViewer.dividerPaint);
        }

        @Override // android.view.View
        protected void onMeasure(int i, int i2) {
            int size = View.MeasureSpec.getSize(i);
            int iDp = AndroidUtilities.dp(39.0f);
            TLRPC.TL_pageBlockDetails tL_pageBlockDetails = this.currentBlock;
            if (tL_pageBlockDetails != null) {
                DrawingText drawingTextCreateLayoutForText = ArticleViewer.this.createLayoutForText(this, null, tL_pageBlockDetails.title, size - AndroidUtilities.dp(52.0f), 0, this.currentBlock, this.parentAdapter.isRtl ? StaticLayoutEx.ALIGN_RIGHT() : Layout.Alignment.ALIGN_NORMAL, this.parentAdapter);
                this.textLayout = drawingTextCreateLayoutForText;
                if (drawingTextCreateLayoutForText != null) {
                    iDp = Math.max(iDp, AndroidUtilities.dp(21.0f) + this.textLayout.getHeight());
                    int height = ((this.textLayout.getHeight() + AndroidUtilities.dp(21.0f)) - this.textLayout.getHeight()) / 2;
                    this.textY = height;
                    DrawingText drawingText = this.textLayout;
                    drawingText.x = this.textX;
                    drawingText.y = height;
                }
            }
            setMeasuredDimension(size, iDp + 1);
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            return ArticleViewer.this.checkLayoutForLinks(this.parentAdapter, motionEvent, this, this.textLayout, this.textX, this.textY) || super.onTouchEvent(motionEvent);
        }

        @Override // android.view.View, android.graphics.drawable.Drawable.Callback
        public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        }

        public void setBlock(TLRPC.TL_pageBlockDetails tL_pageBlockDetails) {
            this.currentBlock = tL_pageBlockDetails;
            this.arrow.setAnimationProgress(tL_pageBlockDetails.open ? BitmapDescriptorFactory.HUE_RED : 1.0f);
            this.arrow.setCallback(this);
            requestLayout();
        }

        @Override // android.view.View, android.graphics.drawable.Drawable.Callback
        public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        }
    }

    private static class BlockDividerCell extends View {
        private RectF rect;

        public BlockDividerCell(Context context) {
            super(context);
            this.rect = new RectF();
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            this.rect.set(getMeasuredWidth() / 3, AndroidUtilities.dp(8.0f), r0 * 2, AndroidUtilities.dp(10.0f));
            canvas.drawRoundRect(this.rect, AndroidUtilities.dp(1.0f), AndroidUtilities.dp(1.0f), ArticleViewer.dividerPaint);
        }

        @Override // android.view.View
        protected void onMeasure(int i, int i2) {
            setMeasuredDimension(View.MeasureSpec.getSize(i), AndroidUtilities.dp(18.0f));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class BlockEmbedCell extends FrameLayout implements TextSelectionHelper.ArticleSelectableView {
        private DrawingText captionLayout;
        private DrawingText creditLayout;
        private int creditOffset;
        private TLRPC.TL_pageBlockEmbed currentBlock;
        private int exactWebViewHeight;
        private int listX;
        private WebpageAdapter parentAdapter;
        private int textX;
        private int textY;
        private final WebPlayerView videoView;
        private boolean wasUserInteraction;
        private final TouchyWebView webView;

        /* renamed from: org.telegram.ui.ArticleViewer$BlockEmbedCell$2, reason: invalid class name */
        class AnonymousClass2 extends WebChromeClient {
            final /* synthetic */ ArticleViewer val$this$0;

            AnonymousClass2(ArticleViewer articleViewer) {
                this.val$this$0 = articleViewer;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$onShowCustomView$0() {
                if (ArticleViewer.this.customView != null) {
                    ArticleViewer.this.fullscreenVideoContainer.addView(ArticleViewer.this.customView, LayoutHelper.createFrame(-1, -1.0f));
                    ArticleViewer.this.fullscreenVideoContainer.setVisibility(0);
                }
            }

            @Override // android.webkit.WebChromeClient
            public void onHideCustomView() {
                super.onHideCustomView();
                if (ArticleViewer.this.customView == null) {
                    return;
                }
                ArticleViewer.this.fullscreenVideoContainer.setVisibility(4);
                ArticleViewer.this.fullscreenVideoContainer.removeView(ArticleViewer.this.customView);
                if (ArticleViewer.this.customViewCallback != null && !ArticleViewer.this.customViewCallback.getClass().getName().contains(".chromium.")) {
                    ArticleViewer.this.customViewCallback.onCustomViewHidden();
                }
                ArticleViewer.this.customView = null;
            }

            @Override // android.webkit.WebChromeClient
            public void onShowCustomView(View view, int i, WebChromeClient.CustomViewCallback customViewCallback) {
                onShowCustomView(view, customViewCallback);
            }

            @Override // android.webkit.WebChromeClient
            public void onShowCustomView(View view, WebChromeClient.CustomViewCallback customViewCallback) {
                if (ArticleViewer.this.customView != null) {
                    customViewCallback.onCustomViewHidden();
                    return;
                }
                ArticleViewer.this.customView = view;
                ArticleViewer.this.customViewCallback = customViewCallback;
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ArticleViewer$BlockEmbedCell$2$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onShowCustomView$0();
                    }
                }, 100L);
            }
        }

        /* renamed from: org.telegram.ui.ArticleViewer$BlockEmbedCell$3, reason: invalid class name */
        class AnonymousClass3 extends WebViewClient {
            final /* synthetic */ ArticleViewer val$this$0;

            AnonymousClass3(ArticleViewer articleViewer) {
                this.val$this$0 = articleViewer;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$onRenderProcessGone$0() {
                Browser.openUrl(BlockEmbedCell.this.getContext(), "https://play.google.com/store/apps/details?id=com.google.android.webview");
            }

            @Override // android.webkit.WebViewClient
            public void onLoadResource(WebView webView, String str) {
                super.onLoadResource(webView, str);
            }

            @Override // android.webkit.WebViewClient
            public void onPageFinished(WebView webView, String str) {
                super.onPageFinished(webView, str);
            }

            @Override // android.webkit.WebViewClient
            public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
                try {
                    LaunchActivity launchActivity = LaunchActivity.instance;
                    if (launchActivity != null && launchActivity.isFinishing()) {
                        return true;
                    }
                    new AlertDialog.Builder(BlockEmbedCell.this.getContext(), null).setTitle(LocaleController.getString(R.string.ChromeCrashTitle)).setMessage(AndroidUtilities.replaceSingleTag(LocaleController.getString(R.string.ChromeCrashMessage), new Runnable() { // from class: org.telegram.ui.ArticleViewer$BlockEmbedCell$3$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$onRenderProcessGone$0();
                        }
                    })).setPositiveButton(LocaleController.getString(R.string.OK), null).show();
                    return true;
                } catch (Exception e) {
                    FileLog.e(e);
                    return false;
                }
            }

            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(WebView webView, String str) {
                if (!BlockEmbedCell.this.wasUserInteraction) {
                    return false;
                }
                Browser.openUrl(ArticleViewer.this.parentActivity, str);
                return true;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        class TelegramWebviewProxy {
            private TelegramWebviewProxy() {
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$postEvent$0(String str, String str2) {
                if ("resize_frame".equals(str)) {
                    try {
                        JSONObject jSONObject = new JSONObject(str2);
                        BlockEmbedCell.this.exactWebViewHeight = Utilities.parseInt((CharSequence) jSONObject.getString("height")).intValue();
                        BlockEmbedCell.this.requestLayout();
                    } catch (Throwable unused) {
                    }
                }
            }

            @JavascriptInterface
            public void postEvent(final String str, final String str2) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ArticleViewer$BlockEmbedCell$TelegramWebviewProxy$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$postEvent$0(str, str2);
                    }
                });
            }
        }

        public class TouchyWebView extends WebView {
            public TouchyWebView(Context context) {
                super(context);
                setFocusable(false);
            }

            @Override // android.webkit.WebView, android.view.View
            public boolean onTouchEvent(MotionEvent motionEvent) throws PackageManager.NameNotFoundException {
                BlockEmbedCell.this.wasUserInteraction = true;
                if (BlockEmbedCell.this.currentBlock != null) {
                    if (BlockEmbedCell.this.currentBlock.allow_scrolling) {
                        requestDisallowInterceptTouchEvent(true);
                    } else {
                        ArticleViewer.this.windowView.requestDisallowInterceptTouchEvent(true);
                    }
                }
                return super.onTouchEvent(motionEvent);
            }
        }

        public BlockEmbedCell(Context context, WebpageAdapter webpageAdapter) {
            super(context);
            this.parentAdapter = webpageAdapter;
            setWillNotDraw(false);
            if (Looper.myLooper() != Looper.getMainLooper()) {
                this.videoView = null;
                this.webView = null;
                return;
            }
            WebPlayerView webPlayerView = new WebPlayerView(context, false, false, new WebPlayerView.WebPlayerViewDelegate() { // from class: org.telegram.ui.ArticleViewer.BlockEmbedCell.1
                @Override // org.telegram.ui.Components.WebPlayerView.WebPlayerViewDelegate
                public boolean checkInlinePermissions() {
                    return false;
                }

                @Override // org.telegram.ui.Components.WebPlayerView.WebPlayerViewDelegate
                public ViewGroup getTextureViewContainer() {
                    return null;
                }

                @Override // org.telegram.ui.Components.WebPlayerView.WebPlayerViewDelegate
                public void onInitFailed() {
                    BlockEmbedCell.this.webView.setVisibility(0);
                    BlockEmbedCell.this.videoView.setVisibility(4);
                    BlockEmbedCell.this.videoView.loadVideo(null, null, null, null, false);
                    HashMap map = new HashMap();
                    map.put("Referer", ApplicationLoader.applicationContext.getPackageName());
                    BlockEmbedCell.this.webView.loadUrl(BlockEmbedCell.this.currentBlock.url, map);
                }

                @Override // org.telegram.ui.Components.WebPlayerView.WebPlayerViewDelegate
                public void onInlineSurfaceTextureReady() {
                }

                @Override // org.telegram.ui.Components.WebPlayerView.WebPlayerViewDelegate
                public void onPlayStateChanged(WebPlayerView webPlayerView2, boolean z) {
                    try {
                        if (z) {
                            if (ArticleViewer.this.currentPlayingVideo != null && ArticleViewer.this.currentPlayingVideo != webPlayerView2) {
                                ArticleViewer.this.currentPlayingVideo.pause();
                            }
                            ArticleViewer.this.currentPlayingVideo = webPlayerView2;
                            ArticleViewer.this.parentActivity.getWindow().addFlags(128);
                        } else {
                            if (ArticleViewer.this.currentPlayingVideo == webPlayerView2) {
                                ArticleViewer.this.currentPlayingVideo = null;
                            }
                            ArticleViewer.this.parentActivity.getWindow().clearFlags(128);
                        }
                    } catch (Exception e) {
                        FileLog.e(e);
                    }
                }

                @Override // org.telegram.ui.Components.WebPlayerView.WebPlayerViewDelegate
                public void onSharePressed() {
                    if (ArticleViewer.this.parentActivity == null) {
                        return;
                    }
                    ArticleViewer.this.showDialog(new ShareAlert(ArticleViewer.this.parentActivity, null, BlockEmbedCell.this.currentBlock.url, false, BlockEmbedCell.this.currentBlock.url, false));
                }

                @Override // org.telegram.ui.Components.WebPlayerView.WebPlayerViewDelegate
                public TextureView onSwitchInlineMode(View view, boolean z, int i, int i2, int i3, boolean z2) {
                    return null;
                }

                @Override // org.telegram.ui.Components.WebPlayerView.WebPlayerViewDelegate
                public TextureView onSwitchToFullscreen(View view, boolean z, float f, int i, boolean z2) {
                    if (z) {
                        ArticleViewer.this.fullscreenAspectRatioView.addView(ArticleViewer.this.fullscreenTextureView, LayoutHelper.createFrame(-1, -1.0f));
                        ArticleViewer.this.fullscreenAspectRatioView.setVisibility(0);
                        ArticleViewer.this.fullscreenAspectRatioView.setAspectRatio(f, i);
                        BlockEmbedCell blockEmbedCell = BlockEmbedCell.this;
                        ArticleViewer.this.fullscreenedVideo = blockEmbedCell.videoView;
                        ArticleViewer.this.fullscreenVideoContainer.addView(view, LayoutHelper.createFrame(-1, -1.0f));
                        ArticleViewer.this.fullscreenVideoContainer.setVisibility(0);
                    } else {
                        ArticleViewer.this.fullscreenAspectRatioView.removeView(ArticleViewer.this.fullscreenTextureView);
                        ArticleViewer.this.fullscreenedVideo = null;
                        ArticleViewer.this.fullscreenAspectRatioView.setVisibility(8);
                        ArticleViewer.this.fullscreenVideoContainer.setVisibility(4);
                    }
                    return ArticleViewer.this.fullscreenTextureView;
                }

                @Override // org.telegram.ui.Components.WebPlayerView.WebPlayerViewDelegate
                public void onVideoSizeChanged(float f, int i) {
                    ArticleViewer.this.fullscreenAspectRatioView.setAspectRatio(f, i);
                }

                @Override // org.telegram.ui.Components.WebPlayerView.WebPlayerViewDelegate
                public void prepareToSwitchInlineMode(boolean z, Runnable runnable, float f, boolean z2) {
                }
            });
            this.videoView = webPlayerView;
            addView(webPlayerView);
            ArticleViewer.this.createdWebViews.add(this);
            TouchyWebView touchyWebView = new TouchyWebView(context);
            this.webView = touchyWebView;
            touchyWebView.getSettings().setJavaScriptEnabled(true);
            touchyWebView.getSettings().setDomStorageEnabled(true);
            touchyWebView.getSettings().setAllowContentAccess(true);
            int i = Build.VERSION.SDK_INT;
            touchyWebView.getSettings().setMediaPlaybackRequiresUserGesture(false);
            touchyWebView.addJavascriptInterface(new TelegramWebviewProxy(), "TelegramWebviewProxy");
            if (i >= 21) {
                touchyWebView.getSettings().setMixedContentMode(0);
                CookieManager.getInstance().setAcceptThirdPartyCookies(touchyWebView, true);
            }
            touchyWebView.setWebChromeClient(new AnonymousClass2(ArticleViewer.this));
            touchyWebView.setWebViewClient(new AnonymousClass3(ArticleViewer.this));
            addView(touchyWebView);
        }

        public void destroyWebView(boolean z) {
            try {
                TouchyWebView touchyWebView = this.webView;
                if (touchyWebView != null) {
                    touchyWebView.stopLoading();
                    this.webView.loadUrl("about:blank");
                    if (z) {
                        this.webView.destroy();
                    }
                }
                this.currentBlock = null;
            } catch (Exception e) {
                FileLog.e(e);
            }
            WebPlayerView webPlayerView = this.videoView;
            if (webPlayerView != null) {
                webPlayerView.destroy();
            }
        }

        @Override // org.telegram.ui.Cells.TextSelectionHelper.ArticleSelectableView
        public void fillTextLayoutBlocks(ArrayList arrayList) {
            DrawingText drawingText = this.captionLayout;
            if (drawingText != null) {
                arrayList.add(drawingText);
            }
            DrawingText drawingText2 = this.creditLayout;
            if (drawingText2 != null) {
                arrayList.add(drawingText2);
            }
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onAttachedToWindow() {
            super.onAttachedToWindow();
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            if (ArticleViewer.this.isVisible) {
                return;
            }
            this.currentBlock = null;
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            int i;
            if (this.currentBlock == null) {
                return;
            }
            if (this.captionLayout != null) {
                canvas.save();
                canvas.translate(this.textX, this.textY);
                ArticleViewer.this.drawTextSelection(canvas, this, 0);
                this.captionLayout.draw(canvas, this);
                canvas.restore();
                i = 1;
            } else {
                i = 0;
            }
            if (this.creditLayout != null) {
                canvas.save();
                canvas.translate(this.textX, this.textY + this.creditOffset);
                ArticleViewer.this.drawTextSelection(canvas, this, i);
                this.creditLayout.draw(canvas, this);
                canvas.restore();
            }
            if (this.currentBlock.level > 0) {
                canvas.drawRect(AndroidUtilities.dp(18.0f), BitmapDescriptorFactory.HUE_RED, AndroidUtilities.dp(20.0f), getMeasuredHeight() - (this.currentBlock.bottom ? AndroidUtilities.dp(6.0f) : 0), ArticleViewer.quoteLinePaint);
            }
        }

        @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
            TouchyWebView touchyWebView = this.webView;
            if (touchyWebView != null) {
                int i5 = this.listX;
                touchyWebView.layout(i5, 0, touchyWebView.getMeasuredWidth() + i5, this.webView.getMeasuredHeight());
            }
            WebPlayerView webPlayerView = this.videoView;
            if (webPlayerView == null || webPlayerView.getParent() != this) {
                return;
            }
            WebPlayerView webPlayerView2 = this.videoView;
            int i6 = this.listX;
            webPlayerView2.layout(i6, 0, webPlayerView2.getMeasuredWidth() + i6, this.videoView.getMeasuredHeight());
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            int iDp;
            int iDp2;
            int i3;
            int iDp3;
            int size = View.MeasureSpec.getSize(i);
            TLRPC.TL_pageBlockEmbed tL_pageBlockEmbed = this.currentBlock;
            if (tL_pageBlockEmbed != null) {
                if (tL_pageBlockEmbed.level > 0) {
                    int iDp4 = AndroidUtilities.dp(r14 * 14) + AndroidUtilities.dp(18.0f);
                    this.listX = iDp4;
                    this.textX = iDp4;
                    iDp2 = size - (iDp4 + AndroidUtilities.dp(18.0f));
                    i3 = iDp2;
                } else {
                    this.listX = 0;
                    this.textX = AndroidUtilities.dp(18.0f);
                    int iDp5 = size - AndroidUtilities.dp(36.0f);
                    if (this.currentBlock.full_width) {
                        iDp2 = size;
                    } else {
                        iDp2 = size - AndroidUtilities.dp(36.0f);
                        this.listX += AndroidUtilities.dp(18.0f);
                    }
                    i3 = iDp5;
                }
                TLRPC.TL_pageBlockEmbed tL_pageBlockEmbed2 = this.currentBlock;
                int i4 = tL_pageBlockEmbed2.w;
                float f = i4 == 0 ? 1.0f : size / i4;
                int i5 = this.exactWebViewHeight;
                if (i5 != 0) {
                    iDp3 = AndroidUtilities.dp(i5);
                } else {
                    float fDp = tL_pageBlockEmbed2.h;
                    if (i4 == 0) {
                        fDp = AndroidUtilities.dp(fDp);
                    }
                    iDp3 = (int) (fDp * f);
                }
                if (iDp3 == 0) {
                    iDp3 = AndroidUtilities.dp(10.0f);
                }
                int iDp6 = iDp3;
                TouchyWebView touchyWebView = this.webView;
                if (touchyWebView != null) {
                    touchyWebView.measure(View.MeasureSpec.makeMeasureSpec(iDp2, 1073741824), View.MeasureSpec.makeMeasureSpec(iDp6, 1073741824));
                }
                WebPlayerView webPlayerView = this.videoView;
                if (webPlayerView != null && webPlayerView.getParent() == this) {
                    this.videoView.measure(View.MeasureSpec.makeMeasureSpec(iDp2, 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(10.0f) + iDp6, 1073741824));
                }
                int iDp7 = AndroidUtilities.dp(8.0f) + iDp6;
                this.textY = iDp7;
                ArticleViewer articleViewer = ArticleViewer.this;
                TLRPC.TL_pageBlockEmbed tL_pageBlockEmbed3 = this.currentBlock;
                DrawingText drawingTextCreateLayoutForText = articleViewer.createLayoutForText(this, null, tL_pageBlockEmbed3.caption.text, i3, iDp7, tL_pageBlockEmbed3, this.parentAdapter);
                this.captionLayout = drawingTextCreateLayoutForText;
                if (drawingTextCreateLayoutForText != null) {
                    int iDp8 = AndroidUtilities.dp(4.0f) + this.captionLayout.getHeight();
                    this.creditOffset = iDp8;
                    iDp6 += iDp8 + AndroidUtilities.dp(4.0f);
                } else {
                    this.creditOffset = 0;
                }
                ArticleViewer articleViewer2 = ArticleViewer.this;
                TLRPC.TL_pageBlockEmbed tL_pageBlockEmbed4 = this.currentBlock;
                DrawingText drawingTextCreateLayoutForText2 = articleViewer2.createLayoutForText(this, null, tL_pageBlockEmbed4.caption.credit, i3, this.textY + this.creditOffset, tL_pageBlockEmbed4, this.parentAdapter.isRtl ? StaticLayoutEx.ALIGN_RIGHT() : Layout.Alignment.ALIGN_NORMAL, this.parentAdapter);
                this.creditLayout = drawingTextCreateLayoutForText2;
                if (drawingTextCreateLayoutForText2 != null) {
                    iDp6 += AndroidUtilities.dp(4.0f) + this.creditLayout.getHeight();
                    DrawingText drawingText = this.creditLayout;
                    drawingText.x = this.textX;
                    drawingText.y = this.creditOffset;
                }
                iDp = iDp6 + AndroidUtilities.dp(5.0f);
                TLRPC.TL_pageBlockEmbed tL_pageBlockEmbed5 = this.currentBlock;
                int i6 = tL_pageBlockEmbed5.level;
                if ((i6 > 0 && !tL_pageBlockEmbed5.bottom) || (i6 == 0 && this.captionLayout != null)) {
                    iDp += AndroidUtilities.dp(8.0f);
                }
                DrawingText drawingText2 = this.captionLayout;
                if (drawingText2 != null) {
                    drawingText2.x = this.textX;
                    drawingText2.y = this.textY;
                }
            } else {
                iDp = 1;
            }
            setMeasuredDimension(size, iDp);
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            return ArticleViewer.this.checkLayoutForLinks(this.parentAdapter, motionEvent, this, this.captionLayout, this.textX, this.textY) || ArticleViewer.this.checkLayoutForLinks(this.parentAdapter, motionEvent, this, this.creditLayout, this.textX, this.textY + this.creditOffset) || super.onTouchEvent(motionEvent);
        }

        public void setBlock(TLRPC.TL_pageBlockEmbed tL_pageBlockEmbed) {
            TLRPC.TL_pageBlockEmbed tL_pageBlockEmbed2 = this.currentBlock;
            this.currentBlock = tL_pageBlockEmbed;
            TouchyWebView touchyWebView = this.webView;
            if (touchyWebView != null) {
                touchyWebView.setBackgroundColor(ArticleViewer.this.getThemedColor(Theme.key_windowBackgroundWhite));
            }
            TLRPC.TL_pageBlockEmbed tL_pageBlockEmbed3 = this.currentBlock;
            if (tL_pageBlockEmbed2 != tL_pageBlockEmbed3) {
                this.wasUserInteraction = false;
                TouchyWebView touchyWebView2 = this.webView;
                if (touchyWebView2 != null) {
                    if (tL_pageBlockEmbed3.allow_scrolling) {
                        touchyWebView2.setVerticalScrollBarEnabled(true);
                        this.webView.setHorizontalScrollBarEnabled(true);
                    } else {
                        touchyWebView2.setVerticalScrollBarEnabled(false);
                        this.webView.setHorizontalScrollBarEnabled(false);
                    }
                }
                this.exactWebViewHeight = 0;
                TouchyWebView touchyWebView3 = this.webView;
                if (touchyWebView3 != null) {
                    try {
                        touchyWebView3.loadUrl("about:blank");
                    } catch (Exception e) {
                        FileLog.e(e);
                    }
                }
                try {
                    TLRPC.TL_pageBlockEmbed tL_pageBlockEmbed4 = this.currentBlock;
                    String str = tL_pageBlockEmbed4.html;
                    if (str != null) {
                        TouchyWebView touchyWebView4 = this.webView;
                        if (touchyWebView4 != null) {
                            touchyWebView4.loadDataWithBaseURL("https://telegram.org/embed", str, "text/html", "UTF-8", null);
                            this.webView.setVisibility(0);
                        }
                        WebPlayerView webPlayerView = this.videoView;
                        if (webPlayerView != null) {
                            webPlayerView.setVisibility(4);
                            this.videoView.loadVideo(null, null, null, null, false);
                        }
                    } else {
                        long j = tL_pageBlockEmbed4.poster_photo_id;
                        if (this.videoView.loadVideo(tL_pageBlockEmbed.url, j != 0 ? this.parentAdapter.getPhotoWithId(j) : null, this.parentAdapter.currentPage, null, false)) {
                            TouchyWebView touchyWebView5 = this.webView;
                            if (touchyWebView5 != null) {
                                touchyWebView5.setVisibility(4);
                                this.webView.stopLoading();
                                this.webView.loadUrl("about:blank");
                            }
                            WebPlayerView webPlayerView2 = this.videoView;
                            if (webPlayerView2 != null) {
                                webPlayerView2.setVisibility(0);
                            }
                        } else {
                            TouchyWebView touchyWebView6 = this.webView;
                            if (touchyWebView6 != null) {
                                touchyWebView6.setVisibility(0);
                                HashMap map = new HashMap();
                                map.put("Referer", ApplicationLoader.applicationContext.getPackageName());
                                this.webView.loadUrl(this.currentBlock.url, map);
                            }
                            WebPlayerView webPlayerView3 = this.videoView;
                            if (webPlayerView3 != null) {
                                webPlayerView3.setVisibility(4);
                                this.videoView.loadVideo(null, null, null, null, false);
                            }
                        }
                    }
                } catch (Exception e2) {
                    FileLog.e(e2);
                }
            }
            requestLayout();
        }
    }

    private class BlockEmbedPostCell extends View implements TextSelectionHelper.ArticleSelectableView {
        private AvatarDrawable avatarDrawable;
        private ImageReceiver avatarImageView;
        private boolean avatarVisible;
        private DrawingText captionLayout;
        private DrawingText creditLayout;
        private int creditOffset;
        private TLRPC.TL_pageBlockEmbedPost currentBlock;
        private DrawingText dateLayout;
        private int lineHeight;
        private DrawingText nameLayout;
        private WebpageAdapter parentAdapter;
        private int textX;
        private int textY;

        public BlockEmbedPostCell(Context context, WebpageAdapter webpageAdapter) {
            super(context);
            this.parentAdapter = webpageAdapter;
            ImageReceiver imageReceiver = new ImageReceiver(this);
            this.avatarImageView = imageReceiver;
            imageReceiver.setRoundRadius(AndroidUtilities.dp(20.0f));
            this.avatarImageView.setImageCoords(AndroidUtilities.dp(32.0f), AndroidUtilities.dp(8.0f), AndroidUtilities.dp(40.0f), AndroidUtilities.dp(40.0f));
            this.avatarDrawable = new AvatarDrawable();
        }

        @Override // org.telegram.ui.Cells.TextSelectionHelper.ArticleSelectableView
        public void fillTextLayoutBlocks(ArrayList arrayList) {
            DrawingText drawingText = this.nameLayout;
            if (drawingText != null) {
                arrayList.add(drawingText);
            }
            DrawingText drawingText2 = this.dateLayout;
            if (drawingText2 != null) {
                arrayList.add(drawingText2);
            }
            DrawingText drawingText3 = this.captionLayout;
            if (drawingText3 != null) {
                arrayList.add(drawingText3);
            }
            DrawingText drawingText4 = this.creditLayout;
            if (drawingText4 != null) {
                arrayList.add(drawingText4);
            }
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            int i;
            TLRPC.TL_pageBlockEmbedPost tL_pageBlockEmbedPost = this.currentBlock;
            if (tL_pageBlockEmbedPost == null) {
                return;
            }
            if (!(tL_pageBlockEmbedPost instanceof TL_pageBlockEmbedPostCaption)) {
                if (this.avatarVisible) {
                    this.avatarImageView.draw(canvas);
                }
                if (this.nameLayout != null) {
                    canvas.save();
                    canvas.translate(AndroidUtilities.dp((this.avatarVisible ? 54 : 0) + 32), AndroidUtilities.dp(this.dateLayout != null ? 10.0f : 19.0f));
                    ArticleViewer.this.drawTextSelection(canvas, this, 0);
                    this.nameLayout.draw(canvas, this);
                    canvas.restore();
                    i = 1;
                } else {
                    i = 0;
                }
                if (this.dateLayout != null) {
                    canvas.save();
                    canvas.translate(AndroidUtilities.dp((this.avatarVisible ? 54 : 0) + 32), AndroidUtilities.dp(29.0f));
                    ArticleViewer.this.drawTextSelection(canvas, this, i);
                    this.dateLayout.draw(canvas, this);
                    canvas.restore();
                    i++;
                }
                canvas.drawRect(AndroidUtilities.dp(18.0f), AndroidUtilities.dp(6.0f), AndroidUtilities.dp(20.0f), this.lineHeight - (this.currentBlock.level == 0 ? AndroidUtilities.dp(6.0f) : 0), ArticleViewer.quoteLinePaint);
                i = i;
            }
            if (this.captionLayout != null) {
                canvas.save();
                canvas.translate(this.textX, this.textY);
                ArticleViewer.this.drawTextSelection(canvas, this, i);
                this.captionLayout.draw(canvas, this);
                canvas.restore();
                i++;
            }
            if (this.creditLayout != null) {
                canvas.save();
                canvas.translate(this.textX, this.textY + this.creditOffset);
                ArticleViewer.this.drawTextSelection(canvas, this, i);
                this.creditLayout.draw(canvas, this);
                canvas.restore();
            }
        }

        @Override // android.view.View
        protected void onMeasure(int i, int i2) {
            int size = View.MeasureSpec.getSize(i);
            TLRPC.TL_pageBlockEmbedPost tL_pageBlockEmbedPost = this.currentBlock;
            int i3 = 1;
            if (tL_pageBlockEmbedPost != null) {
                if (tL_pageBlockEmbedPost instanceof TL_pageBlockEmbedPostCaption) {
                    this.textX = AndroidUtilities.dp(18.0f);
                    this.textY = AndroidUtilities.dp(4.0f);
                    int iDp = size - AndroidUtilities.dp(50.0f);
                    ArticleViewer articleViewer = ArticleViewer.this;
                    TLRPC.TL_pageBlockEmbedPost tL_pageBlockEmbedPost2 = this.currentBlock;
                    DrawingText drawingTextCreateLayoutForText = articleViewer.createLayoutForText(this, null, tL_pageBlockEmbedPost2.caption.text, iDp, this.textY, tL_pageBlockEmbedPost2, this.parentAdapter);
                    this.captionLayout = drawingTextCreateLayoutForText;
                    if (drawingTextCreateLayoutForText != null) {
                        int iDp2 = AndroidUtilities.dp(4.0f) + this.captionLayout.getHeight();
                        this.creditOffset = iDp2;
                        iDp = iDp2 + AndroidUtilities.dp(4.0f);
                    }
                    ArticleViewer articleViewer2 = ArticleViewer.this;
                    TLRPC.TL_pageBlockEmbedPost tL_pageBlockEmbedPost3 = this.currentBlock;
                    DrawingText drawingTextCreateLayoutForText2 = articleViewer2.createLayoutForText(this, null, tL_pageBlockEmbedPost3.caption.credit, iDp, this.textY + this.creditOffset, tL_pageBlockEmbedPost3, this.parentAdapter.isRtl ? StaticLayoutEx.ALIGN_RIGHT() : Layout.Alignment.ALIGN_NORMAL, this.parentAdapter);
                    this.creditLayout = drawingTextCreateLayoutForText2;
                    if (drawingTextCreateLayoutForText2 != null) {
                        iDp += AndroidUtilities.dp(4.0f) + this.creditLayout.getHeight();
                    }
                    i3 = iDp;
                } else {
                    long j = tL_pageBlockEmbedPost.author_photo_id;
                    boolean z = j != 0;
                    this.avatarVisible = z;
                    if (z) {
                        TLRPC.Photo photoWithId = this.parentAdapter.getPhotoWithId(j);
                        boolean z2 = photoWithId instanceof TLRPC.TL_photo;
                        this.avatarVisible = z2;
                        if (z2) {
                            this.avatarDrawable.setInfo(0L, this.currentBlock.author, null);
                            this.avatarImageView.setImage(ImageLocation.getForPhoto(FileLoader.getClosestPhotoSizeWithSize(photoWithId.sizes, AndroidUtilities.dp(40.0f), true), photoWithId), "40_40", this.avatarDrawable, 0L, (String) null, this.parentAdapter.currentPage, 1);
                        }
                    }
                    ArticleViewer articleViewer3 = ArticleViewer.this;
                    String str = this.currentBlock.author;
                    int iDp3 = size - AndroidUtilities.dp((this.avatarVisible ? 54 : 0) + 50);
                    TLRPC.TL_pageBlockEmbedPost tL_pageBlockEmbedPost4 = this.currentBlock;
                    Layout.Alignment alignment = Layout.Alignment.ALIGN_NORMAL;
                    DrawingText drawingTextCreateLayoutForText3 = articleViewer3.createLayoutForText(this, str, null, iDp3, 0, tL_pageBlockEmbedPost4, alignment, 1, this.parentAdapter);
                    this.nameLayout = drawingTextCreateLayoutForText3;
                    if (drawingTextCreateLayoutForText3 != null) {
                        drawingTextCreateLayoutForText3.x = AndroidUtilities.dp((this.avatarVisible ? 54 : 0) + 32);
                        this.nameLayout.y = AndroidUtilities.dp(this.dateLayout != null ? 10.0f : 19.0f);
                    }
                    if (this.currentBlock.date != 0) {
                        this.dateLayout = ArticleViewer.this.createLayoutForText(this, LocaleController.getInstance().getChatFullDate().format(this.currentBlock.date * 1000), null, size - AndroidUtilities.dp((this.avatarVisible ? 54 : 0) + 50), AndroidUtilities.dp(29.0f), this.currentBlock, this.parentAdapter);
                    } else {
                        this.dateLayout = null;
                    }
                    int iDp4 = AndroidUtilities.dp(56.0f);
                    if (this.currentBlock.blocks.isEmpty()) {
                        this.textX = AndroidUtilities.dp(32.0f);
                        this.textY = AndroidUtilities.dp(56.0f);
                        int iDp5 = size - AndroidUtilities.dp(50.0f);
                        ArticleViewer articleViewer4 = ArticleViewer.this;
                        TLRPC.TL_pageBlockEmbedPost tL_pageBlockEmbedPost5 = this.currentBlock;
                        DrawingText drawingTextCreateLayoutForText4 = articleViewer4.createLayoutForText(this, null, tL_pageBlockEmbedPost5.caption.text, iDp5, this.textY, tL_pageBlockEmbedPost5, this.parentAdapter);
                        this.captionLayout = drawingTextCreateLayoutForText4;
                        if (drawingTextCreateLayoutForText4 != null) {
                            int iDp6 = AndroidUtilities.dp(4.0f) + this.captionLayout.getHeight();
                            this.creditOffset = iDp6;
                            iDp4 += iDp6 + AndroidUtilities.dp(4.0f);
                        }
                        int i4 = iDp4;
                        ArticleViewer articleViewer5 = ArticleViewer.this;
                        TLRPC.TL_pageBlockEmbedPost tL_pageBlockEmbedPost6 = this.currentBlock;
                        DrawingText drawingTextCreateLayoutForText5 = articleViewer5.createLayoutForText(this, null, tL_pageBlockEmbedPost6.caption.credit, iDp5, this.textY + this.creditOffset, tL_pageBlockEmbedPost6, this.parentAdapter.isRtl ? StaticLayoutEx.ALIGN_RIGHT() : alignment, this.parentAdapter);
                        this.creditLayout = drawingTextCreateLayoutForText5;
                        iDp4 = drawingTextCreateLayoutForText5 != null ? i4 + AndroidUtilities.dp(4.0f) + this.creditLayout.getHeight() : i4;
                    } else {
                        this.captionLayout = null;
                        this.creditLayout = null;
                    }
                    DrawingText drawingText = this.dateLayout;
                    if (drawingText != null) {
                        drawingText.x = AndroidUtilities.dp((this.avatarVisible ? 54 : 0) + 32);
                        this.dateLayout.y = AndroidUtilities.dp(29.0f);
                    }
                    DrawingText drawingText2 = this.captionLayout;
                    if (drawingText2 != null) {
                        drawingText2.x = this.textX;
                        drawingText2.y = this.textY;
                    }
                    DrawingText drawingText3 = this.creditLayout;
                    if (drawingText3 != null) {
                        drawingText3.x = this.textX;
                        drawingText3.y = this.textY;
                    }
                    i3 = iDp4;
                }
                this.lineHeight = i3;
            }
            setMeasuredDimension(size, i3);
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            return ArticleViewer.this.checkLayoutForLinks(this.parentAdapter, motionEvent, this, this.captionLayout, this.textX, this.textY) || ArticleViewer.this.checkLayoutForLinks(this.parentAdapter, motionEvent, this, this.creditLayout, this.textX, this.textY + this.creditOffset) || super.onTouchEvent(motionEvent);
        }

        public void setBlock(TLRPC.TL_pageBlockEmbedPost tL_pageBlockEmbedPost) {
            this.currentBlock = tL_pageBlockEmbedPost;
            requestLayout();
        }
    }

    private class BlockFooterCell extends View implements TextSelectionHelper.ArticleSelectableView {
        private TLRPC.TL_pageBlockFooter currentBlock;
        private WebpageAdapter parentAdapter;
        private DrawingText textLayout;
        private int textX;
        private int textY;

        public BlockFooterCell(Context context, WebpageAdapter webpageAdapter) {
            super(context);
            this.textX = AndroidUtilities.dp(18.0f);
            this.textY = AndroidUtilities.dp(8.0f);
            this.parentAdapter = webpageAdapter;
        }

        @Override // org.telegram.ui.Cells.TextSelectionHelper.ArticleSelectableView
        public void fillTextLayoutBlocks(ArrayList arrayList) {
            DrawingText drawingText = this.textLayout;
            if (drawingText != null) {
                arrayList.add(drawingText);
            }
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            if (this.currentBlock == null) {
                return;
            }
            if (this.textLayout != null) {
                canvas.save();
                canvas.translate(this.textX, this.textY);
                ArticleViewer.this.drawTextSelection(canvas, this);
                this.textLayout.draw(canvas, this);
                canvas.restore();
            }
            if (this.currentBlock.level > 0) {
                canvas.drawRect(AndroidUtilities.dp(18.0f), BitmapDescriptorFactory.HUE_RED, AndroidUtilities.dp(20.0f), getMeasuredHeight() - (this.currentBlock.bottom ? AndroidUtilities.dp(6.0f) : 0), ArticleViewer.quoteLinePaint);
            }
        }

        @Override // android.view.View
        protected void onMeasure(int i, int i2) {
            int height;
            int iDp;
            int size = View.MeasureSpec.getSize(i);
            TLRPC.TL_pageBlockFooter tL_pageBlockFooter = this.currentBlock;
            if (tL_pageBlockFooter != null) {
                height = 0;
                if (tL_pageBlockFooter.level == 0) {
                    this.textY = AndroidUtilities.dp(8.0f);
                    iDp = AndroidUtilities.dp(18.0f);
                } else {
                    this.textY = 0;
                    iDp = AndroidUtilities.dp((r14 * 14) + 18);
                }
                this.textX = iDp;
                DrawingText drawingTextCreateLayoutForText = ArticleViewer.this.createLayoutForText(this, null, this.currentBlock.text, (size - AndroidUtilities.dp(18.0f)) - this.textX, this.textY, this.currentBlock, this.parentAdapter.isRtl ? StaticLayoutEx.ALIGN_RIGHT() : Layout.Alignment.ALIGN_NORMAL, this.parentAdapter);
                this.textLayout = drawingTextCreateLayoutForText;
                if (drawingTextCreateLayoutForText != null) {
                    height = drawingTextCreateLayoutForText.getHeight() + (this.currentBlock.level > 0 ? AndroidUtilities.dp(8.0f) : AndroidUtilities.dp(16.0f));
                    DrawingText drawingText = this.textLayout;
                    drawingText.x = this.textX;
                    drawingText.y = this.textY;
                }
            } else {
                height = 1;
            }
            setMeasuredDimension(size, height);
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            return ArticleViewer.this.checkLayoutForLinks(this.parentAdapter, motionEvent, this, this.textLayout, this.textX, this.textY) || super.onTouchEvent(motionEvent);
        }

        public void setBlock(TLRPC.TL_pageBlockFooter tL_pageBlockFooter) {
            this.currentBlock = tL_pageBlockFooter;
            requestLayout();
        }
    }

    private class BlockHeaderCell extends View implements TextSelectionHelper.ArticleSelectableView {
        private TLRPC.TL_pageBlockHeader currentBlock;
        private WebpageAdapter parentAdapter;
        private DrawingText textLayout;
        private int textX;
        private int textY;

        public BlockHeaderCell(Context context, WebpageAdapter webpageAdapter) {
            super(context);
            this.textX = AndroidUtilities.dp(18.0f);
            this.textY = AndroidUtilities.dp(8.0f);
            this.parentAdapter = webpageAdapter;
        }

        @Override // org.telegram.ui.Cells.TextSelectionHelper.ArticleSelectableView
        public void fillTextLayoutBlocks(ArrayList arrayList) {
            DrawingText drawingText = this.textLayout;
            if (drawingText != null) {
                arrayList.add(drawingText);
            }
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            if (this.currentBlock == null || this.textLayout == null) {
                return;
            }
            canvas.save();
            canvas.translate(this.textX, this.textY);
            ArticleViewer.this.drawTextSelection(canvas, this);
            this.textLayout.draw(canvas, this);
            canvas.restore();
        }

        @Override // android.view.View
        public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            accessibilityNodeInfo.setEnabled(true);
            if (this.textLayout == null) {
                return;
            }
            accessibilityNodeInfo.setText(((Object) this.textLayout.getText()) + ", " + LocaleController.getString(R.string.AccDescrIVHeading));
        }

        @Override // android.view.View
        protected void onMeasure(int i, int i2) {
            int iDp;
            int size = View.MeasureSpec.getSize(i);
            TLRPC.TL_pageBlockHeader tL_pageBlockHeader = this.currentBlock;
            if (tL_pageBlockHeader != null) {
                DrawingText drawingTextCreateLayoutForText = ArticleViewer.this.createLayoutForText(this, null, tL_pageBlockHeader.text, size - AndroidUtilities.dp(36.0f), this.textY, this.currentBlock, this.parentAdapter.isRtl ? StaticLayoutEx.ALIGN_RIGHT() : Layout.Alignment.ALIGN_NORMAL, this.parentAdapter);
                this.textLayout = drawingTextCreateLayoutForText;
                if (drawingTextCreateLayoutForText != null) {
                    iDp = AndroidUtilities.dp(16.0f) + this.textLayout.getHeight();
                    DrawingText drawingText = this.textLayout;
                    drawingText.x = this.textX;
                    drawingText.y = this.textY;
                } else {
                    iDp = 0;
                }
            } else {
                iDp = 1;
            }
            setMeasuredDimension(size, iDp);
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            return ArticleViewer.this.checkLayoutForLinks(this.parentAdapter, motionEvent, this, this.textLayout, this.textX, this.textY) || super.onTouchEvent(motionEvent);
        }

        public void setBlock(TLRPC.TL_pageBlockHeader tL_pageBlockHeader) {
            this.currentBlock = tL_pageBlockHeader;
            requestLayout();
        }
    }

    private class BlockKickerCell extends View implements TextSelectionHelper.ArticleSelectableView {
        private TLRPC.TL_pageBlockKicker currentBlock;
        private WebpageAdapter parentAdapter;
        private DrawingText textLayout;
        private int textX;
        private int textY;

        public BlockKickerCell(Context context, WebpageAdapter webpageAdapter) {
            super(context);
            this.textX = AndroidUtilities.dp(18.0f);
            this.parentAdapter = webpageAdapter;
        }

        @Override // org.telegram.ui.Cells.TextSelectionHelper.ArticleSelectableView
        public void fillTextLayoutBlocks(ArrayList arrayList) {
            DrawingText drawingText = this.textLayout;
            if (drawingText != null) {
                arrayList.add(drawingText);
            }
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            if (this.currentBlock == null || this.textLayout == null) {
                return;
            }
            canvas.save();
            canvas.translate(this.textX, this.textY);
            ArticleViewer.this.drawTextSelection(canvas, this);
            this.textLayout.draw(canvas, this);
            canvas.restore();
        }

        @Override // android.view.View
        protected void onMeasure(int i, int i2) {
            int iDp;
            int size = View.MeasureSpec.getSize(i);
            TLRPC.TL_pageBlockKicker tL_pageBlockKicker = this.currentBlock;
            if (tL_pageBlockKicker != null) {
                if (tL_pageBlockKicker.first) {
                    this.textY = AndroidUtilities.dp(16.0f);
                    iDp = AndroidUtilities.dp(8.0f);
                } else {
                    this.textY = AndroidUtilities.dp(8.0f);
                    iDp = 0;
                }
                DrawingText drawingTextCreateLayoutForText = ArticleViewer.this.createLayoutForText(this, null, this.currentBlock.text, size - AndroidUtilities.dp(36.0f), this.textY, this.currentBlock, this.parentAdapter.isRtl ? StaticLayoutEx.ALIGN_RIGHT() : Layout.Alignment.ALIGN_NORMAL, this.parentAdapter);
                this.textLayout = drawingTextCreateLayoutForText;
                if (drawingTextCreateLayoutForText != null) {
                    iDp += AndroidUtilities.dp(16.0f) + this.textLayout.getHeight();
                    DrawingText drawingText = this.textLayout;
                    drawingText.x = this.textX;
                    drawingText.y = this.textY;
                }
            } else {
                iDp = 1;
            }
            setMeasuredDimension(size, iDp);
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            return ArticleViewer.this.checkLayoutForLinks(this.parentAdapter, motionEvent, this, this.textLayout, this.textX, this.textY) || super.onTouchEvent(motionEvent);
        }

        public void setBlock(TLRPC.TL_pageBlockKicker tL_pageBlockKicker) {
            this.currentBlock = tL_pageBlockKicker;
            requestLayout();
        }
    }

    private class BlockListItemCell extends ViewGroup implements TextSelectionHelper.ArticleSelectableView {
        private RecyclerView.ViewHolder blockLayout;
        private int blockX;
        private int blockY;
        private TL_pageBlockListItem currentBlock;
        private int currentBlockType;
        private boolean drawDot;
        private int numOffsetY;
        private WebpageAdapter parentAdapter;
        private DrawingText textLayout;
        private int textX;
        private int textY;
        private boolean verticalAlign;

        public BlockListItemCell(Context context, WebpageAdapter webpageAdapter) {
            super(context);
            this.parentAdapter = webpageAdapter;
            setWillNotDraw(false);
        }

        @Override // org.telegram.ui.Cells.TextSelectionHelper.ArticleSelectableView
        public void fillTextLayoutBlocks(ArrayList arrayList) {
            RecyclerView.ViewHolder viewHolder = this.blockLayout;
            if (viewHolder != null) {
                KeyEvent.Callback callback = viewHolder.itemView;
                if (callback instanceof TextSelectionHelper.ArticleSelectableView) {
                    ((TextSelectionHelper.ArticleSelectableView) callback).fillTextLayoutBlocks(arrayList);
                }
            }
            DrawingText drawingText = this.textLayout;
            if (drawingText != null) {
                arrayList.add(drawingText);
            }
        }

        @Override // android.view.View, org.telegram.ui.Cells.TextSelectionHelper.SelectableView
        public void invalidate() {
            super.invalidate();
            RecyclerView.ViewHolder viewHolder = this.blockLayout;
            if (viewHolder != null) {
                viewHolder.itemView.invalidate();
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:14:0x0088 A[PHI: r0 r1
          0x0088: PHI (r0v12 float) = (r0v11 float), (r0v19 float) binds: [B:13:0x0086, B:10:0x004a] A[DONT_GENERATE, DONT_INLINE]
          0x0088: PHI (r1v19 int) = (r1v18 int), (r1v32 int) binds: [B:13:0x0086, B:10:0x004a] A[DONT_GENERATE, DONT_INLINE]] */
        @Override // android.view.View
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        protected void onDraw(Canvas canvas) {
            float fDp;
            int i;
            if (this.currentBlock == null) {
                return;
            }
            int measuredWidth = getMeasuredWidth();
            if (this.currentBlock.numLayout != null) {
                canvas.save();
                int iDp = 0;
                if (this.parentAdapter.isRtl) {
                    fDp = ((measuredWidth - AndroidUtilities.dp(15.0f)) - this.currentBlock.parent.maxNumWidth) - (this.currentBlock.parent.level * AndroidUtilities.dp(12.0f));
                    i = this.textY + this.numOffsetY;
                    if (this.drawDot) {
                        iDp = AndroidUtilities.dp(1.0f);
                    }
                    canvas.translate(fDp, i - iDp);
                    this.currentBlock.numLayout.draw(canvas, this);
                    canvas.restore();
                } else {
                    fDp = ((AndroidUtilities.dp(15.0f) + this.currentBlock.parent.maxNumWidth) - ((int) Math.ceil(this.currentBlock.numLayout.getLineWidth(0)))) + (this.currentBlock.parent.level * AndroidUtilities.dp(12.0f));
                    i = this.textY + this.numOffsetY;
                    if (this.drawDot) {
                    }
                    canvas.translate(fDp, i - iDp);
                    this.currentBlock.numLayout.draw(canvas, this);
                    canvas.restore();
                }
            }
            if (this.textLayout != null) {
                canvas.save();
                canvas.translate(this.textX, this.textY);
                ArticleViewer.this.drawTextSelection(canvas, this);
                this.textLayout.draw(canvas, this);
                canvas.restore();
            }
        }

        @Override // android.view.View
        public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            accessibilityNodeInfo.setEnabled(true);
            DrawingText drawingText = this.textLayout;
            if (drawingText == null) {
                return;
            }
            accessibilityNodeInfo.setText(drawingText.getText());
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
            RecyclerView.ViewHolder viewHolder = this.blockLayout;
            if (viewHolder != null) {
                View view = viewHolder.itemView;
                int i5 = this.blockX;
                view.layout(i5, this.blockY, view.getMeasuredWidth() + i5, this.blockY + this.blockLayout.itemView.getMeasuredHeight());
            }
        }

        @Override // android.view.View
        protected void onMeasure(int i, int i2) {
            TL_pageBlockListParent tL_pageBlockListParent;
            int iDp;
            int iDp2;
            boolean z;
            BlockParagraphCell blockParagraphCell;
            DrawingText drawingText;
            int size = View.MeasureSpec.getSize(i);
            TL_pageBlockListItem tL_pageBlockListItem = this.currentBlock;
            int i3 = 1;
            if (tL_pageBlockListItem != null) {
                this.textLayout = null;
                int iDp3 = 0;
                this.textY = (tL_pageBlockListItem.index == 0 && this.currentBlock.parent.level == 0) ? AndroidUtilities.dp(10.0f) : 0;
                this.numOffsetY = 0;
                if (this.currentBlock.parent.lastMaxNumCalcWidth != size || this.currentBlock.parent.lastFontSize != SharedConfig.ivFontSize) {
                    this.currentBlock.parent.lastMaxNumCalcWidth = size;
                    this.currentBlock.parent.lastFontSize = SharedConfig.ivFontSize;
                    this.currentBlock.parent.maxNumWidth = 0;
                    int size2 = this.currentBlock.parent.items.size();
                    int i4 = 0;
                    while (true) {
                        tL_pageBlockListParent = this.currentBlock.parent;
                        if (i4 >= size2) {
                            break;
                        }
                        TL_pageBlockListItem tL_pageBlockListItem2 = (TL_pageBlockListItem) tL_pageBlockListParent.items.get(i4);
                        if (tL_pageBlockListItem2.num != null) {
                            tL_pageBlockListItem2.numLayout = ArticleViewer.this.createLayoutForText(this, tL_pageBlockListItem2.num, null, size - AndroidUtilities.dp(54.0f), this.textY, this.currentBlock, this.parentAdapter);
                            this.currentBlock.parent.maxNumWidth = Math.max(this.currentBlock.parent.maxNumWidth, (int) Math.ceil(tL_pageBlockListItem2.numLayout.getLineWidth(0)));
                        }
                        i4++;
                    }
                    tL_pageBlockListParent.maxNumWidth = Math.max(this.currentBlock.parent.maxNumWidth, (int) Math.ceil(ArticleViewer.listTextNumPaint.measureText("00.")));
                }
                this.drawDot = !this.currentBlock.parent.pageBlockList.ordered;
                this.textX = this.parentAdapter.isRtl ? AndroidUtilities.dp(18.0f) : AndroidUtilities.dp(24.0f) + this.currentBlock.parent.maxNumWidth + (this.currentBlock.parent.level * AndroidUtilities.dp(12.0f));
                int iDp4 = (size - AndroidUtilities.dp(18.0f)) - this.textX;
                if (this.parentAdapter.isRtl) {
                    iDp4 -= (AndroidUtilities.dp(6.0f) + this.currentBlock.parent.maxNumWidth) + (this.currentBlock.parent.level * AndroidUtilities.dp(12.0f));
                }
                int iDp5 = iDp4;
                if (this.currentBlock.textItem != null) {
                    DrawingText drawingTextCreateLayoutForText = ArticleViewer.this.createLayoutForText(this, null, this.currentBlock.textItem, iDp5, this.textY, this.currentBlock, this.parentAdapter.isRtl ? StaticLayoutEx.ALIGN_RIGHT() : Layout.Alignment.ALIGN_NORMAL, this.parentAdapter);
                    this.textLayout = drawingTextCreateLayoutForText;
                    if (drawingTextCreateLayoutForText != null && drawingTextCreateLayoutForText.getLineCount() > 0) {
                        if (this.currentBlock.numLayout != null && this.currentBlock.numLayout.getLineCount() > 0) {
                            this.numOffsetY = (this.currentBlock.numLayout.getLineAscent(0) + AndroidUtilities.dp(2.5f)) - this.textLayout.getLineAscent(0);
                        }
                        iDp3 = this.textLayout.getHeight() + AndroidUtilities.dp(8.0f);
                    }
                } else if (this.currentBlock.blockItem != null) {
                    this.blockX = this.textX;
                    int i5 = this.textY;
                    this.blockY = i5;
                    RecyclerView.ViewHolder viewHolder = this.blockLayout;
                    if (viewHolder != null) {
                        View view = viewHolder.itemView;
                        if (view instanceof BlockParagraphCell) {
                            this.blockY = i5 - AndroidUtilities.dp(8.0f);
                            if (!this.parentAdapter.isRtl) {
                                this.blockX -= AndroidUtilities.dp(18.0f);
                            }
                            iDp5 += AndroidUtilities.dp(18.0f);
                            iDp2 = 0 - AndroidUtilities.dp(8.0f);
                        } else {
                            if ((view instanceof BlockHeaderCell) || (view instanceof BlockSubheaderCell) || (view instanceof BlockTitleCell) || (view instanceof BlockSubtitleCell)) {
                                if (!this.parentAdapter.isRtl) {
                                    this.blockX -= AndroidUtilities.dp(18.0f);
                                }
                                iDp = AndroidUtilities.dp(18.0f);
                            } else if (ArticleViewer.this.isListItemBlock(this.currentBlock.blockItem)) {
                                this.blockX = 0;
                                this.blockY = 0;
                                this.textY = 0;
                                iDp2 = ((this.currentBlock.index == 0 && this.currentBlock.parent.level == 0) ? 0 - AndroidUtilities.dp(10.0f) : 0) - AndroidUtilities.dp(8.0f);
                                iDp5 = size;
                            } else {
                                if (this.blockLayout.itemView instanceof BlockTableCell) {
                                    this.blockX -= AndroidUtilities.dp(18.0f);
                                    iDp = AndroidUtilities.dp(36.0f);
                                }
                                iDp2 = 0;
                            }
                            iDp5 += iDp;
                            iDp2 = 0;
                        }
                        this.blockLayout.itemView.measure(View.MeasureSpec.makeMeasureSpec(iDp5, 1073741824), View.MeasureSpec.makeMeasureSpec(0, 0));
                        if ((this.blockLayout.itemView instanceof BlockParagraphCell) && this.currentBlock.numLayout != null && this.currentBlock.numLayout.getLineCount() > 0 && (drawingText = (blockParagraphCell = (BlockParagraphCell) this.blockLayout.itemView).textLayout) != null && drawingText.getLineCount() > 0) {
                            this.numOffsetY = (this.currentBlock.numLayout.getLineAscent(0) + AndroidUtilities.dp(2.5f)) - blockParagraphCell.textLayout.getLineAscent(0);
                        }
                        if (this.currentBlock.blockItem instanceof TLRPC.TL_pageBlockDetails) {
                            this.verticalAlign = true;
                            this.blockY = 0;
                            if (this.currentBlock.index == 0 && this.currentBlock.parent.level == 0) {
                                iDp2 -= AndroidUtilities.dp(10.0f);
                            }
                            iDp2 -= AndroidUtilities.dp(8.0f);
                        } else {
                            View view2 = this.blockLayout.itemView;
                            if (view2 instanceof BlockOrderedListItemCell) {
                                z = ((BlockOrderedListItemCell) view2).verticalAlign;
                            } else if (view2 instanceof BlockListItemCell) {
                                z = ((BlockListItemCell) view2).verticalAlign;
                            }
                            this.verticalAlign = z;
                        }
                        if (this.verticalAlign && this.currentBlock.numLayout != null) {
                            this.textY = ((this.blockLayout.itemView.getMeasuredHeight() - this.currentBlock.numLayout.getHeight()) / 2) - AndroidUtilities.dp(4.0f);
                            this.drawDot = false;
                        }
                        iDp3 = iDp2 + this.blockLayout.itemView.getMeasuredHeight();
                    }
                    iDp3 += AndroidUtilities.dp(8.0f);
                }
                if (this.currentBlock.parent.items.get(this.currentBlock.parent.items.size() - 1) == this.currentBlock) {
                    iDp3 += AndroidUtilities.dp(8.0f);
                }
                if (this.currentBlock.index == 0 && this.currentBlock.parent.level == 0) {
                    iDp3 += AndroidUtilities.dp(10.0f);
                }
                i3 = iDp3;
                DrawingText drawingText2 = this.textLayout;
                if (drawingText2 != null) {
                    drawingText2.x = this.textX;
                    drawingText2.y = this.textY;
                }
                RecyclerView.ViewHolder viewHolder2 = this.blockLayout;
                if (viewHolder2 != null && (viewHolder2.itemView instanceof TextSelectionHelper.ArticleSelectableView)) {
                    ArticleViewer.this.textSelectionHelper.arrayList.clear();
                    ((TextSelectionHelper.ArticleSelectableView) this.blockLayout.itemView).fillTextLayoutBlocks(ArticleViewer.this.textSelectionHelper.arrayList);
                    Iterator it = ArticleViewer.this.textSelectionHelper.arrayList.iterator();
                    while (it.hasNext()) {
                        TextSelectionHelper.TextLayoutBlock textLayoutBlock = (TextSelectionHelper.TextLayoutBlock) it.next();
                        if (textLayoutBlock instanceof DrawingText) {
                            DrawingText drawingText3 = (DrawingText) textLayoutBlock;
                            drawingText3.x += this.blockX;
                            drawingText3.y += this.blockY;
                        }
                    }
                }
            }
            setMeasuredDimension(size, i3);
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            if (ArticleViewer.this.checkLayoutForLinks(this.parentAdapter, motionEvent, this, this.textLayout, this.textX, this.textY)) {
                return true;
            }
            return super.onTouchEvent(motionEvent);
        }

        public void setBlock(TL_pageBlockListItem tL_pageBlockListItem) throws NoSuchFieldException, SecurityException {
            if (this.currentBlock != tL_pageBlockListItem) {
                this.currentBlock = tL_pageBlockListItem;
                RecyclerView.ViewHolder viewHolder = this.blockLayout;
                if (viewHolder != null) {
                    removeView(viewHolder.itemView);
                    this.blockLayout = null;
                }
                if (this.currentBlock.blockItem != null) {
                    int typeForBlock = this.parentAdapter.getTypeForBlock(this.currentBlock.blockItem);
                    this.currentBlockType = typeForBlock;
                    RecyclerView.ViewHolder viewHolderOnCreateViewHolder = this.parentAdapter.onCreateViewHolder(this, typeForBlock);
                    this.blockLayout = viewHolderOnCreateViewHolder;
                    addView(viewHolderOnCreateViewHolder.itemView);
                }
            }
            if (this.currentBlock.blockItem != null) {
                this.parentAdapter.bindBlockToHolder(this.currentBlockType, this.blockLayout, this.currentBlock.blockItem, 0, 0, false);
            }
            requestLayout();
        }
    }

    private class BlockMapCell extends FrameLayout implements TextSelectionHelper.ArticleSelectableView {
        private DrawingText captionLayout;
        private DrawingText creditLayout;
        private int creditOffset;
        private TLRPC.TL_pageBlockMap currentBlock;
        private int currentMapProvider;
        private int currentType;
        private ImageReceiver imageView;
        private boolean isFirst;
        private WebpageAdapter parentAdapter;
        private boolean photoPressed;
        private int textX;
        private int textY;

        public BlockMapCell(Context context, WebpageAdapter webpageAdapter, int i) {
            super(context);
            this.parentAdapter = webpageAdapter;
            setWillNotDraw(false);
            this.imageView = new ImageReceiver(this);
            this.currentType = i;
        }

        @Override // org.telegram.ui.Cells.TextSelectionHelper.ArticleSelectableView
        public void fillTextLayoutBlocks(ArrayList arrayList) {
            DrawingText drawingText = this.captionLayout;
            if (drawingText != null) {
                arrayList.add(drawingText);
            }
            DrawingText drawingText2 = this.creditLayout;
            if (drawingText2 != null) {
                arrayList.add(drawingText2);
            }
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            int i;
            if (this.currentBlock == null) {
                return;
            }
            Theme.chat_docBackPaint.setColor(ArticleViewer.this.getThemedColor(Theme.key_chat_inLocationBackground));
            canvas.drawRect(this.imageView.getImageX(), this.imageView.getImageY(), this.imageView.getImageX2(), this.imageView.getImageY2(), Theme.chat_docBackPaint);
            int centerX = (int) (this.imageView.getCenterX() - (Theme.chat_locationDrawable[0].getIntrinsicWidth() / 2));
            int centerY = (int) (this.imageView.getCenterY() - (Theme.chat_locationDrawable[0].getIntrinsicHeight() / 2));
            Drawable drawable = Theme.chat_locationDrawable[0];
            drawable.setBounds(centerX, centerY, drawable.getIntrinsicWidth() + centerX, Theme.chat_locationDrawable[0].getIntrinsicHeight() + centerY);
            Theme.chat_locationDrawable[0].draw(canvas);
            this.imageView.draw(canvas);
            if (this.currentMapProvider == 2 && this.imageView.hasNotThumb()) {
                if (ArticleViewer.this.chat_redLocationIcon == null) {
                    ArticleViewer.this.chat_redLocationIcon = ContextCompat.getDrawable(getContext(), R.drawable.map_pin).mutate();
                }
                int intrinsicWidth = (int) (ArticleViewer.this.chat_redLocationIcon.getIntrinsicWidth() * 0.8f);
                int intrinsicHeight = (int) (ArticleViewer.this.chat_redLocationIcon.getIntrinsicHeight() * 0.8f);
                int imageX = (int) (this.imageView.getImageX() + ((this.imageView.getImageWidth() - intrinsicWidth) / 2.0f));
                int imageY = (int) (this.imageView.getImageY() + ((this.imageView.getImageHeight() / 2.0f) - intrinsicHeight));
                ArticleViewer.this.chat_redLocationIcon.setAlpha((int) (this.imageView.getCurrentAlpha() * 255.0f));
                ArticleViewer.this.chat_redLocationIcon.setBounds(imageX, imageY, intrinsicWidth + imageX, intrinsicHeight + imageY);
                ArticleViewer.this.chat_redLocationIcon.draw(canvas);
            }
            if (this.captionLayout != null) {
                canvas.save();
                canvas.translate(this.textX, this.textY);
                ArticleViewer.this.drawTextSelection(canvas, this, 0);
                this.captionLayout.draw(canvas, this);
                canvas.restore();
                i = 1;
            } else {
                i = 0;
            }
            if (this.creditLayout != null) {
                canvas.save();
                canvas.translate(this.textX, this.textY + this.creditOffset);
                ArticleViewer.this.drawTextSelection(canvas, this, i);
                this.creditLayout.draw(canvas, this);
                canvas.restore();
            }
            if (this.currentBlock.level > 0) {
                canvas.drawRect(AndroidUtilities.dp(18.0f), BitmapDescriptorFactory.HUE_RED, AndroidUtilities.dp(20.0f), getMeasuredHeight() - (this.currentBlock.bottom ? AndroidUtilities.dp(6.0f) : 0), ArticleViewer.quoteLinePaint);
            }
        }

        @Override // android.view.View
        public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            accessibilityNodeInfo.setEnabled(true);
            StringBuilder sb = new StringBuilder(LocaleController.getString(R.string.Map));
            if (this.captionLayout != null) {
                sb.append(", ");
                sb.append(this.captionLayout.getText());
            }
            accessibilityNodeInfo.setText(sb.toString());
        }

        /* JADX WARN: Removed duplicated region for block: B:22:0x009d A[PHI: r0
          0x009d: PHI (r0v3 int) = (r0v2 int), (r0v42 int) binds: [B:18:0x0060, B:20:0x0087] A[DONT_GENERATE, DONT_INLINE]] */
        @Override // android.widget.FrameLayout, android.view.View
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        protected void onMeasure(int i, int i2) {
            int measuredWidth;
            int iDp;
            int iDp2;
            int iDp3;
            int i3;
            int i4;
            int size = View.MeasureSpec.getSize(i);
            int i5 = this.currentType;
            int iDp4 = 0;
            int iDp5 = 1;
            if (i5 == 1) {
                measuredWidth = ((View) getParent()).getMeasuredWidth();
                size = ((View) getParent()).getMeasuredHeight();
            } else {
                measuredWidth = size;
                if (i5 != 2) {
                    size = 0;
                }
            }
            TLRPC.TL_pageBlockMap tL_pageBlockMap = this.currentBlock;
            if (tL_pageBlockMap != null) {
                if (this.currentType != 0 || (i4 = tL_pageBlockMap.level) <= 0) {
                    this.textX = AndroidUtilities.dp(18.0f);
                    iDp = measuredWidth - AndroidUtilities.dp(36.0f);
                    iDp2 = measuredWidth;
                } else {
                    iDp4 = AndroidUtilities.dp(18.0f) + AndroidUtilities.dp(i4 * 14);
                    this.textX = iDp4;
                    iDp2 = measuredWidth - (AndroidUtilities.dp(18.0f) + iDp4);
                    iDp = iDp2;
                }
                if (this.currentType == 0) {
                    TLRPC.TL_pageBlockMap tL_pageBlockMap2 = this.currentBlock;
                    size = (int) ((iDp2 / tL_pageBlockMap2.w) * tL_pageBlockMap2.h);
                    Point point = AndroidUtilities.displaySize;
                    int iMax = (int) ((Math.max(point.x, point.y) - AndroidUtilities.dp(56.0f)) * 0.9f);
                    if (size > iMax) {
                        TLRPC.TL_pageBlockMap tL_pageBlockMap3 = this.currentBlock;
                        iDp2 = (int) ((iMax / tL_pageBlockMap3.h) * tL_pageBlockMap3.w);
                        iDp4 += ((measuredWidth - iDp4) - iDp2) / 2;
                        iDp3 = iMax;
                    } else {
                        iDp3 = size;
                    }
                    ImageReceiver imageReceiver = this.imageView;
                    float f = iDp4;
                    float fDp = (this.isFirst || (i3 = this.currentType) == 1 || i3 == 2 || this.currentBlock.level > 0) ? BitmapDescriptorFactory.HUE_RED : AndroidUtilities.dp(8.0f);
                    float f2 = iDp2;
                    float f3 = iDp3;
                    imageReceiver.setImageCoords(f, fDp, f2, f3);
                    int i6 = ArticleViewer.this.currentAccount;
                    TLRPC.GeoPoint geoPoint = this.currentBlock.geo;
                    double d = geoPoint.lat;
                    double d2 = geoPoint._long;
                    float f4 = AndroidUtilities.density;
                    String strFormapMapUrl = AndroidUtilities.formapMapUrl(i6, d, d2, (int) (f2 / f4), (int) (f3 / f4), true, 15, -1);
                    TLRPC.GeoPoint geoPoint2 = this.currentBlock.geo;
                    float f5 = AndroidUtilities.density;
                    WebFile webFileCreateWithGeoPoint = WebFile.createWithGeoPoint(geoPoint2, (int) (f2 / f5), (int) (f3 / f5), 15, Math.min(2, (int) Math.ceil(f5)));
                    int i7 = MessagesController.getInstance(ArticleViewer.this.currentAccount).mapProvider;
                    this.currentMapProvider = i7;
                    if (i7 == 2) {
                        if (webFileCreateWithGeoPoint != null) {
                            this.imageView.setImage(ImageLocation.getForWebFile(webFileCreateWithGeoPoint), null, null, null, this.parentAdapter.currentPage, 0);
                        }
                    } else if (strFormapMapUrl != null) {
                        this.imageView.setImage(strFormapMapUrl, null, null, null, 0L);
                    }
                    int imageY = (int) (this.imageView.getImageY() + this.imageView.getImageHeight() + AndroidUtilities.dp(8.0f));
                    this.textY = imageY;
                    if (this.currentType == 0) {
                        ArticleViewer articleViewer = ArticleViewer.this;
                        TLRPC.TL_pageBlockMap tL_pageBlockMap4 = this.currentBlock;
                        DrawingText drawingTextCreateLayoutForText = articleViewer.createLayoutForText(this, null, tL_pageBlockMap4.caption.text, iDp, imageY, tL_pageBlockMap4, this.parentAdapter);
                        this.captionLayout = drawingTextCreateLayoutForText;
                        if (drawingTextCreateLayoutForText != null) {
                            int iDp6 = AndroidUtilities.dp(4.0f) + this.captionLayout.getHeight();
                            this.creditOffset = iDp6;
                            iDp3 += iDp6 + AndroidUtilities.dp(4.0f);
                            DrawingText drawingText = this.captionLayout;
                            drawingText.x = this.textX;
                            drawingText.y = this.textY;
                        }
                        ArticleViewer articleViewer2 = ArticleViewer.this;
                        TLRPC.TL_pageBlockMap tL_pageBlockMap5 = this.currentBlock;
                        DrawingText drawingTextCreateLayoutForText2 = articleViewer2.createLayoutForText(this, null, tL_pageBlockMap5.caption.credit, iDp, this.textY + this.creditOffset, tL_pageBlockMap5, this.parentAdapter.isRtl ? StaticLayoutEx.ALIGN_RIGHT() : Layout.Alignment.ALIGN_NORMAL, this.parentAdapter);
                        this.creditLayout = drawingTextCreateLayoutForText2;
                        if (drawingTextCreateLayoutForText2 != null) {
                            iDp3 += AndroidUtilities.dp(4.0f) + this.creditLayout.getHeight();
                            DrawingText drawingText2 = this.creditLayout;
                            drawingText2.x = this.textX;
                            drawingText2.y = this.textY + this.creditOffset;
                        }
                    }
                    if (!this.isFirst && this.currentType == 0 && this.currentBlock.level <= 0) {
                        iDp3 += AndroidUtilities.dp(8.0f);
                    }
                    iDp5 = iDp3;
                    if (this.currentType != 2) {
                        iDp5 += AndroidUtilities.dp(8.0f);
                    }
                }
            }
            setMeasuredDimension(measuredWidth, iDp5);
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            if (motionEvent.getAction() == 0 && this.imageView.isInsideImage(x, y)) {
                this.photoPressed = true;
            } else if (motionEvent.getAction() == 1 && this.photoPressed) {
                this.photoPressed = false;
                try {
                    TLRPC.GeoPoint geoPoint = this.currentBlock.geo;
                    double d = geoPoint.lat;
                    double d2 = geoPoint._long;
                    ArticleViewer.this.parentActivity.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("geo:" + d + "," + d2 + "?q=" + d + "," + d2)));
                } catch (Exception e) {
                    FileLog.e(e);
                }
            } else if (motionEvent.getAction() == 3) {
                this.photoPressed = false;
            }
            return this.photoPressed || ArticleViewer.this.checkLayoutForLinks(this.parentAdapter, motionEvent, this, this.captionLayout, this.textX, this.textY) || ArticleViewer.this.checkLayoutForLinks(this.parentAdapter, motionEvent, this, this.creditLayout, this.textX, this.textY + this.creditOffset) || super.onTouchEvent(motionEvent);
        }

        public void setBlock(TLRPC.TL_pageBlockMap tL_pageBlockMap, boolean z, boolean z2) {
            this.currentBlock = tL_pageBlockMap;
            this.isFirst = z;
            requestLayout();
        }
    }

    private class BlockOrderedListItemCell extends ViewGroup implements TextSelectionHelper.ArticleSelectableView {
        private RecyclerView.ViewHolder blockLayout;
        private int blockX;
        private int blockY;
        private TL_pageBlockOrderedListItem currentBlock;
        private int currentBlockType;
        private int numOffsetY;
        private WebpageAdapter parentAdapter;
        private DrawingText textLayout;
        private int textX;
        private int textY;
        private boolean verticalAlign;

        public BlockOrderedListItemCell(Context context, WebpageAdapter webpageAdapter) {
            super(context);
            this.parentAdapter = webpageAdapter;
            setWillNotDraw(false);
        }

        @Override // org.telegram.ui.Cells.TextSelectionHelper.ArticleSelectableView
        public void fillTextLayoutBlocks(ArrayList arrayList) {
            RecyclerView.ViewHolder viewHolder = this.blockLayout;
            if (viewHolder != null) {
                KeyEvent.Callback callback = viewHolder.itemView;
                if (callback instanceof TextSelectionHelper.ArticleSelectableView) {
                    ((TextSelectionHelper.ArticleSelectableView) callback).fillTextLayoutBlocks(arrayList);
                }
            }
            DrawingText drawingText = this.textLayout;
            if (drawingText != null) {
                arrayList.add(drawingText);
            }
        }

        @Override // android.view.View, org.telegram.ui.Cells.TextSelectionHelper.SelectableView
        public void invalidate() {
            super.invalidate();
            RecyclerView.ViewHolder viewHolder = this.blockLayout;
            if (viewHolder != null) {
                viewHolder.itemView.invalidate();
            }
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            if (this.currentBlock == null) {
                return;
            }
            int measuredWidth = getMeasuredWidth();
            if (this.currentBlock.numLayout != null) {
                canvas.save();
                canvas.translate(this.parentAdapter.isRtl ? ((measuredWidth - AndroidUtilities.dp(18.0f)) - this.currentBlock.parent.maxNumWidth) - (this.currentBlock.parent.level * AndroidUtilities.dp(20.0f)) : ((AndroidUtilities.dp(18.0f) + this.currentBlock.parent.maxNumWidth) - ((int) Math.ceil(this.currentBlock.numLayout.getLineWidth(0)))) + (this.currentBlock.parent.level * AndroidUtilities.dp(20.0f)), this.textY + this.numOffsetY);
                this.currentBlock.numLayout.draw(canvas, this);
                canvas.restore();
            }
            if (this.textLayout != null) {
                canvas.save();
                canvas.translate(this.textX, this.textY);
                ArticleViewer.this.drawTextSelection(canvas, this);
                this.textLayout.draw(canvas, this);
                canvas.restore();
            }
        }

        @Override // android.view.View
        public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            accessibilityNodeInfo.setEnabled(true);
            DrawingText drawingText = this.textLayout;
            if (drawingText == null) {
                return;
            }
            accessibilityNodeInfo.setText(drawingText.getText());
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
            RecyclerView.ViewHolder viewHolder = this.blockLayout;
            if (viewHolder != null) {
                View view = viewHolder.itemView;
                int i5 = this.blockX;
                view.layout(i5, this.blockY, view.getMeasuredWidth() + i5, this.blockY + this.blockLayout.itemView.getMeasuredHeight());
            }
        }

        @Override // android.view.View
        protected void onMeasure(int i, int i2) {
            TL_pageBlockOrderedListParent tL_pageBlockOrderedListParent;
            int iDp;
            int iDp2;
            boolean z;
            BlockParagraphCell blockParagraphCell;
            DrawingText drawingText;
            int size = View.MeasureSpec.getSize(i);
            TL_pageBlockOrderedListItem tL_pageBlockOrderedListItem = this.currentBlock;
            int i3 = 1;
            if (tL_pageBlockOrderedListItem != null) {
                this.textLayout = null;
                int iDp3 = 0;
                this.textY = (tL_pageBlockOrderedListItem.index == 0 && this.currentBlock.parent.level == 0) ? AndroidUtilities.dp(10.0f) : 0;
                this.numOffsetY = 0;
                if (this.currentBlock.parent.lastMaxNumCalcWidth != size || this.currentBlock.parent.lastFontSize != SharedConfig.ivFontSize) {
                    this.currentBlock.parent.lastMaxNumCalcWidth = size;
                    this.currentBlock.parent.lastFontSize = SharedConfig.ivFontSize;
                    this.currentBlock.parent.maxNumWidth = 0;
                    int size2 = this.currentBlock.parent.items.size();
                    int i4 = 0;
                    while (true) {
                        tL_pageBlockOrderedListParent = this.currentBlock.parent;
                        if (i4 >= size2) {
                            break;
                        }
                        TL_pageBlockOrderedListItem tL_pageBlockOrderedListItem2 = (TL_pageBlockOrderedListItem) tL_pageBlockOrderedListParent.items.get(i4);
                        if (tL_pageBlockOrderedListItem2.num != null) {
                            tL_pageBlockOrderedListItem2.numLayout = ArticleViewer.this.createLayoutForText(this, tL_pageBlockOrderedListItem2.num, null, size - AndroidUtilities.dp(54.0f), this.textY, this.currentBlock, this.parentAdapter);
                            this.currentBlock.parent.maxNumWidth = Math.max(this.currentBlock.parent.maxNumWidth, (int) Math.ceil(tL_pageBlockOrderedListItem2.numLayout.getLineWidth(0)));
                        }
                        i4++;
                    }
                    tL_pageBlockOrderedListParent.maxNumWidth = Math.max(this.currentBlock.parent.maxNumWidth, (int) Math.ceil(ArticleViewer.listTextNumPaint.measureText("00.")));
                }
                this.textX = this.parentAdapter.isRtl ? AndroidUtilities.dp(18.0f) : AndroidUtilities.dp(24.0f) + this.currentBlock.parent.maxNumWidth + (this.currentBlock.parent.level * AndroidUtilities.dp(20.0f));
                this.verticalAlign = false;
                int iDp4 = (size - AndroidUtilities.dp(18.0f)) - this.textX;
                if (this.parentAdapter.isRtl) {
                    iDp4 -= (AndroidUtilities.dp(6.0f) + this.currentBlock.parent.maxNumWidth) + (this.currentBlock.parent.level * AndroidUtilities.dp(20.0f));
                }
                int iDp5 = iDp4;
                if (this.currentBlock.textItem != null) {
                    DrawingText drawingTextCreateLayoutForText = ArticleViewer.this.createLayoutForText(this, null, this.currentBlock.textItem, iDp5, this.textY, this.currentBlock, this.parentAdapter.isRtl ? StaticLayoutEx.ALIGN_RIGHT() : Layout.Alignment.ALIGN_NORMAL, this.parentAdapter);
                    this.textLayout = drawingTextCreateLayoutForText;
                    if (drawingTextCreateLayoutForText != null && drawingTextCreateLayoutForText.getLineCount() > 0) {
                        if (this.currentBlock.numLayout != null && this.currentBlock.numLayout.getLineCount() > 0) {
                            this.numOffsetY = this.currentBlock.numLayout.getLineAscent(0) - this.textLayout.getLineAscent(0);
                        }
                        iDp3 = this.textLayout.getHeight() + AndroidUtilities.dp(8.0f);
                    }
                } else if (this.currentBlock.blockItem != null) {
                    this.blockX = this.textX;
                    int i5 = this.textY;
                    this.blockY = i5;
                    RecyclerView.ViewHolder viewHolder = this.blockLayout;
                    if (viewHolder != null) {
                        View view = viewHolder.itemView;
                        if (view instanceof BlockParagraphCell) {
                            this.blockY = i5 - AndroidUtilities.dp(8.0f);
                            if (!this.parentAdapter.isRtl) {
                                this.blockX -= AndroidUtilities.dp(18.0f);
                            }
                            iDp5 += AndroidUtilities.dp(18.0f);
                            iDp2 = 0 - AndroidUtilities.dp(8.0f);
                        } else {
                            if ((view instanceof BlockHeaderCell) || (view instanceof BlockSubheaderCell) || (view instanceof BlockTitleCell) || (view instanceof BlockSubtitleCell)) {
                                if (!this.parentAdapter.isRtl) {
                                    this.blockX -= AndroidUtilities.dp(18.0f);
                                }
                                iDp = AndroidUtilities.dp(18.0f);
                            } else if (ArticleViewer.this.isListItemBlock(this.currentBlock.blockItem)) {
                                this.blockX = 0;
                                this.blockY = 0;
                                this.textY = 0;
                                iDp2 = 0 - AndroidUtilities.dp(8.0f);
                                iDp5 = size;
                            } else {
                                if (this.blockLayout.itemView instanceof BlockTableCell) {
                                    this.blockX -= AndroidUtilities.dp(18.0f);
                                    iDp = AndroidUtilities.dp(36.0f);
                                }
                                iDp2 = 0;
                            }
                            iDp5 += iDp;
                            iDp2 = 0;
                        }
                        this.blockLayout.itemView.measure(View.MeasureSpec.makeMeasureSpec(iDp5, 1073741824), View.MeasureSpec.makeMeasureSpec(0, 0));
                        if ((this.blockLayout.itemView instanceof BlockParagraphCell) && this.currentBlock.numLayout != null && this.currentBlock.numLayout.getLineCount() > 0 && (drawingText = (blockParagraphCell = (BlockParagraphCell) this.blockLayout.itemView).textLayout) != null && drawingText.getLineCount() > 0) {
                            this.numOffsetY = this.currentBlock.numLayout.getLineAscent(0) - blockParagraphCell.textLayout.getLineAscent(0);
                        }
                        if (this.currentBlock.blockItem instanceof TLRPC.TL_pageBlockDetails) {
                            this.verticalAlign = true;
                            this.blockY = 0;
                            iDp2 -= AndroidUtilities.dp(8.0f);
                        } else {
                            View view2 = this.blockLayout.itemView;
                            if (view2 instanceof BlockOrderedListItemCell) {
                                z = ((BlockOrderedListItemCell) view2).verticalAlign;
                            } else if (view2 instanceof BlockListItemCell) {
                                z = ((BlockListItemCell) view2).verticalAlign;
                            }
                            this.verticalAlign = z;
                        }
                        if (this.verticalAlign && this.currentBlock.numLayout != null) {
                            this.textY = (this.blockLayout.itemView.getMeasuredHeight() - this.currentBlock.numLayout.getHeight()) / 2;
                        }
                        iDp3 = iDp2 + this.blockLayout.itemView.getMeasuredHeight();
                    }
                    iDp3 += AndroidUtilities.dp(8.0f);
                }
                if (this.currentBlock.parent.items.get(this.currentBlock.parent.items.size() - 1) == this.currentBlock) {
                    iDp3 += AndroidUtilities.dp(8.0f);
                }
                if (this.currentBlock.index == 0 && this.currentBlock.parent.level == 0) {
                    iDp3 += AndroidUtilities.dp(10.0f);
                }
                i3 = iDp3;
                DrawingText drawingText2 = this.textLayout;
                if (drawingText2 != null) {
                    drawingText2.x = this.textX;
                    drawingText2.y = this.textY;
                    if (this.currentBlock.numLayout != null) {
                        this.textLayout.prefix = this.currentBlock.numLayout.textLayout.getText();
                    }
                }
                RecyclerView.ViewHolder viewHolder2 = this.blockLayout;
                if (viewHolder2 != null && (viewHolder2.itemView instanceof TextSelectionHelper.ArticleSelectableView)) {
                    ArticleViewer.this.textSelectionHelper.arrayList.clear();
                    ((TextSelectionHelper.ArticleSelectableView) this.blockLayout.itemView).fillTextLayoutBlocks(ArticleViewer.this.textSelectionHelper.arrayList);
                    Iterator it = ArticleViewer.this.textSelectionHelper.arrayList.iterator();
                    while (it.hasNext()) {
                        TextSelectionHelper.TextLayoutBlock textLayoutBlock = (TextSelectionHelper.TextLayoutBlock) it.next();
                        if (textLayoutBlock instanceof DrawingText) {
                            DrawingText drawingText3 = (DrawingText) textLayoutBlock;
                            drawingText3.x += this.blockX;
                            drawingText3.y += this.blockY;
                        }
                    }
                }
            }
            setMeasuredDimension(size, i3);
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            if (ArticleViewer.this.checkLayoutForLinks(this.parentAdapter, motionEvent, this, this.textLayout, this.textX, this.textY)) {
                return true;
            }
            return super.onTouchEvent(motionEvent);
        }

        public void setBlock(TL_pageBlockOrderedListItem tL_pageBlockOrderedListItem) throws NoSuchFieldException, SecurityException {
            if (this.currentBlock != tL_pageBlockOrderedListItem) {
                this.currentBlock = tL_pageBlockOrderedListItem;
                RecyclerView.ViewHolder viewHolder = this.blockLayout;
                if (viewHolder != null) {
                    removeView(viewHolder.itemView);
                    this.blockLayout = null;
                }
                if (this.currentBlock.blockItem != null) {
                    int typeForBlock = this.parentAdapter.getTypeForBlock(this.currentBlock.blockItem);
                    this.currentBlockType = typeForBlock;
                    RecyclerView.ViewHolder viewHolderOnCreateViewHolder = this.parentAdapter.onCreateViewHolder(this, typeForBlock);
                    this.blockLayout = viewHolderOnCreateViewHolder;
                    addView(viewHolderOnCreateViewHolder.itemView);
                }
            }
            if (this.currentBlock.blockItem != null) {
                this.parentAdapter.bindBlockToHolder(this.currentBlockType, this.blockLayout, this.currentBlock.blockItem, 0, 0, false);
            }
            requestLayout();
        }
    }

    public class BlockParagraphCell extends View implements TextSelectionHelper.ArticleSelectableView {
        private TLRPC.TL_pageBlockParagraph currentBlock;
        private WebpageAdapter parentAdapter;
        public DrawingText textLayout;
        public int textX;
        public int textY;

        public BlockParagraphCell(Context context, WebpageAdapter webpageAdapter) {
            super(context);
            this.parentAdapter = webpageAdapter;
        }

        @Override // org.telegram.ui.Cells.TextSelectionHelper.ArticleSelectableView
        public void fillTextLayoutBlocks(ArrayList arrayList) {
            DrawingText drawingText = this.textLayout;
            if (drawingText != null) {
                arrayList.add(drawingText);
            }
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            if (this.currentBlock == null) {
                return;
            }
            if (this.textLayout != null) {
                canvas.save();
                canvas.translate(this.textX, this.textY);
                ArticleViewer.this.drawTextSelection(canvas, this);
                this.textLayout.draw(canvas, this);
                canvas.restore();
            }
            if (this.currentBlock.level > 0) {
                canvas.drawRect(AndroidUtilities.dp(18.0f), BitmapDescriptorFactory.HUE_RED, AndroidUtilities.dp(20.0f), getMeasuredHeight() - (this.currentBlock.bottom ? AndroidUtilities.dp(6.0f) : 0), ArticleViewer.quoteLinePaint);
            }
        }

        @Override // android.view.View
        public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            accessibilityNodeInfo.setEnabled(true);
            DrawingText drawingText = this.textLayout;
            if (drawingText == null) {
                return;
            }
            accessibilityNodeInfo.setText(drawingText.getText());
        }

        @Override // android.view.View
        protected void onMeasure(int i, int i2) {
            int height;
            int iDp;
            int size = View.MeasureSpec.getSize(i);
            TLRPC.TL_pageBlockParagraph tL_pageBlockParagraph = this.currentBlock;
            if (tL_pageBlockParagraph != null) {
                height = 0;
                if (tL_pageBlockParagraph.level == 0) {
                    this.textY = AndroidUtilities.dp(8.0f);
                    iDp = AndroidUtilities.dp(18.0f);
                } else {
                    this.textY = 0;
                    iDp = AndroidUtilities.dp((r15 * 14) + 18);
                }
                this.textX = iDp;
                DrawingText drawingTextCreateLayoutForText = ArticleViewer.this.createLayoutForText(this, null, this.currentBlock.text, (size - AndroidUtilities.dp(18.0f)) - this.textX, this.textY, this.currentBlock, this.parentAdapter.isRtl ? StaticLayoutEx.ALIGN_RIGHT() : Layout.Alignment.ALIGN_NORMAL, 0, this.parentAdapter);
                this.textLayout = drawingTextCreateLayoutForText;
                if (drawingTextCreateLayoutForText != null) {
                    height = drawingTextCreateLayoutForText.getHeight() + (this.currentBlock.level > 0 ? AndroidUtilities.dp(8.0f) : AndroidUtilities.dp(16.0f));
                    DrawingText drawingText = this.textLayout;
                    drawingText.x = this.textX;
                    drawingText.y = this.textY;
                }
            } else {
                height = 1;
            }
            setMeasuredDimension(size, height);
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            return ArticleViewer.this.checkLayoutForLinks(this.parentAdapter, motionEvent, this, this.textLayout, this.textX, this.textY) || super.onTouchEvent(motionEvent);
        }

        public void setBlock(TLRPC.TL_pageBlockParagraph tL_pageBlockParagraph) {
            this.currentBlock = tL_pageBlockParagraph;
            requestLayout();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class BlockPhotoCell extends FrameLayout implements DownloadController.FileDownloadProgressListener, TextSelectionHelper.ArticleSelectableView {
        private int TAG;
        boolean autoDownload;
        private int buttonPressed;
        private int buttonState;
        private int buttonX;
        private int buttonY;
        private boolean calcHeight;
        private DrawingText captionLayout;
        private BlockChannelCell channelCell;
        private DrawingText creditLayout;
        private int creditOffset;
        private TLRPC.TL_pageBlockPhoto currentBlock;
        private String currentFilter;
        private TLRPC.Photo currentPhoto;
        private TLRPC.PhotoSize currentPhotoObject;
        private TLRPC.PhotoSize currentPhotoObjectThumb;
        private String currentThumbFilter;
        private int currentType;
        private MessageObject.GroupedMessagePosition groupPosition;
        private ImageReceiver imageView;
        private boolean isFirst;
        private Drawable linkDrawable;
        private WebpageAdapter parentAdapter;
        private TLRPC.PageBlock parentBlock;
        private boolean photoPressed;
        private RadialProgress2 radialProgress;
        private int textX;
        private int textY;

        public BlockPhotoCell(Context context, WebpageAdapter webpageAdapter, int i) {
            super(context);
            this.parentAdapter = webpageAdapter;
            setWillNotDraw(false);
            this.imageView = new ImageReceiver(this);
            this.channelCell = ArticleViewer.this.new BlockChannelCell(context, this.parentAdapter, 1);
            RadialProgress2 radialProgress2 = new RadialProgress2(this);
            this.radialProgress = radialProgress2;
            radialProgress2.setProgressColor(-1);
            this.radialProgress.setColors(1711276032, 2130706432, -1, -2500135);
            this.TAG = DownloadController.getInstance(ArticleViewer.this.currentAccount).generateObserverTag();
            addView(this.channelCell, LayoutHelper.createFrame(-1, -2.0f));
            this.currentType = i;
        }

        private void didPressedButton(boolean z) {
            if (this.currentPhotoObject == null) {
                return;
            }
            int i = this.buttonState;
            if (i == 0) {
                this.radialProgress.setProgress(BitmapDescriptorFactory.HUE_RED, z);
                this.imageView.setImage(ImageLocation.getForPhoto(this.currentPhotoObject, this.currentPhoto), this.currentFilter, ImageLocation.getForPhoto(this.currentPhotoObjectThumb, this.currentPhoto), this.currentThumbFilter, this.currentPhotoObject.size, null, this.parentAdapter.currentPage, 1);
                this.buttonState = 1;
                this.radialProgress.setIcon(getIconForCurrentState(), true, z);
            } else {
                if (i != 1) {
                    return;
                }
                this.imageView.cancelLoadImage();
                this.buttonState = 0;
                this.radialProgress.setIcon(getIconForCurrentState(), false, z);
            }
            invalidate();
        }

        private int getIconForCurrentState() {
            int i = this.buttonState;
            if (i == 0) {
                return 2;
            }
            return i == 1 ? 3 : 4;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onMeasure$0() {
            requestLayout();
        }

        @Override // org.telegram.ui.Cells.TextSelectionHelper.ArticleSelectableView
        public void fillTextLayoutBlocks(ArrayList arrayList) {
            DrawingText drawingText = this.captionLayout;
            if (drawingText != null) {
                arrayList.add(drawingText);
            }
            DrawingText drawingText2 = this.creditLayout;
            if (drawingText2 != null) {
                arrayList.add(drawingText2);
            }
        }

        @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
        public int getObserverTag() {
            return this.TAG;
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onAttachedToWindow() {
            super.onAttachedToWindow();
            this.imageView.onAttachedToWindow();
            updateButtonState(false);
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            this.imageView.onDetachedFromWindow();
            DownloadController.getInstance(ArticleViewer.this.currentAccount).removeLoadingFileObserver(this);
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            int i;
            if (this.currentBlock == null) {
                return;
            }
            if (!this.imageView.hasBitmapImage() || this.imageView.getCurrentAlpha() != 1.0f) {
                canvas.drawRect(this.imageView.getImageX(), this.imageView.getImageY(), this.imageView.getImageX2(), this.imageView.getImageY2(), ArticleViewer.photoBackgroundPaint);
            }
            if (!ArticleViewer.this.pinchToZoomHelper.isInOverlayModeFor(this)) {
                this.imageView.draw(canvas);
                if (this.imageView.getVisible()) {
                    this.radialProgress.draw(canvas);
                }
            }
            if (!TextUtils.isEmpty(this.currentBlock.url) && !(this.currentPhoto instanceof WebInstantView.WebPhoto)) {
                int measuredWidth = getMeasuredWidth() - AndroidUtilities.dp(35.0f);
                int imageY = (int) (this.imageView.getImageY() + AndroidUtilities.dp(11.0f));
                this.linkDrawable.setBounds(measuredWidth, imageY, AndroidUtilities.dp(24.0f) + measuredWidth, AndroidUtilities.dp(24.0f) + imageY);
                this.linkDrawable.draw(canvas);
            }
            if (this.captionLayout != null) {
                canvas.save();
                canvas.translate(this.textX, this.textY);
                ArticleViewer.this.drawTextSelection(canvas, this, 0);
                this.captionLayout.draw(canvas, this);
                canvas.restore();
                i = 1;
            } else {
                i = 0;
            }
            if (this.creditLayout != null) {
                canvas.save();
                canvas.translate(this.textX, this.textY + this.creditOffset);
                ArticleViewer.this.drawTextSelection(canvas, this, i);
                this.creditLayout.draw(canvas, this);
                canvas.restore();
            }
            if (this.currentBlock.level > 0) {
                canvas.drawRect(AndroidUtilities.dp(18.0f), BitmapDescriptorFactory.HUE_RED, AndroidUtilities.dp(20.0f), getMeasuredHeight() - (this.currentBlock.bottom ? AndroidUtilities.dp(6.0f) : 0), ArticleViewer.quoteLinePaint);
            }
        }

        @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
        public void onFailedDownload(String str, boolean z) {
            updateButtonState(false);
        }

        @Override // android.view.View
        public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            accessibilityNodeInfo.setEnabled(true);
            StringBuilder sb = new StringBuilder(LocaleController.getString(R.string.AttachPhoto));
            if (this.captionLayout != null) {
                sb.append(", ");
                sb.append(this.captionLayout.getText());
            }
            accessibilityNodeInfo.setText(sb.toString());
        }

        /* JADX WARN: Removed duplicated region for block: B:11:0x0046  */
        /* JADX WARN: Removed duplicated region for block: B:61:0x0150  */
        /* JADX WARN: Removed duplicated region for block: B:64:0x015a  */
        /* JADX WARN: Removed duplicated region for block: B:65:0x0160  */
        /* JADX WARN: Removed duplicated region for block: B:68:0x018f  */
        /* JADX WARN: Removed duplicated region for block: B:69:0x0191  */
        /* JADX WARN: Removed duplicated region for block: B:73:0x019a  */
        @Override // android.widget.FrameLayout, android.view.View
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        protected void onMeasure(int i, int i2) {
            int i3;
            int iCeil;
            TLRPC.TL_pageBlockPhoto tL_pageBlockPhoto;
            int iDp;
            int iDp2;
            int iDp3;
            int i4;
            int i5;
            int iDp4;
            ImageReceiver imageReceiver;
            ImageLocation forPhoto;
            String str;
            ImageLocation forPhoto2;
            String str2;
            long j;
            TLRPC.WebPage webPage;
            String str3;
            int i6;
            int i7;
            int i8;
            int size = View.MeasureSpec.getSize(i);
            int i9 = this.currentType;
            int i10 = 1;
            if (i9 == 1) {
                size = ((View) getParent()).getMeasuredWidth();
                iCeil = ((View) getParent()).getMeasuredHeight();
            } else {
                if (i9 != 2) {
                    i3 = size;
                    iCeil = 0;
                    tL_pageBlockPhoto = this.currentBlock;
                    if (tL_pageBlockPhoto != null) {
                        this.currentPhoto = this.parentAdapter.getPhotoWithId(tL_pageBlockPhoto.photo_id);
                        int iDp5 = AndroidUtilities.dp(48.0f);
                        if (this.currentType != 0 || (i8 = this.currentBlock.level) <= 0) {
                            this.textX = AndroidUtilities.dp(18.0f);
                            iDp = i3 - AndroidUtilities.dp(36.0f);
                            iDp2 = i3;
                            iDp3 = 0;
                        } else {
                            iDp3 = AndroidUtilities.dp(i8 * 14) + AndroidUtilities.dp(18.0f);
                            this.textX = iDp3;
                            iDp2 = i3 - (AndroidUtilities.dp(18.0f) + iDp3);
                            iDp = iDp2;
                        }
                        TLRPC.Photo photo = this.currentPhoto;
                        if (photo != null && (this.currentPhotoObject != null || (photo instanceof WebInstantView.WebPhoto))) {
                            TLRPC.PhotoSize closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(photo.sizes, 40, true);
                            this.currentPhotoObjectThumb = closestPhotoSizeWithSize;
                            TLRPC.PhotoSize photoSize = this.currentPhotoObject;
                            if (photoSize == closestPhotoSizeWithSize) {
                                this.currentPhotoObjectThumb = null;
                            }
                            TLRPC.Photo photo2 = this.currentPhoto;
                            if (photo2 instanceof WebInstantView.WebPhoto) {
                                WebInstantView.WebPhoto webPhoto = (WebInstantView.WebPhoto) photo2;
                                i4 = webPhoto.w;
                                i5 = webPhoto.h;
                            } else {
                                int i11 = photoSize.w;
                                int i12 = photoSize.h;
                                i4 = i11;
                                i5 = i12;
                            }
                            int i13 = this.currentType;
                            if (i13 == 0) {
                                float f = i4;
                                float f2 = i5;
                                iCeil = (int) ((iDp2 / f) * f2);
                                if (this.parentBlock instanceof TLRPC.TL_pageBlockCover) {
                                    iCeil = Math.min(iCeil, iDp2);
                                } else {
                                    Point point = AndroidUtilities.displaySize;
                                    int iMax = (int) ((Math.max(point.x, point.y) - AndroidUtilities.dp(56.0f)) * 0.9f);
                                    if (iCeil > iMax) {
                                        iDp2 = (int) ((iMax / f2) * f);
                                        iDp3 += ((i3 - iDp3) - iDp2) / 2;
                                        iCeil = iMax;
                                    }
                                }
                            } else {
                                if (i13 == 2) {
                                    if ((this.groupPosition.flags & 2) == 0) {
                                        iDp2 -= AndroidUtilities.dp(2.0f);
                                    }
                                    iDp4 = (this.groupPosition.flags & 8) == 0 ? iCeil - AndroidUtilities.dp(2.0f) : iCeil;
                                    if (this.groupPosition.leftSpanOffset != 0) {
                                        int iCeil2 = (int) Math.ceil((r5 * i3) / 1000.0f);
                                        iDp2 -= iCeil2;
                                        iDp3 += iCeil2;
                                    }
                                }
                                this.imageView.setImageCoords(iDp3, (!this.isFirst || (i7 = this.currentType) == 1 || i7 == 2 || this.currentBlock.level > 0) ? BitmapDescriptorFactory.HUE_RED : AndroidUtilities.dp(8.0f), iDp2, iDp4);
                                if (this.currentType != 0) {
                                    this.currentFilter = null;
                                } else {
                                    this.currentFilter = String.format(Locale.US, "%d_%d", Integer.valueOf(iDp2), Integer.valueOf(iDp4));
                                }
                                this.currentThumbFilter = "80_80_b";
                                this.autoDownload = (DownloadController.getInstance(ArticleViewer.this.currentAccount).getCurrentDownloadMask() & 1) == 0;
                                if (!this.calcHeight) {
                                    if (this.currentPhoto instanceof WebInstantView.WebPhoto) {
                                        this.autoDownload = true;
                                        this.imageView.setStrippedLocation(null);
                                        WebInstantView.loadPhoto((WebInstantView.WebPhoto) this.currentPhoto, this.imageView, new Runnable() { // from class: org.telegram.ui.ArticleViewer$BlockPhotoCell$$ExternalSyntheticLambda0
                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                this.f$0.lambda$onMeasure$0();
                                            }
                                        });
                                    } else {
                                        File pathToAttach = FileLoader.getInstance(ArticleViewer.this.currentAccount).getPathToAttach(this.currentPhotoObject, true);
                                        if (this.autoDownload || pathToAttach.exists()) {
                                            this.imageView.setStrippedLocation(null);
                                            imageReceiver = this.imageView;
                                            forPhoto = ImageLocation.getForPhoto(this.currentPhotoObject, this.currentPhoto);
                                            str = this.currentFilter;
                                            forPhoto2 = ImageLocation.getForPhoto(this.currentPhotoObjectThumb, this.currentPhoto);
                                            str2 = this.currentThumbFilter;
                                            j = this.currentPhotoObject.size;
                                            webPage = this.parentAdapter.currentPage;
                                            str3 = null;
                                            i6 = 1;
                                        } else {
                                            this.imageView.setStrippedLocation(ImageLocation.getForPhoto(this.currentPhotoObject, this.currentPhoto));
                                            imageReceiver = this.imageView;
                                            str = this.currentFilter;
                                            forPhoto2 = ImageLocation.getForPhoto(this.currentPhotoObjectThumb, this.currentPhoto);
                                            str2 = this.currentThumbFilter;
                                            j = this.currentPhotoObject.size;
                                            webPage = this.parentAdapter.currentPage;
                                            str3 = null;
                                            i6 = 1;
                                            forPhoto = null;
                                        }
                                        imageReceiver.setImage(forPhoto, str, forPhoto2, str2, j, str3, webPage, i6);
                                    }
                                }
                                float f3 = iDp5;
                                this.buttonX = (int) (this.imageView.getImageX() + ((this.imageView.getImageWidth() - f3) / 2.0f));
                                int imageY = (int) (this.imageView.getImageY() + ((this.imageView.getImageHeight() - f3) / 2.0f));
                                this.buttonY = imageY;
                                RadialProgress2 radialProgress2 = this.radialProgress;
                                int i14 = this.buttonX;
                                radialProgress2.setProgressRect(i14, imageY, i14 + iDp5, iDp5 + imageY);
                            }
                            iDp4 = iCeil;
                            if (this.isFirst) {
                                this.imageView.setImageCoords(iDp3, (!this.isFirst || (i7 = this.currentType) == 1 || i7 == 2 || this.currentBlock.level > 0) ? BitmapDescriptorFactory.HUE_RED : AndroidUtilities.dp(8.0f), iDp2, iDp4);
                                if (this.currentType != 0) {
                                }
                                this.currentThumbFilter = "80_80_b";
                                this.autoDownload = (DownloadController.getInstance(ArticleViewer.this.currentAccount).getCurrentDownloadMask() & 1) == 0;
                                if (!this.calcHeight) {
                                }
                                float f32 = iDp5;
                                this.buttonX = (int) (this.imageView.getImageX() + ((this.imageView.getImageWidth() - f32) / 2.0f));
                                int imageY2 = (int) (this.imageView.getImageY() + ((this.imageView.getImageHeight() - f32) / 2.0f));
                                this.buttonY = imageY2;
                                RadialProgress2 radialProgress22 = this.radialProgress;
                                int i142 = this.buttonX;
                                radialProgress22.setProgressRect(i142, imageY2, i142 + iDp5, iDp5 + imageY2);
                            }
                        }
                        int iDp6 = iCeil;
                        int imageY3 = (int) (this.imageView.getImageY() + this.imageView.getImageHeight() + AndroidUtilities.dp(8.0f));
                        this.textY = imageY3;
                        if (this.currentType == 0) {
                            ArticleViewer articleViewer = ArticleViewer.this;
                            TLRPC.TL_pageBlockPhoto tL_pageBlockPhoto2 = this.currentBlock;
                            DrawingText drawingTextCreateLayoutForText = articleViewer.createLayoutForText(this, null, tL_pageBlockPhoto2.caption.text, iDp, imageY3, tL_pageBlockPhoto2, this.parentAdapter);
                            this.captionLayout = drawingTextCreateLayoutForText;
                            if (drawingTextCreateLayoutForText != null) {
                                int iDp7 = AndroidUtilities.dp(4.0f) + this.captionLayout.getHeight();
                                this.creditOffset = iDp7;
                                iDp6 += iDp7 + AndroidUtilities.dp(4.0f);
                            }
                            int i15 = iDp6;
                            ArticleViewer articleViewer2 = ArticleViewer.this;
                            TLRPC.TL_pageBlockPhoto tL_pageBlockPhoto3 = this.currentBlock;
                            DrawingText drawingTextCreateLayoutForText2 = articleViewer2.createLayoutForText(this, null, tL_pageBlockPhoto3.caption.credit, iDp, this.textY + this.creditOffset, tL_pageBlockPhoto3, this.parentAdapter.isRtl ? StaticLayoutEx.ALIGN_RIGHT() : Layout.Alignment.ALIGN_NORMAL, 0, this.parentAdapter);
                            this.creditLayout = drawingTextCreateLayoutForText2;
                            iDp6 = drawingTextCreateLayoutForText2 != null ? i15 + AndroidUtilities.dp(4.0f) + this.creditLayout.getHeight() : i15;
                        }
                        if (!this.isFirst && this.currentType == 0 && this.currentBlock.level <= 0) {
                            iDp6 += AndroidUtilities.dp(8.0f);
                        }
                        boolean z = (this.parentBlock instanceof TLRPC.TL_pageBlockCover) && this.parentAdapter.blocks != null && this.parentAdapter.blocks.size() > 1 && (this.parentAdapter.blocks.get(1) instanceof TLRPC.TL_pageBlockChannel);
                        if (this.currentType != 2 && !z) {
                            iDp6 += AndroidUtilities.dp(8.0f);
                        }
                        i10 = iDp6;
                        DrawingText drawingText = this.captionLayout;
                        if (drawingText != null) {
                            drawingText.x = this.textX;
                            drawingText.y = this.textY;
                        }
                        DrawingText drawingText2 = this.creditLayout;
                        if (drawingText2 != null) {
                            drawingText2.x = this.textX;
                            drawingText2.y = this.textY + this.creditOffset;
                        }
                    }
                    this.channelCell.measure(i, i2);
                    this.channelCell.setTranslationY(this.imageView.getImageHeight() - AndroidUtilities.dp(39.0f));
                    setMeasuredDimension(i3, i10);
                }
                float f4 = this.groupPosition.ph;
                Point point2 = AndroidUtilities.displaySize;
                iCeil = (int) Math.ceil(f4 * Math.max(point2.x, point2.y) * 0.5f);
            }
            i3 = size;
            tL_pageBlockPhoto = this.currentBlock;
            if (tL_pageBlockPhoto != null) {
            }
            this.channelCell.measure(i, i2);
            this.channelCell.setTranslationY(this.imageView.getImageHeight() - AndroidUtilities.dp(39.0f));
            setMeasuredDimension(i3, i10);
        }

        @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
        public void onProgressDownload(String str, long j, long j2) {
            this.radialProgress.setProgress(Math.min(1.0f, j / j2), true);
            if (this.buttonState != 1) {
                updateButtonState(true);
            }
        }

        @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
        public void onProgressUpload(String str, long j, long j2, boolean z) {
        }

        @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
        public void onSuccessDownload(String str) {
            this.radialProgress.setProgress(1.0f, true);
            updateButtonState(true);
        }

        /* JADX WARN: Removed duplicated region for block: B:31:0x00ab  */
        @Override // android.view.View
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public boolean onTouchEvent(MotionEvent motionEvent) {
            if (ArticleViewer.this.pinchToZoomHelper.checkPinchToZoom(motionEvent, this, this.imageView, null, null, null)) {
                return true;
            }
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            if (this.channelCell.getVisibility() == 0 && y > this.channelCell.getTranslationY() && y < this.channelCell.getTranslationY() + AndroidUtilities.dp(39.0f)) {
                if (this.parentAdapter.channelBlock != null && motionEvent.getAction() == 1) {
                    MessagesController.getInstance(ArticleViewer.this.currentAccount).openByUserName(ChatObject.getPublicUsername(this.parentAdapter.channelBlock.channel), ArticleViewer.this.parentFragment, 2);
                    ArticleViewer.this.close(false, true);
                }
                return true;
            }
            if (motionEvent.getAction() == 0 && this.imageView.isInsideImage(x, y)) {
                if (this.buttonState != -1) {
                    if (x < this.buttonX || x > r3 + AndroidUtilities.dp(48.0f)) {
                        if (this.buttonState != 0) {
                            this.photoPressed = true;
                        }
                        this.buttonPressed = 1;
                        invalidate();
                    } else {
                        if (y < this.buttonY || y > r0 + AndroidUtilities.dp(48.0f)) {
                        }
                        this.buttonPressed = 1;
                        invalidate();
                    }
                }
            } else if (motionEvent.getAction() == 1) {
                if (this.photoPressed) {
                    this.photoPressed = false;
                    ArticleViewer.this.openPhoto(this.currentBlock, this.parentAdapter);
                } else if (this.buttonPressed == 1) {
                    this.buttonPressed = 0;
                    playSoundEffect(0);
                    didPressedButton(true);
                    invalidate();
                }
            } else if (motionEvent.getAction() == 3) {
                this.photoPressed = false;
                this.buttonPressed = 0;
            }
            return this.photoPressed || this.buttonPressed != 0 || ArticleViewer.this.checkLayoutForLinks(this.parentAdapter, motionEvent, this, this.captionLayout, this.textX, this.textY) || ArticleViewer.this.checkLayoutForLinks(this.parentAdapter, motionEvent, this, this.creditLayout, this.textX, this.textY + this.creditOffset) || super.onTouchEvent(motionEvent);
        }

        public void setBlock(TLRPC.TL_pageBlockPhoto tL_pageBlockPhoto, boolean z, boolean z2, boolean z3) {
            TLRPC.Photo photoWithId;
            this.parentBlock = null;
            this.currentBlock = tL_pageBlockPhoto;
            this.isFirst = z2;
            this.channelCell.setVisibility(4);
            if (!TextUtils.isEmpty(this.currentBlock.url)) {
                this.linkDrawable = getResources().getDrawable(R.drawable.msg_instant_link);
            }
            TLRPC.TL_pageBlockPhoto tL_pageBlockPhoto2 = this.currentBlock;
            if (tL_pageBlockPhoto2 == null || (photoWithId = this.parentAdapter.getPhotoWithId(tL_pageBlockPhoto2.photo_id)) == null) {
                this.currentPhotoObject = null;
            } else {
                this.currentPhotoObject = FileLoader.getClosestPhotoSizeWithSize(photoWithId.sizes, AndroidUtilities.getPhotoSize());
            }
            updateButtonState(false);
            requestLayout();
        }

        public void setParentBlock(TLRPC.PageBlock pageBlock) {
            this.parentBlock = pageBlock;
            if (this.parentAdapter.channelBlock == null || !(this.parentBlock instanceof TLRPC.TL_pageBlockCover)) {
                return;
            }
            this.channelCell.setBlock(this.parentAdapter.channelBlock);
            this.channelCell.setVisibility(0);
        }

        public void updateButtonState(boolean z) {
            String attachFileName = FileLoader.getAttachFileName(this.currentPhotoObject);
            File pathToAttach = FileLoader.getInstance(ArticleViewer.this.currentAccount).getPathToAttach(this.currentPhotoObject, true);
            File pathToAttach2 = FileLoader.getInstance(ArticleViewer.this.currentAccount).getPathToAttach(this.currentPhotoObject, false);
            boolean z2 = pathToAttach.exists() || (pathToAttach2 != null && pathToAttach2.exists());
            if (TextUtils.isEmpty(attachFileName)) {
                this.radialProgress.setIcon(4, false, false);
                return;
            }
            if (z2) {
                DownloadController.getInstance(ArticleViewer.this.currentAccount).removeLoadingFileObserver(this);
                this.buttonState = -1;
                this.radialProgress.setIcon(getIconForCurrentState(), false, z);
            } else {
                DownloadController.getInstance(ArticleViewer.this.currentAccount).addLoadingFileObserver(attachFileName, null, this);
                boolean z3 = this.autoDownload;
                float fFloatValue = BitmapDescriptorFactory.HUE_RED;
                if (z3 || FileLoader.getInstance(ArticleViewer.this.currentAccount).isLoadingFile(attachFileName)) {
                    this.buttonState = 1;
                    Float fileProgress = ImageLoader.getInstance().getFileProgress(attachFileName);
                    if (fileProgress != null) {
                        fFloatValue = fileProgress.floatValue();
                    }
                } else {
                    this.buttonState = 0;
                }
                this.radialProgress.setIcon(getIconForCurrentState(), true, z);
                this.radialProgress.setProgress(fFloatValue, false);
            }
            invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class BlockPreformattedCell extends FrameLayout implements TextSelectionHelper.ArticleSelectableView {
        private TLRPC.TL_pageBlockPreformatted currentBlock;
        private WebpageAdapter parentAdapter;
        private HorizontalScrollView scrollView;
        private View textContainer;
        private DrawingText textLayout;

        public BlockPreformattedCell(Context context, WebpageAdapter webpageAdapter) {
            super(context);
            this.parentAdapter = webpageAdapter;
            HorizontalScrollView horizontalScrollView = new HorizontalScrollView(context) { // from class: org.telegram.ui.ArticleViewer.BlockPreformattedCell.1
                @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
                public boolean onInterceptTouchEvent(MotionEvent motionEvent) throws PackageManager.NameNotFoundException {
                    if (BlockPreformattedCell.this.textContainer.getMeasuredWidth() > getMeasuredWidth()) {
                        ArticleViewer.this.windowView.requestDisallowInterceptTouchEvent(true);
                    }
                    return super.onInterceptTouchEvent(motionEvent);
                }

                @Override // android.view.View
                protected void onScrollChanged(int i, int i2, int i3, int i4) {
                    super.onScrollChanged(i, i2, i3, i4);
                    if (ArticleViewer.this.pressedLinkOwnerLayout != null) {
                        ArticleViewer.this.pressedLinkOwnerLayout = null;
                        ArticleViewer.this.pressedLinkOwnerView = null;
                    }
                }
            };
            this.scrollView = horizontalScrollView;
            horizontalScrollView.setPadding(0, AndroidUtilities.dp(8.0f), 0, AndroidUtilities.dp(8.0f));
            addView(this.scrollView, LayoutHelper.createFrame(-1, -2.0f));
            this.textContainer = new View(context) { // from class: org.telegram.ui.ArticleViewer.BlockPreformattedCell.2
                @Override // android.view.View
                protected void onDraw(Canvas canvas) {
                    if (BlockPreformattedCell.this.textLayout != null) {
                        canvas.save();
                        BlockPreformattedCell blockPreformattedCell = BlockPreformattedCell.this;
                        ArticleViewer.this.drawTextSelection(canvas, blockPreformattedCell);
                        BlockPreformattedCell.this.textLayout.draw(canvas, this);
                        canvas.restore();
                        BlockPreformattedCell.this.textLayout.x = (int) getX();
                        BlockPreformattedCell.this.textLayout.y = (int) getY();
                    }
                }

                @Override // android.view.View
                protected void onMeasure(int i, int i2) {
                    int height;
                    int iMax = 1;
                    if (BlockPreformattedCell.this.currentBlock != null) {
                        BlockPreformattedCell blockPreformattedCell = BlockPreformattedCell.this;
                        blockPreformattedCell.textLayout = ArticleViewer.this.createLayoutForText(this, null, blockPreformattedCell.currentBlock.text, AndroidUtilities.dp(5000.0f), 0, BlockPreformattedCell.this.currentBlock, BlockPreformattedCell.this.parentAdapter);
                        if (BlockPreformattedCell.this.textLayout != null) {
                            height = BlockPreformattedCell.this.textLayout.getHeight();
                            int lineCount = BlockPreformattedCell.this.textLayout.getLineCount();
                            for (int i3 = 0; i3 < lineCount; i3++) {
                                iMax = Math.max((int) Math.ceil(BlockPreformattedCell.this.textLayout.getLineWidth(i3)), iMax);
                            }
                        } else {
                            height = 0;
                        }
                    } else {
                        height = 1;
                    }
                    setMeasuredDimension(iMax + AndroidUtilities.dp(32.0f), height);
                }

                @Override // android.view.View
                public boolean onTouchEvent(MotionEvent motionEvent) {
                    BlockPreformattedCell blockPreformattedCell = BlockPreformattedCell.this;
                    ArticleViewer articleViewer = ArticleViewer.this;
                    WebpageAdapter webpageAdapter2 = blockPreformattedCell.parentAdapter;
                    BlockPreformattedCell blockPreformattedCell2 = BlockPreformattedCell.this;
                    return articleViewer.checkLayoutForLinks(webpageAdapter2, motionEvent, blockPreformattedCell2, blockPreformattedCell2.textLayout, 0, 0) || super.onTouchEvent(motionEvent);
                }
            };
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -1);
            int iDp = AndroidUtilities.dp(16.0f);
            layoutParams.rightMargin = iDp;
            layoutParams.leftMargin = iDp;
            int iDp2 = AndroidUtilities.dp(12.0f);
            layoutParams.bottomMargin = iDp2;
            layoutParams.topMargin = iDp2;
            this.scrollView.addView(this.textContainer, layoutParams);
            if (Build.VERSION.SDK_INT >= 23) {
                this.scrollView.setOnScrollChangeListener(new View.OnScrollChangeListener() { // from class: org.telegram.ui.ArticleViewer$BlockPreformattedCell$$ExternalSyntheticLambda1
                    @Override // android.view.View.OnScrollChangeListener
                    public final void onScrollChange(View view, int i, int i2, int i3, int i4) {
                        this.f$0.lambda$new$0(view, i, i2, i3, i4);
                    }
                });
            }
            setWillNotDraw(false);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0(View view, int i, int i2, int i3, int i4) {
            TextSelectionHelper.ArticleTextSelectionHelper articleTextSelectionHelper = ArticleViewer.this.textSelectionHelper;
            if (articleTextSelectionHelper == null || !articleTextSelectionHelper.isInSelectionMode()) {
                return;
            }
            ArticleViewer.this.textSelectionHelper.invalidate();
        }

        @Override // org.telegram.ui.Cells.TextSelectionHelper.ArticleSelectableView
        public void fillTextLayoutBlocks(ArrayList arrayList) {
            DrawingText drawingText = this.textLayout;
            if (drawingText != null) {
                arrayList.add(drawingText);
            }
        }

        @Override // android.view.View, org.telegram.ui.Cells.TextSelectionHelper.SelectableView
        public void invalidate() {
            this.textContainer.invalidate();
            super.invalidate();
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            if (this.currentBlock == null) {
                return;
            }
            canvas.drawRect(BitmapDescriptorFactory.HUE_RED, AndroidUtilities.dp(8.0f), getMeasuredWidth(), getMeasuredHeight() - AndroidUtilities.dp(8.0f), ArticleViewer.preformattedBackgroundPaint);
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            int size = View.MeasureSpec.getSize(i);
            this.scrollView.measure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(0, 0));
            setMeasuredDimension(size, this.scrollView.getMeasuredHeight());
        }

        public void setBlock(TLRPC.TL_pageBlockPreformatted tL_pageBlockPreformatted) {
            this.currentBlock = tL_pageBlockPreformatted;
            this.scrollView.setScrollX(0);
            this.textContainer.requestLayout();
        }
    }

    private class BlockPullquoteCell extends View implements TextSelectionHelper.ArticleSelectableView {
        private TLRPC.TL_pageBlockPullquote currentBlock;
        private WebpageAdapter parentAdapter;
        private DrawingText textLayout;
        private DrawingText textLayout2;
        private int textX;
        private int textY;
        private int textY2;

        public BlockPullquoteCell(Context context, WebpageAdapter webpageAdapter) {
            super(context);
            this.textX = AndroidUtilities.dp(18.0f);
            this.textY = AndroidUtilities.dp(8.0f);
            this.parentAdapter = webpageAdapter;
        }

        @Override // org.telegram.ui.Cells.TextSelectionHelper.ArticleSelectableView
        public void fillTextLayoutBlocks(ArrayList arrayList) {
            DrawingText drawingText = this.textLayout;
            if (drawingText != null) {
                arrayList.add(drawingText);
            }
            DrawingText drawingText2 = this.textLayout2;
            if (drawingText2 != null) {
                arrayList.add(drawingText2);
            }
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            if (this.currentBlock == null) {
                return;
            }
            int i = 0;
            if (this.textLayout != null) {
                canvas.save();
                canvas.translate(this.textX, this.textY);
                ArticleViewer.this.drawTextSelection(canvas, this, 0);
                this.textLayout.draw(canvas, this);
                canvas.restore();
                i = 1;
            }
            if (this.textLayout2 != null) {
                canvas.save();
                canvas.translate(this.textX, this.textY2);
                ArticleViewer.this.drawTextSelection(canvas, this, i);
                this.textLayout2.draw(canvas, this);
                canvas.restore();
            }
        }

        @Override // android.view.View
        protected void onMeasure(int i, int i2) {
            int iDp;
            int size = View.MeasureSpec.getSize(i);
            TLRPC.TL_pageBlockPullquote tL_pageBlockPullquote = this.currentBlock;
            if (tL_pageBlockPullquote != null) {
                DrawingText drawingTextCreateLayoutForText = ArticleViewer.this.createLayoutForText(this, null, tL_pageBlockPullquote.text, size - AndroidUtilities.dp(36.0f), this.textY, this.currentBlock, this.parentAdapter);
                this.textLayout = drawingTextCreateLayoutForText;
                if (drawingTextCreateLayoutForText != null) {
                    iDp = AndroidUtilities.dp(8.0f) + this.textLayout.getHeight();
                    DrawingText drawingText = this.textLayout;
                    drawingText.x = this.textX;
                    drawingText.y = this.textY;
                } else {
                    iDp = 0;
                }
                this.textY2 = AndroidUtilities.dp(2.0f) + iDp;
                DrawingText drawingTextCreateLayoutForText2 = ArticleViewer.this.createLayoutForText(this, null, this.currentBlock.caption, size - AndroidUtilities.dp(36.0f), this.textY2, this.currentBlock, this.parentAdapter);
                this.textLayout2 = drawingTextCreateLayoutForText2;
                if (drawingTextCreateLayoutForText2 != null) {
                    iDp += AndroidUtilities.dp(8.0f) + this.textLayout2.getHeight();
                    DrawingText drawingText2 = this.textLayout2;
                    drawingText2.x = this.textX;
                    drawingText2.y = this.textY2;
                }
                if (iDp != 0) {
                    iDp += AndroidUtilities.dp(8.0f);
                }
            } else {
                iDp = 1;
            }
            setMeasuredDimension(size, iDp);
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            return ArticleViewer.this.checkLayoutForLinks(this.parentAdapter, motionEvent, this, this.textLayout, this.textX, this.textY) || ArticleViewer.this.checkLayoutForLinks(this.parentAdapter, motionEvent, this, this.textLayout2, this.textX, this.textY2) || super.onTouchEvent(motionEvent);
        }

        public void setBlock(TLRPC.TL_pageBlockPullquote tL_pageBlockPullquote) {
            this.currentBlock = tL_pageBlockPullquote;
            requestLayout();
        }
    }

    private class BlockRelatedArticlesCell extends View implements TextSelectionHelper.ArticleSelectableView {
        private TL_pageBlockRelatedArticlesChild currentBlock;
        private boolean divider;
        private boolean drawImage;
        private ImageReceiver imageView;
        private WebpageAdapter parentAdapter;
        private DrawingText textLayout;
        private DrawingText textLayout2;
        private int textOffset;
        private int textX;
        private int textY;

        public BlockRelatedArticlesCell(Context context, WebpageAdapter webpageAdapter) {
            super(context);
            this.textX = AndroidUtilities.dp(18.0f);
            this.textY = AndroidUtilities.dp(10.0f);
            this.parentAdapter = webpageAdapter;
            ImageReceiver imageReceiver = new ImageReceiver(this);
            this.imageView = imageReceiver;
            imageReceiver.setRoundRadius(AndroidUtilities.dp(6.0f));
        }

        @Override // org.telegram.ui.Cells.TextSelectionHelper.ArticleSelectableView
        public void fillTextLayoutBlocks(ArrayList arrayList) {
            DrawingText drawingText = this.textLayout;
            if (drawingText != null) {
                arrayList.add(drawingText);
            }
            DrawingText drawingText2 = this.textLayout2;
            if (drawingText2 != null) {
                arrayList.add(drawingText2);
            }
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            int i;
            if (this.currentBlock == null) {
                return;
            }
            if (this.drawImage) {
                this.imageView.draw(canvas);
            }
            canvas.save();
            canvas.translate(this.textX, AndroidUtilities.dp(10.0f));
            if (this.textLayout != null) {
                ArticleViewer.this.drawTextSelection(canvas, this, 0);
                this.textLayout.draw(canvas, this);
                i = 1;
            } else {
                i = 0;
            }
            if (this.textLayout2 != null) {
                canvas.translate(BitmapDescriptorFactory.HUE_RED, this.textOffset);
                ArticleViewer.this.drawTextSelection(canvas, this, i);
                this.textLayout2.draw(canvas, this);
            }
            canvas.restore();
            if (this.divider) {
                canvas.drawLine(this.parentAdapter.isRtl ? BitmapDescriptorFactory.HUE_RED : AndroidUtilities.dp(17.0f), getMeasuredHeight() - 1, getMeasuredWidth() - (this.parentAdapter.isRtl ? AndroidUtilities.dp(17.0f) : 0), getMeasuredHeight() - 1, ArticleViewer.dividerPaint);
            }
        }

        @Override // android.view.View
        protected void onMeasure(int i, int i2) {
            int i3;
            boolean z;
            int i4;
            int size = View.MeasureSpec.getSize(i);
            this.divider = this.currentBlock.num != this.currentBlock.parent.articles.size() - 1;
            TLRPC.TL_pageRelatedArticle tL_pageRelatedArticle = (TLRPC.TL_pageRelatedArticle) this.currentBlock.parent.articles.get(this.currentBlock.num);
            int iDp = AndroidUtilities.dp(SharedConfig.ivFontSize - 16);
            long j = tL_pageRelatedArticle.photo_id;
            TLRPC.Photo photoWithId = j != 0 ? this.parentAdapter.getPhotoWithId(j) : null;
            if (photoWithId != null) {
                this.drawImage = true;
                TLRPC.PhotoSize closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(photoWithId.sizes, AndroidUtilities.getPhotoSize());
                TLRPC.PhotoSize closestPhotoSizeWithSize2 = FileLoader.getClosestPhotoSizeWithSize(photoWithId.sizes, 80, true);
                this.imageView.setImage(ImageLocation.getForPhoto(closestPhotoSizeWithSize, photoWithId), "64_64", ImageLocation.getForPhoto(closestPhotoSizeWithSize != closestPhotoSizeWithSize2 ? closestPhotoSizeWithSize2 : null, photoWithId), "64_64_b", closestPhotoSizeWithSize.size, null, this.parentAdapter.currentPage, 1);
            } else {
                this.drawImage = false;
            }
            int iDp2 = AndroidUtilities.dp(60.0f);
            int iDp3 = size - AndroidUtilities.dp(36.0f);
            if (this.drawImage) {
                float fDp = AndroidUtilities.dp(44.0f);
                this.imageView.setImageCoords((size - r1) - AndroidUtilities.dp(8.0f), AndroidUtilities.dp(8.0f), fDp, fDp);
                iDp3 = (int) (iDp3 - (this.imageView.getImageWidth() + AndroidUtilities.dp(6.0f)));
            }
            int i5 = iDp3;
            int iDp4 = AndroidUtilities.dp(18.0f);
            String str = tL_pageRelatedArticle.title;
            if (str != null) {
                i3 = iDp2;
                this.textLayout = ArticleViewer.this.createLayoutForText(this, str, null, i5, this.textY, this.currentBlock, Layout.Alignment.ALIGN_NORMAL, 3, this.parentAdapter);
            } else {
                i3 = iDp2;
            }
            DrawingText drawingText = this.textLayout;
            if (drawingText != null) {
                int lineCount = drawingText.getLineCount();
                int i6 = 4 - lineCount;
                this.textOffset = this.textLayout.getHeight() + AndroidUtilities.dp(6.0f) + iDp;
                iDp4 += this.textLayout.getHeight();
                int i7 = 0;
                while (true) {
                    if (i7 >= lineCount) {
                        z = false;
                        break;
                    } else {
                        if (this.textLayout.getLineLeft(i7) != BitmapDescriptorFactory.HUE_RED) {
                            z = true;
                            break;
                        }
                        i7++;
                    }
                }
                DrawingText drawingText2 = this.textLayout;
                drawingText2.x = this.textX;
                drawingText2.y = this.textY;
                i4 = i6;
            } else {
                this.textOffset = 0;
                z = false;
                i4 = 4;
            }
            DrawingText drawingTextCreateLayoutForText = ArticleViewer.this.createLayoutForText(this, (tL_pageRelatedArticle.published_date == 0 || TextUtils.isEmpty(tL_pageRelatedArticle.author)) ? !TextUtils.isEmpty(tL_pageRelatedArticle.author) ? LocaleController.formatString("ArticleByAuthor", R.string.ArticleByAuthor, tL_pageRelatedArticle.author) : tL_pageRelatedArticle.published_date != 0 ? LocaleController.getInstance().getChatFullDate().format(tL_pageRelatedArticle.published_date * 1000) : !TextUtils.isEmpty(tL_pageRelatedArticle.description) ? tL_pageRelatedArticle.description : tL_pageRelatedArticle.url : LocaleController.formatString("ArticleDateByAuthor", R.string.ArticleDateByAuthor, LocaleController.getInstance().getChatFullDate().format(tL_pageRelatedArticle.published_date * 1000), tL_pageRelatedArticle.author), null, i5, this.textY + this.textOffset, this.currentBlock, (this.parentAdapter.isRtl || z) ? StaticLayoutEx.ALIGN_RIGHT() : Layout.Alignment.ALIGN_NORMAL, i4, this.parentAdapter);
            this.textLayout2 = drawingTextCreateLayoutForText;
            if (drawingTextCreateLayoutForText != null) {
                iDp4 += drawingTextCreateLayoutForText.getHeight();
                if (this.textLayout != null) {
                    iDp4 += AndroidUtilities.dp(6.0f) + iDp;
                }
                DrawingText drawingText3 = this.textLayout2;
                drawingText3.x = this.textX;
                drawingText3.y = this.textY + this.textOffset;
            }
            setMeasuredDimension(size, Math.max(i3, iDp4) + (this.divider ? 1 : 0));
        }

        public void setBlock(TL_pageBlockRelatedArticlesChild tL_pageBlockRelatedArticlesChild) {
            this.currentBlock = tL_pageBlockRelatedArticlesChild;
            requestLayout();
        }
    }

    private class BlockRelatedArticlesHeaderCell extends View implements TextSelectionHelper.ArticleSelectableView {
        private TLRPC.TL_pageBlockRelatedArticles currentBlock;
        private WebpageAdapter parentAdapter;
        private DrawingText textLayout;
        private int textX;
        private int textY;

        public BlockRelatedArticlesHeaderCell(Context context, WebpageAdapter webpageAdapter) {
            super(context);
            this.textX = AndroidUtilities.dp(18.0f);
            this.parentAdapter = webpageAdapter;
        }

        @Override // org.telegram.ui.Cells.TextSelectionHelper.ArticleSelectableView
        public void fillTextLayoutBlocks(ArrayList arrayList) {
            DrawingText drawingText = this.textLayout;
            if (drawingText != null) {
                arrayList.add(drawingText);
            }
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            if (this.currentBlock == null || this.textLayout == null) {
                return;
            }
            canvas.save();
            canvas.translate(this.textX, this.textY);
            ArticleViewer.this.drawTextSelection(canvas, this);
            this.textLayout.draw(canvas, this);
            canvas.restore();
        }

        @Override // android.view.View
        protected void onMeasure(int i, int i2) {
            int size = View.MeasureSpec.getSize(i);
            TLRPC.TL_pageBlockRelatedArticles tL_pageBlockRelatedArticles = this.currentBlock;
            if (tL_pageBlockRelatedArticles != null) {
                DrawingText drawingTextCreateLayoutForText = ArticleViewer.this.createLayoutForText(this, null, tL_pageBlockRelatedArticles.title, size - AndroidUtilities.dp(52.0f), 0, this.currentBlock, Layout.Alignment.ALIGN_NORMAL, 1, this.parentAdapter);
                this.textLayout = drawingTextCreateLayoutForText;
                if (drawingTextCreateLayoutForText != null) {
                    this.textY = AndroidUtilities.dp(6.0f) + ((AndroidUtilities.dp(32.0f) - this.textLayout.getHeight()) / 2);
                }
            }
            if (this.textLayout == null) {
                setMeasuredDimension(size, 1);
                return;
            }
            setMeasuredDimension(size, AndroidUtilities.dp(38.0f));
            DrawingText drawingText = this.textLayout;
            drawingText.x = this.textX;
            drawingText.y = this.textY;
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            return ArticleViewer.this.checkLayoutForLinks(this.parentAdapter, motionEvent, this, this.textLayout, this.textX, this.textY) || super.onTouchEvent(motionEvent);
        }

        public void setBlock(TLRPC.TL_pageBlockRelatedArticles tL_pageBlockRelatedArticles) {
            this.currentBlock = tL_pageBlockRelatedArticles;
            requestLayout();
        }
    }

    private class BlockRelatedArticlesShadowCell extends View {
        private CombinedDrawable shadowDrawable;

        public BlockRelatedArticlesShadowCell(Context context) {
            super(context);
            CombinedDrawable combinedDrawable = new CombinedDrawable(new ColorDrawable(ArticleViewer.this.getThemedColor(Theme.key_iv_backgroundGray)), Theme.getThemedDrawable(context, R.drawable.greydivider_bottom, -16777216));
            this.shadowDrawable = combinedDrawable;
            combinedDrawable.setFullsize(true);
            setBackgroundDrawable(this.shadowDrawable);
        }

        @Override // android.view.View
        protected void onMeasure(int i, int i2) {
            setMeasuredDimension(View.MeasureSpec.getSize(i), AndroidUtilities.dp(12.0f));
            Theme.setCombinedDrawableColor(this.shadowDrawable, ArticleViewer.this.getThemedColor(Theme.key_iv_backgroundGray), false);
        }
    }

    private class BlockSlideshowCell extends FrameLayout implements TextSelectionHelper.ArticleSelectableView {
        private DrawingText captionLayout;
        private DrawingText creditLayout;
        private int creditOffset;
        private TLRPC.TL_pageBlockSlideshow currentBlock;
        private int currentPage;
        private View dotsContainer;
        private PagerAdapter innerAdapter;
        private ViewPager innerListView;
        private float pageOffset;
        private WebpageAdapter parentAdapter;
        private int textX;
        private int textY;

        public BlockSlideshowCell(Context context, WebpageAdapter webpageAdapter) throws NoSuchFieldException, Resources.NotFoundException, SecurityException {
            super(context);
            this.textX = AndroidUtilities.dp(18.0f);
            this.parentAdapter = webpageAdapter;
            if (ArticleViewer.dotsPaint == null) {
                Paint unused = ArticleViewer.dotsPaint = new Paint(1);
                ArticleViewer.dotsPaint.setColor(-1);
            }
            ViewPager viewPager = new ViewPager(context) { // from class: org.telegram.ui.ArticleViewer.BlockSlideshowCell.1
                @Override // androidx.viewpager.widget.ViewPager, android.view.ViewGroup
                public boolean onInterceptTouchEvent(MotionEvent motionEvent) throws PackageManager.NameNotFoundException {
                    ArticleViewer.this.windowView.requestDisallowInterceptTouchEvent(true);
                    ArticleViewer.this.cancelCheckLongPress();
                    return super.onInterceptTouchEvent(motionEvent);
                }

                @Override // androidx.viewpager.widget.ViewPager, android.view.View
                public boolean onTouchEvent(MotionEvent motionEvent) {
                    return super.onTouchEvent(motionEvent);
                }
            };
            this.innerListView = viewPager;
            viewPager.addOnPageChangeListener(new ViewPager.OnPageChangeListener() { // from class: org.telegram.ui.ArticleViewer.BlockSlideshowCell.2
                @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
                public void onPageScrollStateChanged(int i) {
                }

                @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
                public void onPageScrolled(int i, float f, int i2) {
                    float measuredWidth = BlockSlideshowCell.this.innerListView.getMeasuredWidth();
                    if (measuredWidth == BitmapDescriptorFactory.HUE_RED) {
                        return;
                    }
                    BlockSlideshowCell.this.pageOffset = (((i * measuredWidth) + i2) - (r0.currentPage * measuredWidth)) / measuredWidth;
                    BlockSlideshowCell.this.dotsContainer.invalidate();
                }

                @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
                public void onPageSelected(int i) {
                    BlockSlideshowCell.this.currentPage = i;
                    BlockSlideshowCell.this.dotsContainer.invalidate();
                }
            });
            ViewPager viewPager2 = this.innerListView;
            PagerAdapter pagerAdapter = new PagerAdapter() { // from class: org.telegram.ui.ArticleViewer.BlockSlideshowCell.3

                /* renamed from: org.telegram.ui.ArticleViewer$BlockSlideshowCell$3$ObjectContainer */
                class ObjectContainer {
                    private TLRPC.PageBlock block;
                    private View view;

                    ObjectContainer() {
                    }
                }

                @Override // androidx.viewpager.widget.PagerAdapter
                public void destroyItem(ViewGroup viewGroup, int i, Object obj) {
                    viewGroup.removeView(((ObjectContainer) obj).view);
                }

                @Override // androidx.viewpager.widget.PagerAdapter
                public int getCount() {
                    if (BlockSlideshowCell.this.currentBlock == null) {
                        return 0;
                    }
                    return BlockSlideshowCell.this.currentBlock.items.size();
                }

                @Override // androidx.viewpager.widget.PagerAdapter
                public int getItemPosition(Object obj) {
                    return BlockSlideshowCell.this.currentBlock.items.contains(((ObjectContainer) obj).block) ? -1 : -2;
                }

                /* JADX WARN: Multi-variable type inference failed */
                @Override // androidx.viewpager.widget.PagerAdapter
                public Object instantiateItem(ViewGroup viewGroup, int i) throws InterruptedException {
                    BlockVideoCell blockVideoCell;
                    TLRPC.PageBlock pageBlock = (TLRPC.PageBlock) BlockSlideshowCell.this.currentBlock.items.get(i);
                    if (pageBlock instanceof TLRPC.TL_pageBlockPhoto) {
                        BlockSlideshowCell blockSlideshowCell = BlockSlideshowCell.this;
                        BlockPhotoCell blockPhotoCell = ArticleViewer.this.new BlockPhotoCell(blockSlideshowCell.getContext(), BlockSlideshowCell.this.parentAdapter, 1);
                        blockPhotoCell.setBlock((TLRPC.TL_pageBlockPhoto) pageBlock, false, true, true);
                        blockVideoCell = blockPhotoCell;
                    } else {
                        BlockSlideshowCell blockSlideshowCell2 = BlockSlideshowCell.this;
                        BlockVideoCell blockVideoCell2 = ArticleViewer.this.new BlockVideoCell(blockSlideshowCell2.getContext(), BlockSlideshowCell.this.parentAdapter, 1);
                        TLRPC.TL_pageBlockVideo tL_pageBlockVideo = (TLRPC.TL_pageBlockVideo) pageBlock;
                        blockVideoCell2.setBlock(tL_pageBlockVideo, (BlockVideoCellState) ArticleViewer.this.videoStates.get(tL_pageBlockVideo.video_id), false, true, true);
                        blockVideoCell = blockVideoCell2;
                    }
                    viewGroup.addView(blockVideoCell);
                    ObjectContainer objectContainer = new ObjectContainer();
                    objectContainer.view = blockVideoCell;
                    objectContainer.block = pageBlock;
                    return objectContainer;
                }

                @Override // androidx.viewpager.widget.PagerAdapter
                public boolean isViewFromObject(View view, Object obj) {
                    return ((ObjectContainer) obj).view == view;
                }
            };
            this.innerAdapter = pagerAdapter;
            viewPager2.setAdapter(pagerAdapter);
            AndroidUtilities.setViewPagerEdgeEffectColor(this.innerListView, ArticleViewer.this.getThemedColor(Theme.key_windowBackgroundWhite));
            addView(this.innerListView);
            View view = new View(context) { // from class: org.telegram.ui.ArticleViewer.BlockSlideshowCell.4
                @Override // android.view.View
                protected void onDraw(Canvas canvas) {
                    int measuredWidth;
                    int i;
                    if (BlockSlideshowCell.this.currentBlock == null) {
                        return;
                    }
                    int count = BlockSlideshowCell.this.innerAdapter.getCount();
                    int iDp = (AndroidUtilities.dp(7.0f) * count) + ((count - 1) * AndroidUtilities.dp(6.0f)) + AndroidUtilities.dp(4.0f);
                    if (iDp < getMeasuredWidth()) {
                        measuredWidth = (getMeasuredWidth() - iDp) / 2;
                    } else {
                        int iDp2 = AndroidUtilities.dp(4.0f);
                        int iDp3 = AndroidUtilities.dp(13.0f);
                        int measuredWidth2 = ((getMeasuredWidth() - AndroidUtilities.dp(8.0f)) / 2) / iDp3;
                        int i2 = (count - measuredWidth2) - 1;
                        if (BlockSlideshowCell.this.currentPage != i2 || BlockSlideshowCell.this.pageOffset >= BitmapDescriptorFactory.HUE_RED) {
                            if (BlockSlideshowCell.this.currentPage >= i2) {
                                i = ((count - (measuredWidth2 * 2)) - 1) * iDp3;
                            } else if (BlockSlideshowCell.this.currentPage > measuredWidth2) {
                                i = ((int) (BlockSlideshowCell.this.pageOffset * iDp3)) + ((BlockSlideshowCell.this.currentPage - measuredWidth2) * iDp3);
                            } else if (BlockSlideshowCell.this.currentPage != measuredWidth2 || BlockSlideshowCell.this.pageOffset <= BitmapDescriptorFactory.HUE_RED) {
                                measuredWidth = iDp2;
                            } else {
                                i = (int) (BlockSlideshowCell.this.pageOffset * iDp3);
                            }
                            measuredWidth = iDp2 - i;
                        } else {
                            measuredWidth = iDp2 - (((int) (BlockSlideshowCell.this.pageOffset * iDp3)) + (((count - (measuredWidth2 * 2)) - 1) * iDp3));
                        }
                    }
                    int i3 = 0;
                    while (i3 < BlockSlideshowCell.this.currentBlock.items.size()) {
                        int iDp4 = AndroidUtilities.dp(4.0f) + measuredWidth + (AndroidUtilities.dp(13.0f) * i3);
                        Drawable drawable = BlockSlideshowCell.this.currentPage == i3 ? ArticleViewer.this.slideDotBigDrawable : ArticleViewer.this.slideDotDrawable;
                        drawable.setBounds(iDp4 - AndroidUtilities.dp(5.0f), 0, iDp4 + AndroidUtilities.dp(5.0f), AndroidUtilities.dp(10.0f));
                        drawable.draw(canvas);
                        i3++;
                    }
                }
            };
            this.dotsContainer = view;
            addView(view);
            setWillNotDraw(false);
        }

        @Override // org.telegram.ui.Cells.TextSelectionHelper.ArticleSelectableView
        public void fillTextLayoutBlocks(ArrayList arrayList) {
            DrawingText drawingText = this.captionLayout;
            if (drawingText != null) {
                arrayList.add(drawingText);
            }
            DrawingText drawingText2 = this.creditLayout;
            if (drawingText2 != null) {
                arrayList.add(drawingText2);
            }
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            if (this.currentBlock == null) {
                return;
            }
            int i = 0;
            if (this.captionLayout != null) {
                canvas.save();
                canvas.translate(this.textX, this.textY);
                ArticleViewer.this.drawTextSelection(canvas, this, 0);
                this.captionLayout.draw(canvas, this);
                canvas.restore();
                i = 1;
            }
            if (this.creditLayout != null) {
                canvas.save();
                canvas.translate(this.textX, this.textY + this.creditOffset);
                ArticleViewer.this.drawTextSelection(canvas, this, i);
                this.creditLayout.draw(canvas, this);
                canvas.restore();
            }
        }

        @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
            this.innerListView.layout(0, AndroidUtilities.dp(8.0f), this.innerListView.getMeasuredWidth(), AndroidUtilities.dp(8.0f) + this.innerListView.getMeasuredHeight());
            int bottom = this.innerListView.getBottom() - AndroidUtilities.dp(23.0f);
            View view = this.dotsContainer;
            view.layout(0, bottom, view.getMeasuredWidth(), this.dotsContainer.getMeasuredHeight() + bottom);
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            int iDp;
            int size = View.MeasureSpec.getSize(i);
            if (this.currentBlock != null) {
                int iDp2 = AndroidUtilities.dp(310.0f);
                this.innerListView.measure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(iDp2, 1073741824));
                this.currentBlock.items.size();
                this.dotsContainer.measure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(10.0f), 1073741824));
                int iDp3 = size - AndroidUtilities.dp(36.0f);
                int iDp4 = iDp2 + AndroidUtilities.dp(16.0f);
                this.textY = iDp4;
                ArticleViewer articleViewer = ArticleViewer.this;
                TLRPC.TL_pageBlockSlideshow tL_pageBlockSlideshow = this.currentBlock;
                DrawingText drawingTextCreateLayoutForText = articleViewer.createLayoutForText(this, null, tL_pageBlockSlideshow.caption.text, iDp3, iDp4, tL_pageBlockSlideshow, this.parentAdapter);
                this.captionLayout = drawingTextCreateLayoutForText;
                if (drawingTextCreateLayoutForText != null) {
                    int iDp5 = AndroidUtilities.dp(4.0f) + this.captionLayout.getHeight();
                    this.creditOffset = iDp5;
                    iDp2 += iDp5 + AndroidUtilities.dp(4.0f);
                    DrawingText drawingText = this.captionLayout;
                    drawingText.x = this.textX;
                    drawingText.y = this.textY;
                } else {
                    this.creditOffset = 0;
                }
                ArticleViewer articleViewer2 = ArticleViewer.this;
                TLRPC.TL_pageBlockSlideshow tL_pageBlockSlideshow2 = this.currentBlock;
                DrawingText drawingTextCreateLayoutForText2 = articleViewer2.createLayoutForText(this, null, tL_pageBlockSlideshow2.caption.credit, iDp3, this.textY + this.creditOffset, tL_pageBlockSlideshow2, this.parentAdapter.isRtl ? StaticLayoutEx.ALIGN_RIGHT() : Layout.Alignment.ALIGN_NORMAL, this.parentAdapter);
                this.creditLayout = drawingTextCreateLayoutForText2;
                if (drawingTextCreateLayoutForText2 != null) {
                    iDp2 += AndroidUtilities.dp(4.0f) + this.creditLayout.getHeight();
                    DrawingText drawingText2 = this.creditLayout;
                    drawingText2.x = this.textX;
                    drawingText2.y = this.textY + this.creditOffset;
                }
                iDp = iDp2 + AndroidUtilities.dp(16.0f);
            } else {
                iDp = 1;
            }
            setMeasuredDimension(size, iDp);
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            return ArticleViewer.this.checkLayoutForLinks(this.parentAdapter, motionEvent, this, this.captionLayout, this.textX, this.textY) || ArticleViewer.this.checkLayoutForLinks(this.parentAdapter, motionEvent, this, this.creditLayout, this.textX, this.textY + this.creditOffset) || super.onTouchEvent(motionEvent);
        }

        public void setBlock(TLRPC.TL_pageBlockSlideshow tL_pageBlockSlideshow) throws Resources.NotFoundException {
            this.currentBlock = tL_pageBlockSlideshow;
            this.innerAdapter.notifyDataSetChanged();
            this.innerListView.setCurrentItem(0, false);
            this.innerListView.forceLayout();
            requestLayout();
        }
    }

    private class BlockSubheaderCell extends View implements TextSelectionHelper.ArticleSelectableView {
        private TLRPC.TL_pageBlockSubheader currentBlock;
        private WebpageAdapter parentAdapter;
        private DrawingText textLayout;
        private int textX;
        private int textY;

        public BlockSubheaderCell(Context context, WebpageAdapter webpageAdapter) {
            super(context);
            this.textX = AndroidUtilities.dp(18.0f);
            this.textY = AndroidUtilities.dp(8.0f);
            this.parentAdapter = webpageAdapter;
        }

        @Override // org.telegram.ui.Cells.TextSelectionHelper.ArticleSelectableView
        public void fillTextLayoutBlocks(ArrayList arrayList) {
            DrawingText drawingText = this.textLayout;
            if (drawingText != null) {
                arrayList.add(drawingText);
            }
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            if (this.currentBlock == null || this.textLayout == null) {
                return;
            }
            canvas.save();
            canvas.translate(this.textX, this.textY);
            ArticleViewer.this.drawTextSelection(canvas, this);
            this.textLayout.draw(canvas, this);
            canvas.restore();
        }

        @Override // android.view.View
        public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            accessibilityNodeInfo.setEnabled(true);
            if (this.textLayout == null) {
                return;
            }
            accessibilityNodeInfo.setText(((Object) this.textLayout.getText()) + ", " + LocaleController.getString(R.string.AccDescrIVHeading));
        }

        @Override // android.view.View
        protected void onMeasure(int i, int i2) {
            int iDp;
            int size = View.MeasureSpec.getSize(i);
            TLRPC.TL_pageBlockSubheader tL_pageBlockSubheader = this.currentBlock;
            if (tL_pageBlockSubheader != null) {
                DrawingText drawingTextCreateLayoutForText = ArticleViewer.this.createLayoutForText(this, null, tL_pageBlockSubheader.text, size - AndroidUtilities.dp(36.0f), this.textY, this.currentBlock, this.parentAdapter.isRtl ? StaticLayoutEx.ALIGN_RIGHT() : Layout.Alignment.ALIGN_NORMAL, this.parentAdapter);
                this.textLayout = drawingTextCreateLayoutForText;
                if (drawingTextCreateLayoutForText != null) {
                    iDp = AndroidUtilities.dp(16.0f) + this.textLayout.getHeight();
                    DrawingText drawingText = this.textLayout;
                    drawingText.x = this.textX;
                    drawingText.y = this.textY;
                } else {
                    iDp = 0;
                }
            } else {
                iDp = 1;
            }
            setMeasuredDimension(size, iDp);
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            return ArticleViewer.this.checkLayoutForLinks(this.parentAdapter, motionEvent, this, this.textLayout, this.textX, this.textY) || super.onTouchEvent(motionEvent);
        }

        public void setBlock(TLRPC.TL_pageBlockSubheader tL_pageBlockSubheader) {
            this.currentBlock = tL_pageBlockSubheader;
            requestLayout();
        }
    }

    private class BlockSubtitleCell extends View implements TextSelectionHelper.ArticleSelectableView {
        private TLRPC.TL_pageBlockSubtitle currentBlock;
        private WebpageAdapter parentAdapter;
        private DrawingText textLayout;
        private int textX;
        private int textY;

        public BlockSubtitleCell(Context context, WebpageAdapter webpageAdapter) {
            super(context);
            this.textX = AndroidUtilities.dp(18.0f);
            this.textY = AndroidUtilities.dp(8.0f);
            this.parentAdapter = webpageAdapter;
        }

        @Override // org.telegram.ui.Cells.TextSelectionHelper.ArticleSelectableView
        public void fillTextLayoutBlocks(ArrayList arrayList) {
            DrawingText drawingText = this.textLayout;
            if (drawingText != null) {
                arrayList.add(drawingText);
            }
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            if (this.currentBlock == null || this.textLayout == null) {
                return;
            }
            canvas.save();
            canvas.translate(this.textX, this.textY);
            ArticleViewer.this.drawTextSelection(canvas, this);
            this.textLayout.draw(canvas, this);
            canvas.restore();
        }

        @Override // android.view.View
        public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            accessibilityNodeInfo.setEnabled(true);
            if (this.textLayout == null) {
                return;
            }
            accessibilityNodeInfo.setText(((Object) this.textLayout.getText()) + ", " + LocaleController.getString(R.string.AccDescrIVHeading));
        }

        @Override // android.view.View
        protected void onMeasure(int i, int i2) {
            int iDp;
            int size = View.MeasureSpec.getSize(i);
            TLRPC.TL_pageBlockSubtitle tL_pageBlockSubtitle = this.currentBlock;
            if (tL_pageBlockSubtitle != null) {
                DrawingText drawingTextCreateLayoutForText = ArticleViewer.this.createLayoutForText(this, null, tL_pageBlockSubtitle.text, size - AndroidUtilities.dp(36.0f), this.textY, this.currentBlock, this.parentAdapter.isRtl ? StaticLayoutEx.ALIGN_RIGHT() : Layout.Alignment.ALIGN_NORMAL, this.parentAdapter);
                this.textLayout = drawingTextCreateLayoutForText;
                if (drawingTextCreateLayoutForText != null) {
                    iDp = AndroidUtilities.dp(16.0f) + this.textLayout.getHeight();
                    DrawingText drawingText = this.textLayout;
                    drawingText.x = this.textX;
                    drawingText.y = this.textY;
                } else {
                    iDp = 0;
                }
            } else {
                iDp = 1;
            }
            setMeasuredDimension(size, iDp);
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            return ArticleViewer.this.checkLayoutForLinks(this.parentAdapter, motionEvent, this, this.textLayout, this.textX, this.textY) || super.onTouchEvent(motionEvent);
        }

        public void setBlock(TLRPC.TL_pageBlockSubtitle tL_pageBlockSubtitle) {
            this.currentBlock = tL_pageBlockSubtitle;
            requestLayout();
        }
    }

    public class BlockTableCell extends FrameLayout implements TableLayout.TableLayoutDelegate, TextSelectionHelper.ArticleSelectableView {
        private TLRPC.TL_pageBlockTable currentBlock;
        private boolean firstLayout;
        private int listX;
        private int listY;
        private WebpageAdapter parentAdapter;
        private HorizontalScrollView scrollView;
        private TableLayout tableLayout;
        private int textX;
        private int textY;
        private DrawingText titleLayout;

        public BlockTableCell(Context context, WebpageAdapter webpageAdapter) {
            super(context);
            this.parentAdapter = webpageAdapter;
            HorizontalScrollView horizontalScrollView = new HorizontalScrollView(context) { // from class: org.telegram.ui.ArticleViewer.BlockTableCell.1
                @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
                public boolean onInterceptTouchEvent(MotionEvent motionEvent) throws PackageManager.NameNotFoundException {
                    boolean zOnInterceptTouchEvent = super.onInterceptTouchEvent(motionEvent);
                    if (BlockTableCell.this.tableLayout.getMeasuredWidth() > getMeasuredWidth() - AndroidUtilities.dp(36.0f) && zOnInterceptTouchEvent) {
                        ArticleViewer.this.windowView.requestDisallowInterceptTouchEvent(true);
                    }
                    return zOnInterceptTouchEvent;
                }

                @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.View
                protected void onMeasure(int i, int i2) {
                    BlockTableCell.this.tableLayout.measure(View.MeasureSpec.makeMeasureSpec((View.MeasureSpec.getSize(i) - getPaddingLeft()) - getPaddingRight(), 0), i2);
                    setMeasuredDimension(View.MeasureSpec.getSize(i), BlockTableCell.this.tableLayout.getMeasuredHeight());
                }

                @Override // android.view.View
                protected void onScrollChanged(int i, int i2, int i3, int i4) {
                    super.onScrollChanged(i, i2, i3, i4);
                    if (ArticleViewer.this.pressedLinkOwnerLayout != null) {
                        ArticleViewer.this.pressedLinkOwnerLayout = null;
                        ArticleViewer.this.pressedLinkOwnerView = null;
                    }
                    BlockTableCell.this.updateChildTextPositions();
                    TextSelectionHelper.ArticleTextSelectionHelper articleTextSelectionHelper = ArticleViewer.this.textSelectionHelper;
                    if (articleTextSelectionHelper == null || !articleTextSelectionHelper.isInSelectionMode()) {
                        return;
                    }
                    ArticleViewer.this.textSelectionHelper.invalidate();
                }

                @Override // android.widget.HorizontalScrollView, android.view.View
                public boolean onTouchEvent(MotionEvent motionEvent) {
                    if (BlockTableCell.this.tableLayout.getMeasuredWidth() <= getMeasuredWidth() - AndroidUtilities.dp(36.0f)) {
                        return false;
                    }
                    return super.onTouchEvent(motionEvent);
                }

                @Override // android.view.View
                protected boolean overScrollBy(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, boolean z) {
                    ArticleViewer.this.removePressedLink();
                    return super.overScrollBy(i, i2, i3, i4, i5, i6, i7, i8, z);
                }
            };
            this.scrollView = horizontalScrollView;
            horizontalScrollView.setPadding(AndroidUtilities.dp(18.0f), 0, AndroidUtilities.dp(18.0f), 0);
            this.scrollView.setClipToPadding(false);
            addView(this.scrollView, LayoutHelper.createFrame(-1, -2.0f));
            TableLayout tableLayout = new TableLayout(context, this, ArticleViewer.this.textSelectionHelper);
            this.tableLayout = tableLayout;
            tableLayout.setOrientation(0);
            this.tableLayout.setRowOrderPreserved(true);
            this.scrollView.addView(this.tableLayout, new FrameLayout.LayoutParams(-2, -2));
            setWillNotDraw(false);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void updateChildTextPositions() {
            int i = this.titleLayout == null ? 0 : 1;
            int childCount = this.tableLayout.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                TableLayout.Child childAt = this.tableLayout.getChildAt(i2);
                DrawingText drawingText = childAt.textLayout;
                if (drawingText != null) {
                    drawingText.x = ((childAt.getTextX() + this.listX) + AndroidUtilities.dp(18.0f)) - this.scrollView.getScrollX();
                    childAt.textLayout.y = childAt.getTextY() + this.listY;
                    childAt.textLayout.row = childAt.getRow();
                    childAt.setSelectionIndex(i);
                    i++;
                }
            }
        }

        @Override // org.telegram.ui.Components.TableLayout.TableLayoutDelegate
        public DrawingText createTextLayout(TLRPC.TL_pageTableCell tL_pageTableCell, int i) {
            if (tL_pageTableCell == null) {
                return null;
            }
            return ArticleViewer.this.createLayoutForText(this, null, tL_pageTableCell.text, i, -1, this.currentBlock, tL_pageTableCell.align_right ? Layout.Alignment.ALIGN_OPPOSITE : tL_pageTableCell.align_center ? Layout.Alignment.ALIGN_CENTER : Layout.Alignment.ALIGN_NORMAL, 0, this.parentAdapter);
        }

        @Override // org.telegram.ui.Cells.TextSelectionHelper.ArticleSelectableView
        public void fillTextLayoutBlocks(ArrayList arrayList) {
            DrawingText drawingText = this.titleLayout;
            if (drawingText != null) {
                arrayList.add(drawingText);
            }
            int childCount = this.tableLayout.getChildCount();
            for (int i = 0; i < childCount; i++) {
                DrawingText drawingText2 = this.tableLayout.getChildAt(i).textLayout;
                if (drawingText2 != null) {
                    arrayList.add(drawingText2);
                }
            }
        }

        public Paint getHalfLinePaint() {
            return ArticleViewer.tableHalfLinePaint;
        }

        @Override // org.telegram.ui.Components.TableLayout.TableLayoutDelegate
        public Paint getHeaderPaint() {
            return ArticleViewer.tableHeaderPaint;
        }

        @Override // org.telegram.ui.Components.TableLayout.TableLayoutDelegate
        public Paint getLinePaint() {
            return ArticleViewer.tableLinePaint;
        }

        @Override // org.telegram.ui.Components.TableLayout.TableLayoutDelegate
        public Paint getStripPaint() {
            return ArticleViewer.tableStripPaint;
        }

        @Override // android.view.View, org.telegram.ui.Cells.TextSelectionHelper.SelectableView
        public void invalidate() {
            super.invalidate();
            this.tableLayout.invalidate();
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            if (this.currentBlock == null) {
                return;
            }
            if (this.titleLayout != null) {
                canvas.save();
                canvas.translate(this.textX, this.textY);
                ArticleViewer.this.drawTextSelection(canvas, this, 0);
                this.titleLayout.draw(canvas, this);
                canvas.restore();
            }
            if (this.currentBlock.level > 0) {
                canvas.drawRect(AndroidUtilities.dp(18.0f), BitmapDescriptorFactory.HUE_RED, AndroidUtilities.dp(20.0f), getMeasuredHeight() - (this.currentBlock.bottom ? AndroidUtilities.dp(6.0f) : 0), ArticleViewer.quoteLinePaint);
            }
        }

        @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
            HorizontalScrollView horizontalScrollView = this.scrollView;
            int i5 = this.listX;
            horizontalScrollView.layout(i5, this.listY, horizontalScrollView.getMeasuredWidth() + i5, this.listY + this.scrollView.getMeasuredHeight());
            if (this.firstLayout) {
                if (this.parentAdapter.isRtl) {
                    this.scrollView.setScrollX((this.tableLayout.getMeasuredWidth() - this.scrollView.getMeasuredWidth()) + AndroidUtilities.dp(36.0f));
                } else {
                    this.scrollView.setScrollX(0);
                }
                this.firstLayout = false;
            }
        }

        @Override // org.telegram.ui.Components.TableLayout.TableLayoutDelegate
        public void onLayoutChild(DrawingText drawingText, int i, int i2) {
            if (drawingText == null || ArticleViewer.this.searchResults.isEmpty() || ArticleViewer.this.searchText == null) {
                return;
            }
            String lowerCase = drawingText.textLayout.getText().toString().toLowerCase();
            int i3 = 0;
            while (true) {
                int iIndexOf = lowerCase.indexOf(ArticleViewer.this.searchText, i3);
                if (iIndexOf < 0) {
                    return;
                }
                int length = ArticleViewer.this.searchText.length() + iIndexOf;
                if (iIndexOf == 0 || AndroidUtilities.isPunctuationCharacter(lowerCase.charAt(iIndexOf - 1))) {
                    HashMap map = ArticleViewer.this.pages[0].adapter.searchTextOffset;
                    String str = ArticleViewer.this.searchText + this.currentBlock + drawingText.parentText + iIndexOf;
                    StaticLayout staticLayout = drawingText.textLayout;
                    map.put(str, Integer.valueOf(staticLayout.getLineTop(staticLayout.getLineForOffset(iIndexOf)) + i2));
                }
                i3 = length;
            }
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            int measuredHeight;
            int iDp;
            int height;
            int size = View.MeasureSpec.getSize(i);
            TLRPC.TL_pageBlockTable tL_pageBlockTable = this.currentBlock;
            if (tL_pageBlockTable != null) {
                if (tL_pageBlockTable.level > 0) {
                    int iDp2 = AndroidUtilities.dp(r14 * 14);
                    this.listX = iDp2;
                    iDp = iDp2 + AndroidUtilities.dp(18.0f);
                    this.textX = iDp;
                } else {
                    this.listX = 0;
                    this.textX = AndroidUtilities.dp(18.0f);
                    iDp = AndroidUtilities.dp(36.0f);
                }
                int i3 = size - iDp;
                ArticleViewer articleViewer = ArticleViewer.this;
                TLRPC.TL_pageBlockTable tL_pageBlockTable2 = this.currentBlock;
                DrawingText drawingTextCreateLayoutForText = articleViewer.createLayoutForText(this, null, tL_pageBlockTable2.title, i3, 0, tL_pageBlockTable2, Layout.Alignment.ALIGN_CENTER, 0, this.parentAdapter);
                this.titleLayout = drawingTextCreateLayoutForText;
                if (drawingTextCreateLayoutForText != null) {
                    this.textY = 0;
                    height = drawingTextCreateLayoutForText.getHeight() + AndroidUtilities.dp(8.0f);
                    this.listY = height;
                    DrawingText drawingText = this.titleLayout;
                    drawingText.x = this.textX;
                    drawingText.y = this.textY;
                } else {
                    this.listY = AndroidUtilities.dp(8.0f);
                    height = 0;
                }
                this.scrollView.measure(View.MeasureSpec.makeMeasureSpec(size - this.listX, 1073741824), View.MeasureSpec.makeMeasureSpec(0, 0));
                measuredHeight = height + this.scrollView.getMeasuredHeight() + AndroidUtilities.dp(8.0f);
                TLRPC.TL_pageBlockTable tL_pageBlockTable3 = this.currentBlock;
                if (tL_pageBlockTable3.level > 0 && !tL_pageBlockTable3.bottom) {
                    measuredHeight += AndroidUtilities.dp(8.0f);
                }
            } else {
                measuredHeight = 1;
            }
            setMeasuredDimension(size, measuredHeight);
            updateChildTextPositions();
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            int childCount = this.tableLayout.getChildCount();
            for (int i = 0; i < childCount; i++) {
                TableLayout.Child childAt = this.tableLayout.getChildAt(i);
                if (ArticleViewer.this.checkLayoutForLinks(this.parentAdapter, motionEvent, this, childAt.textLayout, (this.scrollView.getPaddingLeft() - this.scrollView.getScrollX()) + this.listX + childAt.getTextX(), this.listY + childAt.getTextY())) {
                    return true;
                }
            }
            return ArticleViewer.this.checkLayoutForLinks(this.parentAdapter, motionEvent, this, this.titleLayout, this.textX, this.textY) || super.onTouchEvent(motionEvent);
        }

        public void setBlock(TLRPC.TL_pageBlockTable tL_pageBlockTable) throws NoSuchFieldException, SecurityException {
            int i;
            this.currentBlock = tL_pageBlockTable;
            AndroidUtilities.setScrollViewEdgeEffectColor(this.scrollView, ArticleViewer.this.getThemedColor(Theme.key_windowBackgroundWhite));
            this.tableLayout.removeAllChildrens();
            this.tableLayout.setDrawLines(this.currentBlock.bordered);
            this.tableLayout.setStriped(this.currentBlock.striped);
            this.tableLayout.setRtl(this.parentAdapter.isRtl);
            if (this.currentBlock.rows.isEmpty()) {
                i = 0;
            } else {
                TLRPC.TL_pageTableRow tL_pageTableRow = (TLRPC.TL_pageTableRow) this.currentBlock.rows.get(0);
                int size = tL_pageTableRow.cells.size();
                i = 0;
                for (int i2 = 0; i2 < size; i2++) {
                    int i3 = ((TLRPC.TL_pageTableCell) tL_pageTableRow.cells.get(i2)).colspan;
                    if (i3 == 0) {
                        i3 = 1;
                    }
                    i += i3;
                }
            }
            int size2 = this.currentBlock.rows.size();
            for (int i4 = 0; i4 < size2; i4++) {
                TLRPC.TL_pageTableRow tL_pageTableRow2 = (TLRPC.TL_pageTableRow) this.currentBlock.rows.get(i4);
                int size3 = tL_pageTableRow2.cells.size();
                int i5 = 0;
                for (int i6 = 0; i6 < size3; i6++) {
                    TLRPC.TL_pageTableCell tL_pageTableCell = (TLRPC.TL_pageTableCell) tL_pageTableRow2.cells.get(i6);
                    int i7 = tL_pageTableCell.colspan;
                    if (i7 == 0) {
                        i7 = 1;
                    }
                    int i8 = tL_pageTableCell.rowspan;
                    if (i8 == 0) {
                        i8 = 1;
                    }
                    if (tL_pageTableCell.text != null) {
                        this.tableLayout.addChild(tL_pageTableCell, i5, i4, i7);
                    } else {
                        this.tableLayout.addChild(i5, i4, i7, i8);
                    }
                    i5 += i7;
                }
            }
            this.tableLayout.setColumnCount(i);
            this.firstLayout = true;
            requestLayout();
        }
    }

    private class BlockTitleCell extends View implements TextSelectionHelper.ArticleSelectableView {
        private TLRPC.TL_pageBlockTitle currentBlock;
        private WebpageAdapter parentAdapter;
        private DrawingText textLayout;
        private int textX;
        private int textY;

        public BlockTitleCell(Context context, WebpageAdapter webpageAdapter) {
            super(context);
            this.textX = AndroidUtilities.dp(18.0f);
            this.parentAdapter = webpageAdapter;
        }

        @Override // org.telegram.ui.Cells.TextSelectionHelper.ArticleSelectableView
        public void fillTextLayoutBlocks(ArrayList arrayList) {
            DrawingText drawingText = this.textLayout;
            if (drawingText != null) {
                arrayList.add(drawingText);
            }
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            if (this.currentBlock == null || this.textLayout == null) {
                return;
            }
            canvas.save();
            canvas.translate(this.textX, this.textY);
            ArticleViewer.this.drawTextSelection(canvas, this);
            this.textLayout.draw(canvas, this);
            canvas.restore();
        }

        @Override // android.view.View
        public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            accessibilityNodeInfo.setEnabled(true);
            if (this.textLayout == null) {
                return;
            }
            accessibilityNodeInfo.setText(((Object) this.textLayout.getText()) + ", " + LocaleController.getString(R.string.AccDescrIVTitle));
        }

        @Override // android.view.View
        protected void onMeasure(int i, int i2) {
            int iDp;
            int size = View.MeasureSpec.getSize(i);
            TLRPC.TL_pageBlockTitle tL_pageBlockTitle = this.currentBlock;
            if (tL_pageBlockTitle != null) {
                if (tL_pageBlockTitle.first) {
                    iDp = AndroidUtilities.dp(8.0f);
                    this.textY = AndroidUtilities.dp(16.0f);
                } else {
                    this.textY = AndroidUtilities.dp(8.0f);
                    iDp = 0;
                }
                DrawingText drawingTextCreateLayoutForText = ArticleViewer.this.createLayoutForText(this, null, this.currentBlock.text, size - AndroidUtilities.dp(36.0f), this.textY, this.currentBlock, this.parentAdapter.isRtl ? StaticLayoutEx.ALIGN_RIGHT() : Layout.Alignment.ALIGN_NORMAL, this.parentAdapter);
                this.textLayout = drawingTextCreateLayoutForText;
                if (drawingTextCreateLayoutForText != null) {
                    iDp += AndroidUtilities.dp(16.0f) + this.textLayout.getHeight();
                    DrawingText drawingText = this.textLayout;
                    drawingText.x = this.textX;
                    drawingText.y = this.textY;
                }
            } else {
                iDp = 1;
            }
            setMeasuredDimension(size, iDp);
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            return ArticleViewer.this.checkLayoutForLinks(this.parentAdapter, motionEvent, this, this.textLayout, this.textX, this.textY) || super.onTouchEvent(motionEvent);
        }

        public void setBlock(TLRPC.TL_pageBlockTitle tL_pageBlockTitle) {
            this.currentBlock = tL_pageBlockTitle;
            requestLayout();
        }
    }

    private class BlockVideoCell extends FrameLayout implements DownloadController.FileDownloadProgressListener, TextSelectionHelper.ArticleSelectableView {
        private int TAG;
        private AspectRatioFrameLayout aspectRatioFrameLayout;
        FrameLayout aspectRationContainer;
        private boolean autoDownload;
        private int buttonPressed;
        private int buttonState;
        private int buttonX;
        private int buttonY;
        private boolean calcHeight;
        private boolean cancelLoading;
        private DrawingText captionLayout;
        private BlockChannelCell channelCell;
        private DrawingText creditLayout;
        private int creditOffset;
        private TLRPC.TL_pageBlockVideo currentBlock;
        private TLRPC.Document currentDocument;
        private int currentType;
        private boolean firstFrameRendered;
        private MessageObject.GroupedMessagePosition groupPosition;
        private ImageReceiver imageView;
        private boolean isFirst;
        private boolean isGif;
        private WebpageAdapter parentAdapter;
        private TLRPC.PageBlock parentBlock;
        private boolean photoPressed;
        private RadialProgress2 radialProgress;
        private int textX;
        private int textY;
        private TextureView textureView;
        private BlockVideoCellState videoState;

        public BlockVideoCell(Context context, WebpageAdapter webpageAdapter, int i) {
            super(context);
            this.parentAdapter = webpageAdapter;
            setWillNotDraw(false);
            ImageReceiver imageReceiver = new ImageReceiver(this);
            this.imageView = imageReceiver;
            imageReceiver.setNeedsQualityThumb(true);
            this.imageView.setShouldGenerateQualityThumb(true);
            this.currentType = i;
            RadialProgress2 radialProgress2 = new RadialProgress2(this);
            this.radialProgress = radialProgress2;
            radialProgress2.setProgressColor(-1);
            this.radialProgress.setColors(1711276032, 2130706432, -1, -2500135);
            this.TAG = DownloadController.getInstance(ArticleViewer.this.currentAccount).generateObserverTag();
            this.channelCell = ArticleViewer.this.new BlockChannelCell(context, this.parentAdapter, 1);
            AspectRatioFrameLayout aspectRatioFrameLayout = new AspectRatioFrameLayout(context);
            this.aspectRatioFrameLayout = aspectRatioFrameLayout;
            aspectRatioFrameLayout.setResizeMode(0);
            TextureView textureView = new TextureView(context);
            this.textureView = textureView;
            textureView.setOpaque(false);
            this.aspectRationContainer = new FrameLayout(getContext());
            this.aspectRatioFrameLayout.addView(this.textureView, LayoutHelper.createFrame(-1, -2, 1));
            this.aspectRationContainer.addView(this.aspectRatioFrameLayout, LayoutHelper.createFrame(-1, -1, 17));
            addView(this.aspectRationContainer, LayoutHelper.createFrame(-1, -2.0f));
            addView(this.channelCell, LayoutHelper.createFrame(-1, -2.0f));
        }

        private void didPressedButton(boolean z) {
            int i = this.buttonState;
            if (i == 0) {
                this.cancelLoading = false;
                this.radialProgress.setProgress(BitmapDescriptorFactory.HUE_RED, false);
                if (this.isGif) {
                    this.imageView.setImage(ImageLocation.getForDocument(this.currentDocument), null, ImageLocation.getForDocument(FileLoader.getClosestPhotoSizeWithSize(this.currentDocument.thumbs, 40), this.currentDocument), "80_80_b", this.currentDocument.size, null, this.parentAdapter.currentPage, 1);
                } else {
                    FileLoader.getInstance(ArticleViewer.this.currentAccount).loadFile(this.currentDocument, this.parentAdapter.currentPage, 1, 1);
                }
                this.buttonState = 1;
                this.radialProgress.setIcon(getIconForCurrentState(), true, z);
            } else {
                if (i != 1) {
                    if (i != 2) {
                        if (i == 3) {
                            ArticleViewer.this.openPhoto(this.currentBlock, this.parentAdapter);
                            return;
                        }
                        return;
                    } else {
                        this.imageView.setAllowStartAnimation(true);
                        this.imageView.startAnimation();
                        this.buttonState = -1;
                        this.radialProgress.setIcon(getIconForCurrentState(), false, z);
                        return;
                    }
                }
                this.cancelLoading = true;
                if (this.isGif) {
                    this.imageView.cancelLoadImage();
                } else {
                    FileLoader.getInstance(ArticleViewer.this.currentAccount).cancelLoadFile(this.currentDocument);
                }
                this.buttonState = 0;
                this.radialProgress.setIcon(getIconForCurrentState(), false, z);
            }
            invalidate();
        }

        private int getIconForCurrentState() {
            int i = this.buttonState;
            if (i == 0) {
                return 2;
            }
            if (i == 1) {
                return 3;
            }
            if (i == 2) {
                return 8;
            }
            return i == 3 ? 0 : 4;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void startVideoPlayer() {
            if (this.currentDocument != null) {
                ArticleViewer articleViewer = ArticleViewer.this;
                if (articleViewer.videoPlayer != null) {
                    return;
                }
                articleViewer.videoPlayer = new VideoPlayerHolderBase() { // from class: org.telegram.ui.ArticleViewer.BlockVideoCell.1
                    @Override // org.telegram.messenger.video.VideoPlayerHolderBase
                    public boolean needRepeat() {
                        return true;
                    }

                    @Override // org.telegram.messenger.video.VideoPlayerHolderBase
                    public void onRenderedFirstFrame() {
                        super.onRenderedFirstFrame();
                        if (this.firstFrameRendered) {
                            return;
                        }
                        this.firstFrameRendered = true;
                        BlockVideoCell.this.textureView.setAlpha(1.0f);
                        if (BlockVideoCell.this.currentBlock != null) {
                            LongSparseArray longSparseArray = ArticleViewer.this.videoStates;
                            long j = BlockVideoCell.this.currentBlock.video_id;
                            BlockVideoCell blockVideoCell = BlockVideoCell.this;
                            longSparseArray.put(j, blockVideoCell.setState(BlockVideoCellState.fromPlayer(ArticleViewer.this.videoPlayer, blockVideoCell)));
                        }
                    }
                }.with(this.textureView);
                TLRPC.Document document = this.currentDocument;
                for (int i = 0; i < document.attributes.size(); i++) {
                    if (document.attributes.get(i) instanceof TLRPC.TL_documentAttributeVideo) {
                        TLRPC.TL_documentAttributeVideo tL_documentAttributeVideo = (TLRPC.TL_documentAttributeVideo) document.attributes.get(i);
                        this.aspectRatioFrameLayout.setAspectRatio(tL_documentAttributeVideo.w / tL_documentAttributeVideo.h, 0);
                    }
                }
                Uri uriPrepareUri = this.parentAdapter.currentPage == null ? null : FileStreamLoadOperation.prepareUri(ArticleViewer.this.currentAccount, document, this.parentAdapter.currentPage);
                if (uriPrepareUri == null) {
                    return;
                }
                VideoPlayerHolderBase videoPlayerHolderBase = ArticleViewer.this.videoPlayer;
                BlockVideoCellState blockVideoCellState = this.videoState;
                videoPlayerHolderBase.seekTo(blockVideoCellState == null ? 0L : blockVideoCellState.playFrom);
                ArticleViewer.this.videoPlayer.preparePlayer(uriPrepareUri, true, 1.0f);
                ArticleViewer.this.videoPlayer.play();
            }
        }

        @Override // android.view.ViewGroup
        protected boolean drawChild(Canvas canvas, View view, long j) {
            if (view == this.aspectRationContainer && ArticleViewer.this.pinchToZoomHelper.isInOverlayModeFor(this)) {
                return true;
            }
            return super.drawChild(canvas, view, j);
        }

        @Override // org.telegram.ui.Cells.TextSelectionHelper.ArticleSelectableView
        public void fillTextLayoutBlocks(ArrayList arrayList) {
            DrawingText drawingText = this.captionLayout;
            if (drawingText != null) {
                arrayList.add(drawingText);
            }
            DrawingText drawingText2 = this.creditLayout;
            if (drawingText2 != null) {
                arrayList.add(drawingText2);
            }
        }

        @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
        public int getObserverTag() {
            return this.TAG;
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onAttachedToWindow() {
            super.onAttachedToWindow();
            this.imageView.onAttachedToWindow();
            updateButtonState(false);
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onDetachedFromWindow() {
            if (this.currentBlock != null) {
                ArticleViewer articleViewer = ArticleViewer.this;
                if (articleViewer.videoPlayer != null && articleViewer.currentPlayer == this) {
                    articleViewer.videoStates.put(this.currentBlock.video_id, setState(BlockVideoCellState.fromPlayer(ArticleViewer.this.videoPlayer, this)));
                }
            }
            super.onDetachedFromWindow();
            this.imageView.onDetachedFromWindow();
            DownloadController.getInstance(ArticleViewer.this.currentAccount).removeLoadingFileObserver(this);
            this.firstFrameRendered = false;
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            int i;
            if (this.currentBlock == null) {
                return;
            }
            if (!this.imageView.hasBitmapImage() || this.imageView.getCurrentAlpha() != 1.0f) {
                canvas.drawRect(this.imageView.getDrawRegion(), ArticleViewer.photoBackgroundPaint);
            }
            if (!ArticleViewer.this.pinchToZoomHelper.isInOverlayModeFor(this)) {
                this.imageView.draw(canvas);
            }
            if (this.captionLayout != null) {
                canvas.save();
                canvas.translate(this.textX, this.textY);
                ArticleViewer.this.drawTextSelection(canvas, this, 0);
                this.captionLayout.draw(canvas, this);
                canvas.restore();
                i = 1;
            } else {
                i = 0;
            }
            if (this.creditLayout != null) {
                canvas.save();
                canvas.translate(this.textX, this.textY + this.creditOffset);
                ArticleViewer.this.drawTextSelection(canvas, this, i);
                this.creditLayout.draw(canvas, this);
                canvas.restore();
            }
            if (this.currentBlock.level > 0) {
                canvas.drawRect(AndroidUtilities.dp(18.0f), BitmapDescriptorFactory.HUE_RED, AndroidUtilities.dp(20.0f), getMeasuredHeight() - (this.currentBlock.bottom ? AndroidUtilities.dp(6.0f) : 0), ArticleViewer.quoteLinePaint);
            }
            super.onDraw(canvas);
            if (ArticleViewer.this.pinchToZoomHelper.isInOverlayModeFor(this) || !this.imageView.getVisible()) {
                return;
            }
            this.radialProgress.draw(canvas);
        }

        @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
        public void onFailedDownload(String str, boolean z) {
            updateButtonState(false);
        }

        @Override // android.view.View
        public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            accessibilityNodeInfo.setEnabled(true);
            StringBuilder sb = new StringBuilder(LocaleController.getString(R.string.AttachVideo));
            if (this.captionLayout != null) {
                sb.append(", ");
                sb.append(this.captionLayout.getText());
            }
            accessibilityNodeInfo.setText(sb.toString());
        }

        /* JADX WARN: Removed duplicated region for block: B:11:0x0046  */
        /* JADX WARN: Removed duplicated region for block: B:64:0x014d  */
        /* JADX WARN: Removed duplicated region for block: B:68:0x015d  */
        @Override // android.widget.FrameLayout, android.view.View
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        protected void onMeasure(int i, int i2) {
            int i3;
            int iCeil;
            TLRPC.TL_pageBlockVideo tL_pageBlockVideo;
            int iDp;
            int iDp2;
            int iDp3;
            int iDp4;
            ImageReceiver imageReceiver;
            ImageLocation forDocument;
            ImageLocation forDocument2;
            long j;
            TLRPC.WebPage webPage;
            String str;
            int i4;
            ImageLocation imageLocation;
            String str2;
            String str3;
            int i5;
            boolean z;
            int i6;
            int size = View.MeasureSpec.getSize(i);
            int i7 = this.currentType;
            int iDp5 = 1;
            if (i7 == 1) {
                size = ((View) getParent()).getMeasuredWidth();
                iCeil = ((View) getParent()).getMeasuredHeight();
            } else {
                if (i7 != 2) {
                    i3 = size;
                    iCeil = 0;
                    tL_pageBlockVideo = this.currentBlock;
                    if (tL_pageBlockVideo != null) {
                        if (this.currentType != 0 || (i6 = tL_pageBlockVideo.level) <= 0) {
                            this.textX = AndroidUtilities.dp(18.0f);
                            iDp = i3 - AndroidUtilities.dp(36.0f);
                            iDp2 = i3;
                            iDp3 = 0;
                        } else {
                            iDp3 = AndroidUtilities.dp(i6 * 14) + AndroidUtilities.dp(18.0f);
                            this.textX = iDp3;
                            iDp2 = i3 - (AndroidUtilities.dp(18.0f) + iDp3);
                            iDp = iDp2;
                        }
                        if (this.currentDocument != null) {
                            int iDp6 = AndroidUtilities.dp(48.0f);
                            TLRPC.PhotoSize closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(this.currentDocument.thumbs, 48);
                            int i8 = this.currentType;
                            if (i8 == 0) {
                                int size2 = this.currentDocument.attributes.size();
                                int i9 = 0;
                                while (true) {
                                    if (i9 >= size2) {
                                        z = false;
                                        break;
                                    }
                                    if (this.currentDocument.attributes.get(i9) instanceof TLRPC.TL_documentAttributeVideo) {
                                        iCeil = (int) ((iDp2 / r15.w) * r15.h);
                                        z = true;
                                        break;
                                    }
                                    i9++;
                                }
                                float f = closestPhotoSizeWithSize != null ? closestPhotoSizeWithSize.w : 100.0f;
                                float f2 = closestPhotoSizeWithSize != null ? closestPhotoSizeWithSize.h : 100.0f;
                                if (!z) {
                                    iCeil = (int) ((iDp2 / f) * f2);
                                }
                                if (this.parentBlock instanceof TLRPC.TL_pageBlockCover) {
                                    iCeil = Math.min(iCeil, iDp2);
                                } else {
                                    Point point = AndroidUtilities.displaySize;
                                    int iMax = (int) ((Math.max(point.x, point.y) - AndroidUtilities.dp(56.0f)) * 0.9f);
                                    if (iCeil > iMax) {
                                        iDp2 = (int) ((iMax / f2) * f);
                                        iDp3 += ((i3 - iDp3) - iDp2) / 2;
                                        iCeil = iMax;
                                    }
                                }
                                if (iCeil == 0) {
                                    iCeil = AndroidUtilities.dp(100.0f);
                                } else if (iCeil < iDp6) {
                                    iCeil = iDp6;
                                }
                            } else if (i8 == 2) {
                                if ((this.groupPosition.flags & 2) == 0) {
                                    iDp2 -= AndroidUtilities.dp(2.0f);
                                }
                                if ((this.groupPosition.flags & 8) == 0) {
                                    iDp4 = iCeil - AndroidUtilities.dp(2.0f);
                                }
                                this.imageView.setQualityThumbDocument(this.currentDocument);
                                this.imageView.setImageCoords(iDp3, (!this.isFirst || (i5 = this.currentType) == 1 || i5 == 2 || this.currentBlock.level > 0) ? 0 : AndroidUtilities.dp(8.0f), iDp2, iDp4);
                                if (!this.calcHeight) {
                                    if (this.isGif) {
                                        BlockVideoCellState blockVideoCellState = this.videoState;
                                        if (blockVideoCellState == null || blockVideoCellState.lastFrameBitmap == null) {
                                            this.autoDownload = DownloadController.getInstance(ArticleViewer.this.currentAccount).canDownloadMedia(4, this.currentDocument.size);
                                            File pathToAttach = FileLoader.getInstance(ArticleViewer.this.currentAccount).getPathToAttach(this.currentDocument);
                                            File pathToAttach2 = FileLoader.getInstance(ArticleViewer.this.currentAccount).getPathToAttach(this.currentDocument, true);
                                            if (this.autoDownload || pathToAttach.exists() || pathToAttach2.exists()) {
                                                this.imageView.setStrippedLocation(null);
                                                imageReceiver = this.imageView;
                                                forDocument = ImageLocation.getForDocument(this.currentDocument);
                                                forDocument2 = ImageLocation.getForDocument(closestPhotoSizeWithSize, this.currentDocument);
                                                j = this.currentDocument.size;
                                                webPage = this.parentAdapter.currentPage;
                                                str = null;
                                                i4 = 1;
                                                imageLocation = null;
                                                str2 = null;
                                                str3 = "200_200_pframe";
                                            } else {
                                                this.imageView.setStrippedLocation(ImageLocation.getForDocument(this.currentDocument));
                                                imageReceiver = this.imageView;
                                                forDocument2 = ImageLocation.getForDocument(closestPhotoSizeWithSize, this.currentDocument);
                                                j = this.currentDocument.size;
                                                webPage = this.parentAdapter.currentPage;
                                                str = null;
                                                i4 = 1;
                                                imageLocation = null;
                                                str2 = null;
                                                forDocument = null;
                                                str3 = null;
                                            }
                                            imageReceiver.setImage(imageLocation, str2, forDocument, str3, forDocument2, "80_80_b", null, j, str, webPage, i4);
                                        } else {
                                            this.imageView.setStrippedLocation(null);
                                            this.imageView.setImageBitmap(this.videoState.lastFrameBitmap);
                                        }
                                    } else {
                                        this.imageView.setStrippedLocation(null);
                                        this.imageView.setImage(null, null, ImageLocation.getForDocument(closestPhotoSizeWithSize, this.currentDocument), "80_80_b", 0L, null, this.parentAdapter.currentPage, 1);
                                    }
                                }
                                this.imageView.setAspectFit(true);
                                float f3 = iDp6;
                                this.buttonX = (int) (this.imageView.getImageX() + ((this.imageView.getImageWidth() - f3) / 2.0f));
                                int imageY = (int) (this.imageView.getImageY() + ((this.imageView.getImageHeight() - f3) / 2.0f));
                                this.buttonY = imageY;
                                RadialProgress2 radialProgress2 = this.radialProgress;
                                int i10 = this.buttonX;
                                radialProgress2.setProgressRect(i10, imageY, i10 + iDp6, iDp6 + imageY);
                            }
                            iDp4 = iCeil;
                            this.imageView.setQualityThumbDocument(this.currentDocument);
                            if (this.isFirst) {
                                this.imageView.setImageCoords(iDp3, (!this.isFirst || (i5 = this.currentType) == 1 || i5 == 2 || this.currentBlock.level > 0) ? 0 : AndroidUtilities.dp(8.0f), iDp2, iDp4);
                                if (!this.calcHeight) {
                                }
                                this.imageView.setAspectFit(true);
                                float f32 = iDp6;
                                this.buttonX = (int) (this.imageView.getImageX() + ((this.imageView.getImageWidth() - f32) / 2.0f));
                                int imageY2 = (int) (this.imageView.getImageY() + ((this.imageView.getImageHeight() - f32) / 2.0f));
                                this.buttonY = imageY2;
                                RadialProgress2 radialProgress22 = this.radialProgress;
                                int i102 = this.buttonX;
                                radialProgress22.setProgressRect(i102, imageY2, i102 + iDp6, iDp6 + imageY2);
                            }
                        }
                        int iDp7 = iCeil;
                        int imageY3 = (int) (this.imageView.getImageY() + this.imageView.getImageHeight() + AndroidUtilities.dp(8.0f));
                        this.textY = imageY3;
                        if (this.currentType == 0) {
                            ArticleViewer articleViewer = ArticleViewer.this;
                            TLRPC.TL_pageBlockVideo tL_pageBlockVideo2 = this.currentBlock;
                            DrawingText drawingTextCreateLayoutForText = articleViewer.createLayoutForText(this, null, tL_pageBlockVideo2.caption.text, iDp, imageY3, tL_pageBlockVideo2, this.parentAdapter);
                            this.captionLayout = drawingTextCreateLayoutForText;
                            if (drawingTextCreateLayoutForText != null) {
                                int iDp8 = AndroidUtilities.dp(4.0f) + this.captionLayout.getHeight();
                                this.creditOffset = iDp8;
                                iDp7 += iDp8 + AndroidUtilities.dp(4.0f);
                                DrawingText drawingText = this.captionLayout;
                                drawingText.x = this.textX;
                                drawingText.y = this.textY;
                            }
                            ArticleViewer articleViewer2 = ArticleViewer.this;
                            TLRPC.TL_pageBlockVideo tL_pageBlockVideo3 = this.currentBlock;
                            DrawingText drawingTextCreateLayoutForText2 = articleViewer2.createLayoutForText(this, null, tL_pageBlockVideo3.caption.credit, iDp, this.textY + this.creditOffset, tL_pageBlockVideo3, this.parentAdapter.isRtl ? StaticLayoutEx.ALIGN_RIGHT() : Layout.Alignment.ALIGN_NORMAL, this.parentAdapter);
                            this.creditLayout = drawingTextCreateLayoutForText2;
                            if (drawingTextCreateLayoutForText2 != null) {
                                iDp7 += AndroidUtilities.dp(4.0f) + this.creditLayout.getHeight();
                                DrawingText drawingText2 = this.creditLayout;
                                drawingText2.x = this.textX;
                                drawingText2.y = this.textY + this.creditOffset;
                            }
                        }
                        if (!this.isFirst && this.currentType == 0 && this.currentBlock.level <= 0) {
                            iDp7 += AndroidUtilities.dp(8.0f);
                        }
                        iDp5 = (this.currentType == 2 || ((this.parentBlock instanceof TLRPC.TL_pageBlockCover) && this.parentAdapter.blocks.size() > 1 && (this.parentAdapter.blocks.get(1) instanceof TLRPC.TL_pageBlockChannel))) ? iDp7 : iDp7 + AndroidUtilities.dp(8.0f);
                    }
                    this.channelCell.measure(i, i2);
                    this.channelCell.setTranslationY(this.imageView.getImageHeight() - AndroidUtilities.dp(39.0f));
                    FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.aspectRationContainer.getLayoutParams();
                    layoutParams.leftMargin = (int) this.imageView.getImageX();
                    layoutParams.topMargin = (int) this.imageView.getImageY();
                    layoutParams.width = (int) this.imageView.getImageWidth();
                    layoutParams.height = (int) this.imageView.getImageHeight();
                    super.onMeasure(View.MeasureSpec.makeMeasureSpec(i3, 1073741824), View.MeasureSpec.makeMeasureSpec(iDp5, 1073741824));
                }
                float f4 = this.groupPosition.ph;
                Point point2 = AndroidUtilities.displaySize;
                iCeil = (int) Math.ceil(f4 * Math.max(point2.x, point2.y) * 0.5f);
            }
            i3 = size;
            tL_pageBlockVideo = this.currentBlock;
            if (tL_pageBlockVideo != null) {
            }
            this.channelCell.measure(i, i2);
            this.channelCell.setTranslationY(this.imageView.getImageHeight() - AndroidUtilities.dp(39.0f));
            FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) this.aspectRationContainer.getLayoutParams();
            layoutParams2.leftMargin = (int) this.imageView.getImageX();
            layoutParams2.topMargin = (int) this.imageView.getImageY();
            layoutParams2.width = (int) this.imageView.getImageWidth();
            layoutParams2.height = (int) this.imageView.getImageHeight();
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(i3, 1073741824), View.MeasureSpec.makeMeasureSpec(iDp5, 1073741824));
        }

        @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
        public void onProgressDownload(String str, long j, long j2) {
            this.radialProgress.setProgress(Math.min(1.0f, j / j2), true);
            if (this.buttonState != 1) {
                updateButtonState(true);
            }
        }

        @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
        public void onProgressUpload(String str, long j, long j2, boolean z) {
        }

        @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
        public void onSuccessDownload(String str) {
            this.radialProgress.setProgress(1.0f, true);
            if (!this.isGif) {
                updateButtonState(true);
            } else {
                this.buttonState = 2;
                didPressedButton(true);
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:31:0x00ad  */
        @Override // android.view.View
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public boolean onTouchEvent(MotionEvent motionEvent) {
            if (ArticleViewer.this.pinchToZoomHelper.checkPinchToZoom(motionEvent, this, this.imageView, this.aspectRationContainer, this.textureView, null)) {
                return true;
            }
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            if (this.channelCell.getVisibility() == 0 && y > this.channelCell.getTranslationY() && y < this.channelCell.getTranslationY() + AndroidUtilities.dp(39.0f)) {
                if (this.parentAdapter.channelBlock != null && motionEvent.getAction() == 1) {
                    MessagesController.getInstance(ArticleViewer.this.currentAccount).openByUserName(ChatObject.getPublicUsername(this.parentAdapter.channelBlock.channel), ArticleViewer.this.parentFragment, 2);
                    ArticleViewer.this.close(false, true);
                }
                return true;
            }
            if (motionEvent.getAction() == 0 && this.imageView.isInsideImage(x, y)) {
                if (this.buttonState != -1) {
                    if (x < this.buttonX || x > r3 + AndroidUtilities.dp(48.0f)) {
                        if (this.buttonState != 0) {
                            this.photoPressed = true;
                        }
                        this.buttonPressed = 1;
                        invalidate();
                    } else {
                        if (y < this.buttonY || y > r0 + AndroidUtilities.dp(48.0f)) {
                        }
                        this.buttonPressed = 1;
                        invalidate();
                    }
                }
            } else if (motionEvent.getAction() == 1) {
                if (this.photoPressed) {
                    this.photoPressed = false;
                    ArticleViewer.this.openPhoto(this.currentBlock, this.parentAdapter);
                } else if (this.buttonPressed == 1) {
                    this.buttonPressed = 0;
                    playSoundEffect(0);
                    didPressedButton(true);
                    invalidate();
                }
            } else if (motionEvent.getAction() == 3) {
                this.photoPressed = false;
            }
            return this.photoPressed || this.buttonPressed != 0 || ArticleViewer.this.checkLayoutForLinks(this.parentAdapter, motionEvent, this, this.captionLayout, this.textX, this.textY) || ArticleViewer.this.checkLayoutForLinks(this.parentAdapter, motionEvent, this, this.creditLayout, this.textX, this.textY + this.creditOffset) || super.onTouchEvent(motionEvent);
        }

        public void setBlock(TLRPC.TL_pageBlockVideo tL_pageBlockVideo, BlockVideoCellState blockVideoCellState, boolean z, boolean z2, boolean z3) throws InterruptedException {
            if (this.currentBlock != null) {
                ArticleViewer articleViewer = ArticleViewer.this;
                if (articleViewer.videoPlayer != null && articleViewer.currentPlayer == this) {
                    LongSparseArray longSparseArray = articleViewer.videoStates;
                    long j = this.currentBlock.video_id;
                    BlockVideoCellState blockVideoCellStateFromPlayer = BlockVideoCellState.fromPlayer(ArticleViewer.this.videoPlayer, this);
                    this.videoState = blockVideoCellStateFromPlayer;
                    longSparseArray.put(j, blockVideoCellStateFromPlayer);
                }
            }
            this.currentBlock = tL_pageBlockVideo;
            this.videoState = blockVideoCellState;
            this.parentBlock = null;
            this.calcHeight = z;
            TLRPC.Document documentWithId = this.parentAdapter.getDocumentWithId(tL_pageBlockVideo.video_id);
            this.currentDocument = documentWithId;
            this.isGif = MessageObject.isVideoDocument(documentWithId) || MessageObject.isGifDocument(this.currentDocument);
            this.isFirst = z2;
            this.channelCell.setVisibility(4);
            updateButtonState(false);
            requestLayout();
        }

        public void setParentBlock(TLRPC.TL_pageBlockChannel tL_pageBlockChannel, TLRPC.PageBlock pageBlock) {
            this.parentBlock = pageBlock;
            if (tL_pageBlockChannel == null || !(pageBlock instanceof TLRPC.TL_pageBlockCover)) {
                return;
            }
            this.channelCell.setBlock(tL_pageBlockChannel);
            this.channelCell.setVisibility(0);
        }

        public BlockVideoCellState setState(BlockVideoCellState blockVideoCellState) {
            Bitmap bitmap;
            Bitmap bitmap2;
            Bitmap bitmap3;
            BlockVideoCellState blockVideoCellState2 = this.videoState;
            if (blockVideoCellState2 != null && blockVideoCellState != null && (bitmap2 = blockVideoCellState.lastFrameBitmap) != null && (bitmap3 = blockVideoCellState2.lastFrameBitmap) != null && bitmap2 != bitmap3) {
                bitmap3.recycle();
                this.videoState.lastFrameBitmap = null;
            }
            BlockVideoCellState blockVideoCellState3 = this.videoState;
            if (blockVideoCellState3 != null && blockVideoCellState != null && blockVideoCellState.lastFrameBitmap == null && (bitmap = blockVideoCellState3.lastFrameBitmap) != null) {
                blockVideoCellState.playFrom = blockVideoCellState3.playFrom;
                blockVideoCellState.lastFrameBitmap = bitmap;
            }
            this.videoState = blockVideoCellState;
            return blockVideoCellState;
        }

        public void updateButtonState(boolean z) {
            String attachFileName = FileLoader.getAttachFileName(this.currentDocument);
            boolean z2 = true;
            boolean z3 = FileLoader.getInstance(ArticleViewer.this.currentAccount).getPathToAttach(this.currentDocument).exists() || FileLoader.getInstance(ArticleViewer.this.currentAccount).getPathToAttach(this.currentDocument, true).exists();
            if (TextUtils.isEmpty(attachFileName)) {
                this.radialProgress.setIcon(4, false, false);
                return;
            }
            if (z3) {
                DownloadController.getInstance(ArticleViewer.this.currentAccount).removeLoadingFileObserver(this);
                if (this.isGif) {
                    this.buttonState = -1;
                } else {
                    this.buttonState = 3;
                }
                this.radialProgress.setIcon(getIconForCurrentState(), false, z);
            } else {
                DownloadController.getInstance(ArticleViewer.this.currentAccount).addLoadingFileObserver(attachFileName, null, this);
                BlockVideoCellState blockVideoCellState = this.videoState;
                float fFloatValue = BitmapDescriptorFactory.HUE_RED;
                if (blockVideoCellState == null || blockVideoCellState.lastFrameBitmap == null) {
                    if (FileLoader.getInstance(ArticleViewer.this.currentAccount).isLoadingFile(attachFileName)) {
                        this.buttonState = 1;
                        Float fileProgress = ImageLoader.getInstance().getFileProgress(attachFileName);
                        if (fileProgress != null) {
                            fFloatValue = fileProgress.floatValue();
                        }
                    } else if (!this.cancelLoading && this.autoDownload && this.isGif) {
                        this.buttonState = 1;
                    } else {
                        this.buttonState = 0;
                    }
                    this.radialProgress.setIcon(getIconForCurrentState(), z2, z);
                    this.radialProgress.setProgress(fFloatValue, false);
                } else {
                    this.buttonState = -1;
                }
                z2 = false;
                this.radialProgress.setIcon(getIconForCurrentState(), z2, z);
                this.radialProgress.setProgress(fFloatValue, false);
            }
            invalidate();
        }
    }

    private static class BlockVideoCellState {
        Bitmap lastFrameBitmap;
        long playFrom;

        private BlockVideoCellState() {
        }

        public static BlockVideoCellState fromPlayer(VideoPlayerHolderBase videoPlayerHolderBase, BlockVideoCell blockVideoCell) throws InterruptedException {
            BlockVideoCellState blockVideoCellState = new BlockVideoCellState();
            blockVideoCellState.playFrom = videoPlayerHolderBase.getCurrentPosition();
            if (videoPlayerHolderBase.firstFrameRendered && blockVideoCell.textureView != null && blockVideoCell.textureView.getSurfaceTexture() != null) {
                if (Build.VERSION.SDK_INT >= 24) {
                    Surface surface = new Surface(blockVideoCell.textureView.getSurfaceTexture());
                    Bitmap bitmapCreateBitmap = Bitmap.createBitmap(blockVideoCell.textureView.getMeasuredWidth(), blockVideoCell.textureView.getMeasuredHeight(), Bitmap.Config.ARGB_8888);
                    AndroidUtilities.getBitmapFromSurface(surface, bitmapCreateBitmap);
                    surface.release();
                    blockVideoCellState.lastFrameBitmap = bitmapCreateBitmap;
                } else {
                    blockVideoCellState.lastFrameBitmap = blockVideoCell.textureView.getBitmap();
                }
            }
            return blockVideoCellState;
        }

        public static BlockVideoCellState fromPlayer(VideoPlayer videoPlayer, BlockVideoCell blockVideoCell, SurfaceView surfaceView) {
            BlockVideoCellState blockVideoCellState = new BlockVideoCellState();
            blockVideoCellState.playFrom = videoPlayer.getCurrentPosition();
            if (surfaceView != null && Build.VERSION.SDK_INT >= 24) {
                Bitmap bitmapCreateBitmap = Bitmap.createBitmap(surfaceView.getMeasuredWidth(), surfaceView.getMeasuredHeight(), Bitmap.Config.ARGB_8888);
                AndroidUtilities.getBitmapFromSurface(surfaceView, bitmapCreateBitmap);
                blockVideoCellState.lastFrameBitmap = bitmapCreateBitmap;
            }
            return blockVideoCellState;
        }

        public static BlockVideoCellState fromPlayer(VideoPlayer videoPlayer, BlockVideoCell blockVideoCell, TextureView textureView) throws InterruptedException {
            BlockVideoCellState blockVideoCellState = new BlockVideoCellState();
            blockVideoCellState.playFrom = videoPlayer.getCurrentPosition();
            if (textureView != null && textureView.getSurfaceTexture() != null) {
                if (Build.VERSION.SDK_INT >= 24) {
                    Surface surface = new Surface(textureView.getSurfaceTexture());
                    Bitmap bitmapCreateBitmap = Bitmap.createBitmap(textureView.getMeasuredWidth(), textureView.getMeasuredHeight(), Bitmap.Config.ARGB_8888);
                    AndroidUtilities.getBitmapFromSurface(surface, bitmapCreateBitmap);
                    surface.release();
                    blockVideoCellState.lastFrameBitmap = bitmapCreateBitmap;
                } else {
                    blockVideoCellState.lastFrameBitmap = textureView.getBitmap();
                }
            }
            return blockVideoCellState;
        }
    }

    public class CachedWeb extends BottomSheetTabs.WebTabData {
        public CachedWeb(String str) {
            this.lastUrl = str;
            this.currentUrl = str;
        }

        public void attach(PageLayout pageLayout) throws PackageManager.NameNotFoundException {
            if (pageLayout == null) {
                return;
            }
            BotWebViewContainer.MyWebView myWebView = this.webView;
            if (myWebView != null) {
                myWebView.onResume();
                pageLayout.webViewContainer.replaceWebView(UserConfig.selectedAccount, this.webView, this.proxy);
                pageLayout.setWebBgColor(true, this.actionBarColor);
                pageLayout.setWebBgColor(false, this.backgroundColor);
                return;
            }
            String str = this.lastUrl;
            if (str != null) {
                pageLayout.webViewContainer.loadUrl(UserConfig.selectedAccount, str);
            }
        }

        public void detach(PageLayout pageLayout) {
            if (pageLayout == null) {
                return;
            }
            pageLayout.webViewContainer.preserveWebView();
            this.webView = pageLayout.webViewContainer.getWebView();
            this.proxy = pageLayout.webViewContainer.getProxy();
            BotWebViewContainer.MyWebView myWebView = this.webView;
            if (myWebView != null) {
                myWebView.onPause();
                this.title = this.webView.getTitle();
                this.favicon = this.webView.getFavicon();
                this.lastUrl = this.webView.getUrl();
                this.actionBarColor = pageLayout.webActionBarColor;
                this.backgroundColor = pageLayout.webBackgroundColor;
            }
        }

        @Override // org.telegram.ui.ActionBar.BottomSheetTabs.WebTabData
        public String getTitle() {
            BotWebViewContainer.MyWebView myWebView = this.webView;
            return (myWebView == null || TextUtils.isEmpty(myWebView.getTitle())) ? super.getTitle() : this.webView.getTitle();
        }
    }

    class CheckForLongPress implements Runnable {
        public int currentPressCount;

        CheckForLongPress() {
        }

        @Override // java.lang.Runnable
        public void run() throws UnsupportedEncodingException {
            ArticleViewer articleViewer;
            TextSelectionHelper.ArticleTextSelectionHelper articleTextSelectionHelper;
            if (!ArticleViewer.this.checkingForLongPress || ArticleViewer.this.windowView == null) {
                return;
            }
            ArticleViewer.this.checkingForLongPress = false;
            if (ArticleViewer.this.pressedLink != null) {
                try {
                    ArticleViewer.this.windowView.performHapticFeedback(0, 2);
                } catch (Exception unused) {
                }
                ArticleViewer articleViewer2 = ArticleViewer.this;
                articleViewer2.showCopyPopup(((TextPaintUrlSpan) articleViewer2.pressedLink.getSpan()).getUrl());
                ArticleViewer.this.pressedLink = null;
                ArticleViewer.this.pressedLinkOwnerLayout = null;
                if (ArticleViewer.this.pressedLinkOwnerView != null) {
                    ArticleViewer.this.pressedLinkOwnerView.invalidate();
                    return;
                }
                return;
            }
            if (ArticleViewer.this.pressedLinkOwnerView != null) {
                ArticleViewer articleViewer3 = ArticleViewer.this;
                if (articleViewer3.textSelectionHelper.isSelectable(articleViewer3.pressedLinkOwnerView)) {
                    if (ArticleViewer.this.pressedLinkOwnerView.getTag() == null || ArticleViewer.this.pressedLinkOwnerView.getTag() != "bottomSheet" || (articleTextSelectionHelper = (articleViewer = ArticleViewer.this).textSelectionHelperBottomSheet) == null) {
                        articleViewer = ArticleViewer.this;
                        articleTextSelectionHelper = articleViewer.textSelectionHelper;
                    }
                    articleTextSelectionHelper.trySelect(articleViewer.pressedLinkOwnerView);
                    if (ArticleViewer.this.textSelectionHelper.isInSelectionMode()) {
                        try {
                            ArticleViewer.this.windowView.performHapticFeedback(0, 2);
                            return;
                        } catch (Exception unused2) {
                            return;
                        }
                    }
                    return;
                }
            }
            if (ArticleViewer.this.pressedLinkOwnerLayout == null || ArticleViewer.this.pressedLinkOwnerView == null) {
                return;
            }
            try {
                ArticleViewer.this.windowView.performHapticFeedback(0, 2);
            } catch (Exception unused3) {
            }
            int[] iArr = new int[2];
            ArticleViewer.this.pressedLinkOwnerView.getLocationInWindow(iArr);
            int iDp = (iArr[1] + ArticleViewer.this.pressedLayoutY) - AndroidUtilities.dp(54.0f);
            if (iDp < 0) {
                iDp = 0;
            }
            ArticleViewer.this.pressedLinkOwnerView.invalidate();
            ArticleViewer.this.drawBlockSelection = true;
            ArticleViewer articleViewer4 = ArticleViewer.this;
            articleViewer4.showPopup(articleViewer4.pressedLinkOwnerView, 48, 0, iDp);
            ArticleViewer.this.pages[0].listView.setLayoutFrozen(true);
            ArticleViewer.this.pages[0].listView.setLayoutFrozen(false);
        }
    }

    private final class CheckForTap implements Runnable {
        private CheckForTap() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (ArticleViewer.this.pendingCheckForLongPress == null) {
                ArticleViewer articleViewer = ArticleViewer.this;
                articleViewer.pendingCheckForLongPress = articleViewer.new CheckForLongPress();
            }
            ArticleViewer.this.pendingCheckForLongPress.currentPressCount = ArticleViewer.access$2004(ArticleViewer.this);
            if (ArticleViewer.this.windowView != null) {
                ArticleViewer.this.windowView.postDelayed(ArticleViewer.this.pendingCheckForLongPress, ViewConfiguration.getLongPressTimeout() - ViewConfiguration.getTapTimeout());
            }
        }
    }

    public class DrawingText implements TextSelectionHelper.TextLayoutBlock {
        private boolean isDrawing;
        private View latestParentView;
        public LinkPath markPath;
        public TLRPC.PageBlock parentBlock;
        public Object parentText;
        public CharSequence prefix;
        public int row;
        public int searchIndex = -1;
        public LinkPath searchPath;
        public StaticLayout textLayout;
        public LinkPath textPath;
        public int x;
        public int y;

        public DrawingText() {
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x0083  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void draw(Canvas canvas, View view) {
            float width;
            this.isDrawing = true;
            this.latestParentView = view;
            boolean zIsEmpty = ArticleViewer.this.searchResults.isEmpty();
            float lineLeft = BitmapDescriptorFactory.HUE_RED;
            if (!zIsEmpty) {
                SearchResult searchResult = (SearchResult) ArticleViewer.this.searchResults.get(ArticleViewer.this.currentSearchIndex);
                if (searchResult.block != this.parentBlock || (searchResult.text != this.parentText && (!(searchResult.text instanceof String) || this.parentText != null))) {
                    this.searchIndex = -1;
                    this.searchPath = null;
                } else if (this.searchIndex != searchResult.index) {
                    LinkPath linkPath = new LinkPath(true);
                    this.searchPath = linkPath;
                    linkPath.setAllowReset(false);
                    this.searchPath.setCurrentLayout(this.textLayout, searchResult.index, BitmapDescriptorFactory.HUE_RED);
                    this.searchPath.setBaselineShift(0);
                    this.textLayout.getSelectionPath(searchResult.index, searchResult.index + ArticleViewer.this.searchText.length(), this.searchPath);
                    this.searchPath.setAllowReset(true);
                }
            }
            LinkPath linkPath2 = this.searchPath;
            if (linkPath2 != null) {
                canvas.drawPath(linkPath2, ArticleViewer.webpageSearchPaint);
            }
            LinkPath linkPath3 = this.textPath;
            if (linkPath3 != null) {
                canvas.drawPath(linkPath3, ArticleViewer.webpageUrlPaint);
            }
            LinkPath linkPath4 = this.markPath;
            if (linkPath4 != null) {
                canvas.drawPath(linkPath4, ArticleViewer.webpageMarkPaint);
            }
            if (ArticleViewer.this.links.draw(canvas, this)) {
                view.invalidate();
            }
            if (ArticleViewer.this.pressedLinkOwnerLayout == this && ArticleViewer.this.pressedLink == null && ArticleViewer.this.drawBlockSelection) {
                if (getLineCount() == 1) {
                    width = getLineWidth(0);
                    lineLeft = getLineLeft(0);
                } else {
                    width = getWidth();
                }
                canvas.drawRect((-AndroidUtilities.dp(2.0f)) + lineLeft, BitmapDescriptorFactory.HUE_RED, lineLeft + width + AndroidUtilities.dp(2.0f), getHeight(), ArticleViewer.urlPaint);
            }
            this.textLayout.draw(canvas);
            this.isDrawing = false;
        }

        public int getHeight() {
            return this.textLayout.getHeight();
        }

        @Override // org.telegram.ui.Cells.TextSelectionHelper.TextLayoutBlock
        public StaticLayout getLayout() {
            return this.textLayout;
        }

        public int getLineAscent(int i) {
            return this.textLayout.getLineAscent(i);
        }

        public int getLineCount() {
            return this.textLayout.getLineCount();
        }

        public float getLineLeft(int i) {
            return this.textLayout.getLineLeft(i);
        }

        public float getLineWidth(int i) {
            return this.textLayout.getLineWidth(i);
        }

        @Override // org.telegram.ui.Cells.TextSelectionHelper.TextLayoutBlock
        public CharSequence getPrefix() {
            return this.prefix;
        }

        @Override // org.telegram.ui.Cells.TextSelectionHelper.TextLayoutBlock
        public int getRow() {
            return this.row;
        }

        public CharSequence getText() {
            return this.textLayout.getText();
        }

        public int getWidth() {
            return this.textLayout.getWidth();
        }

        @Override // org.telegram.ui.Cells.TextSelectionHelper.TextLayoutBlock
        public int getX() {
            return this.x;
        }

        @Override // org.telegram.ui.Cells.TextSelectionHelper.TextLayoutBlock
        public int getY() {
            return this.y;
        }

        public void invalidateParent() {
            View view;
            if (this.isDrawing || (view = this.latestParentView) == null) {
                return;
            }
            view.invalidate();
        }
    }

    public static class ErrorContainer extends FrameLayout {
        public final ButtonWithCounterView buttonView;
        private final TextView codeView;
        private boolean dark;
        private ValueAnimator darkAnimator;
        private final TextView descriptionView;
        private final BackupImageView imageView;
        private boolean imageViewSet;
        public final LinearLayout layout;
        private final TextView titleView;

        public ErrorContainer(Context context) {
            super(context);
            this.dark = true;
            setVisibility(8);
            LinearLayout linearLayout = new LinearLayout(context);
            this.layout = linearLayout;
            linearLayout.setPadding(AndroidUtilities.dp(32.0f), AndroidUtilities.dp(24.0f), AndroidUtilities.dp(32.0f), AndroidUtilities.dp(24.0f));
            linearLayout.setOrientation(1);
            linearLayout.setGravity(3);
            addView(linearLayout, LayoutHelper.createFrame(-2, -2, 17));
            BackupImageView backupImageView = new BackupImageView(context);
            this.imageView = backupImageView;
            linearLayout.addView(backupImageView, LayoutHelper.createLinear(100, 100));
            TextView textView = new TextView(context);
            this.titleView = textView;
            textView.setTextSize(1, 19.0f);
            textView.setTypeface(AndroidUtilities.bold());
            textView.setTextColor(-1);
            linearLayout.addView(textView, LayoutHelper.createLinear(-2, -2, 3, 0, 4, 0, 2));
            TextView textView2 = new TextView(context);
            this.descriptionView = textView2;
            textView2.setTextSize(1, 15.0f);
            textView2.setTextColor(-1);
            textView2.setSingleLine(false);
            textView2.setMaxLines(3);
            linearLayout.addView(textView2, LayoutHelper.createLinear(-2, -2, 3, 0, 0, 0, 1));
            TextView textView3 = new TextView(context);
            this.codeView = textView3;
            textView3.setTextSize(1, 12.0f);
            textView3.setTextColor(-1);
            textView3.setAlpha(0.4f);
            linearLayout.addView(textView3, LayoutHelper.createLinear(-2, -2, 3));
            ButtonWithCounterView buttonWithCounterView = new ButtonWithCounterView(context, null);
            this.buttonView = buttonWithCounterView;
            buttonWithCounterView.setMinWidth(AndroidUtilities.dp(140.0f));
            buttonWithCounterView.setText(LocaleController.getString(R.string.Refresh), false);
            linearLayout.addView(buttonWithCounterView, LayoutHelper.createLinear(-2, 40, 3, 0, 12, 0, 0));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$setDark$0(ValueAnimator valueAnimator) {
            float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            this.titleView.setTextColor(ColorUtils.blendARGB(-16777216, -1, fFloatValue));
            this.descriptionView.setTextColor(ColorUtils.blendARGB(-16777216, -1, fFloatValue));
            this.codeView.setTextColor(ColorUtils.blendARGB(-16777216, -1, fFloatValue));
        }

        public void set(String str, int i, String str2) {
            this.titleView.setText(LocaleController.getString(R.string.WebErrorTitle));
            String strMagic2tonsite = BotWebViewContainer.magic2tonsite(str);
            this.descriptionView.setText(Emoji.replaceEmoji(AndroidUtilities.replaceTags((strMagic2tonsite == null || Uri.parse(strMagic2tonsite) == null || Uri.parse(strMagic2tonsite).getAuthority() == null) ? LocaleController.getString(R.string.WebErrorInfo) : LocaleController.formatString(R.string.WebErrorInfoDomain, Uri.parse(strMagic2tonsite).getAuthority())), this.descriptionView.getPaint().getFontMetricsInt(), false));
            this.codeView.setText(str2);
        }

        public void set(String str, String str2) {
            this.titleView.setText(LocaleController.getString(R.string.WebErrorTitle));
            this.descriptionView.setText(AndroidUtilities.replaceTags(LocaleController.formatString(R.string.WebErrorInfoBot, str)));
            this.codeView.setText(str2);
        }

        public void setDark(boolean z, boolean z2) {
            if (this.dark == z) {
                return;
            }
            this.dark = z;
            ValueAnimator valueAnimator = this.darkAnimator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
            if (!z2) {
                this.titleView.setTextColor(!z ? -16777216 : -1);
                this.descriptionView.setTextColor(!z ? -16777216 : -1);
                this.codeView.setTextColor(z ? -1 : -16777216);
            } else {
                ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(z ? BitmapDescriptorFactory.HUE_RED : 1.0f, z ? 1.0f : BitmapDescriptorFactory.HUE_RED);
                this.darkAnimator = valueAnimatorOfFloat;
                valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.ArticleViewer$ErrorContainer$$ExternalSyntheticLambda0
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                        this.f$0.lambda$setDark$0(valueAnimator2);
                    }
                });
                this.darkAnimator.start();
            }
        }

        @Override // android.view.View
        public void setVisibility(int i) {
            super.setVisibility(i);
            if (i != 0 || this.imageViewSet) {
                return;
            }
            this.imageViewSet = true;
            MediaDataController.getInstance(UserConfig.selectedAccount).setPlaceholderImage(this.imageView, AndroidUtilities.STICKERS_PLACEHOLDER_PACK_NAME, "🧐", "100_100");
        }
    }

    public class FontCell extends FrameLayout {
        private RadioButton radioButton;
        private TextView textView;

        public FontCell(Context context) {
            super(context);
            setBackgroundDrawable(Theme.createSelectorDrawable(ArticleViewer.this.getThemedColor(Theme.key_listSelector), 2));
            RadioButton radioButton = new RadioButton(context);
            this.radioButton = radioButton;
            radioButton.setSize(AndroidUtilities.dp(20.0f));
            this.radioButton.setColor(ArticleViewer.this.getThemedColor(Theme.key_dialogRadioBackground), ArticleViewer.this.getThemedColor(Theme.key_dialogRadioBackgroundChecked));
            RadioButton radioButton2 = this.radioButton;
            boolean z = LocaleController.isRTL;
            addView(radioButton2, LayoutHelper.createFrame(22, 22.0f, (z ? 5 : 3) | 48, z ? 0 : 22, 13.0f, z ? 22 : 0, BitmapDescriptorFactory.HUE_RED));
            TextView textView = new TextView(context);
            this.textView = textView;
            textView.setTextColor(ArticleViewer.this.getThemedColor(Theme.key_windowBackgroundWhiteBlackText));
            this.textView.setTextSize(1, 16.0f);
            this.textView.setLines(1);
            this.textView.setMaxLines(1);
            this.textView.setSingleLine(true);
            this.textView.setGravity((LocaleController.isRTL ? 5 : 3) | 16);
            TextView textView2 = this.textView;
            boolean z2 = LocaleController.isRTL;
            addView(textView2, LayoutHelper.createFrame(-1, -1.0f, (z2 ? 5 : 3) | 48, z2 ? 17 : 62, BitmapDescriptorFactory.HUE_RED, z2 ? 62 : 17, BitmapDescriptorFactory.HUE_RED));
        }

        @Override // android.view.View
        public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            accessibilityNodeInfo.setClassName(RadioButton.class.getName());
            accessibilityNodeInfo.setChecked(this.radioButton.isChecked());
            accessibilityNodeInfo.setCheckable(true);
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(48.0f), 1073741824));
        }

        public void select(boolean z, boolean z2) {
            this.radioButton.setChecked(z, z2);
        }

        public void setTextAndTypeface(String str, Typeface typeface) {
            this.textView.setText(str);
            this.textView.setTypeface(typeface);
            setContentDescription(str);
            invalidate();
        }
    }

    private class PageBlocksPhotoViewerProvider extends PhotoViewer.EmptyPhotoViewerProvider {
        private final List pageBlocks;
        private final int[] tempArr = new int[2];

        public PageBlocksPhotoViewerProvider(List list) {
            this.pageBlocks = list;
        }

        private ImageReceiver getImageReceiverFromListView(ViewGroup viewGroup, TLRPC.PageBlock pageBlock, int[] iArr) throws InterruptedException {
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                ImageReceiver imageReceiverView = getImageReceiverView(viewGroup.getChildAt(i), pageBlock, iArr);
                if (imageReceiverView != null) {
                    return imageReceiverView;
                }
            }
            return null;
        }

        private ImageReceiver getImageReceiverView(View view, TLRPC.PageBlock pageBlock, int[] iArr) throws InterruptedException {
            ImageReceiver imageReceiverView;
            ImageReceiver imageReceiverView2;
            VideoPlayerHolderBase videoPlayerHolderBase;
            ImageReceiver imageReceiver;
            Bitmap bitmap;
            if (view instanceof BlockPhotoCell) {
                BlockPhotoCell blockPhotoCell = (BlockPhotoCell) view;
                if (blockPhotoCell.currentBlock != pageBlock) {
                    return null;
                }
                view.getLocationInWindow(iArr);
                return blockPhotoCell.imageView;
            }
            if (view instanceof BlockVideoCell) {
                BlockVideoCell blockVideoCell = (BlockVideoCell) view;
                if (blockVideoCell.currentBlock != pageBlock) {
                    return null;
                }
                view.getLocationInWindow(iArr);
                ArticleViewer articleViewer = ArticleViewer.this;
                if (blockVideoCell == articleViewer.currentPlayer && (videoPlayerHolderBase = articleViewer.videoPlayer) != null && videoPlayerHolderBase.firstFrameRendered && blockVideoCell.textureView.getSurfaceTexture() != null) {
                    if (Build.VERSION.SDK_INT >= 24) {
                        Surface surface = new Surface(blockVideoCell.textureView.getSurfaceTexture());
                        bitmap = Bitmap.createBitmap(blockVideoCell.textureView.getMeasuredWidth(), blockVideoCell.textureView.getMeasuredHeight(), Bitmap.Config.ARGB_8888);
                        AndroidUtilities.getBitmapFromSurface(surface, bitmap);
                        surface.release();
                        imageReceiver = blockVideoCell.imageView;
                    } else {
                        imageReceiver = blockVideoCell.imageView;
                        bitmap = blockVideoCell.textureView.getBitmap();
                    }
                    imageReceiver.setImageBitmap(bitmap);
                    blockVideoCell.firstFrameRendered = false;
                    blockVideoCell.textureView.setAlpha(BitmapDescriptorFactory.HUE_RED);
                }
                return blockVideoCell.imageView;
            }
            if (view instanceof BlockCollageCell) {
                ImageReceiver imageReceiverFromListView = getImageReceiverFromListView(((BlockCollageCell) view).innerListView, pageBlock, iArr);
                if (imageReceiverFromListView != null) {
                    return imageReceiverFromListView;
                }
                return null;
            }
            if (view instanceof BlockSlideshowCell) {
                ImageReceiver imageReceiverFromListView2 = getImageReceiverFromListView(((BlockSlideshowCell) view).innerListView, pageBlock, iArr);
                if (imageReceiverFromListView2 != null) {
                    return imageReceiverFromListView2;
                }
                return null;
            }
            if (view instanceof BlockListItemCell) {
                BlockListItemCell blockListItemCell = (BlockListItemCell) view;
                if (blockListItemCell.blockLayout == null || (imageReceiverView2 = getImageReceiverView(blockListItemCell.blockLayout.itemView, pageBlock, iArr)) == null) {
                    return null;
                }
                return imageReceiverView2;
            }
            if (!(view instanceof BlockOrderedListItemCell)) {
                return null;
            }
            BlockOrderedListItemCell blockOrderedListItemCell = (BlockOrderedListItemCell) view;
            if (blockOrderedListItemCell.blockLayout == null || (imageReceiverView = getImageReceiverView(blockOrderedListItemCell.blockLayout.itemView, pageBlock, iArr)) == null) {
                return null;
            }
            return imageReceiverView;
        }

        private BlockVideoCell getViewFromListView(ViewGroup viewGroup, TLRPC.PageBlock pageBlock) {
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = viewGroup.getChildAt(i);
                if (childAt instanceof BlockVideoCell) {
                    BlockVideoCell blockVideoCell = (BlockVideoCell) childAt;
                    if (blockVideoCell.currentBlock == pageBlock) {
                        return blockVideoCell;
                    }
                }
            }
            return null;
        }

        @Override // org.telegram.ui.PhotoViewer.EmptyPhotoViewerProvider, org.telegram.ui.PhotoViewer.PhotoViewerProvider
        public PhotoViewer.PlaceProviderObject getPlaceForPhoto(MessageObject messageObject, TLRPC.FileLocation fileLocation, int i, boolean z, boolean z2) {
            ImageReceiver imageReceiverFromListView;
            if (i < 0 || i >= this.pageBlocks.size() || (imageReceiverFromListView = getImageReceiverFromListView(ArticleViewer.this.pages[0].listView, (TLRPC.PageBlock) this.pageBlocks.get(i), this.tempArr)) == null) {
                return null;
            }
            PhotoViewer.PlaceProviderObject placeProviderObject = new PhotoViewer.PlaceProviderObject();
            int[] iArr = this.tempArr;
            placeProviderObject.viewX = iArr[0];
            placeProviderObject.viewY = iArr[1];
            placeProviderObject.parentView = ArticleViewer.this.pages[0].listView;
            placeProviderObject.imageReceiver = imageReceiverFromListView;
            placeProviderObject.thumb = imageReceiverFromListView.getBitmapSafe();
            placeProviderObject.radius = imageReceiverFromListView.getRoundRadius(true);
            placeProviderObject.clipTopAddition = ArticleViewer.this.currentHeaderHeight;
            return placeProviderObject;
        }

        @Override // org.telegram.ui.PhotoViewer.EmptyPhotoViewerProvider, org.telegram.ui.PhotoViewer.PhotoViewerProvider
        public void onClose() {
            super.onClose();
            ArticleViewer.this.checkVideoPlayer();
        }

        @Override // org.telegram.ui.PhotoViewer.EmptyPhotoViewerProvider, org.telegram.ui.PhotoViewer.PhotoViewerProvider
        public void onReleasePlayerBeforeClose(int i) {
            TLRPC.PageBlock pageBlock = (i < 0 || i >= this.pageBlocks.size()) ? null : (TLRPC.PageBlock) this.pageBlocks.get(i);
            VideoPlayer videoPlayer = PhotoViewer.getInstance().getVideoPlayer();
            TextureView videoTextureView = PhotoViewer.getInstance().getVideoTextureView();
            SurfaceView videoSurfaceView = PhotoViewer.getInstance().getVideoSurfaceView();
            BlockVideoCell viewFromListView = getViewFromListView(ArticleViewer.this.pages[0].listView, pageBlock);
            if (viewFromListView != null && videoPlayer != null && videoTextureView != null) {
                ArticleViewer.this.videoStates.put(viewFromListView.currentBlock.video_id, viewFromListView.setState(BlockVideoCellState.fromPlayer(videoPlayer, viewFromListView, videoTextureView)));
                viewFromListView.firstFrameRendered = false;
                viewFromListView.textureView.setAlpha(BitmapDescriptorFactory.HUE_RED);
                if (viewFromListView.videoState != null && viewFromListView.videoState.lastFrameBitmap != null) {
                    viewFromListView.imageView.setImageBitmap(viewFromListView.videoState.lastFrameBitmap);
                }
            }
            if (viewFromListView != null && videoPlayer != null && videoSurfaceView != null) {
                ArticleViewer.this.videoStates.put(viewFromListView.currentBlock.video_id, viewFromListView.setState(BlockVideoCellState.fromPlayer(videoPlayer, viewFromListView, videoSurfaceView)));
                viewFromListView.firstFrameRendered = false;
                viewFromListView.textureView.setAlpha(BitmapDescriptorFactory.HUE_RED);
                if (viewFromListView.videoState != null && viewFromListView.videoState.lastFrameBitmap != null) {
                    viewFromListView.imageView.setImageBitmap(viewFromListView.videoState.lastFrameBitmap);
                }
            }
            ArticleViewer.this.checkVideoPlayer();
        }
    }

    public class PageLayout extends FrameLayout {
        public final WebpageAdapter adapter;
        public boolean backButton;
        private final GradientClip clip;
        public WebInstantView.Loader currentInstantLoader;
        public ErrorContainer errorContainer;
        private boolean errorShown;
        public boolean forwardButton;
        private String lastFormattedUrl;
        private String lastUrl;
        private boolean lastVisible;
        public final LinearLayoutManager layoutManager;
        public final RecyclerListView listView;
        public float overrideProgress;
        public boolean paused;
        private boolean swipeBack;
        public final ChatAttachAlertBotWebViewLayout.WebViewSwipeContainer swipeContainer;
        public int type;
        private CachedWeb web;
        public int webActionBarColor;
        public int webBackgroundColor;
        public final BotWebViewContainer webViewContainer;

        public PageLayout(Context context, Theme.ResourcesProvider resourcesProvider) throws PackageManager.NameNotFoundException {
            super(context);
            int i = Theme.key_iv_background;
            this.webActionBarColor = ArticleViewer.this.getThemedColor(i);
            this.webBackgroundColor = ArticleViewer.this.getThemedColor(i);
            this.paused = false;
            this.overrideProgress = -1.0f;
            this.clip = new GradientClip();
            WebpageListView webpageListView = new WebpageListView(context, resourcesProvider) { // from class: org.telegram.ui.ArticleViewer.PageLayout.1
                {
                    ArticleViewer articleViewer = ArticleViewer.this;
                }

                @Override // org.telegram.ui.ArticleViewer.WebpageListView, org.telegram.ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
                protected void onLayout(boolean z, int i2, int i3, int i4, int i5) {
                    super.onLayout(z, i2, i3, i4, i5);
                    PageLayout.this.overrideProgress = -1.0f;
                }
            };
            this.listView = webpageListView;
            webpageListView.setClipToPadding(false);
            float f = 56.0f;
            webpageListView.setPadding(0, AndroidUtilities.dp(56.0f), 0, 0);
            webpageListView.setTopGlowOffset(AndroidUtilities.dp(56.0f));
            ((DefaultItemAnimator) webpageListView.getItemAnimator()).setDelayAnimations(false);
            Sheet sheet = ArticleViewer.this.sheet;
            WebpageAdapter webpageAdapter = ArticleViewer.this.new WebpageAdapter(context, sheet != null && sheet.halfSize());
            this.adapter = webpageAdapter;
            webpageListView.setAdapter(webpageAdapter);
            LinearLayoutManager linearLayoutManager = new LinearLayoutManager(context, 1, false);
            this.layoutManager = linearLayoutManager;
            webpageListView.setLayoutManager(linearLayoutManager);
            webpageListView.setOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.ArticleViewer.PageLayout.2
                @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
                public void onScrollStateChanged(RecyclerView recyclerView, int i2) {
                    if (i2 == 0) {
                        ArticleViewer.this.textSelectionHelper.stopScrolling();
                    }
                }

                @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
                public void onScrolled(RecyclerView recyclerView, int i2, int i3) {
                    View view;
                    if (recyclerView.getChildCount() == 0) {
                        return;
                    }
                    recyclerView.invalidate();
                    ArticleViewer.this.textSelectionHelper.onParentScrolled();
                    ArticleViewer articleViewer = ArticleViewer.this;
                    Sheet sheet2 = articleViewer.sheet;
                    if (sheet2 == null) {
                        if (articleViewer.windowView != null) {
                            view = ArticleViewer.this.windowView;
                        }
                        ArticleViewer.this.updatePages();
                        ArticleViewer.this.checkScroll(i3);
                    }
                    view = sheet2.windowView;
                    view.invalidate();
                    ArticleViewer.this.updatePages();
                    ArticleViewer.this.checkScroll(i3);
                }
            });
            addView(webpageListView, LayoutHelper.createFrame(-1, -1.0f));
            ChatAttachAlertBotWebViewLayout.WebViewSwipeContainer webViewSwipeContainer = new ChatAttachAlertBotWebViewLayout.WebViewSwipeContainer(getContext()) { // from class: org.telegram.ui.ArticleViewer.PageLayout.3
                private boolean ignoreLayout;

                @Override // android.widget.FrameLayout, android.view.View
                protected void onMeasure(int i2, int i3) {
                    this.ignoreLayout = true;
                    setOffsetY(View.MeasureSpec.getSize(i3) * 0.4f);
                    this.ignoreLayout = false;
                    int size = View.MeasureSpec.getSize(i3);
                    Sheet sheet2 = ArticleViewer.this.sheet;
                    super.onMeasure(i2, View.MeasureSpec.makeMeasureSpec((size - AndroidUtilities.dp((sheet2 == null || sheet2.halfSize()) ? 56.0f : BitmapDescriptorFactory.HUE_RED)) - AndroidUtilities.statusBarHeight, 1073741824));
                }

                @Override // android.view.View, android.view.ViewParent
                public void requestLayout() {
                    if (this.ignoreLayout) {
                        return;
                    }
                    super.requestLayout();
                }
            };
            this.swipeContainer = webViewSwipeContainer;
            webViewSwipeContainer.setShouldWaitWebViewScroll(true);
            webViewSwipeContainer.setFullSize(true);
            webViewSwipeContainer.setAllowFullSizeSwipe(true);
            BotWebViewContainer botWebViewContainer = new BotWebViewContainer(getContext(), resourcesProvider, ArticleViewer.this.getThemedColor(Theme.key_windowBackgroundWhite), false) { // from class: org.telegram.ui.ArticleViewer.PageLayout.4
                @Override // org.telegram.ui.web.BotWebViewContainer
                protected void onErrorShown(boolean z, int i2, String str) {
                    if (z) {
                        PageLayout.this.createErrorContainer();
                        PageLayout.this.errorContainer.set(getWebView() != null ? getWebView().getUrl() : null, i2, str);
                        PageLayout pageLayout = PageLayout.this;
                        ErrorContainer errorContainer = pageLayout.errorContainer;
                        ArticleViewer articleViewer = ArticleViewer.this;
                        int i3 = Theme.key_iv_background;
                        errorContainer.setDark(AndroidUtilities.computePerceivedBrightness(articleViewer.getThemedColor(i3)) <= 0.721f, false);
                        PageLayout pageLayout2 = PageLayout.this;
                        pageLayout2.errorContainer.setBackgroundColor(ArticleViewer.this.getThemedColor(i3));
                    }
                    PageLayout pageLayout3 = PageLayout.this;
                    AndroidUtilities.updateViewVisibilityAnimated(pageLayout3.errorContainer, pageLayout3.errorShown = z, 1.0f, false);
                    invalidate();
                }

                @Override // org.telegram.ui.web.BotWebViewContainer
                protected void onFaviconChanged(Bitmap bitmap) {
                    super.onFaviconChanged(bitmap);
                }

                @Override // org.telegram.ui.web.BotWebViewContainer
                protected void onTitleChanged(String str) {
                    ArticleViewer.this.updateTitle(true);
                }

                @Override // org.telegram.ui.web.BotWebViewContainer
                protected void onURLChanged(String str, boolean z, boolean z2) {
                    PageLayout pageLayout = PageLayout.this;
                    pageLayout.backButton = !z;
                    pageLayout.forwardButton = !z2;
                    ArticleViewer.this.updateTitle(true);
                    PageLayout pageLayout2 = PageLayout.this;
                    ArticleViewer articleViewer = ArticleViewer.this;
                    if (pageLayout2 != articleViewer.pages[0] || articleViewer.actionBar.isAddressing() || ArticleViewer.this.actionBar.isSearching() || ArticleViewer.this.windowView.movingPage || ArticleViewer.this.windowView.openingPage) {
                        return;
                    }
                    if (ArticleViewer.this.isFirstArticle() || ArticleViewer.this.pagesStack.size() > 1) {
                        BackDrawable backDrawable = ArticleViewer.this.actionBar.backButtonDrawable;
                        PageLayout pageLayout3 = PageLayout.this;
                        backDrawable.setRotation((pageLayout3.backButton || ArticleViewer.this.pagesStack.size() > 1) ? BitmapDescriptorFactory.HUE_RED : 1.0f, true);
                        WebActionBar webActionBar = ArticleViewer.this.actionBar;
                        PageLayout pageLayout4 = PageLayout.this;
                        webActionBar.setBackButtonCached(pageLayout4.backButton || ArticleViewer.this.pagesStack.size() > 1);
                    } else {
                        ArticleViewer.this.actionBar.setBackButtonCached(false);
                    }
                    ArticleViewer.this.actionBar.forwardButtonDrawable.setState(false);
                    ArticleViewer.this.actionBar.setHasForward(PageLayout.this.forwardButton);
                    WebActionBar webActionBar2 = ArticleViewer.this.actionBar;
                    PageLayout pageLayout5 = ArticleViewer.this.pages[0];
                    webActionBar2.setIsTonsite(pageLayout5 != null && pageLayout5.isTonsite());
                }

                @Override // org.telegram.ui.web.BotWebViewContainer
                public void onWebViewCreated(BotWebViewContainer.MyWebView myWebView) {
                    super.onWebViewCreated(myWebView);
                    PageLayout.this.swipeContainer.setWebView(myWebView);
                }

                @Override // org.telegram.ui.web.BotWebViewContainer
                public void setPageLoaded(String str, boolean z) {
                    WebInstantView.Loader loader;
                    if (ArticleViewer.this.actionBar != null) {
                        PageLayout pageLayout = PageLayout.this;
                        if (pageLayout == ArticleViewer.this.pages[0] && (loader = pageLayout.currentInstantLoader) != null && loader.getWebPage() == null) {
                            PageLayout.this.currentInstantLoader.retryLocal(getWebView());
                        }
                    }
                    super.setPageLoaded(str, z);
                }
            };
            this.webViewContainer = botWebViewContainer;
            botWebViewContainer.setOnCloseRequestedListener(new Runnable() { // from class: org.telegram.ui.ArticleViewer$PageLayout$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$new$0();
                }
            });
            botWebViewContainer.setWebViewProgressListener(new Consumer() { // from class: org.telegram.ui.ArticleViewer$PageLayout$$ExternalSyntheticLambda1
                @Override // androidx.core.util.Consumer
                public final void accept(Object obj) {
                    this.f$0.lambda$new$1((Float) obj);
                }
            });
            botWebViewContainer.setDelegate(new BotWebViewContainer.Delegate() { // from class: org.telegram.ui.ArticleViewer.PageLayout.5
                @Override // org.telegram.ui.web.BotWebViewContainer.Delegate
                public /* synthetic */ BotSensors getBotSensors() {
                    return BotWebViewContainer.Delegate.CC.$default$getBotSensors(this);
                }

                @Override // org.telegram.ui.web.BotWebViewContainer.Delegate
                public /* synthetic */ boolean isClipboardAvailable() {
                    return BotWebViewContainer.Delegate.CC.$default$isClipboardAvailable(this);
                }

                @Override // org.telegram.ui.web.BotWebViewContainer.Delegate
                public void onCloseRequested(Runnable runnable) throws PackageManager.NameNotFoundException {
                    PageLayout pageLayout = PageLayout.this;
                    ArticleViewer articleViewer = ArticleViewer.this;
                    if (articleViewer.pages[0] == pageLayout) {
                        articleViewer.goBack();
                    }
                }

                @Override // org.telegram.ui.web.BotWebViewContainer.Delegate
                public void onCloseToTabs() {
                    Sheet sheet2 = ArticleViewer.this.sheet;
                    if (sheet2 != null) {
                        sheet2.dismiss(true);
                    }
                }

                @Override // org.telegram.ui.web.BotWebViewContainer.Delegate
                public /* synthetic */ void onEmojiStatusGranted(boolean z) {
                    BotWebViewContainer.Delegate.CC.$default$onEmojiStatusGranted(this, z);
                }

                @Override // org.telegram.ui.web.BotWebViewContainer.Delegate
                public /* synthetic */ void onEmojiStatusSet(TLRPC.Document document) {
                    BotWebViewContainer.Delegate.CC.$default$onEmojiStatusSet(this, document);
                }

                @Override // org.telegram.ui.web.BotWebViewContainer.Delegate
                public /* synthetic */ String onFullscreenRequested(boolean z) {
                    return BotWebViewContainer.Delegate.CC.$default$onFullscreenRequested(this, z);
                }

                @Override // org.telegram.ui.web.BotWebViewContainer.Delegate
                public void onInstantClose() throws PackageManager.NameNotFoundException {
                    PageLayout pageLayout = PageLayout.this;
                    ArticleViewer articleViewer = ArticleViewer.this;
                    Sheet sheet2 = articleViewer.sheet;
                    if (sheet2 != null) {
                        sheet2.dismissInstant();
                    } else if (articleViewer.pages[0] == pageLayout) {
                        articleViewer.goBack();
                    }
                }

                @Override // org.telegram.ui.web.BotWebViewContainer.Delegate
                public /* synthetic */ void onLocationGranted(boolean z) {
                    BotWebViewContainer.Delegate.CC.$default$onLocationGranted(this, z);
                }

                @Override // org.telegram.ui.web.BotWebViewContainer.Delegate
                public /* synthetic */ void onOpenBackFromTabs() {
                    BotWebViewContainer.Delegate.CC.$default$onOpenBackFromTabs(this);
                }

                @Override // org.telegram.ui.web.BotWebViewContainer.Delegate
                public /* synthetic */ void onOrientationLockChanged(boolean z) {
                    BotWebViewContainer.Delegate.CC.$default$onOrientationLockChanged(this, z);
                }

                @Override // org.telegram.ui.web.BotWebViewContainer.Delegate
                public /* synthetic */ void onSendWebViewData(String str) {
                    BotWebViewContainer.Delegate.CC.$default$onSendWebViewData(this, str);
                }

                @Override // org.telegram.ui.web.BotWebViewContainer.Delegate
                public void onSetBackButtonVisible(boolean z) {
                }

                @Override // org.telegram.ui.web.BotWebViewContainer.Delegate
                public void onSetSettingsButtonVisible(boolean z) {
                }

                @Override // org.telegram.ui.web.BotWebViewContainer.Delegate
                public void onSetupMainButton(boolean z, boolean z2, String str, int i2, int i3, boolean z3, boolean z4) {
                }

                @Override // org.telegram.ui.web.BotWebViewContainer.Delegate
                public void onSetupSecondaryButton(boolean z, boolean z2, String str, int i2, int i3, boolean z3, boolean z4, String str2) {
                }

                @Override // org.telegram.ui.web.BotWebViewContainer.Delegate
                public /* synthetic */ void onSharedTo(ArrayList arrayList) {
                    BotWebViewContainer.Delegate.CC.$default$onSharedTo(this, arrayList);
                }

                @Override // org.telegram.ui.web.BotWebViewContainer.Delegate
                public void onWebAppBackgroundChanged(boolean z, int i2) {
                    PageLayout.this.setWebBgColor(z, i2);
                }

                @Override // org.telegram.ui.web.BotWebViewContainer.Delegate
                public void onWebAppExpand() {
                }

                @Override // org.telegram.ui.web.BotWebViewContainer.Delegate
                public void onWebAppOpenInvoice(TLRPC.InputInvoice inputInvoice, String str, TLObject tLObject) {
                }

                @Override // org.telegram.ui.web.BotWebViewContainer.Delegate
                public /* synthetic */ void onWebAppReady() {
                    BotWebViewContainer.Delegate.CC.$default$onWebAppReady(this);
                }

                @Override // org.telegram.ui.web.BotWebViewContainer.Delegate
                public void onWebAppSetActionBarColor(int i2, int i3, boolean z) {
                }

                @Override // org.telegram.ui.web.BotWebViewContainer.Delegate
                public void onWebAppSetBackgroundColor(int i2) {
                }

                @Override // org.telegram.ui.web.BotWebViewContainer.Delegate
                public /* synthetic */ void onWebAppSetNavigationBarColor(int i2) {
                    BotWebViewContainer.Delegate.CC.$default$onWebAppSetNavigationBarColor(this, i2);
                }

                @Override // org.telegram.ui.web.BotWebViewContainer.Delegate
                public void onWebAppSetupClosingBehavior(boolean z) {
                }

                @Override // org.telegram.ui.web.BotWebViewContainer.Delegate
                public void onWebAppSwipingBehavior(boolean z) {
                }

                @Override // org.telegram.ui.web.BotWebViewContainer.Delegate
                public void onWebAppSwitchInlineQuery(TLRPC.User user, String str, List list) {
                }
            });
            botWebViewContainer.setWebViewScrollListener(new BotWebViewContainer.WebViewScrollListener() { // from class: org.telegram.ui.ArticleViewer.PageLayout.6
                @Override // org.telegram.ui.web.BotWebViewContainer.WebViewScrollListener
                public void onWebViewScrolled(WebView webView, int i2, int i3) {
                    ArticleViewer.this.updatePages();
                }
            });
            webViewSwipeContainer.addView(botWebViewContainer, LayoutHelper.createFrame(-1, -1.0f));
            webViewSwipeContainer.setScrollEndListener(new Runnable() { // from class: org.telegram.ui.ArticleViewer$PageLayout$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$new$2();
                }
            });
            webViewSwipeContainer.setDelegate(new ChatAttachAlertBotWebViewLayout.WebViewSwipeContainer.Delegate() { // from class: org.telegram.ui.ArticleViewer$PageLayout$$ExternalSyntheticLambda3
                @Override // org.telegram.ui.bots.ChatAttachAlertBotWebViewLayout.WebViewSwipeContainer.Delegate
                public final void onDismiss(boolean z) {
                    this.f$0.lambda$new$3(z);
                }
            });
            webViewSwipeContainer.setScrollListener(new Runnable() { // from class: org.telegram.ui.ArticleViewer$PageLayout$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$new$4();
                }
            });
            Sheet sheet2 = ArticleViewer.this.sheet;
            if (sheet2 != null && !sheet2.halfSize()) {
                f = BitmapDescriptorFactory.HUE_RED;
            }
            webViewSwipeContainer.setTopActionBarOffsetY(AndroidUtilities.dp(f) + AndroidUtilities.statusBarHeight);
            addView(webViewSwipeContainer, LayoutHelper.createFrame(-1, -1.0f));
            cleanup();
            setType(0);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$createErrorContainer$5(View view) {
            BotWebViewContainer.MyWebView webView = this.webViewContainer.getWebView();
            if (webView != null) {
                webView.reload();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0() {
            LaunchActivity launchActivity = LaunchActivity.instance;
            if (launchActivity == null) {
                return;
            }
            BottomSheetTabs bottomSheetTabs = launchActivity.getBottomSheetTabs();
            if (bottomSheetTabs == null || !bottomSheetTabs.tryRemoveTabWith(ArticleViewer.this)) {
                ArticleViewer.this.close(true, true);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$1(Float f) {
            ArticleViewer articleViewer = ArticleViewer.this;
            if (this == articleViewer.pages[0]) {
                if (articleViewer.actionBar.lineProgressView.getCurrentProgress() > f.floatValue()) {
                    ArticleViewer.this.actionBar.lineProgressView.setProgress(BitmapDescriptorFactory.HUE_RED, false);
                }
                ArticleViewer.this.actionBar.lineProgressView.setProgress(f.floatValue(), true);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$2() {
            this.webViewContainer.invalidateViewPortHeight(true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$3(boolean z) {
            Sheet sheet = ArticleViewer.this.sheet;
            if (sheet != null) {
                this.swipeBack = true;
                sheet.dismiss(true);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$4() {
            this.webViewContainer.invalidateViewPortHeight();
            ErrorContainer errorContainer = this.errorContainer;
            if (errorContainer != null) {
                errorContainer.layout.setTranslationY((((-this.swipeContainer.getOffsetY()) + this.swipeContainer.getTopActionBarOffsetY()) - this.swipeContainer.getSwipeOffsetY()) / 2.0f);
            }
            ArticleViewer.this.updatePages();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Removed duplicated region for block: B:19:0x0050 A[PHI: r3
          0x0050: PHI (r3v8 org.telegram.ui.ArticleViewer$Sheet) = (r3v5 org.telegram.ui.ArticleViewer$Sheet), (r3v14 org.telegram.ui.ArticleViewer$Sheet) binds: [B:18:0x004e, B:10:0x002b] A[DONT_GENERATE, DONT_INLINE]] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void setWebBgColor(boolean z, int i) {
            Sheet sheet;
            if (z) {
                this.webActionBarColor = Theme.blendOver(ArticleViewer.this.getThemedColor(Theme.key_iv_background), i);
                ArticleViewer articleViewer = ArticleViewer.this;
                if (this == articleViewer.pages[0]) {
                    if (SharedConfig.adaptableColorInBrowser) {
                        articleViewer.actionBar.setColors(this.webActionBarColor, true);
                    }
                    sheet = ArticleViewer.this.sheet;
                    if (sheet != null) {
                        sheet.checkNavColor();
                    }
                }
            } else {
                this.webBackgroundColor = Theme.blendOver(-1, i);
                ArticleViewer articleViewer2 = ArticleViewer.this;
                if (this == articleViewer2.pages[0]) {
                    if (SharedConfig.adaptableColorInBrowser) {
                        articleViewer2.actionBar.setMenuColors(this.webBackgroundColor);
                    }
                    sheet = ArticleViewer.this.sheet;
                    if (sheet != null) {
                    }
                }
            }
            ArticleViewer.this.updatePages();
        }

        public void addProgress(float f) {
            BotWebViewContainer.MyWebView webView;
            float fClamp01 = Utilities.clamp01(getProgress() + f);
            if (isArticle() || !isWeb() || (webView = this.webViewContainer.getWebView()) == null) {
                return;
            }
            webView.setScrollProgress(fClamp01);
            ArticleViewer.this.updatePages();
        }

        public void back() {
            if (!isWeb() || getWebView() == null) {
                return;
            }
            getWebView().goBack();
        }

        public void cleanup() throws PackageManager.NameNotFoundException {
            this.backButton = false;
            this.forwardButton = false;
            setWeb(null);
            this.webViewContainer.destroyWebView();
            this.webViewContainer.resetWebView();
            ArticleViewer articleViewer = ArticleViewer.this;
            int i = Theme.key_iv_background;
            this.webActionBarColor = articleViewer.getThemedColor(i);
            int themedColor = ArticleViewer.this.getThemedColor(i);
            this.webBackgroundColor = themedColor;
            ErrorContainer errorContainer = this.errorContainer;
            if (errorContainer != null) {
                errorContainer.setDark(AndroidUtilities.computePerceivedBrightness(themedColor) <= 0.721f, true);
                this.errorContainer.setBackgroundColor(this.webBackgroundColor);
                ErrorContainer errorContainer2 = this.errorContainer;
                this.errorShown = false;
                AndroidUtilities.updateViewVisibilityAnimated(errorContainer2, false, 1.0f, false);
            }
            this.adapter.cleanup();
            invalidate();
        }

        public ErrorContainer createErrorContainer() {
            if (this.errorContainer == null) {
                ChatAttachAlertBotWebViewLayout.WebViewSwipeContainer webViewSwipeContainer = this.swipeContainer;
                ErrorContainer errorContainer = new ErrorContainer(getContext());
                this.errorContainer = errorContainer;
                webViewSwipeContainer.addView(errorContainer, LayoutHelper.createFrame(-1, -1.0f));
                this.errorContainer.buttonView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ArticleViewer$PageLayout$$ExternalSyntheticLambda5
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f$0.lambda$createErrorContainer$5(view);
                    }
                });
                AndroidUtilities.updateViewVisibilityAnimated(this.errorContainer, this.errorShown, 1.0f, false);
            }
            return this.errorContainer;
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void dispatchDraw(Canvas canvas) {
            super.dispatchDraw(canvas);
        }

        public int getActionBarColor() {
            return (isWeb() && SharedConfig.adaptableColorInBrowser) ? this.webActionBarColor : ArticleViewer.this.getThemedColor(Theme.key_iv_background);
        }

        public WebpageAdapter getAdapter() {
            return this.adapter;
        }

        public int getBackgroundColor() {
            return (isWeb() && SharedConfig.adaptableColorInBrowser && !this.errorShown) ? this.webBackgroundColor : ArticleViewer.this.getThemedColor(Theme.key_iv_background);
        }

        public float getListTop() {
            if (!isArticle()) {
                return isWeb() ? this.swipeContainer.getTranslationY() : BitmapDescriptorFactory.HUE_RED;
            }
            float height = this.listView.getHeight();
            for (int i = 0; i < this.listView.getChildCount(); i++) {
                View childAt = this.listView.getChildAt(i);
                RecyclerListView recyclerListView = this.listView;
                height = Math.min(height, ((recyclerListView == null || recyclerListView.getLayoutManager() == null) ? 0 : this.listView.getLayoutManager().getItemViewType(childAt)) == 2147483646 ? childAt.getBottom() : childAt.getTop());
            }
            return height;
        }

        public RecyclerListView getListView() {
            return this.listView;
        }

        public float getProgress() {
            BotWebViewContainer.MyWebView webView;
            Sheet sheet;
            if (!isArticle()) {
                return (!isWeb() || (webView = this.webViewContainer.getWebView()) == null) ? BitmapDescriptorFactory.HUE_RED : webView.getScrollProgress();
            }
            float f = this.overrideProgress;
            if (f >= BitmapDescriptorFactory.HUE_RED) {
                return f;
            }
            int iFindFirstVisibleItemPosition = this.layoutManager.findFirstVisibleItemPosition();
            if (this.layoutManager.findViewByPosition(iFindFirstVisibleItemPosition) == null) {
                return BitmapDescriptorFactory.HUE_RED;
            }
            int[] iArr = this.adapter.sumItemHeights;
            if (iArr != null) {
                int i = iFindFirstVisibleItemPosition - 1;
                return Utilities.clamp01((((i < 0 || i >= iArr.length) ? 0 : iArr[i]) + ((iFindFirstVisibleItemPosition == 0 && (sheet = ArticleViewer.this.sheet) != null && sheet.halfSize()) ? 0 : -r2.getTop())) / Math.max(1, this.adapter.fullHeight - this.listView.getHeight()));
            }
            int iFindLastVisibleItemPosition = this.layoutManager.findLastVisibleItemPosition();
            Sheet sheet2 = ArticleViewer.this.sheet;
            if (sheet2 != null && sheet2.halfSize()) {
                if (iFindFirstVisibleItemPosition < 1) {
                    iFindFirstVisibleItemPosition = 1;
                }
                if (iFindLastVisibleItemPosition < 1) {
                    iFindLastVisibleItemPosition = 1;
                }
            }
            int itemCount = this.layoutManager.getItemCount() - 2;
            LinearLayoutManager linearLayoutManager = this.layoutManager;
            View viewFindViewByPosition = iFindLastVisibleItemPosition >= itemCount ? linearLayoutManager.findViewByPosition(itemCount) : linearLayoutManager.findViewByPosition(iFindFirstVisibleItemPosition);
            if (viewFindViewByPosition == null) {
                return BitmapDescriptorFactory.HUE_RED;
            }
            float width = getWidth() / (r3 - 1);
            float measuredHeight = viewFindViewByPosition.getMeasuredHeight();
            return ((iFindFirstVisibleItemPosition * width) + (iFindLastVisibleItemPosition >= itemCount ? (((itemCount - iFindFirstVisibleItemPosition) * width) * (this.listView.getMeasuredHeight() - viewFindViewByPosition.getTop())) / measuredHeight : width * (1.0f - ((Math.min(0, viewFindViewByPosition.getTop() - this.listView.getPaddingTop()) + measuredHeight) / measuredHeight)))) / getWidth();
        }

        public String getSubtitle() throws UnsupportedEncodingException {
            BotWebViewContainer.MyWebView webView;
            if (!isWeb() || (webView = this.webViewContainer.getWebView()) == null) {
                return "";
            }
            if (TextUtils.equals(this.lastUrl, webView.getUrl())) {
                return this.lastFormattedUrl;
            }
            try {
                String url = webView.getUrl();
                this.lastUrl = url;
                Uri uri = Uri.parse(BotWebViewContainer.magic2tonsite(url));
                String string = (uri.getScheme() == null || !(uri.getScheme().equalsIgnoreCase("http") || uri.getScheme().equalsIgnoreCase("https"))) ? uri.toString() : uri.getSchemeSpecificPart();
                if (!isTonsite()) {
                    try {
                        try {
                            Uri uri2 = Uri.parse(string);
                            if (uri2.getHost() != null) {
                                uri = uri2;
                            }
                            String strIDN_toUnicode = Browser.IDN_toUnicode(uri.getHost());
                            String[] strArrSplit = strIDN_toUnicode.split("\\.");
                            if (strArrSplit.length > 2 && ArticleViewer.this.actionBar != null && HintView2.measureCorrectly(strIDN_toUnicode, ArticleViewer.this.actionBar.titlePaint) > AndroidUtilities.displaySize.x - AndroidUtilities.dp(162.0f)) {
                                strIDN_toUnicode = strArrSplit[strArrSplit.length - 2] + '.' + strArrSplit[strArrSplit.length - 1];
                            }
                            string = Browser.replace(uri, null, "", strIDN_toUnicode, null);
                        } catch (Exception e) {
                            FileLog.e((Throwable) e, false);
                        }
                        string = URLDecoder.decode(string.replaceAll("\\+", "%2b"), "UTF-8");
                    } catch (Exception e2) {
                        FileLog.e(e2);
                    }
                }
                if (string.startsWith("//")) {
                    string = string.substring(2);
                }
                if (string.startsWith("www.")) {
                    string = string.substring(4);
                }
                if (string.endsWith("/")) {
                    string = string.substring(0, string.length() - 1);
                }
                int iIndexOf = string.indexOf("#");
                if (iIndexOf >= 0) {
                    string = string.substring(0, iIndexOf);
                }
                this.lastFormattedUrl = string;
                return string;
            } catch (Exception unused) {
                return webView.getUrl();
            }
        }

        public String getTitle() {
            BotWebViewContainer.MyWebView webView;
            if (isArticle()) {
                if (this.adapter.currentPage != null && this.adapter.currentPage.site_name != null) {
                    return this.adapter.currentPage.site_name;
                }
                if (this.adapter.currentPage != null && this.adapter.currentPage.title != null) {
                    return this.adapter.currentPage.title;
                }
            }
            return (!isWeb() || (webView = this.webViewContainer.getWebView()) == null) ? "" : webView.getTitle();
        }

        public BotWebViewContainer getWebContainer() {
            return this.webViewContainer;
        }

        public BotWebViewContainer.MyWebView getWebView() {
            BotWebViewContainer botWebViewContainer = this.webViewContainer;
            if (botWebViewContainer != null) {
                return botWebViewContainer.getWebView();
            }
            return null;
        }

        public boolean hasBackButton() {
            return this.backButton;
        }

        public boolean hasForwardButton() {
            return this.forwardButton;
        }

        public boolean isArticle() {
            return this.type == 0;
        }

        public boolean isAtTop() {
            if (isArticle()) {
                return !this.listView.canScrollVertically(-1);
            }
            isWeb();
            return false;
        }

        public boolean isTonsite() {
            BotWebViewContainer.MyWebView webView;
            if (isWeb() && (webView = getWebView()) != null) {
                return BotWebViewContainer.isTonsite(BotWebViewContainer.magic2tonsite(webView.getUrl()));
            }
            return false;
        }

        public boolean isWeb() {
            return this.type == 1;
        }

        public WebInstantView.Loader loadInstant() {
            if (!isWeb()) {
                WebInstantView.Loader loader = this.currentInstantLoader;
                if (loader != null) {
                    loader.cancel();
                    this.currentInstantLoader.recycle();
                    this.currentInstantLoader = null;
                }
                return null;
            }
            if (getWebView() == null) {
                WebInstantView.Loader loader2 = this.currentInstantLoader;
                if (loader2 != null) {
                    loader2.cancel();
                    this.currentInstantLoader.recycle();
                    this.currentInstantLoader = null;
                }
                return null;
            }
            WebInstantView.Loader loader3 = this.currentInstantLoader;
            if (loader3 != null && (loader3.currentIsLoaded != getWebView().isPageLoaded() || this.currentInstantLoader.currentProgress != getWebView().getProgress())) {
                this.currentInstantLoader.retryLocal(getWebView());
            } else {
                if (this.currentInstantLoader != null && TextUtils.equals(getWebView().getUrl(), this.currentInstantLoader.currentUrl)) {
                    return this.currentInstantLoader;
                }
                WebInstantView.Loader loader4 = this.currentInstantLoader;
                if (loader4 != null) {
                    loader4.cancel();
                    this.currentInstantLoader.recycle();
                    this.currentInstantLoader = null;
                }
                WebInstantView.Loader loader5 = new WebInstantView.Loader(ArticleViewer.this.currentAccount);
                this.currentInstantLoader = loader5;
                loader5.start(getWebView());
            }
            return this.currentInstantLoader;
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onAttachedToWindow() {
            ErrorContainer errorContainer;
            super.onAttachedToWindow();
            if (!this.errorShown || (errorContainer = this.errorContainer) == null) {
                return;
            }
            ArticleViewer articleViewer = ArticleViewer.this;
            int i = Theme.key_iv_background;
            errorContainer.setDark(AndroidUtilities.computePerceivedBrightness(articleViewer.getThemedColor(i)) <= 0.721f, false);
            this.errorContainer.setBackgroundColor(ArticleViewer.this.getThemedColor(i));
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            super.onMeasure(i, i2);
        }

        public void pause() {
            if (this.paused) {
                return;
            }
            if (getWebView() != null) {
                getWebView().onPause();
            }
            this.paused = true;
        }

        public void resume() {
            if (this.paused) {
                if (getWebView() != null) {
                    getWebView().onResume();
                }
                this.paused = false;
            }
        }

        public void scrollToTop(boolean z) {
            if (!isArticle()) {
                if (isWeb()) {
                    if (z) {
                        ChatAttachAlertBotWebViewLayout.WebViewSwipeContainer webViewSwipeContainer = this.swipeContainer;
                        webViewSwipeContainer.stickTo((-webViewSwipeContainer.getOffsetY()) + this.swipeContainer.getTopActionBarOffsetY());
                        return;
                    } else {
                        ChatAttachAlertBotWebViewLayout.WebViewSwipeContainer webViewSwipeContainer2 = this.swipeContainer;
                        webViewSwipeContainer2.setSwipeOffsetY((-webViewSwipeContainer2.getOffsetY()) + this.swipeContainer.getTopActionBarOffsetY());
                        return;
                    }
                }
                return;
            }
            if (!z) {
                LinearLayoutManager linearLayoutManager = this.layoutManager;
                Sheet sheet = ArticleViewer.this.sheet;
                linearLayoutManager.scrollToPositionWithOffset((sheet == null || !sheet.halfSize()) ? 0 : 1, ArticleViewer.this.sheet != null ? AndroidUtilities.dp(32.0f) : 0);
                return;
            }
            SmoothScroller smoothScroller = new SmoothScroller(getContext());
            Sheet sheet2 = ArticleViewer.this.sheet;
            if (sheet2 == null || !sheet2.halfSize()) {
                smoothScroller.setTargetPosition(0);
            } else {
                smoothScroller.setTargetPosition(1);
                smoothScroller.setOffset(-AndroidUtilities.dp(32.0f));
            }
            this.layoutManager.startSmoothScroll(smoothScroller);
        }

        public void setLastVisible(boolean z) {
            if (this.lastVisible != z) {
                this.lastVisible = z;
                this.webViewContainer.setKeyboardFocusable(z);
            }
        }

        @Override // android.view.View
        public void setTranslationX(float f) {
            super.setTranslationX(f);
            ArticleViewer.this.updatePages();
            if (ArticleViewer.this.windowView.openingPage) {
                ArticleViewer.this.containerView.invalidate();
            }
            if (ArticleViewer.this.windowView.movingPage) {
                ArticleViewer.this.containerView.invalidate();
                ArticleViewer articleViewer = ArticleViewer.this;
                articleViewer.setCurrentHeaderHeight((int) (articleViewer.windowView.startMovingHeaderHeight + ((AndroidUtilities.dp(56.0f) - ArticleViewer.this.windowView.startMovingHeaderHeight) * (f / getMeasuredWidth()))));
            }
            Sheet sheet = ArticleViewer.this.sheet;
            if (sheet != null) {
                sheet.updateTranslation();
            }
        }

        public void setType(int i) throws PackageManager.NameNotFoundException {
            if (this.type != i) {
                cleanup();
            }
            this.type = i;
            this.listView.setVisibility(isArticle() ? 0 : 8);
            this.swipeContainer.setVisibility(isWeb() ? 0 : 8);
        }

        public void setWeb(CachedWeb cachedWeb) throws PackageManager.NameNotFoundException {
            CachedWeb cachedWeb2 = this.web;
            if (cachedWeb2 != cachedWeb) {
                if (cachedWeb2 != null) {
                    cachedWeb2.detach(this);
                }
                this.web = cachedWeb;
                if (cachedWeb != null) {
                    cachedWeb.attach(this);
                }
                WebInstantView.Loader loader = this.currentInstantLoader;
                if (loader != null) {
                    loader.cancel();
                    this.currentInstantLoader.recycle();
                    this.currentInstantLoader = null;
                }
            }
        }
    }

    private class RealPageBlocksAdapter implements PhotoViewer.PageBlocksAdapter {
        private final TLRPC.WebPage page;
        private final List pageBlocks;

        private RealPageBlocksAdapter(TLRPC.WebPage webPage, List list) {
            this.page = webPage;
            this.pageBlocks = list;
        }

        @Override // org.telegram.ui.PhotoViewer.PageBlocksAdapter
        public TLRPC.PageBlock get(int i) {
            return (TLRPC.PageBlock) this.pageBlocks.get(i);
        }

        @Override // org.telegram.ui.PhotoViewer.PageBlocksAdapter
        public List getAll() {
            return this.pageBlocks;
        }

        /* JADX WARN: Removed duplicated region for block: B:7:0x0028  */
        @Override // org.telegram.ui.PhotoViewer.PageBlocksAdapter
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public CharSequence getCaption(int i) {
            SpannableStringBuilder spannableStringBuilder;
            TLRPC.PageBlock pageBlock = get(i);
            if (pageBlock instanceof TLRPC.TL_pageBlockPhoto) {
                String str = ((TLRPC.TL_pageBlockPhoto) pageBlock).url;
                if (TextUtils.isEmpty(str)) {
                    spannableStringBuilder = null;
                } else {
                    spannableStringBuilder = new SpannableStringBuilder(str);
                    spannableStringBuilder.setSpan(new URLSpan(str) { // from class: org.telegram.ui.ArticleViewer.RealPageBlocksAdapter.1
                        @Override // android.text.style.URLSpan, android.text.style.ClickableSpan
                        public void onClick(View view) {
                            ArticleViewer articleViewer = ArticleViewer.this;
                            String url = getURL();
                            ArticleViewer articleViewer2 = ArticleViewer.this;
                            articleViewer.openWebpageUrl(url, null, articleViewer2.makeProgress(articleViewer2.pressedLink, ArticleViewer.this.pressedLinkOwnerLayout));
                        }
                    }, 0, str.length(), 34);
                }
            }
            if (spannableStringBuilder != null) {
                return spannableStringBuilder;
            }
            TLRPC.RichText blockCaption = ArticleViewer.this.getBlockCaption(pageBlock, 2);
            CharSequence text = ArticleViewer.this.getText(this.page, (View) null, blockCaption, blockCaption, pageBlock, -AndroidUtilities.dp(100.0f));
            if (!(text instanceof Spannable)) {
                return text;
            }
            Spannable spannable = (Spannable) text;
            TextPaintUrlSpan[] textPaintUrlSpanArr = (TextPaintUrlSpan[]) spannable.getSpans(0, text.length(), TextPaintUrlSpan.class);
            SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder(text.toString());
            if (textPaintUrlSpanArr != null && textPaintUrlSpanArr.length > 0) {
                for (int i2 = 0; i2 < textPaintUrlSpanArr.length; i2++) {
                    spannableStringBuilder2.setSpan(new URLSpan(textPaintUrlSpanArr[i2].getUrl()) { // from class: org.telegram.ui.ArticleViewer.RealPageBlocksAdapter.2
                        @Override // android.text.style.URLSpan, android.text.style.ClickableSpan
                        public void onClick(View view) {
                            ArticleViewer.this.openWebpageUrl(getURL(), null, null);
                        }
                    }, spannable.getSpanStart(textPaintUrlSpanArr[i2]), spannable.getSpanEnd(textPaintUrlSpanArr[i2]), 33);
                }
            }
            return spannableStringBuilder2;
        }

        @Override // org.telegram.ui.PhotoViewer.PageBlocksAdapter
        public File getFile(int i) {
            if (i >= this.pageBlocks.size() || i < 0) {
                return null;
            }
            return WebPageUtils.getMediaFile(this.page, get(i));
        }

        @Override // org.telegram.ui.PhotoViewer.PageBlocksAdapter
        public TLRPC.PhotoSize getFileLocation(TLObject tLObject, int[] iArr) {
            TLRPC.PhotoSize closestPhotoSizeWithSize;
            if (!(tLObject instanceof TLRPC.Photo)) {
                if (!(tLObject instanceof TLRPC.Document) || (closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(((TLRPC.Document) tLObject).thumbs, 90)) == null) {
                    return null;
                }
                int i = closestPhotoSizeWithSize.size;
                iArr[0] = i;
                if (i == 0) {
                    iArr[0] = -1;
                }
                return closestPhotoSizeWithSize;
            }
            TLRPC.PhotoSize closestPhotoSizeWithSize2 = FileLoader.getClosestPhotoSizeWithSize(((TLRPC.Photo) tLObject).sizes, AndroidUtilities.getPhotoSize());
            if (closestPhotoSizeWithSize2 == null) {
                iArr[0] = -1;
                return null;
            }
            int i2 = closestPhotoSizeWithSize2.size;
            iArr[0] = i2;
            if (i2 == 0) {
                iArr[0] = -1;
            }
            return closestPhotoSizeWithSize2;
        }

        @Override // org.telegram.ui.PhotoViewer.PageBlocksAdapter
        public String getFileName(int i) {
            TLObject media = getMedia(i);
            if (media instanceof TLRPC.Photo) {
                media = FileLoader.getClosestPhotoSizeWithSize(((TLRPC.Photo) media).sizes, AndroidUtilities.getPhotoSize());
            }
            return FileLoader.getAttachFileName(media);
        }

        @Override // org.telegram.ui.PhotoViewer.PageBlocksAdapter
        public int getItemsCount() {
            return this.pageBlocks.size();
        }

        @Override // org.telegram.ui.PhotoViewer.PageBlocksAdapter
        public TLObject getMedia(int i) {
            if (i >= this.pageBlocks.size() || i < 0) {
                return null;
            }
            return WebPageUtils.getMedia(this.page, get(i));
        }

        @Override // org.telegram.ui.PhotoViewer.PageBlocksAdapter
        public Object getParentObject() {
            return this.page;
        }

        @Override // org.telegram.ui.PhotoViewer.PageBlocksAdapter
        public boolean isHardwarePlayer(int i) {
            return i < this.pageBlocks.size() && i >= 0 && !WebPageUtils.isVideo(this.page, get(i)) && ArticleViewer.this.pages[0].adapter.getTypeForBlock(get(i)) == 5;
        }

        @Override // org.telegram.ui.PhotoViewer.PageBlocksAdapter
        public boolean isVideo(int i) {
            return i < this.pageBlocks.size() && i >= 0 && WebPageUtils.isVideo(this.page, get(i));
        }

        @Override // org.telegram.ui.PhotoViewer.PageBlocksAdapter
        public void updateSlideshowCell(TLRPC.PageBlock pageBlock) throws Resources.NotFoundException {
            int childCount = ArticleViewer.this.pages[0].listView.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = ArticleViewer.this.pages[0].listView.getChildAt(i);
                if (childAt instanceof BlockSlideshowCell) {
                    BlockSlideshowCell blockSlideshowCell = (BlockSlideshowCell) childAt;
                    int iIndexOf = blockSlideshowCell.currentBlock.items.indexOf(pageBlock);
                    if (iIndexOf != -1) {
                        blockSlideshowCell.innerListView.setCurrentItem(iIndexOf, false);
                        return;
                    }
                }
            }
        }
    }

    private class ReportCell extends FrameLayout {
        private boolean hasViews;
        private TextView textView;
        private TextView viewsTextView;
        public final boolean web;

        public ReportCell(Context context, boolean z) {
            super(context);
            this.web = z;
            setTag(90);
            TextView textView = new TextView(context);
            this.textView = textView;
            textView.setText(LocaleController.getString(z ? R.string.PreviewFeedbackAuto : R.string.PreviewFeedback2));
            this.textView.setTextSize(1, 12.0f);
            this.textView.setGravity(17);
            this.textView.setPadding(AndroidUtilities.dp(18.0f), 0, AndroidUtilities.dp(18.0f), 0);
            addView(this.textView, LayoutHelper.createFrame(-1, 34.0f, 51, BitmapDescriptorFactory.HUE_RED, 10.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED));
            TextView textView2 = new TextView(context);
            this.viewsTextView = textView2;
            textView2.setTextSize(1, 12.0f);
            this.viewsTextView.setGravity(19);
            this.viewsTextView.setPadding(AndroidUtilities.dp(18.0f), 0, AndroidUtilities.dp(18.0f), 0);
            addView(this.viewsTextView, LayoutHelper.createFrame(-1, 34.0f, 51, BitmapDescriptorFactory.HUE_RED, 10.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED));
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(44.0f), 1073741824));
        }

        public void setViews(int i) {
            if (i == 0) {
                this.hasViews = false;
                this.viewsTextView.setVisibility(8);
                this.textView.setGravity(17);
            } else {
                this.hasViews = true;
                this.viewsTextView.setVisibility(0);
                this.textView.setGravity(21);
                this.viewsTextView.setText(LocaleController.formatPluralStringComma("Views", i));
            }
            int themedColor = ArticleViewer.this.getThemedColor(Theme.key_switchTrack);
            this.textView.setTextColor(ArticleViewer.this.getGrayTextColor());
            this.viewsTextView.setTextColor(ArticleViewer.this.getGrayTextColor());
            this.textView.setBackgroundColor(Color.argb(34, Color.red(themedColor), Color.green(themedColor), Color.blue(themedColor)));
        }
    }

    private static class SearchResult {
        private TLRPC.PageBlock block;
        private int index;
        private Object text;

        private SearchResult() {
        }
    }

    public class Sheet implements BaseFragment.AttachedSheet, BottomSheetTabsOverlay.Sheet {
        public final AnimationNotificationsLocker animationsLock = new AnimationNotificationsLocker();
        public boolean attachedToActionBar;
        private float backProgress;
        public View containerView;
        public final Context context;
        public BottomSheetTabDialog dialog;
        private ValueAnimator dismissAnimator;
        private float dismissProgress;
        private boolean dismissing;
        private boolean dismissingIntoTabs;
        public BaseFragment fragment;
        public boolean fullyAttachedToActionBar;
        private boolean hadDialog;
        private boolean lastVisible;
        public boolean nestedVerticalScroll;
        private Runnable onDismissListener;
        private ValueAnimator openAnimator;
        private float openProgress;
        private boolean released;
        public Theme.ResourcesProvider resourcesProvider;
        private boolean wasFullyVisible;
        public final WindowView windowView;

        public class WindowView extends SizeNotifierFrameLayout implements BaseFragment.AttachedSheetWindow, BottomSheetTabsOverlay.SheetView {
            private final AnimatedFloat attachedActionBar;
            private final Paint backgroundPaint;
            private final Path clipPath;
            private Path clipPath2;
            private RectF clipRect;
            private boolean drawingFromOverlay;
            private final Paint handlePaint;
            private final Paint headerBackgroundPaint;
            private final RectF rect;
            private final RectF rect2;
            private final Paint scrimPaint;
            private final Paint shadowPaint;
            private boolean stoppedAtFling;

            public WindowView(Context context) {
                super(context);
                this.scrimPaint = new Paint(1);
                this.shadowPaint = new Paint(1);
                this.backgroundPaint = new Paint(1);
                this.handlePaint = new Paint(1);
                this.headerBackgroundPaint = new Paint(1);
                this.attachedActionBar = new AnimatedFloat(this, 0L, 420L, CubicBezierInterpolator.EASE_OUT_QUINT);
                this.clipPath = new Path();
                this.rect = new RectF();
                this.rect2 = new RectF();
                this.clipRect = new RectF();
                this.clipPath2 = new Path();
            }

            @Override // org.telegram.ui.Components.SizeNotifierFrameLayout, android.view.ViewGroup, android.view.View
            protected void dispatchDraw(Canvas canvas) {
                if (this.drawingFromOverlay) {
                    return;
                }
                float fMin = Math.min(Sheet.this.openProgress, 1.0f - Sheet.this.dismissProgress);
                this.scrimPaint.setColor(-16777216);
                this.scrimPaint.setAlpha((int) (96.0f * fMin * (1.0f - Sheet.this.backProgress)));
                canvas.drawRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getWidth(), getHeight(), this.scrimPaint);
                int listTop = Sheet.this.getListTop() - Sheet.this.getListPaddingTop();
                boolean z = listTop < AndroidUtilities.statusBarHeight + ActionBar.getCurrentActionBarHeight() && fMin > 0.95f;
                Sheet sheet = Sheet.this;
                if (sheet.attachedToActionBar != z) {
                    sheet.attachedToActionBar = z;
                    sheet.checkNavColor();
                }
                float f = this.attachedActionBar.set(z);
                Sheet sheet2 = Sheet.this;
                if (sheet2.fullyAttachedToActionBar != (f >= 0.999f)) {
                    sheet2.fullyAttachedToActionBar = f >= 0.999f;
                    sheet2.checkFullyVisible();
                }
                int iLerp = AndroidUtilities.lerp(listTop, 0, Utilities.clamp01(f));
                float emptyPadding = Sheet.this.getEmptyPadding() * Math.max(1.0f - Sheet.this.openProgress, Sheet.this.dismissProgress);
                canvas.save();
                canvas.translate(getWidth() * Sheet.this.backProgress, emptyPadding);
                float f2 = iLerp;
                this.rect.set(BitmapDescriptorFactory.HUE_RED, f2, getWidth(), getHeight() + AndroidUtilities.dp(16.0f));
                float f3 = 1.0f - f;
                float fDp = AndroidUtilities.dp(16.0f) * f3;
                if (f < 1.0f) {
                    this.shadowPaint.setColor(0);
                    this.shadowPaint.setShadowLayer(AndroidUtilities.dp(18.0f), BitmapDescriptorFactory.HUE_RED, -AndroidUtilities.dp(3.0f), Theme.multAlpha(-16777216, fMin * 0.26f));
                    canvas.drawRoundRect(this.rect, fDp, fDp, this.shadowPaint);
                }
                if (fDp <= BitmapDescriptorFactory.HUE_RED) {
                    canvas.clipRect(this.rect);
                } else {
                    this.clipPath.rewind();
                    this.clipPath.addRoundRect(this.rect, fDp, fDp, Path.Direction.CW);
                    canvas.clipPath(this.clipPath);
                }
                this.backgroundPaint.setColor(ArticleViewer.this.pages[1].getBackgroundColor());
                canvas.drawRect(this.rect, this.backgroundPaint);
                this.backgroundPaint.setColor(ArticleViewer.this.pages[0].getBackgroundColor());
                RectF rectF = AndroidUtilities.rectTmp;
                rectF.set(this.rect);
                rectF.left = ArticleViewer.this.pages[0].getX();
                canvas.drawRect(rectF, this.backgroundPaint);
                ArticleViewer.this.actionBar.drawShadow = z && Sheet.this.getListPaddingTop() + listTop <= AndroidUtilities.statusBarHeight + ArticleViewer.this.currentHeaderHeight;
                if (f > BitmapDescriptorFactory.HUE_RED) {
                    canvas.save();
                    float fLerp = AndroidUtilities.lerp(Sheet.this.getListPaddingTop() + listTop + 1, 0, f);
                    canvas.translate(BitmapDescriptorFactory.HUE_RED, fLerp);
                    ArticleViewer.this.actionBar.drawBackground(canvas, ((listTop + Sheet.this.getListPaddingTop()) + 1) - fLerp, 1.0f, f, true);
                    canvas.restore();
                }
                canvas.translate(BitmapDescriptorFactory.HUE_RED, -emptyPadding);
                if (!AndroidUtilities.makingGlobalBlurBitmap && (!ArticleViewer.this.pages[0].isWeb() || canvas.isHardwareAccelerated())) {
                    super.dispatchDraw(canvas);
                }
                canvas.translate(BitmapDescriptorFactory.HUE_RED, emptyPadding);
                if (f < 1.0f) {
                    this.handlePaint.setColor(ColorUtils.blendARGB(Theme.multAlpha((AndroidUtilities.computePerceivedBrightness(Sheet.this.getBackgroundColor()) > 0.721f ? 1 : (AndroidUtilities.computePerceivedBrightness(Sheet.this.getBackgroundColor()) == 0.721f ? 0 : -1)) < 0 ? -1 : -16777216, 0.15f), -16777216, f));
                    this.handlePaint.setAlpha((int) (r1.getAlpha() * f3));
                    float width = getWidth() / 2.0f;
                    float listPaddingTop = (f2 + (Sheet.this.getListPaddingTop() / 2.0f)) - (AndroidUtilities.dp(8.0f) * f);
                    float fLerp2 = AndroidUtilities.lerp(AndroidUtilities.dp(32.0f), AndroidUtilities.dp(48.0f), f) / 2.0f;
                    this.rect.set(width - fLerp2, listPaddingTop - AndroidUtilities.dp(2.0f), width + fLerp2, listPaddingTop + AndroidUtilities.dp(2.0f));
                    RectF rectF2 = this.rect;
                    canvas.drawRoundRect(rectF2, rectF2.height() / 2.0f, this.rect.height() / 2.0f, this.handlePaint);
                }
                canvas.restore();
            }

            @Override // android.view.ViewGroup, android.view.View
            public boolean dispatchTouchEvent(MotionEvent motionEvent) {
                if (motionEvent.getAction() == 0) {
                    if (motionEvent.getY() < (Sheet.this.attachedToActionBar ? 0 : r1.getListTop())) {
                        Sheet.this.dismiss(true);
                        return true;
                    }
                }
                return super.dispatchTouchEvent(motionEvent);
            }

            @Override // org.telegram.ui.ActionBar.BottomSheetTabsOverlay.SheetView
            public float drawInto(Canvas canvas, RectF rectF, float f, RectF rectF2, float f2, boolean z) {
                rectF2.set(getRect());
                AndroidUtilities.lerp(rectF2, rectF, f, rectF2);
                float fMin = Math.min(Sheet.this.openProgress, 1.0f - Sheet.this.dismissProgress);
                float f3 = 1.0f - f;
                this.scrimPaint.setColor(-16777216);
                this.scrimPaint.setAlpha((int) (fMin * f3 * 96.0f * (1.0f - Sheet.this.backProgress)));
                canvas.drawRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getWidth(), getHeight(), this.scrimPaint);
                float fLerp = AndroidUtilities.lerp(AndroidUtilities.dp(16.0f), AndroidUtilities.dp(10.0f), f);
                this.backgroundPaint.setColor(ArticleViewer.this.getThemedColor(Theme.key_windowBackgroundWhite));
                this.clipPath2.rewind();
                this.clipPath2.addRoundRect(rectF2, fLerp, fLerp, Path.Direction.CW);
                canvas.drawPath(this.clipPath2, this.backgroundPaint);
                if (getChildCount() == 1) {
                    if (Sheet.this.attachedToActionBar) {
                        canvas.save();
                        canvas.clipPath(this.clipPath2);
                        canvas.translate(BitmapDescriptorFactory.HUE_RED, rectF2.top);
                        ArticleViewer.this.actionBar.draw(canvas);
                        canvas.restore();
                    }
                    View childAt = getChildAt(0);
                    canvas.save();
                    float fLerp2 = z ? 1.0f : AndroidUtilities.lerp(1.0f, 0.99f, f);
                    float f4 = fLerp2 - 1.0f;
                    if (Math.abs(f4) > 0.01f) {
                        canvas.scale(fLerp2, fLerp2, rectF2.centerX(), rectF2.centerY());
                    }
                    canvas.clipPath(this.clipPath2);
                    if (Math.abs(f4) > 0.01f) {
                        float f5 = 1.0f / fLerp2;
                        canvas.scale(f5, f5, rectF2.centerX(), rectF2.centerY());
                    }
                    canvas.translate(BitmapDescriptorFactory.HUE_RED, (-Sheet.this.getListTop()) + rectF2.top + ((Sheet.this.attachedToActionBar ? ArticleViewer.this.actionBar.getMeasuredHeight() : 0) * f3));
                    childAt.draw(canvas);
                    canvas.restore();
                }
                return fLerp;
            }

            @Override // org.telegram.ui.ActionBar.BottomSheetTabsOverlay.SheetView
            public RectF getRect() {
                this.clipRect.set(BitmapDescriptorFactory.HUE_RED, (Sheet.this.attachedToActionBar ? 0 : r1.getListTop() - Sheet.this.getListPaddingTop()) + (Sheet.this.getEmptyPadding() * Math.max(1.0f - Sheet.this.openProgress, Sheet.this.dismissProgress)), getWidth(), getHeight());
                return this.clipRect;
            }

            public boolean isVisible() {
                return AndroidUtilities.lerp(Sheet.this.getListTop() - Sheet.this.getListPaddingTop(), 0, Utilities.clamp01(this.attachedActionBar.get())) < getHeight();
            }

            @Override // android.widget.FrameLayout, android.view.View
            protected void onMeasure(int i, int i2) {
                super.onMeasure(i, i2);
                Sheet.this.updateTranslation();
            }

            @Override // android.view.ViewGroup, android.view.ViewParent
            public boolean onNestedFling(View view, float f, float f2, boolean z) {
                return super.onNestedFling(view, f, f2, z);
            }

            @Override // android.view.ViewGroup, android.view.ViewParent
            public boolean onNestedPreFling(View view, float f, float f2) {
                boolean zOnNestedPreFling = super.onNestedPreFling(view, f, f2);
                if (Sheet.this.halfSize()) {
                    if (!ArticleViewer.this.pages[0].isAtTop() || f2 >= -1000.0f) {
                        Sheet.this.animateDismiss(false, true, null);
                    } else {
                        Sheet.this.dismiss(true);
                    }
                }
                this.stoppedAtFling = true;
                return zOnNestedPreFling;
            }

            @Override // android.view.ViewGroup, android.view.ViewParent
            public void onNestedPreScroll(View view, int i, int i2, int[] iArr) {
                Sheet sheet = Sheet.this;
                if (!sheet.nestedVerticalScroll) {
                    sheet.nestedVerticalScroll = i2 != 0;
                }
                if (ArticleViewer.this.pages[0].isAtTop() && Sheet.this.halfSize()) {
                    iArr[1] = Math.min((int) (Sheet.this.getEmptyPadding() * Sheet.this.dismissProgress), i2);
                    Sheet sheet2 = Sheet.this;
                    sheet2.dismissProgress = Utilities.clamp(sheet2.dismissProgress - (i2 / Sheet.this.getEmptyPadding()), 1.0f, BitmapDescriptorFactory.HUE_RED);
                    Sheet.this.updateTranslation();
                    Sheet.this.checkFullyVisible();
                }
            }

            @Override // android.view.ViewGroup, android.view.ViewParent
            public void onNestedScroll(View view, int i, int i2, int i3, int i4) {
                super.onNestedScroll(view, i, i2, i3, i4);
            }

            @Override // android.view.ViewGroup, android.view.ViewParent
            public void onNestedScrollAccepted(View view, View view2, int i) {
                super.onNestedScrollAccepted(view, view2, i);
            }

            @Override // android.view.ViewGroup, android.view.ViewParent
            public boolean onStartNestedScroll(View view, View view2, int i) {
                this.stoppedAtFling = false;
                return Sheet.this.halfSize() && i == 2;
            }

            @Override // android.view.ViewGroup, android.view.ViewParent
            public void onStopNestedScroll(View view) {
                Sheet sheet = Sheet.this;
                sheet.nestedVerticalScroll = false;
                if (sheet.halfSize() && !this.stoppedAtFling) {
                    if (Sheet.this.dismissProgress > 0.25f) {
                        Sheet.this.dismiss(true);
                    } else {
                        Sheet.this.animateDismiss(false, true, null);
                    }
                }
                super.onStopNestedScroll(view);
            }

            @Override // org.telegram.ui.ActionBar.BottomSheetTabsOverlay.SheetView
            public void setDrawingFromOverlay(boolean z) {
                if (this.drawingFromOverlay != z) {
                    this.drawingFromOverlay = z;
                    invalidate();
                }
            }
        }

        public Sheet(BaseFragment baseFragment) {
            this.fragment = baseFragment;
            this.resourcesProvider = baseFragment.getResourceProvider();
            Context context = baseFragment.getContext();
            this.context = context;
            WindowView windowView = new WindowView(context);
            this.windowView = windowView;
            new KeyboardNotifier(windowView, true, new Utilities.Callback() { // from class: org.telegram.ui.ArticleViewer$Sheet$$ExternalSyntheticLambda2
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    this.f$0.lambda$new$0((Integer) obj);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int getListPaddingTop() {
            return AndroidUtilities.dp(20.0f);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int getListTop() {
            int listTop = 0;
            PageLayout pageLayout = ArticleViewer.this.pages[0];
            float translationX = (pageLayout == null || pageLayout.getVisibility() != 0) ? BitmapDescriptorFactory.HUE_RED : 1.0f - (ArticleViewer.this.pages[0].getTranslationX() / ArticleViewer.this.pages[0].getWidth());
            float f = 1.0f - translationX;
            PageLayout pageLayout2 = ArticleViewer.this.pages[0];
            if (pageLayout2 != null && pageLayout2.getVisibility() == 0) {
                listTop = (int) (ArticleViewer.this.pages[0].getListTop() * translationX * ArticleViewer.this.pages[0].getAlpha());
            }
            PageLayout pageLayout3 = ArticleViewer.this.pages[1];
            return (pageLayout3 == null || pageLayout3.getVisibility() != 0) ? listTop : listTop + ((int) (ArticleViewer.this.pages[1].getListTop() * f * ArticleViewer.this.pages[1].getAlpha()));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$animateBackProgressTo$4(ValueAnimator valueAnimator) {
            setBackProgress(((Float) valueAnimator.getAnimatedValue()).floatValue());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$animateDismiss$3(ValueAnimator valueAnimator) {
            this.dismissProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            if (!this.dismissingIntoTabs) {
                updateTranslation();
            }
            checkNavColor();
            checkFullyVisible();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$animateOpen$2(ValueAnimator valueAnimator) {
            this.openProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            updateTranslation();
            checkNavColor();
            checkFullyVisible();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$dismiss$1() {
            release();
            ArticleViewer.this.destroy();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0(Integer num) {
            ArticleViewer.this.keyboardVisible = num.intValue() - AndroidUtilities.navigationBarHeight > AndroidUtilities.dp(20.0f);
        }

        public ValueAnimator animateBackProgressTo(float f) {
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.backProgress, f);
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.ArticleViewer$Sheet$$ExternalSyntheticLambda1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    this.f$0.lambda$animateBackProgressTo$4(valueAnimator);
                }
            });
            return valueAnimatorOfFloat;
        }

        public void animateDismiss(final boolean z, boolean z2, final Runnable runnable) {
            ValueAnimator valueAnimator = this.dismissAnimator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
            float f = BitmapDescriptorFactory.HUE_RED;
            if (!z2) {
                if (z) {
                    f = 1.0f;
                }
                this.dismissProgress = f;
                if (!this.dismissingIntoTabs) {
                    updateTranslation();
                }
                if (runnable != null) {
                    runnable.run();
                }
                checkFullyVisible();
                return;
            }
            float f2 = this.dismissProgress;
            if (z) {
                f = 1.0f;
            }
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(f2, f);
            this.dismissAnimator = valueAnimatorOfFloat;
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.ArticleViewer$Sheet$$ExternalSyntheticLambda4
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    this.f$0.lambda$animateDismiss$3(valueAnimator2);
                }
            });
            this.dismissAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.ArticleViewer.Sheet.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    Sheet.this.dismissProgress = z ? 1.0f : BitmapDescriptorFactory.HUE_RED;
                    if (!Sheet.this.dismissingIntoTabs) {
                        Sheet.this.updateTranslation();
                    }
                    Sheet.this.checkNavColor();
                    Runnable runnable2 = runnable;
                    if (runnable2 != null) {
                        runnable2.run();
                    }
                    Sheet.this.checkFullyVisible();
                }
            });
            this.dismissAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
            this.dismissAnimator.setDuration(250L);
            this.dismissAnimator.start();
        }

        public void animateOpen(final boolean z, boolean z2, final Runnable runnable) {
            ValueAnimator valueAnimator;
            long j;
            ValueAnimator valueAnimator2 = this.openAnimator;
            if (valueAnimator2 != null) {
                valueAnimator2.cancel();
            }
            float f = BitmapDescriptorFactory.HUE_RED;
            if (!z2) {
                if (z) {
                    f = 1.0f;
                }
                this.openProgress = f;
                updateTranslation();
                if (runnable != null) {
                    runnable.run();
                }
                checkFullyVisible();
                if (z) {
                    this.animationsLock.unlock();
                    return;
                }
                return;
            }
            float f2 = this.openProgress;
            if (z) {
                f = 1.0f;
            }
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(f2, f);
            this.openAnimator = valueAnimatorOfFloat;
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.ArticleViewer$Sheet$$ExternalSyntheticLambda3
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator3) {
                    this.f$0.lambda$animateOpen$2(valueAnimator3);
                }
            });
            this.openAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.ArticleViewer.Sheet.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    Sheet.this.openProgress = z ? 1.0f : BitmapDescriptorFactory.HUE_RED;
                    Sheet.this.updateTranslation();
                    Sheet.this.checkNavColor();
                    Runnable runnable2 = runnable;
                    if (runnable2 != null) {
                        runnable2.run();
                    }
                    Sheet.this.checkFullyVisible();
                    if (z) {
                        Sheet.this.animationsLock.unlock();
                    }
                }
            });
            if (z) {
                this.openAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
                valueAnimator = this.openAnimator;
                j = 320;
            } else {
                this.openAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT);
                valueAnimator = this.openAnimator;
                j = 180;
            }
            valueAnimator.setDuration(j);
            this.openAnimator.start();
        }

        public void attachInternal(BaseFragment baseFragment) {
            this.released = false;
            this.fragment = baseFragment;
            this.resourcesProvider = baseFragment.getResourceProvider();
            if (baseFragment instanceof ChatActivity) {
                ChatActivity chatActivity = (ChatActivity) baseFragment;
                if (chatActivity.getChatActivityEnterView() != null) {
                    chatActivity.getChatActivityEnterView().closeKeyboard();
                    chatActivity.getChatActivityEnterView().hidePopup(true, false);
                }
            }
            if (baseFragment.getParentActivity() instanceof LaunchActivity) {
                ((LaunchActivity) baseFragment.getParentActivity()).requestCustomNavigationBar();
            }
            BottomSheetTabDialog bottomSheetTabDialog = this.dialog;
            if (bottomSheetTabDialog != null) {
                bottomSheetTabDialog.attach();
            } else {
                AndroidUtilities.removeFromParent(this.windowView);
                if (baseFragment.getLayoutContainer() != null) {
                    baseFragment.getLayoutContainer().addView(this.windowView);
                }
            }
            PageLayout pageLayout = ArticleViewer.this.pages[0];
            if (pageLayout != null) {
                pageLayout.resume();
            }
            PageLayout pageLayout2 = ArticleViewer.this.pages[1];
            if (pageLayout2 != null) {
                pageLayout2.resume();
            }
        }

        @Override // org.telegram.ui.ActionBar.BaseFragment.AttachedSheet
        public boolean attachedToParent() {
            return this.windowView.isAttachedToWindow();
        }

        public void checkFullyVisible() {
            View view;
            if (this.wasFullyVisible != isFullyVisible()) {
                this.wasFullyVisible = isFullyVisible();
                BaseFragment baseFragment = this.fragment;
                if (baseFragment != null && (baseFragment.getParentLayout() instanceof ActionBarLayout)) {
                    ActionBarLayout actionBarLayout = (ActionBarLayout) this.fragment.getParentLayout();
                    ActionBarLayout.LayoutContainer layoutContainer = actionBarLayout.containerView;
                    if (layoutContainer != null) {
                        layoutContainer.invalidate();
                    }
                    view = actionBarLayout.sheetContainer;
                    if (view == null) {
                        return;
                    }
                } else if (!(this.windowView.getParent() instanceof View)) {
                    return;
                } else {
                    view = (View) this.windowView.getParent();
                }
                view.invalidate();
            }
        }

        public void checkNavColor() {
            BottomSheetTabDialog bottomSheetTabDialog = this.dialog;
            AndroidUtilities.setLightStatusBar(bottomSheetTabDialog != null ? bottomSheetTabDialog.windowView : this.windowView, isAttachedLightStatusBar());
            BottomSheetTabDialog bottomSheetTabDialog2 = this.dialog;
            if (bottomSheetTabDialog2 != null) {
                bottomSheetTabDialog2.updateNavigationBarColor();
            } else {
                LaunchActivity.instance.checkSystemBarColors(true, true, true, false);
                AndroidUtilities.setLightNavigationBar(mo1096getWindowView(), AndroidUtilities.computePerceivedBrightness(getNavigationBarColor(ArticleViewer.this.getThemedColor(Theme.key_windowBackgroundGray))) >= 0.721f);
            }
        }

        @Override // org.telegram.ui.ActionBar.BaseFragment.AttachedSheet, android.content.DialogInterface
        /* renamed from: dismiss */
        public void lambda$new$0() {
            dismiss(true);
        }

        @Override // org.telegram.ui.ActionBar.BaseFragment.AttachedSheet
        public void dismiss(boolean z) {
            if (this.dismissing) {
                return;
            }
            this.dismissing = true;
            this.dismissingIntoTabs = z;
            if (z) {
                LaunchActivity.instance.getBottomSheetTabsOverlay().dismissSheet(this);
            } else {
                animateDismiss(true, true, new Runnable() { // from class: org.telegram.ui.ArticleViewer$Sheet$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$dismiss$1();
                    }
                });
            }
            checkNavColor();
            checkFullyVisible();
        }

        public void dismissInstant() {
            if (this.dismissing) {
                return;
            }
            this.dismissing = true;
            release();
            ArticleViewer.this.destroy();
        }

        public int getActionBarColor() {
            if (SharedConfig.adaptableColorInBrowser) {
                return ColorUtils.blendARGB(ArticleViewer.this.pages[0].getActionBarColor(), ArticleViewer.this.pages[1].getActionBarColor(), 1.0f - (ArticleViewer.this.pages[0].getVisibility() != 0 ? BitmapDescriptorFactory.HUE_RED : 1.0f - (ArticleViewer.this.pages[0].getTranslationX() / ArticleViewer.this.pages[0].getWidth())));
            }
            return Theme.getColor(Theme.key_iv_background);
        }

        public ArticleViewer getArticleViewer() {
            return ArticleViewer.this;
        }

        public float getBackProgress() {
            return this.backProgress;
        }

        public int getBackgroundColor() {
            if (SharedConfig.adaptableColorInBrowser) {
                return ColorUtils.blendARGB(ArticleViewer.this.pages[0].getBackgroundColor(), ArticleViewer.this.pages[1].getBackgroundColor(), 1.0f - (ArticleViewer.this.pages[0].getVisibility() != 0 ? BitmapDescriptorFactory.HUE_RED : 1.0f - (ArticleViewer.this.pages[0].getTranslationX() / ArticleViewer.this.pages[0].getWidth())));
            }
            return Theme.getColor(Theme.key_iv_navigationBackground);
        }

        public int getEmptyPadding() {
            int iDp = AndroidUtilities.dp(16.0f);
            View view = this.containerView;
            return (iDp + (view == null ? AndroidUtilities.displaySize.y : view.getHeight())) - (getListTop() - getListPaddingTop());
        }

        @Override // org.telegram.ui.ActionBar.BaseFragment.AttachedSheet
        public int getNavigationBarColor(int i) {
            float fMin = this.dismissingIntoTabs ? BitmapDescriptorFactory.HUE_RED : Math.min(this.openProgress, 1.0f - this.dismissProgress) * (1.0f - this.backProgress);
            int backgroundColor = getBackgroundColor();
            if (ArticleViewer.this.actionBar != null) {
                backgroundColor = ColorUtils.blendARGB(backgroundColor, ArticleViewer.this.actionBar.addressBackgroundColor, ArticleViewer.this.actionBar.addressingProgress);
            }
            return ColorUtils.blendARGB(i, backgroundColor, fMin);
        }

        @Override // org.telegram.ui.ActionBar.BottomSheetTabsOverlay.Sheet
        /* renamed from: getWindowView, reason: merged with bridge method [inline-methods] */
        public WindowView mo1096getWindowView() {
            return this.windowView;
        }

        @Override // org.telegram.ui.ActionBar.BottomSheetTabsOverlay.Sheet
        public boolean hadDialog() {
            return this.hadDialog;
        }

        public final boolean halfSize() {
            return true;
        }

        @Override // org.telegram.ui.ActionBar.BaseFragment.AttachedSheet
        public boolean isAttachedLightStatusBar() {
            return this.attachedToActionBar && (this.dismissingIntoTabs ? BitmapDescriptorFactory.HUE_RED : Math.min(this.openProgress, 1.0f - this.dismissProgress) * (1.0f - this.backProgress)) > 0.25f && AndroidUtilities.computePerceivedBrightness(getActionBarColor()) >= 0.721f;
        }

        @Override // org.telegram.ui.ActionBar.BaseFragment.AttachedSheet
        public boolean isFullyVisible() {
            return this.fullyAttachedToActionBar && this.dismissProgress <= BitmapDescriptorFactory.HUE_RED && this.openProgress >= 1.0f && this.backProgress <= BitmapDescriptorFactory.HUE_RED && !this.dismissingIntoTabs && !this.dismissing;
        }

        @Override // org.telegram.ui.ActionBar.BaseFragment.AttachedSheet
        public boolean isShown() {
            WindowView windowView;
            return !this.dismissing && !this.released && this.openProgress > 0.5f && (windowView = this.windowView) != null && windowView.isAttachedToWindow() && this.windowView.isVisible() && this.backProgress < 1.0f;
        }

        @Override // org.telegram.ui.ActionBar.BaseFragment.AttachedSheet
        public boolean onAttachedBackPressed() throws PackageManager.NameNotFoundException {
            if (ArticleViewer.this.keyboardVisible) {
                AndroidUtilities.hideKeyboard(this.windowView);
                return true;
            }
            if (ArticleViewer.this.actionBar.isSearching()) {
                ArticleViewer.this.actionBar.showSearch(false, true);
                return true;
            }
            if (ArticleViewer.this.actionBar.isAddressing()) {
                ArticleViewer.this.actionBar.showAddress(false, true);
                return true;
            }
            if (ArticleViewer.this.isFirstArticle() && ArticleViewer.this.pages[0].hasBackButton()) {
                ArticleViewer.this.pages[0].back();
                return true;
            }
            if (ArticleViewer.this.pagesStack.size() > 1) {
                ArticleViewer.this.goBack();
                return true;
            }
            dismiss(false);
            return true;
        }

        @Override // org.telegram.ui.ActionBar.BottomSheetTabsOverlay.Sheet
        public void release() {
            this.released = true;
            PageLayout pageLayout = ArticleViewer.this.pages[0];
            if (pageLayout != null && pageLayout.swipeBack) {
                ChatAttachAlertBotWebViewLayout.WebViewSwipeContainer webViewSwipeContainer = ArticleViewer.this.pages[0].swipeContainer;
                webViewSwipeContainer.setSwipeOffsetY((-webViewSwipeContainer.offsetY) + webViewSwipeContainer.topActionBarOffsetY);
                ArticleViewer.this.pages[0].swipeBack = false;
            }
            PageLayout pageLayout2 = ArticleViewer.this.pages[0];
            if (pageLayout2 != null) {
                pageLayout2.pause();
            }
            PageLayout pageLayout3 = ArticleViewer.this.pages[1];
            if (pageLayout3 != null) {
                pageLayout3.pause();
            }
            BottomSheetTabDialog bottomSheetTabDialog = this.dialog;
            if (bottomSheetTabDialog != null) {
                bottomSheetTabDialog.detach();
            }
            BaseFragment baseFragment = this.fragment;
            if (baseFragment != null) {
                baseFragment.removeSheet(this);
                if (this.dialog == null) {
                    AndroidUtilities.removeFromParent(this.windowView);
                }
            }
            Runnable runnable = this.onDismissListener;
            if (runnable != null) {
                runnable.run();
                this.onDismissListener = null;
            }
        }

        public void reset() {
            this.dismissing = false;
            this.dismissingIntoTabs = false;
            ValueAnimator valueAnimator = this.openAnimator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
            ValueAnimator valueAnimator2 = this.dismissAnimator;
            if (valueAnimator2 != null) {
                valueAnimator2.cancel();
            }
            this.dismissProgress = BitmapDescriptorFactory.HUE_RED;
            this.openProgress = BitmapDescriptorFactory.HUE_RED;
            checkFullyVisible();
            updateTranslation();
            this.windowView.invalidate();
            this.windowView.requestLayout();
        }

        @Override // org.telegram.ui.ActionBar.BottomSheetTabsOverlay.Sheet
        public BottomSheetTabs.WebTabData saveState() {
            BottomSheetTabs.WebTabData webTabData = new BottomSheetTabs.WebTabData();
            webTabData.title = ArticleViewer.this.actionBar.getTitle();
            ArticleViewer articleViewer = ArticleViewer.this;
            webTabData.articleViewer = articleViewer;
            PageLayout pageLayout = articleViewer.pages[0];
            webTabData.actionBarColor = (pageLayout == null || !SharedConfig.adaptableColorInBrowser) ? articleViewer.getThemedColor(Theme.key_iv_background) : pageLayout.getActionBarColor();
            ArticleViewer articleViewer2 = ArticleViewer.this;
            PageLayout pageLayout2 = articleViewer2.pages[0];
            webTabData.backgroundColor = (pageLayout2 == null || !SharedConfig.adaptableColorInBrowser) ? articleViewer2.getThemedColor(Theme.key_iv_background) : pageLayout2.getBackgroundColor();
            webTabData.overrideActionBarColor = true;
            webTabData.articleProgress = !this.attachedToActionBar ? BitmapDescriptorFactory.HUE_RED : ArticleViewer.this.pages[0].getProgress();
            PageLayout pageLayout3 = ArticleViewer.this.pages[0];
            webTabData.view2 = pageLayout3;
            webTabData.favicon = (pageLayout3 == null || pageLayout3.getWebView() == null) ? null : ArticleViewer.this.pages[0].getWebView().getFavicon();
            View view = webTabData.view2;
            if (view != null) {
                webTabData.viewWidth = view.getWidth();
                webTabData.viewHeight = webTabData.view2.getHeight();
            }
            webTabData.viewScroll = getListTop();
            webTabData.themeIsDark = Theme.isCurrentThemeDark();
            return webTabData;
        }

        public void setBackProgress(float f) {
            this.backProgress = f;
            this.windowView.invalidate();
            checkNavColor();
            checkFullyVisible();
        }

        public void setContainerView(View view) {
            this.containerView = view;
            updateTranslation();
        }

        @Override // org.telegram.ui.ActionBar.BottomSheetTabsOverlay.Sheet
        public boolean setDialog(BottomSheetTabDialog bottomSheetTabDialog) {
            this.dialog = bottomSheetTabDialog;
            if (bottomSheetTabDialog != null) {
                this.hadDialog = true;
            }
            return true;
        }

        @Override // org.telegram.ui.ActionBar.BaseFragment.AttachedSheet
        public void setKeyboardHeightFromParent(int i) {
        }

        @Override // org.telegram.ui.ActionBar.BaseFragment.AttachedSheet
        public void setLastVisible(boolean z) {
            this.lastVisible = z;
            ArticleViewer.this.pages[0].setLastVisible(z);
            ArticleViewer.this.pages[1].setLastVisible(false);
        }

        @Override // org.telegram.ui.ActionBar.BaseFragment.AttachedSheet
        public void setOnDismissListener(Runnable runnable) {
            this.onDismissListener = runnable;
        }

        public void show() {
            if (this.dismissing) {
                return;
            }
            attachInternal(this.fragment);
            animateOpen(true, true, null);
        }

        @Override // org.telegram.ui.ActionBar.BaseFragment.AttachedSheet
        public boolean showDialog(Dialog dialog) {
            return false;
        }

        public void updateLastVisible() {
            ArticleViewer.this.pages[0].setLastVisible(this.lastVisible);
            ArticleViewer.this.pages[1].setLastVisible(false);
        }

        public void updateTranslation() {
            View view = this.containerView;
            if (view == null) {
                return;
            }
            view.setTranslationY(getEmptyPadding() * Math.max(1.0f - this.openProgress, this.dismissingIntoTabs ? BitmapDescriptorFactory.HUE_RED : this.dismissProgress));
            this.windowView.invalidate();
        }
    }

    private static class TL_pageBlockDetailsChild extends TLRPC.PageBlock {
        private TLRPC.PageBlock block;
        private TLRPC.PageBlock parent;

        private TL_pageBlockDetailsChild() {
        }

        static /* synthetic */ TLRPC.PageBlock access$5900(TL_pageBlockDetailsChild tL_pageBlockDetailsChild) {
            return tL_pageBlockDetailsChild.parent;
        }

        static /* synthetic */ TLRPC.PageBlock access$5902(TL_pageBlockDetailsChild tL_pageBlockDetailsChild, TLRPC.PageBlock pageBlock) {
            tL_pageBlockDetailsChild.parent = pageBlock;
            return pageBlock;
        }

        static /* synthetic */ TLRPC.PageBlock access$6000(TL_pageBlockDetailsChild tL_pageBlockDetailsChild) {
            return tL_pageBlockDetailsChild.block;
        }

        static /* synthetic */ TLRPC.PageBlock access$6002(TL_pageBlockDetailsChild tL_pageBlockDetailsChild, TLRPC.PageBlock pageBlock) {
            tL_pageBlockDetailsChild.block = pageBlock;
            return pageBlock;
        }
    }

    private static class TL_pageBlockEmbedPostCaption extends TLRPC.TL_pageBlockEmbedPost {
        private TLRPC.TL_pageBlockEmbedPost parent;

        private TL_pageBlockEmbedPostCaption() {
        }

        static /* synthetic */ TLRPC.TL_pageBlockEmbedPost access$10802(TL_pageBlockEmbedPostCaption tL_pageBlockEmbedPostCaption, TLRPC.TL_pageBlockEmbedPost tL_pageBlockEmbedPost) {
            tL_pageBlockEmbedPostCaption.parent = tL_pageBlockEmbedPost;
            return tL_pageBlockEmbedPost;
        }
    }

    private static class TL_pageBlockListItem extends TLRPC.PageBlock {
        private TLRPC.PageBlock blockItem;
        private int index;
        private String num;
        private DrawingText numLayout;
        private TL_pageBlockListParent parent;
        private TLRPC.RichText textItem;

        private TL_pageBlockListItem() {
            this.index = Integer.MAX_VALUE;
        }

        static /* synthetic */ TLRPC.RichText access$10302(TL_pageBlockListItem tL_pageBlockListItem, TLRPC.RichText richText) {
            tL_pageBlockListItem.textItem = richText;
            return richText;
        }

        static /* synthetic */ int access$11602(TL_pageBlockListItem tL_pageBlockListItem, int i) {
            tL_pageBlockListItem.index = i;
            return i;
        }

        static /* synthetic */ String access$11702(TL_pageBlockListItem tL_pageBlockListItem, String str) {
            tL_pageBlockListItem.num = str;
            return str;
        }

        static /* synthetic */ TLRPC.PageBlock access$5702(TL_pageBlockListItem tL_pageBlockListItem, TLRPC.PageBlock pageBlock) {
            tL_pageBlockListItem.blockItem = pageBlock;
            return pageBlock;
        }

        static /* synthetic */ TL_pageBlockListParent access$6202(TL_pageBlockListItem tL_pageBlockListItem, TL_pageBlockListParent tL_pageBlockListParent) {
            tL_pageBlockListItem.parent = tL_pageBlockListParent;
            return tL_pageBlockListParent;
        }
    }

    private static class TL_pageBlockListParent extends TLRPC.PageBlock {
        private ArrayList items;
        private int lastFontSize;
        private int lastMaxNumCalcWidth;
        private int level;
        private int maxNumWidth;
        private TLRPC.TL_pageBlockList pageBlockList;

        private TL_pageBlockListParent() {
            this.items = new ArrayList();
        }

        static /* synthetic */ int access$11502(TL_pageBlockListParent tL_pageBlockListParent, int i) {
            tL_pageBlockListParent.level = i;
            return i;
        }

        static /* synthetic */ ArrayList access$11800(TL_pageBlockListParent tL_pageBlockListParent) {
            return tL_pageBlockListParent.items;
        }

        static /* synthetic */ TLRPC.TL_pageBlockList access$8302(TL_pageBlockListParent tL_pageBlockListParent, TLRPC.TL_pageBlockList tL_pageBlockList) {
            tL_pageBlockListParent.pageBlockList = tL_pageBlockList;
            return tL_pageBlockList;
        }
    }

    private static class TL_pageBlockOrderedListItem extends TLRPC.PageBlock {
        private TLRPC.PageBlock blockItem;
        private int index;
        private String num;
        private DrawingText numLayout;
        private TL_pageBlockOrderedListParent parent;
        private TLRPC.RichText textItem;

        private TL_pageBlockOrderedListItem() {
            this.index = Integer.MAX_VALUE;
        }

        static /* synthetic */ TLRPC.RichText access$10402(TL_pageBlockOrderedListItem tL_pageBlockOrderedListItem, TLRPC.RichText richText) {
            tL_pageBlockOrderedListItem.textItem = richText;
            return richText;
        }

        static /* synthetic */ int access$12302(TL_pageBlockOrderedListItem tL_pageBlockOrderedListItem, int i) {
            tL_pageBlockOrderedListItem.index = i;
            return i;
        }

        static /* synthetic */ String access$12502(TL_pageBlockOrderedListItem tL_pageBlockOrderedListItem, String str) {
            tL_pageBlockOrderedListItem.num = str;
            return str;
        }

        static /* synthetic */ TLRPC.PageBlock access$5802(TL_pageBlockOrderedListItem tL_pageBlockOrderedListItem, TLRPC.PageBlock pageBlock) {
            tL_pageBlockOrderedListItem.blockItem = pageBlock;
            return pageBlock;
        }

        static /* synthetic */ TL_pageBlockOrderedListParent access$6402(TL_pageBlockOrderedListItem tL_pageBlockOrderedListItem, TL_pageBlockOrderedListParent tL_pageBlockOrderedListParent) {
            tL_pageBlockOrderedListItem.parent = tL_pageBlockOrderedListParent;
            return tL_pageBlockOrderedListParent;
        }
    }

    private static class TL_pageBlockOrderedListParent extends TLRPC.PageBlock {
        private ArrayList items;
        private int lastFontSize;
        private int lastMaxNumCalcWidth;
        private int level;
        private int maxNumWidth;
        private TLRPC.TL_pageBlockOrderedList pageBlockOrderedList;

        private TL_pageBlockOrderedListParent() {
            this.items = new ArrayList();
        }

        static /* synthetic */ TLRPC.TL_pageBlockOrderedList access$12102(TL_pageBlockOrderedListParent tL_pageBlockOrderedListParent, TLRPC.TL_pageBlockOrderedList tL_pageBlockOrderedList) {
            tL_pageBlockOrderedListParent.pageBlockOrderedList = tL_pageBlockOrderedList;
            return tL_pageBlockOrderedList;
        }

        static /* synthetic */ int access$12202(TL_pageBlockOrderedListParent tL_pageBlockOrderedListParent, int i) {
            tL_pageBlockOrderedListParent.level = i;
            return i;
        }

        static /* synthetic */ ArrayList access$12400(TL_pageBlockOrderedListParent tL_pageBlockOrderedListParent) {
            return tL_pageBlockOrderedListParent.items;
        }
    }

    private static class TL_pageBlockRelatedArticlesChild extends TLRPC.PageBlock {
        private int num;
        private TLRPC.TL_pageBlockRelatedArticles parent;

        private TL_pageBlockRelatedArticlesChild() {
        }

        static /* synthetic */ int access$8102(TL_pageBlockRelatedArticlesChild tL_pageBlockRelatedArticlesChild, int i) {
            tL_pageBlockRelatedArticlesChild.num = i;
            return i;
        }

        static /* synthetic */ TLRPC.TL_pageBlockRelatedArticles access$8202(TL_pageBlockRelatedArticlesChild tL_pageBlockRelatedArticlesChild, TLRPC.TL_pageBlockRelatedArticles tL_pageBlockRelatedArticles) {
            tL_pageBlockRelatedArticlesChild.parent = tL_pageBlockRelatedArticles;
            return tL_pageBlockRelatedArticles;
        }
    }

    private static class TL_pageBlockRelatedArticlesShadow extends TLRPC.PageBlock {
        private TLRPC.TL_pageBlockRelatedArticles parent;

        private TL_pageBlockRelatedArticlesShadow() {
        }

        static /* synthetic */ TLRPC.TL_pageBlockRelatedArticles access$11002(TL_pageBlockRelatedArticlesShadow tL_pageBlockRelatedArticlesShadow, TLRPC.TL_pageBlockRelatedArticles tL_pageBlockRelatedArticles) {
            tL_pageBlockRelatedArticlesShadow.parent = tL_pageBlockRelatedArticles;
            return tL_pageBlockRelatedArticles;
        }
    }

    private class TextSizeCell extends FrameLayout {
        private int endFontSize;
        private int lastWidth;
        private SeekBarView sizeBar;
        private int startFontSize;
        private TextPaint textPaint;

        public TextSizeCell(Context context) {
            super(context);
            this.startFontSize = 12;
            this.endFontSize = 30;
            setWillNotDraw(false);
            TextPaint textPaint = new TextPaint(1);
            this.textPaint = textPaint;
            textPaint.setTextSize(AndroidUtilities.dp(16.0f));
            SeekBarView seekBarView = new SeekBarView(context, ArticleViewer.this.getResourcesProvider());
            this.sizeBar = seekBarView;
            seekBarView.setReportChanges(true);
            this.sizeBar.setSeparatorsCount((this.endFontSize - this.startFontSize) + 1);
            this.sizeBar.setDelegate(new SeekBarView.SeekBarViewDelegate() { // from class: org.telegram.ui.ArticleViewer.TextSizeCell.1
                @Override // org.telegram.ui.Components.SeekBarView.SeekBarViewDelegate
                public CharSequence getContentDescription() {
                    return String.valueOf(Math.round(TextSizeCell.this.startFontSize + ((TextSizeCell.this.endFontSize - TextSizeCell.this.startFontSize) * TextSizeCell.this.sizeBar.getProgress())));
                }

                @Override // org.telegram.ui.Components.SeekBarView.SeekBarViewDelegate
                public int getStepsCount() {
                    return TextSizeCell.this.endFontSize - TextSizeCell.this.startFontSize;
                }

                @Override // org.telegram.ui.Components.SeekBarView.SeekBarViewDelegate
                public /* synthetic */ boolean needVisuallyDivideSteps() {
                    return SeekBarView.SeekBarViewDelegate.CC.$default$needVisuallyDivideSteps(this);
                }

                @Override // org.telegram.ui.Components.SeekBarView.SeekBarViewDelegate
                public void onSeekBarDrag(boolean z, float f) {
                    int iRound = Math.round(TextSizeCell.this.startFontSize + ((TextSizeCell.this.endFontSize - TextSizeCell.this.startFontSize) * f));
                    if (iRound != SharedConfig.ivFontSize) {
                        SharedConfig.ivFontSize = iRound;
                        SharedPreferences.Editor editorEdit = MessagesController.getGlobalMainSettings().edit();
                        editorEdit.putInt("iv_font_size", SharedConfig.ivFontSize);
                        editorEdit.commit();
                        ArticleViewer.this.pages[0].getAdapter().searchTextOffset.clear();
                        ArticleViewer.this.updatePaintSize();
                        TextSizeCell.this.invalidate();
                    }
                }

                @Override // org.telegram.ui.Components.SeekBarView.SeekBarViewDelegate
                public void onSeekBarPressed(boolean z) {
                }
            });
            addView(this.sizeBar, LayoutHelper.createFrame(-1, 38.0f, 51, 5.0f, 5.0f, 39.0f, BitmapDescriptorFactory.HUE_RED));
        }

        @Override // android.view.View
        public void invalidate() {
            super.invalidate();
            this.sizeBar.invalidate();
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            this.textPaint.setColor(ArticleViewer.this.getThemedColor(Theme.key_windowBackgroundWhiteValueText));
            canvas.drawText("" + SharedConfig.ivFontSize, getMeasuredWidth() - AndroidUtilities.dp(39.0f), AndroidUtilities.dp(28.0f), this.textPaint);
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            super.onMeasure(i, i2);
            int size = View.MeasureSpec.getSize(i);
            if (this.lastWidth != size) {
                SeekBarView seekBarView = this.sizeBar;
                int i3 = SharedConfig.ivFontSize;
                int i4 = this.startFontSize;
                seekBarView.setProgress((i3 - i4) / (this.endFontSize - i4));
                this.lastWidth = size;
            }
        }
    }

    private static final class WebPageUtils {
        public static TLRPC.Document getDocumentWithId(TLRPC.WebPage webPage, long j) {
            if (webPage != null && webPage.cached_page != null) {
                TLRPC.Document document = webPage.document;
                if (document != null && document.id == j) {
                    return document;
                }
                for (int i = 0; i < webPage.cached_page.documents.size(); i++) {
                    TLRPC.Document document2 = (TLRPC.Document) webPage.cached_page.documents.get(i);
                    if (document2.id == j) {
                        return document2;
                    }
                }
            }
            return null;
        }

        public static TLObject getMedia(TLRPC.WebPage webPage, TLRPC.PageBlock pageBlock) {
            if (pageBlock instanceof TLRPC.TL_pageBlockPhoto) {
                return getPhotoWithId(webPage, ((TLRPC.TL_pageBlockPhoto) pageBlock).photo_id);
            }
            if (pageBlock instanceof TLRPC.TL_pageBlockVideo) {
                return getDocumentWithId(webPage, ((TLRPC.TL_pageBlockVideo) pageBlock).video_id);
            }
            return null;
        }

        public static File getMediaFile(TLRPC.WebPage webPage, TLRPC.PageBlock pageBlock) {
            TLObject documentWithId;
            if (pageBlock instanceof TLRPC.TL_pageBlockPhoto) {
                TLRPC.Photo photoWithId = getPhotoWithId(webPage, ((TLRPC.TL_pageBlockPhoto) pageBlock).photo_id);
                if (photoWithId == null || (documentWithId = FileLoader.getClosestPhotoSizeWithSize(photoWithId.sizes, AndroidUtilities.getPhotoSize())) == null) {
                    return null;
                }
            } else if (!(pageBlock instanceof TLRPC.TL_pageBlockVideo) || (documentWithId = getDocumentWithId(webPage, ((TLRPC.TL_pageBlockVideo) pageBlock).video_id)) == null) {
                return null;
            }
            return FileLoader.getInstance(UserConfig.selectedAccount).getPathToAttach(documentWithId, true);
        }

        public static TLRPC.Photo getPhotoWithId(TLRPC.WebPage webPage, long j) {
            if (webPage != null && webPage.cached_page != null) {
                TLRPC.Photo photo = webPage.photo;
                if (photo != null && photo.id == j) {
                    return photo;
                }
                for (int i = 0; i < webPage.cached_page.photos.size(); i++) {
                    TLRPC.Photo photo2 = (TLRPC.Photo) webPage.cached_page.photos.get(i);
                    if (photo2.id == j) {
                        return photo2;
                    }
                }
            }
            return null;
        }

        public static boolean isVideo(TLRPC.WebPage webPage, TLRPC.PageBlock pageBlock) {
            TLRPC.Document documentWithId;
            if (!(pageBlock instanceof TLRPC.TL_pageBlockVideo) || (documentWithId = getDocumentWithId(webPage, ((TLRPC.TL_pageBlockVideo) pageBlock).video_id)) == null) {
                return false;
            }
            return MessageObject.isVideoDocument(documentWithId);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class WebpageAdapter extends RecyclerListView.SelectionAdapter {
        private TLRPC.TL_pageBlockChannel channelBlock;
        private Context context;
        private TLRPC.WebPage currentPage;
        public int fullHeight;
        private boolean isRtl;
        public int[] itemHeights;
        private final boolean padding;
        public int[] sumItemHeights;
        private ArrayList localBlocks = new ArrayList();
        private ArrayList blocks = new ArrayList();
        private ArrayList photoBlocks = new ArrayList();
        private HashMap anchors = new HashMap();
        private HashMap anchorsOffset = new HashMap();
        private HashMap anchorsParent = new HashMap();
        private HashMap audioBlocks = new HashMap();
        private ArrayList audioMessages = new ArrayList();
        private HashMap textToBlocks = new HashMap();
        private ArrayList textBlocks = new ArrayList();
        private HashMap searchTextOffset = new HashMap();
        private final Runnable calculateContentHeightRunnable = new Runnable() { // from class: org.telegram.ui.ArticleViewer$WebpageAdapter$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() throws NoSuchFieldException, InterruptedException, Resources.NotFoundException, SecurityException {
                this.f$0.lambda$new$1();
            }
        };

        public WebpageAdapter(Context context, boolean z) {
            this.context = context;
            this.padding = z;
        }

        /* JADX WARN: Multi-variable type inference failed */
        private void addAllMediaFromBlock(WebpageAdapter webpageAdapter, TLRPC.PageBlock pageBlock) {
            ArrayList<TLRPC.PhotoSize> arrayList;
            TLRPC.TL_pageBlockVideo tL_pageBlockVideo;
            TLRPC.Document document;
            if (pageBlock instanceof TLRPC.TL_pageBlockPhoto) {
                TLRPC.TL_pageBlockPhoto tL_pageBlockPhoto = (TLRPC.TL_pageBlockPhoto) pageBlock;
                TLRPC.Photo photoWithId = getPhotoWithId(tL_pageBlockPhoto.photo_id);
                if (photoWithId == null) {
                    return;
                }
                arrayList = photoWithId.sizes;
                document = photoWithId;
                tL_pageBlockVideo = tL_pageBlockPhoto;
            } else {
                if (!(pageBlock instanceof TLRPC.TL_pageBlockVideo) || !WebPageUtils.isVideo(webpageAdapter.currentPage, pageBlock)) {
                    int i = 0;
                    if (pageBlock instanceof TLRPC.TL_pageBlockSlideshow) {
                        TLRPC.TL_pageBlockSlideshow tL_pageBlockSlideshow = (TLRPC.TL_pageBlockSlideshow) pageBlock;
                        int size = tL_pageBlockSlideshow.items.size();
                        while (i < size) {
                            TLRPC.PageBlock pageBlock2 = (TLRPC.PageBlock) tL_pageBlockSlideshow.items.get(i);
                            pageBlock2.groupId = ArticleViewer.this.lastBlockNum;
                            addAllMediaFromBlock(webpageAdapter, pageBlock2);
                            i++;
                        }
                    } else if (!(pageBlock instanceof TLRPC.TL_pageBlockCollage)) {
                        if (pageBlock instanceof TLRPC.TL_pageBlockCover) {
                            addAllMediaFromBlock(webpageAdapter, ((TLRPC.TL_pageBlockCover) pageBlock).cover);
                            return;
                        }
                        return;
                    } else {
                        TLRPC.TL_pageBlockCollage tL_pageBlockCollage = (TLRPC.TL_pageBlockCollage) pageBlock;
                        int size2 = tL_pageBlockCollage.items.size();
                        while (i < size2) {
                            TLRPC.PageBlock pageBlock3 = (TLRPC.PageBlock) tL_pageBlockCollage.items.get(i);
                            pageBlock3.groupId = ArticleViewer.this.lastBlockNum;
                            addAllMediaFromBlock(webpageAdapter, pageBlock3);
                            i++;
                        }
                    }
                    ArticleViewer.access$12608(ArticleViewer.this);
                    return;
                }
                TLRPC.TL_pageBlockVideo tL_pageBlockVideo2 = (TLRPC.TL_pageBlockVideo) pageBlock;
                TLRPC.Document documentWithId = getDocumentWithId(tL_pageBlockVideo2.video_id);
                if (documentWithId == null) {
                    return;
                }
                arrayList = documentWithId.thumbs;
                document = documentWithId;
                tL_pageBlockVideo = tL_pageBlockVideo2;
            }
            tL_pageBlockVideo.thumb = FileLoader.getClosestPhotoSizeWithSize(arrayList, 56, true);
            tL_pageBlockVideo.thumbObject = document;
            this.photoBlocks.add(pageBlock);
        }

        /*  JADX ERROR: Type inference failed
            jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
            	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:77)
            */
        /* JADX INFO: Access modifiers changed from: private */
        public void addBlock(org.telegram.ui.ArticleViewer.WebpageAdapter r26, org.telegram.tgnet.TLRPC.PageBlock r27, int r28, int r29, int r30) {
            /*
                Method dump skipped, instructions count: 1398
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.ui.ArticleViewer.WebpageAdapter.addBlock(org.telegram.ui.ArticleViewer$WebpageAdapter, org.telegram.tgnet.TLRPC$PageBlock, int, int, int):void");
        }

        private void addTextBlock(Object obj, TLRPC.PageBlock pageBlock) {
            if ((obj instanceof TLRPC.TL_textEmpty) || this.textToBlocks.containsKey(obj)) {
                return;
            }
            this.textToBlocks.put(obj, pageBlock);
            this.textBlocks.add(obj);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void bindBlockToHolder(int i, RecyclerView.ViewHolder viewHolder, TLRPC.PageBlock pageBlock, int i2, int i3, boolean z) throws NoSuchFieldException, InterruptedException, Resources.NotFoundException, SecurityException {
            TLRPC.PageBlock pageBlock2 = pageBlock instanceof TLRPC.TL_pageBlockCover ? ((TLRPC.TL_pageBlockCover) pageBlock).cover : pageBlock instanceof TL_pageBlockDetailsChild ? ((TL_pageBlockDetailsChild) pageBlock).block : pageBlock;
            if (i == 100) {
                ((TextView) viewHolder.itemView).setText("unsupported block " + pageBlock2);
            }
            switch (i) {
                case 0:
                    ((BlockParagraphCell) viewHolder.itemView).setBlock((TLRPC.TL_pageBlockParagraph) pageBlock2);
                    break;
                case 1:
                    ((BlockHeaderCell) viewHolder.itemView).setBlock((TLRPC.TL_pageBlockHeader) pageBlock2);
                    break;
                case 2:
                    break;
                case 3:
                    ((BlockEmbedCell) viewHolder.itemView).setBlock((TLRPC.TL_pageBlockEmbed) pageBlock2);
                    break;
                case 4:
                    ((BlockSubtitleCell) viewHolder.itemView).setBlock((TLRPC.TL_pageBlockSubtitle) pageBlock2);
                    break;
                case 5:
                    BlockVideoCell blockVideoCell = (BlockVideoCell) viewHolder.itemView;
                    TLRPC.TL_pageBlockVideo tL_pageBlockVideo = (TLRPC.TL_pageBlockVideo) pageBlock2;
                    blockVideoCell.setBlock(tL_pageBlockVideo, (BlockVideoCellState) ArticleViewer.this.videoStates.get(tL_pageBlockVideo.video_id), z, i2 == 0, i2 == i3 - 1);
                    blockVideoCell.setParentBlock(this.channelBlock, pageBlock);
                    break;
                case 6:
                    ((BlockPullquoteCell) viewHolder.itemView).setBlock((TLRPC.TL_pageBlockPullquote) pageBlock2);
                    break;
                case 7:
                    ((BlockBlockquoteCell) viewHolder.itemView).setBlock((TLRPC.TL_pageBlockBlockquote) pageBlock2);
                    break;
                case 8:
                    ((BlockSlideshowCell) viewHolder.itemView).setBlock((TLRPC.TL_pageBlockSlideshow) pageBlock2);
                    break;
                case 9:
                    BlockPhotoCell blockPhotoCell = (BlockPhotoCell) viewHolder.itemView;
                    blockPhotoCell.setBlock((TLRPC.TL_pageBlockPhoto) pageBlock2, z, i2 == 0, i2 == i3 - 1);
                    blockPhotoCell.setParentBlock(pageBlock);
                    break;
                case 10:
                    ((BlockAuthorDateCell) viewHolder.itemView).setBlock((TLRPC.TL_pageBlockAuthorDate) pageBlock2);
                    break;
                case 11:
                    ((BlockTitleCell) viewHolder.itemView).setBlock((TLRPC.TL_pageBlockTitle) pageBlock2);
                    break;
                case 12:
                    ((BlockListItemCell) viewHolder.itemView).setBlock((TL_pageBlockListItem) pageBlock2);
                    break;
                case 13:
                    ((BlockFooterCell) viewHolder.itemView).setBlock((TLRPC.TL_pageBlockFooter) pageBlock2);
                    break;
                case 14:
                    ((BlockPreformattedCell) viewHolder.itemView).setBlock((TLRPC.TL_pageBlockPreformatted) pageBlock2);
                    break;
                case 15:
                    ((BlockSubheaderCell) viewHolder.itemView).setBlock((TLRPC.TL_pageBlockSubheader) pageBlock2);
                    break;
                case 16:
                    ((BlockEmbedPostCell) viewHolder.itemView).setBlock((TLRPC.TL_pageBlockEmbedPost) pageBlock2);
                    break;
                case 17:
                    ((BlockCollageCell) viewHolder.itemView).setBlock((TLRPC.TL_pageBlockCollage) pageBlock2);
                    break;
                case 18:
                    ((BlockChannelCell) viewHolder.itemView).setBlock((TLRPC.TL_pageBlockChannel) pageBlock2);
                    break;
                case 19:
                    ((BlockAudioCell) viewHolder.itemView).setBlock((TLRPC.TL_pageBlockAudio) pageBlock2, i2 == 0, i2 == i3 - 1);
                    break;
                case 20:
                    ((BlockKickerCell) viewHolder.itemView).setBlock((TLRPC.TL_pageBlockKicker) pageBlock2);
                    break;
                case 21:
                    ((BlockOrderedListItemCell) viewHolder.itemView).setBlock((TL_pageBlockOrderedListItem) pageBlock2);
                    break;
                case 22:
                    ((BlockMapCell) viewHolder.itemView).setBlock((TLRPC.TL_pageBlockMap) pageBlock2, i2 == 0, i2 == i3 - 1);
                    break;
                case 23:
                    ((BlockRelatedArticlesCell) viewHolder.itemView).setBlock((TL_pageBlockRelatedArticlesChild) pageBlock2);
                    break;
                case 24:
                    ((BlockDetailsCell) viewHolder.itemView).setBlock((TLRPC.TL_pageBlockDetails) pageBlock2);
                    break;
                case 25:
                    ((BlockTableCell) viewHolder.itemView).setBlock((TLRPC.TL_pageBlockTable) pageBlock2);
                    break;
                case 26:
                    ((BlockRelatedArticlesHeaderCell) viewHolder.itemView).setBlock((TLRPC.TL_pageBlockRelatedArticles) pageBlock2);
                    break;
                case 27:
                    break;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void cleanup() {
            this.currentPage = null;
            this.blocks.clear();
            this.photoBlocks.clear();
            this.audioBlocks.clear();
            this.audioMessages.clear();
            this.anchors.clear();
            this.anchorsParent.clear();
            this.anchorsOffset.clear();
            this.textBlocks.clear();
            this.textToBlocks.clear();
            this.channelBlock = null;
            notifyDataSetChanged();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public TLRPC.Document getDocumentWithId(long j) {
            return WebPageUtils.getDocumentWithId(this.currentPage, j);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public TLRPC.Photo getPhotoWithId(long j) {
            return WebPageUtils.getPhotoWithId(this.currentPage, j);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int getTypeForBlock(TLRPC.PageBlock pageBlock) {
            TLRPC.PageBlock pageBlock2;
            if (pageBlock instanceof TLRPC.TL_pageBlockParagraph) {
                return 0;
            }
            if (pageBlock instanceof TLRPC.TL_pageBlockHeader) {
                return 1;
            }
            if (pageBlock instanceof TLRPC.TL_pageBlockDivider) {
                return 2;
            }
            if (pageBlock instanceof TLRPC.TL_pageBlockEmbed) {
                return 3;
            }
            if (pageBlock instanceof TLRPC.TL_pageBlockSubtitle) {
                return 4;
            }
            if (pageBlock instanceof TLRPC.TL_pageBlockVideo) {
                return 5;
            }
            if (pageBlock instanceof TLRPC.TL_pageBlockPullquote) {
                return 6;
            }
            if (pageBlock instanceof TLRPC.TL_pageBlockBlockquote) {
                return 7;
            }
            if (pageBlock instanceof TLRPC.TL_pageBlockSlideshow) {
                return 8;
            }
            if (pageBlock instanceof TLRPC.TL_pageBlockPhoto) {
                return 9;
            }
            if (pageBlock instanceof TLRPC.TL_pageBlockAuthorDate) {
                return 10;
            }
            if (pageBlock instanceof TLRPC.TL_pageBlockTitle) {
                return 11;
            }
            if (pageBlock instanceof TL_pageBlockListItem) {
                return 12;
            }
            if (pageBlock instanceof TLRPC.TL_pageBlockFooter) {
                return 13;
            }
            if (pageBlock instanceof TLRPC.TL_pageBlockPreformatted) {
                return 14;
            }
            if (pageBlock instanceof TLRPC.TL_pageBlockSubheader) {
                return 15;
            }
            if (pageBlock instanceof TLRPC.TL_pageBlockEmbedPost) {
                return 16;
            }
            if (pageBlock instanceof TLRPC.TL_pageBlockCollage) {
                return 17;
            }
            if (pageBlock instanceof TLRPC.TL_pageBlockChannel) {
                return 18;
            }
            if (pageBlock instanceof TLRPC.TL_pageBlockAudio) {
                return 19;
            }
            if (pageBlock instanceof TLRPC.TL_pageBlockKicker) {
                return 20;
            }
            if (pageBlock instanceof TL_pageBlockOrderedListItem) {
                return 21;
            }
            if (pageBlock instanceof TLRPC.TL_pageBlockMap) {
                return 22;
            }
            if (pageBlock instanceof TL_pageBlockRelatedArticlesChild) {
                return 23;
            }
            if (pageBlock instanceof TLRPC.TL_pageBlockDetails) {
                return 24;
            }
            if (pageBlock instanceof TLRPC.TL_pageBlockTable) {
                return 25;
            }
            if (pageBlock instanceof TLRPC.TL_pageBlockRelatedArticles) {
                return 26;
            }
            if (pageBlock instanceof TL_pageBlockRelatedArticlesShadow) {
                return 28;
            }
            if (pageBlock instanceof TL_pageBlockDetailsChild) {
                pageBlock2 = ((TL_pageBlockDetailsChild) pageBlock).block;
            } else {
                if (!(pageBlock instanceof TLRPC.TL_pageBlockCover)) {
                    return 100;
                }
                pageBlock2 = ((TLRPC.TL_pageBlockCover) pageBlock).cover;
            }
            return getTypeForBlock(pageBlock2);
        }

        private boolean isBlockOpened(TL_pageBlockDetailsChild tL_pageBlockDetailsChild) {
            TLRPC.PageBlock lastNonListPageBlock = ArticleViewer.this.getLastNonListPageBlock(tL_pageBlockDetailsChild.parent);
            if (lastNonListPageBlock instanceof TLRPC.TL_pageBlockDetails) {
                return ((TLRPC.TL_pageBlockDetails) lastNonListPageBlock).open;
            }
            if (!(lastNonListPageBlock instanceof TL_pageBlockDetailsChild)) {
                return false;
            }
            TL_pageBlockDetailsChild tL_pageBlockDetailsChild2 = (TL_pageBlockDetailsChild) lastNonListPageBlock;
            TLRPC.PageBlock lastNonListPageBlock2 = ArticleViewer.this.getLastNonListPageBlock(tL_pageBlockDetailsChild2.block);
            if (!(lastNonListPageBlock2 instanceof TLRPC.TL_pageBlockDetails) || ((TLRPC.TL_pageBlockDetails) lastNonListPageBlock2).open) {
                return isBlockOpened(tL_pageBlockDetailsChild2);
            }
            return false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0(int i, int[] iArr, int[] iArr2) {
            this.fullHeight = i;
            this.itemHeights = iArr;
            this.sumItemHeights = iArr2;
            ArticleViewer.this.updatePages();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Removed duplicated region for block: B:42:0x00c2  */
        /* JADX WARN: Removed duplicated region for block: B:43:0x00c4  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public /* synthetic */ void lambda$new$1() throws NoSuchFieldException, InterruptedException, Resources.NotFoundException, SecurityException {
            RecyclerListView recyclerListView;
            int i;
            int i2;
            ArrayList arrayList = new ArrayList(this.localBlocks);
            int size = arrayList.size();
            Sheet sheet = ArticleViewer.this.sheet;
            int i3 = 0;
            int i4 = size + ((sheet == null || !sheet.halfSize()) ? 0 : 1);
            final int[] iArr = new int[i4];
            final int[] iArr2 = new int[i4];
            PageLayout pageLayout = ArticleViewer.this.pages[0];
            if (pageLayout == null || (recyclerListView = pageLayout.listView) == null) {
                return;
            }
            int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(AndroidUtilities.displaySize.x, Integer.MIN_VALUE);
            int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(AndroidUtilities.displaySize.y, Integer.MIN_VALUE);
            int i5 = 0;
            int i6 = 0;
            while (i6 < i4) {
                boolean z = this.padding;
                if (z && i6 == 0) {
                    iArr[i3] = i3;
                } else {
                    int i7 = z ? i6 - 1 : i6;
                    TLRPC.PageBlock pageBlock = (i7 < 0 || i7 >= arrayList.size()) ? null : (TLRPC.PageBlock) arrayList.get(i7);
                    if (pageBlock == null || pageBlock.cachedHeight == 0 || pageBlock.cachedWidth != View.MeasureSpec.getSize(iMakeMeasureSpec)) {
                        RecyclerView.ViewHolder viewHolderCreateViewHolder = createViewHolder(recyclerListView, getTypeForBlock(pageBlock));
                        i = i5;
                        i2 = i6;
                        bindBlockToHolder(viewHolderCreateViewHolder.getItemViewType(), viewHolderCreateViewHolder, pageBlock, i7, arrayList.size(), true);
                        viewHolderCreateViewHolder.itemView.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
                        int measuredHeight = viewHolderCreateViewHolder.itemView.getMeasuredHeight();
                        iArr[i2] = measuredHeight;
                        if (pageBlock != null) {
                            pageBlock.cachedHeight = measuredHeight;
                            pageBlock.cachedWidth = View.MeasureSpec.getSize(iMakeMeasureSpec);
                        }
                        int i8 = i2 - 1;
                        iArr2[i2] = (i8 >= 0 ? 0 : iArr2[i8]) + iArr[i2];
                        i5 = i + iArr[i2];
                        i6 = i2 + 1;
                        i3 = 0;
                    } else {
                        iArr[i6] = pageBlock.cachedHeight;
                    }
                }
                i = i5;
                i2 = i6;
                int i82 = i2 - 1;
                iArr2[i2] = (i82 >= 0 ? 0 : iArr2[i82]) + iArr[i2];
                i5 = i + iArr[i2];
                i6 = i2 + 1;
                i3 = 0;
            }
            final int i9 = i5;
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ArticleViewer$WebpageAdapter$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$new$0(i9, iArr, iArr2);
                }
            });
        }

        private void setRichTextParents(TLRPC.PageBlock pageBlock) {
            Object obj;
            TLRPC.TL_pageCaption tL_pageCaption;
            TLRPC.PageBlock pageBlock2;
            TLRPC.PageBlock pageBlock3;
            TLRPC.PageBlock pageBlock4;
            if (!(pageBlock instanceof TLRPC.TL_pageBlockEmbedPost)) {
                if (pageBlock instanceof TLRPC.TL_pageBlockParagraph) {
                    TLRPC.TL_pageBlockParagraph tL_pageBlockParagraph = (TLRPC.TL_pageBlockParagraph) pageBlock;
                    setRichTextParents(null, tL_pageBlockParagraph.text);
                    obj = tL_pageBlockParagraph.text;
                    pageBlock3 = tL_pageBlockParagraph;
                } else if (pageBlock instanceof TLRPC.TL_pageBlockKicker) {
                    TLRPC.TL_pageBlockKicker tL_pageBlockKicker = (TLRPC.TL_pageBlockKicker) pageBlock;
                    setRichTextParents(null, tL_pageBlockKicker.text);
                    obj = tL_pageBlockKicker.text;
                    pageBlock3 = tL_pageBlockKicker;
                } else if (pageBlock instanceof TLRPC.TL_pageBlockFooter) {
                    TLRPC.TL_pageBlockFooter tL_pageBlockFooter = (TLRPC.TL_pageBlockFooter) pageBlock;
                    setRichTextParents(null, tL_pageBlockFooter.text);
                    obj = tL_pageBlockFooter.text;
                    pageBlock3 = tL_pageBlockFooter;
                } else if (pageBlock instanceof TLRPC.TL_pageBlockHeader) {
                    TLRPC.TL_pageBlockHeader tL_pageBlockHeader = (TLRPC.TL_pageBlockHeader) pageBlock;
                    setRichTextParents(null, tL_pageBlockHeader.text);
                    obj = tL_pageBlockHeader.text;
                    pageBlock3 = tL_pageBlockHeader;
                } else if (pageBlock instanceof TLRPC.TL_pageBlockPreformatted) {
                    TLRPC.TL_pageBlockPreformatted tL_pageBlockPreformatted = (TLRPC.TL_pageBlockPreformatted) pageBlock;
                    setRichTextParents(null, tL_pageBlockPreformatted.text);
                    obj = tL_pageBlockPreformatted.text;
                    pageBlock3 = tL_pageBlockPreformatted;
                } else if (pageBlock instanceof TLRPC.TL_pageBlockSubheader) {
                    TLRPC.TL_pageBlockSubheader tL_pageBlockSubheader = (TLRPC.TL_pageBlockSubheader) pageBlock;
                    setRichTextParents(null, tL_pageBlockSubheader.text);
                    obj = tL_pageBlockSubheader.text;
                    pageBlock3 = tL_pageBlockSubheader;
                } else {
                    int i = 0;
                    if (pageBlock instanceof TLRPC.TL_pageBlockSlideshow) {
                        TLRPC.TL_pageBlockSlideshow tL_pageBlockSlideshow = (TLRPC.TL_pageBlockSlideshow) pageBlock;
                        setRichTextParents(null, tL_pageBlockSlideshow.caption.text);
                        setRichTextParents(null, tL_pageBlockSlideshow.caption.credit);
                        addTextBlock(tL_pageBlockSlideshow.caption.text, tL_pageBlockSlideshow);
                        addTextBlock(tL_pageBlockSlideshow.caption.credit, tL_pageBlockSlideshow);
                        int size = tL_pageBlockSlideshow.items.size();
                        while (i < size) {
                            setRichTextParents((TLRPC.PageBlock) tL_pageBlockSlideshow.items.get(i));
                            i++;
                        }
                        return;
                    }
                    if (pageBlock instanceof TLRPC.TL_pageBlockPhoto) {
                        TLRPC.TL_pageBlockPhoto tL_pageBlockPhoto = (TLRPC.TL_pageBlockPhoto) pageBlock;
                        setRichTextParents(null, tL_pageBlockPhoto.caption.text);
                        setRichTextParents(null, tL_pageBlockPhoto.caption.credit);
                        addTextBlock(tL_pageBlockPhoto.caption.text, tL_pageBlockPhoto);
                        tL_pageCaption = tL_pageBlockPhoto.caption;
                        pageBlock4 = tL_pageBlockPhoto;
                    } else if (pageBlock instanceof TL_pageBlockListItem) {
                        TL_pageBlockListItem tL_pageBlockListItem = (TL_pageBlockListItem) pageBlock;
                        if (tL_pageBlockListItem.textItem == null) {
                            if (tL_pageBlockListItem.blockItem != null) {
                                pageBlock2 = tL_pageBlockListItem.blockItem;
                                setRichTextParents(pageBlock2);
                                return;
                            }
                            return;
                        }
                        setRichTextParents(null, tL_pageBlockListItem.textItem);
                        obj = tL_pageBlockListItem.textItem;
                        pageBlock3 = tL_pageBlockListItem;
                    } else if (pageBlock instanceof TL_pageBlockOrderedListItem) {
                        TL_pageBlockOrderedListItem tL_pageBlockOrderedListItem = (TL_pageBlockOrderedListItem) pageBlock;
                        if (tL_pageBlockOrderedListItem.textItem == null) {
                            if (tL_pageBlockOrderedListItem.blockItem != null) {
                                pageBlock2 = tL_pageBlockOrderedListItem.blockItem;
                                setRichTextParents(pageBlock2);
                                return;
                            }
                            return;
                        }
                        setRichTextParents(null, tL_pageBlockOrderedListItem.textItem);
                        obj = tL_pageBlockOrderedListItem.textItem;
                        pageBlock3 = tL_pageBlockOrderedListItem;
                    } else {
                        if (pageBlock instanceof TLRPC.TL_pageBlockCollage) {
                            TLRPC.TL_pageBlockCollage tL_pageBlockCollage = (TLRPC.TL_pageBlockCollage) pageBlock;
                            setRichTextParents(null, tL_pageBlockCollage.caption.text);
                            setRichTextParents(null, tL_pageBlockCollage.caption.credit);
                            addTextBlock(tL_pageBlockCollage.caption.text, tL_pageBlockCollage);
                            addTextBlock(tL_pageBlockCollage.caption.credit, tL_pageBlockCollage);
                            int size2 = tL_pageBlockCollage.items.size();
                            while (i < size2) {
                                setRichTextParents((TLRPC.PageBlock) tL_pageBlockCollage.items.get(i));
                                i++;
                            }
                            return;
                        }
                        if (pageBlock instanceof TLRPC.TL_pageBlockEmbed) {
                            TLRPC.TL_pageBlockEmbed tL_pageBlockEmbed = (TLRPC.TL_pageBlockEmbed) pageBlock;
                            setRichTextParents(null, tL_pageBlockEmbed.caption.text);
                            setRichTextParents(null, tL_pageBlockEmbed.caption.credit);
                            addTextBlock(tL_pageBlockEmbed.caption.text, tL_pageBlockEmbed);
                            tL_pageCaption = tL_pageBlockEmbed.caption;
                            pageBlock4 = tL_pageBlockEmbed;
                        } else if (pageBlock instanceof TLRPC.TL_pageBlockSubtitle) {
                            TLRPC.TL_pageBlockSubtitle tL_pageBlockSubtitle = (TLRPC.TL_pageBlockSubtitle) pageBlock;
                            setRichTextParents(null, tL_pageBlockSubtitle.text);
                            obj = tL_pageBlockSubtitle.text;
                            pageBlock3 = tL_pageBlockSubtitle;
                        } else if (pageBlock instanceof TLRPC.TL_pageBlockBlockquote) {
                            TLRPC.TL_pageBlockBlockquote tL_pageBlockBlockquote = (TLRPC.TL_pageBlockBlockquote) pageBlock;
                            setRichTextParents(null, tL_pageBlockBlockquote.text);
                            setRichTextParents(null, tL_pageBlockBlockquote.caption);
                            addTextBlock(tL_pageBlockBlockquote.text, tL_pageBlockBlockquote);
                            obj = tL_pageBlockBlockquote.caption;
                            pageBlock3 = tL_pageBlockBlockquote;
                        } else {
                            if (pageBlock instanceof TLRPC.TL_pageBlockDetails) {
                                TLRPC.TL_pageBlockDetails tL_pageBlockDetails = (TLRPC.TL_pageBlockDetails) pageBlock;
                                setRichTextParents(null, tL_pageBlockDetails.title);
                                addTextBlock(tL_pageBlockDetails.title, tL_pageBlockDetails);
                                int size3 = tL_pageBlockDetails.blocks.size();
                                while (i < size3) {
                                    setRichTextParents((TLRPC.PageBlock) tL_pageBlockDetails.blocks.get(i));
                                    i++;
                                }
                                return;
                            }
                            if (pageBlock instanceof TLRPC.TL_pageBlockVideo) {
                                TLRPC.TL_pageBlockVideo tL_pageBlockVideo = (TLRPC.TL_pageBlockVideo) pageBlock;
                                setRichTextParents(null, tL_pageBlockVideo.caption.text);
                                setRichTextParents(null, tL_pageBlockVideo.caption.credit);
                                addTextBlock(tL_pageBlockVideo.caption.text, tL_pageBlockVideo);
                                tL_pageCaption = tL_pageBlockVideo.caption;
                                pageBlock4 = tL_pageBlockVideo;
                            } else if (pageBlock instanceof TLRPC.TL_pageBlockPullquote) {
                                TLRPC.TL_pageBlockPullquote tL_pageBlockPullquote = (TLRPC.TL_pageBlockPullquote) pageBlock;
                                setRichTextParents(null, tL_pageBlockPullquote.text);
                                setRichTextParents(null, tL_pageBlockPullquote.caption);
                                addTextBlock(tL_pageBlockPullquote.text, tL_pageBlockPullquote);
                                obj = tL_pageBlockPullquote.caption;
                                pageBlock3 = tL_pageBlockPullquote;
                            } else if (pageBlock instanceof TLRPC.TL_pageBlockAudio) {
                                TLRPC.TL_pageBlockAudio tL_pageBlockAudio = (TLRPC.TL_pageBlockAudio) pageBlock;
                                setRichTextParents(null, tL_pageBlockAudio.caption.text);
                                setRichTextParents(null, tL_pageBlockAudio.caption.credit);
                                addTextBlock(tL_pageBlockAudio.caption.text, tL_pageBlockAudio);
                                tL_pageCaption = tL_pageBlockAudio.caption;
                                pageBlock4 = tL_pageBlockAudio;
                            } else {
                                if (pageBlock instanceof TLRPC.TL_pageBlockTable) {
                                    TLRPC.TL_pageBlockTable tL_pageBlockTable = (TLRPC.TL_pageBlockTable) pageBlock;
                                    setRichTextParents(null, tL_pageBlockTable.title);
                                    addTextBlock(tL_pageBlockTable.title, tL_pageBlockTable);
                                    int size4 = tL_pageBlockTable.rows.size();
                                    for (int i2 = 0; i2 < size4; i2++) {
                                        TLRPC.TL_pageTableRow tL_pageTableRow = (TLRPC.TL_pageTableRow) tL_pageBlockTable.rows.get(i2);
                                        int size5 = tL_pageTableRow.cells.size();
                                        for (int i3 = 0; i3 < size5; i3++) {
                                            TLRPC.TL_pageTableCell tL_pageTableCell = (TLRPC.TL_pageTableCell) tL_pageTableRow.cells.get(i3);
                                            setRichTextParents(null, tL_pageTableCell.text);
                                            addTextBlock(tL_pageTableCell.text, tL_pageBlockTable);
                                        }
                                    }
                                    return;
                                }
                                if (pageBlock instanceof TLRPC.TL_pageBlockTitle) {
                                    TLRPC.TL_pageBlockTitle tL_pageBlockTitle = (TLRPC.TL_pageBlockTitle) pageBlock;
                                    setRichTextParents(null, tL_pageBlockTitle.text);
                                    obj = tL_pageBlockTitle.text;
                                    pageBlock3 = tL_pageBlockTitle;
                                } else {
                                    if (pageBlock instanceof TLRPC.TL_pageBlockCover) {
                                        setRichTextParents(((TLRPC.TL_pageBlockCover) pageBlock).cover);
                                        return;
                                    }
                                    if (pageBlock instanceof TLRPC.TL_pageBlockAuthorDate) {
                                        TLRPC.TL_pageBlockAuthorDate tL_pageBlockAuthorDate = (TLRPC.TL_pageBlockAuthorDate) pageBlock;
                                        setRichTextParents(null, tL_pageBlockAuthorDate.author);
                                        obj = tL_pageBlockAuthorDate.author;
                                        pageBlock3 = tL_pageBlockAuthorDate;
                                    } else if (pageBlock instanceof TLRPC.TL_pageBlockMap) {
                                        TLRPC.TL_pageBlockMap tL_pageBlockMap = (TLRPC.TL_pageBlockMap) pageBlock;
                                        setRichTextParents(null, tL_pageBlockMap.caption.text);
                                        setRichTextParents(null, tL_pageBlockMap.caption.credit);
                                        addTextBlock(tL_pageBlockMap.caption.text, tL_pageBlockMap);
                                        tL_pageCaption = tL_pageBlockMap.caption;
                                        pageBlock4 = tL_pageBlockMap;
                                    } else {
                                        if (!(pageBlock instanceof TLRPC.TL_pageBlockRelatedArticles)) {
                                            return;
                                        }
                                        TLRPC.TL_pageBlockRelatedArticles tL_pageBlockRelatedArticles = (TLRPC.TL_pageBlockRelatedArticles) pageBlock;
                                        setRichTextParents(null, tL_pageBlockRelatedArticles.title);
                                        obj = tL_pageBlockRelatedArticles.title;
                                        pageBlock3 = tL_pageBlockRelatedArticles;
                                    }
                                }
                            }
                        }
                    }
                }
                addTextBlock(obj, pageBlock3);
            }
            TLRPC.TL_pageBlockEmbedPost tL_pageBlockEmbedPost = (TLRPC.TL_pageBlockEmbedPost) pageBlock;
            setRichTextParents(null, tL_pageBlockEmbedPost.caption.text);
            setRichTextParents(null, tL_pageBlockEmbedPost.caption.credit);
            addTextBlock(tL_pageBlockEmbedPost.caption.text, tL_pageBlockEmbedPost);
            tL_pageCaption = tL_pageBlockEmbedPost.caption;
            pageBlock4 = tL_pageBlockEmbedPost;
            obj = tL_pageCaption.credit;
            pageBlock3 = pageBlock4;
            addTextBlock(obj, pageBlock3);
        }

        private void setRichTextParents(TLRPC.RichText richText, TLRPC.RichText richText2) {
            TLRPC.RichText richText3;
            if (richText2 == null) {
                return;
            }
            richText2.parentRichText = richText;
            if (richText2 instanceof TLRPC.TL_textFixed) {
                richText3 = (TLRPC.TL_textFixed) richText2;
            } else if (richText2 instanceof TLRPC.TL_textItalic) {
                richText3 = (TLRPC.TL_textItalic) richText2;
            } else if (richText2 instanceof TLRPC.TL_textBold) {
                richText3 = (TLRPC.TL_textBold) richText2;
            } else if (richText2 instanceof TLRPC.TL_textUnderline) {
                richText3 = (TLRPC.TL_textUnderline) richText2;
            } else if (richText2 instanceof TLRPC.TL_textStrike) {
                richText3 = (TLRPC.TL_textStrike) richText2;
            } else if (richText2 instanceof TLRPC.TL_textEmail) {
                richText3 = (TLRPC.TL_textEmail) richText2;
            } else if (richText2 instanceof TLRPC.TL_textPhone) {
                richText3 = (TLRPC.TL_textPhone) richText2;
            } else if (richText2 instanceof TLRPC.TL_textUrl) {
                richText3 = (TLRPC.TL_textUrl) richText2;
            } else {
                if (richText2 instanceof TLRPC.TL_textConcat) {
                    int size = richText2.texts.size();
                    for (int i = 0; i < size; i++) {
                        setRichTextParents(richText2, (TLRPC.RichText) richText2.texts.get(i));
                    }
                    return;
                }
                if (richText2 instanceof TLRPC.TL_textSubscript) {
                    richText3 = (TLRPC.TL_textSubscript) richText2;
                } else if (richText2 instanceof TLRPC.TL_textSuperscript) {
                    richText3 = (TLRPC.TL_textSuperscript) richText2;
                } else {
                    if (!(richText2 instanceof TLRPC.TL_textMarked)) {
                        if (richText2 instanceof TLRPC.TL_textAnchor) {
                            TLRPC.TL_textAnchor tL_textAnchor = (TLRPC.TL_textAnchor) richText2;
                            setRichTextParents(richText2, tL_textAnchor.text);
                            String lowerCase = tL_textAnchor.name.toLowerCase();
                            this.anchors.put(lowerCase, Integer.valueOf(this.blocks.size()));
                            TLRPC.RichText richText4 = tL_textAnchor.text;
                            if (!(richText4 instanceof TLRPC.TL_textPlain) ? !(richText4 instanceof TLRPC.TL_textEmpty) : !TextUtils.isEmpty(((TLRPC.TL_textPlain) richText4).text)) {
                                this.anchorsParent.put(lowerCase, tL_textAnchor);
                            }
                            this.anchorsOffset.put(lowerCase, -1);
                            return;
                        }
                        return;
                    }
                    richText3 = (TLRPC.TL_textMarked) richText2;
                }
            }
            setRichTextParents(richText2, richText3.text);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void updateRows() {
            this.localBlocks.clear();
            int size = this.blocks.size();
            for (int i = 0; i < size; i++) {
                TLRPC.PageBlock pageBlock = (TLRPC.PageBlock) this.blocks.get(i);
                TLRPC.PageBlock lastNonListPageBlock = ArticleViewer.this.getLastNonListPageBlock(pageBlock);
                if (!(lastNonListPageBlock instanceof TL_pageBlockDetailsChild) || isBlockOpened((TL_pageBlockDetailsChild) lastNonListPageBlock)) {
                    this.localBlocks.add(pageBlock);
                }
            }
            if (this.localBlocks.size() < 100) {
                calculateContentHeight();
            } else {
                this.itemHeights = null;
            }
        }

        public void calculateContentHeight() {
            Utilities.globalQueue.cancelRunnable(this.calculateContentHeightRunnable);
            Utilities.globalQueue.postRunnable(this.calculateContentHeightRunnable, 100L);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            TLRPC.WebPage webPage = this.currentPage;
            int size = (webPage == null || webPage.cached_page == null) ? 0 : this.localBlocks.size() + 1;
            return this.padding ? size + 1 : size;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            TLRPC.Page page;
            if (this.padding) {
                if (i == 0) {
                    return 2147483646;
                }
                i--;
            }
            if (i != this.localBlocks.size()) {
                return getTypeForBlock((TLRPC.PageBlock) this.localBlocks.get(i));
            }
            TLRPC.WebPage webPage = this.currentPage;
            return (webPage == null || (page = webPage.cached_page) == null || !page.web) ? 90 : 91;
        }

        @Override // org.telegram.ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            int itemViewType = viewHolder.getItemViewType();
            return itemViewType == 23 || itemViewType == 24;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void notifyDataSetChanged() {
            updateRows();
            super.notifyDataSetChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void notifyItemChanged(int i) {
            updateRows();
            super.notifyItemChanged(i);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void notifyItemMoved(int i, int i2) {
            updateRows();
            super.notifyItemMoved(i, i2);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void notifyItemRangeChanged(int i, int i2) {
            updateRows();
            super.notifyItemRangeChanged(i, i2);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void notifyItemRangeChanged(int i, int i2, Object obj) {
            updateRows();
            super.notifyItemRangeChanged(i, i2, obj);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void notifyItemRangeInserted(int i, int i2) {
            updateRows();
            super.notifyItemRangeInserted(i, i2);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void notifyItemRangeRemoved(int i, int i2) {
            updateRows();
            super.notifyItemRangeRemoved(i, i2);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) throws NoSuchFieldException, InterruptedException, Resources.NotFoundException, SecurityException {
            if (this.padding) {
                i--;
            }
            int i2 = i;
            if (i2 < 0 || i2 >= this.localBlocks.size()) {
                return;
            }
            bindBlockToHolder(viewHolder.getItemViewType(), viewHolder, (TLRPC.PageBlock) this.localBlocks.get(i2), i2, this.localBlocks.size(), false);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            View reportCell;
            if (i == 90) {
                reportCell = ArticleViewer.this.new ReportCell(this.context, false);
            } else if (i == 91) {
                reportCell = ArticleViewer.this.new ReportCell(this.context, true);
            } else if (i != 2147483646) {
                switch (i) {
                    case 0:
                        reportCell = ArticleViewer.this.new BlockParagraphCell(this.context, this);
                        break;
                    case 1:
                        reportCell = ArticleViewer.this.new BlockHeaderCell(this.context, this);
                        break;
                    case 2:
                        reportCell = new BlockDividerCell(this.context);
                        break;
                    case 3:
                        reportCell = ArticleViewer.this.new BlockEmbedCell(this.context, this);
                        break;
                    case 4:
                        reportCell = ArticleViewer.this.new BlockSubtitleCell(this.context, this);
                        break;
                    case 5:
                        reportCell = ArticleViewer.this.new BlockVideoCell(this.context, this, 0);
                        break;
                    case 6:
                        reportCell = ArticleViewer.this.new BlockPullquoteCell(this.context, this);
                        break;
                    case 7:
                        reportCell = ArticleViewer.this.new BlockBlockquoteCell(this.context, this);
                        break;
                    case 8:
                        reportCell = ArticleViewer.this.new BlockSlideshowCell(this.context, this);
                        break;
                    case 9:
                        reportCell = ArticleViewer.this.new BlockPhotoCell(this.context, this, 0);
                        break;
                    case 10:
                        reportCell = ArticleViewer.this.new BlockAuthorDateCell(this.context, this);
                        break;
                    case 11:
                        reportCell = ArticleViewer.this.new BlockTitleCell(this.context, this);
                        break;
                    case 12:
                        reportCell = ArticleViewer.this.new BlockListItemCell(this.context, this);
                        break;
                    case 13:
                        reportCell = ArticleViewer.this.new BlockFooterCell(this.context, this);
                        break;
                    case 14:
                        reportCell = ArticleViewer.this.new BlockPreformattedCell(this.context, this);
                        break;
                    case 15:
                        reportCell = ArticleViewer.this.new BlockSubheaderCell(this.context, this);
                        break;
                    case 16:
                        reportCell = ArticleViewer.this.new BlockEmbedPostCell(this.context, this);
                        break;
                    case 17:
                        reportCell = ArticleViewer.this.new BlockCollageCell(this.context, this);
                        break;
                    case 18:
                        reportCell = ArticleViewer.this.new BlockChannelCell(this.context, this, 0);
                        break;
                    case 19:
                        reportCell = ArticleViewer.this.new BlockAudioCell(this.context, this);
                        break;
                    case 20:
                        reportCell = ArticleViewer.this.new BlockKickerCell(this.context, this);
                        break;
                    case 21:
                        reportCell = ArticleViewer.this.new BlockOrderedListItemCell(this.context, this);
                        break;
                    case 22:
                        reportCell = ArticleViewer.this.new BlockMapCell(this.context, this, 0);
                        break;
                    case 23:
                        reportCell = ArticleViewer.this.new BlockRelatedArticlesCell(this.context, this);
                        break;
                    case 24:
                        reportCell = ArticleViewer.this.new BlockDetailsCell(this.context, this);
                        break;
                    case 25:
                        reportCell = ArticleViewer.this.new BlockTableCell(this.context, this);
                        break;
                    case 26:
                        reportCell = ArticleViewer.this.new BlockRelatedArticlesHeaderCell(this.context, this);
                        break;
                    case 27:
                        reportCell = new BlockDetailsBottomCell(this.context);
                        break;
                    case 28:
                        reportCell = ArticleViewer.this.new BlockRelatedArticlesShadowCell(this.context);
                        break;
                    default:
                        TextView textView = new TextView(this.context);
                        textView.setBackgroundColor(-65536);
                        textView.setTextColor(-16777216);
                        textView.setTextSize(1, 20.0f);
                        reportCell = textView;
                        break;
                }
            } else {
                reportCell = new View(this.context) { // from class: org.telegram.ui.ArticleViewer.WebpageAdapter.1
                    @Override // android.view.View
                    protected void onMeasure(int i2, int i3) {
                        super.onMeasure(i2, View.MeasureSpec.makeMeasureSpec((int) (AndroidUtilities.displaySize.y * 0.4f), 1073741824));
                    }
                };
            }
            reportCell.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
            reportCell.setFocusable(true);
            return new RecyclerListView.Holder(reportCell);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onViewAttachedToWindow(RecyclerView.ViewHolder viewHolder) {
            if (viewHolder.getItemViewType() == 90 || viewHolder.getItemViewType() == 91) {
                ReportCell reportCell = (ReportCell) viewHolder.itemView;
                TLRPC.Page page = this.currentPage.cached_page;
                reportCell.setViews(page != null ? page.views : 0);
            }
        }

        public void resetCachedHeights() {
            for (int i = 0; i < this.localBlocks.size(); i++) {
                TLRPC.PageBlock pageBlock = (TLRPC.PageBlock) this.localBlocks.get(i);
                if (pageBlock != null) {
                    pageBlock.cachedWidth = 0;
                    pageBlock.cachedHeight = 0;
                }
            }
            calculateContentHeight();
        }
    }

    public class WebpageListView extends RecyclerListView {
        public WebpageListView(Context context, Theme.ResourcesProvider resourcesProvider) {
            super(context, resourcesProvider);
        }

        @Override // org.telegram.ui.Components.RecyclerListView, android.view.ViewGroup, android.view.View
        protected void dispatchDraw(Canvas canvas) {
            ArticleViewer.this.checkVideoPlayer();
            super.dispatchDraw(canvas);
        }

        @Override // org.telegram.ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup
        public boolean onInterceptTouchEvent(MotionEvent motionEvent) throws NoSuchFieldException, InterruptedException, Resources.NotFoundException, SecurityException, UnsupportedEncodingException {
            if (ArticleViewer.this.pressedLinkOwnerLayout != null && ArticleViewer.this.pressedLink == null && ((ArticleViewer.this.popupWindow == null || !ArticleViewer.this.popupWindow.isShowing()) && (motionEvent.getAction() == 1 || motionEvent.getAction() == 3))) {
                ArticleViewer.this.pressedLink = null;
                ArticleViewer.this.pressedLinkOwnerLayout = null;
                ArticleViewer.this.pressedLinkOwnerView = null;
            } else if (ArticleViewer.this.pressedLinkOwnerLayout != null && ArticleViewer.this.pressedLink != null && motionEvent.getAction() == 1 && (getAdapter() instanceof WebpageAdapter)) {
                ArticleViewer.this.checkLayoutForLinks((WebpageAdapter) getAdapter(), motionEvent, ArticleViewer.this.pressedLinkOwnerView, ArticleViewer.this.pressedLinkOwnerLayout, 0, 0);
            }
            return super.onInterceptTouchEvent(motionEvent);
        }

        @Override // org.telegram.ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
            super.onLayout(z, i, i2, i3, i4);
            int childCount = getChildCount();
            for (int i5 = 0; i5 < childCount; i5++) {
                View childAt = getChildAt(i5);
                if ((childAt.getTag() instanceof Integer) && ((Integer) childAt.getTag()).intValue() == 90 && childAt.getBottom() < getMeasuredHeight()) {
                    int measuredHeight = getMeasuredHeight();
                    childAt.layout(0, measuredHeight - childAt.getMeasuredHeight(), childAt.getMeasuredWidth(), measuredHeight);
                    return;
                }
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView
        public void onScrolled(int i, int i2) {
            Sheet.WindowView windowView;
            super.onScrolled(i, i2);
            Sheet sheet = ArticleViewer.this.sheet;
            if (sheet == null || (windowView = sheet.windowView) == null) {
                return;
            }
            windowView.invalidate();
        }

        @Override // org.telegram.ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            if (ArticleViewer.this.pressedLinkOwnerLayout != null && ArticleViewer.this.pressedLink == null && ((ArticleViewer.this.popupWindow == null || !ArticleViewer.this.popupWindow.isShowing()) && (motionEvent.getAction() == 1 || motionEvent.getAction() == 3))) {
                ArticleViewer.this.pressedLink = null;
                ArticleViewer.this.pressedLinkOwnerLayout = null;
                ArticleViewer.this.pressedLinkOwnerView = null;
            }
            return super.onTouchEvent(motionEvent);
        }
    }

    private class WindowView extends FrameLayout {
        private float alpha;
        private int bHeight;
        private int bWidth;
        private int bX;
        private int bY;
        private final Paint blackPaint;
        private float innerTranslationX;
        private boolean lastWebviewAllowedScroll;
        private boolean maybeStartTracking;
        private boolean movingPage;
        private boolean openingPage;
        private int startMovingHeaderHeight;
        private boolean startedTracking;
        private int startedTrackingPointerId;
        private int startedTrackingX;
        private int startedTrackingY;
        private VelocityTracker tracker;

        public WindowView(Context context) {
            super(context);
            this.blackPaint = new Paint();
        }

        private void prepareForMoving(MotionEvent motionEvent) throws PackageManager.NameNotFoundException {
            this.maybeStartTracking = false;
            this.startedTracking = true;
            this.startedTrackingX = (int) motionEvent.getX();
            if (ArticleViewer.this.pagesStack.size() <= 1 || (ArticleViewer.this.actionBar != null && (ArticleViewer.this.actionBar.isSearching() || ArticleViewer.this.actionBar.isAddressing()))) {
                this.movingPage = false;
            } else {
                this.movingPage = true;
                this.startMovingHeaderHeight = ArticleViewer.this.currentHeaderHeight;
                ArticleViewer.this.pages[1].setVisibility(0);
                ArticleViewer.this.pages[1].setAlpha(1.0f);
                ArticleViewer.this.pages[1].setTranslationX(BitmapDescriptorFactory.HUE_RED);
                ArticleViewer articleViewer = ArticleViewer.this;
                articleViewer.pages[0].setBackgroundColor(articleViewer.sheet == null ? 0 : articleViewer.backgroundPaint.getColor());
                ArticleViewer articleViewer2 = ArticleViewer.this;
                articleViewer2.updateInterfaceForCurrentPage(articleViewer2.pagesStack.get(r2.size() - 2), true, -1);
                if (ArticleViewer.this.containerView.indexOfChild(ArticleViewer.this.pages[0]) < ArticleViewer.this.containerView.indexOfChild(ArticleViewer.this.pages[1])) {
                    int iIndexOfChild = ArticleViewer.this.containerView.indexOfChild(ArticleViewer.this.pages[0]);
                    ArticleViewer.this.containerView.removeView(ArticleViewer.this.pages[1]);
                    ArticleViewer.this.containerView.addView(ArticleViewer.this.pages[1], iIndexOfChild);
                }
            }
            ArticleViewer.this.cancelCheckLongPress();
        }

        @Override // android.view.ViewGroup, android.view.View
        public WindowInsets dispatchApplyWindowInsets(WindowInsets windowInsets) {
            DisplayCutout displayCutout;
            List boundingRects;
            ArticleViewer articleViewer = ArticleViewer.this;
            if (articleViewer.sheet != null) {
                return super.dispatchApplyWindowInsets(windowInsets);
            }
            WindowInsets windowInsetsM = WindowInsetsCompat$$ExternalSyntheticApiModelOutline0.m(articleViewer.lastInsets);
            ArticleViewer.this.lastInsets = windowInsets;
            if ((windowInsetsM == null || !windowInsetsM.toString().equals(windowInsets.toString())) && ArticleViewer.this.windowView != null) {
                ArticleViewer.this.windowView.requestLayout();
            }
            if (Build.VERSION.SDK_INT >= 28 && ArticleViewer.this.parentActivity != null && (displayCutout = ArticleViewer.this.parentActivity.getWindow().getDecorView().getRootWindowInsets().getDisplayCutout()) != null && (boundingRects = displayCutout.getBoundingRects()) != null && !boundingRects.isEmpty()) {
                ArticleViewer.this.hasCutout = ((Rect) boundingRects.get(0)).height() != 0;
            }
            return super.dispatchApplyWindowInsets(windowInsets);
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void dispatchDraw(Canvas canvas) {
            float translationX;
            float f;
            float translationX2;
            float f2;
            int i;
            super.dispatchDraw(canvas);
            if ((Build.VERSION.SDK_INT >= 21 && ArticleViewer.this.lastInsets != null) || this.bWidth == 0 || this.bHeight == 0) {
                return;
            }
            this.blackPaint.setAlpha((int) (ArticleViewer.this.windowView.getAlpha() * 255.0f));
            int i2 = this.bX;
            if (i2 == 0 && (i = this.bY) == 0) {
                translationX = i2;
                f = i;
                translationX2 = i2 + this.bWidth;
                f2 = i + this.bHeight;
            } else {
                translationX = i2 - getTranslationX();
                f = this.bY;
                translationX2 = (this.bX + this.bWidth) - getTranslationX();
                f2 = this.bY + this.bHeight;
            }
            canvas.drawRect(translationX, f, translationX2, f2, this.blackPaint);
        }

        @Override // android.view.ViewGroup, android.view.View
        public boolean dispatchKeyEventPreIme(KeyEvent keyEvent) {
            EditTextBoldCursor editTextBoldCursor;
            if (keyEvent == null || keyEvent.getKeyCode() != 4 || keyEvent.getAction() != 1) {
                return super.dispatchKeyEventPreIme(keyEvent);
            }
            if (ArticleViewer.this.actionBar.searchEditText.isFocused()) {
                ArticleViewer.this.actionBar.searchEditText.clearFocus();
                editTextBoldCursor = ArticleViewer.this.actionBar.searchEditText;
            } else {
                if (!ArticleViewer.this.actionBar.addressEditText.isFocused()) {
                    if (ArticleViewer.this.keyboardVisible) {
                        AndroidUtilities.hideKeyboard(this);
                    } else {
                        PageLayout pageLayout = ArticleViewer.this.pages[0];
                        if (pageLayout == null || !pageLayout.isWeb() || ArticleViewer.this.pages[0].getWebView() == null || !ArticleViewer.this.pages[0].getWebView().canGoBack()) {
                            ArticleViewer.this.close(true, false);
                        } else {
                            ArticleViewer.this.pages[0].getWebView().goBack();
                        }
                    }
                    return true;
                }
                ArticleViewer.this.actionBar.addressEditText.clearFocus();
                editTextBoldCursor = ArticleViewer.this.actionBar.addressEditText;
            }
            AndroidUtilities.hideKeyboard(editTextBoldCursor);
            return true;
        }

        @Override // android.view.ViewGroup, android.view.View
        public boolean dispatchTouchEvent(MotionEvent motionEvent) {
            PageLayout pageLayout;
            ArrayList arrayList;
            if (ArticleViewer.this.pinchToZoomHelper.isInOverlayMode()) {
                motionEvent.offsetLocation(-ArticleViewer.this.containerView.getX(), -ArticleViewer.this.containerView.getY());
                return ArticleViewer.this.pinchToZoomHelper.onTouchEvent(motionEvent);
            }
            TextSelectionHelper.TextSelectionOverlay overlayView = ArticleViewer.this.textSelectionHelper.getOverlayView(getContext());
            MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
            motionEventObtain.offsetLocation(-ArticleViewer.this.containerView.getX(), -ArticleViewer.this.containerView.getY());
            if (ArticleViewer.this.textSelectionHelper.isInSelectionMode() && ArticleViewer.this.textSelectionHelper.getOverlayView(getContext()).onTouchEvent(motionEventObtain)) {
                return true;
            }
            if (overlayView.checkOnTap(motionEvent)) {
                PageLayout[] pageLayoutArr = ArticleViewer.this.pages;
                if (pageLayoutArr == null || (pageLayout = pageLayoutArr[0]) == null || !pageLayout.isWeb() || (arrayList = ArticleViewer.this.pagesStack) == null || arrayList.size() > 1) {
                    motionEvent.setAction(3);
                } else {
                    motionEvent.setAction(1);
                }
            }
            if (motionEvent.getAction() != 0 || !ArticleViewer.this.textSelectionHelper.isInSelectionMode() || (motionEvent.getY() >= ArticleViewer.this.containerView.getTop() && motionEvent.getY() <= ArticleViewer.this.containerView.getBottom())) {
                return super.dispatchTouchEvent(motionEvent);
            }
            if (ArticleViewer.this.textSelectionHelper.getOverlayView(getContext()).onTouchEvent(motionEventObtain)) {
                return super.dispatchTouchEvent(motionEvent);
            }
            return true;
        }

        @Override // android.view.ViewGroup
        protected boolean drawChild(Canvas canvas, View view, long j) {
            int measuredWidth = getMeasuredWidth();
            int i = (int) this.innerTranslationX;
            int iSave = canvas.save();
            canvas.clipRect(i, 0, measuredWidth, getHeight());
            boolean zDrawChild = super.drawChild(canvas, view, j);
            canvas.restoreToCount(iSave);
            if (i != 0 && view == ArticleViewer.this.containerView) {
                float f = measuredWidth - i;
                float fMin = Math.min(0.8f, f / measuredWidth);
                if (fMin < BitmapDescriptorFactory.HUE_RED) {
                    fMin = BitmapDescriptorFactory.HUE_RED;
                }
                ArticleViewer.this.scrimPaint.setColor(((int) (fMin * 153.0f)) << 24);
                canvas.drawRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, i, getHeight(), ArticleViewer.this.scrimPaint);
                float fMax = Math.max(BitmapDescriptorFactory.HUE_RED, Math.min(f / AndroidUtilities.dp(20.0f), 1.0f));
                ArticleViewer.this.layerShadowDrawable.setBounds(i - ArticleViewer.this.layerShadowDrawable.getIntrinsicWidth(), view.getTop(), i, view.getBottom());
                ArticleViewer.this.layerShadowDrawable.setAlpha((int) (fMax * 255.0f));
                ArticleViewer.this.layerShadowDrawable.draw(canvas);
            }
            return zDrawChild;
        }

        @Override // android.view.View
        public float getAlpha() {
            return this.alpha;
        }

        public float getInnerTranslationX() {
            return this.innerTranslationX;
        }

        public boolean handleTouchEvent(MotionEvent motionEvent) throws PackageManager.NameNotFoundException {
            Sheet sheet;
            PageLayout pageLayout;
            if (ArticleViewer.this.pageSwitchAnimation != null || ArticleViewer.this.closeAnimationInProgress || ArticleViewer.this.fullscreenVideoContainer.getVisibility() == 0 || ArticleViewer.this.textSelectionHelper.isInSelectionMode()) {
                return false;
            }
            if (motionEvent != null && motionEvent.getAction() == 0 && !this.startedTracking && !this.maybeStartTracking) {
                this.startedTrackingPointerId = motionEvent.getPointerId(0);
                this.maybeStartTracking = true;
                this.startedTrackingX = (int) motionEvent.getX();
                this.startedTrackingY = (int) motionEvent.getY();
                VelocityTracker velocityTracker = this.tracker;
                if (velocityTracker != null) {
                    velocityTracker.clear();
                }
            } else if (motionEvent != null && motionEvent.getAction() == 2 && motionEvent.getPointerId(0) == this.startedTrackingPointerId) {
                if (this.tracker == null) {
                    this.tracker = VelocityTracker.obtain();
                }
                int iMax = Math.max(0, (int) (motionEvent.getX() - this.startedTrackingX));
                int iAbs = Math.abs(((int) motionEvent.getY()) - this.startedTrackingY);
                this.tracker.addMovement(motionEvent);
                PageLayout pageLayout2 = ArticleViewer.this.pages[0];
                this.lastWebviewAllowedScroll = pageLayout2 == null || !pageLayout2.isWeb() || (ArticleViewer.this.pages[0].swipeContainer.allowingScroll(true) && !ArticleViewer.this.pages[0].swipeContainer.isScrolling);
                Sheet sheet2 = ArticleViewer.this.sheet;
                if ((sheet2 == null || !sheet2.nestedVerticalScroll) && this.maybeStartTracking && !this.startedTracking && iMax >= AndroidUtilities.getPixelsInCM(0.4f, true) && Math.abs(iMax) / 3 > iAbs && this.lastWebviewAllowedScroll) {
                    prepareForMoving(motionEvent);
                } else if (this.startedTracking) {
                    ArticleViewer.this.pressedLinkOwnerLayout = null;
                    ArticleViewer.this.pressedLinkOwnerView = null;
                    if (!this.movingPage || (pageLayout = ArticleViewer.this.pages[0]) == null) {
                        ArticleViewer articleViewer = ArticleViewer.this;
                        Sheet sheet3 = articleViewer.sheet;
                        if (sheet3 != null) {
                            sheet3.setBackProgress(iMax / getWidth());
                        } else {
                            float f = iMax;
                            articleViewer.containerView.setTranslationX(f);
                            setInnerTranslationX(f);
                        }
                    } else {
                        pageLayout.setTranslationX(iMax);
                    }
                }
            } else if (motionEvent != null && motionEvent.getPointerId(0) == this.startedTrackingPointerId && (motionEvent.getAction() == 3 || motionEvent.getAction() == 1 || motionEvent.getAction() == 6)) {
                if (this.tracker == null) {
                    this.tracker = VelocityTracker.obtain();
                }
                this.tracker.computeCurrentVelocity(1000);
                float xVelocity = this.tracker.getXVelocity();
                float yVelocity = this.tracker.getYVelocity();
                Sheet sheet4 = ArticleViewer.this.sheet;
                if ((sheet4 == null || !sheet4.nestedVerticalScroll) && !this.startedTracking && xVelocity >= 3500.0f && xVelocity > Math.abs(yVelocity)) {
                    prepareForMoving(motionEvent);
                }
                if (this.startedTracking) {
                    FrameLayout frameLayout = this.movingPage ? ArticleViewer.this.pages[0] : ArticleViewer.this.containerView;
                    float x = (this.movingPage || (sheet = ArticleViewer.this.sheet) == null) ? frameLayout.getX() : sheet.getBackProgress() * ArticleViewer.this.sheet.windowView.getWidth();
                    final boolean z = (x < ((float) frameLayout.getMeasuredWidth()) * 0.3f && (xVelocity < 2500.0f || xVelocity < yVelocity)) || !this.lastWebviewAllowedScroll;
                    AnimatorSet animatorSet = new AnimatorSet();
                    if (!z) {
                        x = frameLayout.getMeasuredWidth() - x;
                        if (this.movingPage) {
                            animatorSet.playTogether(ObjectAnimator.ofFloat(ArticleViewer.this.pages[0], (Property<PageLayout, Float>) View.TRANSLATION_X, frameLayout.getMeasuredWidth()));
                        } else {
                            ArticleViewer articleViewer2 = ArticleViewer.this;
                            Sheet sheet5 = articleViewer2.sheet;
                            if (sheet5 != null) {
                                animatorSet.playTogether(sheet5.animateBackProgressTo(1.0f));
                            } else {
                                animatorSet.playTogether(ObjectAnimator.ofFloat(articleViewer2.containerView, (Property<FrameLayout, Float>) View.TRANSLATION_X, frameLayout.getMeasuredWidth()), ObjectAnimator.ofFloat(this, (Property<WindowView, Float>) ArticleViewer.ARTICLE_VIEWER_INNER_TRANSLATION_X, frameLayout.getMeasuredWidth()));
                            }
                        }
                    } else if (this.movingPage) {
                        animatorSet.playTogether(ObjectAnimator.ofFloat(ArticleViewer.this.pages[0], (Property<PageLayout, Float>) View.TRANSLATION_X, BitmapDescriptorFactory.HUE_RED));
                    } else {
                        ArticleViewer articleViewer3 = ArticleViewer.this;
                        Sheet sheet6 = articleViewer3.sheet;
                        if (sheet6 != null) {
                            animatorSet.playTogether(sheet6.animateBackProgressTo(BitmapDescriptorFactory.HUE_RED));
                        } else {
                            animatorSet.playTogether(ObjectAnimator.ofFloat(articleViewer3.containerView, (Property<FrameLayout, Float>) View.TRANSLATION_X, BitmapDescriptorFactory.HUE_RED), ObjectAnimator.ofFloat(this, (Property<WindowView, Float>) ArticleViewer.ARTICLE_VIEWER_INNER_TRANSLATION_X, BitmapDescriptorFactory.HUE_RED));
                        }
                    }
                    animatorSet.setDuration(Math.max((int) ((420.0f / frameLayout.getMeasuredWidth()) * x), MediaDataController.MAX_LINKS_COUNT));
                    animatorSet.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
                    animatorSet.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.ArticleViewer.WindowView.1
                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) throws PackageManager.NameNotFoundException {
                            if (WindowView.this.movingPage) {
                                Object objRemove = null;
                                ArticleViewer.this.pages[0].setBackgroundDrawable(null);
                                if (!z) {
                                    ArticleViewer articleViewer4 = ArticleViewer.this;
                                    PageLayout[] pageLayoutArr = articleViewer4.pages;
                                    PageLayout pageLayout3 = pageLayoutArr[1];
                                    pageLayoutArr[1] = pageLayoutArr[0];
                                    pageLayoutArr[0] = pageLayout3;
                                    articleViewer4.actionBar.swap();
                                    ArticleViewer.this.page0Background.set(ArticleViewer.this.pages[0].getBackgroundColor(), true);
                                    ArticleViewer.this.page1Background.set(ArticleViewer.this.pages[1].getBackgroundColor(), true);
                                    Sheet sheet7 = ArticleViewer.this.sheet;
                                    if (sheet7 != null) {
                                        sheet7.updateLastVisible();
                                    }
                                    ArrayList arrayList = ArticleViewer.this.pagesStack;
                                    objRemove = arrayList.remove(arrayList.size() - 1);
                                    ArticleViewer articleViewer5 = ArticleViewer.this;
                                    articleViewer5.textSelectionHelper.setParentView(articleViewer5.pages[0].listView);
                                    ArticleViewer articleViewer6 = ArticleViewer.this;
                                    TextSelectionHelper.ArticleTextSelectionHelper articleTextSelectionHelper = articleViewer6.textSelectionHelper;
                                    articleTextSelectionHelper.layoutManager = articleViewer6.pages[0].layoutManager;
                                    articleTextSelectionHelper.clear(true);
                                    ArticleViewer.this.updateTitle(false);
                                    ArticleViewer.this.updatePages();
                                }
                                ArticleViewer.this.pages[1].cleanup();
                                ArticleViewer.this.pages[1].setVisibility(8);
                                if (objRemove instanceof CachedWeb) {
                                    ((CachedWeb) objRemove).destroy();
                                }
                                if (objRemove instanceof TLRPC.WebPage) {
                                    WebInstantView.recycle((TLRPC.WebPage) objRemove);
                                }
                            } else if (!z) {
                                ArticleViewer articleViewer7 = ArticleViewer.this;
                                Sheet sheet8 = articleViewer7.sheet;
                                if (sheet8 != null) {
                                    sheet8.release();
                                    ArticleViewer.this.destroy();
                                } else {
                                    articleViewer7.saveCurrentPagePosition();
                                    ArticleViewer.this.onClosed();
                                }
                            }
                            WindowView.this.movingPage = false;
                            WindowView.this.startedTracking = false;
                            ArticleViewer.this.closeAnimationInProgress = false;
                        }
                    });
                    animatorSet.start();
                    ArticleViewer.this.closeAnimationInProgress = true;
                } else {
                    this.maybeStartTracking = false;
                    this.startedTracking = false;
                    this.movingPage = false;
                }
                VelocityTracker velocityTracker2 = this.tracker;
                if (velocityTracker2 != null) {
                    velocityTracker2.recycle();
                    this.tracker = null;
                }
            } else if (motionEvent == null) {
                this.maybeStartTracking = false;
                this.startedTracking = false;
                this.movingPage = false;
                VelocityTracker velocityTracker3 = this.tracker;
                if (velocityTracker3 != null) {
                    velocityTracker3.recycle();
                    this.tracker = null;
                }
                TextSelectionHelper.ArticleTextSelectionHelper articleTextSelectionHelper = ArticleViewer.this.textSelectionHelper;
                if (articleTextSelectionHelper != null && !articleTextSelectionHelper.isInSelectionMode()) {
                    ArticleViewer.this.textSelectionHelper.clear();
                }
            }
            return this.startedTracking && this.lastWebviewAllowedScroll;
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onAttachedToWindow() {
            super.onAttachedToWindow();
            ArticleViewer.this.attachedToWindow = true;
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            ArticleViewer.this.attachedToWindow = false;
            VideoPlayerHolderBase videoPlayerHolderBase = ArticleViewer.this.videoPlayer;
            if (videoPlayerHolderBase != null) {
                videoPlayerHolderBase.release(null);
                ArticleViewer.this.videoPlayer = null;
            }
            ArticleViewer.this.currentPlayer = null;
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            if (ArticleViewer.this.sheet == null) {
                int measuredWidth = getMeasuredWidth();
                float f = measuredWidth;
                float measuredHeight = getMeasuredHeight();
                canvas.drawRect(this.innerTranslationX, BitmapDescriptorFactory.HUE_RED, f, measuredHeight, ArticleViewer.this.backgroundPaint);
                if (Build.VERSION.SDK_INT < 21 || ArticleViewer.this.lastInsets == null) {
                    return;
                }
                WindowInsets windowInsetsM = WindowInsetsCompat$$ExternalSyntheticApiModelOutline0.m(ArticleViewer.this.lastInsets);
                canvas.drawRect(this.innerTranslationX, BitmapDescriptorFactory.HUE_RED, f, windowInsetsM.getSystemWindowInsetTop(), ArticleViewer.this.statusBarPaint);
                if (ArticleViewer.this.hasCutout) {
                    int systemWindowInsetLeft = windowInsetsM.getSystemWindowInsetLeft();
                    if (systemWindowInsetLeft != 0) {
                        canvas.drawRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, systemWindowInsetLeft, measuredHeight, ArticleViewer.this.statusBarPaint);
                    }
                    if (windowInsetsM.getSystemWindowInsetRight() != 0) {
                        canvas.drawRect(measuredWidth - r3, BitmapDescriptorFactory.HUE_RED, f, measuredHeight, ArticleViewer.this.statusBarPaint);
                    }
                }
                canvas.drawRect(BitmapDescriptorFactory.HUE_RED, r1 - windowInsetsM.getStableInsetBottom(), f, measuredHeight, ArticleViewer.this.navigationBarPaint);
            }
        }

        @Override // android.view.ViewGroup
        public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            return !ArticleViewer.this.collapsed && (handleTouchEvent(motionEvent) || super.onInterceptTouchEvent(motionEvent));
        }

        @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
            int systemWindowInsetTop;
            ArticleViewer articleViewer;
            int i5 = i3 - i;
            int i6 = 0;
            if (ArticleViewer.this.anchorsOffsetMeasuredWidth != i5) {
                int i7 = 0;
                while (true) {
                    articleViewer = ArticleViewer.this;
                    PageLayout[] pageLayoutArr = articleViewer.pages;
                    if (i7 >= pageLayoutArr.length) {
                        break;
                    }
                    Iterator it = pageLayoutArr[i7].adapter.anchorsOffset.entrySet().iterator();
                    while (it.hasNext()) {
                        ((Map.Entry) it.next()).setValue(-1);
                    }
                    i7++;
                }
                articleViewer.anchorsOffsetMeasuredWidth = i5;
            }
            if (Build.VERSION.SDK_INT < 21 || ArticleViewer.this.lastInsets == null) {
                systemWindowInsetTop = 0;
            } else {
                WindowInsets windowInsetsM = WindowInsetsCompat$$ExternalSyntheticApiModelOutline0.m(ArticleViewer.this.lastInsets);
                int systemWindowInsetLeft = windowInsetsM.getSystemWindowInsetLeft();
                if (windowInsetsM.getSystemWindowInsetRight() != 0) {
                    this.bX = i5 - this.bWidth;
                } else {
                    int systemWindowInsetLeft2 = windowInsetsM.getSystemWindowInsetLeft();
                    this.bX = 0;
                    if (systemWindowInsetLeft2 == 0) {
                        this.bY = (i4 - i2) - this.bHeight;
                    }
                    systemWindowInsetTop = windowInsetsM.getSystemWindowInsetTop();
                    i6 = systemWindowInsetLeft;
                }
                this.bY = 0;
                systemWindowInsetTop = windowInsetsM.getSystemWindowInsetTop();
                i6 = systemWindowInsetLeft;
            }
            ArticleViewer.this.containerView.layout(i6, systemWindowInsetTop, ArticleViewer.this.containerView.getMeasuredWidth() + i6, ArticleViewer.this.containerView.getMeasuredHeight() + systemWindowInsetTop);
            ArticleViewer.this.fullscreenVideoContainer.layout(i6, systemWindowInsetTop, ArticleViewer.this.fullscreenVideoContainer.getMeasuredWidth() + i6, ArticleViewer.this.fullscreenVideoContainer.getMeasuredHeight() + systemWindowInsetTop);
            if (ArticleViewer.this.runAfterKeyboardClose != null) {
                ArticleViewer.this.runAfterKeyboardClose.start();
                ArticleViewer.this.runAfterKeyboardClose = null;
            }
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            int systemWindowInsetLeft;
            int size = View.MeasureSpec.getSize(i);
            int size2 = View.MeasureSpec.getSize(i2);
            if (Build.VERSION.SDK_INT < 21 || ArticleViewer.this.lastInsets == null) {
                setMeasuredDimension(size, size2);
            } else {
                setMeasuredDimension(size, size2);
                WindowInsets windowInsetsM = WindowInsetsCompat$$ExternalSyntheticApiModelOutline0.m(ArticleViewer.this.lastInsets);
                if (AndroidUtilities.incorrectDisplaySizeFix) {
                    int i3 = AndroidUtilities.displaySize.y;
                    if (size2 > i3) {
                        size2 = i3;
                    }
                    size2 += AndroidUtilities.statusBarHeight;
                }
                int systemWindowInsetBottom = size2 - windowInsetsM.getSystemWindowInsetBottom();
                size -= windowInsetsM.getSystemWindowInsetRight() + windowInsetsM.getSystemWindowInsetLeft();
                if (windowInsetsM.getSystemWindowInsetRight() != 0) {
                    systemWindowInsetLeft = windowInsetsM.getSystemWindowInsetRight();
                } else if (windowInsetsM.getSystemWindowInsetLeft() != 0) {
                    systemWindowInsetLeft = windowInsetsM.getSystemWindowInsetLeft();
                } else {
                    this.bWidth = size;
                    this.bHeight = windowInsetsM.getStableInsetBottom();
                    size2 = systemWindowInsetBottom - windowInsetsM.getSystemWindowInsetTop();
                }
                this.bWidth = systemWindowInsetLeft;
                this.bHeight = systemWindowInsetBottom;
                size2 = systemWindowInsetBottom - windowInsetsM.getSystemWindowInsetTop();
            }
            ArticleViewer articleViewer = ArticleViewer.this;
            if (articleViewer.sheet == null) {
                articleViewer.keyboardVisible = size2 < AndroidUtilities.displaySize.y - AndroidUtilities.dp(100.0f);
            }
            ArticleViewer.this.containerView.measure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 1073741824));
            ArticleViewer.this.fullscreenVideoContainer.measure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 1073741824));
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            return !ArticleViewer.this.collapsed && (handleTouchEvent(motionEvent) || super.onTouchEvent(motionEvent));
        }

        @Override // android.view.ViewGroup, android.view.ViewParent
        public void requestDisallowInterceptTouchEvent(boolean z) throws PackageManager.NameNotFoundException {
            handleTouchEvent(null);
            super.requestDisallowInterceptTouchEvent(z);
        }

        @Override // android.view.View
        public void setAlpha(float f) {
            int i = (int) (255.0f * f);
            ArticleViewer.this.backgroundPaint.setAlpha(i);
            ArticleViewer.this.statusBarPaint.setAlpha(i);
            this.alpha = f;
            if (ArticleViewer.this.parentActivity instanceof LaunchActivity) {
                ((LaunchActivity) ArticleViewer.this.parentActivity).drawerLayoutContainer.setAllowDrawContent((ArticleViewer.this.isVisible && this.alpha == 1.0f && this.innerTranslationX == BitmapDescriptorFactory.HUE_RED) ? false : true);
            }
            invalidate();
        }

        public void setInnerTranslationX(float f) {
            this.innerTranslationX = f;
            if (ArticleViewer.this.parentActivity instanceof LaunchActivity) {
                ((LaunchActivity) ArticleViewer.this.parentActivity).drawerLayoutContainer.setAllowDrawContent((ArticleViewer.this.isVisible && this.alpha == 1.0f && this.innerTranslationX == BitmapDescriptorFactory.HUE_RED) ? false : true);
            }
            invalidate();
        }
    }

    public ArticleViewer() {
        this.createdWebViews = new ArrayList();
        this.lastBlockNum = 1;
        this.interpolator = new DecelerateInterpolator(1.5f);
        this.pagesStack = new ArrayList();
        this.headerPaint = new Paint();
        this.statusBarPaint = new Paint();
        this.navigationBarPaint = new Paint();
        this.headerProgressPaint = new Paint();
        this.checkingForLongPress = false;
        this.pendingCheckForLongPress = null;
        this.pressCount = 0;
        this.pendingCheckForTap = null;
        this.links = new LinkSpanDrawable.LinkCollector();
        this.urlPath = new LinkPath();
        this.notificationsLocker = new AnimationNotificationsLocker(new int[]{NotificationCenter.dialogsNeedReload, NotificationCenter.closeChats});
        this.BOTTOM_SHEET_VIEW_TAG = "bottomSheet";
        this.selectedFont = 0;
        this.fontCells = new FontCell[2];
        this.searchResults = new ArrayList();
        this.lastSearchIndex = -1;
        this.videoStates = new LongSparseArray();
        Runnable runnable = new Runnable() { // from class: org.telegram.ui.ArticleViewer$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$65();
            }
        };
        CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
        this.page0Background = new AnimatedColor(runnable, 320L, cubicBezierInterpolator);
        this.page1Background = new AnimatedColor(new Runnable() { // from class: org.telegram.ui.ArticleViewer$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$66();
            }
        }, 320L, cubicBezierInterpolator);
        this.isSheet = false;
        this.sheet = null;
    }

    public ArticleViewer(BaseFragment baseFragment) {
        this.createdWebViews = new ArrayList();
        this.lastBlockNum = 1;
        this.interpolator = new DecelerateInterpolator(1.5f);
        this.pagesStack = new ArrayList();
        this.headerPaint = new Paint();
        this.statusBarPaint = new Paint();
        this.navigationBarPaint = new Paint();
        this.headerProgressPaint = new Paint();
        this.checkingForLongPress = false;
        this.pendingCheckForLongPress = null;
        this.pressCount = 0;
        this.pendingCheckForTap = null;
        this.links = new LinkSpanDrawable.LinkCollector();
        this.urlPath = new LinkPath();
        this.notificationsLocker = new AnimationNotificationsLocker(new int[]{NotificationCenter.dialogsNeedReload, NotificationCenter.closeChats});
        this.BOTTOM_SHEET_VIEW_TAG = "bottomSheet";
        this.selectedFont = 0;
        this.fontCells = new FontCell[2];
        this.searchResults = new ArrayList();
        this.lastSearchIndex = -1;
        this.videoStates = new LongSparseArray();
        Runnable runnable = new Runnable() { // from class: org.telegram.ui.ArticleViewer$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$65();
            }
        };
        CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
        this.page0Background = new AnimatedColor(runnable, 320L, cubicBezierInterpolator);
        this.page1Background = new AnimatedColor(new Runnable() { // from class: org.telegram.ui.ArticleViewer$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$66();
            }
        }, 320L, cubicBezierInterpolator);
        this.isSheet = true;
        this.sheet = new Sheet(baseFragment);
        setParentActivity(baseFragment.getParentActivity(), baseFragment);
    }

    static /* synthetic */ TLRPC.PageBlock access$10500(ArticleViewer articleViewer, TLRPC.PageBlock pageBlock) {
        return articleViewer.getLastNonListPageBlock(pageBlock);
    }

    static /* synthetic */ int access$10600(ArticleViewer articleViewer) {
        return articleViewer.currentAccount;
    }

    static /* synthetic */ TLRPC.PageBlock access$11300(ArticleViewer articleViewer, TLRPC.PageBlock pageBlock, TLRPC.PageBlock pageBlock2) {
        return articleViewer.wrapInTableBlock(pageBlock, pageBlock2);
    }

    static /* synthetic */ TLRPC.PageBlock access$11900(ArticleViewer articleViewer, TLRPC.PageBlock pageBlock, TLRPC.PageBlock pageBlock2) {
        return articleViewer.fixListBlock(pageBlock, pageBlock2);
    }

    static /* synthetic */ int access$12608(ArticleViewer articleViewer) {
        int i = articleViewer.lastBlockNum;
        articleViewer.lastBlockNum = i + 1;
        return i;
    }

    static /* synthetic */ int access$2004(ArticleViewer articleViewer) {
        int i = articleViewer.pressCount + 1;
        articleViewer.pressCount = i;
        return i;
    }

    private boolean addPageToStack(String str, int i) throws PackageManager.NameNotFoundException {
        saveCurrentPagePosition();
        CachedWeb cachedWeb = new CachedWeb(str);
        this.pagesStack.add(cachedWeb);
        this.actionBar.showSearch(false, true);
        updateInterfaceForCurrentPage(cachedWeb, false, i);
        return false;
    }

    private boolean addPageToStack(TLRPC.WebPage webPage, String str, int i) throws PackageManager.NameNotFoundException {
        saveCurrentPagePosition();
        this.pagesStack.add(webPage);
        this.actionBar.showSearch(false, true);
        updateInterfaceForCurrentPage(webPage, false, i);
        return scrollToAnchor(str, false);
    }

    private boolean checkAnimation() {
        if (this.animationInProgress != 0 && Math.abs(this.transitionAnimationStartTime - System.currentTimeMillis()) >= 500) {
            Runnable runnable = this.animationEndRunnable;
            if (runnable != null) {
                runnable.run();
                this.animationEndRunnable = null;
            }
            this.animationInProgress = 0;
        }
        return this.animationInProgress != 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean checkLayoutForLinks(WebpageAdapter webpageAdapter, MotionEvent motionEvent, View view, DrawingText drawingText, int i, int i2) throws NoSuchFieldException, InterruptedException, Resources.NotFoundException, SecurityException, UnsupportedEncodingException {
        ActionBarPopupWindow actionBarPopupWindow;
        String strDecode;
        boolean z;
        if (this.pageSwitchAnimation != null || view == null || !this.textSelectionHelper.isSelectable(view)) {
            return false;
        }
        this.pressedLinkOwnerView = view;
        if (drawingText != null) {
            StaticLayout staticLayout = drawingText.textLayout;
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            if (motionEvent.getAction() == 0) {
                int lineCount = staticLayout.getLineCount();
                float fMin = 2.14748365E9f;
                float fMax = BitmapDescriptorFactory.HUE_RED;
                for (int i3 = 0; i3 < lineCount; i3++) {
                    fMax = Math.max(staticLayout.getLineWidth(i3), fMax);
                    fMin = Math.min(staticLayout.getLineLeft(i3), fMin);
                }
                float f = x;
                float f2 = i + fMin;
                if (f >= f2 && f <= f2 + fMax && y >= i2 && y <= staticLayout.getHeight() + i2) {
                    this.pressedLinkOwnerLayout = drawingText;
                    this.pressedLayoutY = i2;
                    if (staticLayout.getText() instanceof Spannable) {
                        int i4 = x - i;
                        try {
                            int lineForVertical = staticLayout.getLineForVertical(y - i2);
                            float f3 = i4;
                            int offsetForHorizontal = staticLayout.getOffsetForHorizontal(lineForVertical, f3);
                            float lineLeft = staticLayout.getLineLeft(lineForVertical);
                            if (lineLeft <= f3 && lineLeft + staticLayout.getLineWidth(lineForVertical) >= f3) {
                                Spannable spannable = (Spannable) staticLayout.getText();
                                TextPaintUrlSpan[] textPaintUrlSpanArr = (TextPaintUrlSpan[]) spannable.getSpans(offsetForHorizontal, offsetForHorizontal, TextPaintUrlSpan.class);
                                if (textPaintUrlSpanArr != null && textPaintUrlSpanArr.length > 0) {
                                    TextPaintUrlSpan textPaintUrlSpan = textPaintUrlSpanArr[0];
                                    int spanStart = spannable.getSpanStart(textPaintUrlSpan);
                                    int spanEnd = spannable.getSpanEnd(textPaintUrlSpan);
                                    for (int i5 = 1; i5 < textPaintUrlSpanArr.length; i5++) {
                                        TextPaintUrlSpan textPaintUrlSpan2 = textPaintUrlSpanArr[i5];
                                        int spanStart2 = spannable.getSpanStart(textPaintUrlSpan2);
                                        int spanEnd2 = spannable.getSpanEnd(textPaintUrlSpan2);
                                        if (spanStart > spanStart2 || spanEnd2 > spanEnd) {
                                            spanEnd = spanEnd2;
                                            textPaintUrlSpan = textPaintUrlSpan2;
                                            spanStart = spanStart2;
                                        }
                                    }
                                    LinkSpanDrawable linkSpanDrawable = this.pressedLink;
                                    if (linkSpanDrawable == null || linkSpanDrawable.getSpan() != textPaintUrlSpan) {
                                        LinkSpanDrawable linkSpanDrawable2 = this.pressedLink;
                                        if (linkSpanDrawable2 != null) {
                                            this.links.removeLink(linkSpanDrawable2);
                                        }
                                        LinkSpanDrawable linkSpanDrawable3 = new LinkSpanDrawable(textPaintUrlSpan, null, f, y);
                                        this.pressedLink = linkSpanDrawable3;
                                        linkSpanDrawable3.setColor(getThemedColor(Theme.key_windowBackgroundWhiteLinkSelection) & 872415231);
                                        this.links.addLink(this.pressedLink, this.pressedLinkOwnerLayout);
                                        try {
                                            LinkPath linkPathObtainNewPath = this.pressedLink.obtainNewPath();
                                            linkPathObtainNewPath.setCurrentLayout(staticLayout, spanStart, BitmapDescriptorFactory.HUE_RED);
                                            TextPaint textPaint = textPaintUrlSpan.getTextPaint();
                                            int i6 = textPaint != null ? textPaint.baselineShift : 0;
                                            linkPathObtainNewPath.setBaselineShift(i6 != 0 ? i6 + AndroidUtilities.dp(i6 > 0 ? 5.0f : -2.0f) : 0);
                                            staticLayout.getSelectionPath(spanStart, spanEnd, linkPathObtainNewPath);
                                            view.invalidate();
                                        } catch (Exception e) {
                                            FileLog.e(e);
                                        }
                                    }
                                }
                            }
                        } catch (Exception e2) {
                            FileLog.e(e2);
                        }
                    }
                }
            } else {
                if (motionEvent.getAction() == 1) {
                    LinkSpanDrawable linkSpanDrawable4 = this.pressedLink;
                    if (linkSpanDrawable4 != null) {
                        String url = ((TextPaintUrlSpan) linkSpanDrawable4.getSpan()).getUrl();
                        if (url != null) {
                            BottomSheet bottomSheet = this.linkSheet;
                            if (bottomSheet != null) {
                                bottomSheet.lambda$new$0();
                                this.linkSheet = null;
                            }
                            int iLastIndexOf = url.lastIndexOf(35);
                            if (iLastIndexOf != -1) {
                                String lowerCase = (!TextUtils.isEmpty(webpageAdapter.currentPage.cached_page.url) ? webpageAdapter.currentPage.cached_page.url : webpageAdapter.currentPage.url).toLowerCase();
                                try {
                                    strDecode = URLDecoder.decode(url.substring(iLastIndexOf + 1), "UTF-8");
                                } catch (Exception unused) {
                                    strDecode = "";
                                }
                                if (iLastIndexOf == 0 || url.toLowerCase().contains(lowerCase)) {
                                    if (TextUtils.isEmpty(strDecode)) {
                                        this.pages[0].layoutManager.scrollToPositionWithOffset(0, 0);
                                        checkScrollAnimated();
                                    } else {
                                        scrollToAnchor(strDecode, true);
                                    }
                                    z = true;
                                } else {
                                    z = false;
                                }
                            } else {
                                strDecode = null;
                                z = false;
                            }
                            if (!z) {
                                String url2 = ((TextPaintUrlSpan) this.pressedLink.getSpan()).getUrl();
                                DrawingText drawingText2 = this.pressedLinkOwnerLayout;
                                openWebpageUrl(url2, strDecode, drawingText2 != null ? makeProgress(this.pressedLink, drawingText2) : null);
                            }
                        }
                    }
                } else if (motionEvent.getAction() == 3 && ((actionBarPopupWindow = this.popupWindow) == null || !actionBarPopupWindow.isShowing())) {
                }
                removePressedLink();
            }
        }
        if (motionEvent.getAction() == 0) {
            startCheckLongPress(motionEvent.getX(), motionEvent.getY(), view);
        }
        if (motionEvent.getAction() != 0 && motionEvent.getAction() != 2) {
            cancelCheckLongPress();
        }
        return view instanceof BlockDetailsCell ? this.pressedLink != null : this.pressedLinkOwnerLayout != null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkScroll(int i) {
        Sheet sheet = this.sheet;
        if (sheet == null || sheet.attachedToActionBar) {
            setCurrentHeaderHeight(this.currentHeaderHeight - i);
        }
    }

    private void checkScrollAnimated() {
        checkScrollAnimated(null);
    }

    private void checkScrollAnimated(final Runnable runnable) {
        if (this.currentHeaderHeight == AndroidUtilities.dp(56.0f)) {
            if (runnable != null) {
                runnable.run();
                return;
            }
            return;
        }
        ValueAnimator duration = ValueAnimator.ofObject(new IntEvaluator(), Integer.valueOf(this.currentHeaderHeight), Integer.valueOf(AndroidUtilities.dp(56.0f))).setDuration(180L);
        duration.setInterpolator(new DecelerateInterpolator());
        duration.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.ArticleViewer$$ExternalSyntheticLambda39
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f$0.lambda$checkScrollAnimated$51(valueAnimator);
            }
        });
        duration.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.ArticleViewer.22
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                Runnable runnable2 = runnable;
                if (runnable2 != null) {
                    runnable2.run();
                }
            }
        });
        if (runnable != null) {
            duration.setDuration(duration.getDuration() / 2);
        }
        duration.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkVideoPlayer() {
        BlockVideoCell blockVideoCell;
        RecyclerListView recyclerListView = this.pages[0].listView;
        if (recyclerListView == null || !this.attachedToWindow) {
            return;
        }
        float measuredHeight = recyclerListView.getMeasuredHeight() / 2.0f;
        float f = BitmapDescriptorFactory.HUE_RED;
        BlockVideoCell blockVideoCell2 = null;
        for (int i = 0; i < recyclerListView.getChildCount(); i++) {
            View childAt = recyclerListView.getChildAt(i);
            if (childAt instanceof BlockVideoCell) {
                float top = childAt.getTop() + (childAt.getMeasuredHeight() / 2.0f);
                if (blockVideoCell2 == null || Math.abs(measuredHeight - top) < Math.abs(measuredHeight - f)) {
                    blockVideoCell2 = (BlockVideoCell) childAt;
                    f = top;
                }
            }
        }
        boolean z = !PhotoViewer.getInstance().isVisibleOrAnimating();
        if (!z || ((blockVideoCell = this.currentPlayer) != null && blockVideoCell != blockVideoCell2 && this.videoPlayer != null)) {
            if (this.videoPlayer != null) {
                LongSparseArray longSparseArray = this.videoStates;
                long j = this.currentPlayer.currentBlock.video_id;
                BlockVideoCell blockVideoCell3 = this.currentPlayer;
                longSparseArray.put(j, blockVideoCell3.setState(BlockVideoCellState.fromPlayer(this.videoPlayer, blockVideoCell3)));
                if (this.currentPlayer.videoState != null) {
                    if (this.currentPlayer.videoState.lastFrameBitmap != null) {
                        this.currentPlayer.imageView.setImageBitmap(this.currentPlayer.videoState.lastFrameBitmap);
                    }
                    this.currentPlayer.updateButtonState(false);
                }
                this.videoPlayer.release(null);
            }
            this.videoPlayer = null;
            this.currentPlayer = null;
        }
        if (!z || blockVideoCell2 == null) {
            return;
        }
        blockVideoCell2.startVideoPlayer();
        this.currentPlayer = blockVideoCell2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* JADX WARN: Type inference failed for: r12v6, types: [android.graphics.Path, org.telegram.ui.Components.LinkPath] */
    /* JADX WARN: Type inference failed for: r1v35 */
    /* JADX WARN: Type inference failed for: r1v37, types: [android.text.Layout, android.text.StaticLayout] */
    /* JADX WARN: Type inference failed for: r1v45 */
    /* JADX WARN: Type inference failed for: r1v46 */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Type inference failed for: r8v7, types: [android.graphics.Path, org.telegram.ui.Components.LinkPath] */
    public DrawingText createLayoutForText(View view, CharSequence charSequence, TLRPC.RichText richText, int i, int i2, TLRPC.PageBlock pageBlock, Layout.Alignment alignment, int i3, WebpageAdapter webpageAdapter) {
        TextPaint textPaint;
        ?? staticLayout;
        LinkPath linkPath;
        ?? linkPath2;
        ?? linkPath3;
        TextPaintMarkSpan[] textPaintMarkSpanArr;
        TextPaintWebpageUrlSpan[] textPaintWebpageUrlSpanArr;
        HashMap map;
        String name;
        Integer numValueOf;
        TextUtils.TruncateAt truncateAt;
        float f;
        boolean z;
        CharSequence charSequence2;
        TextPaint textPaint2;
        int i4;
        Layout.Alignment alignment2;
        float f2;
        LinkPath linkPath4 = null;
        if (charSequence == null && (richText == null || (richText instanceof TLRPC.TL_textEmpty))) {
            return null;
        }
        int iDp = i < 0 ? AndroidUtilities.dp(10.0f) : i;
        CharSequence text = charSequence != null ? charSequence : getText(webpageAdapter, view, richText, richText, pageBlock, iDp);
        if (TextUtils.isEmpty(text)) {
            return null;
        }
        int iDp2 = AndroidUtilities.dp(SharedConfig.ivFontSize - 16);
        if ((pageBlock instanceof TLRPC.TL_pageBlockEmbedPost) && richText == null) {
            if (((TLRPC.TL_pageBlockEmbedPost) pageBlock).author == charSequence) {
                if (embedPostAuthorPaint == null) {
                    TextPaint textPaint3 = new TextPaint(1);
                    embedPostAuthorPaint = textPaint3;
                    textPaint3.setColor(getTextColor());
                }
                embedPostAuthorPaint.setTextSize(AndroidUtilities.dp(15.0f) + iDp2);
                textPaint = embedPostAuthorPaint;
            } else {
                if (embedPostDatePaint == null) {
                    TextPaint textPaint4 = new TextPaint(1);
                    embedPostDatePaint = textPaint4;
                    textPaint4.setColor(getGrayTextColor());
                }
                embedPostDatePaint.setTextSize(AndroidUtilities.dp(14.0f) + iDp2);
                textPaint = embedPostDatePaint;
            }
        } else if (pageBlock instanceof TLRPC.TL_pageBlockChannel) {
            if (channelNamePaint == null) {
                TextPaint textPaint5 = new TextPaint(1);
                channelNamePaint = textPaint5;
                textPaint5.setTypeface(AndroidUtilities.bold());
                TextPaint textPaint6 = new TextPaint(1);
                channelNamePhotoPaint = textPaint6;
                textPaint6.setTypeface(AndroidUtilities.bold());
            }
            channelNamePaint.setColor(getTextColor());
            channelNamePaint.setTextSize(AndroidUtilities.dp(15.0f));
            channelNamePhotoPaint.setColor(-1);
            channelNamePhotoPaint.setTextSize(AndroidUtilities.dp(15.0f));
            textPaint = webpageAdapter.channelBlock != null ? channelNamePhotoPaint : channelNamePaint;
        } else if (pageBlock instanceof TL_pageBlockRelatedArticlesChild) {
            TL_pageBlockRelatedArticlesChild tL_pageBlockRelatedArticlesChild = (TL_pageBlockRelatedArticlesChild) pageBlock;
            if (charSequence == ((TLRPC.TL_pageRelatedArticle) tL_pageBlockRelatedArticlesChild.parent.articles.get(tL_pageBlockRelatedArticlesChild.num)).title) {
                if (relatedArticleHeaderPaint == null) {
                    TextPaint textPaint7 = new TextPaint(1);
                    relatedArticleHeaderPaint = textPaint7;
                    textPaint7.setTypeface(AndroidUtilities.bold());
                }
                relatedArticleHeaderPaint.setColor(getTextColor());
                relatedArticleHeaderPaint.setTextSize(AndroidUtilities.dp(15.0f) + iDp2);
                textPaint = relatedArticleHeaderPaint;
            } else {
                if (relatedArticleTextPaint == null) {
                    relatedArticleTextPaint = new TextPaint(1);
                }
                relatedArticleTextPaint.setColor(getGrayTextColor());
                relatedArticleTextPaint.setTextSize(AndroidUtilities.dp(14.0f) + iDp2);
                textPaint = relatedArticleTextPaint;
            }
        } else if (!isListItemBlock(pageBlock) || charSequence == null) {
            textPaint = getTextPaint(richText, richText, pageBlock);
        } else {
            if (listTextPointerPaint == null) {
                TextPaint textPaint8 = new TextPaint(1);
                listTextPointerPaint = textPaint8;
                textPaint8.setColor(getTextColor());
            }
            if (listTextNumPaint == null) {
                TextPaint textPaint9 = new TextPaint(1);
                listTextNumPaint = textPaint9;
                textPaint9.setColor(getTextColor());
            }
            listTextPointerPaint.setTextSize(AndroidUtilities.dp(19.0f) + iDp2);
            listTextNumPaint.setTextSize(AndroidUtilities.dp(16.0f) + iDp2);
            textPaint = (!(pageBlock instanceof TL_pageBlockListItem) || ((TL_pageBlockListItem) pageBlock).parent.pageBlockList.ordered) ? listTextNumPaint : listTextPointerPaint;
        }
        TextPaint textPaint10 = textPaint;
        CharSequence charSequenceReplaceEmoji = Emoji.replaceEmoji(text, textPaint10.getFontMetricsInt(), false, null, 1);
        if (i3 != 0) {
            if (pageBlock instanceof TLRPC.TL_pageBlockPullquote) {
                alignment2 = Layout.Alignment.ALIGN_CENTER;
                truncateAt = TextUtils.TruncateAt.END;
                f2 = BitmapDescriptorFactory.HUE_RED;
                z = false;
                f = 1.0f;
                charSequence2 = charSequenceReplaceEmoji;
                textPaint2 = textPaint10;
                i4 = iDp;
            } else {
                float fDp = AndroidUtilities.dp(4.0f);
                truncateAt = TextUtils.TruncateAt.END;
                f = 1.0f;
                z = false;
                charSequence2 = charSequenceReplaceEmoji;
                textPaint2 = textPaint10;
                i4 = iDp;
                alignment2 = alignment;
                f2 = fDp;
            }
            staticLayout = StaticLayoutEx.createStaticLayout(charSequence2, textPaint2, i4, alignment2, f, f2, z, truncateAt, iDp, i3);
        } else {
            if (charSequenceReplaceEmoji.charAt(charSequenceReplaceEmoji.length() - 1) == '\n') {
                charSequenceReplaceEmoji = charSequenceReplaceEmoji.subSequence(0, charSequenceReplaceEmoji.length() - 1);
            }
            staticLayout = pageBlock instanceof TLRPC.TL_pageBlockPullquote ? new StaticLayout(charSequenceReplaceEmoji, textPaint10, iDp, Layout.Alignment.ALIGN_CENTER, 1.0f, BitmapDescriptorFactory.HUE_RED, false) : new StaticLayout(charSequenceReplaceEmoji, textPaint10, iDp, alignment, 1.0f, AndroidUtilities.dp(4.0f), false);
        }
        if (staticLayout == 0) {
            return null;
        }
        CharSequence text2 = staticLayout.getText();
        if (i2 >= 0 && !this.searchResults.isEmpty() && this.searchText != null) {
            String lowerCase = charSequenceReplaceEmoji.toString().toLowerCase();
            int i5 = 0;
            while (true) {
                int iIndexOf = lowerCase.indexOf(this.searchText, i5);
                if (iIndexOf < 0) {
                    break;
                }
                int length = this.searchText.length() + iIndexOf;
                if (iIndexOf == 0 || AndroidUtilities.isPunctuationCharacter(lowerCase.charAt(iIndexOf - 1))) {
                    this.pages[0].adapter.searchTextOffset.put(this.searchText + pageBlock + richText + iIndexOf, Integer.valueOf(i2 + staticLayout.getLineTop(staticLayout.getLineForOffset(iIndexOf))));
                }
                i5 = length;
            }
        }
        if (text2 instanceof Spanned) {
            Spanned spanned = (Spanned) text2;
            try {
                AnchorSpan[] anchorSpanArr = (AnchorSpan[]) spanned.getSpans(0, spanned.length(), AnchorSpan.class);
                int lineCount = staticLayout.getLineCount();
                if (anchorSpanArr != null && anchorSpanArr.length > 0) {
                    for (int i6 = 0; i6 < anchorSpanArr.length; i6++) {
                        if (lineCount <= 1) {
                            map = webpageAdapter.anchorsOffset;
                            name = anchorSpanArr[i6].getName();
                            numValueOf = Integer.valueOf(i2);
                        } else {
                            map = webpageAdapter.anchorsOffset;
                            name = anchorSpanArr[i6].getName();
                            numValueOf = Integer.valueOf(i2 + staticLayout.getLineTop(staticLayout.getLineForOffset(spanned.getSpanStart(anchorSpanArr[i6]))));
                        }
                        map.put(name, numValueOf);
                    }
                }
            } catch (Exception unused) {
            }
            try {
                textPaintWebpageUrlSpanArr = (TextPaintWebpageUrlSpan[]) spanned.getSpans(0, spanned.length(), TextPaintWebpageUrlSpan.class);
            } catch (Exception unused2) {
            }
            if (textPaintWebpageUrlSpanArr == null || textPaintWebpageUrlSpanArr.length <= 0) {
                linkPath2 = 0;
            } else {
                linkPath2 = new LinkPath(true);
                try {
                    linkPath2.setAllowReset(false);
                    for (int i7 = 0; i7 < textPaintWebpageUrlSpanArr.length; i7++) {
                        int spanStart = spanned.getSpanStart(textPaintWebpageUrlSpanArr[i7]);
                        int spanEnd = spanned.getSpanEnd(textPaintWebpageUrlSpanArr[i7]);
                        linkPath2.setCurrentLayout(staticLayout, spanStart, BitmapDescriptorFactory.HUE_RED);
                        int i8 = textPaintWebpageUrlSpanArr[i7].getTextPaint() != null ? textPaintWebpageUrlSpanArr[i7].getTextPaint().baselineShift : 0;
                        linkPath2.setBaselineShift(i8 != 0 ? i8 + AndroidUtilities.dp(i8 > 0 ? 5.0f : -2.0f) : 0);
                        staticLayout.getSelectionPath(spanStart, spanEnd, linkPath2);
                    }
                    linkPath2.setAllowReset(true);
                } catch (Exception unused3) {
                }
            }
            try {
                textPaintMarkSpanArr = (TextPaintMarkSpan[]) spanned.getSpans(0, spanned.length(), TextPaintMarkSpan.class);
            } catch (Exception unused4) {
            }
            if (textPaintMarkSpanArr == null || textPaintMarkSpanArr.length <= 0) {
                linkPath3 = 0;
            } else {
                linkPath3 = new LinkPath(true);
                try {
                    linkPath3.setAllowReset(false);
                    for (int i9 = 0; i9 < textPaintMarkSpanArr.length; i9++) {
                        int spanStart2 = spanned.getSpanStart(textPaintMarkSpanArr[i9]);
                        int spanEnd2 = spanned.getSpanEnd(textPaintMarkSpanArr[i9]);
                        linkPath3.setCurrentLayout(staticLayout, spanStart2, BitmapDescriptorFactory.HUE_RED);
                        int i10 = textPaintMarkSpanArr[i9].getTextPaint() != null ? textPaintMarkSpanArr[i9].getTextPaint().baselineShift : 0;
                        linkPath3.setBaselineShift(i10 != 0 ? i10 + AndroidUtilities.dp(i10 > 0 ? 5.0f : -2.0f) : 0);
                        staticLayout.getSelectionPath(spanStart2, spanEnd2, linkPath3);
                    }
                    linkPath3.setAllowReset(true);
                } catch (Exception unused5) {
                }
            }
            linkPath4 = linkPath2;
            linkPath = linkPath3;
        } else {
            linkPath = null;
        }
        DrawingText drawingText = new DrawingText();
        drawingText.textLayout = staticLayout;
        drawingText.textPath = linkPath4;
        drawingText.markPath = linkPath;
        drawingText.parentBlock = pageBlock;
        drawingText.parentText = richText;
        return drawingText;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public DrawingText createLayoutForText(View view, CharSequence charSequence, TLRPC.RichText richText, int i, int i2, TLRPC.PageBlock pageBlock, Layout.Alignment alignment, WebpageAdapter webpageAdapter) {
        return createLayoutForText(view, charSequence, richText, i, 0, pageBlock, alignment, 0, webpageAdapter);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public DrawingText createLayoutForText(View view, CharSequence charSequence, TLRPC.RichText richText, int i, int i2, TLRPC.PageBlock pageBlock, WebpageAdapter webpageAdapter) {
        return createLayoutForText(view, charSequence, richText, i, i2, pageBlock, Layout.Alignment.ALIGN_NORMAL, 0, webpageAdapter);
    }

    private void createPaint(boolean z) {
        if (quoteLinePaint == null) {
            quoteLinePaint = new Paint();
            preformattedBackgroundPaint = new Paint();
            Paint paint = new Paint(1);
            tableLinePaint = paint;
            Paint.Style style = Paint.Style.STROKE;
            paint.setStyle(style);
            tableLinePaint.setStrokeWidth(AndroidUtilities.dp(1.0f));
            Paint paint2 = new Paint();
            tableHalfLinePaint = paint2;
            paint2.setStyle(style);
            tableHalfLinePaint.setStrokeWidth(AndroidUtilities.dp(1.0f) / 2.0f);
            tableHeaderPaint = new Paint();
            tableStripPaint = new Paint();
            urlPaint = new Paint();
            webpageUrlPaint = new Paint(1);
            webpageSearchPaint = new Paint(1);
            photoBackgroundPaint = new Paint();
            dividerPaint = new Paint();
            webpageMarkPaint = new Paint(1);
        } else if (!z) {
            return;
        }
        int themedColor = getThemedColor(Theme.key_windowBackgroundWhite);
        webpageSearchPaint.setColor((((((float) Color.red(themedColor)) * 0.2126f) + (((float) Color.green(themedColor)) * 0.7152f)) + (((float) Color.blue(themedColor)) * 0.0722f)) / 255.0f <= 0.705f ? -3041234 : -6551);
        Paint paint3 = webpageUrlPaint;
        int i = Theme.key_windowBackgroundWhiteLinkSelection;
        paint3.setColor(getThemedColor(i) & 872415231);
        webpageUrlPaint.setPathEffect(LinkPath.getRoundedEffect());
        urlPaint.setColor(getThemedColor(i) & 872415231);
        urlPaint.setPathEffect(LinkPath.getRoundedEffect());
        Paint paint4 = tableHalfLinePaint;
        int i2 = Theme.key_windowBackgroundWhiteInputField;
        paint4.setColor(getThemedColor(i2));
        tableLinePaint.setColor(getThemedColor(i2));
        photoBackgroundPaint.setColor(251658240);
        dividerPaint.setColor(getThemedColor(Theme.key_divider));
        webpageMarkPaint.setColor(getThemedColor(i) & 872415231);
        webpageMarkPaint.setPathEffect(LinkPath.getRoundedEffect());
        int themedColor2 = getThemedColor(Theme.key_switchTrack);
        int iRed = Color.red(themedColor2);
        int iGreen = Color.green(themedColor2);
        int iBlue = Color.blue(themedColor2);
        tableStripPaint.setColor(Color.argb(20, iRed, iGreen, iBlue));
        tableHeaderPaint.setColor(Color.argb(34, iRed, iGreen, iBlue));
        int themedColor3 = getThemedColor(i);
        preformattedBackgroundPaint.setColor(Color.argb(20, Color.red(themedColor3), Color.green(themedColor3), Color.blue(themedColor3)));
        quoteLinePaint.setColor(getThemedColor(Theme.key_chat_inReplyLine));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void drawTextSelection(Canvas canvas, TextSelectionHelper.ArticleSelectableView articleSelectableView) {
        drawTextSelection(canvas, articleSelectableView, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public void drawTextSelection(Canvas canvas, TextSelectionHelper.ArticleSelectableView articleSelectableView, int i) {
        TextSelectionHelper.ArticleTextSelectionHelper articleTextSelectionHelper;
        View view = (View) articleSelectableView;
        if (view.getTag() == null || view.getTag() != "bottomSheet" || (articleTextSelectionHelper = this.textSelectionHelperBottomSheet) == null) {
            articleTextSelectionHelper = this.textSelectionHelper;
        }
        articleTextSelectionHelper.draw(canvas, articleSelectableView, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public TLRPC.PageBlock fixListBlock(TLRPC.PageBlock pageBlock, TLRPC.PageBlock pageBlock2) {
        if (pageBlock instanceof TL_pageBlockListItem) {
            ((TL_pageBlockListItem) pageBlock).blockItem = pageBlock2;
            return pageBlock;
        }
        if (!(pageBlock instanceof TL_pageBlockOrderedListItem)) {
            return pageBlock2;
        }
        ((TL_pageBlockOrderedListItem) pageBlock).blockItem = pageBlock2;
        return pageBlock;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public TLRPC.RichText getBlockCaption(TLRPC.PageBlock pageBlock, int i) {
        if (i == 2) {
            TLRPC.RichText blockCaption = getBlockCaption(pageBlock, 0);
            if (blockCaption instanceof TLRPC.TL_textEmpty) {
                blockCaption = null;
            }
            TLRPC.RichText blockCaption2 = getBlockCaption(pageBlock, 1);
            if (blockCaption2 instanceof TLRPC.TL_textEmpty) {
                blockCaption2 = null;
            }
            if (blockCaption != null && blockCaption2 == null) {
                return blockCaption;
            }
            if (blockCaption == null && blockCaption2 != null) {
                return blockCaption2;
            }
            if (blockCaption == null || blockCaption2 == null) {
                return null;
            }
            TLRPC.TL_textPlain tL_textPlain = new TLRPC.TL_textPlain();
            tL_textPlain.text = " ";
            TLRPC.TL_textConcat tL_textConcat = new TLRPC.TL_textConcat();
            tL_textConcat.texts.add(blockCaption);
            tL_textConcat.texts.add(tL_textPlain);
            tL_textConcat.texts.add(blockCaption2);
            return tL_textConcat;
        }
        if (pageBlock instanceof TLRPC.TL_pageBlockEmbedPost) {
            TLRPC.TL_pageBlockEmbedPost tL_pageBlockEmbedPost = (TLRPC.TL_pageBlockEmbedPost) pageBlock;
            if (i == 0) {
                return tL_pageBlockEmbedPost.caption.text;
            }
            if (i == 1) {
                return tL_pageBlockEmbedPost.caption.credit;
            }
        } else if (pageBlock instanceof TLRPC.TL_pageBlockSlideshow) {
            TLRPC.TL_pageBlockSlideshow tL_pageBlockSlideshow = (TLRPC.TL_pageBlockSlideshow) pageBlock;
            if (i == 0) {
                return tL_pageBlockSlideshow.caption.text;
            }
            if (i == 1) {
                return tL_pageBlockSlideshow.caption.credit;
            }
        } else if (pageBlock instanceof TLRPC.TL_pageBlockPhoto) {
            TLRPC.TL_pageBlockPhoto tL_pageBlockPhoto = (TLRPC.TL_pageBlockPhoto) pageBlock;
            if (i == 0) {
                return tL_pageBlockPhoto.caption.text;
            }
            if (i == 1) {
                return tL_pageBlockPhoto.caption.credit;
            }
        } else if (pageBlock instanceof TLRPC.TL_pageBlockCollage) {
            TLRPC.TL_pageBlockCollage tL_pageBlockCollage = (TLRPC.TL_pageBlockCollage) pageBlock;
            if (i == 0) {
                return tL_pageBlockCollage.caption.text;
            }
            if (i == 1) {
                return tL_pageBlockCollage.caption.credit;
            }
        } else if (pageBlock instanceof TLRPC.TL_pageBlockEmbed) {
            TLRPC.TL_pageBlockEmbed tL_pageBlockEmbed = (TLRPC.TL_pageBlockEmbed) pageBlock;
            if (i == 0) {
                return tL_pageBlockEmbed.caption.text;
            }
            if (i == 1) {
                return tL_pageBlockEmbed.caption.credit;
            }
        } else {
            if (pageBlock instanceof TLRPC.TL_pageBlockBlockquote) {
                return ((TLRPC.TL_pageBlockBlockquote) pageBlock).caption;
            }
            if (pageBlock instanceof TLRPC.TL_pageBlockVideo) {
                TLRPC.TL_pageBlockVideo tL_pageBlockVideo = (TLRPC.TL_pageBlockVideo) pageBlock;
                if (i == 0) {
                    return tL_pageBlockVideo.caption.text;
                }
                if (i == 1) {
                    return tL_pageBlockVideo.caption.credit;
                }
            } else {
                if (pageBlock instanceof TLRPC.TL_pageBlockPullquote) {
                    return ((TLRPC.TL_pageBlockPullquote) pageBlock).caption;
                }
                if (pageBlock instanceof TLRPC.TL_pageBlockAudio) {
                    TLRPC.TL_pageBlockAudio tL_pageBlockAudio = (TLRPC.TL_pageBlockAudio) pageBlock;
                    if (i == 0) {
                        return tL_pageBlockAudio.caption.text;
                    }
                    if (i == 1) {
                        return tL_pageBlockAudio.caption.credit;
                    }
                } else {
                    if (pageBlock instanceof TLRPC.TL_pageBlockCover) {
                        return getBlockCaption(((TLRPC.TL_pageBlockCover) pageBlock).cover, i);
                    }
                    if (pageBlock instanceof TLRPC.TL_pageBlockMap) {
                        TLRPC.TL_pageBlockMap tL_pageBlockMap = (TLRPC.TL_pageBlockMap) pageBlock;
                        if (i == 0) {
                            return tL_pageBlockMap.caption.text;
                        }
                        if (i == 1) {
                            return tL_pageBlockMap.caption.credit;
                        }
                    }
                }
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getGrayTextColor() {
        return getThemedColor(Theme.key_windowBackgroundWhiteGrayText);
    }

    public static ArticleViewer getInstance() {
        ArticleViewer articleViewer = Instance;
        if (articleViewer == null) {
            synchronized (ArticleViewer.class) {
                try {
                    articleViewer = Instance;
                    if (articleViewer == null) {
                        articleViewer = new ArticleViewer();
                        Instance = articleViewer;
                    }
                } finally {
                }
            }
        }
        return articleViewer;
    }

    private View getLastNonListCell(View view) {
        RecyclerView.ViewHolder viewHolder;
        if (view instanceof BlockListItemCell) {
            BlockListItemCell blockListItemCell = (BlockListItemCell) view;
            if (blockListItemCell.blockLayout != null) {
                viewHolder = blockListItemCell.blockLayout;
                return getLastNonListCell(viewHolder.itemView);
            }
            return view;
        }
        if (view instanceof BlockOrderedListItemCell) {
            BlockOrderedListItemCell blockOrderedListItemCell = (BlockOrderedListItemCell) view;
            if (blockOrderedListItemCell.blockLayout != null) {
                viewHolder = blockOrderedListItemCell.blockLayout;
                return getLastNonListCell(viewHolder.itemView);
            }
        }
        return view;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public TLRPC.PageBlock getLastNonListPageBlock(TLRPC.PageBlock pageBlock) {
        if (pageBlock instanceof TL_pageBlockListItem) {
            TL_pageBlockListItem tL_pageBlockListItem = (TL_pageBlockListItem) pageBlock;
            TLRPC.PageBlock pageBlock2 = tL_pageBlockListItem.blockItem;
            TLRPC.PageBlock pageBlock3 = tL_pageBlockListItem.blockItem;
            return pageBlock2 != null ? getLastNonListPageBlock(pageBlock3) : pageBlock3;
        }
        if (!(pageBlock instanceof TL_pageBlockOrderedListItem)) {
            return pageBlock;
        }
        TL_pageBlockOrderedListItem tL_pageBlockOrderedListItem = (TL_pageBlockOrderedListItem) pageBlock;
        TLRPC.PageBlock pageBlock4 = tL_pageBlockOrderedListItem.blockItem;
        TLRPC.PageBlock pageBlock5 = tL_pageBlockOrderedListItem.blockItem;
        return pageBlock4 != null ? getLastNonListPageBlock(pageBlock5) : pageBlock5;
    }

    private TLRPC.RichText getLastRichText(TLRPC.RichText richText) {
        TLRPC.RichText richText2;
        if (richText == null) {
            return null;
        }
        if (richText instanceof TLRPC.TL_textFixed) {
            richText2 = (TLRPC.TL_textFixed) richText;
        } else if (richText instanceof TLRPC.TL_textItalic) {
            richText2 = (TLRPC.TL_textItalic) richText;
        } else if (richText instanceof TLRPC.TL_textBold) {
            richText2 = (TLRPC.TL_textBold) richText;
        } else if (richText instanceof TLRPC.TL_textUnderline) {
            richText2 = (TLRPC.TL_textUnderline) richText;
        } else if (richText instanceof TLRPC.TL_textStrike) {
            richText2 = (TLRPC.TL_textStrike) richText;
        } else if (richText instanceof TLRPC.TL_textEmail) {
            richText2 = (TLRPC.TL_textEmail) richText;
        } else {
            if (!(richText instanceof TLRPC.TL_textUrl)) {
                if (richText instanceof TLRPC.TL_textAnchor) {
                    getLastRichText(((TLRPC.TL_textAnchor) richText).text);
                } else if (richText instanceof TLRPC.TL_textSubscript) {
                    richText2 = (TLRPC.TL_textSubscript) richText;
                } else if (richText instanceof TLRPC.TL_textSuperscript) {
                    richText2 = (TLRPC.TL_textSuperscript) richText;
                } else if (richText instanceof TLRPC.TL_textMarked) {
                    richText2 = (TLRPC.TL_textMarked) richText;
                } else if (richText instanceof TLRPC.TL_textPhone) {
                    return getLastRichText(((TLRPC.TL_textPhone) richText).text);
                }
                return richText;
            }
            richText2 = (TLRPC.TL_textUrl) richText;
        }
        return getLastRichText(richText2.text);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getLinkTextColor() {
        return getThemedColor(Theme.key_windowBackgroundWhiteLinkText);
    }

    public static CharSequence getPlainText(TLRPC.RichText richText) {
        if (richText == null) {
            return "";
        }
        if (richText instanceof TLRPC.TL_textFixed) {
            return getPlainText(((TLRPC.TL_textFixed) richText).text);
        }
        if (richText instanceof TLRPC.TL_textItalic) {
            return getPlainText(((TLRPC.TL_textItalic) richText).text);
        }
        if (richText instanceof TLRPC.TL_textBold) {
            return getPlainText(((TLRPC.TL_textBold) richText).text);
        }
        if (richText instanceof TLRPC.TL_textUnderline) {
            return getPlainText(((TLRPC.TL_textUnderline) richText).text);
        }
        if (richText instanceof TLRPC.TL_textStrike) {
            return getPlainText(((TLRPC.TL_textStrike) richText).text);
        }
        if (richText instanceof TLRPC.TL_textEmail) {
            return getPlainText(((TLRPC.TL_textEmail) richText).text);
        }
        if (richText instanceof TLRPC.TL_textUrl) {
            return getPlainText(((TLRPC.TL_textUrl) richText).text);
        }
        if (richText instanceof TLRPC.TL_textPlain) {
            return ((TLRPC.TL_textPlain) richText).text;
        }
        if (richText instanceof TLRPC.TL_textAnchor) {
            return getPlainText(((TLRPC.TL_textAnchor) richText).text);
        }
        if (richText instanceof TLRPC.TL_textEmpty) {
            return "";
        }
        if (richText instanceof TLRPC.TL_textConcat) {
            StringBuilder sb = new StringBuilder();
            int size = richText.texts.size();
            for (int i = 0; i < size; i++) {
                sb.append(getPlainText((TLRPC.RichText) richText.texts.get(i)));
            }
            return sb;
        }
        if (richText instanceof TLRPC.TL_textSubscript) {
            return getPlainText(((TLRPC.TL_textSubscript) richText).text);
        }
        if (richText instanceof TLRPC.TL_textSuperscript) {
            return getPlainText(((TLRPC.TL_textSuperscript) richText).text);
        }
        if (richText instanceof TLRPC.TL_textMarked) {
            return getPlainText(((TLRPC.TL_textMarked) richText).text);
        }
        if (richText instanceof TLRPC.TL_textPhone) {
            return getPlainText(((TLRPC.TL_textPhone) richText).text);
        }
        boolean z = richText instanceof TLRPC.TL_textImage;
        return "";
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r2v1, types: [java.lang.CharSequence] */
    /* JADX WARN: Type inference failed for: r2v2, types: [android.text.SpannableStringBuilder] */
    public CharSequence getText(TLRPC.WebPage webPage, View view, TLRPC.RichText richText, TLRPC.RichText richText2, TLRPC.PageBlock pageBlock, int i) {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        if (richText2 == null) {
            return null;
        }
        if (richText2 instanceof TLRPC.TL_textFixed) {
            return getText(webPage, view, richText, ((TLRPC.TL_textFixed) richText2).text, pageBlock, i);
        }
        if (richText2 instanceof TLRPC.TL_textItalic) {
            return getText(webPage, view, richText, ((TLRPC.TL_textItalic) richText2).text, pageBlock, i);
        }
        if (richText2 instanceof TLRPC.TL_textBold) {
            return getText(webPage, view, richText, ((TLRPC.TL_textBold) richText2).text, pageBlock, i);
        }
        if (richText2 instanceof TLRPC.TL_textUnderline) {
            return getText(webPage, view, richText, ((TLRPC.TL_textUnderline) richText2).text, pageBlock, i);
        }
        if (richText2 instanceof TLRPC.TL_textStrike) {
            return getText(webPage, view, richText, ((TLRPC.TL_textStrike) richText2).text, pageBlock, i);
        }
        if (richText2 instanceof TLRPC.TL_textEmail) {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(getText(webPage, view, richText, ((TLRPC.TL_textEmail) richText2).text, pageBlock, i));
            MetricAffectingSpan[] metricAffectingSpanArr = (MetricAffectingSpan[]) spannableStringBuilder.getSpans(0, spannableStringBuilder.length(), MetricAffectingSpan.class);
            if (spannableStringBuilder.length() != 0) {
                spannableStringBuilder.setSpan(new TextPaintUrlSpan((metricAffectingSpanArr == null || metricAffectingSpanArr.length == 0) ? getTextPaint(richText, richText2, pageBlock) : null, "mailto:" + getUrl(richText2)), 0, spannableStringBuilder.length(), 33);
            }
            return spannableStringBuilder;
        }
        if (richText2 instanceof TLRPC.TL_textUrl) {
            TLRPC.TL_textUrl tL_textUrl = (TLRPC.TL_textUrl) richText2;
            SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder(getText(webPage, view, richText, tL_textUrl.text, pageBlock, i));
            MetricAffectingSpan[] metricAffectingSpanArr2 = (MetricAffectingSpan[]) spannableStringBuilder2.getSpans(0, spannableStringBuilder2.length(), MetricAffectingSpan.class);
            TextPaint textPaint = (metricAffectingSpanArr2 == null || metricAffectingSpanArr2.length == 0) ? getTextPaint(richText, richText2, pageBlock) : null;
            Object textPaintWebpageUrlSpan = tL_textUrl.webpage_id != 0 ? new TextPaintWebpageUrlSpan(textPaint, getUrl(richText2)) : new TextPaintUrlSpan(textPaint, getUrl(richText2));
            if (spannableStringBuilder2.length() != 0) {
                spannableStringBuilder2.setSpan(textPaintWebpageUrlSpan, 0, spannableStringBuilder2.length(), 33);
            }
            return spannableStringBuilder2;
        }
        if (richText2 instanceof TLRPC.TL_textPlain) {
            return ((TLRPC.TL_textPlain) richText2).text;
        }
        if (richText2 instanceof TLRPC.TL_textAnchor) {
            TLRPC.TL_textAnchor tL_textAnchor = (TLRPC.TL_textAnchor) richText2;
            SpannableStringBuilder spannableStringBuilder3 = new SpannableStringBuilder(getText(webPage, view, richText, tL_textAnchor.text, pageBlock, i));
            spannableStringBuilder3.setSpan(new AnchorSpan(tL_textAnchor.name), 0, spannableStringBuilder3.length(), 17);
            return spannableStringBuilder3;
        }
        ?? spannableStringBuilder4 = "";
        if (richText2 instanceof TLRPC.TL_textEmpty) {
            return "";
        }
        int i7 = 1;
        if (richText2 instanceof TLRPC.TL_textConcat) {
            SpannableStringBuilder spannableStringBuilder5 = new SpannableStringBuilder();
            int size = richText2.texts.size();
            int i8 = 0;
            while (i8 < size) {
                TLRPC.RichText richText3 = (TLRPC.RichText) richText2.texts.get(i8);
                TLRPC.RichText lastRichText = getLastRichText(richText3);
                boolean z = i >= 0 && (richText3 instanceof TLRPC.TL_textUrl) && ((TLRPC.TL_textUrl) richText3).webpage_id != 0;
                if (z && spannableStringBuilder5.length() != 0 && spannableStringBuilder5.charAt(spannableStringBuilder5.length() - i7) != '\n') {
                    spannableStringBuilder5.append((CharSequence) " ");
                    spannableStringBuilder5.setSpan(new TextSelectionHelper.IgnoreCopySpannable(), spannableStringBuilder5.length() - i7, spannableStringBuilder5.length(), 33);
                }
                int i9 = i8;
                int i10 = size;
                CharSequence text = getText(webPage, view, richText, richText3, pageBlock, i);
                int textFlags = getTextFlags(lastRichText);
                int length = spannableStringBuilder5.length();
                spannableStringBuilder5.append(text);
                if (textFlags != 0 && !(text instanceof SpannableStringBuilder)) {
                    if ((textFlags & 8) != 0 || (textFlags & LiteMode.FLAG_CALLS_ANIMATIONS) != 0) {
                        String url = getUrl(richText3);
                        if (url == null) {
                            url = getUrl(richText);
                        }
                        Object textPaintWebpageUrlSpan2 = (textFlags & LiteMode.FLAG_CALLS_ANIMATIONS) != 0 ? new TextPaintWebpageUrlSpan(getTextPaint(richText, lastRichText, pageBlock), url) : new TextPaintUrlSpan(getTextPaint(richText, lastRichText, pageBlock), url);
                        if (length != spannableStringBuilder5.length()) {
                            spannableStringBuilder5.setSpan(textPaintWebpageUrlSpan2, length, spannableStringBuilder5.length(), 33);
                        }
                    } else if (length != spannableStringBuilder5.length()) {
                        spannableStringBuilder5.setSpan(new TextPaintSpan(getTextPaint(richText, lastRichText, pageBlock)), length, spannableStringBuilder5.length(), 33);
                    }
                }
                if (z) {
                    i6 = i9;
                    if (i6 != i10 - 1) {
                        spannableStringBuilder5.append((CharSequence) " ");
                        spannableStringBuilder5.setSpan(new TextSelectionHelper.IgnoreCopySpannable(), spannableStringBuilder5.length() - 1, spannableStringBuilder5.length(), 33);
                    }
                    i8 = i6 + 1;
                    size = i10;
                    i7 = 1;
                } else {
                    i6 = i9;
                }
                i8 = i6 + 1;
                size = i10;
                i7 = 1;
            }
            return spannableStringBuilder5;
        }
        if (richText2 instanceof TLRPC.TL_textSubscript) {
            return getText(webPage, view, richText, ((TLRPC.TL_textSubscript) richText2).text, pageBlock, i);
        }
        if (richText2 instanceof TLRPC.TL_textSuperscript) {
            return getText(webPage, view, richText, ((TLRPC.TL_textSuperscript) richText2).text, pageBlock, i);
        }
        if (richText2 instanceof TLRPC.TL_textMarked) {
            SpannableStringBuilder spannableStringBuilder6 = new SpannableStringBuilder(getText(webPage, view, richText, ((TLRPC.TL_textMarked) richText2).text, pageBlock, i));
            MetricAffectingSpan[] metricAffectingSpanArr3 = (MetricAffectingSpan[]) spannableStringBuilder6.getSpans(0, spannableStringBuilder6.length(), MetricAffectingSpan.class);
            if (spannableStringBuilder6.length() != 0) {
                spannableStringBuilder6.setSpan(new TextPaintMarkSpan((metricAffectingSpanArr3 == null || metricAffectingSpanArr3.length == 0) ? getTextPaint(richText, richText2, pageBlock) : null), 0, spannableStringBuilder6.length(), 33);
            }
            return spannableStringBuilder6;
        }
        if (richText2 instanceof TLRPC.TL_textPhone) {
            SpannableStringBuilder spannableStringBuilder7 = new SpannableStringBuilder(getText(webPage, view, richText, ((TLRPC.TL_textPhone) richText2).text, pageBlock, i));
            MetricAffectingSpan[] metricAffectingSpanArr4 = (MetricAffectingSpan[]) spannableStringBuilder7.getSpans(0, spannableStringBuilder7.length(), MetricAffectingSpan.class);
            if (spannableStringBuilder7.length() != 0) {
                spannableStringBuilder7.setSpan(new TextPaintUrlSpan((metricAffectingSpanArr4 == null || metricAffectingSpanArr4.length == 0) ? getTextPaint(richText, richText2, pageBlock) : null, "tel:" + getUrl(richText2)), 0, spannableStringBuilder7.length(), 33);
            }
            return spannableStringBuilder7;
        }
        if (!(richText2 instanceof TLRPC.TL_textImage)) {
            return "not supported " + richText2;
        }
        TLRPC.TL_textImage tL_textImage = (TLRPC.TL_textImage) richText2;
        TLRPC.Document documentWithId = WebPageUtils.getDocumentWithId(webPage, tL_textImage.document_id);
        TLRPC.Photo photoWithId = WebPageUtils.getPhotoWithId(webPage, tL_textImage.photo_id);
        if (documentWithId != null) {
            SpannableStringBuilder spannableStringBuilder8 = new SpannableStringBuilder("*");
            int iDp = AndroidUtilities.dp(tL_textImage.w);
            int iDp2 = AndroidUtilities.dp(tL_textImage.h);
            int iAbs = Math.abs(i);
            if (iDp > iAbs) {
                i4 = (int) (iDp2 * (iAbs / iDp));
                i5 = iAbs;
            } else {
                i4 = iDp2;
                i5 = iDp;
            }
            if (view != null) {
                int themedColor = getThemedColor(Theme.key_windowBackgroundWhite);
                spannableStringBuilder8.setSpan(new TextPaintImageReceiverSpan(view, documentWithId, (Object) webPage, i5, i4, false, (((((float) Color.red(themedColor)) * 0.2126f) + (((float) Color.green(themedColor)) * 0.7152f)) + (((float) Color.blue(themedColor)) * 0.0722f)) / 255.0f <= 0.705f), 0, spannableStringBuilder8.length(), 33);
            }
            return spannableStringBuilder8;
        }
        if (photoWithId instanceof WebInstantView.WebPhoto) {
            WebInstantView.WebPhoto webPhoto = (WebInstantView.WebPhoto) photoWithId;
            spannableStringBuilder4 = new SpannableStringBuilder("*");
            int iDp3 = AndroidUtilities.dp(tL_textImage.w);
            int iDp4 = AndroidUtilities.dp(tL_textImage.h);
            int iAbs2 = Math.abs(i);
            if (iDp3 > iAbs2) {
                i2 = (int) (iDp4 * (iAbs2 / iDp3));
                i3 = iAbs2;
            } else {
                i2 = iDp4;
                i3 = iDp3;
            }
            if (view != null) {
                getThemedColor(Theme.key_windowBackgroundWhite);
                spannableStringBuilder4.setSpan(new TextPaintImageReceiverSpan(view, webPhoto, (Object) webPage, i3, i2, false, false), 0, spannableStringBuilder4.length(), 33);
            }
        }
        return spannableStringBuilder4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public CharSequence getText(WebpageAdapter webpageAdapter, View view, TLRPC.RichText richText, TLRPC.RichText richText2, TLRPC.PageBlock pageBlock, int i) {
        return getText(webpageAdapter.currentPage, view, richText, richText2, pageBlock, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getTextColor() {
        return getThemedColor(Theme.key_windowBackgroundWhiteBlackText);
    }

    private int getTextFlags(TLRPC.RichText richText) {
        if (richText instanceof TLRPC.TL_textFixed) {
            return getTextFlags(richText.parentRichText) | 4;
        }
        if (richText instanceof TLRPC.TL_textItalic) {
            return getTextFlags(richText.parentRichText) | 2;
        }
        if (richText instanceof TLRPC.TL_textBold) {
            return getTextFlags(richText.parentRichText) | 1;
        }
        if (richText instanceof TLRPC.TL_textUnderline) {
            return getTextFlags(richText.parentRichText) | 16;
        }
        if (richText instanceof TLRPC.TL_textStrike) {
            return getTextFlags(richText.parentRichText) | 32;
        }
        if (!(richText instanceof TLRPC.TL_textEmail) && !(richText instanceof TLRPC.TL_textPhone)) {
            if (richText instanceof TLRPC.TL_textUrl) {
                long j = ((TLRPC.TL_textUrl) richText).webpage_id;
                int textFlags = getTextFlags(richText.parentRichText);
                return j != 0 ? textFlags | LiteMode.FLAG_CALLS_ANIMATIONS : textFlags | 8;
            }
            if (richText instanceof TLRPC.TL_textSubscript) {
                return getTextFlags(richText.parentRichText) | 128;
            }
            if (richText instanceof TLRPC.TL_textSuperscript) {
                return getTextFlags(richText.parentRichText) | 256;
            }
            if (richText instanceof TLRPC.TL_textMarked) {
                return getTextFlags(richText.parentRichText) | 64;
            }
            if (richText != null) {
                return getTextFlags(richText.parentRichText);
            }
            return 0;
        }
        return getTextFlags(richText.parentRichText) | 8;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0035, code lost:
    
        if (r2 != r11) goto L91;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0091, code lost:
    
        if (r12.caption == r11) goto L88;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00a8, code lost:
    
        if (r12.caption == r11) goto L88;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0024, code lost:
    
        if (r2 != r11) goto L91;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x00d4, code lost:
    
        if (r2 != r11) goto L91;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x00e4, code lost:
    
        if (r2 != r11) goto L91;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x00f4, code lost:
    
        if (r2 != r11) goto L91;
     */
    /* JADX WARN: Removed duplicated region for block: B:103:0x0138  */
    /* JADX WARN: Removed duplicated region for block: B:104:0x013f  */
    /* JADX WARN: Removed duplicated region for block: B:187:0x022b  */
    /* JADX WARN: Removed duplicated region for block: B:190:0x0238  */
    /* JADX WARN: Removed duplicated region for block: B:193:0x0245  */
    /* JADX WARN: Removed duplicated region for block: B:195:0x0249  */
    /* JADX WARN: Removed duplicated region for block: B:197:0x0256  */
    /* JADX WARN: Removed duplicated region for block: B:199:0x0262  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private TextPaint getTextPaint(TLRPC.RichText richText, TLRPC.RichText richText2, TLRPC.PageBlock pageBlock) {
        SparseArray sparseArray;
        int iDp;
        float f;
        int linkTextColor;
        int textColor;
        String str;
        int i;
        Typeface typefaceCreate;
        int iDp2;
        int textFlags = getTextFlags(richText2);
        int iDp3 = AndroidUtilities.dp(14.0f);
        int iDp4 = AndroidUtilities.dp(SharedConfig.ivFontSize - 16);
        if (pageBlock instanceof TLRPC.TL_pageBlockPhoto) {
            TLRPC.RichText richText3 = ((TLRPC.TL_pageBlockPhoto) pageBlock).caption.text;
            if (richText3 != richText2) {
            }
            sparseArray = photoCaptionTextPaints;
            iDp = AndroidUtilities.dp(14.0f);
            textColor = getGrayTextColor();
            int i2 = textColor;
            iDp3 = iDp;
            linkTextColor = i2;
        } else if (pageBlock instanceof TLRPC.TL_pageBlockMap) {
            TLRPC.RichText richText4 = ((TLRPC.TL_pageBlockMap) pageBlock).caption.text;
            if (richText4 != richText2) {
            }
            sparseArray = photoCaptionTextPaints;
            iDp = AndroidUtilities.dp(14.0f);
            textColor = getGrayTextColor();
            int i22 = textColor;
            iDp3 = iDp;
            linkTextColor = i22;
        } else {
            if (pageBlock instanceof TLRPC.TL_pageBlockTitle) {
                sparseArray = titleTextPaints;
                f = 23.0f;
            } else {
                if (pageBlock instanceof TLRPC.TL_pageBlockKicker) {
                    sparseArray = kickerTextPaints;
                } else {
                    if (pageBlock instanceof TLRPC.TL_pageBlockAuthorDate) {
                        sparseArray = authorTextPaints;
                    } else if (pageBlock instanceof TLRPC.TL_pageBlockFooter) {
                        sparseArray = footerTextPaints;
                    } else {
                        if (pageBlock instanceof TLRPC.TL_pageBlockSubtitle) {
                            sparseArray = subtitleTextPaints;
                        } else if (pageBlock instanceof TLRPC.TL_pageBlockHeader) {
                            sparseArray = headerTextPaints;
                        } else if (pageBlock instanceof TLRPC.TL_pageBlockSubheader) {
                            sparseArray = subheaderTextPaints;
                            f = 17.0f;
                        } else if (pageBlock instanceof TLRPC.TL_pageBlockBlockquote) {
                            TLRPC.TL_pageBlockBlockquote tL_pageBlockBlockquote = (TLRPC.TL_pageBlockBlockquote) pageBlock;
                            if (tL_pageBlockBlockquote.text != richText) {
                            }
                            sparseArray = quoteTextPaints;
                            f = 15.0f;
                        } else {
                            if (pageBlock instanceof TLRPC.TL_pageBlockPullquote) {
                                TLRPC.TL_pageBlockPullquote tL_pageBlockPullquote = (TLRPC.TL_pageBlockPullquote) pageBlock;
                                if (tL_pageBlockPullquote.text != richText) {
                                }
                                sparseArray = quoteTextPaints;
                                f = 15.0f;
                            } else if (pageBlock instanceof TLRPC.TL_pageBlockPreformatted) {
                                sparseArray = preformattedTextPaints;
                            } else {
                                if (pageBlock instanceof TLRPC.TL_pageBlockParagraph) {
                                    sparseArray = paragraphTextPaints;
                                } else if (isListItemBlock(pageBlock)) {
                                    sparseArray = listTextPaints;
                                } else if (pageBlock instanceof TLRPC.TL_pageBlockEmbed) {
                                    TLRPC.RichText richText5 = ((TLRPC.TL_pageBlockEmbed) pageBlock).caption.text;
                                    if (richText5 != richText2) {
                                    }
                                    sparseArray = photoCaptionTextPaints;
                                } else if (pageBlock instanceof TLRPC.TL_pageBlockSlideshow) {
                                    TLRPC.RichText richText6 = ((TLRPC.TL_pageBlockSlideshow) pageBlock).caption.text;
                                    if (richText6 != richText2) {
                                    }
                                    sparseArray = photoCaptionTextPaints;
                                } else {
                                    if (pageBlock instanceof TLRPC.TL_pageBlockCollage) {
                                        TLRPC.RichText richText7 = ((TLRPC.TL_pageBlockCollage) pageBlock).caption.text;
                                        if (richText7 != richText2) {
                                        }
                                        sparseArray = photoCaptionTextPaints;
                                    } else {
                                        if (pageBlock instanceof TLRPC.TL_pageBlockEmbedPost) {
                                            TLRPC.TL_pageCaption tL_pageCaption = ((TLRPC.TL_pageBlockEmbedPost) pageBlock).caption;
                                            if (richText2 != tL_pageCaption.text) {
                                                if (richText2 != tL_pageCaption.credit) {
                                                    if (richText2 != null) {
                                                        sparseArray = embedPostTextPaints;
                                                    }
                                                }
                                            }
                                            sparseArray = photoCaptionTextPaints;
                                        } else {
                                            if (pageBlock instanceof TLRPC.TL_pageBlockVideo) {
                                                if (richText2 == ((TLRPC.TL_pageBlockVideo) pageBlock).caption.text) {
                                                    sparseArray = mediaCaptionTextPaints;
                                                    iDp = AndroidUtilities.dp(14.0f);
                                                } else {
                                                    sparseArray = mediaCreditTextPaints;
                                                    iDp = AndroidUtilities.dp(12.0f);
                                                }
                                            } else if (pageBlock instanceof TLRPC.TL_pageBlockAudio) {
                                                if (richText2 == ((TLRPC.TL_pageBlockAudio) pageBlock).caption.text) {
                                                }
                                            } else if (pageBlock instanceof TLRPC.TL_pageBlockRelatedArticles) {
                                                sparseArray = relatedArticleTextPaints;
                                                iDp = AndroidUtilities.dp(15.0f);
                                            } else {
                                                if (pageBlock instanceof TLRPC.TL_pageBlockDetails) {
                                                    sparseArray = detailsTextPaints;
                                                } else if (pageBlock instanceof TLRPC.TL_pageBlockTable) {
                                                    sparseArray = tableTextPaints;
                                                }
                                                f = 15.0f;
                                            }
                                            textColor = getTextColor();
                                            int i222 = textColor;
                                            iDp3 = iDp;
                                            linkTextColor = i222;
                                        }
                                        sparseArray = null;
                                        linkTextColor = -65536;
                                    }
                                    sparseArray = photoCreditTextPaints;
                                    iDp = AndroidUtilities.dp(12.0f);
                                }
                                f = 16.0f;
                            }
                            textColor = getGrayTextColor();
                            int i2222 = textColor;
                            iDp3 = iDp;
                            linkTextColor = i2222;
                        }
                        f = 20.0f;
                    }
                    iDp = AndroidUtilities.dp(14.0f);
                    textColor = getGrayTextColor();
                    int i22222 = textColor;
                    iDp3 = iDp;
                    linkTextColor = i22222;
                }
                f = 14.0f;
            }
            iDp = AndroidUtilities.dp(f);
            textColor = getTextColor();
            int i222222 = textColor;
            iDp3 = iDp;
            linkTextColor = i222222;
        }
        int i3 = textFlags & 256;
        if (i3 != 0 || (textFlags & 128) != 0) {
            iDp3 -= AndroidUtilities.dp(4.0f);
        }
        if (sparseArray == null) {
            if (errorTextPaint == null) {
                TextPaint textPaint = new TextPaint(1);
                errorTextPaint = textPaint;
                textPaint.setColor(-65536);
            }
            errorTextPaint.setTextSize(AndroidUtilities.dp(14.0f));
            return errorTextPaint;
        }
        TextPaint textPaint2 = (TextPaint) sparseArray.get(textFlags);
        if (textPaint2 == null) {
            textPaint2 = new TextPaint(1);
            if ((textFlags & 4) != 0) {
                str = AndroidUtilities.TYPEFACE_ROBOTO_MONO;
            } else {
                if (pageBlock instanceof TLRPC.TL_pageBlockRelatedArticles) {
                    typefaceCreate = AndroidUtilities.bold();
                } else if (this.selectedFont != 1 && !(pageBlock instanceof TLRPC.TL_pageBlockTitle) && !(pageBlock instanceof TLRPC.TL_pageBlockKicker) && !(pageBlock instanceof TLRPC.TL_pageBlockHeader) && !(pageBlock instanceof TLRPC.TL_pageBlockSubtitle) && !(pageBlock instanceof TLRPC.TL_pageBlockSubheader)) {
                    int i4 = textFlags & 1;
                    if (i4 != 0 && (textFlags & 2) != 0) {
                        str = AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM_ITALIC;
                    } else if (i4 != 0) {
                        str = AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM;
                    } else {
                        if ((textFlags & 2) != 0) {
                            str = "fonts/ritalic.ttf";
                        }
                        if ((textFlags & 32) != 0) {
                            textPaint2.setFlags(textPaint2.getFlags() | 16);
                        }
                        if ((textFlags & 16) != 0) {
                            textPaint2.setFlags(textPaint2.getFlags() | 8);
                        }
                        if ((textFlags & 8) != 0 || (textFlags & LiteMode.FLAG_CALLS_ANIMATIONS) != 0) {
                            textPaint2.setFlags(textPaint2.getFlags());
                            linkTextColor = getLinkTextColor();
                        }
                        if (i3 == 0) {
                            iDp2 = textPaint2.baselineShift - AndroidUtilities.dp(6.0f);
                        } else {
                            if ((textFlags & 128) != 0) {
                                iDp2 = textPaint2.baselineShift + AndroidUtilities.dp(2.0f);
                            }
                            textPaint2.setColor(linkTextColor);
                            sparseArray.put(textFlags, textPaint2);
                        }
                        textPaint2.baselineShift = iDp2;
                        textPaint2.setColor(linkTextColor);
                        sparseArray.put(textFlags, textPaint2);
                    }
                } else if ((pageBlock instanceof TLRPC.TL_pageBlockTitle) || (pageBlock instanceof TLRPC.TL_pageBlockHeader) || (pageBlock instanceof TLRPC.TL_pageBlockSubtitle) || (pageBlock instanceof TLRPC.TL_pageBlockSubheader)) {
                    str = AndroidUtilities.TYPEFACE_MERRIWEATHER_BOLD;
                } else {
                    int i5 = textFlags & 1;
                    if (i5 != 0 && (textFlags & 2) != 0) {
                        i = 3;
                    } else if (i5 != 0) {
                        typefaceCreate = Typeface.create("serif", 1);
                    } else {
                        i = (textFlags & 2) != 0 ? 2 : 0;
                    }
                    typefaceCreate = Typeface.create("serif", i);
                }
                textPaint2.setTypeface(typefaceCreate);
                if ((textFlags & 32) != 0) {
                }
                if ((textFlags & 16) != 0) {
                }
                if ((textFlags & 8) != 0) {
                    textPaint2.setFlags(textPaint2.getFlags());
                    linkTextColor = getLinkTextColor();
                    if (i3 == 0) {
                    }
                    textPaint2.baselineShift = iDp2;
                    textPaint2.setColor(linkTextColor);
                    sparseArray.put(textFlags, textPaint2);
                }
            }
            typefaceCreate = AndroidUtilities.getTypeface(str);
            textPaint2.setTypeface(typefaceCreate);
            if ((textFlags & 32) != 0) {
            }
            if ((textFlags & 16) != 0) {
            }
            if ((textFlags & 8) != 0) {
            }
        }
        textPaint2.setTextSize(iDp3 + iDp4);
        return textPaint2;
    }

    public static String getUrl(TLRPC.RichText richText) {
        if (richText instanceof TLRPC.TL_textFixed) {
            return getUrl(((TLRPC.TL_textFixed) richText).text);
        }
        if (richText instanceof TLRPC.TL_textItalic) {
            return getUrl(((TLRPC.TL_textItalic) richText).text);
        }
        if (richText instanceof TLRPC.TL_textBold) {
            return getUrl(((TLRPC.TL_textBold) richText).text);
        }
        if (richText instanceof TLRPC.TL_textUnderline) {
            return getUrl(((TLRPC.TL_textUnderline) richText).text);
        }
        if (richText instanceof TLRPC.TL_textStrike) {
            return getUrl(((TLRPC.TL_textStrike) richText).text);
        }
        if (richText instanceof TLRPC.TL_textEmail) {
            return ((TLRPC.TL_textEmail) richText).email;
        }
        if (richText instanceof TLRPC.TL_textUrl) {
            return ((TLRPC.TL_textUrl) richText).url;
        }
        if (richText instanceof TLRPC.TL_textPhone) {
            return ((TLRPC.TL_textPhone) richText).phone;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void goBack() throws PackageManager.NameNotFoundException {
        boolean z = false;
        if (this.pagesStack.size() <= 1) {
            this.windowView.movingPage = false;
            this.windowView.startedTracking = false;
            FrameLayout frameLayout = this.containerView;
            Sheet sheet = this.sheet;
            float backProgress = sheet != null ? sheet.getBackProgress() * this.sheet.windowView.getWidth() : frameLayout.getX();
            AnimatorSet animatorSet = new AnimatorSet();
            float measuredWidth = frameLayout.getMeasuredWidth() - backProgress;
            Sheet sheet2 = this.sheet;
            if (sheet2 != null) {
                animatorSet.playTogether(sheet2.animateBackProgressTo(1.0f));
            } else {
                animatorSet.playTogether(ObjectAnimator.ofFloat(this.containerView, (Property<FrameLayout, Float>) View.TRANSLATION_X, frameLayout.getMeasuredWidth()), ObjectAnimator.ofFloat(this.windowView, (Property<WindowView, Float>) ARTICLE_VIEWER_INNER_TRANSLATION_X, frameLayout.getMeasuredWidth()));
            }
            animatorSet.setDuration(Math.max((int) ((420.0f / frameLayout.getMeasuredWidth()) * measuredWidth), MediaDataController.MAX_LINKS_COUNT));
            animatorSet.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
            animatorSet.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.ArticleViewer.3
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) throws PackageManager.NameNotFoundException {
                    if (ArticleViewer.this.windowView.movingPage) {
                        ArticleViewer.this.pages[0].setBackgroundDrawable(null);
                        ArticleViewer articleViewer = ArticleViewer.this;
                        PageLayout[] pageLayoutArr = articleViewer.pages;
                        PageLayout pageLayout = pageLayoutArr[1];
                        pageLayoutArr[1] = pageLayoutArr[0];
                        pageLayoutArr[0] = pageLayout;
                        articleViewer.actionBar.swap();
                        ArticleViewer.this.page0Background.set(ArticleViewer.this.pages[0].getBackgroundColor(), true);
                        ArticleViewer.this.page1Background.set(ArticleViewer.this.pages[1].getBackgroundColor(), true);
                        Sheet sheet3 = ArticleViewer.this.sheet;
                        if (sheet3 != null) {
                            sheet3.updateLastVisible();
                        }
                        ArrayList arrayList = ArticleViewer.this.pagesStack;
                        Object objRemove = arrayList.remove(arrayList.size() - 1);
                        ArticleViewer articleViewer2 = ArticleViewer.this;
                        articleViewer2.textSelectionHelper.setParentView(articleViewer2.pages[0].listView);
                        ArticleViewer articleViewer3 = ArticleViewer.this;
                        TextSelectionHelper.ArticleTextSelectionHelper articleTextSelectionHelper = articleViewer3.textSelectionHelper;
                        articleTextSelectionHelper.layoutManager = articleViewer3.pages[0].layoutManager;
                        articleTextSelectionHelper.clear(true);
                        ArticleViewer.this.updateTitle(false);
                        ArticleViewer.this.updatePages();
                        ArticleViewer.this.pages[1].cleanup();
                        ArticleViewer.this.pages[1].setVisibility(8);
                        if (objRemove instanceof CachedWeb) {
                            ((CachedWeb) objRemove).destroy();
                        }
                        if (objRemove instanceof TLRPC.WebPage) {
                            WebInstantView.recycle((TLRPC.WebPage) objRemove);
                        }
                    } else {
                        ArticleViewer articleViewer4 = ArticleViewer.this;
                        Sheet sheet4 = articleViewer4.sheet;
                        if (sheet4 != null) {
                            sheet4.release();
                            ArticleViewer.this.destroy();
                        } else {
                            articleViewer4.saveCurrentPagePosition();
                            ArticleViewer.this.onClosed();
                        }
                    }
                    ArticleViewer.this.windowView.movingPage = false;
                    ArticleViewer.this.windowView.startedTracking = false;
                    ArticleViewer.this.closeAnimationInProgress = false;
                }
            });
            animatorSet.start();
        } else {
            this.windowView.openingPage = true;
            this.windowView.movingPage = true;
            this.windowView.startMovingHeaderHeight = this.currentHeaderHeight;
            this.pages[1].setVisibility(0);
            this.pages[1].setAlpha(1.0f);
            this.pages[1].setTranslationX(BitmapDescriptorFactory.HUE_RED);
            this.pages[0].setBackgroundColor(this.sheet == null ? 0 : this.backgroundPaint.getColor());
            ArrayList arrayList = this.pagesStack;
            updateInterfaceForCurrentPage(arrayList.get(arrayList.size() - 2), true, -1);
            PageLayout pageLayout = this.pages[0];
            pageLayout.getX();
            AnimatorSet animatorSet2 = new AnimatorSet();
            pageLayout.getMeasuredWidth();
            animatorSet2.playTogether(ObjectAnimator.ofFloat(this.pages[0], (Property<PageLayout, Float>) View.TRANSLATION_X, pageLayout.getMeasuredWidth()));
            animatorSet2.setDuration(420L);
            animatorSet2.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
            animatorSet2.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.ArticleViewer.4
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) throws PackageManager.NameNotFoundException {
                    if (ArticleViewer.this.windowView.openingPage) {
                        ArticleViewer.this.pages[0].setBackgroundDrawable(null);
                        ArticleViewer articleViewer = ArticleViewer.this;
                        PageLayout[] pageLayoutArr = articleViewer.pages;
                        PageLayout pageLayout2 = pageLayoutArr[1];
                        pageLayoutArr[1] = pageLayoutArr[0];
                        pageLayoutArr[0] = pageLayout2;
                        articleViewer.actionBar.swap();
                        ArticleViewer.this.page0Background.set(ArticleViewer.this.pages[0].getBackgroundColor(), true);
                        ArticleViewer.this.page1Background.set(ArticleViewer.this.pages[1].getBackgroundColor(), true);
                        Sheet sheet3 = ArticleViewer.this.sheet;
                        if (sheet3 != null) {
                            sheet3.updateLastVisible();
                        }
                        ArrayList arrayList2 = ArticleViewer.this.pagesStack;
                        Object objRemove = arrayList2.remove(arrayList2.size() - 1);
                        ArticleViewer articleViewer2 = ArticleViewer.this;
                        articleViewer2.textSelectionHelper.setParentView(articleViewer2.pages[0].listView);
                        ArticleViewer articleViewer3 = ArticleViewer.this;
                        TextSelectionHelper.ArticleTextSelectionHelper articleTextSelectionHelper = articleViewer3.textSelectionHelper;
                        articleTextSelectionHelper.layoutManager = articleViewer3.pages[0].layoutManager;
                        articleTextSelectionHelper.clear(true);
                        ArticleViewer.this.updateTitle(false);
                        ArticleViewer.this.updatePages();
                        ArticleViewer.this.pages[1].cleanup();
                        ArticleViewer.this.pages[1].setVisibility(8);
                        if (objRemove instanceof CachedWeb) {
                            ((CachedWeb) objRemove).destroy();
                        }
                        if (objRemove instanceof TLRPC.WebPage) {
                            WebInstantView.recycle((TLRPC.WebPage) objRemove);
                        }
                    } else {
                        ArticleViewer.this.saveCurrentPagePosition();
                        ArticleViewer.this.onClosed();
                    }
                    ArticleViewer.this.windowView.openingPage = false;
                    ArticleViewer.this.windowView.startedTracking = false;
                    ArticleViewer.this.closeAnimationInProgress = false;
                }
            });
            animatorSet2.start();
            WebActionBar webActionBar = this.actionBar;
            PageLayout pageLayout2 = this.pages[0];
            webActionBar.setMenuColors((pageLayout2 == null || !SharedConfig.adaptableColorInBrowser) ? getThemedColor(Theme.key_iv_background) : pageLayout2.getBackgroundColor());
            WebActionBar webActionBar2 = this.actionBar;
            PageLayout pageLayout3 = this.pages[0];
            webActionBar2.setColors((pageLayout3 == null || !SharedConfig.adaptableColorInBrowser) ? getThemedColor(Theme.key_iv_background) : pageLayout3.getActionBarColor(), true);
            WebActionBar webActionBar3 = this.actionBar;
            PageLayout pageLayout4 = this.pages[0];
            if (pageLayout4 != null && pageLayout4.isTonsite()) {
                z = true;
            }
            webActionBar3.setIsTonsite(z);
        }
        this.closeAnimationInProgress = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: goBack, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public void lambda$setParentActivity$26(final int i) throws PackageManager.NameNotFoundException {
        boolean z = false;
        if (this.pagesStack.size() <= 1) {
            this.windowView.movingPage = false;
            this.windowView.startedTracking = false;
            FrameLayout frameLayout = this.containerView;
            Sheet sheet = this.sheet;
            float backProgress = sheet != null ? sheet.getBackProgress() * this.sheet.windowView.getWidth() : frameLayout.getX();
            AnimatorSet animatorSet = new AnimatorSet();
            float measuredWidth = frameLayout.getMeasuredWidth() - backProgress;
            Sheet sheet2 = this.sheet;
            if (sheet2 != null) {
                animatorSet.playTogether(sheet2.animateBackProgressTo(1.0f));
            } else {
                animatorSet.playTogether(ObjectAnimator.ofFloat(this.containerView, (Property<FrameLayout, Float>) View.TRANSLATION_X, frameLayout.getMeasuredWidth()), ObjectAnimator.ofFloat(this.windowView, (Property<WindowView, Float>) ARTICLE_VIEWER_INNER_TRANSLATION_X, frameLayout.getMeasuredWidth()));
            }
            animatorSet.setDuration(Math.max((int) ((420.0f / frameLayout.getMeasuredWidth()) * measuredWidth), MediaDataController.MAX_LINKS_COUNT));
            animatorSet.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
            animatorSet.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.ArticleViewer.5
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) throws PackageManager.NameNotFoundException {
                    if (ArticleViewer.this.windowView.movingPage) {
                        ArticleViewer.this.pages[0].setBackgroundDrawable(null);
                        ArticleViewer articleViewer = ArticleViewer.this;
                        PageLayout[] pageLayoutArr = articleViewer.pages;
                        PageLayout pageLayout = pageLayoutArr[1];
                        pageLayoutArr[1] = pageLayoutArr[0];
                        pageLayoutArr[0] = pageLayout;
                        articleViewer.actionBar.swap();
                        ArticleViewer.this.page0Background.set(ArticleViewer.this.pages[0].getBackgroundColor(), true);
                        ArticleViewer.this.page1Background.set(ArticleViewer.this.pages[1].getBackgroundColor(), true);
                        Sheet sheet3 = ArticleViewer.this.sheet;
                        if (sheet3 != null) {
                            sheet3.updateLastVisible();
                        }
                        ArrayList arrayList = ArticleViewer.this.pagesStack;
                        Object objRemove = arrayList.remove(arrayList.size() - 1);
                        ArticleViewer articleViewer2 = ArticleViewer.this;
                        articleViewer2.textSelectionHelper.setParentView(articleViewer2.pages[0].listView);
                        ArticleViewer articleViewer3 = ArticleViewer.this;
                        TextSelectionHelper.ArticleTextSelectionHelper articleTextSelectionHelper = articleViewer3.textSelectionHelper;
                        articleTextSelectionHelper.layoutManager = articleViewer3.pages[0].layoutManager;
                        articleTextSelectionHelper.clear(true);
                        ArticleViewer.this.updateTitle(false);
                        ArticleViewer.this.updatePages();
                        ArticleViewer.this.pages[1].cleanup();
                        ArticleViewer.this.pages[1].setVisibility(8);
                        if (objRemove instanceof CachedWeb) {
                            ((CachedWeb) objRemove).destroy();
                        }
                        if (objRemove instanceof TLRPC.WebPage) {
                            WebInstantView.recycle((TLRPC.WebPage) objRemove);
                        }
                    } else {
                        ArticleViewer articleViewer4 = ArticleViewer.this;
                        Sheet sheet4 = articleViewer4.sheet;
                        if (sheet4 != null) {
                            sheet4.release();
                            ArticleViewer.this.destroy();
                        } else {
                            articleViewer4.saveCurrentPagePosition();
                            ArticleViewer.this.onClosed();
                        }
                    }
                    ArticleViewer.this.windowView.movingPage = false;
                    ArticleViewer.this.windowView.startedTracking = false;
                    ArticleViewer.this.closeAnimationInProgress = false;
                }
            });
            animatorSet.start();
        } else {
            this.windowView.openingPage = true;
            this.pages[1].setVisibility(0);
            this.pages[1].setAlpha(1.0f);
            this.pages[1].setTranslationX(BitmapDescriptorFactory.HUE_RED);
            this.pages[0].setBackgroundColor(this.sheet == null ? 0 : this.backgroundPaint.getColor());
            updateInterfaceForCurrentPage(this.pagesStack.get(i), true, -1);
            PageLayout pageLayout = this.pages[0];
            pageLayout.getX();
            AnimatorSet animatorSet2 = new AnimatorSet();
            pageLayout.getMeasuredWidth();
            animatorSet2.playTogether(ObjectAnimator.ofFloat(this.pages[0], (Property<PageLayout, Float>) View.TRANSLATION_X, pageLayout.getMeasuredWidth()));
            animatorSet2.setDuration(420L);
            animatorSet2.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
            animatorSet2.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.ArticleViewer.6
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) throws PackageManager.NameNotFoundException {
                    if (ArticleViewer.this.windowView.openingPage) {
                        ArrayList arrayList = new ArrayList();
                        ArticleViewer.this.pages[0].setBackgroundDrawable(null);
                        ArticleViewer articleViewer = ArticleViewer.this;
                        PageLayout[] pageLayoutArr = articleViewer.pages;
                        PageLayout pageLayout2 = pageLayoutArr[1];
                        pageLayoutArr[1] = pageLayoutArr[0];
                        pageLayoutArr[0] = pageLayout2;
                        articleViewer.actionBar.swap();
                        ArticleViewer.this.page0Background.set(ArticleViewer.this.pages[0].getBackgroundColor(), true);
                        ArticleViewer.this.page1Background.set(ArticleViewer.this.pages[1].getBackgroundColor(), true);
                        Sheet sheet3 = ArticleViewer.this.sheet;
                        if (sheet3 != null) {
                            sheet3.updateLastVisible();
                        }
                        for (int size = ArticleViewer.this.pagesStack.size() - 1; size > i; size--) {
                            arrayList.add(ArticleViewer.this.pagesStack.remove(size));
                        }
                        ArticleViewer articleViewer2 = ArticleViewer.this;
                        articleViewer2.textSelectionHelper.setParentView(articleViewer2.pages[0].listView);
                        ArticleViewer articleViewer3 = ArticleViewer.this;
                        TextSelectionHelper.ArticleTextSelectionHelper articleTextSelectionHelper = articleViewer3.textSelectionHelper;
                        articleTextSelectionHelper.layoutManager = articleViewer3.pages[0].layoutManager;
                        articleTextSelectionHelper.clear(true);
                        ArticleViewer.this.updateTitle(false);
                        ArticleViewer.this.updatePages();
                        ArticleViewer.this.pages[1].cleanup();
                        ArticleViewer.this.pages[1].setVisibility(8);
                        Iterator it = arrayList.iterator();
                        while (it.hasNext()) {
                            Object next = it.next();
                            if (next instanceof CachedWeb) {
                                ((CachedWeb) next).destroy();
                            }
                            if (next instanceof TLRPC.WebPage) {
                                WebInstantView.recycle((TLRPC.WebPage) next);
                            }
                        }
                    } else {
                        ArticleViewer.this.saveCurrentPagePosition();
                        ArticleViewer.this.onClosed();
                    }
                    ArticleViewer.this.windowView.openingPage = false;
                    ArticleViewer.this.windowView.startedTracking = false;
                    ArticleViewer.this.closeAnimationInProgress = false;
                }
            });
            animatorSet2.start();
            WebActionBar webActionBar = this.actionBar;
            PageLayout pageLayout2 = this.pages[0];
            webActionBar.setMenuColors((pageLayout2 == null || !SharedConfig.adaptableColorInBrowser) ? getThemedColor(Theme.key_iv_background) : pageLayout2.getBackgroundColor());
            WebActionBar webActionBar2 = this.actionBar;
            PageLayout pageLayout3 = this.pages[0];
            webActionBar2.setColors((pageLayout3 == null || !SharedConfig.adaptableColorInBrowser) ? getThemedColor(Theme.key_iv_background) : pageLayout3.getActionBarColor(), true);
            WebActionBar webActionBar3 = this.actionBar;
            PageLayout pageLayout4 = this.pages[0];
            if (pageLayout4 != null && pageLayout4.isTonsite()) {
                z = true;
            }
            webActionBar3.setIsTonsite(z);
        }
        this.closeAnimationInProgress = true;
    }

    public static boolean hasInstance() {
        return Instance != null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isListItemBlock(TLRPC.PageBlock pageBlock) {
        return (pageBlock instanceof TL_pageBlockListItem) || (pageBlock instanceof TL_pageBlockOrderedListItem);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void joinChannel(final BlockChannelCell blockChannelCell, final TLRPC.Chat chat) {
        final TLRPC.TL_channels_joinChannel tL_channels_joinChannel = new TLRPC.TL_channels_joinChannel();
        tL_channels_joinChannel.channel = MessagesController.getInputChannel(chat);
        final int i = UserConfig.selectedAccount;
        ConnectionsManager.getInstance(i).sendRequest(tL_channels_joinChannel, new RequestDelegate() { // from class: org.telegram.ui.ArticleViewer$$ExternalSyntheticLambda64
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$joinChannel$63(blockChannelCell, i, tL_channels_joinChannel, chat, tLObject, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkScrollAnimated$51(ValueAnimator valueAnimator) {
        setCurrentHeaderHeight(((Integer) valueAnimator.getAnimatedValue()).intValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$close$56() throws PackageManager.NameNotFoundException {
        FrameLayout frameLayout = this.containerView;
        if (frameLayout == null) {
            return;
        }
        frameLayout.setLayerType(0, null);
        this.animationInProgress = 0;
        onClosed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$joinChannel$60(BlockChannelCell blockChannelCell, int i, TLRPC.TL_error tL_error, TLRPC.TL_channels_joinChannel tL_channels_joinChannel) {
        blockChannelCell.setState(0, false);
        AlertsCreator.processError(i, tL_error, this.parentFragment, tL_channels_joinChannel, Boolean.TRUE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$joinChannel$62(int i, TLRPC.Chat chat) {
        MessagesController.getInstance(i).loadFullChat(chat.id, 0, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$joinChannel$63(final BlockChannelCell blockChannelCell, final int i, final TLRPC.TL_channels_joinChannel tL_channels_joinChannel, final TLRPC.Chat chat, TLObject tLObject, final TLRPC.TL_error tL_error) {
        boolean z;
        if (tL_error != null) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ArticleViewer$$ExternalSyntheticLambda72
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$joinChannel$60(blockChannelCell, i, tL_error, tL_channels_joinChannel);
                }
            });
            return;
        }
        TLRPC.Updates updates = (TLRPC.Updates) tLObject;
        int i2 = 0;
        while (true) {
            if (i2 >= updates.updates.size()) {
                z = false;
                break;
            }
            TLRPC.Update update = updates.updates.get(i2);
            if ((update instanceof TLRPC.TL_updateNewChannelMessage) && (((TLRPC.TL_updateNewChannelMessage) update).message.action instanceof TLRPC.TL_messageActionChatAddUser)) {
                z = true;
                break;
            }
            i2++;
        }
        MessagesController.getInstance(i).processUpdates(updates, false);
        if (!z) {
            MessagesController.getInstance(i).generateJoinMessage(chat.id, true);
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ArticleViewer$$ExternalSyntheticLambda73
            @Override // java.lang.Runnable
            public final void run() {
                blockChannelCell.setState(2, false);
            }
        });
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ArticleViewer$$ExternalSyntheticLambda74
            @Override // java.lang.Runnable
            public final void run() {
                ArticleViewer.lambda$joinChannel$62(i, chat);
            }
        }, 1000L);
        MessagesStorage messagesStorage = MessagesStorage.getInstance(i);
        long j = chat.id;
        messagesStorage.updateDialogsWithDeletedMessages(-j, j, new ArrayList<>(), null, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadChannel$58(WebpageAdapter webpageAdapter, TLRPC.TL_error tL_error, TLObject tLObject, int i, BlockChannelCell blockChannelCell) {
        this.loadingChannel = false;
        if (this.parentFragment == null || webpageAdapter.blocks.isEmpty()) {
            return;
        }
        if (tL_error == null) {
            TLRPC.TL_contacts_resolvedPeer tL_contacts_resolvedPeer = (TLRPC.TL_contacts_resolvedPeer) tLObject;
            if (!tL_contacts_resolvedPeer.chats.isEmpty()) {
                MessagesController.getInstance(i).putUsers(tL_contacts_resolvedPeer.users, false);
                MessagesController.getInstance(i).putChats(tL_contacts_resolvedPeer.chats, false);
                MessagesStorage.getInstance(i).putUsersAndChats(tL_contacts_resolvedPeer.users, tL_contacts_resolvedPeer.chats, false, true);
                TLRPC.Chat chat = (TLRPC.Chat) tL_contacts_resolvedPeer.chats.get(0);
                this.loadedChannel = chat;
                if (chat.left && !chat.kicked) {
                    blockChannelCell.setState(0, false);
                    return;
                }
            }
        }
        blockChannelCell.setState(4, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadChannel$59(final WebpageAdapter webpageAdapter, final int i, final BlockChannelCell blockChannelCell, final TLObject tLObject, final TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ArticleViewer$$ExternalSyntheticLambda66
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$loadChannel$58(webpageAdapter, tL_error, tLObject, i, blockChannelCell);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$65() {
        AndroidUtilities.runOnUIThread(new ArticleViewer$$ExternalSyntheticLambda4(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$66() {
        AndroidUtilities.runOnUIThread(new ArticleViewer$$ExternalSyntheticLambda4(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onClosed$57() {
        try {
            if (this.windowView.getParent() != null) {
                ((WindowManager) this.parentActivity.getSystemService("window")).removeView(this.windowView);
            }
        } catch (Exception e) {
            FileLog.e(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$open$52(TLObject tLObject, int i, TLRPC.WebPage webPage, MessageObject messageObject, boolean z, String str) throws NoSuchFieldException, InterruptedException, Resources.NotFoundException, PackageManager.NameNotFoundException, SecurityException {
        TLRPC.Page page;
        TLObject tLObject2 = tLObject;
        int i2 = 0;
        if (tLObject2 instanceof TLRPC.TL_messages_webPage) {
            TLRPC.TL_messages_webPage tL_messages_webPage = (TLRPC.TL_messages_webPage) tLObject2;
            MessagesController.getInstance(i).putUsers(tL_messages_webPage.users, false);
            MessagesController.getInstance(i).putChats(tL_messages_webPage.chats, false);
            tLObject2 = tL_messages_webPage.webpage;
        }
        if (!(tLObject2 instanceof TLRPC.TL_webPage)) {
            if (tLObject2 instanceof TLRPC.TL_webPageNotModified) {
                TLRPC.TL_webPageNotModified tL_webPageNotModified = (TLRPC.TL_webPageNotModified) tLObject2;
                if (webPage == null || (page = webPage.cached_page) == null) {
                    return;
                }
                int i3 = page.views;
                int i4 = tL_webPageNotModified.cached_page_views;
                if (i3 != i4) {
                    page.views = i4;
                    page.flags |= 8;
                    while (true) {
                        PageLayout[] pageLayoutArr = this.pages;
                        if (i2 >= pageLayoutArr.length) {
                            break;
                        }
                        if (pageLayoutArr[i2].adapter.currentPage == webPage) {
                            RecyclerView.ViewHolder viewHolderFindViewHolderForAdapterPosition = this.pages[i2].listView.findViewHolderForAdapterPosition(this.pages[i2].adapter.getItemCount() - 1);
                            if (viewHolderFindViewHolderForAdapterPosition != null) {
                                this.pages[i2].adapter.onViewAttachedToWindow(viewHolderFindViewHolderForAdapterPosition);
                            }
                        }
                        i2++;
                    }
                    if (messageObject != null) {
                        TLRPC.TL_messages_messages tL_messages_messages = new TLRPC.TL_messages_messages();
                        tL_messages_messages.messages.add(messageObject.messageOwner);
                        MessagesStorage.getInstance(i).putMessages((TLRPC.messages_Messages) tL_messages_messages, messageObject.getDialogId(), -2, 0, false, messageObject.scheduled ? 1 : 0, 0L);
                        return;
                    }
                    return;
                }
                return;
            }
            return;
        }
        TLRPC.TL_webPage tL_webPage = (TLRPC.TL_webPage) tLObject2;
        if (tL_webPage.cached_page == null) {
            return;
        }
        if (!this.pagesStack.isEmpty() && this.pagesStack.get(0) == webPage) {
            if (messageObject != null) {
                messageObject.messageOwner.media.webpage = tL_webPage;
                TLRPC.TL_messages_messages tL_messages_messages2 = new TLRPC.TL_messages_messages();
                tL_messages_messages2.messages.add(messageObject.messageOwner);
                MessagesStorage.getInstance(i).putMessages((TLRPC.messages_Messages) tL_messages_messages2, messageObject.getDialogId(), -2, 0, false, messageObject.scheduled ? 1 : 0, 0L);
            }
            ArrayList arrayList = this.pagesStack;
            if (z) {
                arrayList.add(tL_webPage);
            } else {
                arrayList.set(0, tL_webPage);
            }
            if (this.pagesStack.size() == 1) {
                ApplicationLoader.applicationContext.getSharedPreferences("articles", 0).edit().remove("article" + tL_webPage.id).commit();
                updateInterfaceForCurrentPage(tL_webPage, false, z ? 1 : 0);
                if (str != null) {
                    scrollToAnchor(str, false);
                }
            }
        }
        LongSparseArray longSparseArray = new LongSparseArray(1);
        longSparseArray.put(tL_webPage.id, tL_webPage);
        MessagesStorage.getInstance(i).putWebPages(longSparseArray);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$open$53(final int i, final TLRPC.WebPage webPage, final MessageObject messageObject, final boolean z, final String str, final TLObject tLObject, TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ArticleViewer$$ExternalSyntheticLambda38
            @Override // java.lang.Runnable
            public final void run() throws NoSuchFieldException, InterruptedException, Resources.NotFoundException, PackageManager.NameNotFoundException, SecurityException {
                this.f$0.lambda$open$52(tLObject, i, webPage, messageObject, z, str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$open$54() {
        FrameLayout frameLayout = this.containerView;
        if (frameLayout == null || this.windowView == null) {
            return;
        }
        frameLayout.setLayerType(0, null);
        this.animationInProgress = 0;
        AndroidUtilities.hideKeyboard(this.parentActivity.getCurrentFocus());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$open$55(AnimatorSet animatorSet) {
        this.notificationsLocker.lock();
        animatorSet.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openWebpageUrl$10(int i, Browser.Progress progress) {
        if (this.lastReqId == i && this.openUrlReqId != 0) {
            ConnectionsManager.getInstance(this.currentAccount).cancelRequest(this.openUrlReqId, false);
            this.openUrlReqId = 0;
        }
        if (this.loadingProgress == progress) {
            this.loadingProgress = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openWebpageUrl$6(Browser.Progress progress) {
        Sheet sheet = this.sheet;
        if (sheet != null) {
            sheet.dismiss(true);
        }
        if (this.loadingProgress == progress) {
            this.loadingProgress = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Boolean lambda$openWebpageUrl$7(String str, boolean[] zArr, final Browser.Progress progress) {
        if (!Browser.isInternalUri(Uri.parse(str), zArr)) {
            return Boolean.FALSE;
        }
        if (progress != null) {
            progress.onEnd(new Runnable() { // from class: org.telegram.ui.ArticleViewer$$ExternalSyntheticLambda65
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$openWebpageUrl$6(progress);
                }
            });
        } else {
            Sheet sheet = this.sheet;
            if (sheet != null) {
                sheet.dismiss(true);
            }
        }
        Browser.openUrl(this.parentActivity, Uri.parse(str), true, true, false, progress, null, true, true, false);
        return Boolean.TRUE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x004f, code lost:
    
        if (org.telegram.messenger.SharedConfig.inappBrowser != false) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x005d, code lost:
    
        if ((r3.cached_page instanceof org.telegram.tgnet.TLRPC.TL_page) != false) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0071, code lost:
    
        if (org.telegram.messenger.SharedConfig.inappBrowser != false) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0073, code lost:
    
        addPageToStack(r8.url, 1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0079, code lost:
    
        org.telegram.messenger.browser.Browser.openUrl(r2.parentActivity, r8.url);
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0080, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:?, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ void lambda$openWebpageUrl$8(int i, Browser.Progress progress, TLObject tLObject, String str, Utilities.Callback0Return callback0Return, TLRPC.TL_messages_getWebPage tL_messages_getWebPage) throws PackageManager.NameNotFoundException {
        TLRPC.WebPage webPage;
        if (this.openUrlReqId == 0 || i != this.lastReqId) {
            return;
        }
        if (progress != null) {
            progress.end();
        }
        this.openUrlReqId = 0;
        showProgressView(true, false);
        if (!this.isVisible) {
            return;
        }
        if (tLObject instanceof TLRPC.TL_messages_webPage) {
            TLRPC.TL_messages_webPage tL_messages_webPage = (TLRPC.TL_messages_webPage) tLObject;
            MessagesController.getInstance(this.currentAccount).putUsers(tL_messages_webPage.users, false);
            MessagesController.getInstance(this.currentAccount).putChats(tL_messages_webPage.chats, false);
            webPage = tL_messages_webPage.webpage;
            if (webPage == null || !(webPage.cached_page instanceof TLRPC.TL_page)) {
                if (((Boolean) callback0Return.run()).booleanValue()) {
                    return;
                }
            }
            addPageToStack(webPage, str, 1);
            return;
        }
        if (tLObject instanceof TLRPC.TL_webPage) {
            webPage = (TLRPC.TL_webPage) tLObject;
        }
        if (((Boolean) callback0Return.run()).booleanValue()) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openWebpageUrl$9(final int i, final Browser.Progress progress, final String str, final Utilities.Callback0Return callback0Return, final TLRPC.TL_messages_getWebPage tL_messages_getWebPage, final TLObject tLObject, TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ArticleViewer$$ExternalSyntheticLambda68
            @Override // java.lang.Runnable
            public final void run() throws PackageManager.NameNotFoundException {
                this.f$0.lambda$openWebpageUrl$8(i, progress, tLObject, str, callback0Return, tL_messages_getWebPage);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processSearch$47(int i, ArrayList arrayList, String str) throws NoSuchFieldException, InterruptedException, Resources.NotFoundException, SecurityException {
        if (i == this.lastSearchIndex) {
            showSearchPanel(true);
            this.searchResults = arrayList;
            this.searchText = str;
            this.pages[0].adapter.searchTextOffset.clear();
            this.pages[0].listView.invalidateViews();
            scrollToSearchIndex(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public /* synthetic */ void lambda$processSearch$48(ArrayList arrayList, HashMap map, final String str, final int i) {
        TLRPC.PageBlock pageBlock;
        String string;
        String str2;
        String lowerCase;
        AnonymousClass1 anonymousClass1;
        TLRPC.PageBlock pageBlock2;
        String str3;
        final ArrayList arrayList2 = new ArrayList();
        int size = arrayList.size();
        char c = 0;
        int i2 = 0;
        while (i2 < size) {
            Object obj = arrayList.get(i2);
            TLRPC.PageBlock pageBlock3 = (TLRPC.PageBlock) map.get(obj);
            if (obj instanceof TLRPC.RichText) {
                TLRPC.RichText richText = (TLRPC.RichText) obj;
                WebpageAdapter webpageAdapter = this.pages[c].adapter;
                String str4 = null;
                pageBlock = pageBlock3;
                CharSequence text = getText(webpageAdapter, (View) null, richText, richText, pageBlock3, 1000);
                str2 = str4;
                if (!TextUtils.isEmpty(text)) {
                    string = text.toString();
                    str3 = str4;
                    lowerCase = string.toLowerCase();
                    anonymousClass1 = str3;
                }
                lowerCase = str2;
                anonymousClass1 = str2;
            } else {
                String str5 = null;
                pageBlock = pageBlock3;
                str2 = str5;
                if (obj instanceof String) {
                    string = (String) obj;
                    str3 = str5;
                    lowerCase = string.toLowerCase();
                    anonymousClass1 = str3;
                }
                lowerCase = str2;
                anonymousClass1 = str2;
            }
            if (lowerCase != null) {
                int i3 = 0;
                while (true) {
                    int iIndexOf = lowerCase.indexOf(str, i3);
                    if (iIndexOf >= 0) {
                        int length = str.length() + iIndexOf;
                        if (iIndexOf == 0 || AndroidUtilities.isPunctuationCharacter(lowerCase.charAt(iIndexOf - 1))) {
                            SearchResult searchResult = new SearchResult();
                            searchResult.index = iIndexOf;
                            pageBlock2 = pageBlock;
                            searchResult.block = pageBlock2;
                            searchResult.text = obj;
                            arrayList2.add(searchResult);
                        } else {
                            pageBlock2 = pageBlock;
                        }
                        pageBlock = pageBlock2;
                        i3 = length;
                    }
                }
            }
            i2++;
            c = 0;
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ArticleViewer$$ExternalSyntheticLambda71
            @Override // java.lang.Runnable
            public final void run() throws NoSuchFieldException, InterruptedException, Resources.NotFoundException, SecurityException {
                this.f$0.lambda$processSearch$47(i, arrayList2, str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processSearch$49(final String str, final int i) {
        final HashMap map = new HashMap(this.pages[0].adapter.textToBlocks);
        final ArrayList arrayList = new ArrayList(this.pages[0].adapter.textBlocks);
        this.searchRunnable = null;
        Utilities.searchQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.ArticleViewer$$ExternalSyntheticLambda69
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$processSearch$48(arrayList, map, str, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ WindowInsets lambda$setParentActivity$11(View view, WindowInsets windowInsets) {
        return Build.VERSION.SDK_INT >= 30 ? WindowInsets.CONSUMED : windowInsets.consumeSystemWindowInsets();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$setParentActivity$12(View view, int i) throws UnsupportedEncodingException {
        if (!(view instanceof BlockRelatedArticlesCell)) {
            return false;
        }
        BlockRelatedArticlesCell blockRelatedArticlesCell = (BlockRelatedArticlesCell) view;
        showCopyPopup(((TLRPC.TL_pageRelatedArticle) blockRelatedArticlesCell.currentBlock.parent.articles.get(blockRelatedArticlesCell.currentBlock.num)).url);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setParentActivity$13(TLObject tLObject, int i, long j) {
        if (this.previewsReqId == 0) {
            return;
        }
        this.previewsReqId = 0;
        showProgressView(true, false);
        if (tLObject != null) {
            TLRPC.TL_contacts_resolvedPeer tL_contacts_resolvedPeer = (TLRPC.TL_contacts_resolvedPeer) tLObject;
            MessagesController.getInstance(i).putUsers(tL_contacts_resolvedPeer.users, false);
            MessagesStorage.getInstance(i).putUsersAndChats(tL_contacts_resolvedPeer.users, tL_contacts_resolvedPeer.chats, false, true);
            if (tL_contacts_resolvedPeer.users.isEmpty()) {
                return;
            }
            openPreviewsChat((TLRPC.User) tL_contacts_resolvedPeer.users.get(0), j);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setParentActivity$14(final int i, final long j, final TLObject tLObject, TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ArticleViewer$$ExternalSyntheticLambda56
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$setParentActivity$13(tLObject, i, j);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setParentActivity$15(PageLayout pageLayout, View view, int i, float f, float f2) {
        if (this.sheet == null || i - 1 >= 0) {
            TextSelectionHelper.ArticleTextSelectionHelper articleTextSelectionHelper = this.textSelectionHelper;
            if (articleTextSelectionHelper != null) {
                if (articleTextSelectionHelper.isInSelectionMode()) {
                    this.textSelectionHelper.clear();
                    return;
                }
                this.textSelectionHelper.clear();
            }
            WebpageAdapter adapter = pageLayout.getAdapter();
            if ((view instanceof ReportCell) && adapter.currentPage != null) {
                ReportCell reportCell = (ReportCell) view;
                if (this.previewsReqId == 0) {
                    if ((!reportCell.hasViews || f >= view.getMeasuredWidth() / 2) && !reportCell.web) {
                        TLObject userOrChat = MessagesController.getInstance(this.currentAccount).getUserOrChat("previews");
                        if (userOrChat instanceof TLRPC.TL_user) {
                            openPreviewsChat((TLRPC.User) userOrChat, adapter.currentPage.id);
                            return;
                        }
                        final int i2 = UserConfig.selectedAccount;
                        final long j = adapter.currentPage.id;
                        showProgressView(true, true);
                        TLRPC.TL_contacts_resolveUsername tL_contacts_resolveUsername = new TLRPC.TL_contacts_resolveUsername();
                        tL_contacts_resolveUsername.username = "previews";
                        this.previewsReqId = ConnectionsManager.getInstance(i2).sendRequest(tL_contacts_resolveUsername, new RequestDelegate() { // from class: org.telegram.ui.ArticleViewer$$ExternalSyntheticLambda27
                            @Override // org.telegram.tgnet.RequestDelegate
                            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                                this.f$0.lambda$setParentActivity$14(i2, j, tLObject, tL_error);
                            }
                        });
                        return;
                    }
                    return;
                }
                return;
            }
            if (i < 0 || i >= adapter.localBlocks.size()) {
                return;
            }
            TLRPC.PageBlock pageBlock = (TLRPC.PageBlock) adapter.localBlocks.get(i);
            TLRPC.PageBlock lastNonListPageBlock = getLastNonListPageBlock(pageBlock);
            if (lastNonListPageBlock instanceof TL_pageBlockDetailsChild) {
                lastNonListPageBlock = ((TL_pageBlockDetailsChild) lastNonListPageBlock).block;
            }
            if (lastNonListPageBlock instanceof TLRPC.TL_pageBlockChannel) {
                MessagesController.getInstance(this.currentAccount).openByUserName(ChatObject.getPublicUsername(((TLRPC.TL_pageBlockChannel) lastNonListPageBlock).channel), this.parentFragment, 2);
                close(false, true);
                return;
            }
            if (lastNonListPageBlock instanceof TL_pageBlockRelatedArticlesChild) {
                TL_pageBlockRelatedArticlesChild tL_pageBlockRelatedArticlesChild = (TL_pageBlockRelatedArticlesChild) lastNonListPageBlock;
                openWebpageUrl(((TLRPC.TL_pageRelatedArticle) tL_pageBlockRelatedArticlesChild.parent.articles.get(tL_pageBlockRelatedArticlesChild.num)).url, null, null);
                return;
            }
            if (lastNonListPageBlock instanceof TLRPC.TL_pageBlockDetails) {
                View lastNonListCell = getLastNonListCell(view);
                if (lastNonListCell instanceof BlockDetailsCell) {
                    this.pressedLinkOwnerLayout = null;
                    this.pressedLinkOwnerView = null;
                    if (adapter.blocks.indexOf(pageBlock) < 0) {
                        return;
                    }
                    TLRPC.TL_pageBlockDetails tL_pageBlockDetails = (TLRPC.TL_pageBlockDetails) lastNonListPageBlock;
                    tL_pageBlockDetails.open = !tL_pageBlockDetails.open;
                    int itemCount = adapter.getItemCount();
                    adapter.updateRows();
                    int iAbs = Math.abs(adapter.getItemCount() - itemCount);
                    BlockDetailsCell blockDetailsCell = (BlockDetailsCell) lastNonListCell;
                    blockDetailsCell.arrow.setAnimationProgressAnimated(tL_pageBlockDetails.open ? BitmapDescriptorFactory.HUE_RED : 1.0f);
                    blockDetailsCell.invalidate();
                    if (iAbs != 0) {
                        int i3 = i + 1;
                        if (tL_pageBlockDetails.open) {
                            adapter.notifyItemRangeInserted(i3, iAbs);
                        } else {
                            adapter.notifyItemRangeRemoved(i3, iAbs);
                        }
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setParentActivity$16(String str) {
        EditTextBoldCursor editTextBoldCursor = this.actionBar.addressEditText;
        if (TextUtils.isEmpty(str)) {
            str = "about:blank";
        }
        editTextBoldCursor.setText(str);
        EditTextBoldCursor editTextBoldCursor2 = this.actionBar.addressEditText;
        editTextBoldCursor2.setSelection(editTextBoldCursor2.getText().length());
        AndroidUtilities.showKeyboard(this.actionBar.addressEditText);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setParentActivity$17(PageLayout pageLayout, Activity activity, String str) {
        if (TextUtils.isEmpty(str) || pageLayout.getWebView() == null) {
            return;
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(str.trim());
        AndroidUtilities.addLinksSafe(spannableStringBuilder, 1, false, true);
        URLSpan[] uRLSpanArr = (URLSpan[]) spannableStringBuilder.getSpans(0, spannableStringBuilder.length(), URLSpan.class);
        int length = spannableStringBuilder.length();
        int iMax = 0;
        for (int i = 0; i < uRLSpanArr.length; i++) {
            length = Math.min(spannableStringBuilder.getSpanStart(uRLSpanArr[i]), length);
            iMax = Math.max(spannableStringBuilder.getSpanEnd(uRLSpanArr[i]), iMax);
        }
        this.actionBar.showAddress(false, true);
        Uri uriUriParseSafe = Utilities.uriParseSafe(str);
        if ((uRLSpanArr.length <= 0 || length != 0 || iMax <= 0) && (uriUriParseSafe == null || uriUriParseSafe.getScheme() == null)) {
            AddressBarList.pushRecentSearch(activity, str);
            pageLayout.getWebView().loadUrl(SearchEngine.getCurrent().getSearchURL(str));
            return;
        }
        if (uriUriParseSafe != null && uriUriParseSafe.getScheme() == null && uriUriParseSafe.getHost() == null && uriUriParseSafe.getPath() != null) {
            str = Browser.replace(uriUriParseSafe, "https", null, uriUriParseSafe.getPath(), "/");
        }
        pageLayout.getWebView().loadUrl(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setParentActivity$18(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.actionBar.addressEditText.setText(str);
        EditTextBoldCursor editTextBoldCursor = this.actionBar.addressEditText;
        editTextBoldCursor.setSelection(editTextBoldCursor.getText().length());
        AndroidUtilities.showKeyboard(this.actionBar.addressEditText);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setParentActivity$19(String str, PageLayout pageLayout, View view) {
        this.actionBar.showAddress(false, true);
        AndroidUtilities.hideKeyboard(this.actionBar.addressEditText);
        if (TextUtils.isEmpty(str)) {
            str = "about:blank";
        }
        AndroidUtilities.addToClipboard(str);
        BulletinFactory.of(pageLayout.webViewContainer, getResourcesProvider()).createCopyLinkBulletin().show(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$setParentActivity$20(PageLayout pageLayout, Activity activity, String str) {
        if (TextUtils.isEmpty(str) || pageLayout.getWebView() == null) {
            return;
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(str.trim());
        AndroidUtilities.addLinksSafe(spannableStringBuilder, 1, false, true);
        URLSpan[] uRLSpanArr = (URLSpan[]) spannableStringBuilder.getSpans(0, spannableStringBuilder.length(), URLSpan.class);
        int length = spannableStringBuilder.length();
        int iMax = 0;
        for (int i = 0; i < uRLSpanArr.length; i++) {
            length = Math.min(spannableStringBuilder.getSpanStart(uRLSpanArr[i]), length);
            iMax = Math.max(spannableStringBuilder.getSpanEnd(uRLSpanArr[i]), iMax);
        }
        Uri uriUriParseSafe = Utilities.uriParseSafe(str);
        if (uriUriParseSafe == null || !TextUtils.equals(uriUriParseSafe.getScheme(), "javascript")) {
            if ((uRLSpanArr.length <= 0 || length != 0 || iMax <= 0) && (uriUriParseSafe == null || uriUriParseSafe.getScheme() == null)) {
                AddressBarList.pushRecentSearch(activity, str);
                pageLayout.getWebView().loadUrl(SearchEngine.getCurrent().getSearchURL(str));
                return;
            }
            if (uriUriParseSafe != null && uriUriParseSafe.getScheme() == null && uriUriParseSafe.getHost() == null && uriUriParseSafe.getPath() != null) {
                str = Browser.replace(uriUriParseSafe, "https", null, uriUriParseSafe.getPath(), "/");
            }
            pageLayout.getWebView().loadUrl(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setParentActivity$21(final Activity activity, View view) {
        if (this.actionBar.longClicked) {
            return;
        }
        final PageLayout pageLayout = this.pages[0];
        if (!pageLayout.isWeb()) {
            if (this.sheet == null) {
                pageLayout.listView.smoothScrollToPosition(0);
                return;
            }
            SmoothScroller smoothScroller = new SmoothScroller(activity);
            if (this.sheet.halfSize()) {
                smoothScroller.setTargetPosition(1);
                smoothScroller.setOffset(-AndroidUtilities.dp(32.0f));
            } else {
                smoothScroller.setTargetPosition(0);
            }
            pageLayout.layoutManager.startSmoothScroll(smoothScroller);
            return;
        }
        if (pageLayout.getWebView() == null || this.actionBar.isAddressing()) {
            return;
        }
        if (this.addressBarList != null) {
            BotWebViewContainer.MyWebView webView = pageLayout.getWebView();
            String title = webView != null ? webView.getTitle() : null;
            final String strMagic2tonsite = BotWebViewContainer.magic2tonsite(webView != null ? webView.getUrl() : null);
            AddressBarList addressBarList = this.addressBarList;
            Bitmap favicon = webView != null ? webView.getFavicon() : null;
            if (TextUtils.isEmpty(title)) {
                title = LocaleController.getString(R.string.WebEmpty);
            }
            addressBarList.setCurrent(favicon, title, TextUtils.isEmpty(strMagic2tonsite) ? "about:blank" : strMagic2tonsite, new Runnable() { // from class: org.telegram.ui.ArticleViewer$$ExternalSyntheticLambda28
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$setParentActivity$16(strMagic2tonsite);
                }
            }, new Utilities.Callback() { // from class: org.telegram.ui.ArticleViewer$$ExternalSyntheticLambda29
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    this.f$0.lambda$setParentActivity$17(pageLayout, activity, (String) obj);
                }
            }, new Utilities.Callback() { // from class: org.telegram.ui.ArticleViewer$$ExternalSyntheticLambda30
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    this.f$0.lambda$setParentActivity$18((String) obj);
                }
            }, new ArticleViewer$$ExternalSyntheticLambda31(this), new View.OnClickListener() { // from class: org.telegram.ui.ArticleViewer$$ExternalSyntheticLambda32
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    this.f$0.lambda$setParentActivity$19(strMagic2tonsite, pageLayout, view2);
                }
            });
        }
        this.actionBar.showAddress("", new Utilities.Callback() { // from class: org.telegram.ui.ArticleViewer$$ExternalSyntheticLambda33
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                ArticleViewer.lambda$setParentActivity$20(pageLayout, activity, (String) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setParentActivity$22() {
        float currentProgress = 0.7f - this.actionBar.lineProgressView.getCurrentProgress();
        if (currentProgress > BitmapDescriptorFactory.HUE_RED) {
            float f = currentProgress < 0.25f ? 0.01f : 0.02f;
            LineProgressView lineProgressView = this.actionBar.lineProgressView;
            lineProgressView.setProgress(lineProgressView.getCurrentProgress() + f, true);
            AndroidUtilities.runOnUIThread(this.lineProgressTickRunnable, 100L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setParentActivity$23(View view) throws PackageManager.NameNotFoundException {
        if (this.actionBar.isSearching()) {
            this.actionBar.showSearch(false, true);
            return;
        }
        if (this.actionBar.isAddressing()) {
            this.actionBar.showAddress(false, true);
            return;
        }
        if (isFirstArticle() && this.pages[0].hasBackButton()) {
            this.pages[0].back();
            return;
        }
        if (this.pagesStack.size() > 1) {
            goBack();
            return;
        }
        Sheet sheet = this.sheet;
        if (sheet != null) {
            sheet.dismiss(false);
        } else {
            close(true, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$setParentActivity$24(int i, int i2, BotWebViewContainer.MyWebView myWebView) {
        for (int i3 = 0; i3 < i - i2; i3++) {
            myWebView.goBack();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setParentActivity$27(float f) {
        this.actionBar.backButtonDrawable.setRotation(f, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setParentActivity$28(ItemOptions itemOptions, final float f) {
        this.actionBar.backButtonDrawable.setRotation(BitmapDescriptorFactory.HUE_RED, true);
        itemOptions.setOnDismiss(new Runnable() { // from class: org.telegram.ui.ArticleViewer$$ExternalSyntheticLambda63
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$setParentActivity$27(f);
            }
        });
        itemOptions.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$setParentActivity$29(View view) {
        ActionBarMenuSubItem last;
        if (this.pages[0] == null) {
            return false;
        }
        final float rotation = this.actionBar.backButtonDrawable.getRotation();
        Sheet sheet = this.sheet;
        final ItemOptions itemOptionsMakeOptions = ItemOptions.makeOptions(sheet != null ? sheet.windowView : this.windowView, view);
        int color = SharedConfig.adaptableColorInBrowser ? Theme.getColor(Theme.key_iv_background) : this.pages[0].getBackgroundColor();
        int color2 = SharedConfig.adaptableColorInBrowser ? Theme.getColor(Theme.key_windowBackgroundWhiteBlackText) : AndroidUtilities.computePerceivedBrightness(this.pages[0].getBackgroundColor()) >= 0.721f ? -16777216 : -1;
        int iMultAlpha = Theme.multAlpha(color2, 0.65f);
        final BotWebViewContainer.MyWebView webView = this.pages[0].getWebView();
        int i = 3;
        if (webView != null) {
            WebBackForwardList webBackForwardListCopyBackForwardList = webView.copyBackForwardList();
            final int currentIndex = webBackForwardListCopyBackForwardList.getCurrentIndex();
            if (webBackForwardListCopyBackForwardList.getCurrentIndex() > 0) {
                final int i2 = 0;
                while (i2 < currentIndex) {
                    WebHistoryItem itemAtIndex = webBackForwardListCopyBackForwardList.getItemAtIndex(i2);
                    itemOptionsMakeOptions.add(itemAtIndex.getTitle(), new Runnable() { // from class: org.telegram.ui.ArticleViewer$$ExternalSyntheticLambda34
                        @Override // java.lang.Runnable
                        public final void run() {
                            ArticleViewer.lambda$setParentActivity$24(currentIndex, i2, webView);
                        }
                    });
                    ActionBarMenuSubItem last2 = itemOptionsMakeOptions.getLast();
                    if (last2 != null) {
                        last2.setSubtext(itemAtIndex.getUrl());
                        final Bitmap favicon = webView.getFavicon(itemAtIndex.getUrl());
                        if (favicon == null) {
                            favicon = itemAtIndex.getFavicon();
                        }
                        final Paint paint = new Paint(i);
                        last2.setTextAndIcon(itemAtIndex.getTitle(), 0, new Drawable() { // from class: org.telegram.ui.ArticleViewer.16
                            @Override // android.graphics.drawable.Drawable
                            public void draw(Canvas canvas) {
                                if (favicon != null) {
                                    canvas.save();
                                    canvas.translate(getBounds().left, getBounds().top);
                                    canvas.scale(getBounds().width() / favicon.getWidth(), getBounds().height() / favicon.getHeight());
                                    canvas.drawBitmap(favicon, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, paint);
                                    canvas.restore();
                                }
                            }

                            @Override // android.graphics.drawable.Drawable
                            public int getIntrinsicHeight() {
                                return AndroidUtilities.dp(24.0f);
                            }

                            @Override // android.graphics.drawable.Drawable
                            public int getIntrinsicWidth() {
                                return AndroidUtilities.dp(24.0f);
                            }

                            @Override // android.graphics.drawable.Drawable
                            public int getOpacity() {
                                return -2;
                            }

                            @Override // android.graphics.drawable.Drawable
                            public void setAlpha(int i3) {
                            }

                            @Override // android.graphics.drawable.Drawable
                            public void setColorFilter(ColorFilter colorFilter) {
                            }
                        });
                        last2.setTextColor(color2);
                        last2.setSubtextColor(iMultAlpha);
                    }
                    i2++;
                    i = 3;
                }
            }
        }
        for (final int size = this.pagesStack.size() - 2; size >= 0; size--) {
            Object obj = this.pagesStack.get(size);
            if (obj instanceof CachedWeb) {
                CachedWeb cachedWeb = (CachedWeb) obj;
                itemOptionsMakeOptions.add(cachedWeb.getTitle(), new Runnable() { // from class: org.telegram.ui.ArticleViewer$$ExternalSyntheticLambda35
                    @Override // java.lang.Runnable
                    public final void run() throws PackageManager.NameNotFoundException {
                        this.f$0.lambda$setParentActivity$25(size);
                    }
                });
                last = itemOptionsMakeOptions.getLast();
                if (last != null) {
                    last.setSubtext(cachedWeb.lastUrl);
                    final Bitmap favicon2 = webView != null ? webView.getFavicon(cachedWeb.lastUrl) : null;
                    if (favicon2 == null) {
                        favicon2 = cachedWeb.favicon;
                    }
                    final Paint paint2 = new Paint(3);
                    last.setTextAndIcon(cachedWeb.getTitle(), 0, new Drawable() { // from class: org.telegram.ui.ArticleViewer.17
                        @Override // android.graphics.drawable.Drawable
                        public void draw(Canvas canvas) {
                            if (favicon2 != null) {
                                canvas.save();
                                canvas.translate(getBounds().left, getBounds().top);
                                canvas.scale(getBounds().width() / favicon2.getWidth(), getBounds().height() / favicon2.getHeight());
                                canvas.drawBitmap(favicon2, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, paint2);
                                canvas.restore();
                            }
                        }

                        @Override // android.graphics.drawable.Drawable
                        public int getIntrinsicHeight() {
                            return AndroidUtilities.dp(24.0f);
                        }

                        @Override // android.graphics.drawable.Drawable
                        public int getIntrinsicWidth() {
                            return AndroidUtilities.dp(24.0f);
                        }

                        @Override // android.graphics.drawable.Drawable
                        public int getOpacity() {
                            return -2;
                        }

                        @Override // android.graphics.drawable.Drawable
                        public void setAlpha(int i3) {
                        }

                        @Override // android.graphics.drawable.Drawable
                        public void setColorFilter(ColorFilter colorFilter) {
                        }
                    });
                    last.setTextColor(color2);
                    last.setSubtextColor(iMultAlpha);
                    last.setColors(color2, color2);
                }
            } else if (obj instanceof TLRPC.WebPage) {
                TLRPC.WebPage webPage = (TLRPC.WebPage) obj;
                itemOptionsMakeOptions.add(webPage.title, new Runnable() { // from class: org.telegram.ui.ArticleViewer$$ExternalSyntheticLambda36
                    @Override // java.lang.Runnable
                    public final void run() throws PackageManager.NameNotFoundException {
                        this.f$0.lambda$setParentActivity$26(size);
                    }
                });
                last = itemOptionsMakeOptions.getLast();
                if (last != null) {
                    last.setTextAndIcon(webPage.title, R.drawable.msg_instant);
                    last.setTextColor(color2);
                    if (!TextUtils.isEmpty(webPage.site_name)) {
                        last.setSubtext(webPage.site_name);
                    }
                    last.setSubtextColor(iMultAlpha);
                    last.imageView.getLayoutParams().width = AndroidUtilities.dp(24.0f);
                    last.imageView.setScaleX(1.45f);
                    last.imageView.setScaleY(1.45f);
                    last.setColors(color2, color2);
                }
            }
        }
        itemOptionsMakeOptions.setScrimViewBackground(Theme.createCircleDrawable(AndroidUtilities.dp(40.0f), this.actionBar.getBackgroundColor()));
        itemOptionsMakeOptions.setBackgroundColor(color);
        itemOptionsMakeOptions.updateColors();
        if (itemOptionsMakeOptions.getItemsCount() <= 0) {
            return false;
        }
        checkScrollAnimated(new Runnable() { // from class: org.telegram.ui.ArticleViewer$$ExternalSyntheticLambda37
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$setParentActivity$28(itemOptionsMakeOptions, rotation);
            }
        });
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setParentActivity$30(long j) {
        Sheet sheet = this.sheet;
        if (sheet != null) {
            sheet.dismiss(true);
        }
        BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
        if (safeLastFragment != null) {
            Bundle bundle = new Bundle();
            bundle.putLong("user_id", j);
            safeLastFragment.presentFragment(new ChatActivity(bundle));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setParentActivity$31() {
        this.sheet.dismiss(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setParentActivity$32() {
        this.sheet.dismiss(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setParentActivity$33(String str) {
        Browser.openInExternalBrowser(this.parentActivity, str, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setParentActivity$34(String str, String str2, Boolean bool) {
        RestrictedDomainsList restrictedDomainsList = RestrictedDomainsList.getInstance();
        if (TextUtils.isEmpty(str2) || TextUtils.equals(str2, str)) {
            str2 = null;
        }
        restrictedDomainsList.setRestricted(true, str, str2);
        if (bool.booleanValue()) {
            LaunchActivity.whenResumed = new Runnable() { // from class: org.telegram.ui.ArticleViewer$$ExternalSyntheticLambda52
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.showRestrictedWebsiteToast();
                }
            };
        } else {
            showRestrictedWebsiteToast();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$setParentActivity$35(CheckBoxCell checkBoxCell, View view) {
        checkBoxCell.setChecked(!checkBoxCell.isChecked(), true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$setParentActivity$36(CheckBoxCell checkBoxCell, Utilities.Callback callback, Runnable runnable, AlertDialog alertDialog, int i) {
        if (checkBoxCell.isChecked()) {
            callback.run(Boolean.TRUE);
        }
        runnable.run();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$setParentActivity$37(CheckBoxCell checkBoxCell, Utilities.Callback callback, AlertDialog alertDialog, int i) {
        if (checkBoxCell.isChecked()) {
            callback.run(Boolean.FALSE);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setParentActivity$38(View view) {
        int iIntValue = ((Integer) view.getTag()).intValue();
        this.selectedFont = iIntValue;
        int i = 0;
        int i2 = 0;
        while (i2 < 2) {
            this.fontCells[i2].select(i2 == iIntValue, true);
            i2++;
        }
        updatePaintFonts();
        while (true) {
            PageLayout[] pageLayoutArr = this.pages;
            if (i >= pageLayoutArr.length) {
                return;
            }
            pageLayoutArr[i].adapter.notifyDataSetChanged();
            i++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setParentActivity$39(Activity activity, Integer num) throws PackageManager.NameNotFoundException {
        WebInstantView.Loader loader;
        final String url;
        String openURL;
        BaseFragment.BottomSheetParams bottomSheetParams;
        BaseFragment safeLastFragment;
        BaseFragment historyFragment;
        String url2;
        FrameLayout frameLayout;
        BottomSheet shareAlert;
        String url3;
        if ((this.pages[0].isArticle() && this.pages[0].adapter.currentPage == null) || this.parentActivity == null) {
            return;
        }
        if (num.intValue() == 1) {
            this.actionBar.showSearch(true, true);
            return;
        }
        if (num.intValue() != 2) {
            if (num.intValue() == 6) {
                if (this.pages[0].isWeb()) {
                    if (this.pages[0].getWebView() == null) {
                        return;
                    }
                    url2 = this.pages[0].getWebView().getUrl();
                    frameLayout = this.pages[0].webViewContainer;
                } else {
                    if (this.pages[0].adapter.currentPage == null) {
                        return;
                    }
                    url2 = this.pages[0].adapter.currentPage.url;
                    frameLayout = this.pages[0];
                }
                String strMagic2tonsite = BotWebViewContainer.magic2tonsite(url2);
                final long clientUserId = UserConfig.getInstance(this.currentAccount).getClientUserId();
                SendMessagesHelper.getInstance(this.currentAccount).sendMessage(SendMessagesHelper.SendMessageParams.of(strMagic2tonsite, clientUserId));
                TLRPC.TL_message tL_message = new TLRPC.TL_message();
                TLRPC.TL_peerUser tL_peerUser = new TLRPC.TL_peerUser();
                tL_message.peer_id = tL_peerUser;
                tL_peerUser.user_id = clientUserId;
                TLRPC.TL_peerUser tL_peerUser2 = new TLRPC.TL_peerUser();
                tL_message.from_id = tL_peerUser2;
                tL_peerUser2.user_id = clientUserId;
                tL_message.message = strMagic2tonsite;
                TLRPC.TL_messageMediaWebPage tL_messageMediaWebPage = new TLRPC.TL_messageMediaWebPage();
                tL_message.media = tL_messageMediaWebPage;
                tL_messageMediaWebPage.webpage = new TLRPC.TL_webPage();
                TLRPC.WebPage webPage = tL_message.media.webpage;
                webPage.url = strMagic2tonsite;
                webPage.display_url = strMagic2tonsite;
                NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.bookmarkAdded, new MessageObject(this.currentAccount, tL_message, false, false));
                BulletinFactory.of(frameLayout, getResourcesProvider()).createSimpleBulletin(R.raw.saved_messages, AndroidUtilities.replaceSingleTag(LocaleController.getString(R.string.WebBookmarkedToast), new Runnable() { // from class: org.telegram.ui.ArticleViewer$$ExternalSyntheticLambda40
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$setParentActivity$30(clientUserId);
                    }
                })).show(true);
                return;
            }
            if (num.intValue() == 7) {
                bottomSheetParams = new BaseFragment.BottomSheetParams();
                bottomSheetParams.transitionFromLeft = true;
                safeLastFragment = LaunchActivity.getSafeLastFragment();
                if (safeLastFragment == null) {
                    return;
                } else {
                    historyFragment = new BookmarksFragment(this.sheet != null ? new Runnable() { // from class: org.telegram.ui.ArticleViewer$$ExternalSyntheticLambda43
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$setParentActivity$31();
                        }
                    } : null, new ArticleViewer$$ExternalSyntheticLambda31(this));
                }
            } else if (num.intValue() == 8) {
                bottomSheetParams = new BaseFragment.BottomSheetParams();
                bottomSheetParams.transitionFromLeft = true;
                safeLastFragment = LaunchActivity.getSafeLastFragment();
                if (safeLastFragment == null) {
                    return;
                } else {
                    historyFragment = new HistoryFragment(this.sheet != null ? new Runnable() { // from class: org.telegram.ui.ArticleViewer$$ExternalSyntheticLambda44
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$setParentActivity$32();
                        }
                    } : null, new ArticleViewer$$ExternalSyntheticLambda45(this));
                }
            } else {
                if (num.intValue() == 9) {
                    if (this.pages[0].getWebView() != null) {
                        this.pages[0].getWebView().goForward();
                        return;
                    }
                    return;
                }
                if (num.intValue() == 3) {
                    if (this.pages[0].isWeb()) {
                        if (this.pages[0].getWebView() == null) {
                            return;
                        }
                        url = this.pages[0].getWebView().getUrl();
                        openURL = this.pages[0].getWebView().getOpenURL();
                        BotWebViewContainer botWebViewContainer = this.pages[0].webViewContainer;
                    } else {
                        if (this.pages[0].adapter.currentPage == null) {
                            return;
                        }
                        url = this.pages[0].adapter.currentPage.url;
                        PageLayout pageLayout = this.pages[0];
                        openURL = null;
                    }
                    Activity activity2 = this.parentActivity;
                    if (activity2 == null || activity2.isFinishing() || url == null) {
                        return;
                    }
                    final String hostAuthority = AndroidUtilities.getHostAuthority(openURL, true);
                    final String hostAuthority2 = AndroidUtilities.getHostAuthority(url, true);
                    final Runnable runnable = new Runnable() { // from class: org.telegram.ui.ArticleViewer$$ExternalSyntheticLambda46
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$setParentActivity$33(url);
                        }
                    };
                    final Utilities.Callback callback = new Utilities.Callback() { // from class: org.telegram.ui.ArticleViewer$$ExternalSyntheticLambda47
                        @Override // org.telegram.messenger.Utilities.Callback
                        public final void run(Object obj) {
                            this.f$0.lambda$setParentActivity$34(hostAuthority2, hostAuthority, (Boolean) obj);
                        }
                    };
                    if (!this.pages[0].isWeb() || RestrictedDomainsList.getInstance().isRestricted(hostAuthority2) || RestrictedDomainsList.getInstance().incrementOpen(hostAuthority2) < 2) {
                        runnable.run();
                        return;
                    }
                    AlertDialog.Builder builder = new AlertDialog.Builder(activity, getResourcesProvider());
                    builder.setTitle(LocaleController.getString(R.string.BrowserExternalTitle));
                    LinearLayout linearLayout = new LinearLayout(activity);
                    linearLayout.setOrientation(1);
                    TextView textView = new TextView(activity);
                    if (Build.VERSION.SDK_INT >= 21) {
                        textView.setLetterSpacing(0.025f);
                    }
                    textView.setTextColor(Theme.getColor(Theme.key_dialogTextBlack));
                    textView.setTextSize(1, 16.0f);
                    linearLayout.addView(textView, LayoutHelper.createLinear(-1, -2, 0, 24, 0, 24, 0));
                    final CheckBoxCell checkBoxCell = new CheckBoxCell(activity, 1, null);
                    checkBoxCell.setMultiline(true);
                    checkBoxCell.getTextView().getLayoutParams().width = -1;
                    checkBoxCell.getTextView().setSingleLine(false);
                    checkBoxCell.getTextView().setMaxLines(3);
                    checkBoxCell.getTextView().setTextSize(1, 16.0f);
                    checkBoxCell.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ArticleViewer$$ExternalSyntheticLambda48
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            ArticleViewer.lambda$setParentActivity$35(checkBoxCell, view);
                        }
                    });
                    checkBoxCell.setBackground(Theme.createRadSelectorDrawable(Theme.getColor(Theme.key_listSelector), 9, 9));
                    linearLayout.addView(checkBoxCell, LayoutHelper.createLinear(-1, -2, 3, 8, 6, 8, 4));
                    textView.setText(AndroidUtilities.replaceTags(LocaleController.getString(R.string.BrowserExternalText)));
                    checkBoxCell.setText(AndroidUtilities.replaceTags(LocaleController.formatString(R.string.BrowserExternalCheck, hostAuthority2)), "", false, false);
                    builder.setView(linearLayout);
                    builder.setPositiveButton(LocaleController.getString(R.string.Continue), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.ArticleViewer$$ExternalSyntheticLambda49
                        @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                        public final void onClick(AlertDialog alertDialog, int i) {
                            ArticleViewer.lambda$setParentActivity$36(checkBoxCell, callback, runnable, alertDialog, i);
                        }
                    });
                    builder.setNegativeButton(LocaleController.getString(R.string.Cancel), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.ArticleViewer$$ExternalSyntheticLambda41
                        @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                        public final void onClick(AlertDialog alertDialog, int i) {
                            ArticleViewer.lambda$setParentActivity$37(checkBoxCell, callback, alertDialog, i);
                        }
                    });
                    builder.show();
                    return;
                }
                if (num.intValue() != 4) {
                    if (num.intValue() == 5) {
                        if (!this.pages[0].isWeb() || this.pages[0].getWebView() == null) {
                            return;
                        }
                        this.pages[0].getWebView().reload();
                        return;
                    }
                    if (num.intValue() != 10 || (loader = this.pages[0].currentInstantLoader) == null || loader.getWebPage() == null) {
                        return;
                    }
                    addPageToStack(loader.getWebPage(), null, 1);
                    return;
                }
                if (this.pages[0].isWeb()) {
                    openWebSettings();
                    return;
                }
                BottomSheet.Builder builder2 = new BottomSheet.Builder(this.parentActivity);
                builder2.setApplyTopPadding(false);
                LinearLayout linearLayout2 = new LinearLayout(this.parentActivity);
                linearLayout2.setPadding(0, 0, 0, AndroidUtilities.dp(4.0f));
                linearLayout2.setOrientation(1);
                HeaderCell headerCell = new HeaderCell(this.parentActivity, getResourcesProvider());
                headerCell.setText(LocaleController.getString(R.string.FontSize));
                linearLayout2.addView(headerCell, LayoutHelper.createLinear(-2, -2, 51, 3, 1, 3, 0));
                linearLayout2.addView(new TextSizeCell(this.parentActivity), LayoutHelper.createLinear(-1, -2, 51, 3, 0, 3, 0));
                HeaderCell headerCell2 = new HeaderCell(this.parentActivity, getResourcesProvider());
                headerCell2.setText(LocaleController.getString(R.string.FontType));
                linearLayout2.addView(headerCell2, LayoutHelper.createLinear(-2, -2, 51, 3, 4, 3, 2));
                int i = 0;
                while (i < 2) {
                    this.fontCells[i] = new FontCell(this.parentActivity);
                    if (i == 0) {
                        this.fontCells[i].setTextAndTypeface(LocaleController.getString(R.string.Default), Typeface.DEFAULT);
                    } else if (i == 1) {
                        this.fontCells[i].setTextAndTypeface("Serif", Typeface.SERIF);
                    }
                    this.fontCells[i].select(i == this.selectedFont, false);
                    this.fontCells[i].setTag(Integer.valueOf(i));
                    this.fontCells[i].setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ArticleViewer$$ExternalSyntheticLambda42
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            this.f$0.lambda$setParentActivity$38(view);
                        }
                    });
                    linearLayout2.addView(this.fontCells[i], LayoutHelper.createLinear(-1, 50));
                    i++;
                }
                builder2.setCustomView(linearLayout2);
                BottomSheet bottomSheetCreate = builder2.create();
                this.linkSheet = bottomSheetCreate;
                shareAlert = bottomSheetCreate;
            }
            safeLastFragment.showAsSheet(historyFragment, bottomSheetParams);
            return;
        }
        if (this.pages[0].isWeb()) {
            if (this.pages[0].getWebView() == null) {
                return;
            } else {
                url3 = this.pages[0].getWebView().getUrl();
            }
        } else if (this.pages[0].adapter.currentPage == null) {
            return;
        } else {
            url3 = this.pages[0].adapter.currentPage.url;
        }
        String strMagic2tonsite2 = BotWebViewContainer.magic2tonsite(url3);
        shareAlert = new ShareAlert(this.parentActivity, null, strMagic2tonsite2, false, strMagic2tonsite2, false, AndroidUtilities.computePerceivedBrightness(this.actionBar.getBackgroundColor()) < 0.721f ? new DarkThemeResourceProvider() : null);
        showDialog(shareAlert);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setParentActivity$40(View view) {
        Sheet sheet = this.sheet;
        if (sheet != null) {
            sheet.dismiss(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$setParentActivity$41(View view, MotionEvent motionEvent) {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setParentActivity$42(Integer num) {
        FrameLayout frameLayout = this.searchPanel;
        float f = -num.intValue();
        this.searchPanelTranslation = f;
        frameLayout.setTranslationY(f + (AndroidUtilities.dp(51.0f) * (1.0f - this.searchPanelAlpha)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setParentActivity$43(View view) throws NoSuchFieldException, InterruptedException, Resources.NotFoundException, SecurityException {
        if (!this.pages[0].isWeb()) {
            scrollToSearchIndex(this.currentSearchIndex - 1);
        } else if (this.pages[0].getWebView() != null) {
            this.pages[0].getWebView().findNext(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setParentActivity$44(View view) throws NoSuchFieldException, InterruptedException, Resources.NotFoundException, SecurityException {
        if (!this.pages[0].isWeb()) {
            scrollToSearchIndex(this.currentSearchIndex + 1);
        } else if (this.pages[0].getWebView() != null) {
            this.pages[0].getWebView().findNext(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setParentActivity$45(CharSequence charSequence, String str, String str2, Runnable runnable) {
        TranslateAlert2.showAlert(this.parentActivity, this.parentFragment, this.currentAccount, str, str2, charSequence, null, false, null, runnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setParentActivity$46(float[] fArr) {
        fArr[0] = this.currentHeaderHeight;
        fArr[1] = this.pages[0].listView.getMeasuredHeight();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showCopyPopup$0(String str, DialogInterface dialogInterface, int i) throws NoSuchFieldException, InterruptedException, Resources.NotFoundException, SecurityException, UnsupportedEncodingException {
        int i2;
        String strDecode;
        if (this.parentActivity != null) {
            if (this.pages[0].adapter.currentPage == null) {
                return;
            }
            if (i != 0) {
                if (i != 1 || str == null) {
                    return;
                }
                if (!str.startsWith("mailto:")) {
                    i2 = str.startsWith("tel:") ? 4 : 7;
                    AndroidUtilities.addToClipboard(str);
                    return;
                }
                str = str.substring(i2);
                AndroidUtilities.addToClipboard(str);
                return;
            }
            int iLastIndexOf = str.lastIndexOf(35);
            if (iLastIndexOf != -1) {
                String lowerCase = (!TextUtils.isEmpty(this.pages[0].adapter.currentPage.cached_page.url) ? this.pages[0].adapter.currentPage.cached_page.url : this.pages[0].adapter.currentPage.url).toLowerCase();
                try {
                    strDecode = URLDecoder.decode(str.substring(iLastIndexOf + 1), "UTF-8");
                } catch (Exception unused) {
                    strDecode = "";
                }
                if (str.toLowerCase().contains(lowerCase)) {
                    if (!TextUtils.isEmpty(strDecode)) {
                        scrollToAnchor(strDecode, false);
                        return;
                    }
                    LinearLayoutManager linearLayoutManager = this.pages[0].layoutManager;
                    Sheet sheet = this.sheet;
                    linearLayoutManager.scrollToPositionWithOffset((sheet == null || !sheet.halfSize()) ? 0 : 1, this.sheet != null ? AndroidUtilities.dp(32.0f) : 0);
                    checkScrollAnimated();
                    return;
                }
            }
            Browser.openUrl(this.parentActivity, str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showCopyPopup$1(DialogInterface dialogInterface) {
        this.links.clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showDialog$64(DialogInterface dialogInterface) {
        this.visibleDialog = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$showPopup$2(View view, MotionEvent motionEvent) {
        ActionBarPopupWindow actionBarPopupWindow;
        if (motionEvent.getActionMasked() != 0 || (actionBarPopupWindow = this.popupWindow) == null || !actionBarPopupWindow.isShowing()) {
            return false;
        }
        view.getHitRect(this.popupRect);
        if (this.popupRect.contains((int) motionEvent.getX(), (int) motionEvent.getY())) {
            return false;
        }
        this.popupWindow.dismiss();
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showPopup$3(KeyEvent keyEvent) {
        ActionBarPopupWindow actionBarPopupWindow;
        if (keyEvent.getKeyCode() == 4 && keyEvent.getRepeatCount() == 0 && (actionBarPopupWindow = this.popupWindow) != null && actionBarPopupWindow.isShowing()) {
            this.popupWindow.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showPopup$4(View view) {
        DrawingText drawingText = this.pressedLinkOwnerLayout;
        if (drawingText != null) {
            AndroidUtilities.addToClipboard(drawingText.getText());
            if (AndroidUtilities.shouldShowClipboardToast()) {
                Toast.makeText(this.parentActivity, LocaleController.getString(R.string.TextCopied), 0).show();
            }
        }
        ActionBarPopupWindow actionBarPopupWindow = this.popupWindow;
        if (actionBarPopupWindow == null || !actionBarPopupWindow.isShowing()) {
            return;
        }
        this.popupWindow.dismiss(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showPopup$5() {
        View view = this.pressedLinkOwnerView;
        if (view != null) {
            this.pressedLinkOwnerLayout = null;
            view.invalidate();
            this.pressedLinkOwnerView = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showSearchPanel$50(ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.searchPanelAlpha = fFloatValue;
        this.searchPanel.setTranslationY(this.searchPanelTranslation + ((1.0f - fFloatValue) * AndroidUtilities.dp(51.0f)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadChannel(final BlockChannelCell blockChannelCell, final WebpageAdapter webpageAdapter, TLRPC.Chat chat) {
        if (this.loadingChannel || !ChatObject.isPublic(chat)) {
            return;
        }
        this.loadingChannel = true;
        TLRPC.TL_contacts_resolveUsername tL_contacts_resolveUsername = new TLRPC.TL_contacts_resolveUsername();
        tL_contacts_resolveUsername.username = chat.username;
        final int i = UserConfig.selectedAccount;
        ConnectionsManager.getInstance(i).sendRequest(tL_contacts_resolveUsername, new RequestDelegate() { // from class: org.telegram.ui.ArticleViewer$$ExternalSyntheticLambda51
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$loadChannel$59(webpageAdapter, i, blockChannelCell, tLObject, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Browser.Progress makeProgress(final LinkSpanDrawable linkSpanDrawable, final DrawingText drawingText) {
        if (linkSpanDrawable == null) {
            return null;
        }
        return new Browser.Progress() { // from class: org.telegram.ui.ArticleViewer.11
            @Override // org.telegram.messenger.browser.Browser.Progress
            public void end() {
                ArticleViewer.this.links.removeLoading(ArticleViewer.this.loadingLinkDrawable, true);
                if (ArticleViewer.this.loadingLinkView != null) {
                    ArticleViewer.this.loadingLinkView.invalidate();
                }
                ArticleViewer.this.loadingLink = null;
                super.end();
            }

            @Override // org.telegram.messenger.browser.Browser.Progress
            public void init() {
                ArticleViewer.this.loadingText = drawingText;
                ArticleViewer articleViewer = ArticleViewer.this;
                DrawingText drawingText2 = drawingText;
                articleViewer.loadingLinkView = drawingText2 != null ? drawingText2.latestParentView : null;
                ArticleViewer.this.loadingLink = (TextPaintUrlSpan) linkSpanDrawable.getSpan();
                ArticleViewer.this.links.removeLoading(ArticleViewer.this.loadingLinkDrawable, true);
                DrawingText drawingText3 = drawingText;
                if (drawingText3 != null) {
                    ArticleViewer.this.loadingLinkDrawable = LinkSpanDrawable.LinkCollector.makeLoading(drawingText3.textLayout, linkSpanDrawable.getSpan(), BitmapDescriptorFactory.HUE_RED);
                    int themedColor = ArticleViewer.this.getThemedColor(Theme.key_chat_linkSelectBackground);
                    ArticleViewer.this.loadingLinkDrawable.setColors(Theme.multAlpha(themedColor, 0.8f), Theme.multAlpha(themedColor, 1.3f), Theme.multAlpha(themedColor, 1.0f), Theme.multAlpha(themedColor, 4.0f));
                    ArticleViewer.this.loadingLinkDrawable.strokePaint.setStrokeWidth(AndroidUtilities.dpf2(1.25f));
                    ArticleViewer.this.links.addLoading(ArticleViewer.this.loadingLinkDrawable, drawingText);
                }
                if (ArticleViewer.this.loadingLinkView != null) {
                    ArticleViewer.this.loadingLinkView.invalidate();
                }
                super.init();
            }
        };
    }

    public static ArticleViewer makeSheet(BaseFragment baseFragment) {
        return new ArticleViewer(baseFragment);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onClosed() throws PackageManager.NameNotFoundException {
        this.isVisible = false;
        int i = 0;
        while (true) {
            PageLayout[] pageLayoutArr = this.pages;
            if (i < pageLayoutArr.length) {
                pageLayoutArr[i].cleanup();
                i++;
            } else {
                try {
                    break;
                } catch (Exception e) {
                    FileLog.e(e);
                }
            }
        }
        this.parentActivity.getWindow().clearFlags(128);
        for (int i2 = 0; i2 < this.createdWebViews.size(); i2++) {
            ((BlockEmbedCell) this.createdWebViews.get(i2)).destroyWebView(false);
        }
        this.containerView.post(new Runnable() { // from class: org.telegram.ui.ArticleViewer$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onClosed$57();
            }
        });
        NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.articleClosed, new Object[0]);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private boolean open(final MessageObject messageObject, TLRPC.WebPage webPage, String str, String str2, Browser.Progress progress) throws PackageManager.NameNotFoundException {
        final TLRPC.WebPage webPage2;
        int iLastIndexOf;
        String strSubstring;
        if (this.parentActivity == null || (this.sheet == null && this.isVisible && !this.collapsed)) {
            return false;
        }
        BaseFragment baseFragment = this.parentFragment;
        if (baseFragment != null && (baseFragment.getParentLayout() instanceof ActionBarLayout)) {
            AndroidUtilities.hideKeyboard((ActionBarLayout) this.parentFragment.getParentLayout());
        }
        if (messageObject != null) {
            TLRPC.WebPage webPage3 = messageObject.messageOwner.media.webpage;
            for (int i = 0; i < messageObject.messageOwner.entities.size(); i++) {
                TLRPC.MessageEntity messageEntity = (TLRPC.MessageEntity) messageObject.messageOwner.entities.get(i);
                if (messageEntity instanceof TLRPC.TL_messageEntityUrl) {
                    try {
                        String str3 = messageObject.messageOwner.message;
                        int i2 = messageEntity.offset;
                        String lowerCase = str3.substring(i2, messageEntity.length + i2).toLowerCase();
                        String lowerCase2 = (!TextUtils.isEmpty(webPage3.cached_page.url) ? webPage3.cached_page.url : webPage3.url).toLowerCase();
                        if (lowerCase.contains(lowerCase2) || lowerCase2.contains(lowerCase)) {
                            int iLastIndexOf2 = lowerCase.lastIndexOf(35);
                            if (iLastIndexOf2 == -1) {
                                break;
                            }
                            strSubstring = lowerCase.substring(iLastIndexOf2 + 1);
                            webPage2 = webPage3;
                            break;
                        }
                    } catch (Exception e) {
                        FileLog.e(e);
                    }
                }
            }
            webPage2 = webPage3;
            strSubstring = null;
        } else if (str == null || (iLastIndexOf = str.lastIndexOf(35)) == -1) {
            webPage2 = webPage;
            strSubstring = null;
        } else {
            strSubstring = str.substring(iLastIndexOf + 1);
            webPage2 = webPage;
        }
        int i3 = (this.sheet == null || this.pagesStack.isEmpty()) ? 0 : 1;
        this.collapsed = false;
        if (i3 == 0) {
            this.pagesStack.clear();
            this.containerView.setTranslationX(BitmapDescriptorFactory.HUE_RED);
            Sheet sheet = this.sheet;
            if (sheet != null) {
                sheet.setBackProgress(BitmapDescriptorFactory.HUE_RED);
            }
            this.containerView.setTranslationY(BitmapDescriptorFactory.HUE_RED);
            this.pages[0].setTranslationY(BitmapDescriptorFactory.HUE_RED);
            this.pages[0].setTranslationX(BitmapDescriptorFactory.HUE_RED);
            this.pages[1].setTranslationX(BitmapDescriptorFactory.HUE_RED);
            this.pages[0].setAlpha(1.0f);
            this.windowView.setInnerTranslationX(BitmapDescriptorFactory.HUE_RED);
            this.pages[0].scrollToTop(false);
            setCurrentHeaderHeight(AndroidUtilities.dp(56.0f));
        }
        Sheet sheet2 = this.sheet;
        if (sheet2 != null && BotWebViewContainer.firstWebView) {
            sheet2.animationsLock.lock();
        }
        if (webPage2 != null) {
            if (addPageToStack(webPage2, strSubstring, i3) || strSubstring == null) {
                strSubstring = null;
            }
            TLRPC.TL_messages_getWebPage tL_messages_getWebPage = new TLRPC.TL_messages_getWebPage();
            tL_messages_getWebPage.url = webPage2.url;
            TLRPC.Page page = webPage2.cached_page;
            if ((page instanceof TLRPC.TL_pagePart_layer82) || page.part) {
                tL_messages_getWebPage.hash = 0;
            } else {
                tL_messages_getWebPage.hash = webPage2.hash;
            }
            final int i4 = UserConfig.selectedAccount;
            final boolean z = i3;
            final String str4 = strSubstring;
            ConnectionsManager.getInstance(i4).sendRequest(tL_messages_getWebPage, new RequestDelegate() { // from class: org.telegram.ui.ArticleViewer$$ExternalSyntheticLambda5
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$open$53(i4, webPage2, messageObject, z, str4, tLObject, tL_error);
                }
            });
        } else {
            addPageToStack(str2, i3);
        }
        this.lastInsets = null;
        if (this.sheet != null) {
            if (i3 == 0) {
                AndroidUtilities.removeFromParent(this.windowView);
                this.sheet.setContainerView(this.windowView);
                this.sheet.windowView.addView(this.windowView, LayoutHelper.createFrame(-1, -1.0f));
            }
        } else if (this.isVisible) {
            this.windowLayoutParams.flags &= -17;
            ((WindowManager) this.parentActivity.getSystemService("window")).updateViewLayout(this.windowView, this.windowLayoutParams);
        } else {
            WindowManager windowManager = (WindowManager) this.parentActivity.getSystemService("window");
            if (this.attachedToWindow) {
                try {
                    windowManager.removeView(this.windowView);
                } catch (Exception unused) {
                }
            }
            try {
                int i5 = Build.VERSION.SDK_INT;
                if (i5 >= 21) {
                    WindowManager.LayoutParams layoutParams = this.windowLayoutParams;
                    layoutParams.flags = -2013200384;
                    if (i5 >= 28) {
                        layoutParams.layoutInDisplayCutoutMode = 1;
                    }
                }
                this.windowView.setFocusable(false);
                this.containerView.setFocusable(false);
                windowManager.addView(this.windowView, this.windowLayoutParams);
            } catch (Exception e2) {
                FileLog.e(e2);
                return false;
            }
        }
        this.isVisible = true;
        this.animationInProgress = 1;
        if (i3 == 0) {
            Sheet sheet3 = this.sheet;
            if (sheet3 == null) {
                this.windowView.setAlpha(BitmapDescriptorFactory.HUE_RED);
                this.containerView.setAlpha(BitmapDescriptorFactory.HUE_RED);
                final AnimatorSet animatorSet = new AnimatorSet();
                WindowView windowView = this.windowView;
                Property property = View.ALPHA;
                animatorSet.playTogether(ObjectAnimator.ofFloat(windowView, (Property<WindowView, Float>) property, BitmapDescriptorFactory.HUE_RED, 1.0f), ObjectAnimator.ofFloat(this.containerView, (Property<FrameLayout, Float>) property, BitmapDescriptorFactory.HUE_RED, 1.0f), ObjectAnimator.ofFloat(this.windowView, (Property<WindowView, Float>) View.TRANSLATION_X, AndroidUtilities.dp(56.0f), BitmapDescriptorFactory.HUE_RED));
                this.animationEndRunnable = new Runnable() { // from class: org.telegram.ui.ArticleViewer$$ExternalSyntheticLambda6
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$open$54();
                    }
                };
                animatorSet.setDuration(150L);
                animatorSet.setInterpolator(this.interpolator);
                animatorSet.addListener(new AnonymousClass23());
                this.transitionAnimationStartTime = System.currentTimeMillis();
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ArticleViewer$$ExternalSyntheticLambda7
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$open$55(animatorSet);
                    }
                });
            } else if (i3 != 0) {
                sheet3.animationsLock.unlock();
            } else {
                sheet3.show();
            }
        }
        this.containerView.setLayerType(2, null);
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0034  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private boolean openAllParentBlocks(TL_pageBlockDetailsChild tL_pageBlockDetailsChild) {
        boolean z;
        TLRPC.PageBlock lastNonListPageBlock = getLastNonListPageBlock(tL_pageBlockDetailsChild.parent);
        if (lastNonListPageBlock instanceof TLRPC.TL_pageBlockDetails) {
            TLRPC.TL_pageBlockDetails tL_pageBlockDetails = (TLRPC.TL_pageBlockDetails) lastNonListPageBlock;
            if (tL_pageBlockDetails.open) {
                return false;
            }
            tL_pageBlockDetails.open = true;
            return true;
        }
        if (!(lastNonListPageBlock instanceof TL_pageBlockDetailsChild)) {
            return false;
        }
        TL_pageBlockDetailsChild tL_pageBlockDetailsChild2 = (TL_pageBlockDetailsChild) lastNonListPageBlock;
        TLRPC.PageBlock lastNonListPageBlock2 = getLastNonListPageBlock(tL_pageBlockDetailsChild2.block);
        if (lastNonListPageBlock2 instanceof TLRPC.TL_pageBlockDetails) {
            TLRPC.TL_pageBlockDetails tL_pageBlockDetails2 = (TLRPC.TL_pageBlockDetails) lastNonListPageBlock2;
            if (tL_pageBlockDetails2.open) {
                z = false;
            } else {
                tL_pageBlockDetails2.open = true;
                z = true;
            }
        }
        return openAllParentBlocks(tL_pageBlockDetailsChild2) || z;
    }

    private void openPreviewsChat(TLRPC.User user, long j) {
        if (user == null || !(this.parentActivity instanceof LaunchActivity)) {
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putLong("user_id", user.id);
        bundle.putString("botUser", "webpage" + j);
        ((LaunchActivity) this.parentActivity).presentFragment(new ChatActivity(bundle), false, true);
        close(false, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openWebpageUrl(final String str, final String str2, final Browser.Progress progress) {
        Sheet sheet;
        Browser.Progress progress2 = this.loadingProgress;
        if (progress2 != null) {
            progress2.cancel();
        }
        this.loadingProgress = progress;
        if (this.openUrlReqId != 0) {
            ConnectionsManager.getInstance(this.currentAccount).cancelRequest(this.openUrlReqId, false);
            this.openUrlReqId = 0;
        }
        final boolean[] zArr = new boolean[1];
        if (Browser.openInExternalApp(this.parentActivity, str, false)) {
            if (!this.pagesStack.isEmpty() || (sheet = this.sheet) == null) {
                return;
            }
            sheet.dismiss(false);
            return;
        }
        final Utilities.Callback0Return callback0Return = new Utilities.Callback0Return() { // from class: org.telegram.ui.ArticleViewer$$ExternalSyntheticLambda53
            @Override // org.telegram.messenger.Utilities.Callback0Return
            public final Object run() {
                return this.f$0.lambda$openWebpageUrl$7(str, zArr, progress);
            }
        };
        final int i = this.lastReqId + 1;
        this.lastReqId = i;
        showProgressView(true, true);
        final TLRPC.TL_messages_getWebPage tL_messages_getWebPage = new TLRPC.TL_messages_getWebPage();
        tL_messages_getWebPage.url = str;
        tL_messages_getWebPage.hash = 0;
        this.openUrlReqId = ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_messages_getWebPage, new RequestDelegate() { // from class: org.telegram.ui.ArticleViewer$$ExternalSyntheticLambda54
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$openWebpageUrl$9(i, progress, str2, callback0Return, tL_messages_getWebPage, tLObject, tL_error);
            }
        });
        if (progress != null) {
            progress.onCancel(new Runnable() { // from class: org.telegram.ui.ArticleViewer$$ExternalSyntheticLambda55
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$openWebpageUrl$10(i, progress);
                }
            });
            progress.init();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void processSearch(final String str) throws NoSuchFieldException, InterruptedException, Resources.NotFoundException, SecurityException {
        Runnable runnable = this.searchRunnable;
        if (runnable != null) {
            AndroidUtilities.cancelRunOnUIThread(runnable);
            this.searchRunnable = null;
        }
        if (TextUtils.isEmpty(str)) {
            this.searchResults.clear();
            this.searchText = str;
            this.pages[0].adapter.searchTextOffset.clear();
            showSearchPanel(false);
            if (!this.pages[0].isWeb()) {
                this.pages[0].listView.invalidateViews();
                scrollToSearchIndex(0);
            } else if (this.pages[0].getWebView() != null) {
                this.pages[0].getWebView().search("", new Runnable() { // from class: org.telegram.ui.ArticleViewer$$ExternalSyntheticLambda61
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.updateSearchButtons();
                    }
                });
                updateSearchButtons();
            }
            this.lastSearchIndex = -1;
            return;
        }
        final int i = this.lastSearchIndex + 1;
        this.lastSearchIndex = i;
        if (!this.pages[0].isWeb()) {
            Runnable runnable2 = new Runnable() { // from class: org.telegram.ui.ArticleViewer$$ExternalSyntheticLambda62
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$processSearch$49(str, i);
                }
            };
            this.searchRunnable = runnable2;
            AndroidUtilities.runOnUIThread(runnable2, 400L);
        } else {
            showSearchPanel(true);
            if (this.pages[0].getWebView() != null) {
                this.pages[0].getWebView().search(str, new Runnable() { // from class: org.telegram.ui.ArticleViewer$$ExternalSyntheticLambda61
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.updateSearchButtons();
                    }
                });
                updateSearchButtons();
            }
        }
    }

    private void refreshThemeColors() {
        TextView textView = this.deleteView;
        if (textView != null) {
            textView.setBackgroundDrawable(Theme.createSelectorDrawable(getThemedColor(Theme.key_listSelector), 2));
            this.deleteView.setTextColor(getThemedColor(Theme.key_actionBarDefaultSubmenuItem));
        }
        ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout = this.popupLayout;
        if (actionBarPopupWindowLayout != null) {
            actionBarPopupWindowLayout.setBackgroundColor(getThemedColor(Theme.key_actionBarDefaultSubmenuBackground));
        }
        ImageView imageView = this.searchUpButton;
        if (imageView != null) {
            imageView.setColorFilter(new PorterDuffColorFilter(getThemedColor(Theme.key_windowBackgroundWhiteBlackText), PorterDuff.Mode.MULTIPLY));
            this.searchUpButton.setBackgroundDrawable(Theme.createSelectorDrawable(getThemedColor(Theme.key_actionBarActionModeDefaultSelector), 1));
        }
        ImageView imageView2 = this.searchDownButton;
        if (imageView2 != null) {
            imageView2.setColorFilter(new PorterDuffColorFilter(getThemedColor(Theme.key_windowBackgroundWhiteBlackText), PorterDuff.Mode.MULTIPLY));
            this.searchDownButton.setBackgroundDrawable(Theme.createSelectorDrawable(getThemedColor(Theme.key_actionBarActionModeDefaultSelector), 1));
        }
        AnimatedTextView animatedTextView = this.searchCountText;
        if (animatedTextView != null) {
            animatedTextView.setTextColor(getThemedColor(Theme.key_windowBackgroundWhiteBlackText));
        }
        WebActionBar webActionBar = this.actionBar;
        if (webActionBar != null) {
            PageLayout pageLayout = this.pages[0];
            webActionBar.setMenuColors((pageLayout == null || !SharedConfig.adaptableColorInBrowser) ? getThemedColor(Theme.key_iv_background) : pageLayout.getBackgroundColor());
            WebActionBar webActionBar2 = this.actionBar;
            PageLayout pageLayout2 = this.pages[0];
            webActionBar2.setColors((pageLayout2 == null || !SharedConfig.adaptableColorInBrowser) ? getThemedColor(Theme.key_iv_background) : pageLayout2.getActionBarColor(), true);
        }
    }

    private boolean removeLastPageFromStack() throws PackageManager.NameNotFoundException {
        if (this.pagesStack.size() < 2) {
            return false;
        }
        ArrayList arrayList = this.pagesStack;
        Object objRemove = arrayList.remove(arrayList.size() - 1);
        if (objRemove instanceof CachedWeb) {
            ((CachedWeb) objRemove).destroy();
        }
        if (objRemove instanceof TLRPC.WebPage) {
            WebInstantView.recycle((TLRPC.WebPage) objRemove);
        }
        ArrayList arrayList2 = this.pagesStack;
        updateInterfaceForCurrentPage(arrayList2.get(arrayList2.size() - 1), false, -1);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removePressedLink() {
        if (this.pressedLink == null && this.pressedLinkOwnerView == null) {
            return;
        }
        View view = this.pressedLinkOwnerView;
        this.links.clear();
        this.pressedLink = null;
        this.pressedLinkOwnerLayout = null;
        this.pressedLinkOwnerView = null;
        if (view != null) {
            view.invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void saveCurrentPagePosition() {
        int iFindFirstVisibleItemPosition;
        if (this.pages[0].adapter.currentPage == null || (iFindFirstVisibleItemPosition = this.pages[0].layoutManager.findFirstVisibleItemPosition()) == -1) {
            return;
        }
        View viewFindViewByPosition = this.pages[0].layoutManager.findViewByPosition(iFindFirstVisibleItemPosition);
        int top = viewFindViewByPosition != null ? viewFindViewByPosition.getTop() : 0;
        SharedPreferences.Editor editorEdit = ApplicationLoader.applicationContext.getSharedPreferences("articles", 0).edit();
        String str = "article" + this.pages[0].adapter.currentPage.id;
        SharedPreferences.Editor editorPutInt = editorEdit.putInt(str, iFindFirstVisibleItemPosition).putInt(str + "o", top);
        String str2 = str + "r";
        Point point = AndroidUtilities.displaySize;
        editorPutInt.putBoolean(str2, point.x > point.y).commit();
    }

    private boolean scrollToAnchor(String str, boolean z) throws NoSuchFieldException, InterruptedException, Resources.NotFoundException, SecurityException {
        Integer num = 0;
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        String lowerCase = str.toLowerCase();
        Integer numValueOf = (Integer) this.pages[0].adapter.anchors.get(lowerCase);
        if (numValueOf != null) {
            TLRPC.TL_textAnchor tL_textAnchor = (TLRPC.TL_textAnchor) this.pages[0].adapter.anchorsParent.get(lowerCase);
            if (tL_textAnchor != null) {
                TLRPC.TL_pageBlockParagraph tL_pageBlockParagraph = new TLRPC.TL_pageBlockParagraph();
                tL_pageBlockParagraph.text = WebInstantView.filterRecursiveAnchorLinks(tL_textAnchor.text, (!TextUtils.isEmpty(this.pages[0].adapter.currentPage.cached_page.url) ? this.pages[0].adapter.currentPage.cached_page.url : this.pages[0].adapter.currentPage.url).toLowerCase(), lowerCase);
                int typeForBlock = this.pages[0].adapter.getTypeForBlock(tL_pageBlockParagraph);
                RecyclerView.ViewHolder viewHolderOnCreateViewHolder = this.pages[0].adapter.onCreateViewHolder(null, typeForBlock);
                this.pages[0].adapter.bindBlockToHolder(typeForBlock, viewHolderOnCreateViewHolder, tL_pageBlockParagraph, 0, 0, false);
                BottomSheet.Builder builder = new BottomSheet.Builder(this.parentActivity);
                builder.setApplyTopPadding(false);
                builder.setApplyBottomPadding(false);
                final LinearLayout linearLayout = new LinearLayout(this.parentActivity);
                linearLayout.setOrientation(1);
                TextSelectionHelper.ArticleTextSelectionHelper articleTextSelectionHelper = new TextSelectionHelper.ArticleTextSelectionHelper();
                this.textSelectionHelperBottomSheet = articleTextSelectionHelper;
                articleTextSelectionHelper.setParentView(linearLayout);
                this.textSelectionHelperBottomSheet.setCallback(new TextSelectionHelper.Callback() { // from class: org.telegram.ui.ArticleViewer.7
                    @Override // org.telegram.ui.Cells.TextSelectionHelper.Callback
                    public void onStateChanged(boolean z2) {
                        if (ArticleViewer.this.linkSheet != null) {
                            ArticleViewer.this.linkSheet.setDisableScroll(z2);
                        }
                    }
                });
                TextView textView = new TextView(this.parentActivity) { // from class: org.telegram.ui.ArticleViewer.8
                    @Override // android.widget.TextView, android.view.View
                    protected void onDraw(Canvas canvas) {
                        canvas.drawLine(BitmapDescriptorFactory.HUE_RED, getMeasuredHeight() - 1, getMeasuredWidth(), getMeasuredHeight() - 1, ArticleViewer.dividerPaint);
                        super.onDraw(canvas);
                    }
                };
                textView.setTextSize(1, 16.0f);
                textView.setTypeface(AndroidUtilities.bold());
                textView.setText(LocaleController.getString(R.string.InstantViewReference));
                textView.setGravity((this.pages[0].adapter.isRtl ? 5 : 3) | 16);
                textView.setTextColor(getTextColor());
                textView.setPadding(AndroidUtilities.dp(18.0f), 0, AndroidUtilities.dp(18.0f), 0);
                linearLayout.addView(textView, new LinearLayout.LayoutParams(-1, AndroidUtilities.dp(48.0f) + 1));
                viewHolderOnCreateViewHolder.itemView.setTag("bottomSheet");
                linearLayout.addView(viewHolderOnCreateViewHolder.itemView, LayoutHelper.createLinear(-1, -2, BitmapDescriptorFactory.HUE_RED, 7.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED));
                TextSelectionHelper.TextSelectionOverlay overlayView = this.textSelectionHelperBottomSheet.getOverlayView(this.parentActivity);
                FrameLayout frameLayout = new FrameLayout(this.parentActivity) { // from class: org.telegram.ui.ArticleViewer.9
                    @Override // android.view.ViewGroup, android.view.View
                    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
                        TextSelectionHelper.TextSelectionOverlay overlayView2 = ArticleViewer.this.textSelectionHelperBottomSheet.getOverlayView(getContext());
                        MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
                        motionEventObtain.offsetLocation(-linearLayout.getX(), -linearLayout.getY());
                        if (ArticleViewer.this.textSelectionHelperBottomSheet.isInSelectionMode() && ArticleViewer.this.textSelectionHelperBottomSheet.getOverlayView(getContext()).onTouchEvent(motionEventObtain)) {
                            return true;
                        }
                        if (overlayView2.checkOnTap(motionEvent)) {
                            motionEvent.setAction(3);
                        }
                        if (motionEvent.getAction() != 0 || !ArticleViewer.this.textSelectionHelperBottomSheet.isInSelectionMode() || (motionEvent.getY() >= linearLayout.getTop() && motionEvent.getY() <= linearLayout.getBottom())) {
                            return super.dispatchTouchEvent(motionEvent);
                        }
                        if (ArticleViewer.this.textSelectionHelperBottomSheet.getOverlayView(getContext()).onTouchEvent(motionEventObtain)) {
                            return super.dispatchTouchEvent(motionEvent);
                        }
                        return true;
                    }

                    @Override // android.widget.FrameLayout, android.view.View
                    protected void onMeasure(int i, int i2) {
                        super.onMeasure(i, i2);
                        super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(linearLayout.getMeasuredHeight() + AndroidUtilities.dp(8.0f), 1073741824));
                    }
                };
                builder.setDelegate(new BottomSheet.BottomSheetDelegate() { // from class: org.telegram.ui.ArticleViewer.10
                    @Override // org.telegram.ui.ActionBar.BottomSheet.BottomSheetDelegate, org.telegram.ui.ActionBar.BottomSheet.BottomSheetDelegateInterface
                    public boolean canDismiss() {
                        TextSelectionHelper.ArticleTextSelectionHelper articleTextSelectionHelper2 = ArticleViewer.this.textSelectionHelperBottomSheet;
                        if (articleTextSelectionHelper2 == null || !articleTextSelectionHelper2.isInSelectionMode()) {
                            return true;
                        }
                        ArticleViewer.this.textSelectionHelperBottomSheet.clear();
                        return false;
                    }
                });
                frameLayout.addView(linearLayout, -1, -2);
                frameLayout.addView(overlayView, -1, -2);
                builder.setCustomView(frameLayout);
                if (this.textSelectionHelper.isInSelectionMode()) {
                    this.textSelectionHelper.clear();
                }
                BottomSheet bottomSheetCreate = builder.create();
                this.linkSheet = bottomSheetCreate;
                showDialog(bottomSheetCreate);
            } else if (numValueOf.intValue() >= 0 && numValueOf.intValue() < this.pages[0].adapter.blocks.size()) {
                TLRPC.PageBlock pageBlock = (TLRPC.PageBlock) this.pages[0].adapter.blocks.get(numValueOf.intValue());
                TLRPC.PageBlock lastNonListPageBlock = getLastNonListPageBlock(pageBlock);
                if ((lastNonListPageBlock instanceof TL_pageBlockDetailsChild) && openAllParentBlocks((TL_pageBlockDetailsChild) lastNonListPageBlock)) {
                    this.pages[0].adapter.updateRows();
                    this.pages[0].adapter.notifyDataSetChanged();
                }
                int iIndexOf = this.pages[0].adapter.localBlocks.indexOf(pageBlock);
                if (iIndexOf != -1) {
                    numValueOf = Integer.valueOf(iIndexOf);
                }
                Integer num2 = (Integer) this.pages[0].adapter.anchorsOffset.get(lowerCase);
                if (num2 != null) {
                    if (num2.intValue() == -1) {
                        int typeForBlock2 = this.pages[0].adapter.getTypeForBlock(pageBlock);
                        RecyclerView.ViewHolder viewHolderOnCreateViewHolder2 = this.pages[0].adapter.onCreateViewHolder(null, typeForBlock2);
                        this.pages[0].adapter.bindBlockToHolder(typeForBlock2, viewHolderOnCreateViewHolder2, pageBlock, 0, 0, false);
                        viewHolderOnCreateViewHolder2.itemView.measure(View.MeasureSpec.makeMeasureSpec(this.pages[0].listView.getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(0, 0));
                        Integer num3 = (Integer) this.pages[0].adapter.anchorsOffset.get(lowerCase);
                        if (num3.intValue() != -1) {
                            num = num3;
                        }
                    } else {
                        num = num2;
                    }
                }
                if (z) {
                    SmoothScroller smoothScroller = new SmoothScroller(this.pages[0].getContext());
                    int iIntValue = numValueOf.intValue();
                    Sheet sheet = this.sheet;
                    smoothScroller.setTargetPosition(iIntValue + ((sheet == null || !sheet.halfSize()) ? 0 : 1));
                    smoothScroller.setOffset((-AndroidUtilities.dp(56.0f)) - num.intValue());
                    this.pages[0].layoutManager.startSmoothScroll(smoothScroller);
                } else {
                    this.pages[0].layoutManager.scrollToPositionWithOffset(numValueOf.intValue(), (-AndroidUtilities.dp(56.0f)) - num.intValue());
                }
            }
            return true;
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00bd A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00be  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00ba A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void scrollToSearchIndex(int i) throws NoSuchFieldException, InterruptedException, Resources.NotFoundException, SecurityException {
        int size;
        int i2;
        if (i < 0 || i >= this.searchResults.size()) {
            updateSearchButtons();
            return;
        }
        this.currentSearchIndex = i;
        updateSearchButtons();
        SearchResult searchResult = (SearchResult) this.searchResults.get(i);
        TLRPC.PageBlock lastNonListPageBlock = getLastNonListPageBlock(searchResult.block);
        int size2 = this.pages[0].adapter.blocks.size();
        for (int i3 = 0; i3 < size2; i3++) {
            TLRPC.PageBlock pageBlock = (TLRPC.PageBlock) this.pages[0].adapter.blocks.get(i3);
            if (pageBlock instanceof TL_pageBlockDetailsChild) {
                TL_pageBlockDetailsChild tL_pageBlockDetailsChild = (TL_pageBlockDetailsChild) pageBlock;
                if (tL_pageBlockDetailsChild.block == searchResult.block || tL_pageBlockDetailsChild.block == lastNonListPageBlock) {
                    if (openAllParentBlocks(tL_pageBlockDetailsChild)) {
                        this.pages[0].adapter.updateRows();
                        this.pages[0].adapter.notifyDataSetChanged();
                    }
                    size = this.pages[0].adapter.localBlocks.size();
                    i2 = 0;
                    while (true) {
                        if (i2 < size) {
                            i2 = -1;
                            break;
                        }
                        TLRPC.PageBlock pageBlock2 = (TLRPC.PageBlock) this.pages[0].adapter.localBlocks.get(i2);
                        if (pageBlock2 == searchResult.block || pageBlock2 == lastNonListPageBlock) {
                            break;
                        }
                        if (pageBlock2 instanceof TL_pageBlockDetailsChild) {
                            TL_pageBlockDetailsChild tL_pageBlockDetailsChild2 = (TL_pageBlockDetailsChild) pageBlock2;
                            if (tL_pageBlockDetailsChild2.block == searchResult.block || tL_pageBlockDetailsChild2.block == lastNonListPageBlock) {
                                break;
                            }
                        }
                        i2++;
                    }
                    if (i2 != -1) {
                        return;
                    }
                    if ((lastNonListPageBlock instanceof TL_pageBlockDetailsChild) && openAllParentBlocks((TL_pageBlockDetailsChild) lastNonListPageBlock)) {
                        this.pages[0].adapter.updateRows();
                        this.pages[0].adapter.notifyDataSetChanged();
                    }
                    String str = this.searchText + searchResult.block + searchResult.text + searchResult.index;
                    Integer num = (Integer) this.pages[0].adapter.searchTextOffset.get(str);
                    if (num == null) {
                        int typeForBlock = this.pages[0].adapter.getTypeForBlock(searchResult.block);
                        RecyclerView.ViewHolder viewHolderOnCreateViewHolder = this.pages[0].adapter.onCreateViewHolder(null, typeForBlock);
                        this.pages[0].adapter.bindBlockToHolder(typeForBlock, viewHolderOnCreateViewHolder, searchResult.block, 0, 0, false);
                        viewHolderOnCreateViewHolder.itemView.measure(View.MeasureSpec.makeMeasureSpec(this.pages[0].listView.getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(0, 0));
                        num = (Integer) this.pages[0].adapter.searchTextOffset.get(str);
                        if (num == null) {
                            num = 0;
                        }
                    }
                    SmoothScroller smoothScroller = new SmoothScroller(this.pages[0].getContext());
                    smoothScroller.setTargetPosition(i2);
                    smoothScroller.setOffset(-(((this.currentHeaderHeight - AndroidUtilities.dp(56.0f)) - num.intValue()) + AndroidUtilities.dp(100.0f)));
                    smoothScroller.setDurationScale(1.2f);
                    this.pages[0].layoutManager.startSmoothScroll(smoothScroller);
                    this.pages[0].listView.invalidateViews();
                    return;
                }
            }
        }
        size = this.pages[0].adapter.localBlocks.size();
        i2 = 0;
        while (true) {
            if (i2 < size) {
            }
            i2++;
        }
        if (i2 != -1) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setCurrentHeaderHeight(int i) {
        WebActionBar webActionBar = this.actionBar;
        if (webActionBar == null || webActionBar.isSearching() || this.actionBar.isAddressing()) {
            return;
        }
        int iClamp = Utilities.clamp(i, AndroidUtilities.dp(56.0f), AndroidUtilities.dp(24.0f));
        this.currentHeaderHeight = iClamp;
        this.actionBar.setHeight(iClamp);
        this.textSelectionHelper.setTopOffset(this.currentHeaderHeight);
        int i2 = 0;
        while (true) {
            PageLayout[] pageLayoutArr = this.pages;
            if (i2 >= pageLayoutArr.length) {
                return;
            }
            pageLayoutArr[i2].listView.setTopGlowOffset(this.currentHeaderHeight);
            i2++;
        }
    }

    private void setMapColors(SparseArray sparseArray) {
        for (int i = 0; i < sparseArray.size(); i++) {
            int iKeyAt = sparseArray.keyAt(i);
            TextPaint textPaint = (TextPaint) sparseArray.valueAt(i);
            if (textPaint != null) {
                textPaint.setColor(((iKeyAt & 8) == 0 && (iKeyAt & LiteMode.FLAG_CALLS_ANIMATIONS) == 0) ? getTextColor() : getLinkTextColor());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showCopyPopup(final String str) throws UnsupportedEncodingException {
        String strDecode;
        if (this.parentActivity == null) {
            return;
        }
        BottomSheet bottomSheet = this.linkSheet;
        if (bottomSheet != null) {
            bottomSheet.lambda$new$0();
            this.linkSheet = null;
        }
        BottomSheet.Builder builder = new BottomSheet.Builder(this.parentActivity);
        try {
            strDecode = URLDecoder.decode(str.replaceAll("\\+", "%2b"), "UTF-8");
        } catch (Exception e) {
            FileLog.e(e);
            strDecode = str;
        }
        builder.setTitle(strDecode);
        builder.setTitleMultipleLines(true);
        builder.setItems(new CharSequence[]{LocaleController.getString(R.string.Open), LocaleController.getString(R.string.Copy)}, new DialogInterface.OnClickListener() { // from class: org.telegram.ui.ArticleViewer$$ExternalSyntheticLambda25
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) throws NoSuchFieldException, InterruptedException, Resources.NotFoundException, SecurityException, UnsupportedEncodingException {
                this.f$0.lambda$showCopyPopup$0(str, dialogInterface, i);
            }
        });
        builder.setOnPreDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.ArticleViewer$$ExternalSyntheticLambda26
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                this.f$0.lambda$showCopyPopup$1(dialogInterface);
            }
        });
        showDialog(builder.create());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showPopup(View view, int i, int i2, int i3) {
        ActionBarPopupWindow actionBarPopupWindow = this.popupWindow;
        if (actionBarPopupWindow != null && actionBarPopupWindow.isShowing()) {
            this.popupWindow.dismiss();
            return;
        }
        if (this.popupLayout == null) {
            this.popupRect = new Rect();
            ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout = new ActionBarPopupWindow.ActionBarPopupWindowLayout(this.parentActivity);
            this.popupLayout = actionBarPopupWindowLayout;
            actionBarPopupWindowLayout.setPadding(AndroidUtilities.dp(1.0f), AndroidUtilities.dp(1.0f), AndroidUtilities.dp(1.0f), AndroidUtilities.dp(1.0f));
            this.popupLayout.setBackgroundDrawable(this.parentActivity.getResources().getDrawable(R.drawable.menu_copy));
            this.popupLayout.setAnimationEnabled(false);
            this.popupLayout.setOnTouchListener(new View.OnTouchListener() { // from class: org.telegram.ui.ArticleViewer$$ExternalSyntheticLambda57
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view2, MotionEvent motionEvent) {
                    return this.f$0.lambda$showPopup$2(view2, motionEvent);
                }
            });
            this.popupLayout.setDispatchKeyEventListener(new ActionBarPopupWindow.OnDispatchKeyEventListener() { // from class: org.telegram.ui.ArticleViewer$$ExternalSyntheticLambda58
                @Override // org.telegram.ui.ActionBar.ActionBarPopupWindow.OnDispatchKeyEventListener
                public final void onDispatchKeyEvent(KeyEvent keyEvent) {
                    this.f$0.lambda$showPopup$3(keyEvent);
                }
            });
            this.popupLayout.setShownFromBottom(false);
            TextView textView = new TextView(this.parentActivity);
            this.deleteView = textView;
            textView.setBackgroundDrawable(Theme.createSelectorDrawable(getThemedColor(Theme.key_listSelector), 2));
            this.deleteView.setGravity(16);
            this.deleteView.setPadding(AndroidUtilities.dp(20.0f), 0, AndroidUtilities.dp(20.0f), 0);
            this.deleteView.setTextSize(1, 15.0f);
            this.deleteView.setTypeface(AndroidUtilities.bold());
            this.deleteView.setText(LocaleController.getString(R.string.Copy).toUpperCase());
            this.deleteView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ArticleViewer$$ExternalSyntheticLambda59
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    this.f$0.lambda$showPopup$4(view2);
                }
            });
            this.popupLayout.addView(this.deleteView, LayoutHelper.createFrame(-2, 48.0f));
            ActionBarPopupWindow actionBarPopupWindow2 = new ActionBarPopupWindow(this.popupLayout, -2, -2);
            this.popupWindow = actionBarPopupWindow2;
            actionBarPopupWindow2.setAnimationEnabled(false);
            this.popupWindow.setAnimationStyle(R.style.PopupContextAnimation);
            this.popupWindow.setOutsideTouchable(true);
            this.popupWindow.setClippingEnabled(true);
            this.popupWindow.setInputMethodMode(2);
            this.popupWindow.setSoftInputMode(0);
            this.popupWindow.getContentView().setFocusableInTouchMode(true);
            this.popupWindow.setOnDismissListener(new PopupWindow.OnDismissListener() { // from class: org.telegram.ui.ArticleViewer$$ExternalSyntheticLambda60
                @Override // android.widget.PopupWindow.OnDismissListener
                public final void onDismiss() {
                    this.f$0.lambda$showPopup$5();
                }
            });
        }
        this.deleteView.setTextColor(getThemedColor(Theme.key_actionBarDefaultSubmenuItem));
        ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout2 = this.popupLayout;
        if (actionBarPopupWindowLayout2 != null) {
            actionBarPopupWindowLayout2.setBackgroundColor(getThemedColor(Theme.key_actionBarDefaultSubmenuBackground));
        }
        this.popupLayout.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(1000.0f), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(1000.0f), Integer.MIN_VALUE));
        this.popupWindow.setFocusable(true);
        this.popupWindow.showAtLocation(view, i, i2, i3);
        this.popupWindow.startAnimation();
    }

    private void showProgressView(boolean z, final boolean z2) {
        if (z) {
            AndroidUtilities.cancelRunOnUIThread(this.lineProgressTickRunnable);
            LineProgressView lineProgressView = this.actionBar.lineProgressView;
            if (!z2) {
                lineProgressView.setProgress(1.0f, true);
                return;
            }
            lineProgressView.setProgress(BitmapDescriptorFactory.HUE_RED, false);
            this.actionBar.lineProgressView.setProgress(0.3f, true);
            AndroidUtilities.runOnUIThread(this.lineProgressTickRunnable, 100L);
            return;
        }
        AnimatorSet animatorSet = this.progressViewAnimation;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
        AnimatorSet animatorSet2 = new AnimatorSet();
        this.progressViewAnimation = animatorSet2;
        if (z2) {
            this.progressView.setVisibility(0);
            this.progressViewAnimation.playTogether(ObjectAnimator.ofFloat(this.progressView, (Property<ContextProgressView, Float>) View.SCALE_X, 1.0f), ObjectAnimator.ofFloat(this.progressView, (Property<ContextProgressView, Float>) View.SCALE_Y, 1.0f), ObjectAnimator.ofFloat(this.progressView, (Property<ContextProgressView, Float>) View.ALPHA, 1.0f));
        } else {
            animatorSet2.playTogether(ObjectAnimator.ofFloat(this.progressView, (Property<ContextProgressView, Float>) View.SCALE_X, 0.1f), ObjectAnimator.ofFloat(this.progressView, (Property<ContextProgressView, Float>) View.SCALE_Y, 0.1f), ObjectAnimator.ofFloat(this.progressView, (Property<ContextProgressView, Float>) View.ALPHA, BitmapDescriptorFactory.HUE_RED));
        }
        this.progressViewAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.ArticleViewer.24
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                if (ArticleViewer.this.progressViewAnimation == null || !ArticleViewer.this.progressViewAnimation.equals(animator)) {
                    return;
                }
                ArticleViewer.this.progressViewAnimation = null;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (ArticleViewer.this.progressViewAnimation == null || !ArticleViewer.this.progressViewAnimation.equals(animator) || z2) {
                    return;
                }
                ArticleViewer.this.progressView.setVisibility(4);
            }
        });
        this.progressViewAnimation.setDuration(150L);
        this.progressViewAnimation.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showRestrictedWebsiteToast() {
        LaunchActivity launchActivity;
        FrameLayout frameLayout;
        this.showRestrictedToastOnResume = false;
        if (!this.attachedToWindow || (launchActivity = LaunchActivity.instance) == null || launchActivity.isFinishing()) {
            return;
        }
        if (this.pages[0].isWeb()) {
            if (this.pages[0].getWebView() == null) {
                return;
            } else {
                frameLayout = this.pages[0].webViewContainer;
            }
        } else if (this.pages[0].adapter.currentPage == null) {
            return;
        } else {
            frameLayout = this.pages[0];
        }
        BulletinFactory.of(frameLayout, getResourcesProvider()).createSimpleBulletin(R.raw.chats_infotip, AndroidUtilities.replaceSingleTag(LocaleController.getString(R.string.BrowserExternalRestricted), new Runnable() { // from class: org.telegram.ui.ArticleViewer$$ExternalSyntheticLambda70
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.openWebSettings();
            }
        }), 4).show(true);
    }

    private void updateFontEntry(int i, TextPaint textPaint, Typeface typeface, Typeface typeface2, Typeface typeface3, Typeface typeface4) {
        int i2 = i & 1;
        if (i2 != 0 && (i & 2) != 0) {
            textPaint.setTypeface(typeface2);
            return;
        }
        if (i2 != 0) {
            textPaint.setTypeface(typeface3);
        } else if ((i & 2) != 0) {
            textPaint.setTypeface(typeface4);
        } else {
            if ((i & 4) != 0) {
                return;
            }
            textPaint.setTypeface(typeface);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateInterfaceForCurrentPage(Object obj, boolean z, int i) throws PackageManager.NameNotFoundException {
        int iDp;
        if (obj != null) {
            if ((!(obj instanceof TLRPC.WebPage) || ((TLRPC.WebPage) obj).cached_page == null) && !(obj instanceof CachedWeb)) {
                return;
            }
            if (!z && i != 0) {
                PageLayout[] pageLayoutArr = this.pages;
                PageLayout pageLayout = pageLayoutArr[1];
                pageLayoutArr[1] = pageLayoutArr[0];
                pageLayoutArr[0] = pageLayout;
                this.actionBar.swap();
                this.page0Background.set(this.pages[0].getBackgroundColor(), true);
                this.page1Background.set(this.pages[1].getBackgroundColor(), true);
                Sheet sheet = this.sheet;
                if (sheet != null) {
                    sheet.updateLastVisible();
                }
                int iIndexOfChild = this.containerView.indexOfChild(this.pages[0]);
                int iIndexOfChild2 = this.containerView.indexOfChild(this.pages[1]);
                if (i == 1) {
                    if (iIndexOfChild < iIndexOfChild2) {
                        this.containerView.removeView(this.pages[0]);
                        this.containerView.addView(this.pages[0], iIndexOfChild2);
                    }
                } else if (iIndexOfChild2 < iIndexOfChild) {
                    this.containerView.removeView(this.pages[0]);
                    this.containerView.addView(this.pages[0], iIndexOfChild);
                }
                this.pageSwitchAnimation = new AnimatorSet();
                this.pages[0].setVisibility(0);
                final int i2 = i == 1 ? 0 : 1;
                this.pages[i2].setBackgroundColor(this.sheet == null ? 0 : this.backgroundPaint.getColor());
                this.pages[i2].setLayerType(2, null);
                if (i == 1) {
                    this.pages[0].setTranslationX(AndroidUtilities.displaySize.x);
                    this.pageSwitchAnimation.playTogether(ObjectAnimator.ofFloat(this.pages[0], (Property<PageLayout, Float>) View.TRANSLATION_X, AndroidUtilities.displaySize.x, BitmapDescriptorFactory.HUE_RED));
                } else if (i == -1) {
                    this.pages[0].setTranslationX(BitmapDescriptorFactory.HUE_RED);
                    this.pageSwitchAnimation.playTogether(ObjectAnimator.ofFloat(this.pages[1], (Property<PageLayout, Float>) View.TRANSLATION_X, BitmapDescriptorFactory.HUE_RED, AndroidUtilities.displaySize.x));
                }
                this.pageSwitchAnimation.setDuration(320L);
                this.pageSwitchAnimation.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
                this.pageSwitchAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.ArticleViewer.2
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) throws PackageManager.NameNotFoundException {
                        ArticleViewer.this.pages[1].cleanup();
                        ArticleViewer.this.pages[1].setVisibility(8);
                        ArticleViewer articleViewer = ArticleViewer.this;
                        articleViewer.textSelectionHelper.setParentView(articleViewer.pages[0].listView);
                        ArticleViewer articleViewer2 = ArticleViewer.this;
                        TextSelectionHelper.ArticleTextSelectionHelper articleTextSelectionHelper = articleViewer2.textSelectionHelper;
                        PageLayout[] pageLayoutArr2 = articleViewer2.pages;
                        articleTextSelectionHelper.layoutManager = pageLayoutArr2[0].layoutManager;
                        pageLayoutArr2[i2].setBackgroundDrawable(null);
                        ArticleViewer.this.pages[i2].setLayerType(0, null);
                        ArticleViewer.this.pageSwitchAnimation = null;
                        ArticleViewer.this.windowView.openingPage = false;
                    }
                });
                this.windowView.openingPage = true;
                WebActionBar webActionBar = this.actionBar;
                PageLayout pageLayout2 = this.pages[0];
                webActionBar.setMenuColors((pageLayout2 == null || !SharedConfig.adaptableColorInBrowser) ? getThemedColor(Theme.key_iv_background) : pageLayout2.getBackgroundColor());
                WebActionBar webActionBar2 = this.actionBar;
                PageLayout pageLayout3 = this.pages[0];
                webActionBar2.setColors((pageLayout3 == null || !SharedConfig.adaptableColorInBrowser) ? getThemedColor(Theme.key_iv_background) : pageLayout3.getActionBarColor(), true);
                WebActionBar webActionBar3 = this.actionBar;
                PageLayout pageLayout4 = this.pages[0];
                webActionBar3.setIsTonsite(pageLayout4 != null && pageLayout4.isTonsite());
                AnimatorSet animatorSet = this.pageSwitchAnimation;
                Objects.requireNonNull(animatorSet);
                AndroidUtilities.runOnUIThread(new ArticleViewer$$ExternalSyntheticLambda24(animatorSet));
            }
            if (!z) {
                this.textSelectionHelper.clear(true);
            }
            WebpageAdapter webpageAdapter = this.pages[z ? 1 : 0].adapter;
            if (z) {
                ArrayList arrayList = this.pagesStack;
                obj = arrayList.get(arrayList.size() - 2);
            }
            this.pages[z ? 1 : 0].cleanup();
            if (obj instanceof TLRPC.WebPage) {
                TLRPC.WebPage webPage = (TLRPC.WebPage) obj;
                this.pages[z ? 1 : 0].setWeb(null);
                this.pages[z ? 1 : 0].setType(0);
                webpageAdapter.isRtl = webPage.cached_page.rtl;
                webpageAdapter.currentPage = webPage;
                int size = webPage.cached_page.blocks.size();
                int i3 = 0;
                while (i3 < size) {
                    TLRPC.PageBlock pageBlock = (TLRPC.PageBlock) webPage.cached_page.blocks.get(i3);
                    if (i3 == 0) {
                        pageBlock.first = true;
                        if (pageBlock instanceof TLRPC.TL_pageBlockCover) {
                            TLRPC.TL_pageBlockCover tL_pageBlockCover = (TLRPC.TL_pageBlockCover) pageBlock;
                            TLRPC.RichText blockCaption = getBlockCaption(tL_pageBlockCover, 0);
                            TLRPC.RichText blockCaption2 = getBlockCaption(tL_pageBlockCover, 1);
                            if (((blockCaption != null && !(blockCaption instanceof TLRPC.TL_textEmpty)) || (blockCaption2 != null && !(blockCaption2 instanceof TLRPC.TL_textEmpty))) && size > 1) {
                                TLRPC.PageBlock pageBlock2 = (TLRPC.PageBlock) webPage.cached_page.blocks.get(1);
                                if (pageBlock2 instanceof TLRPC.TL_pageBlockChannel) {
                                    webpageAdapter.channelBlock = (TLRPC.TL_pageBlockChannel) pageBlock2;
                                }
                            }
                        }
                    } else {
                        if (i3 != 1 || webpageAdapter.channelBlock == null) {
                        }
                        i3++;
                    }
                    webpageAdapter.addBlock(webpageAdapter, pageBlock, 0, 0, i3 == size + (-1) ? i3 : 0);
                    i3++;
                }
                webpageAdapter.notifyDataSetChanged();
                if (this.pagesStack.size() == 1 || i == -1) {
                    SharedPreferences sharedPreferences = ApplicationLoader.applicationContext.getSharedPreferences("articles", 0);
                    String str = "article" + webPage.id;
                    int i4 = sharedPreferences.getInt(str, -1);
                    boolean z2 = sharedPreferences.getBoolean(str + "r", true);
                    Point point = AndroidUtilities.displaySize;
                    if (z2 == (point.x <= point.y ? 0 : 1)) {
                        iDp = sharedPreferences.getInt(str + "o", 0) - this.pages[z ? 1 : 0].listView.getPaddingTop();
                    } else {
                        iDp = AndroidUtilities.dp(10.0f);
                    }
                    if (i4 != -1) {
                        this.pages[z ? 1 : 0].layoutManager.scrollToPositionWithOffset(i4, iDp);
                    }
                } else {
                    LinearLayoutManager linearLayoutManager = this.pages[z ? 1 : 0].layoutManager;
                    Sheet sheet2 = this.sheet;
                    linearLayoutManager.scrollToPositionWithOffset((sheet2 == null || !sheet2.halfSize()) ? 0 : 1, this.sheet != null ? AndroidUtilities.dp(32.0f) : 0);
                }
            } else if (obj instanceof CachedWeb) {
                this.pages[z ? 1 : 0].setType(1);
                this.pages[z ? 1 : 0].scrollToTop(false);
                this.pages[z ? 1 : 0].setWeb((CachedWeb) obj);
            }
            if (!z) {
                checkScrollAnimated();
            }
            updateTitle(false);
            updatePages();
        }
    }

    private void updatePaintColors() {
        this.backgroundPaint.setColor(getThemedColor(Theme.key_iv_background));
        TextPaint textPaint = listTextPointerPaint;
        if (textPaint != null) {
            textPaint.setColor(getTextColor());
        }
        TextPaint textPaint2 = listTextNumPaint;
        if (textPaint2 != null) {
            textPaint2.setColor(getTextColor());
        }
        TextPaint textPaint3 = embedPostAuthorPaint;
        if (textPaint3 != null) {
            textPaint3.setColor(getTextColor());
        }
        TextPaint textPaint4 = channelNamePaint;
        if (textPaint4 != null) {
            textPaint4.setColor(getTextColor());
        }
        TextPaint textPaint5 = channelNamePhotoPaint;
        if (textPaint5 != null) {
            textPaint5.setColor(-1);
        }
        TextPaint textPaint6 = relatedArticleHeaderPaint;
        if (textPaint6 != null) {
            textPaint6.setColor(getTextColor());
        }
        TextPaint textPaint7 = relatedArticleTextPaint;
        if (textPaint7 != null) {
            textPaint7.setColor(getGrayTextColor());
        }
        TextPaint textPaint8 = embedPostDatePaint;
        if (textPaint8 != null) {
            textPaint8.setColor(getGrayTextColor());
        }
        createPaint(true);
        setMapColors(titleTextPaints);
        setMapColors(kickerTextPaints);
        setMapColors(subtitleTextPaints);
        setMapColors(headerTextPaints);
        setMapColors(subheaderTextPaints);
        setMapColors(quoteTextPaints);
        setMapColors(preformattedTextPaints);
        setMapColors(paragraphTextPaints);
        setMapColors(listTextPaints);
        setMapColors(embedPostTextPaints);
        setMapColors(mediaCaptionTextPaints);
        setMapColors(mediaCreditTextPaints);
        setMapColors(photoCaptionTextPaints);
        setMapColors(photoCreditTextPaints);
        setMapColors(authorTextPaints);
        setMapColors(footerTextPaints);
        setMapColors(embedPostCaptionTextPaints);
        setMapColors(relatedArticleTextPaints);
        setMapColors(detailsTextPaints);
        setMapColors(tableTextPaints);
    }

    private void updatePaintFonts() {
        int i = 0;
        ApplicationLoader.applicationContext.getSharedPreferences("articles", 0).edit().putInt("font_type", this.selectedFont).commit();
        int i2 = this.selectedFont;
        Typeface typeface = i2 == 0 ? Typeface.DEFAULT : Typeface.SERIF;
        Typeface typeface2 = i2 == 0 ? AndroidUtilities.getTypeface("fonts/ritalic.ttf") : Typeface.create("serif", 2);
        Typeface typefaceBold = this.selectedFont == 0 ? AndroidUtilities.bold() : Typeface.create("serif", 1);
        Typeface typeface3 = this.selectedFont == 0 ? AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM_ITALIC) : Typeface.create("serif", 3);
        int i3 = 0;
        while (true) {
            SparseArray sparseArray = quoteTextPaints;
            if (i3 >= sparseArray.size()) {
                break;
            }
            updateFontEntry(sparseArray.keyAt(i3), (TextPaint) sparseArray.valueAt(i3), typeface, typeface3, typefaceBold, typeface2);
            i3++;
        }
        int i4 = 0;
        while (true) {
            SparseArray sparseArray2 = preformattedTextPaints;
            if (i4 >= sparseArray2.size()) {
                break;
            }
            updateFontEntry(sparseArray2.keyAt(i4), (TextPaint) sparseArray2.valueAt(i4), typeface, typeface3, typefaceBold, typeface2);
            i4++;
        }
        int i5 = 0;
        while (true) {
            SparseArray sparseArray3 = paragraphTextPaints;
            if (i5 >= sparseArray3.size()) {
                break;
            }
            updateFontEntry(sparseArray3.keyAt(i5), (TextPaint) sparseArray3.valueAt(i5), typeface, typeface3, typefaceBold, typeface2);
            i5++;
        }
        int i6 = 0;
        while (true) {
            SparseArray sparseArray4 = listTextPaints;
            if (i6 >= sparseArray4.size()) {
                break;
            }
            updateFontEntry(sparseArray4.keyAt(i6), (TextPaint) sparseArray4.valueAt(i6), typeface, typeface3, typefaceBold, typeface2);
            i6++;
        }
        int i7 = 0;
        while (true) {
            SparseArray sparseArray5 = embedPostTextPaints;
            if (i7 >= sparseArray5.size()) {
                break;
            }
            updateFontEntry(sparseArray5.keyAt(i7), (TextPaint) sparseArray5.valueAt(i7), typeface, typeface3, typefaceBold, typeface2);
            i7++;
        }
        int i8 = 0;
        while (true) {
            SparseArray sparseArray6 = mediaCaptionTextPaints;
            if (i8 >= sparseArray6.size()) {
                break;
            }
            updateFontEntry(sparseArray6.keyAt(i8), (TextPaint) sparseArray6.valueAt(i8), typeface, typeface3, typefaceBold, typeface2);
            i8++;
        }
        int i9 = 0;
        while (true) {
            SparseArray sparseArray7 = mediaCreditTextPaints;
            if (i9 >= sparseArray7.size()) {
                break;
            }
            updateFontEntry(sparseArray7.keyAt(i9), (TextPaint) sparseArray7.valueAt(i9), typeface, typeface3, typefaceBold, typeface2);
            i9++;
        }
        int i10 = 0;
        while (true) {
            SparseArray sparseArray8 = photoCaptionTextPaints;
            if (i10 >= sparseArray8.size()) {
                break;
            }
            updateFontEntry(sparseArray8.keyAt(i10), (TextPaint) sparseArray8.valueAt(i10), typeface, typeface3, typefaceBold, typeface2);
            i10++;
        }
        int i11 = 0;
        while (true) {
            SparseArray sparseArray9 = photoCreditTextPaints;
            if (i11 >= sparseArray9.size()) {
                break;
            }
            updateFontEntry(sparseArray9.keyAt(i11), (TextPaint) sparseArray9.valueAt(i11), typeface, typeface3, typefaceBold, typeface2);
            i11++;
        }
        int i12 = 0;
        while (true) {
            SparseArray sparseArray10 = authorTextPaints;
            if (i12 >= sparseArray10.size()) {
                break;
            }
            updateFontEntry(sparseArray10.keyAt(i12), (TextPaint) sparseArray10.valueAt(i12), typeface, typeface3, typefaceBold, typeface2);
            i12++;
        }
        int i13 = 0;
        while (true) {
            SparseArray sparseArray11 = footerTextPaints;
            if (i13 >= sparseArray11.size()) {
                break;
            }
            updateFontEntry(sparseArray11.keyAt(i13), (TextPaint) sparseArray11.valueAt(i13), typeface, typeface3, typefaceBold, typeface2);
            i13++;
        }
        int i14 = 0;
        while (true) {
            SparseArray sparseArray12 = embedPostCaptionTextPaints;
            if (i14 >= sparseArray12.size()) {
                break;
            }
            updateFontEntry(sparseArray12.keyAt(i14), (TextPaint) sparseArray12.valueAt(i14), typeface, typeface3, typefaceBold, typeface2);
            i14++;
        }
        int i15 = 0;
        while (true) {
            SparseArray sparseArray13 = relatedArticleTextPaints;
            if (i15 >= sparseArray13.size()) {
                break;
            }
            updateFontEntry(sparseArray13.keyAt(i15), (TextPaint) sparseArray13.valueAt(i15), typeface, typeface3, typefaceBold, typeface2);
            i15++;
        }
        int i16 = 0;
        while (true) {
            SparseArray sparseArray14 = detailsTextPaints;
            if (i16 >= sparseArray14.size()) {
                break;
            }
            updateFontEntry(sparseArray14.keyAt(i16), (TextPaint) sparseArray14.valueAt(i16), typeface, typeface3, typefaceBold, typeface2);
            i16++;
        }
        while (true) {
            SparseArray sparseArray15 = tableTextPaints;
            if (i >= sparseArray15.size()) {
                return;
            }
            updateFontEntry(sparseArray15.keyAt(i), (TextPaint) sparseArray15.valueAt(i), typeface, typeface3, typefaceBold, typeface2);
            i++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updatePaintSize() {
        for (int i = 0; i < 2; i++) {
            this.pages[i].adapter.notifyDataSetChanged();
            this.pages[i].adapter.resetCachedHeights();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateSearchButtons() {
        int searchIndex;
        int size;
        AnimatedTextView animatedTextView;
        int i;
        String string;
        if (this.searchResults != null || this.pages[0].isWeb()) {
            if (this.pages[0].isWeb()) {
                searchIndex = this.pages[0].getWebView() == null ? 0 : this.pages[0].getWebView().getSearchIndex();
                size = this.pages[0].getWebView() == null ? 0 : this.pages[0].getWebView().getSearchCount();
            } else {
                searchIndex = this.currentSearchIndex;
                size = this.searchResults.size();
            }
            this.searchUpButton.setEnabled(size > 0 && searchIndex != 0);
            this.searchDownButton.setEnabled(size > 0 && searchIndex != size + (-1));
            ImageView imageView = this.searchUpButton;
            imageView.setAlpha(imageView.isEnabled() ? 1.0f : 0.5f);
            ImageView imageView2 = this.searchDownButton;
            imageView2.setAlpha(imageView2.isEnabled() ? 1.0f : 0.5f);
            this.searchCountText.cancelAnimation();
            if (size < 0) {
                animatedTextView = this.searchCountText;
                string = "";
            } else {
                if (size == 0) {
                    animatedTextView = this.searchCountText;
                    i = R.string.NoResult;
                } else if (size != 1) {
                    this.searchCountText.setText(String.format(LocaleController.getPluralString("CountOfResults", size), Integer.valueOf(searchIndex + 1), Integer.valueOf(size)));
                    return;
                } else {
                    animatedTextView = this.searchCountText;
                    i = R.string.OneResult;
                }
                string = LocaleController.getString(i);
            }
            animatedTextView.setText(string);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public TLRPC.PageBlock wrapInTableBlock(TLRPC.PageBlock pageBlock, TLRPC.PageBlock pageBlock2) {
        if (pageBlock instanceof TL_pageBlockListItem) {
            TL_pageBlockListItem tL_pageBlockListItem = (TL_pageBlockListItem) pageBlock;
            TL_pageBlockListItem tL_pageBlockListItem2 = new TL_pageBlockListItem();
            tL_pageBlockListItem2.parent = tL_pageBlockListItem.parent;
            tL_pageBlockListItem2.blockItem = wrapInTableBlock(tL_pageBlockListItem.blockItem, pageBlock2);
            return tL_pageBlockListItem2;
        }
        if (!(pageBlock instanceof TL_pageBlockOrderedListItem)) {
            return pageBlock2;
        }
        TL_pageBlockOrderedListItem tL_pageBlockOrderedListItem = (TL_pageBlockOrderedListItem) pageBlock;
        TL_pageBlockOrderedListItem tL_pageBlockOrderedListItem2 = new TL_pageBlockOrderedListItem();
        tL_pageBlockOrderedListItem2.parent = tL_pageBlockOrderedListItem.parent;
        tL_pageBlockOrderedListItem2.blockItem = wrapInTableBlock(tL_pageBlockOrderedListItem.blockItem, pageBlock2);
        return tL_pageBlockOrderedListItem2;
    }

    protected void cancelCheckLongPress() {
        this.checkingForLongPress = false;
        CheckForLongPress checkForLongPress = this.pendingCheckForLongPress;
        if (checkForLongPress != null) {
            this.windowView.removeCallbacks(checkForLongPress);
            this.pendingCheckForLongPress = null;
        }
        CheckForTap checkForTap = this.pendingCheckForTap;
        if (checkForTap != null) {
            this.windowView.removeCallbacks(checkForTap);
            this.pendingCheckForTap = null;
        }
    }

    public void close(boolean z, boolean z2) {
        if (this.parentActivity == null || this.closeAnimationInProgress || !this.isVisible || checkAnimation()) {
            return;
        }
        Sheet sheet = this.sheet;
        if (sheet != null) {
            sheet.dismiss(false);
            return;
        }
        if (this.fullscreenVideoContainer.getVisibility() == 0) {
            if (this.customView != null) {
                this.fullscreenVideoContainer.setVisibility(4);
                this.customViewCallback.onCustomViewHidden();
                this.fullscreenVideoContainer.removeView(this.customView);
                this.customView = null;
            } else {
                WebPlayerView webPlayerView = this.fullscreenedVideo;
                if (webPlayerView != null) {
                    webPlayerView.exitFullscreen();
                }
            }
            if (!z2) {
                return;
            }
        }
        if (this.textSelectionHelper.isInSelectionMode()) {
            this.textSelectionHelper.clear();
            return;
        }
        if (this.actionBar.isSearching()) {
            this.actionBar.showSearch(false, true);
            return;
        }
        if (this.actionBar.isAddressing()) {
            this.actionBar.showAddress(false, true);
            return;
        }
        if (this.openUrlReqId != 0) {
            ConnectionsManager.getInstance(this.currentAccount).cancelRequest(this.openUrlReqId, true);
            this.openUrlReqId = 0;
            showProgressView(true, false);
        }
        if (this.previewsReqId != 0) {
            ConnectionsManager.getInstance(this.currentAccount).cancelRequest(this.previewsReqId, true);
            this.previewsReqId = 0;
            showProgressView(true, false);
        }
        saveCurrentPagePosition();
        if (z && !z2 && removeLastPageFromStack()) {
            return;
        }
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.messagePlayingProgressDidChanged);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.messagePlayingDidReset);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.messagePlayingPlayStateChanged);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.messagePlayingDidStart);
        this.parentFragment = null;
        try {
            Dialog dialog = this.visibleDialog;
            if (dialog != null) {
                dialog.dismiss();
                this.visibleDialog = null;
            }
        } catch (Exception e) {
            FileLog.e(e);
        }
        AnimatorSet animatorSet = new AnimatorSet();
        WindowView windowView = this.windowView;
        Property property = View.ALPHA;
        animatorSet.playTogether(ObjectAnimator.ofFloat(windowView, (Property<WindowView, Float>) property, BitmapDescriptorFactory.HUE_RED), ObjectAnimator.ofFloat(this.containerView, (Property<FrameLayout, Float>) property, BitmapDescriptorFactory.HUE_RED), ObjectAnimator.ofFloat(this.windowView, (Property<WindowView, Float>) View.TRANSLATION_X, BitmapDescriptorFactory.HUE_RED, AndroidUtilities.dp(56.0f)));
        this.animationInProgress = 2;
        this.animationEndRunnable = new Runnable() { // from class: org.telegram.ui.ArticleViewer$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() throws PackageManager.NameNotFoundException {
                this.f$0.lambda$close$56();
            }
        };
        animatorSet.setDuration(150L);
        animatorSet.setInterpolator(this.interpolator);
        animatorSet.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.ArticleViewer.25
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (ArticleViewer.this.animationEndRunnable != null) {
                    ArticleViewer.this.animationEndRunnable.run();
                    ArticleViewer.this.animationEndRunnable = null;
                }
            }
        });
        this.transitionAnimationStartTime = System.currentTimeMillis();
        this.containerView.setLayerType(2, null);
        animatorSet.start();
        for (int i = 0; i < this.videoStates.size(); i++) {
            BlockVideoCellState blockVideoCellState = (BlockVideoCellState) this.videoStates.valueAt(i);
            Bitmap bitmap = blockVideoCellState.lastFrameBitmap;
            if (bitmap != null) {
                bitmap.recycle();
                blockVideoCellState.lastFrameBitmap = null;
            }
        }
        this.videoStates.clear();
    }

    public void destroy() {
        for (int i = 0; i < this.pagesStack.size(); i++) {
            Object obj = this.pagesStack.get(i);
            if (obj instanceof CachedWeb) {
                PageLayout pageLayout = this.pages[0];
                if (pageLayout != null && pageLayout.web == obj) {
                    ((CachedWeb) obj).detach(this.pages[0]);
                }
                PageLayout pageLayout2 = this.pages[1];
                if (pageLayout2 != null && pageLayout2.web == obj) {
                    ((CachedWeb) obj).detach(this.pages[1]);
                }
                ((CachedWeb) obj).destroy();
            } else if (obj instanceof TLRPC.WebPage) {
                WebInstantView.recycle((TLRPC.WebPage) obj);
            }
        }
        this.pagesStack.clear();
        destroyArticleViewer();
    }

    public void destroyArticleViewer() {
        WindowView windowView;
        if (this.parentActivity == null || (windowView = this.windowView) == null) {
            return;
        }
        if (this.sheet == null) {
            try {
                if (windowView.getParent() != null) {
                    ((WindowManager) this.parentActivity.getSystemService("window")).removeViewImmediate(this.windowView);
                }
                this.windowView = null;
            } catch (Exception e) {
                FileLog.e(e);
            }
        }
        for (int i = 0; i < this.createdWebViews.size(); i++) {
            ((BlockEmbedCell) this.createdWebViews.get(i)).destroyWebView(true);
        }
        this.createdWebViews.clear();
        try {
            this.parentActivity.getWindow().clearFlags(128);
        } catch (Exception e2) {
            FileLog.e(e2);
        }
        this.parentActivity = null;
        this.parentFragment = null;
        Instance = null;
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        BlockAudioCell blockAudioCell;
        MessageObject messageObject;
        if (i == NotificationCenter.messagePlayingDidStart) {
            if (this.pages == null) {
                return;
            }
            int i3 = 0;
            while (true) {
                PageLayout[] pageLayoutArr = this.pages;
                if (i3 >= pageLayoutArr.length) {
                    return;
                }
                int childCount = pageLayoutArr[i3].listView.getChildCount();
                for (int i4 = 0; i4 < childCount; i4++) {
                    View childAt = this.pages[i3].listView.getChildAt(i4);
                    if (childAt instanceof BlockAudioCell) {
                        ((BlockAudioCell) childAt).updateButtonState(true);
                    }
                }
                i3++;
            }
        } else if (i == NotificationCenter.messagePlayingDidReset || i == NotificationCenter.messagePlayingPlayStateChanged) {
            if (this.pages == null) {
                return;
            }
            int i5 = 0;
            while (true) {
                PageLayout[] pageLayoutArr2 = this.pages;
                if (i5 >= pageLayoutArr2.length) {
                    return;
                }
                int childCount2 = pageLayoutArr2[i5].listView.getChildCount();
                for (int i6 = 0; i6 < childCount2; i6++) {
                    View childAt2 = this.pages[i5].listView.getChildAt(i6);
                    if (childAt2 instanceof BlockAudioCell) {
                        BlockAudioCell blockAudioCell2 = (BlockAudioCell) childAt2;
                        if (blockAudioCell2.getMessageObject() != null) {
                            blockAudioCell2.updateButtonState(true);
                        }
                    }
                }
                i5++;
            }
        } else {
            if (i != NotificationCenter.messagePlayingProgressDidChanged) {
                return;
            }
            Integer num = (Integer) objArr[0];
            if (this.pages == null) {
                return;
            }
            int i7 = 0;
            while (true) {
                PageLayout[] pageLayoutArr3 = this.pages;
                if (i7 >= pageLayoutArr3.length) {
                    return;
                }
                int childCount3 = pageLayoutArr3[i7].listView.getChildCount();
                int i8 = 0;
                while (true) {
                    if (i8 < childCount3) {
                        View childAt3 = this.pages[i7].listView.getChildAt(i8);
                        if ((childAt3 instanceof BlockAudioCell) && (messageObject = (blockAudioCell = (BlockAudioCell) childAt3).getMessageObject()) != null && messageObject.getId() == num.intValue()) {
                            MessageObject playingMessageObject = MediaController.getInstance().getPlayingMessageObject();
                            if (playingMessageObject != null) {
                                messageObject.audioProgress = playingMessageObject.audioProgress;
                                messageObject.audioProgressSec = playingMessageObject.audioProgressSec;
                                messageObject.audioPlayerDuration = playingMessageObject.audioPlayerDuration;
                                blockAudioCell.updatePlayingMessageProgress();
                            }
                        } else {
                            i8++;
                        }
                    }
                }
                i7++;
            }
        }
    }

    public BotWebViewContainer.MyWebView getLastWebView() {
        PageLayout pageLayout = this.pages[0];
        if (pageLayout == null || !pageLayout.isWeb()) {
            return null;
        }
        if (this.pages[0].getWebView() == null) {
            this.pages[0].webViewContainer.checkCreateWebView();
        }
        return this.pages[0].getWebView();
    }

    public Theme.ResourcesProvider getResourcesProvider() {
        return null;
    }

    public int getThemedColor(int i) {
        return Theme.getColor(i, getResourcesProvider());
    }

    public boolean isFirstArticle() {
        return this.pagesStack.size() > 0 && (this.pagesStack.get(0) instanceof TLRPC.WebPage);
    }

    public boolean isLastArticle() {
        if (this.pagesStack.isEmpty()) {
            return false;
        }
        return this.pagesStack.get(r0.size() - 1) instanceof TLRPC.WebPage;
    }

    public boolean isVisible() {
        return this.isVisible;
    }

    public boolean open(String str) {
        return open(null, null, null, str, null);
    }

    public boolean open(String str, Browser.Progress progress) {
        return open(null, null, null, str, progress);
    }

    public boolean open(MessageObject messageObject) {
        return open(messageObject, null, null, null, null);
    }

    public boolean open(TLRPC.TL_webPage tL_webPage, String str) {
        return open(null, tL_webPage, str, null, null);
    }

    public void openBookmark(String str) {
        if (this.parentActivity == null || str == null) {
            return;
        }
        this.actionBar.showAddress(false, true);
        if (Browser.isInternalUri(Uri.parse(str), null)) {
            Sheet sheet = this.sheet;
            if (sheet != null) {
                sheet.dismiss(true);
            }
            Browser.openAsInternalIntent(this.parentActivity, str);
            return;
        }
        if (Browser.openInExternalApp(this.parentActivity, str, false)) {
            return;
        }
        PageLayout pageLayout = this.pages[0];
        if (pageLayout == null || pageLayout.getWebView() == null) {
            Browser.openInTelegramBrowser(this.parentActivity, str, null);
        } else {
            this.pages[0].getWebView().loadUrl(str);
        }
    }

    public void openHistoryEntry(BrowserHistory.Entry entry) {
        if (this.parentActivity == null || entry == null) {
            return;
        }
        this.actionBar.showAddress(false, true);
        PageLayout pageLayout = this.pages[0];
        if (pageLayout == null || pageLayout.getWebView() == null) {
            Browser.openInTelegramBrowser(this.parentActivity, entry.url, null);
        } else {
            this.pages[0].getWebView().loadUrl(entry.url, entry.meta);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v5, types: [java.util.List] */
    public boolean openPhoto(TLRPC.PageBlock pageBlock, WebpageAdapter webpageAdapter) {
        ArrayList arrayList;
        int iIndexOf;
        BaseFragment baseFragment = this.parentFragment;
        if (baseFragment != null && baseFragment.getParentActivity() != null) {
            if (!(pageBlock instanceof TLRPC.TL_pageBlockVideo) || WebPageUtils.isVideo(webpageAdapter.currentPage, pageBlock)) {
                arrayList = new ArrayList(webpageAdapter.photoBlocks);
                iIndexOf = webpageAdapter.photoBlocks.indexOf(pageBlock);
            } else {
                arrayList = Collections.singletonList(pageBlock);
                iIndexOf = 0;
            }
            PhotoViewer photoViewer = PhotoViewer.getInstance();
            photoViewer.setParentActivity(this.parentFragment);
            if (photoViewer.openPhoto(iIndexOf, new RealPageBlocksAdapter(webpageAdapter.currentPage, arrayList), new PageBlocksPhotoViewerProvider(arrayList))) {
                checkVideoPlayer();
                return true;
            }
        }
        return false;
    }

    public void openWebSettings() {
        BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
        if (safeLastFragment != null) {
            BaseFragment.BottomSheetParams bottomSheetParams = new BaseFragment.BottomSheetParams();
            bottomSheetParams.transitionFromLeft = true;
            safeLastFragment.showAsSheet(new WebBrowserSettings(new ArticleViewer$$ExternalSyntheticLambda45(this)), bottomSheetParams);
        }
    }

    public void setOpener(BotWebViewContainer.MyWebView myWebView) {
        if (this.pages == null) {
            return;
        }
        int i = 0;
        while (true) {
            PageLayout[] pageLayoutArr = this.pages;
            if (i >= pageLayoutArr.length) {
                return;
            }
            PageLayout pageLayout = pageLayoutArr[i];
            if (pageLayout != null) {
                pageLayout.webViewContainer.setOpener(myWebView);
            }
            i++;
        }
    }

    public void setParentActivity(final Activity activity, BaseFragment baseFragment) {
        Sheet sheet;
        this.parentFragment = baseFragment;
        int currentAccount = (baseFragment == null || (baseFragment instanceof EmptyBaseFragment)) ? UserConfig.selectedAccount : baseFragment.getCurrentAccount();
        this.currentAccount = currentAccount;
        NotificationCenter.getInstance(currentAccount).addObserver(this, NotificationCenter.messagePlayingProgressDidChanged);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.messagePlayingDidReset);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.messagePlayingPlayStateChanged);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.messagePlayingDidStart);
        Activity activity2 = this.parentActivity;
        if (activity2 == activity || !(activity2 == null || !this.isSheet || (sheet = this.sheet) == null || sheet.dialog == null)) {
            updatePaintColors();
            refreshThemeColors();
            return;
        }
        this.parentActivity = activity;
        this.selectedFont = ApplicationLoader.applicationContext.getSharedPreferences("articles", 0).getInt("font_type", 0);
        createPaint(false);
        this.backgroundPaint = new Paint();
        this.layerShadowDrawable = activity.getResources().getDrawable(R.drawable.layer_shadow);
        this.slideDotDrawable = activity.getResources().getDrawable(R.drawable.slide_dot_small);
        this.slideDotBigDrawable = activity.getResources().getDrawable(R.drawable.slide_dot_big);
        this.scrimPaint = new Paint();
        WindowView windowView = new WindowView(activity);
        this.windowView = windowView;
        windowView.setWillNotDraw(false);
        this.windowView.setClipChildren(true);
        this.windowView.setFocusable(false);
        FrameLayout frameLayout = new FrameLayout(activity) { // from class: org.telegram.ui.ArticleViewer.12
            /* JADX WARN: Removed duplicated region for block: B:17:0x0059  */
            @Override // android.view.ViewGroup
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            protected boolean drawChild(Canvas canvas, View view, long j) {
                int i;
                if (ArticleViewer.this.windowView == null || !(ArticleViewer.this.windowView.movingPage || ArticleViewer.this.windowView.openingPage)) {
                    return super.drawChild(canvas, view, j);
                }
                int measuredWidth = getMeasuredWidth();
                int translationX = (int) ArticleViewer.this.pages[0].getTranslationX();
                PageLayout[] pageLayoutArr = ArticleViewer.this.pages;
                if (view != pageLayoutArr[1]) {
                    i = measuredWidth;
                    int i2 = view == pageLayoutArr[0] ? translationX : 0;
                    int iSave = canvas.save();
                    canvas.clipRect(i2, 0, i, getHeight());
                    boolean zDrawChild = super.drawChild(canvas, view, j);
                    canvas.restoreToCount(iSave);
                    if (translationX != 0) {
                        PageLayout[] pageLayoutArr2 = ArticleViewer.this.pages;
                        PageLayout pageLayout = pageLayoutArr2[0];
                        float f = BitmapDescriptorFactory.HUE_RED;
                        if (view == pageLayout) {
                            float fMax = Math.max(BitmapDescriptorFactory.HUE_RED, Math.min((measuredWidth - translationX) / AndroidUtilities.dp(20.0f), 1.0f));
                            ArticleViewer.this.layerShadowDrawable.setBounds(translationX - ArticleViewer.this.layerShadowDrawable.getIntrinsicWidth(), view.getTop(), translationX, view.getBottom());
                            ArticleViewer.this.layerShadowDrawable.setAlpha((int) (fMax * 255.0f));
                            ArticleViewer.this.layerShadowDrawable.draw(canvas);
                        } else if (view == pageLayoutArr2[1]) {
                            float fMin = Math.min(0.8f, (measuredWidth - translationX) / measuredWidth);
                            if (fMin >= BitmapDescriptorFactory.HUE_RED) {
                                f = fMin;
                            }
                            ArticleViewer.this.scrimPaint.setColor(((int) (f * 153.0f)) << 24);
                            canvas.drawRect(i2, BitmapDescriptorFactory.HUE_RED, i, getHeight(), ArticleViewer.this.scrimPaint);
                        }
                    }
                    return zDrawChild;
                }
                i = translationX;
                int iSave2 = canvas.save();
                canvas.clipRect(i2, 0, i, getHeight());
                boolean zDrawChild2 = super.drawChild(canvas, view, j);
                canvas.restoreToCount(iSave2);
                if (translationX != 0) {
                }
                return zDrawChild2;
            }

            @Override // android.view.View
            public void invalidate() {
                super.invalidate();
            }
        };
        this.containerView = frameLayout;
        this.windowView.addView(frameLayout, LayoutHelper.createFrame(-1, -1, 51));
        if (Build.VERSION.SDK_INT >= 21 && this.sheet == null) {
            this.windowView.setFitsSystemWindows(true);
            this.containerView.setOnApplyWindowInsetsListener(new View.OnApplyWindowInsetsListener() { // from class: org.telegram.ui.ArticleViewer$$ExternalSyntheticLambda9
                @Override // android.view.View.OnApplyWindowInsetsListener
                public final WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
                    return ArticleViewer.lambda$setParentActivity$11(view, windowInsets);
                }
            });
        }
        FrameLayout frameLayout2 = new FrameLayout(activity);
        this.fullscreenVideoContainer = frameLayout2;
        frameLayout2.setBackgroundColor(-16777216);
        this.fullscreenVideoContainer.setVisibility(4);
        this.windowView.addView(this.fullscreenVideoContainer, LayoutHelper.createFrame(-1, -1.0f));
        AspectRatioFrameLayout aspectRatioFrameLayout = new AspectRatioFrameLayout(activity);
        this.fullscreenAspectRatioView = aspectRatioFrameLayout;
        aspectRatioFrameLayout.setVisibility(0);
        this.fullscreenAspectRatioView.setBackgroundColor(-16777216);
        this.fullscreenVideoContainer.addView(this.fullscreenAspectRatioView, LayoutHelper.createFrame(-1, -1, 17));
        this.fullscreenTextureView = new TextureView(activity);
        this.pages = new PageLayout[2];
        int i = 0;
        while (true) {
            PageLayout[] pageLayoutArr = this.pages;
            if (i >= pageLayoutArr.length) {
                break;
            }
            final PageLayout pageLayout = new PageLayout(activity, getResourcesProvider());
            pageLayoutArr[i] = pageLayout;
            pageLayout.setVisibility(i == 0 ? 0 : 8);
            this.containerView.addView(pageLayout, LayoutHelper.createFrame(-1, -1.0f, R.styleable.AppCompatTheme_windowActionModeOverlay, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED));
            pageLayout.listView.setOnItemLongClickListener(new RecyclerListView.OnItemLongClickListener() { // from class: org.telegram.ui.ArticleViewer$$ExternalSyntheticLambda16
                @Override // org.telegram.ui.Components.RecyclerListView.OnItemLongClickListener
                public final boolean onItemClick(View view, int i2) {
                    return this.f$0.lambda$setParentActivity$12(view, i2);
                }
            });
            pageLayout.listView.setOnItemClickListener(new RecyclerListView.OnItemClickListenerExtended() { // from class: org.telegram.ui.ArticleViewer$$ExternalSyntheticLambda17
                @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListenerExtended
                public /* synthetic */ boolean hasDoubleTap(View view, int i2) {
                    return RecyclerListView.OnItemClickListenerExtended.CC.$default$hasDoubleTap(this, view, i2);
                }

                @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListenerExtended
                public /* synthetic */ void onDoubleTap(View view, int i2, float f, float f2) {
                    RecyclerListView.OnItemClickListenerExtended.CC.$default$onDoubleTap(this, view, i2, f, f2);
                }

                @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListenerExtended
                public final void onItemClick(View view, int i2, float f, float f2) {
                    this.f$0.lambda$setParentActivity$15(pageLayout, view, i2, f, f2);
                }
            });
            i++;
        }
        FrameLayout frameLayout3 = new FrameLayout(activity);
        this.bulletinContainer = frameLayout3;
        FrameLayout frameLayout4 = this.containerView;
        Sheet sheet2 = this.sheet;
        frameLayout4.addView(frameLayout3, LayoutHelper.createFrame(-1, -1.0f, R.styleable.AppCompatTheme_windowActionModeOverlay, BitmapDescriptorFactory.HUE_RED, (sheet2 == null || sheet2.halfSize()) ? BitmapDescriptorFactory.HUE_RED : 56.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED));
        this.headerPaint.setColor(-16777216);
        this.statusBarPaint.setColor(-16777216);
        this.headerProgressPaint.setColor(-14408666);
        this.navigationBarPaint.setColor(-16777216);
        WebActionBar webActionBar = new WebActionBar(activity, getResourcesProvider()) { // from class: org.telegram.ui.ArticleViewer.13
            @Override // org.telegram.ui.web.WebActionBar
            protected WebInstantView.Loader getInstantViewLoader() {
                return ArticleViewer.this.pages[0].loadInstant();
            }

            @Override // org.telegram.ui.web.WebActionBar
            protected void onAddressColorsChanged(int i2, int i3) {
                if (ArticleViewer.this.addressBarList != null) {
                    ArticleViewer.this.addressBarList.setColors(i2, i3);
                }
            }

            @Override // org.telegram.ui.web.WebActionBar
            protected void onAddressingProgress(float f) {
                super.onAddressingProgress(f);
                if (ArticleViewer.this.addressBarList != null) {
                    ArticleViewer.this.addressBarList.setOpenProgress(f);
                }
                Sheet sheet3 = ArticleViewer.this.sheet;
                if (sheet3 != null) {
                    sheet3.checkNavColor();
                }
            }

            @Override // org.telegram.ui.web.WebActionBar
            protected void onColorsUpdated() {
                Sheet sheet3 = ArticleViewer.this.sheet;
                if (sheet3 != null) {
                    sheet3.checkNavColor();
                }
            }

            @Override // org.telegram.ui.web.WebActionBar, android.widget.FrameLayout, android.view.View
            protected void onMeasure(int i2, int i3) {
                super.onMeasure(i2, i3);
                ((ViewGroup.MarginLayoutParams) ArticleViewer.this.addressBarList.getLayoutParams()).topMargin = getMeasuredHeight();
            }

            @Override // org.telegram.ui.web.WebActionBar
            protected void onScrolledProgress(float f) {
                ArticleViewer.this.pages[0].addProgress(f);
            }

            @Override // org.telegram.ui.web.WebActionBar
            protected void onSearchUpdated(String str) throws NoSuchFieldException, InterruptedException, Resources.NotFoundException, SecurityException {
                ArticleViewer.this.processSearch(str.toLowerCase());
            }

            @Override // org.telegram.ui.web.WebActionBar
            public void showAddress(boolean z, boolean z2) {
                super.showAddress(z, z2);
                if (ArticleViewer.this.addressBarList != null) {
                    ArticleViewer.this.addressBarList.setOpened(z);
                }
            }
        };
        this.actionBar = webActionBar;
        webActionBar.occupyStatusBar(this.sheet != null);
        this.containerView.addView(this.actionBar, LayoutHelper.createFrame(-1, -2, 48));
        this.actionBar.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ArticleViewer$$ExternalSyntheticLambda18
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$setParentActivity$21(activity, view);
            }
        });
        this.actionBar.addressEditText.addTextChangedListener(new TextWatcher() { // from class: org.telegram.ui.ArticleViewer.14
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                if (ArticleViewer.this.actionBar.isAddressing() && ArticleViewer.this.addressBarList != null) {
                    ArticleViewer.this.addressBarList.setInput(editable == null ? null : editable.toString());
                }
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
            }
        });
        AddressBarList addressBarList = new AddressBarList(activity);
        this.addressBarList = addressBarList;
        addressBarList.setOpenProgress(BitmapDescriptorFactory.HUE_RED);
        this.addressBarList.listView.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.ArticleViewer.15
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i2, int i3) {
                if (ArticleViewer.this.addressBarList.listView.scrollingByUser) {
                    AndroidUtilities.hideKeyboard(ArticleViewer.this.actionBar.addressEditText);
                }
            }
        });
        this.containerView.addView(this.addressBarList, LayoutHelper.createFrame(-1, -1.0f));
        this.lineProgressTickRunnable = new Runnable() { // from class: org.telegram.ui.ArticleViewer$$ExternalSyntheticLambda19
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$setParentActivity$22();
            }
        };
        this.actionBar.backButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ArticleViewer$$ExternalSyntheticLambda20
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) throws PackageManager.NameNotFoundException {
                this.f$0.lambda$setParentActivity$23(view);
            }
        });
        this.actionBar.backButton.setOnLongClickListener(new View.OnLongClickListener() { // from class: org.telegram.ui.ArticleViewer$$ExternalSyntheticLambda21
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                return this.f$0.lambda$setParentActivity$29(view);
            }
        });
        this.actionBar.setMenuListener(new Utilities.Callback() { // from class: org.telegram.ui.ArticleViewer$$ExternalSyntheticLambda22
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) throws PackageManager.NameNotFoundException {
                this.f$0.lambda$setParentActivity$39(activity, (Integer) obj);
            }
        });
        this.actionBar.forwardButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ArticleViewer$$ExternalSyntheticLambda23
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$setParentActivity$40(view);
            }
        });
        FrameLayout frameLayout5 = new FrameLayout(this.parentActivity) { // from class: org.telegram.ui.ArticleViewer.18
            @Override // android.view.View
            public void onDraw(Canvas canvas) {
                int intrinsicHeight = Theme.chat_composeShadowDrawable.getIntrinsicHeight();
                Theme.chat_composeShadowDrawable.setBounds(0, 0, getMeasuredWidth(), intrinsicHeight);
                Theme.chat_composeShadowDrawable.draw(canvas);
                canvas.drawRect(BitmapDescriptorFactory.HUE_RED, intrinsicHeight, getMeasuredWidth(), getMeasuredHeight(), Theme.chat_composeBackgroundPaint);
            }
        };
        this.searchPanel = frameLayout5;
        frameLayout5.setOnTouchListener(new View.OnTouchListener() { // from class: org.telegram.ui.ArticleViewer$$ExternalSyntheticLambda10
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return ArticleViewer.lambda$setParentActivity$41(view, motionEvent);
            }
        });
        this.searchPanel.setWillNotDraw(false);
        this.searchPanel.setTranslationY(AndroidUtilities.dp(51.0f));
        this.searchPanel.setVisibility(4);
        this.searchPanel.setFocusable(true);
        this.searchPanel.setFocusableInTouchMode(true);
        this.searchPanel.setClickable(true);
        this.searchPanel.setPadding(0, AndroidUtilities.dp(3.0f), 0, 0);
        this.containerView.addView(this.searchPanel, LayoutHelper.createFrame(-1, 51, 80));
        new KeyboardNotifier(this.windowView, new Utilities.Callback() { // from class: org.telegram.ui.ArticleViewer$$ExternalSyntheticLambda11
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$setParentActivity$42((Integer) obj);
            }
        });
        ImageView imageView = new ImageView(this.parentActivity);
        this.searchUpButton = imageView;
        ImageView.ScaleType scaleType = ImageView.ScaleType.CENTER;
        imageView.setScaleType(scaleType);
        this.searchUpButton.setImageResource(R.drawable.msg_go_up);
        ImageView imageView2 = this.searchUpButton;
        int i2 = Theme.key_windowBackgroundWhiteBlackText;
        int themedColor = getThemedColor(i2);
        PorterDuff.Mode mode = PorterDuff.Mode.MULTIPLY;
        imageView2.setColorFilter(new PorterDuffColorFilter(themedColor, mode));
        ImageView imageView3 = this.searchUpButton;
        int i3 = Theme.key_actionBarActionModeDefaultSelector;
        imageView3.setBackgroundDrawable(Theme.createSelectorDrawable(getThemedColor(i3), 1));
        this.searchPanel.addView(this.searchUpButton, LayoutHelper.createFrame(48, 48.0f, 53, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 48.0f, BitmapDescriptorFactory.HUE_RED));
        this.searchUpButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ArticleViewer$$ExternalSyntheticLambda12
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) throws NoSuchFieldException, InterruptedException, Resources.NotFoundException, SecurityException {
                this.f$0.lambda$setParentActivity$43(view);
            }
        });
        this.searchUpButton.setContentDescription(LocaleController.getString(R.string.AccDescrSearchNext));
        ImageView imageView4 = new ImageView(this.parentActivity);
        this.searchDownButton = imageView4;
        imageView4.setScaleType(scaleType);
        this.searchDownButton.setImageResource(R.drawable.msg_go_down);
        this.searchDownButton.setColorFilter(new PorterDuffColorFilter(getThemedColor(i2), mode));
        this.searchDownButton.setBackgroundDrawable(Theme.createSelectorDrawable(getThemedColor(i3), 1));
        this.searchPanel.addView(this.searchDownButton, LayoutHelper.createFrame(48, 48.0f, 53, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED));
        this.searchDownButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ArticleViewer$$ExternalSyntheticLambda13
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) throws NoSuchFieldException, InterruptedException, Resources.NotFoundException, SecurityException {
                this.f$0.lambda$setParentActivity$44(view);
            }
        });
        this.searchDownButton.setContentDescription(LocaleController.getString(R.string.AccDescrSearchPrev));
        AnimatedTextView animatedTextView = new AnimatedTextView(this.parentActivity, true, true, true);
        this.searchCountText = animatedTextView;
        animatedTextView.setScaleProperty(0.6f);
        this.searchCountText.setAnimationProperties(0.4f, 0L, 350L, CubicBezierInterpolator.EASE_OUT_QUINT);
        this.searchCountText.setTextColor(getThemedColor(i2));
        this.searchCountText.setTextSize(AndroidUtilities.dp(15.0f));
        this.searchCountText.setTypeface(AndroidUtilities.bold());
        this.searchCountText.setGravity(3);
        this.searchCountText.getDrawable().setOverrideFullWidth(AndroidUtilities.displaySize.x);
        this.searchPanel.addView(this.searchCountText, LayoutHelper.createFrame(-2, -2.0f, 19, 18.0f, BitmapDescriptorFactory.HUE_RED, 108.0f, BitmapDescriptorFactory.HUE_RED));
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        this.windowLayoutParams = layoutParams;
        layoutParams.height = -1;
        layoutParams.format = -3;
        layoutParams.width = -1;
        layoutParams.gravity = 51;
        layoutParams.type = 98;
        layoutParams.softInputMode = 48;
        layoutParams.flags = 131072;
        int color = this.sheet == null ? Theme.getColor(Theme.key_windowBackgroundGray, null, true) : getThemedColor(Theme.key_windowBackgroundGray);
        int i4 = (AndroidUtilities.computePerceivedBrightness(color) < 0.721f || Build.VERSION.SDK_INT < 26) ? 1792 : 1808;
        this.navigationBarPaint.setColor(color);
        WindowManager.LayoutParams layoutParams2 = this.windowLayoutParams;
        layoutParams2.systemUiVisibility = i4;
        int i5 = Build.VERSION.SDK_INT;
        if (i5 >= 21) {
            layoutParams2.flags |= -2147417856;
            if (i5 >= 28) {
                layoutParams2.layoutInDisplayCutoutMode = 1;
            }
        }
        TextSelectionHelper.ArticleTextSelectionHelper articleTextSelectionHelper = new TextSelectionHelper.ArticleTextSelectionHelper();
        this.textSelectionHelper = articleTextSelectionHelper;
        articleTextSelectionHelper.setParentView(this.pages[0].listView);
        if (MessagesController.getInstance(this.currentAccount).getTranslateController().isContextTranslateEnabled()) {
            this.textSelectionHelper.setOnTranslate(new TextSelectionHelper.OnTranslateListener() { // from class: org.telegram.ui.ArticleViewer$$ExternalSyntheticLambda14
                @Override // org.telegram.ui.Cells.TextSelectionHelper.OnTranslateListener
                public final void run(CharSequence charSequence, String str, String str2, Runnable runnable) {
                    this.f$0.lambda$setParentActivity$45(charSequence, str, str2, runnable);
                }
            });
        }
        TextSelectionHelper.ArticleTextSelectionHelper articleTextSelectionHelper2 = this.textSelectionHelper;
        articleTextSelectionHelper2.layoutManager = this.pages[0].layoutManager;
        articleTextSelectionHelper2.setCallback(new TextSelectionHelper.Callback() { // from class: org.telegram.ui.ArticleViewer.19
            @Override // org.telegram.ui.Cells.TextSelectionHelper.Callback
            public void onStateChanged(boolean z) {
                if (z) {
                    ArticleViewer.this.actionBar.showSearch(false, true);
                }
            }

            @Override // org.telegram.ui.Cells.TextSelectionHelper.Callback
            public void onTextCopied() {
                if (AndroidUtilities.shouldShowClipboardToast()) {
                    BulletinFactory.of(ArticleViewer.this.containerView, null).createCopyBulletin(LocaleController.getString(R.string.TextCopied)).show();
                }
            }
        });
        this.containerView.addView(this.textSelectionHelper.getOverlayView(activity));
        FrameLayout frameLayout6 = this.containerView;
        PinchToZoomHelper pinchToZoomHelper = new PinchToZoomHelper(frameLayout6, frameLayout6);
        this.pinchToZoomHelper = pinchToZoomHelper;
        pinchToZoomHelper.setClipBoundsListener(new PinchToZoomHelper.ClipBoundsListener() { // from class: org.telegram.ui.ArticleViewer$$ExternalSyntheticLambda15
            @Override // org.telegram.ui.PinchToZoomHelper.ClipBoundsListener
            public final void getClipTopBottom(float[] fArr) {
                this.f$0.lambda$setParentActivity$46(fArr);
            }
        });
        this.pinchToZoomHelper.setCallback(new PinchToZoomHelper.Callback() { // from class: org.telegram.ui.ArticleViewer.20
            @Override // org.telegram.ui.PinchToZoomHelper.Callback
            public /* synthetic */ TextureView getCurrentTextureView() {
                return PinchToZoomHelper.Callback.CC.$default$getCurrentTextureView(this);
            }

            @Override // org.telegram.ui.PinchToZoomHelper.Callback
            public /* synthetic */ void onZoomFinished(MessageObject messageObject) {
                PinchToZoomHelper.Callback.CC.$default$onZoomFinished(this, messageObject);
            }

            @Override // org.telegram.ui.PinchToZoomHelper.Callback
            public void onZoomStarted(MessageObject messageObject) {
                PageLayout pageLayout2 = ArticleViewer.this.pages[0];
                if (pageLayout2 != null) {
                    pageLayout2.listView.cancelClickRunnables(true);
                }
            }
        });
        updatePaintColors();
    }

    public void showDialog(Dialog dialog) {
        if (this.parentActivity == null) {
            return;
        }
        try {
            Dialog dialog2 = this.visibleDialog;
            if (dialog2 != null) {
                dialog2.dismiss();
                this.visibleDialog = null;
            }
        } catch (Exception e) {
            FileLog.e(e);
        }
        try {
            this.visibleDialog = dialog;
            dialog.setCanceledOnTouchOutside(true);
            this.visibleDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.ArticleViewer$$ExternalSyntheticLambda50
                @Override // android.content.DialogInterface.OnDismissListener
                public final void onDismiss(DialogInterface dialogInterface) {
                    this.f$0.lambda$showDialog$64(dialogInterface);
                }
            });
            dialog.show();
        } catch (Exception e2) {
            FileLog.e(e2);
        }
    }

    public void showSearchPanel(final boolean z) {
        this.searchPanel.setVisibility(0);
        ValueAnimator valueAnimator = this.searchPanelAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.searchPanelAlpha, z ? 1.0f : BitmapDescriptorFactory.HUE_RED);
        this.searchPanelAnimator = valueAnimatorOfFloat;
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.ArticleViewer$$ExternalSyntheticLambda67
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                this.f$0.lambda$showSearchPanel$50(valueAnimator2);
            }
        });
        this.searchPanelAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.ArticleViewer.21
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                ArticleViewer.this.searchPanelAlpha = z ? 1.0f : BitmapDescriptorFactory.HUE_RED;
                ArticleViewer.this.searchPanel.setTranslationY(ArticleViewer.this.searchPanelTranslation + ((1.0f - ArticleViewer.this.searchPanelAlpha) * AndroidUtilities.dp(51.0f)));
                if (z) {
                    return;
                }
                ArticleViewer.this.searchPanel.setVisibility(8);
            }
        });
        this.searchPanelAnimator.setDuration(320L);
        this.searchPanelAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
        this.searchPanelAnimator.start();
    }

    protected void startCheckLongPress(float f, float f2, View view) {
        TextSelectionHelper.ArticleTextSelectionHelper articleTextSelectionHelper;
        if (this.checkingForLongPress) {
            return;
        }
        this.checkingForLongPress = true;
        if (this.pendingCheckForTap == null) {
            this.pendingCheckForTap = new CheckForTap();
        }
        if (view.getTag() == null || view.getTag() != "bottomSheet" || (articleTextSelectionHelper = this.textSelectionHelperBottomSheet) == null) {
            articleTextSelectionHelper = this.textSelectionHelper;
        }
        articleTextSelectionHelper.setMaybeView((int) f, (int) f2, view);
        this.windowView.postDelayed(this.pendingCheckForTap, ViewConfiguration.getTapTimeout());
    }

    public void updatePages() {
        PageLayout[] pageLayoutArr;
        PageLayout pageLayout;
        View view;
        if (this.actionBar == null || (pageLayout = (pageLayoutArr = this.pages)[0]) == null || pageLayoutArr[1] == null) {
            return;
        }
        int visibility = pageLayout.getVisibility();
        float f = BitmapDescriptorFactory.HUE_RED;
        float translationX = visibility != 0 ? BitmapDescriptorFactory.HUE_RED : 1.0f - (this.pages[0].getTranslationX() / this.pages[0].getWidth());
        float f2 = 1.0f - translationX;
        this.actionBar.setProgress(0, this.pages[0].getProgress());
        this.actionBar.setProgress(1, this.pages[1].getProgress());
        this.actionBar.setTransitionProgress(f2);
        if (!this.actionBar.isAddressing() && !this.actionBar.isSearching() && (this.windowView.movingPage || this.windowView.openingPage)) {
            if (isFirstArticle() || this.pagesStack.size() > 1) {
                float f3 = (this.pages[0].hasBackButton() || this.pagesStack.size() > 1) ? 1.0f : BitmapDescriptorFactory.HUE_RED;
                if (this.pages[1].hasBackButton() || this.pagesStack.size() > 2) {
                    f = 1.0f;
                }
                float fLerp = AndroidUtilities.lerp(f3, f, f2);
                this.actionBar.backButtonDrawable.setRotation(1.0f - fLerp, false);
                this.actionBar.forwardButtonDrawable.setState(false);
                this.actionBar.setBackButtonCached(fLerp > 0.5f);
            } else {
                this.actionBar.forwardButtonDrawable.setState(false);
                this.actionBar.setBackButtonCached(false);
            }
            this.actionBar.setHasForward(this.pages[0].hasForwardButton());
            this.actionBar.setIsLoaded(this.pages[0].getWebView() != null && this.pages[0].getWebView().isPageLoaded());
        }
        this.actionBar.setBackgroundColor(0, this.page0Background.set(this.pages[0].getActionBarColor(), this.windowView.movingPage || this.windowView.openingPage));
        this.actionBar.setBackgroundColor(1, this.page1Background.set(this.pages[1].getActionBarColor(), this.windowView.movingPage || this.windowView.openingPage));
        this.actionBar.setColors(ColorUtils.blendARGB(this.pages[0].getActionBarColor(), this.pages[1].getActionBarColor(), f2), false);
        this.actionBar.setMenuType((translationX > 0.5f ? this.pages[0] : this.pages[1]).type);
        Sheet sheet = this.sheet;
        if (sheet != null) {
            view = sheet.windowView;
        } else {
            view = this.windowView;
            if (view == null) {
                return;
            }
        }
        view.invalidate();
    }

    public void updateThemeColors(float f) {
        refreshThemeColors();
        updatePaintColors();
        if (this.windowView != null) {
            this.pages[0].listView.invalidateViews();
            this.pages[1].listView.invalidateViews();
            this.windowView.invalidate();
            this.searchPanel.invalidate();
            if (f == 1.0f) {
                this.pages[0].adapter.notifyDataSetChanged();
                this.pages[1].adapter.notifyDataSetChanged();
            }
        }
    }

    public void updateTitle(boolean z) {
        this.actionBar.setTitle(0, this.pages[0].getTitle(), z);
        this.actionBar.setSubtitle(0, this.pages[0].getSubtitle(), false);
        this.actionBar.setIsDangerous(0, this.pages[0].isWeb() && this.pages[0].getWebView() != null && this.pages[0].getWebView().isUrlDangerous(), false);
        this.actionBar.setTitle(1, this.pages[1].getTitle(), z);
        this.actionBar.setSubtitle(1, this.pages[1].getSubtitle(), false);
        this.actionBar.setIsDangerous(1, this.pages[1].isWeb() && this.pages[1].getWebView() != null && this.pages[1].getWebView().isUrlDangerous(), false);
    }
}
