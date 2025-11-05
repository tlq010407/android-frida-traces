package org.telegram.ui.Components.voip;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.view.MotionEvent;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.ColorUtils;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.HashMap;
import org.telegram.messenger.AccountInstance;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.ImageLoader;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.R;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.voip.VideoCapturerDevice;
import org.telegram.messenger.voip.VoIPService;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.ActionBar.SimpleTextView;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.AvatarDrawable;
import org.telegram.ui.Components.BlobDrawable;
import org.telegram.ui.Components.CrossOutDrawable;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.GroupCallFullscreenAdapter;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.MotionBackgroundDrawable;
import org.telegram.ui.Components.RLottieImageView;
import org.telegram.ui.Components.RecyclerListView;
import org.telegram.ui.Components.voip.GroupCallStatusIcon;
import org.telegram.ui.GroupCallActivity;
import org.webrtc.GlGenericDrawer;
import org.webrtc.RendererCommon;
import org.webrtc.TextureViewRenderer;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes5.dex */
public class GroupCallMiniTextureView extends FrameLayout implements GroupCallStatusIcon.Callback {
    GroupCallActivity activity;
    boolean animateEnter;
    int animateToColor;
    public boolean animateToFullscreen;
    public boolean animateToScrimView;
    boolean attached;
    ArrayList attachedRenderers;
    ImageView blurredFlippingStub;
    ChatObject.Call call;
    private Drawable castingScreenDrawable;
    private boolean checkScale;
    int collapseSize;
    ValueAnimator colorAnimator;
    int currentAccount;
    public boolean drawFirst;
    ValueAnimator flipAnimator;
    boolean flipHalfReached;
    public boolean forceDetached;
    int fullSize;
    Paint gradientPaint;
    LinearGradient gradientShader;
    int gridItemsCount;
    public boolean hasVideo;
    private Runnable hideRunnable;
    ImageReceiver imageReceiver;
    boolean inPinchToZoom;
    FrameLayout infoContainer;
    private boolean invalidateFromChild;
    boolean isFullscreenMode;
    int lastIconColor;
    private boolean lastLandscapeMode;
    private int lastSize;
    int lastSpeakingFrameColor;
    private final RLottieImageView micIconView;
    private final SimpleTextView nameView;
    private Runnable noRtmpStreamCallback;
    private TextView noRtmpStreamTextView;
    ValueAnimator noVideoStubAnimator;
    private NoVideoStubLayout noVideoStubLayout;
    ArrayList onFirstFrameRunnables;
    float overlayIconAlpha;
    GroupCallRenderersContainer parentContainer;
    public ChatObject.VideoParticipant participant;
    private CrossOutDrawable pausedVideoDrawable;
    float pinchCenterX;
    float pinchCenterY;
    float pinchScale;
    float pinchTranslationX;
    float pinchTranslationY;
    private boolean postedNoRtmpStreamCallback;
    public GroupCallGridCell primaryView;
    private float progressToBackground;
    public float progressToNoVideoStub;
    float progressToSpeaking;
    private Rect rect;
    private final ImageView screencastIcon;
    public GroupCallFullscreenAdapter.GroupCallUserCell secondaryView;
    private boolean showingAsScrimView;
    public boolean showingInFullscreen;
    float spanCount;
    Paint speakingPaint;
    private GroupCallStatusIcon statusIcon;
    private TextView stopSharingTextView;
    private boolean swipeToBack;
    private float swipeToBackDy;
    public GroupCallGridCell tabletGridView;
    public VoIPTextureView textureView;
    Bitmap thumb;
    Paint thumbPaint;
    private boolean updateNextLayoutAnimated;
    boolean useSpanSize;
    private boolean videoIsPaused;
    private float videoIsPausedProgress;

    private class NoVideoStubLayout extends View {
        float amplitude;
        float animateAmplitudeDiff;
        float animateToAmplitude;
        AvatarDrawable avatarDrawable;
        public ImageReceiver avatarImageReceiver;
        public ImageReceiver backgroundImageReceiver;
        Paint backgroundPaint;
        BlobDrawable bigWaveDrawable;
        private GroupCallActivity.WeavingState currentState;
        float cx;
        float cy;
        int muteButtonState;
        Paint paint;
        private GroupCallActivity.WeavingState prevState;
        float speakingProgress;
        private GroupCallActivity.WeavingState[] states;
        float switchProgress;
        BlobDrawable tinyWaveDrawable;
        float wavesEnter;

        public NoVideoStubLayout(Context context) {
            super(context);
            this.avatarImageReceiver = new ImageReceiver();
            this.backgroundImageReceiver = new ImageReceiver();
            this.avatarDrawable = new AvatarDrawable();
            this.paint = new Paint(1);
            this.backgroundPaint = new Paint(1);
            this.wavesEnter = BitmapDescriptorFactory.HUE_RED;
            this.states = new GroupCallActivity.WeavingState[3];
            this.muteButtonState = -1;
            this.switchProgress = 1.0f;
            this.tinyWaveDrawable = new BlobDrawable(9);
            this.bigWaveDrawable = new BlobDrawable(12);
            this.tinyWaveDrawable.minRadius = AndroidUtilities.dp(76.0f);
            this.tinyWaveDrawable.maxRadius = AndroidUtilities.dp(92.0f);
            this.tinyWaveDrawable.generateBlob();
            this.bigWaveDrawable.minRadius = AndroidUtilities.dp(80.0f);
            this.bigWaveDrawable.maxRadius = AndroidUtilities.dp(95.0f);
            this.bigWaveDrawable.generateBlob();
            this.paint.setColor(ColorUtils.blendARGB(Theme.getColor(Theme.key_voipgroup_listeningText), Theme.getColor(Theme.key_voipgroup_speakingText), this.speakingProgress));
            this.paint.setAlpha(102);
            this.backgroundPaint.setColor(ColorUtils.setAlphaComponent(-16777216, 127));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void updateMuteButtonState(boolean z) {
            GroupCallActivity.WeavingState weavingState;
            RadialGradient radialGradient;
            int i = (GroupCallMiniTextureView.this.statusIcon.isMutedByMe() || GroupCallMiniTextureView.this.statusIcon.isMutedByAdmin()) ? 2 : GroupCallMiniTextureView.this.statusIcon.isSpeaking() ? 1 : 0;
            if (i == this.muteButtonState) {
                return;
            }
            this.muteButtonState = i;
            GroupCallActivity.WeavingState[] weavingStateArr = this.states;
            if (weavingStateArr[i] == null) {
                weavingStateArr[i] = new GroupCallActivity.WeavingState(i);
                int i2 = this.muteButtonState;
                if (i2 == 2) {
                    this.states[i2].shader = new LinearGradient(BitmapDescriptorFactory.HUE_RED, 400.0f, 400.0f, BitmapDescriptorFactory.HUE_RED, new int[]{Theme.getColor(Theme.key_voipgroup_mutedByAdminGradient), Theme.getColor(Theme.key_voipgroup_mutedByAdminGradient3), Theme.getColor(Theme.key_voipgroup_mutedByAdminGradient2)}, (float[]) null, Shader.TileMode.CLAMP);
                } else {
                    GroupCallActivity.WeavingState[] weavingStateArr2 = this.states;
                    if (i2 == 1) {
                        weavingState = weavingStateArr2[i2];
                        radialGradient = new RadialGradient(200.0f, 200.0f, 200.0f, new int[]{Theme.getColor(Theme.key_voipgroup_muteButton), Theme.getColor(Theme.key_voipgroup_muteButton3)}, (float[]) null, Shader.TileMode.CLAMP);
                    } else {
                        weavingState = weavingStateArr2[i2];
                        radialGradient = new RadialGradient(200.0f, 200.0f, 200.0f, new int[]{Theme.getColor(Theme.key_voipgroup_unmuteButton2), Theme.getColor(Theme.key_voipgroup_unmuteButton)}, (float[]) null, Shader.TileMode.CLAMP);
                    }
                    weavingState.shader = radialGradient;
                }
            }
            GroupCallActivity.WeavingState weavingState2 = this.states[this.muteButtonState];
            GroupCallActivity.WeavingState weavingState3 = this.currentState;
            if (weavingState2 != weavingState3) {
                this.prevState = weavingState3;
                this.currentState = weavingState2;
                if (weavingState3 == null || !z) {
                    this.switchProgress = 1.0f;
                    this.prevState = null;
                } else {
                    this.switchProgress = BitmapDescriptorFactory.HUE_RED;
                }
            }
            invalidate();
        }

        @Override // android.view.View
        protected void onAttachedToWindow() {
            super.onAttachedToWindow();
            this.avatarImageReceiver.onAttachedToWindow();
            this.backgroundImageReceiver.onAttachedToWindow();
        }

        @Override // android.view.View
        protected void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            this.avatarImageReceiver.onDetachedFromWindow();
            this.backgroundImageReceiver.onDetachedFromWindow();
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            GroupCallActivity.WeavingState weavingState;
            float f;
            GroupCallActivity.WeavingState weavingState2;
            super.onDraw(canvas);
            RectF rectF = AndroidUtilities.rectTmp;
            float x = GroupCallMiniTextureView.this.textureView.getX();
            VoIPTextureView voIPTextureView = GroupCallMiniTextureView.this.textureView;
            float f2 = x + voIPTextureView.currentClipHorizontal;
            float y = voIPTextureView.getY();
            VoIPTextureView voIPTextureView2 = GroupCallMiniTextureView.this.textureView;
            float f3 = y + voIPTextureView2.currentClipVertical;
            float x2 = voIPTextureView2.getX() + GroupCallMiniTextureView.this.textureView.getMeasuredWidth();
            VoIPTextureView voIPTextureView3 = GroupCallMiniTextureView.this.textureView;
            rectF.set(f2, f3, x2 - voIPTextureView3.currentClipHorizontal, voIPTextureView3.getY() + GroupCallMiniTextureView.this.textureView.getMeasuredHeight() + GroupCallMiniTextureView.this.textureView.currentClipVertical);
            this.backgroundImageReceiver.setImageCoords(rectF.left, rectF.top, rectF.width(), rectF.height());
            this.backgroundImageReceiver.setRoundRadius((int) GroupCallMiniTextureView.this.textureView.roundRadius);
            this.backgroundImageReceiver.draw(canvas);
            float f4 = GroupCallMiniTextureView.this.textureView.roundRadius;
            canvas.drawRoundRect(rectF, f4, f4, this.backgroundPaint);
            float f5 = this.animateToAmplitude;
            float f6 = this.amplitude;
            if (f5 != f6) {
                float f7 = this.animateAmplitudeDiff;
                float f8 = f6 + (16.0f * f7);
                this.amplitude = f8;
                if (f7 <= BitmapDescriptorFactory.HUE_RED ? f8 < f5 : f8 > f5) {
                    this.amplitude = f5;
                }
            }
            float f9 = this.switchProgress;
            if (f9 != 1.0f) {
                if (this.prevState != null) {
                    this.switchProgress = f9 + 0.07272727f;
                }
                if (this.switchProgress >= 1.0f) {
                    this.switchProgress = 1.0f;
                    this.prevState = null;
                }
            }
            float f10 = (this.amplitude * 0.8f) + 1.0f;
            canvas.save();
            canvas.scale(f10, f10, this.cx, this.cy);
            GroupCallActivity.WeavingState weavingState3 = this.currentState;
            if (weavingState3 != null) {
                weavingState3.update((int) (this.cy - AndroidUtilities.dp(100.0f)), (int) (this.cx - AndroidUtilities.dp(100.0f)), AndroidUtilities.dp(200.0f), 16L, this.amplitude);
            }
            this.bigWaveDrawable.update(this.amplitude, 1.0f);
            this.tinyWaveDrawable.update(this.amplitude, 1.0f);
            for (int i = 0; i < 2; i++) {
                if (i == 0 && (weavingState2 = this.prevState) != null) {
                    this.paint.setShader(weavingState2.shader);
                    f = 1.0f - this.switchProgress;
                } else if (i == 1 && (weavingState = this.currentState) != null) {
                    this.paint.setShader(weavingState.shader);
                    f = this.switchProgress;
                }
                this.paint.setAlpha((int) (f * 76.0f));
                this.bigWaveDrawable.draw(this.cx, this.cy, canvas, this.paint);
                this.tinyWaveDrawable.draw(this.cx, this.cy, canvas, this.paint);
            }
            canvas.restore();
            float f11 = (this.amplitude * 0.2f) + 1.0f;
            canvas.save();
            canvas.scale(f11, f11, this.cx, this.cy);
            this.avatarImageReceiver.draw(canvas);
            canvas.restore();
            invalidate();
        }

        @Override // android.view.View
        protected void onMeasure(int i, int i2) {
            super.onMeasure(i, i2);
            float fDp = AndroidUtilities.dp(157.0f);
            this.cx = getMeasuredWidth() >> 1;
            this.cy = (getMeasuredHeight() >> 1) + (GroupCallActivity.isLandscapeMode ? BitmapDescriptorFactory.HUE_RED : (-getMeasuredHeight()) * 0.12f);
            float f = fDp / 2.0f;
            this.avatarImageReceiver.setRoundRadius((int) f);
            this.avatarImageReceiver.setImageCoords(this.cx - f, this.cy - f, fDp, fDp);
        }

        public void setAmplitude(double d) {
            float f = ((float) d) / 80.0f;
            if (f > 1.0f) {
                f = 1.0f;
            } else if (f < BitmapDescriptorFactory.HUE_RED) {
                f = BitmapDescriptorFactory.HUE_RED;
            }
            this.animateToAmplitude = f;
            this.animateAmplitudeDiff = (f - this.amplitude) / 200.0f;
        }
    }

    public GroupCallMiniTextureView(final GroupCallRenderersContainer groupCallRenderersContainer, ArrayList arrayList, final ChatObject.Call call, final GroupCallActivity groupCallActivity) {
        TextView textView;
        String string;
        super(groupCallRenderersContainer.getContext());
        this.gradientPaint = new Paint(1);
        this.speakingPaint = new Paint(1);
        this.progressToNoVideoStub = 1.0f;
        this.imageReceiver = new ImageReceiver();
        this.onFirstFrameRunnables = new ArrayList();
        this.noRtmpStreamCallback = new Runnable() { // from class: org.telegram.ui.Components.voip.GroupCallMiniTextureView$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$0();
            }
        };
        this.rect = new Rect();
        this.call = call;
        this.currentAccount = groupCallActivity.getCurrentAccount();
        CrossOutDrawable crossOutDrawable = new CrossOutDrawable(groupCallRenderersContainer.getContext(), R.drawable.calls_video, -1);
        this.pausedVideoDrawable = crossOutDrawable;
        crossOutDrawable.setCrossOut(true, false);
        this.pausedVideoDrawable.setOffsets(-AndroidUtilities.dp(4.0f), AndroidUtilities.dp(6.0f), AndroidUtilities.dp(6.0f));
        this.pausedVideoDrawable.setStrokeWidth(AndroidUtilities.dpf2(3.4f));
        this.castingScreenDrawable = groupCallRenderersContainer.getContext().getResources().getDrawable(R.drawable.screencast_big).mutate();
        final TextPaint textPaint = new TextPaint(1);
        textPaint.setTypeface(AndroidUtilities.bold());
        textPaint.setTextSize(AndroidUtilities.dp(13.0f));
        textPaint.setColor(-1);
        final TextPaint textPaint2 = new TextPaint(1);
        textPaint2.setTypeface(AndroidUtilities.bold());
        textPaint2.setTextSize(AndroidUtilities.dp(15.0f));
        textPaint2.setColor(-1);
        final String string2 = LocaleController.getString(R.string.VoipVideoOnPause);
        String string3 = LocaleController.getString(R.string.VoipVideoScreenSharingTwoLines);
        int iDp = AndroidUtilities.dp(400.0f);
        Layout.Alignment alignment = Layout.Alignment.ALIGN_CENTER;
        final StaticLayout staticLayout = new StaticLayout(string3, textPaint, iDp, alignment, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
        TLRPC.Chat chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(call.chatId));
        final StaticLayout staticLayout2 = new StaticLayout(LocaleController.formatString("VoipVideoNotAvailable", R.string.VoipVideoNotAvailable, LocaleController.formatPluralString("Participants", MessagesController.getInstance(this.currentAccount).groupCallVideoMaxParticipants, new Object[0])), textPaint, AndroidUtilities.dp(400.0f), alignment, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
        final String string4 = LocaleController.getString(R.string.VoipVideoScreenSharing);
        final float fMeasureText = textPaint.measureText(string2);
        final float fMeasureText2 = textPaint2.measureText(string4);
        boolean z = true;
        boolean z2 = false;
        VoIPTextureView voIPTextureView = new VoIPTextureView(groupCallRenderersContainer.getContext(), z2, z2, z, z) { // from class: org.telegram.ui.Components.voip.GroupCallMiniTextureView.1
            float overlayIconAlphaFrom;

            @Override // org.telegram.ui.Components.voip.VoIPTextureView
            public void animateToLayout() {
                super.animateToLayout();
                this.overlayIconAlphaFrom = GroupCallMiniTextureView.this.overlayIconAlpha;
            }

            /* JADX WARN: Removed duplicated region for block: B:146:0x0492  */
            @Override // org.telegram.ui.Components.voip.VoIPTextureView, android.view.ViewGroup, android.view.View
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            protected void dispatchDraw(Canvas canvas) {
                float f;
                float fDp;
                float f2;
                float f3;
                if (!this.renderer.isFirstFrameRendered() || ((this.renderer.getAlpha() != 1.0f && this.blurRenderer.getAlpha() != 1.0f) || GroupCallMiniTextureView.this.videoIsPaused)) {
                    if (GroupCallMiniTextureView.this.progressToBackground != 1.0f) {
                        GroupCallMiniTextureView.access$116(GroupCallMiniTextureView.this, 0.10666667f);
                        if (GroupCallMiniTextureView.this.progressToBackground > 1.0f) {
                            GroupCallMiniTextureView.this.progressToBackground = 1.0f;
                        } else {
                            invalidate();
                        }
                    }
                    GroupCallMiniTextureView groupCallMiniTextureView = GroupCallMiniTextureView.this;
                    if (groupCallMiniTextureView.thumb != null) {
                        canvas.save();
                        float f4 = this.currentThumbScale;
                        canvas.scale(f4, f4, getMeasuredWidth() / 2.0f, getMeasuredHeight() / 2.0f);
                        GroupCallMiniTextureView groupCallMiniTextureView2 = GroupCallMiniTextureView.this;
                        if (groupCallMiniTextureView2.thumbPaint == null) {
                            groupCallMiniTextureView2.thumbPaint = new Paint(1);
                            GroupCallMiniTextureView.this.thumbPaint.setFilterBitmap(true);
                        }
                        canvas.drawBitmap(GroupCallMiniTextureView.this.thumb, (getMeasuredWidth() - GroupCallMiniTextureView.this.thumb.getWidth()) / 2.0f, (getMeasuredHeight() - GroupCallMiniTextureView.this.thumb.getHeight()) / 2.0f, GroupCallMiniTextureView.this.thumbPaint);
                        canvas.restore();
                    } else {
                        groupCallMiniTextureView.imageReceiver.setImageCoords(this.currentClipHorizontal, this.currentClipVertical, getMeasuredWidth() - (this.currentClipHorizontal * 2.0f), getMeasuredHeight() - (this.currentClipVertical * 2.0f));
                        GroupCallMiniTextureView groupCallMiniTextureView3 = GroupCallMiniTextureView.this;
                        groupCallMiniTextureView3.imageReceiver.setAlpha(groupCallMiniTextureView3.progressToBackground);
                        GroupCallMiniTextureView.this.imageReceiver.draw(canvas);
                    }
                    GroupCallMiniTextureView groupCallMiniTextureView4 = GroupCallMiniTextureView.this;
                    ChatObject.VideoParticipant videoParticipant = groupCallMiniTextureView4.participant;
                    if (videoParticipant == call.videoNotAvailableParticipant) {
                        if (groupCallMiniTextureView4.showingInFullscreen || !groupCallRenderersContainer.inFullscreenMode) {
                            float fDp2 = AndroidUtilities.dp(48.0f);
                            textPaint.setAlpha(255);
                            canvas.save();
                            canvas.translate((((getMeasuredWidth() - fDp2) / 2.0f) - (AndroidUtilities.dp(400.0f) / 2.0f)) + (fDp2 / 2.0f), ((getMeasuredHeight() / 2) - fDp2) + fDp2 + AndroidUtilities.dp(10.0f));
                            staticLayout2.draw(canvas);
                            canvas.restore();
                        }
                        if (GroupCallMiniTextureView.this.stopSharingTextView.getVisibility() != 4) {
                            GroupCallMiniTextureView.this.stopSharingTextView.setVisibility(4);
                        }
                    } else if (videoParticipant.presentation && videoParticipant.participant.self) {
                        if (groupCallMiniTextureView4.stopSharingTextView.getVisibility() != 0) {
                            GroupCallMiniTextureView.this.stopSharingTextView.setVisibility(0);
                            GroupCallMiniTextureView.this.stopSharingTextView.setScaleX(1.0f);
                            GroupCallMiniTextureView.this.stopSharingTextView.setScaleY(1.0f);
                        }
                        float f5 = GroupCallMiniTextureView.this.drawFirst ? BitmapDescriptorFactory.HUE_RED : groupCallRenderersContainer.progressToFullscreenMode;
                        int iDp2 = AndroidUtilities.dp(33.0f);
                        GroupCallMiniTextureView groupCallMiniTextureView5 = GroupCallMiniTextureView.this;
                        if (groupCallMiniTextureView5.animateToFullscreen || groupCallMiniTextureView5.showingInFullscreen) {
                            f = iDp2;
                            fDp = AndroidUtilities.dp(10.0f) + (AndroidUtilities.dp(39.0f) * groupCallRenderersContainer.progressToFullscreenMode);
                        } else {
                            f = iDp2;
                            fDp = AndroidUtilities.dp(10.0f) * Math.max(1.0f - groupCallRenderersContainer.progressToFullscreenMode, (GroupCallMiniTextureView.this.showingAsScrimView || GroupCallMiniTextureView.this.animateToScrimView) ? groupCallRenderersContainer.progressToScrimView : BitmapDescriptorFactory.HUE_RED);
                        }
                        int i = (int) (f + fDp);
                        int measuredWidth = (getMeasuredWidth() - i) / 2;
                        float f6 = (GroupCallMiniTextureView.this.showingAsScrimView || GroupCallMiniTextureView.this.animateToScrimView) ? groupCallRenderersContainer.progressToScrimView : BitmapDescriptorFactory.HUE_RED;
                        GroupCallMiniTextureView groupCallMiniTextureView6 = GroupCallMiniTextureView.this;
                        if (groupCallMiniTextureView6.showingInFullscreen) {
                            f2 = f5;
                        } else {
                            f5 = groupCallMiniTextureView6.animateToFullscreen ? groupCallRenderersContainer.progressToFullscreenMode : f6;
                            f2 = (groupCallMiniTextureView6.showingAsScrimView || GroupCallMiniTextureView.this.animateToScrimView) ? groupCallRenderersContainer.progressToScrimView : groupCallRenderersContainer.progressToFullscreenMode;
                        }
                        float measuredHeight = ((getMeasuredHeight() - i) / 2) - AndroidUtilities.dp(28.0f);
                        float fDp3 = AndroidUtilities.dp(17.0f);
                        float fDp4 = AndroidUtilities.dp(74.0f);
                        GroupCallMiniTextureView groupCallMiniTextureView7 = GroupCallMiniTextureView.this;
                        int iDp3 = (int) ((measuredHeight - ((fDp3 + (fDp4 * ((groupCallMiniTextureView7.showingInFullscreen || groupCallMiniTextureView7.animateToFullscreen) ? groupCallRenderersContainer.progressToFullscreenMode : BitmapDescriptorFactory.HUE_RED))) * f5)) + (AndroidUtilities.dp(17.0f) * f2));
                        GroupCallMiniTextureView.this.castingScreenDrawable.setBounds(measuredWidth, iDp3, measuredWidth + i, iDp3 + i);
                        GroupCallMiniTextureView.this.castingScreenDrawable.draw(canvas);
                        float f7 = groupCallRenderersContainer.progressToFullscreenMode;
                        if (f7 > BitmapDescriptorFactory.HUE_RED || f6 > BitmapDescriptorFactory.HUE_RED) {
                            float fMax = Math.max(f7, f6) * f5;
                            textPaint2.setAlpha((int) (fMax * 255.0f));
                            GroupCallMiniTextureView groupCallMiniTextureView8 = GroupCallMiniTextureView.this;
                            if (groupCallMiniTextureView8.animateToFullscreen || groupCallMiniTextureView8.showingInFullscreen) {
                                groupCallMiniTextureView8.stopSharingTextView.setAlpha(fMax * (1.0f - f6));
                            } else {
                                groupCallMiniTextureView8.stopSharingTextView.setAlpha(BitmapDescriptorFactory.HUE_RED);
                            }
                            canvas.drawText(string4, (measuredWidth - (fMeasureText2 / 2.0f)) + (i / 2.0f), AndroidUtilities.dp(32.0f) + r12, textPaint2);
                        } else {
                            GroupCallMiniTextureView.this.stopSharingTextView.setAlpha(BitmapDescriptorFactory.HUE_RED);
                        }
                        GroupCallMiniTextureView.this.stopSharingTextView.setTranslationY(((AndroidUtilities.dp(72.0f) + r12) + GroupCallMiniTextureView.this.swipeToBackDy) - this.currentClipVertical);
                        GroupCallMiniTextureView.this.stopSharingTextView.setTranslationX(((getMeasuredWidth() - GroupCallMiniTextureView.this.stopSharingTextView.getMeasuredWidth()) / 2.0f) - this.currentClipHorizontal);
                        float f8 = groupCallRenderersContainer.progressToFullscreenMode;
                        if (f8 < 1.0f && f6 < 1.0f) {
                            TextPaint textPaint3 = textPaint;
                            double dMax = Math.max(f8, f6);
                            Double.isNaN(dMax);
                            textPaint3.setAlpha((int) ((1.0d - dMax) * 255.0d));
                            canvas.save();
                            canvas.translate((measuredWidth - (AndroidUtilities.dp(400.0f) / 2.0f)) + (i / 2.0f), r12 + AndroidUtilities.dp(10.0f));
                            staticLayout.draw(canvas);
                            canvas.restore();
                        }
                    } else {
                        if (groupCallMiniTextureView4.stopSharingTextView.getVisibility() != 4) {
                            GroupCallMiniTextureView.this.stopSharingTextView.setVisibility(4);
                        }
                        groupCallActivity.cellFlickerDrawable.draw(canvas, GroupCallMiniTextureView.this);
                    }
                    invalidate();
                }
                GroupCallMiniTextureView.this.noRtmpStreamTextView.setTranslationY((((getMeasuredHeight() - GroupCallMiniTextureView.this.noRtmpStreamTextView.getMeasuredHeight()) / 2.0f) + GroupCallMiniTextureView.this.swipeToBackDy) - this.currentClipVertical);
                GroupCallMiniTextureView.this.noRtmpStreamTextView.setTranslationX(((getMeasuredWidth() - GroupCallMiniTextureView.this.noRtmpStreamTextView.getMeasuredWidth()) / 2.0f) - this.currentClipHorizontal);
                ImageView imageView = GroupCallMiniTextureView.this.blurredFlippingStub;
                if (imageView != null && imageView.getParent() != null) {
                    GroupCallMiniTextureView groupCallMiniTextureView9 = GroupCallMiniTextureView.this;
                    groupCallMiniTextureView9.blurredFlippingStub.setScaleX(groupCallMiniTextureView9.textureView.renderer.getScaleX());
                    GroupCallMiniTextureView groupCallMiniTextureView10 = GroupCallMiniTextureView.this;
                    groupCallMiniTextureView10.blurredFlippingStub.setScaleY(groupCallMiniTextureView10.textureView.renderer.getScaleY());
                }
                super.dispatchDraw(canvas);
                float measuredHeight2 = (getMeasuredHeight() - this.currentClipVertical) - AndroidUtilities.dp(80.0f);
                if (GroupCallMiniTextureView.this.participant != call.videoNotAvailableParticipant) {
                    canvas.save();
                    GroupCallMiniTextureView groupCallMiniTextureView11 = GroupCallMiniTextureView.this;
                    if ((groupCallMiniTextureView11.showingInFullscreen || groupCallMiniTextureView11.animateToFullscreen) && !GroupCallActivity.isLandscapeMode && !GroupCallActivity.isTabletMode) {
                        float fDp5 = AndroidUtilities.dp(90.0f);
                        GroupCallRenderersContainer groupCallRenderersContainer2 = groupCallRenderersContainer;
                        measuredHeight2 -= (fDp5 * groupCallRenderersContainer2.progressToFullscreenMode) * (1.0f - groupCallRenderersContainer2.progressToHideUi);
                    }
                    canvas.translate(BitmapDescriptorFactory.HUE_RED, measuredHeight2);
                    canvas.drawPaint(GroupCallMiniTextureView.this.gradientPaint);
                    canvas.restore();
                }
                if (GroupCallMiniTextureView.this.videoIsPaused || GroupCallMiniTextureView.this.videoIsPausedProgress != BitmapDescriptorFactory.HUE_RED) {
                    if (GroupCallMiniTextureView.this.videoIsPaused && GroupCallMiniTextureView.this.videoIsPausedProgress != 1.0f) {
                        GroupCallMiniTextureView.access$716(GroupCallMiniTextureView.this, 0.064f);
                        if (GroupCallMiniTextureView.this.videoIsPausedProgress > 1.0f) {
                            GroupCallMiniTextureView.this.videoIsPausedProgress = 1.0f;
                        }
                    } else if (!GroupCallMiniTextureView.this.videoIsPaused && GroupCallMiniTextureView.this.videoIsPausedProgress != BitmapDescriptorFactory.HUE_RED) {
                        GroupCallMiniTextureView.access$724(GroupCallMiniTextureView.this, 0.064f);
                        if (GroupCallMiniTextureView.this.videoIsPausedProgress < BitmapDescriptorFactory.HUE_RED) {
                            GroupCallMiniTextureView.this.videoIsPausedProgress = BitmapDescriptorFactory.HUE_RED;
                        } else {
                            invalidate();
                        }
                    }
                    float f9 = GroupCallMiniTextureView.this.videoIsPausedProgress;
                    if (isInAnimation()) {
                        float f10 = this.overlayIconAlphaFrom;
                        float f11 = this.animationProgress;
                        f3 = (f10 * (1.0f - f11)) + (GroupCallMiniTextureView.this.overlayIconAlpha * f11);
                    } else {
                        f3 = GroupCallMiniTextureView.this.overlayIconAlpha;
                    }
                    float f12 = f9 * f3;
                    if (f12 > BitmapDescriptorFactory.HUE_RED) {
                        float fDp6 = AndroidUtilities.dp(48.0f);
                        float measuredWidth2 = (getMeasuredWidth() - fDp6) / 2.0f;
                        float measuredHeight3 = (getMeasuredHeight() - fDp6) / 2.0f;
                        if (GroupCallMiniTextureView.this.participant == call.videoNotAvailableParticipant) {
                            measuredHeight3 -= fDp6 / 2.5f;
                        }
                        RectF rectF = AndroidUtilities.rectTmp;
                        float f13 = measuredHeight3 + fDp6;
                        rectF.set((int) measuredWidth2, (int) measuredHeight3, (int) (measuredWidth2 + fDp6), (int) f13);
                        if (f12 != 1.0f) {
                            canvas.saveLayerAlpha(rectF, (int) (f12 * 255.0f), 31);
                        } else {
                            canvas.save();
                        }
                        GroupCallMiniTextureView.this.pausedVideoDrawable.setBounds((int) rectF.left, (int) rectF.top, (int) rectF.right, (int) rectF.bottom);
                        GroupCallMiniTextureView.this.pausedVideoDrawable.draw(canvas);
                        canvas.restore();
                        float f14 = f12 * groupCallRenderersContainer.progressToFullscreenMode;
                        if (f14 <= BitmapDescriptorFactory.HUE_RED || GroupCallMiniTextureView.this.participant == call.videoNotAvailableParticipant) {
                            return;
                        }
                        textPaint.setAlpha((int) (f14 * 255.0f));
                        canvas.drawText(string2, (measuredWidth2 - (fMeasureText / 2.0f)) + (fDp6 / 2.0f), f13 + AndroidUtilities.dp(16.0f), textPaint);
                    }
                }
            }

            @Override // org.telegram.ui.Components.voip.VoIPTextureView, android.view.ViewGroup
            protected boolean drawChild(Canvas canvas, View view, long j) {
                GroupCallMiniTextureView groupCallMiniTextureView = GroupCallMiniTextureView.this;
                if (!groupCallMiniTextureView.inPinchToZoom || view != groupCallMiniTextureView.textureView.renderer) {
                    return super.drawChild(canvas, view, j);
                }
                canvas.save();
                GroupCallMiniTextureView groupCallMiniTextureView2 = GroupCallMiniTextureView.this;
                float f = groupCallMiniTextureView2.pinchScale;
                canvas.scale(f, f, groupCallMiniTextureView2.pinchCenterX, groupCallMiniTextureView2.pinchCenterY);
                GroupCallMiniTextureView groupCallMiniTextureView3 = GroupCallMiniTextureView.this;
                canvas.translate(groupCallMiniTextureView3.pinchTranslationX, groupCallMiniTextureView3.pinchTranslationY);
                boolean zDrawChild = super.drawChild(canvas, view, j);
                canvas.restore();
                return zDrawChild;
            }

            @Override // android.view.View
            public void invalidate() {
                super.invalidate();
                GroupCallMiniTextureView.this.invalidateFromChild = true;
                GroupCallMiniTextureView.this.invalidate();
                GroupCallMiniTextureView.this.invalidateFromChild = false;
            }

            @Override // org.telegram.ui.Components.voip.VoIPTextureView
            protected void onFirstFrameRendered() {
                int i;
                ChatObject.VideoParticipant videoParticipant;
                invalidate();
                ChatObject.Call call2 = call;
                if (call2 != null && call2.call.rtmp_stream && GroupCallMiniTextureView.this.postedNoRtmpStreamCallback) {
                    AndroidUtilities.cancelRunOnUIThread(GroupCallMiniTextureView.this.noRtmpStreamCallback);
                    GroupCallMiniTextureView.this.postedNoRtmpStreamCallback = false;
                    GroupCallMiniTextureView.this.noRtmpStreamTextView.animate().cancel();
                    GroupCallMiniTextureView.this.noRtmpStreamTextView.animate().alpha(BitmapDescriptorFactory.HUE_RED).setDuration(150L).start();
                    GroupCallMiniTextureView.this.textureView.animate().cancel();
                    GroupCallMiniTextureView.this.textureView.animate().alpha(1.0f).setDuration(150L).start();
                }
                if (!GroupCallMiniTextureView.this.videoIsPaused && this.renderer.getAlpha() != 1.0f) {
                    this.renderer.animate().setDuration(300L).alpha(1.0f);
                }
                TextureView textureView = this.blurRenderer;
                if (textureView != null && textureView.getAlpha() != 1.0f) {
                    this.blurRenderer.animate().setDuration(300L).alpha(1.0f);
                }
                ImageView imageView = GroupCallMiniTextureView.this.blurredFlippingStub;
                if (imageView != null && imageView.getParent() != null) {
                    if (GroupCallMiniTextureView.this.blurredFlippingStub.getAlpha() == 1.0f) {
                        GroupCallMiniTextureView.this.blurredFlippingStub.animate().alpha(BitmapDescriptorFactory.HUE_RED).setDuration(300L).setListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.voip.GroupCallMiniTextureView.1.1
                            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                            public void onAnimationEnd(Animator animator) {
                                if (GroupCallMiniTextureView.this.blurredFlippingStub.getParent() != null) {
                                    GroupCallMiniTextureView groupCallMiniTextureView = GroupCallMiniTextureView.this;
                                    groupCallMiniTextureView.textureView.removeView(groupCallMiniTextureView.blurredFlippingStub);
                                }
                            }
                        }).start();
                    } else if (GroupCallMiniTextureView.this.blurredFlippingStub.getParent() != null) {
                        GroupCallMiniTextureView groupCallMiniTextureView = GroupCallMiniTextureView.this;
                        groupCallMiniTextureView.textureView.removeView(groupCallMiniTextureView.blurredFlippingStub);
                    }
                }
                TextureViewRenderer textureViewRenderer = this.renderer;
                int i2 = textureViewRenderer.rotatedFrameHeight;
                if (i2 == 0 || (i = textureViewRenderer.rotatedFrameWidth) == 0 || (videoParticipant = GroupCallMiniTextureView.this.participant) == null) {
                    return;
                }
                videoParticipant.setAspectRatio(i, i2, call);
            }

            @Override // org.telegram.ui.Components.voip.VoIPTextureView, android.widget.FrameLayout, android.view.ViewGroup, android.view.View
            protected void onLayout(boolean z3, int i, int i2, int i3, int i4) {
                int i5;
                ChatObject.VideoParticipant videoParticipant;
                GroupCallMiniTextureView groupCallMiniTextureView;
                VoIPTextureView voIPTextureView2;
                int i6;
                GroupCallMiniTextureView groupCallMiniTextureView2 = GroupCallMiniTextureView.this;
                if (groupCallMiniTextureView2.attached && groupCallMiniTextureView2.checkScale) {
                    TextureViewRenderer textureViewRenderer = this.renderer;
                    if (textureViewRenderer.rotatedFrameHeight != 0 && textureViewRenderer.rotatedFrameWidth != 0) {
                        if (GroupCallMiniTextureView.this.showingAsScrimView) {
                            groupCallMiniTextureView = GroupCallMiniTextureView.this;
                        } else {
                            groupCallMiniTextureView = GroupCallMiniTextureView.this;
                            if (!groupCallMiniTextureView.showingInFullscreen) {
                                if (groupCallRenderersContainer.inFullscreenMode) {
                                    voIPTextureView2 = groupCallMiniTextureView.textureView;
                                    i6 = VoIPTextureView.SCALE_TYPE_FILL;
                                } else if (!groupCallMiniTextureView.participant.presentation) {
                                    voIPTextureView2 = groupCallMiniTextureView.textureView;
                                    i6 = VoIPTextureView.SCALE_TYPE_ADAPTIVE;
                                }
                                voIPTextureView2.scaleType = i6;
                                GroupCallMiniTextureView.this.checkScale = false;
                            }
                        }
                        voIPTextureView2 = groupCallMiniTextureView.textureView;
                        i6 = VoIPTextureView.SCALE_TYPE_FIT;
                        voIPTextureView2.scaleType = i6;
                        GroupCallMiniTextureView.this.checkScale = false;
                    }
                }
                super.onLayout(z3, i, i2, i3, i4);
                TextureViewRenderer textureViewRenderer2 = this.renderer;
                int i7 = textureViewRenderer2.rotatedFrameHeight;
                if (i7 == 0 || (i5 = textureViewRenderer2.rotatedFrameWidth) == 0 || (videoParticipant = GroupCallMiniTextureView.this.participant) == null) {
                    return;
                }
                videoParticipant.setAspectRatio(i5, i7, call);
            }

            @Override // org.telegram.ui.Components.voip.VoIPTextureView, android.view.View, android.view.ViewParent
            public void requestLayout() {
                GroupCallMiniTextureView.this.requestLayout();
                super.requestLayout();
            }

            @Override // org.telegram.ui.Components.voip.VoIPTextureView
            protected void updateRendererSize() {
                super.updateRendererSize();
                ImageView imageView = GroupCallMiniTextureView.this.blurredFlippingStub;
                if (imageView == null || imageView.getParent() == null) {
                    return;
                }
                GroupCallMiniTextureView.this.blurredFlippingStub.getLayoutParams().width = GroupCallMiniTextureView.this.textureView.renderer.getMeasuredWidth();
                GroupCallMiniTextureView.this.blurredFlippingStub.getLayoutParams().height = GroupCallMiniTextureView.this.textureView.renderer.getMeasuredHeight();
            }
        };
        this.textureView = voIPTextureView;
        voIPTextureView.renderer.setScalingType(RendererCommon.ScalingType.SCALE_ASPECT_FIT);
        this.parentContainer = groupCallRenderersContainer;
        this.attachedRenderers = arrayList;
        this.activity = groupCallActivity;
        this.textureView.renderer.init(VideoCapturerDevice.getEglBase().getEglBaseContext(), new RendererCommon.RendererEvents() { // from class: org.telegram.ui.Components.voip.GroupCallMiniTextureView.2
            @Override // org.webrtc.RendererCommon.RendererEvents
            public void onFirstFrameRendered() {
                for (int i = 0; i < GroupCallMiniTextureView.this.onFirstFrameRunnables.size(); i++) {
                    AndroidUtilities.cancelRunOnUIThread((Runnable) GroupCallMiniTextureView.this.onFirstFrameRunnables.get(i));
                    ((Runnable) GroupCallMiniTextureView.this.onFirstFrameRunnables.get(i)).run();
                }
                GroupCallMiniTextureView.this.onFirstFrameRunnables.clear();
            }

            @Override // org.webrtc.RendererCommon.RendererEvents
            public void onFrameResolutionChanged(int i, int i2, int i3) {
            }
        });
        this.textureView.attachBackgroundRenderer();
        setClipChildren(false);
        this.textureView.renderer.setAlpha(BitmapDescriptorFactory.HUE_RED);
        addView(this.textureView);
        NoVideoStubLayout noVideoStubLayout = new NoVideoStubLayout(getContext());
        this.noVideoStubLayout = noVideoStubLayout;
        addView(noVideoStubLayout);
        SimpleTextView simpleTextView = new SimpleTextView(groupCallRenderersContainer.getContext());
        this.nameView = simpleTextView;
        simpleTextView.setTextSize(13);
        simpleTextView.setTextColor(ColorUtils.setAlphaComponent(-1, 229));
        simpleTextView.setTypeface(AndroidUtilities.bold());
        simpleTextView.setFullTextMaxLines(1);
        simpleTextView.setBuildFullLayout(true);
        FrameLayout frameLayout = new FrameLayout(groupCallRenderersContainer.getContext());
        this.infoContainer = frameLayout;
        frameLayout.addView(simpleTextView, LayoutHelper.createFrame(-1, -2.0f, 19, 32.0f, BitmapDescriptorFactory.HUE_RED, 8.0f, BitmapDescriptorFactory.HUE_RED));
        addView(this.infoContainer, LayoutHelper.createFrame(-1, 32.0f));
        this.speakingPaint.setStyle(Paint.Style.STROKE);
        this.speakingPaint.setStrokeWidth(AndroidUtilities.dp(2.0f));
        this.speakingPaint.setColor(Theme.getColor(Theme.key_voipgroup_speakingText));
        this.infoContainer.setClipChildren(false);
        RLottieImageView rLottieImageView = new RLottieImageView(groupCallRenderersContainer.getContext());
        this.micIconView = rLottieImageView;
        addView(rLottieImageView, LayoutHelper.createFrame(24, 24.0f, 0, 4.0f, 6.0f, 4.0f, BitmapDescriptorFactory.HUE_RED));
        ImageView imageView = new ImageView(groupCallRenderersContainer.getContext());
        this.screencastIcon = imageView;
        addView(imageView, LayoutHelper.createFrame(24, 24.0f, 0, 4.0f, 6.0f, 4.0f, BitmapDescriptorFactory.HUE_RED));
        imageView.setPadding(AndroidUtilities.dp(4.0f), AndroidUtilities.dp(4.0f), AndroidUtilities.dp(4.0f), AndroidUtilities.dp(4.0f));
        imageView.setImageDrawable(ContextCompat.getDrawable(groupCallRenderersContainer.getContext(), R.drawable.voicechat_screencast));
        imageView.setColorFilter(new PorterDuffColorFilter(-1, PorterDuff.Mode.MULTIPLY));
        Drawable drawableCreateSimpleSelectorRoundRectDrawable = Theme.createSimpleSelectorRoundRectDrawable(AndroidUtilities.dp(19.0f), 0, ColorUtils.setAlphaComponent(-1, 100));
        TextView textView2 = new TextView(groupCallRenderersContainer.getContext()) { // from class: org.telegram.ui.Components.voip.GroupCallMiniTextureView.3
            @Override // android.widget.TextView, android.view.View
            public boolean onTouchEvent(MotionEvent motionEvent) {
                if (Math.abs(GroupCallMiniTextureView.this.stopSharingTextView.getAlpha() - 1.0f) > 0.001f) {
                    return false;
                }
                return super.onTouchEvent(motionEvent);
            }
        };
        this.stopSharingTextView = textView2;
        textView2.setText(LocaleController.getString(R.string.VoipVideoScreenStopSharing));
        this.stopSharingTextView.setTextSize(1, 15.0f);
        this.stopSharingTextView.setTypeface(AndroidUtilities.bold());
        this.stopSharingTextView.setPadding(AndroidUtilities.dp(21.0f), 0, AndroidUtilities.dp(21.0f), 0);
        this.stopSharingTextView.setTextColor(-1);
        this.stopSharingTextView.setBackground(drawableCreateSimpleSelectorRoundRectDrawable);
        this.stopSharingTextView.setGravity(17);
        this.stopSharingTextView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.voip.GroupCallMiniTextureView$$ExternalSyntheticLambda7
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$1(view);
            }
        });
        addView(this.stopSharingTextView, LayoutHelper.createFrame(-2, 38, 51));
        TextView textView3 = new TextView(groupCallRenderersContainer.getContext());
        this.noRtmpStreamTextView = textView3;
        textView3.setTextSize(1, 15.0f);
        this.noRtmpStreamTextView.setPadding(AndroidUtilities.dp(21.0f), 0, AndroidUtilities.dp(21.0f), 0);
        this.noRtmpStreamTextView.setTextColor(Theme.getColor(Theme.key_voipgroup_lastSeenText));
        this.noRtmpStreamTextView.setBackground(drawableCreateSimpleSelectorRoundRectDrawable);
        this.noRtmpStreamTextView.setGravity(17);
        this.noRtmpStreamTextView.setAlpha(BitmapDescriptorFactory.HUE_RED);
        if (ChatObject.canManageCalls(chat)) {
            textView = this.noRtmpStreamTextView;
            string = LocaleController.getString(R.string.NoRtmpStreamFromAppOwner);
        } else {
            textView = this.noRtmpStreamTextView;
            string = LocaleController.formatString("NoRtmpStreamFromAppViewer", R.string.NoRtmpStreamFromAppViewer, chat.title);
        }
        textView.setText(AndroidUtilities.replaceTags(string));
        addView(this.noRtmpStreamTextView, LayoutHelper.createFrame(-2, -2, 51));
    }

    static /* synthetic */ float access$116(GroupCallMiniTextureView groupCallMiniTextureView, float f) {
        float f2 = groupCallMiniTextureView.progressToBackground + f;
        groupCallMiniTextureView.progressToBackground = f2;
        return f2;
    }

    static /* synthetic */ float access$716(GroupCallMiniTextureView groupCallMiniTextureView, float f) {
        float f2 = groupCallMiniTextureView.videoIsPausedProgress + f;
        groupCallMiniTextureView.videoIsPausedProgress = f2;
        return f2;
    }

    static /* synthetic */ float access$724(GroupCallMiniTextureView groupCallMiniTextureView, float f) {
        float f2 = groupCallMiniTextureView.videoIsPausedProgress - f;
        groupCallMiniTextureView.videoIsPausedProgress = f2;
        return f2;
    }

    public static GroupCallMiniTextureView getOrCreate(ArrayList arrayList, GroupCallRenderersContainer groupCallRenderersContainer, GroupCallGridCell groupCallGridCell, GroupCallFullscreenAdapter.GroupCallUserCell groupCallUserCell, GroupCallGridCell groupCallGridCell2, ChatObject.VideoParticipant videoParticipant, ChatObject.Call call, GroupCallActivity groupCallActivity) {
        GroupCallMiniTextureView groupCallMiniTextureView;
        int i = 0;
        while (true) {
            if (i >= arrayList.size()) {
                groupCallMiniTextureView = null;
                break;
            }
            if (videoParticipant.equals(((GroupCallMiniTextureView) arrayList.get(i)).participant)) {
                groupCallMiniTextureView = (GroupCallMiniTextureView) arrayList.get(i);
                break;
            }
            i++;
        }
        if (groupCallMiniTextureView == null) {
            groupCallMiniTextureView = new GroupCallMiniTextureView(groupCallRenderersContainer, arrayList, call, groupCallActivity);
        }
        if (groupCallGridCell != null) {
            groupCallMiniTextureView.setPrimaryView(groupCallGridCell);
        }
        if (groupCallUserCell != null) {
            groupCallMiniTextureView.setSecondaryView(groupCallUserCell);
        }
        if (groupCallGridCell2 != null) {
            groupCallMiniTextureView.setTabletGridView(groupCallGridCell2);
        }
        return groupCallMiniTextureView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0() {
        if (this.textureView.renderer.isFirstFrameRendered()) {
            return;
        }
        this.textureView.animate().cancel();
        this.textureView.animate().alpha(BitmapDescriptorFactory.HUE_RED).setDuration(150L).start();
        this.noRtmpStreamTextView.animate().cancel();
        this.noRtmpStreamTextView.animate().alpha(1.0f).setDuration(150L).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(View view) {
        if (VoIPService.getSharedInstance() != null) {
            VoIPService.getSharedInstance().stopScreenCapture();
        }
        this.stopSharingTextView.animate().alpha(BitmapDescriptorFactory.HUE_RED).scaleX(BitmapDescriptorFactory.HUE_RED).scaleY(BitmapDescriptorFactory.HUE_RED).setDuration(180L).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$saveThumb$4(Bitmap bitmap) {
        HashMap<String, Bitmap> map = this.call.thumbs;
        ChatObject.VideoParticipant videoParticipant = this.participant;
        boolean z = videoParticipant.presentation;
        TLRPC.GroupCallParticipant groupCallParticipant = videoParticipant.participant;
        map.put(z ? groupCallParticipant.presentationEndpoint : groupCallParticipant.videoEndpoint, bitmap);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$saveThumb$5(final Bitmap bitmap, int i) {
        if (bitmap == null || bitmap.getPixel(0, 0) == 0) {
            return;
        }
        Utilities.stackBlurBitmap(bitmap, Math.max(7, Math.max(bitmap.getWidth(), bitmap.getHeight()) / 180));
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.voip.GroupCallMiniTextureView$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$saveThumb$4(bitmap);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startFlipAnimation$7(ValueAnimator valueAnimator) {
        boolean z;
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        if (fFloatValue < 0.5f) {
            z = false;
        } else {
            fFloatValue -= 1.0f;
            z = true;
        }
        if (z && !this.flipHalfReached) {
            this.blurredFlippingStub.setAlpha(1.0f);
            this.flipHalfReached = true;
            this.textureView.renderer.clearImage();
        }
        float f = fFloatValue * 180.0f;
        this.blurredFlippingStub.setRotationY(f);
        this.textureView.renderer.setRotationY(f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateAttachState$2(boolean z, View view) {
        if (z) {
            this.parentContainer.removeView(view);
        }
        view.setVisibility(8);
        this.hideRunnable = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateAttachState$3(ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.progressToNoVideoStub = fFloatValue;
        this.noVideoStubLayout.setAlpha(fFloatValue);
        this.textureView.invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateIconColor$6(int i, int i2, int i3, int i4, ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.lastIconColor = ColorUtils.blendARGB(i, i2, fFloatValue);
        int iBlendARGB = ColorUtils.blendARGB(i3, i4, fFloatValue);
        this.lastSpeakingFrameColor = iBlendARGB;
        this.speakingPaint.setColor(iBlendARGB);
        if (this.progressToSpeaking > BitmapDescriptorFactory.HUE_RED) {
            invalidate();
        }
    }

    private void loadThumb() {
        ImageLocation forChat;
        GradientDrawable gradientDrawable;
        TLRPC.Chat chat;
        if (this.thumb != null) {
            return;
        }
        HashMap<String, Bitmap> map = this.call.thumbs;
        ChatObject.VideoParticipant videoParticipant = this.participant;
        boolean z = videoParticipant.presentation;
        TLRPC.GroupCallParticipant groupCallParticipant = videoParticipant.participant;
        Bitmap bitmap = map.get(z ? groupCallParticipant.presentationEndpoint : groupCallParticipant.videoEndpoint);
        this.thumb = bitmap;
        this.textureView.setThumb(bitmap);
        if (this.thumb == null) {
            long peerId = MessageObject.getPeerId(this.participant.participant.peer);
            ChatObject.VideoParticipant videoParticipant2 = this.participant;
            if (videoParticipant2.participant.self && videoParticipant2.presentation) {
                this.imageReceiver.setImageBitmap(new MotionBackgroundDrawable(-14602694, -13935795, -14395293, -14203560, true));
                return;
            }
            MessagesController messagesController = MessagesController.getInstance(this.currentAccount);
            if (peerId > 0) {
                TLRPC.User user = messagesController.getUser(Long.valueOf(peerId));
                forChat = ImageLocation.getForUser(user, 1);
                int colorForId = user != null ? AvatarDrawable.getColorForId(user.id) : ColorUtils.blendARGB(-16777216, -1, 0.2f);
                gradientDrawable = new GradientDrawable(GradientDrawable.Orientation.BOTTOM_TOP, new int[]{ColorUtils.blendARGB(colorForId, -16777216, 0.2f), ColorUtils.blendARGB(colorForId, -16777216, 0.4f)});
                chat = user;
            } else {
                TLRPC.Chat chat2 = messagesController.getChat(Long.valueOf(-peerId));
                forChat = ImageLocation.getForChat(chat2, 1);
                int colorForId2 = chat2 != null ? AvatarDrawable.getColorForId(chat2.id) : ColorUtils.blendARGB(-16777216, -1, 0.2f);
                gradientDrawable = new GradientDrawable(GradientDrawable.Orientation.BOTTOM_TOP, new int[]{ColorUtils.blendARGB(colorForId2, -16777216, 0.2f), ColorUtils.blendARGB(colorForId2, -16777216, 0.4f)});
                chat = chat2;
            }
            this.imageReceiver.setImage(forChat, "50_50_b", gradientDrawable, null, chat, 0);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x002b A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x002c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void updateIconColor(boolean z) {
        final int color;
        final int color2;
        int i;
        GroupCallStatusIcon groupCallStatusIcon = this.statusIcon;
        if (groupCallStatusIcon == null) {
            return;
        }
        if (groupCallStatusIcon.isMutedByMe()) {
            i = Theme.key_voipgroup_mutedByAdminIcon;
        } else {
            if (!this.statusIcon.isSpeaking()) {
                color = Theme.getColor(Theme.key_voipgroup_speakingText);
                color2 = -1;
                if (this.animateToColor != color2) {
                    return;
                }
                ValueAnimator valueAnimator = this.colorAnimator;
                if (valueAnimator != null) {
                    valueAnimator.removeAllListeners();
                    this.colorAnimator.cancel();
                }
                if (!z) {
                    Paint paint = this.speakingPaint;
                    this.lastSpeakingFrameColor = color;
                    paint.setColor(color);
                    return;
                }
                final int i2 = this.lastIconColor;
                final int i3 = this.lastSpeakingFrameColor;
                this.animateToColor = color2;
                ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
                this.colorAnimator = valueAnimatorOfFloat;
                final int i4 = color2;
                final int i5 = color;
                valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.voip.GroupCallMiniTextureView$$ExternalSyntheticLambda4
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                        this.f$0.lambda$updateIconColor$6(i2, i4, i3, i5, valueAnimator2);
                    }
                });
                this.colorAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.voip.GroupCallMiniTextureView.7
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        GroupCallMiniTextureView groupCallMiniTextureView = GroupCallMiniTextureView.this;
                        int i6 = color2;
                        groupCallMiniTextureView.lastIconColor = i6;
                        groupCallMiniTextureView.animateToColor = i6;
                        int i7 = color;
                        groupCallMiniTextureView.lastSpeakingFrameColor = i7;
                        groupCallMiniTextureView.speakingPaint.setColor(i7);
                        GroupCallMiniTextureView groupCallMiniTextureView2 = GroupCallMiniTextureView.this;
                        if (groupCallMiniTextureView2.progressToSpeaking > BitmapDescriptorFactory.HUE_RED) {
                            groupCallMiniTextureView2.invalidate();
                        }
                    }
                });
                this.colorAnimator.start();
                return;
            }
            i = Theme.key_voipgroup_speakingText;
        }
        color2 = Theme.getColor(i);
        color = color2;
        if (this.animateToColor != color2) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0109  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x010b  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x013d  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x014f  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected void dispatchDraw(Canvas canvas) {
        RLottieImageView rLottieImageView;
        float f;
        if (this.attached) {
            float y = (((this.textureView.getY() + this.textureView.getMeasuredHeight()) - this.textureView.currentClipVertical) - this.infoContainer.getMeasuredHeight()) + this.swipeToBackDy;
            if (this.showingAsScrimView || this.animateToScrimView) {
                this.infoContainer.setAlpha(1.0f - this.parentContainer.progressToScrimView);
                rLottieImageView = this.micIconView;
                f = this.parentContainer.progressToScrimView;
            } else {
                if (this.showingInFullscreen || this.animateToFullscreen) {
                    if (!GroupCallActivity.isLandscapeMode && !GroupCallActivity.isTabletMode) {
                        float fDp = AndroidUtilities.dp(90.0f);
                        GroupCallRenderersContainer groupCallRenderersContainer = this.parentContainer;
                        y -= (fDp * groupCallRenderersContainer.progressToFullscreenMode) * (1.0f - groupCallRenderersContainer.progressToHideUi);
                    }
                } else if (this.secondaryView != null) {
                    this.infoContainer.setAlpha(1.0f - this.parentContainer.progressToFullscreenMode);
                    rLottieImageView = this.micIconView;
                    f = this.parentContainer.progressToFullscreenMode;
                }
                this.infoContainer.setAlpha(1.0f);
                this.micIconView.setAlpha(1.0f);
                if (!this.showingInFullscreen || this.animateToFullscreen) {
                    this.nameView.setFullAlpha(this.parentContainer.progressToFullscreenMode);
                } else {
                    this.nameView.setFullAlpha(BitmapDescriptorFactory.HUE_RED);
                }
                this.micIconView.setTranslationX(this.infoContainer.getX());
                this.micIconView.setTranslationY(y - AndroidUtilities.dp(2.0f));
                if (this.screencastIcon.getVisibility() == 0) {
                    this.screencastIcon.setTranslationX((this.textureView.getMeasuredWidth() - (this.textureView.currentClipHorizontal * 2.0f)) - AndroidUtilities.dp(32.0f));
                    this.screencastIcon.setTranslationY(y - AndroidUtilities.dp(2.0f));
                    ImageView imageView = this.screencastIcon;
                    GroupCallRenderersContainer groupCallRenderersContainer2 = this.parentContainer;
                    imageView.setAlpha(Math.min(1.0f - groupCallRenderersContainer2.progressToFullscreenMode, 1.0f - groupCallRenderersContainer2.progressToScrimView));
                }
                this.infoContainer.setTranslationY(y);
                this.infoContainer.setTranslationX(!this.drawFirst ? BitmapDescriptorFactory.HUE_RED : AndroidUtilities.dp(6.0f) * this.parentContainer.progressToFullscreenMode);
            }
            rLottieImageView.setAlpha(1.0f - f);
            if (this.showingInFullscreen) {
                this.nameView.setFullAlpha(this.parentContainer.progressToFullscreenMode);
                this.micIconView.setTranslationX(this.infoContainer.getX());
                this.micIconView.setTranslationY(y - AndroidUtilities.dp(2.0f));
                if (this.screencastIcon.getVisibility() == 0) {
                }
                this.infoContainer.setTranslationY(y);
                this.infoContainer.setTranslationX(!this.drawFirst ? BitmapDescriptorFactory.HUE_RED : AndroidUtilities.dp(6.0f) * this.parentContainer.progressToFullscreenMode);
            }
        }
        super.dispatchDraw(canvas);
        if (this.attached) {
            GroupCallStatusIcon groupCallStatusIcon = this.statusIcon;
            if (groupCallStatusIcon != null) {
                boolean z = groupCallStatusIcon.isSpeaking;
                if (z) {
                    float f2 = this.progressToSpeaking;
                    if (f2 != 1.0f) {
                        float f3 = f2 + 0.053333335f;
                        this.progressToSpeaking = f3;
                        if (f3 > 1.0f) {
                            this.progressToSpeaking = 1.0f;
                        } else {
                            invalidate();
                        }
                    } else if (!z) {
                        float f4 = this.progressToSpeaking;
                        if (f4 != BitmapDescriptorFactory.HUE_RED) {
                            float f5 = f4 - 0.053333335f;
                            this.progressToSpeaking = f5;
                            if (f5 < BitmapDescriptorFactory.HUE_RED) {
                                this.progressToSpeaking = BitmapDescriptorFactory.HUE_RED;
                            }
                        }
                    }
                }
            }
            float f6 = this.progressToSpeaking;
            GroupCallRenderersContainer groupCallRenderersContainer3 = this.parentContainer;
            float f7 = (1.0f - groupCallRenderersContainer3.progressToFullscreenMode) * f6 * (1.0f - groupCallRenderersContainer3.progressToScrimView);
            if (f6 > BitmapDescriptorFactory.HUE_RED) {
                this.speakingPaint.setAlpha((int) (f7 * 255.0f));
                float fMax = (Math.max(BitmapDescriptorFactory.HUE_RED, 1.0f - (Math.abs(this.swipeToBackDy) / AndroidUtilities.dp(300.0f))) * 0.1f) + 0.9f;
                canvas.save();
                RectF rectF = AndroidUtilities.rectTmp;
                float x = this.textureView.getX();
                VoIPTextureView voIPTextureView = this.textureView;
                float f8 = x + voIPTextureView.currentClipHorizontal;
                float y2 = voIPTextureView.getY();
                VoIPTextureView voIPTextureView2 = this.textureView;
                float f9 = y2 + voIPTextureView2.currentClipVertical;
                float x2 = voIPTextureView2.getX() + this.textureView.getMeasuredWidth();
                VoIPTextureView voIPTextureView3 = this.textureView;
                rectF.set(f8, f9, x2 - voIPTextureView3.currentClipHorizontal, (voIPTextureView3.getY() + this.textureView.getMeasuredHeight()) - this.textureView.currentClipVertical);
                canvas.scale(fMax, fMax, rectF.centerX(), rectF.centerY());
                canvas.translate(BitmapDescriptorFactory.HUE_RED, this.swipeToBackDy);
                float f10 = this.textureView.roundRadius;
                canvas.drawRoundRect(rectF, f10, f10, this.speakingPaint);
                canvas.restore();
            }
        }
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j) {
        if (!this.swipeToBack || (view != this.textureView && view != this.noVideoStubLayout)) {
            return super.drawChild(canvas, view, j);
        }
        float fMax = (Math.max(BitmapDescriptorFactory.HUE_RED, 1.0f - (Math.abs(this.swipeToBackDy) / AndroidUtilities.dp(300.0f))) * 0.1f) + 0.9f;
        canvas.save();
        canvas.scale(fMax, fMax, view.getX() + (view.getMeasuredWidth() / 2.0f), view.getY() + (view.getMeasuredHeight() / 2.0f));
        canvas.translate(BitmapDescriptorFactory.HUE_RED, this.swipeToBackDy);
        boolean zDrawChild = super.drawChild(canvas, view, j);
        canvas.restore();
        return zDrawChild;
    }

    public void forceDetach(boolean z) {
        this.forceDetached = true;
        this.attached = false;
        this.parentContainer.detach(this);
        if (z) {
            if (this.participant.participant.self) {
                if (VoIPService.getSharedInstance() != null) {
                    VoIPService.getSharedInstance().setLocalSink(null, this.participant.presentation);
                }
            } else if (VoIPService.getSharedInstance() != null && !RTMPStreamPipOverlay.isVisible()) {
                VoIPService sharedInstance = VoIPService.getSharedInstance();
                ChatObject.VideoParticipant videoParticipant = this.participant;
                sharedInstance.removeRemoteSink(videoParticipant.participant, videoParticipant.presentation);
            }
        }
        saveThumb();
        ValueAnimator valueAnimator = this.noVideoStubAnimator;
        if (valueAnimator != null) {
            valueAnimator.removeAllListeners();
            this.noVideoStubAnimator.cancel();
        }
        this.textureView.renderer.release();
    }

    public String getName() {
        long peerId = MessageObject.getPeerId(this.participant.participant.peer);
        return DialogObject.isUserDialog(peerId) ? UserObject.getUserName(AccountInstance.getInstance(UserConfig.selectedAccount).getMessagesController().getUser(Long.valueOf(peerId))) : AccountInstance.getInstance(UserConfig.selectedAccount).getMessagesController().getChat(Long.valueOf(-peerId)).title;
    }

    public GroupCallGridCell getPrimaryView() {
        return this.primaryView;
    }

    public void getRenderBufferBitmap(GlGenericDrawer.TextureCallback textureCallback) {
        this.textureView.renderer.getRenderBufferBitmap(textureCallback);
    }

    public boolean hasImage() {
        return this.textureView.stubVisibleProgress == 1.0f;
    }

    @Override // android.view.View
    public void invalidate() {
        super.invalidate();
        if (!this.invalidateFromChild) {
            this.textureView.invalidate();
        }
        GroupCallGridCell groupCallGridCell = this.primaryView;
        if (groupCallGridCell != null) {
            groupCallGridCell.invalidate();
            if (this.activity.getScrimView() == this.primaryView) {
                this.activity.getContainerView().invalidate();
            }
        }
        GroupCallFullscreenAdapter.GroupCallUserCell groupCallUserCell = this.secondaryView;
        if (groupCallUserCell != null) {
            groupCallUserCell.invalidate();
            if (this.secondaryView.getParent() != null) {
                ((View) this.secondaryView.getParent()).invalidate();
            }
        }
        if (getParent() != null) {
            ((View) getParent()).invalidate();
        }
    }

    public boolean isAttached() {
        return this.attached;
    }

    public boolean isFullyVisible() {
        return !this.showingInFullscreen && !this.animateToFullscreen && this.attached && this.textureView.renderer.isFirstFrameRendered() && getAlpha() == 1.0f;
    }

    public boolean isInsideStopScreenButton(float f, float f2) {
        this.stopSharingTextView.getHitRect(this.rect);
        return this.rect.contains((int) f, (int) f2);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.imageReceiver.onAttachedToWindow();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.imageReceiver.onDetachedFromWindow();
    }

    /* JADX WARN: Removed duplicated region for block: B:57:0x0175  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0186  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x01aa  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x01b4  */
    @Override // android.widget.FrameLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected void onMeasure(int i, int i2) {
        float size;
        int iDp;
        GroupCallGridCell groupCallGridCell;
        float itemHeight;
        int iDp2;
        int iMakeMeasureSpec;
        int paddingBottom;
        int iMakeMeasureSpec2;
        int size2;
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.infoContainer.getLayoutParams();
        int i3 = layoutParams.leftMargin;
        float f = this.call.call.rtmp_stream ? BitmapDescriptorFactory.HUE_RED : 1.0f;
        boolean z = this.lastLandscapeMode;
        boolean z2 = GroupCallActivity.isLandscapeMode;
        if (z != z2) {
            this.checkScale = true;
            this.lastLandscapeMode = z2;
        }
        int iDp3 = AndroidUtilities.dp(2.0f);
        layoutParams.rightMargin = iDp3;
        layoutParams.leftMargin = iDp3;
        if (this.updateNextLayoutAnimated) {
            this.nameView.animate().scaleX(f).scaleY(f).start();
            this.micIconView.animate().scaleX(f).scaleY(f).start();
        } else {
            this.nameView.animate().cancel();
            this.nameView.setScaleX(f);
            this.nameView.setScaleY(f);
            this.micIconView.animate().cancel();
            this.micIconView.setScaleX(f);
            this.micIconView.setScaleY(f);
            this.infoContainer.animate().cancel();
        }
        this.updateNextLayoutAnimated = false;
        if (this.showingInFullscreen) {
            updateSize(0);
            this.overlayIconAlpha = 1.0f;
            if (GroupCallActivity.isTabletMode) {
                int size3 = View.MeasureSpec.getSize(i) - AndroidUtilities.dp(328.0f);
                size2 = View.MeasureSpec.getSize(i2) - AndroidUtilities.dp(4.0f);
                iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(size3, 1073741824);
            } else if (GroupCallActivity.isLandscapeMode) {
                int size4 = View.MeasureSpec.getSize(i);
                if (!this.call.call.rtmp_stream) {
                    size4 -= AndroidUtilities.dp(92.0f);
                }
                iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(size4, 1073741824);
                size2 = View.MeasureSpec.getSize(i2);
            } else {
                paddingBottom = View.MeasureSpec.getSize(i2);
                if (!this.call.call.rtmp_stream) {
                    paddingBottom -= AndroidUtilities.dp(92.0f);
                }
                iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), 1073741824);
                super.onMeasure(iMakeMeasureSpec, View.MeasureSpec.makeMeasureSpec(paddingBottom, 1073741824));
            }
            super.onMeasure(iMakeMeasureSpec2, View.MeasureSpec.makeMeasureSpec(size2, 1073741824));
        } else {
            if (this.showingAsScrimView) {
                this.overlayIconAlpha = 1.0f;
                int iMin = Math.min(View.MeasureSpec.getSize(i), View.MeasureSpec.getSize(i2)) - (AndroidUtilities.dp(14.0f) * 2);
                iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(iMin, 1073741824);
                paddingBottom = iMin + getPaddingBottom();
            } else if (this.useSpanSize) {
                this.overlayIconAlpha = 1.0f;
                int i4 = ((!GroupCallActivity.isTabletMode || this.tabletGridView == null) && !GroupCallActivity.isLandscapeMode) ? 2 : 6;
                if (this.tabletGridView != null) {
                    iDp = View.MeasureSpec.getSize(i) - AndroidUtilities.dp(344.0f);
                } else if (GroupCallActivity.isTabletMode) {
                    iDp = AndroidUtilities.dp(320.0f);
                } else {
                    size = (View.MeasureSpec.getSize(i) - (AndroidUtilities.dp(14.0f) * 2)) + (GroupCallActivity.isLandscapeMode ? -AndroidUtilities.dp(90.0f) : 0);
                    float f2 = (this.spanCount / i4) * size;
                    groupCallGridCell = this.tabletGridView;
                    if (groupCallGridCell == null) {
                        itemHeight = groupCallGridCell.getItemHeight() - AndroidUtilities.dp(4.0f);
                        iDp2 = AndroidUtilities.dp(4.0f);
                    } else {
                        if (GroupCallActivity.isTabletMode) {
                            itemHeight = size / 2.0f;
                        } else {
                            itemHeight = size / (GroupCallActivity.isLandscapeMode ? 3 : 2);
                        }
                        iDp2 = AndroidUtilities.dp(2.0f);
                    }
                    float f3 = f2 - iDp2;
                    FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) this.infoContainer.getLayoutParams();
                    float fDp = this.screencastIcon.getVisibility() != 0 ? f3 - AndroidUtilities.dp(28.0f) : f3;
                    updateSize((int) fDp);
                    layoutParams2.width = (int) (fDp - (layoutParams2.leftMargin * 2));
                    iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec((int) f3, 1073741824);
                    paddingBottom = (int) itemHeight;
                }
                size = iDp;
                float f22 = (this.spanCount / i4) * size;
                groupCallGridCell = this.tabletGridView;
                if (groupCallGridCell == null) {
                }
                float f32 = f22 - iDp2;
                FrameLayout.LayoutParams layoutParams22 = (FrameLayout.LayoutParams) this.infoContainer.getLayoutParams();
                if (this.screencastIcon.getVisibility() != 0) {
                }
                updateSize((int) fDp);
                layoutParams22.width = (int) (fDp - (layoutParams22.leftMargin * 2));
                iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec((int) f32, 1073741824);
                paddingBottom = (int) itemHeight;
            } else {
                this.overlayIconAlpha = BitmapDescriptorFactory.HUE_RED;
                super.onMeasure(i, i2);
            }
            super.onMeasure(iMakeMeasureSpec, View.MeasureSpec.makeMeasureSpec(paddingBottom, 1073741824));
        }
        int size5 = View.MeasureSpec.getSize(i2) + (View.MeasureSpec.getSize(i) << 16);
        if (this.lastSize != size5) {
            this.lastSize = size5;
            LinearGradient linearGradient = new LinearGradient(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, AndroidUtilities.dp(120.0f), 0, ColorUtils.setAlphaComponent(-16777216, R.styleable.AppCompatTheme_windowFixedHeightMajor), Shader.TileMode.CLAMP);
            this.gradientShader = linearGradient;
            this.gradientPaint.setShader(linearGradient);
        }
        this.nameView.setPivotX(BitmapDescriptorFactory.HUE_RED);
        this.nameView.setPivotY(r14.getMeasuredHeight() / 2.0f);
    }

    @Override // org.telegram.ui.Components.voip.GroupCallStatusIcon.Callback
    public void onStatusChanged() {
        invalidate();
        updateIconColor(true);
        if (this.noVideoStubLayout.getVisibility() == 0) {
            this.noVideoStubLayout.updateMuteButtonState(true);
        }
    }

    public void release() {
        this.textureView.renderer.release();
        GroupCallStatusIcon groupCallStatusIcon = this.statusIcon;
        if (groupCallStatusIcon != null) {
            this.activity.statusIconPool.add(groupCallStatusIcon);
            this.statusIcon.setCallback(null);
            this.statusIcon.setImageView(null);
        }
        this.statusIcon = null;
    }

    public void runDelayedAnimations() {
        for (int i = 0; i < this.onFirstFrameRunnables.size(); i++) {
            ((Runnable) this.onFirstFrameRunnables.get(i)).run();
        }
        this.onFirstFrameRunnables.clear();
    }

    public void runOnFrameRendered(Runnable runnable) {
        if (this.textureView.renderer.isFirstFrameRendered()) {
            runnable.run();
        } else {
            AndroidUtilities.runOnUIThread(runnable, 250L);
            this.onFirstFrameRunnables.add(runnable);
        }
    }

    public void saveThumb() {
        if (this.participant == null || this.textureView.renderer.getMeasuredHeight() == 0 || this.textureView.renderer.getMeasuredWidth() == 0) {
            return;
        }
        getRenderBufferBitmap(new GlGenericDrawer.TextureCallback() { // from class: org.telegram.ui.Components.voip.GroupCallMiniTextureView$$ExternalSyntheticLambda0
            @Override // org.webrtc.GlGenericDrawer.TextureCallback
            public final void run(Bitmap bitmap, int i) {
                this.f$0.lambda$saveThumb$5(bitmap, i);
            }
        });
    }

    public void setAmplitude(double d) {
        this.statusIcon.setAmplitude(d);
        this.noVideoStubLayout.setAmplitude(d);
    }

    public void setFullscreenMode(boolean z, boolean z2) {
        if (this.isFullscreenMode != z) {
            this.isFullscreenMode = z;
            updateAttachState(!(this.primaryView == null && this.tabletGridView == null) && z2);
        }
    }

    public void setPrimaryView(GroupCallGridCell groupCallGridCell) {
        if (this.primaryView != groupCallGridCell) {
            this.primaryView = groupCallGridCell;
            this.checkScale = true;
            updateAttachState(true);
        }
    }

    public void setSecondaryView(GroupCallFullscreenAdapter.GroupCallUserCell groupCallUserCell) {
        if (this.secondaryView != groupCallUserCell) {
            this.secondaryView = groupCallUserCell;
            this.checkScale = true;
            updateAttachState(true);
        }
    }

    public void setShowingAsScrimView(boolean z, boolean z2) {
        this.showingAsScrimView = z;
        updateAttachState(z2);
    }

    public void setShowingInFullscreen(boolean z, boolean z2) {
        if (this.showingInFullscreen != z) {
            this.showingInFullscreen = z;
            this.checkScale = true;
            updateAttachState(z2);
        }
    }

    public void setSwipeToBack(boolean z, float f) {
        if (this.swipeToBack == z && this.swipeToBackDy == f) {
            return;
        }
        this.swipeToBack = z;
        this.swipeToBackDy = f;
        this.textureView.invalidate();
        invalidate();
    }

    public void setTabletGridView(GroupCallGridCell groupCallGridCell) {
        if (this.tabletGridView != groupCallGridCell) {
            this.tabletGridView = groupCallGridCell;
            updateAttachState(true);
        }
    }

    public void setViews(GroupCallGridCell groupCallGridCell, GroupCallFullscreenAdapter.GroupCallUserCell groupCallUserCell, GroupCallGridCell groupCallGridCell2) {
        this.primaryView = groupCallGridCell;
        this.secondaryView = groupCallUserCell;
        this.tabletGridView = groupCallGridCell2;
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
    }

    public void setZoom(boolean z, float f, float f2, float f3, float f4, float f5) {
        if (this.pinchScale == f && this.pinchCenterX == f2 && this.pinchCenterY == f3 && this.pinchTranslationX == f4 && this.pinchTranslationY == f5) {
            return;
        }
        this.inPinchToZoom = z;
        this.pinchScale = f;
        this.pinchCenterX = f2;
        this.pinchCenterY = f3;
        this.pinchTranslationX = f4;
        this.pinchTranslationY = f5;
        this.textureView.invalidate();
    }

    public void startFlipAnimation() {
        if (this.flipAnimator != null) {
            return;
        }
        this.flipHalfReached = false;
        ImageView imageView = this.blurredFlippingStub;
        if (imageView == null) {
            this.blurredFlippingStub = new ImageView(getContext());
        } else {
            imageView.animate().cancel();
        }
        if (this.textureView.renderer.isFirstFrameRendered()) {
            Bitmap bitmap = this.textureView.blurRenderer.getBitmap(100, 100);
            if (bitmap != null) {
                Utilities.blurBitmap(bitmap, 3, 1, bitmap.getWidth(), bitmap.getHeight(), bitmap.getRowBytes());
                this.blurredFlippingStub.setBackground(new BitmapDrawable(bitmap));
            }
            this.blurredFlippingStub.setAlpha(BitmapDescriptorFactory.HUE_RED);
        } else {
            this.blurredFlippingStub.setAlpha(1.0f);
        }
        if (this.blurredFlippingStub.getParent() == null) {
            this.textureView.addView(this.blurredFlippingStub);
        }
        ((FrameLayout.LayoutParams) this.blurredFlippingStub.getLayoutParams()).gravity = 17;
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
        this.flipAnimator = valueAnimatorOfFloat;
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.voip.GroupCallMiniTextureView$$ExternalSyntheticLambda5
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f$0.lambda$startFlipAnimation$7(valueAnimator);
            }
        });
        this.flipAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.voip.GroupCallMiniTextureView.8
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                GroupCallMiniTextureView groupCallMiniTextureView = GroupCallMiniTextureView.this;
                groupCallMiniTextureView.flipAnimator = null;
                groupCallMiniTextureView.textureView.setRotationY(BitmapDescriptorFactory.HUE_RED);
                GroupCallMiniTextureView groupCallMiniTextureView2 = GroupCallMiniTextureView.this;
                if (groupCallMiniTextureView2.flipHalfReached) {
                    return;
                }
                groupCallMiniTextureView2.textureView.renderer.clearImage();
            }
        });
        this.flipAnimator.setDuration(400L);
        this.flipAnimator.setInterpolator(CubicBezierInterpolator.DEFAULT);
        this.flipAnimator.start();
    }

    /* JADX WARN: Code restructure failed: missing block: B:110:0x0170, code lost:
    
        if (r4 != null) goto L111;
     */
    /* JADX WARN: Code restructure failed: missing block: B:218:0x034a, code lost:
    
        if (r10 != null) goto L219;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:114:0x017f  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x0194  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x01a6  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x01a8  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x01ad  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x01db  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x01ed  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x0206  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x0211  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x0227  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x0243  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x0285  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x02a3  */
    /* JADX WARN: Removed duplicated region for block: B:169:0x02b6  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x02ca  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x02e0  */
    /* JADX WARN: Removed duplicated region for block: B:199:0x030e  */
    /* JADX WARN: Removed duplicated region for block: B:223:0x0359  */
    /* JADX WARN: Removed duplicated region for block: B:236:0x0374  */
    /* JADX WARN: Removed duplicated region for block: B:239:0x0381  */
    /* JADX WARN: Removed duplicated region for block: B:240:0x0387  */
    /* JADX WARN: Removed duplicated region for block: B:244:0x03a2  */
    /* JADX WARN: Removed duplicated region for block: B:249:0x03ca  */
    /* JADX WARN: Removed duplicated region for block: B:252:0x03ec  */
    /* JADX WARN: Removed duplicated region for block: B:253:0x03f6  */
    /* JADX WARN: Removed duplicated region for block: B:256:0x040b  */
    /* JADX WARN: Removed duplicated region for block: B:262:0x041b  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x00aa  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x00dd  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x00e3  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x00f7  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0101  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0111  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0123  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x013d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void updateAttachState(boolean z) {
        ChatObject.VideoParticipant participant;
        TLRPC.GroupCallParticipant groupCallParticipant;
        boolean z2;
        GroupCallStatusIcon groupCallStatusIcon;
        Runnable runnable;
        boolean z3;
        boolean z4;
        int iDp;
        boolean z5;
        int itemCount;
        float f;
        ViewGroup.MarginLayoutParams marginLayoutParams;
        ChatObject.VideoParticipant videoParticipant;
        ChatObject.VideoParticipant videoParticipant2;
        ImageLocation forChat;
        ImageLocation forChat2;
        TLRPC.Chat chat;
        boolean z6;
        Drawable imageFromMemory;
        TLRPC.TL_groupCallParticipantVideo tL_groupCallParticipantVideo;
        TLRPC.TL_groupCallParticipantVideo tL_groupCallParticipantVideo2;
        float f2;
        final boolean z7;
        GroupCallRenderersContainer groupCallRenderersContainer;
        ValueAnimator valueAnimator;
        ChatObject.VideoParticipant videoParticipant3;
        GroupCallGridCell groupCallGridCell;
        boolean z8 = false;
        if (this.forceDetached) {
            return;
        }
        if (this.call.call.rtmp_stream) {
            int iDp2 = AndroidUtilities.dp(this.showingInFullscreen ? 36.0f : 21.0f);
            this.noRtmpStreamTextView.setPadding(iDp2, 0, iDp2, 0);
        }
        if (this.participant == null && ((groupCallGridCell = this.primaryView) != null || this.secondaryView != null || this.tabletGridView != null)) {
            this.participant = (groupCallGridCell == null && (groupCallGridCell = this.tabletGridView) == null) ? this.secondaryView.getVideoParticipant() : groupCallGridCell.getParticipant();
        }
        boolean z9 = this.attached;
        if (z9 && !this.showingInFullscreen) {
            boolean z10 = VoIPService.getSharedInstance() == null;
            if (GroupCallActivity.paused || (videoParticipant3 = this.participant) == null) {
                z10 = true;
                if (!z10 || (this.primaryView == null && this.secondaryView == null && this.tabletGridView == null && !this.showingAsScrimView && !this.animateToScrimView)) {
                    this.attached = false;
                    saveThumb();
                    z7 = SharedConfig.getDevicePerformanceClass() > 0;
                    if (this.textureView.currentAnimation == null || !z10) {
                        groupCallRenderersContainer = this.parentContainer;
                        if (groupCallRenderersContainer.inLayout) {
                            if (z7) {
                                groupCallRenderersContainer.removeView(this);
                            }
                            setVisibility(8);
                        } else {
                            Runnable runnable2 = this.hideRunnable;
                            if (runnable2 != null) {
                                AndroidUtilities.cancelRunOnUIThread(runnable2);
                                this.hideRunnable = null;
                            }
                            Runnable runnable3 = new Runnable() { // from class: org.telegram.ui.Components.voip.GroupCallMiniTextureView$$ExternalSyntheticLambda1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    this.f$0.lambda$updateAttachState$2(z7, this);
                                }
                            };
                            this.hideRunnable = runnable3;
                            AndroidUtilities.runOnUIThread(runnable3);
                        }
                        if (z7) {
                            this.parentContainer.detach(this);
                            release();
                        }
                    } else {
                        if (z7) {
                            this.parentContainer.detach(this);
                        }
                        animate().scaleX(0.5f).scaleY(0.5f).alpha(BitmapDescriptorFactory.HUE_RED).setListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.voip.GroupCallMiniTextureView.4
                            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                            public void onAnimationEnd(Animator animator) {
                                this.setScaleX(1.0f);
                                this.setScaleY(1.0f);
                                this.setAlpha(1.0f);
                                if (z7) {
                                    GroupCallMiniTextureView.this.parentContainer.removeView(this);
                                    GroupCallMiniTextureView.this.release();
                                }
                                this.setVisibility(8);
                            }
                        }).setDuration(150L).start();
                    }
                    if (this.participant.participant.self) {
                        if (VoIPService.getSharedInstance() != null) {
                            VoIPService sharedInstance = VoIPService.getSharedInstance();
                            ChatObject.VideoParticipant videoParticipant4 = this.participant;
                            sharedInstance.removeRemoteSink(videoParticipant4.participant, videoParticipant4.presentation);
                        }
                    } else if (VoIPService.getSharedInstance() != null) {
                        VoIPService.getSharedInstance().setLocalSink(null, this.participant.presentation);
                    }
                    invalidate();
                    valueAnimator = this.noVideoStubAnimator;
                    if (valueAnimator != null) {
                        valueAnimator.removeAllListeners();
                        this.noVideoStubAnimator.cancel();
                    }
                }
            } else {
                if (this.secondaryView == null) {
                    if (ChatObject.Call.videoIsActive(videoParticipant3.participant, videoParticipant3.presentation, this.call)) {
                        ChatObject.Call call = this.call;
                        if (!call.canStreamVideo && this.participant != call.videoNotAvailableParticipant) {
                        }
                    }
                }
                if (!z10) {
                    this.attached = false;
                    saveThumb();
                    if (SharedConfig.getDevicePerformanceClass() > 0) {
                    }
                    if (this.textureView.currentAnimation == null) {
                        groupCallRenderersContainer = this.parentContainer;
                        if (groupCallRenderersContainer.inLayout) {
                        }
                        if (z7) {
                        }
                        if (this.participant.participant.self) {
                        }
                        invalidate();
                        valueAnimator = this.noVideoStubAnimator;
                        if (valueAnimator != null) {
                        }
                    }
                }
            }
            if (this.participant == this.call.videoNotAvailableParticipant) {
            }
            if (this.attached) {
            }
            updateInfo();
        }
        if (!z9) {
            if (VoIPService.getSharedInstance() == null) {
                return;
            }
            GroupCallGridCell groupCallGridCell2 = this.primaryView;
            if (groupCallGridCell2 != null || this.secondaryView != null || this.tabletGridView != null || this.showingInFullscreen) {
                if (groupCallGridCell2 == null) {
                    GroupCallFullscreenAdapter.GroupCallUserCell groupCallUserCell = this.secondaryView;
                    if (groupCallUserCell != null) {
                        participant = groupCallUserCell.getVideoParticipant();
                        this.participant = participant;
                        ChatObject.VideoParticipant videoParticipant5 = this.participant;
                        groupCallParticipant = videoParticipant5.participant;
                        if (groupCallParticipant.self) {
                            ChatObject.Call call2 = this.call;
                            if ((call2.canStreamVideo || videoParticipant5 == call2.videoNotAvailableParticipant) && ChatObject.Call.videoIsActive(groupCallParticipant, videoParticipant5.presentation, call2)) {
                            }
                        } else {
                            z2 = VoIPService.getSharedInstance() != null && VoIPService.getSharedInstance().getVideoState(this.participant.presentation) == 2;
                        }
                        if (!this.showingInFullscreen) {
                            VoIPService sharedInstance2 = VoIPService.getSharedInstance();
                            ChatObject.VideoParticipant videoParticipant6 = this.participant;
                            if (!sharedInstance2.isFullscreen(videoParticipant6.participant, videoParticipant6.presentation)) {
                                VoIPService sharedInstance3 = VoIPService.getSharedInstance();
                                ChatObject.VideoParticipant videoParticipant7 = this.participant;
                                if (sharedInstance3.isFullscreen(videoParticipant7.participant, videoParticipant7.presentation) || !z2) {
                                }
                            }
                        }
                        this.attached = true;
                        if (this.activity.statusIconPool.size() <= 0) {
                            ArrayList arrayList = this.activity.statusIconPool;
                            groupCallStatusIcon = (GroupCallStatusIcon) arrayList.remove(arrayList.size() - 1);
                        } else {
                            groupCallStatusIcon = new GroupCallStatusIcon();
                        }
                        this.statusIcon = groupCallStatusIcon;
                        this.statusIcon.setCallback(this);
                        this.statusIcon.setImageView(this.micIconView);
                        updateIconColor(false);
                        runnable = this.hideRunnable;
                        if (runnable != null) {
                            AndroidUtilities.cancelRunOnUIThread(runnable);
                            this.hideRunnable = null;
                        }
                        if (getParent() != null) {
                            this.parentContainer.addView(this, LayoutHelper.createFrame(46, 46, 51));
                            this.parentContainer.attach(this);
                        } else {
                            if (getVisibility() == 8) {
                            }
                            this.checkScale = true;
                            this.animateEnter = false;
                            animate().setListener(null).cancel();
                            if (this.textureView.currentAnimation != null || this.secondaryView == null || this.primaryView != null || hasImage()) {
                                setScaleY(1.0f);
                                setScaleX(1.0f);
                                setAlpha(1.0f);
                            } else {
                                setScaleX(0.5f);
                                setScaleY(0.5f);
                                setAlpha(BitmapDescriptorFactory.HUE_RED);
                                this.animateEnter = true;
                                invalidate();
                                animate().scaleX(1.0f).scaleY(1.0f).alpha(1.0f).setListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.voip.GroupCallMiniTextureView.5
                                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                    public void onAnimationEnd(Animator animator) {
                                        GroupCallMiniTextureView groupCallMiniTextureView = GroupCallMiniTextureView.this;
                                        groupCallMiniTextureView.animateEnter = false;
                                        groupCallMiniTextureView.invalidate();
                                    }
                                }).setDuration(100L).start();
                                invalidate();
                            }
                            loadThumb();
                            this.screencastIcon.setVisibility((this.participant.presentation || this.call.call.rtmp_stream) ? 8 : 0);
                            z3 = false;
                            z4 = true;
                        }
                        setVisibility(0);
                        this.checkScale = true;
                        this.animateEnter = false;
                        animate().setListener(null).cancel();
                        if (this.textureView.currentAnimation != null) {
                            setScaleY(1.0f);
                            setScaleX(1.0f);
                            setAlpha(1.0f);
                            loadThumb();
                            if (this.participant.presentation) {
                                this.screencastIcon.setVisibility((this.participant.presentation || this.call.call.rtmp_stream) ? 8 : 0);
                                z3 = false;
                                z4 = true;
                            }
                        }
                    } else {
                        groupCallGridCell2 = this.tabletGridView;
                    }
                } else {
                    participant = groupCallGridCell2.getParticipant();
                    this.participant = participant;
                    ChatObject.VideoParticipant videoParticipant52 = this.participant;
                    groupCallParticipant = videoParticipant52.participant;
                    if (groupCallParticipant.self) {
                    }
                    if (!this.showingInFullscreen) {
                    }
                    this.attached = true;
                    if (this.activity.statusIconPool.size() <= 0) {
                    }
                    this.statusIcon = groupCallStatusIcon;
                    this.statusIcon.setCallback(this);
                    this.statusIcon.setImageView(this.micIconView);
                    updateIconColor(false);
                    runnable = this.hideRunnable;
                    if (runnable != null) {
                    }
                    if (getParent() != null) {
                    }
                    setVisibility(0);
                    this.checkScale = true;
                    this.animateEnter = false;
                    animate().setListener(null).cancel();
                    if (this.textureView.currentAnimation != null) {
                    }
                }
            }
        }
        if (this.participant == this.call.videoNotAvailableParticipant) {
            if (this.nameView.getVisibility() != 4) {
                this.nameView.setVisibility(4);
                this.micIconView.setVisibility(4);
            }
        } else if (this.nameView.getVisibility() != 0) {
            this.nameView.setVisibility(0);
            this.micIconView.setVisibility(0);
        }
        if (this.attached) {
            boolean z11 = GroupCallActivity.isTabletMode && (!this.parentContainer.inFullscreenMode || (this.secondaryView == null && this.primaryView == null));
            if (!this.showingInFullscreen) {
                GroupCallFullscreenAdapter.GroupCallUserCell groupCallUserCell2 = this.secondaryView;
                if (groupCallUserCell2 == null || this.primaryView != null || this.parentContainer.inFullscreenMode) {
                    if (this.showingAsScrimView) {
                        iDp = -1;
                    } else if (groupCallUserCell2 == null || this.primaryView != null) {
                        GroupCallGridCell groupCallGridCell3 = this.tabletGridView;
                        if (groupCallGridCell3 == null || !z11) {
                            GroupCallGridCell groupCallGridCell4 = this.primaryView;
                            if ((groupCallGridCell4 != null && groupCallUserCell2 == null) || !this.isFullscreenMode) {
                                if (groupCallGridCell4 != null) {
                                    f = groupCallGridCell4.spanCount;
                                    iDp = -1;
                                    itemCount = 0;
                                    z5 = true;
                                } else {
                                    f2 = 46.0f;
                                    iDp = AndroidUtilities.dp(f2);
                                }
                            }
                        } else {
                            float f3 = groupCallGridCell3.spanCount;
                            itemCount = groupCallGridCell3.gridAdapter.getItemCount();
                            z5 = true;
                            f = f3;
                            iDp = -1;
                        }
                        marginLayoutParams = (ViewGroup.MarginLayoutParams) getLayoutParams();
                        if (iDp != 0 && (marginLayoutParams.height != iDp || z4 || this.useSpanSize != z5 || ((z5 && this.spanCount != f) || this.gridItemsCount != itemCount))) {
                            marginLayoutParams.height = iDp;
                            marginLayoutParams.width = z5 ? -1 : iDp;
                            this.useSpanSize = z5;
                            this.spanCount = f;
                            this.checkScale = true;
                            VoIPTextureView voIPTextureView = this.textureView;
                            if (z3) {
                                voIPTextureView.requestLayout();
                            } else {
                                voIPTextureView.animateToLayout();
                                this.updateNextLayoutAnimated = true;
                            }
                            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.voip.GroupCallMiniTextureView$$ExternalSyntheticLambda2
                                @Override // java.lang.Runnable
                                public final void run() {
                                    this.f$0.requestLayout();
                                }
                            });
                            this.parentContainer.requestLayout();
                            invalidate();
                        }
                        videoParticipant = this.participant;
                        if (!videoParticipant.participant.self || videoParticipant.presentation || VoIPService.getSharedInstance() == null) {
                            this.textureView.renderer.setMirror(false);
                            this.textureView.renderer.setRotateTextureWithScreen(true);
                            this.textureView.renderer.setUseCameraRotation(false);
                        } else {
                            this.textureView.renderer.setMirror(VoIPService.getSharedInstance().isFrontFaceCamera());
                            this.textureView.renderer.setRotateTextureWithScreen(true);
                            this.textureView.renderer.setUseCameraRotation(true);
                        }
                        this.textureView.updateRotation();
                        if (this.participant.participant.self) {
                            this.textureView.renderer.setMaxTextureSize(0);
                        } else {
                            this.textureView.renderer.setMaxTextureSize(720);
                        }
                        videoParticipant2 = this.participant;
                        if (!ChatObject.Call.videoIsActive(videoParticipant2.participant, videoParticipant2.presentation, this.call)) {
                            ChatObject.Call call3 = this.call;
                            if (call3.canStreamVideo || this.participant == call3.videoNotAvailableParticipant) {
                                z6 = true;
                            } else {
                                this.noVideoStubLayout.avatarImageReceiver.setCurrentAccount(this.currentAccount);
                                long peerId = MessageObject.getPeerId(this.participant.participant.peer);
                                if (DialogObject.isUserDialog(peerId)) {
                                    TLRPC.User user = AccountInstance.getInstance(this.currentAccount).getMessagesController().getUser(Long.valueOf(peerId));
                                    this.noVideoStubLayout.avatarDrawable.setInfo(this.currentAccount, user);
                                    forChat = ImageLocation.getForUser(user, 0);
                                    forChat2 = ImageLocation.getForUser(user, 1);
                                    chat = user;
                                } else {
                                    TLRPC.Chat chat2 = AccountInstance.getInstance(UserConfig.selectedAccount).getMessagesController().getChat(Long.valueOf(-peerId));
                                    this.noVideoStubLayout.avatarDrawable.setInfo(this.currentAccount, chat2);
                                    forChat = ImageLocation.getForChat(chat2, 0);
                                    forChat2 = ImageLocation.getForChat(chat2, 1);
                                    chat = chat2;
                                }
                                ImageLocation imageLocation = forChat;
                                TLRPC.Chat chat3 = chat;
                                this.noVideoStubLayout.avatarImageReceiver.setImage(imageLocation, null, (forChat2 == null || (imageFromMemory = ImageLoader.getInstance().getImageFromMemory(forChat2.location, null, "50_50")) == null) ? this.noVideoStubLayout.avatarDrawable : imageFromMemory, null, chat3, 0);
                                this.noVideoStubLayout.backgroundImageReceiver.setImage(imageLocation, "50_50_b", new ColorDrawable(Theme.getColor(Theme.key_voipgroup_listViewBackground)), null, chat3, 0);
                                z6 = false;
                            }
                            boolean z12 = (!z3 || this.secondaryView == null || this.showingInFullscreen || z6) ? false : true;
                            if (z6 != this.hasVideo && !z12) {
                                this.hasVideo = z6;
                                ValueAnimator valueAnimator2 = this.noVideoStubAnimator;
                                if (valueAnimator2 != null) {
                                    valueAnimator2.removeAllListeners();
                                    this.noVideoStubAnimator.cancel();
                                }
                                if (z3) {
                                    if (!this.hasVideo && this.noVideoStubLayout.getVisibility() != 0) {
                                        this.noVideoStubLayout.setVisibility(0);
                                        this.noVideoStubLayout.setAlpha(BitmapDescriptorFactory.HUE_RED);
                                    }
                                    ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.progressToNoVideoStub, this.hasVideo ? BitmapDescriptorFactory.HUE_RED : 1.0f);
                                    this.noVideoStubAnimator = valueAnimatorOfFloat;
                                    valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.voip.GroupCallMiniTextureView$$ExternalSyntheticLambda3
                                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                                        public final void onAnimationUpdate(ValueAnimator valueAnimator3) {
                                            this.f$0.lambda$updateAttachState$3(valueAnimator3);
                                        }
                                    });
                                    this.noVideoStubAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.voip.GroupCallMiniTextureView.6
                                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                        public void onAnimationEnd(Animator animator) {
                                            GroupCallMiniTextureView groupCallMiniTextureView = GroupCallMiniTextureView.this;
                                            groupCallMiniTextureView.progressToNoVideoStub = groupCallMiniTextureView.hasVideo ? BitmapDescriptorFactory.HUE_RED : 1.0f;
                                            groupCallMiniTextureView.noVideoStubLayout.setAlpha(GroupCallMiniTextureView.this.progressToNoVideoStub);
                                            GroupCallMiniTextureView.this.noVideoStubLayout.setVisibility(GroupCallMiniTextureView.this.hasVideo ? 8 : 0);
                                            GroupCallMiniTextureView.this.textureView.invalidate();
                                        }
                                    });
                                    this.noVideoStubAnimator.start();
                                } else {
                                    boolean z13 = this.hasVideo;
                                    this.progressToNoVideoStub = z13 ? BitmapDescriptorFactory.HUE_RED : 1.0f;
                                    this.noVideoStubLayout.setVisibility(z13 ? 8 : 0);
                                    this.noVideoStubLayout.setAlpha(this.progressToNoVideoStub);
                                    this.textureView.invalidate();
                                }
                                if (this.hasVideo) {
                                    this.noVideoStubLayout.updateMuteButtonState(false);
                                }
                            }
                            if (this.participant.participant.self && VoIPService.getSharedInstance() != null) {
                                VoIPService.getSharedInstance().setLocalSink(this.textureView.renderer, this.participant.presentation);
                            }
                            this.statusIcon.setParticipant(this.participant.participant, z3);
                            if (this.noVideoStubLayout.getVisibility() == 0) {
                                this.noVideoStubLayout.updateMuteButtonState(true);
                            }
                            ChatObject.VideoParticipant videoParticipant8 = this.participant;
                            boolean z14 = videoParticipant8.presentation;
                            TLRPC.GroupCallParticipant groupCallParticipant2 = videoParticipant8.participant;
                            if (!z14 ? !((tL_groupCallParticipantVideo = groupCallParticipant2.video) == null || !tL_groupCallParticipantVideo.paused) : !((tL_groupCallParticipantVideo2 = groupCallParticipant2.presentation) == null || !tL_groupCallParticipantVideo2.paused)) {
                                z8 = true;
                            }
                            if (this.videoIsPaused != z8) {
                                this.videoIsPaused = z8;
                                this.textureView.renderer.animate().alpha(this.videoIsPaused ? BitmapDescriptorFactory.HUE_RED : 1.0f).setDuration(250L).start();
                                this.textureView.invalidate();
                            }
                            if (GroupCallActivity.paused || !this.hasVideo) {
                                if (this.participant.participant.self) {
                                    if (VoIPService.getSharedInstance() != null) {
                                        VoIPService.getSharedInstance().setLocalSink(null, this.participant.presentation);
                                    }
                                } else if (VoIPService.getSharedInstance() != null) {
                                    VoIPService sharedInstance4 = VoIPService.getSharedInstance();
                                    ChatObject.VideoParticipant videoParticipant9 = this.participant;
                                    sharedInstance4.removeRemoteSink(videoParticipant9.participant, videoParticipant9.presentation);
                                    VoIPService sharedInstance5 = VoIPService.getSharedInstance();
                                    ChatObject.VideoParticipant videoParticipant10 = this.participant;
                                    sharedInstance5.removeRemoteSink(videoParticipant10.participant, videoParticipant10.presentation);
                                }
                                if (GroupCallActivity.paused && this.textureView.renderer.isFirstFrameRendered()) {
                                    saveThumb();
                                    this.textureView.renderer.clearFirstFrame();
                                    this.textureView.renderer.setAlpha(BitmapDescriptorFactory.HUE_RED);
                                    this.textureView.blurRenderer.setAlpha(BitmapDescriptorFactory.HUE_RED);
                                }
                            } else {
                                if (!this.textureView.renderer.isFirstFrameRendered()) {
                                    loadThumb();
                                }
                                if (this.participant.participant.self) {
                                    if (VoIPService.getSharedInstance() != null) {
                                        VoIPService.getSharedInstance().setLocalSink(this.textureView.renderer, this.participant.presentation);
                                    }
                                } else if (VoIPService.getSharedInstance() != null) {
                                    VoIPService sharedInstance6 = VoIPService.getSharedInstance();
                                    ChatObject.VideoParticipant videoParticipant11 = this.participant;
                                    sharedInstance6.addRemoteSink(videoParticipant11.participant, videoParticipant11.presentation, this.textureView.renderer, null);
                                    VoIPService sharedInstance7 = VoIPService.getSharedInstance();
                                    ChatObject.VideoParticipant videoParticipant12 = this.participant;
                                    sharedInstance7.addRemoteSink(videoParticipant12.participant, videoParticipant12.presentation, this.textureView.renderer, null);
                                    ChatObject.Call call4 = this.call;
                                    if (call4 != null && call4.call.rtmp_stream && !this.textureView.renderer.isFirstFrameRendered() && !this.postedNoRtmpStreamCallback) {
                                        AndroidUtilities.runOnUIThread(this.noRtmpStreamCallback, 15000L);
                                        this.postedNoRtmpStreamCallback = true;
                                    }
                                }
                            }
                            updateIconColor(true);
                        }
                    } else {
                        f2 = 80.0f;
                        iDp = AndroidUtilities.dp(f2);
                    }
                    f = 1.0f;
                    itemCount = 0;
                    z5 = false;
                    marginLayoutParams = (ViewGroup.MarginLayoutParams) getLayoutParams();
                    if (iDp != 0) {
                        marginLayoutParams.height = iDp;
                        marginLayoutParams.width = z5 ? -1 : iDp;
                        this.useSpanSize = z5;
                        this.spanCount = f;
                        this.checkScale = true;
                        VoIPTextureView voIPTextureView2 = this.textureView;
                        if (z3) {
                        }
                        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.voip.GroupCallMiniTextureView$$ExternalSyntheticLambda2
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.requestLayout();
                            }
                        });
                        this.parentContainer.requestLayout();
                        invalidate();
                    }
                    videoParticipant = this.participant;
                    if (videoParticipant.participant.self) {
                        this.textureView.renderer.setMirror(false);
                        this.textureView.renderer.setRotateTextureWithScreen(true);
                        this.textureView.renderer.setUseCameraRotation(false);
                        this.textureView.updateRotation();
                        if (this.participant.participant.self) {
                        }
                        videoParticipant2 = this.participant;
                        if (!ChatObject.Call.videoIsActive(videoParticipant2.participant, videoParticipant2.presentation, this.call)) {
                        }
                    }
                } else {
                    iDp = 0;
                    f = 1.0f;
                    itemCount = 0;
                    z5 = false;
                    marginLayoutParams = (ViewGroup.MarginLayoutParams) getLayoutParams();
                    if (iDp != 0) {
                    }
                    videoParticipant = this.participant;
                    if (videoParticipant.participant.self) {
                    }
                }
            }
        }
        updateInfo();
        z3 = z;
        z4 = false;
        if (this.participant == this.call.videoNotAvailableParticipant) {
        }
        if (this.attached) {
        }
        updateInfo();
    }

    public void updateInfo() {
        String userName;
        if (this.attached) {
            long peerId = MessageObject.getPeerId(this.participant.participant.peer);
            if (DialogObject.isUserDialog(peerId)) {
                userName = UserObject.getUserName(AccountInstance.getInstance(this.currentAccount).getMessagesController().getUser(Long.valueOf(peerId)));
            } else {
                TLRPC.Chat chat = AccountInstance.getInstance(this.currentAccount).getMessagesController().getChat(Long.valueOf(-peerId));
                userName = chat != null ? chat.title : null;
            }
            this.nameView.setText(userName);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:52:0x00cc A[PHI: r11
      0x00cc: PHI (r11v14 org.telegram.ui.Components.voip.GroupCallGridCell) = (r11v12 org.telegram.ui.Components.voip.GroupCallGridCell), (r11v16 org.telegram.ui.Components.voip.GroupCallGridCell) binds: [B:51:0x00ca, B:47:0x00c4] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void updatePosition(ViewGroup viewGroup, ViewGroup viewGroup2, RecyclerListView recyclerListView, GroupCallRenderersContainer groupCallRenderersContainer) {
        if (this.showingAsScrimView || this.animateToScrimView || this.forceDetached) {
            return;
        }
        boolean z = false;
        this.drawFirst = false;
        float alpha = groupCallRenderersContainer.progressToFullscreenMode;
        float alpha2 = 1.0f;
        if (this.animateToFullscreen || this.showingInFullscreen) {
            GroupCallGridCell groupCallGridCell = this.primaryView;
            if (groupCallGridCell == null && this.tabletGridView == null) {
                setTranslationX(BitmapDescriptorFactory.HUE_RED);
                setTranslationY(BitmapDescriptorFactory.HUE_RED);
            } else {
                GroupCallGridCell groupCallGridCell2 = this.tabletGridView;
                if (groupCallGridCell2 != null) {
                    groupCallGridCell = groupCallGridCell2;
                }
                if (groupCallGridCell2 != null) {
                    viewGroup = viewGroup2;
                }
                float x = ((groupCallGridCell.getX() + viewGroup.getX()) - getLeft()) - groupCallRenderersContainer.getLeft();
                float y = (((groupCallGridCell.getY() + AndroidUtilities.dp(2.0f)) + viewGroup.getY()) - getTop()) - groupCallRenderersContainer.getTop();
                float f = 1.0f - alpha;
                float f2 = BitmapDescriptorFactory.HUE_RED * alpha;
                setTranslationX((x * f) + f2);
                setTranslationY((y * f) + f2);
            }
            this.textureView.setRoundCorners(AndroidUtilities.dp(8.0f));
            GroupCallFullscreenAdapter.GroupCallUserCell groupCallUserCell = this.secondaryView;
            if (groupCallUserCell != null) {
                groupCallUserCell.setAlpha(alpha);
            }
            if (this.showingInFullscreen || this.primaryView != null || this.tabletGridView != null) {
                if (this.animateEnter) {
                    return;
                }
                setAlpha(alpha2);
            }
            setAlpha(alpha);
        }
        GroupCallFullscreenAdapter.GroupCallUserCell groupCallUserCell2 = this.secondaryView;
        if (groupCallUserCell2 != null) {
            if (groupCallUserCell2.isRemoving(recyclerListView)) {
                setAlpha(this.secondaryView.getAlpha());
            } else if (this.primaryView == null) {
                if (this.attached && !this.animateEnter) {
                    setAlpha(alpha);
                }
                this.secondaryView.setAlpha(alpha);
                alpha = 1.0f;
            } else {
                this.secondaryView.setAlpha(1.0f);
                if (this.attached && !this.animateEnter) {
                    setAlpha(1.0f);
                }
            }
            setTranslationX((this.secondaryView.getX() + recyclerListView.getX()) - getLeft());
            float f3 = 1.0f - alpha;
            setTranslationY((((AndroidUtilities.dp(2.0f) * f3) + this.secondaryView.getY()) + recyclerListView.getY()) - getTop());
            this.textureView.setRoundCorners((AndroidUtilities.dp(13.0f) * alpha) + (AndroidUtilities.dp(8.0f) * f3));
            return;
        }
        GroupCallGridCell groupCallGridCell3 = this.primaryView;
        if (groupCallGridCell3 == null && this.tabletGridView == null) {
            return;
        }
        GroupCallGridCell groupCallGridCell4 = this.tabletGridView;
        if (groupCallGridCell4 != null && groupCallGridCell3 != null) {
            if (GroupCallActivity.isTabletMode && !this.parentContainer.inFullscreenMode) {
                z = true;
            }
            if (z) {
                groupCallGridCell3 = groupCallGridCell4;
            }
            if (z) {
            }
            setTranslationX(((groupCallGridCell3.getX() + viewGroup.getX()) - getLeft()) - groupCallRenderersContainer.getLeft());
            setTranslationY((((groupCallGridCell3.getY() + AndroidUtilities.dp(2.0f)) + viewGroup.getY()) - getTop()) - groupCallRenderersContainer.getTop());
            this.textureView.setRoundCorners(AndroidUtilities.dp(8.0f));
            if (this.attached) {
                return;
            } else {
                return;
            }
        }
        if (groupCallGridCell4 != null) {
            groupCallGridCell3 = groupCallGridCell4;
        }
        if (groupCallGridCell4 != null) {
            viewGroup = viewGroup2;
        }
        setTranslationX(((groupCallGridCell3.getX() + viewGroup.getX()) - getLeft()) - groupCallRenderersContainer.getLeft());
        setTranslationY((((groupCallGridCell3.getY() + AndroidUtilities.dp(2.0f)) + viewGroup.getY()) - getTop()) - groupCallRenderersContainer.getTop());
        this.textureView.setRoundCorners(AndroidUtilities.dp(8.0f));
        if (this.attached || this.animateEnter) {
            return;
        }
        if (!GroupCallActivity.isTabletMode) {
            this.drawFirst = true;
            alpha2 = (1.0f - alpha) * groupCallGridCell3.getAlpha();
            setAlpha(alpha2);
        } else {
            if (this.primaryView == null || this.tabletGridView != null) {
                return;
            }
            alpha *= groupCallGridCell3.getAlpha();
            setAlpha(alpha);
        }
    }

    public void updateSize(int i) {
        int measuredWidth = this.parentContainer.getMeasuredWidth() - AndroidUtilities.dp(6.0f);
        if ((this.collapseSize == i || i <= 0) && (this.fullSize == measuredWidth || measuredWidth <= 0)) {
            return;
        }
        if (i != 0) {
            this.collapseSize = i;
        }
        if (measuredWidth != 0) {
            this.fullSize = measuredWidth;
        }
        this.nameView.setFullLayoutAdditionalWidth(measuredWidth - i, 0);
    }
}
