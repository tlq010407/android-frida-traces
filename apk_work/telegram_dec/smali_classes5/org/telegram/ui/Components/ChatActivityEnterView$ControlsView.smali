.class public Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ChatActivityEnterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ControlsView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView$VirtualViewHelper;
    }
.end annotation


# instance fields
.field private hidePauseT:Lorg/telegram/ui/Components/AnimatedFloat;

.field private lastSize:I

.field private lastUpdateTime:J

.field lockBackgroundPaint:Landroid/graphics/Paint;

.field lockOutlinePaint:Landroid/graphics/Paint;

.field lockPaint:Landroid/graphics/Paint;

.field private micDrawable:Landroid/graphics/drawable/Drawable;

.field private onceHint:Lorg/telegram/ui/Stories/recorder/HintView2;

.field private oncePressed:Z

.field public final onceRect:Landroid/graphics/RectF;

.field private p:Landroid/graphics/Paint;

.field path:Landroid/graphics/Path;

.field private final path2:Landroid/graphics/Path;

.field private pauseHint:Lorg/telegram/ui/Stories/recorder/HintView2;

.field private pausePressed:Z

.field private periodDrawable:Lorg/telegram/ui/Stories/recorder/CaptionContainerView$PeriodDrawable;

.field private final radiiLeft:[F

.field private final radiiRight:[F

.field private final rectF:Landroid/graphics/RectF;

.field final synthetic this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

.field private tooltipBackground:Landroid/graphics/drawable/Drawable;

.field private tooltipBackgroundArrow:Landroid/graphics/drawable/Drawable;

.field private tooltipLayout:Landroid/text/StaticLayout;

.field private tooltipMessage:Ljava/lang/String;

.field private tooltipPaint:Landroid/text/TextPaint;

.field private tooltipWidth:F

.field private vidDrawable:Landroid/graphics/drawable/Drawable;

.field private virtualViewHelper:Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView$VirtualViewHelper;


# direct methods
.method public static synthetic $r8$lambda$2fBqdS8TCW8bVyvahkaB5GIj_8Y(Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->lambda$onTouchEvent$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$FY0XsNC9mcf-5MkieqYHt46X-KE(Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->lambda$onTouchEvent$6(Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$GEy-cnLb8wfOXTcn1thqyzdpocQ(Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;Lorg/telegram/ui/Stories/recorder/HintView2;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->lambda$hideHintView$2(Lorg/telegram/ui/Stories/recorder/HintView2;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YuiBzPPk1Qs8At7ig3pIVI_wCLs(Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;Lorg/telegram/ui/Stories/recorder/HintView2;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->lambda$hideHintView$3(Lorg/telegram/ui/Stories/recorder/HintView2;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dQ9wdwwlsx3rnOjmhGE1SaY6fNk(Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->lambda$onTouchEvent$5(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iT5sdX0rQMnhl6C43VNT4MqnQOI(Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;Lorg/telegram/ui/Stories/recorder/HintView2;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->lambda$showOnceHint$1(Lorg/telegram/ui/Stories/recorder/HintView2;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lmTB8QxNms3swRq6pYiHf_r9tFU(Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;Lorg/telegram/ui/Stories/recorder/HintView2;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->lambda$showPauseHint$0(Lorg/telegram/ui/Stories/recorder/HintView2;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/content/Context;)V
    .locals 11

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->tooltipPaint:Landroid/text/TextPaint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->lockBackgroundPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->lockPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->lockOutlinePaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->path:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->p:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->rectF:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->onceRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->path2:Landroid/graphics/Path;

    const/16 v0, 0x8

    new-array v2, v0, [F

    iput-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->radiiLeft:[F

    new-array v0, v0, [F

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->radiiRight:[F

    new-instance v10, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v9, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x15e

    move-object v3, v10

    move-object v4, p0

    invoke-direct/range {v3 .. v9}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v10, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->hidePauseT:Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance v3, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView$VirtualViewHelper;

    invoke-direct {v3, p0, p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView$VirtualViewHelper;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;Landroid/view/View;)V

    iput-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->virtualViewHelper:Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView$VirtualViewHelper;

    invoke-static {p0, v3}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    new-instance v3, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$PeriodDrawable;

    invoke-direct {v3}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$PeriodDrawable;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->periodDrawable:Lorg/telegram/ui/Stories/recorder/CaptionContainerView$PeriodDrawable;

    invoke-virtual {v3, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->periodDrawable:Lorg/telegram/ui/Stories/recorder/CaptionContainerView$PeriodDrawable;

    iget-boolean v4, p1, Lorg/telegram/ui/Components/ChatActivityEnterView;->voiceOnce:Z

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v4, v5}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$PeriodDrawable;->setValue(IZZ)V

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->lockOutlinePaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->lockOutlinePaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->lockOutlinePaint:Landroid/graphics/Paint;

    const v4, 0x3fd9999a    # 1.7f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$drawable;->lock_round_shadow:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {p1, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4002(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelVoiceLockShadow:I

    invoke-static {p1, v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3100(Lorg/telegram/ui/Components/ChatActivityEnterView;I)I

    move-result v6

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v6, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_gifSaveHintBackground:I

    invoke-static {p1, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3100(Lorg/telegram/ui/Components/ChatActivityEnterView;I)I

    move-result p1

    invoke-static {v3, p1}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->tooltipBackground:Landroid/graphics/drawable/Drawable;

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->tooltipPaint:Landroid/text/TextPaint;

    const/high16 v3, 0x41600000    # 14.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    sget p1, Lorg/telegram/messenger/R$drawable;->tooltip_arrow:I

    invoke-static {p2, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->tooltipBackgroundArrow:Landroid/graphics/drawable/Drawable;

    sget p1, Lorg/telegram/messenger/R$string;->SlideUpToLock:I

    const-string p2, "SlideUpToLock"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->tooltipMessage:Ljava/lang/String;

    const/high16 p1, 0x40400000    # 3.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    const/4 v3, 0x7

    aput p2, v2, v3

    const/4 v4, 0x6

    aput p2, v2, v4

    aput p2, v2, v1

    aput p2, v2, v5

    const/4 p2, 0x5

    const/4 v6, 0x0

    aput v6, v2, p2

    const/4 v7, 0x4

    aput v6, v2, v7

    const/4 v8, 0x3

    aput v6, v2, v8

    const/4 v9, 0x2

    aput v6, v2, v9

    aput v6, v0, v3

    aput v6, v0, v4

    aput v6, v0, v1

    aput v6, v0, v5

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    aput p1, v0, p2

    aput p1, v0, v7

    aput p1, v0, v8

    aput p1, v0, v9

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$drawable;->input_mic:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->micDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$drawable;->input_video:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->vidDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v5}, Landroid/view/View;->setWillNotDraw(Z)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->updateColors()V

    return-void
.end method

.method static synthetic access$14600(Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;)Lorg/telegram/ui/Stories/recorder/CaptionContainerView$PeriodDrawable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->periodDrawable:Lorg/telegram/ui/Stories/recorder/CaptionContainerView$PeriodDrawable;

    return-object p0
.end method

.method private synthetic lambda$hideHintView$2(Lorg/telegram/ui/Stories/recorder/HintView2;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$hideHintView$3(Lorg/telegram/ui/Stories/recorder/HintView2;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$onTouchEvent$4()V
    .locals 3

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->isRecordingPaused()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "voicepausehint"

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1402(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)Z

    :cond_1
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-boolean v1, v1, Lorg/telegram/ui/Components/ChatActivityEnterView;->voiceOnce:Z

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MediaController;->toggleRecordingPause(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->needStartRecordAudio(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$onTouchEvent$5(Ljava/lang/Runnable;)V
    .locals 9

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioTimelineView:Lorg/telegram/ui/Components/RecordedAudioPlayerView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->getAudioRightMs()J

    move-result-wide v1

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v3, v3, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioTimelineView:Lorg/telegram/ui/Components/RecordedAudioPlayerView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->getAudioLeftMs()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5202(Lorg/telegram/ui/Components/ChatActivityEnterView;J)J

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v3

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioTimelineView:Lorg/telegram/ui/Components/RecordedAudioPlayerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->getAudioLeftMs()J

    move-result-wide v4

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioTimelineView:Lorg/telegram/ui/Components/RecordedAudioPlayerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->getAudioRightMs()J

    move-result-wide v6

    move-object v8, p1

    invoke-virtual/range {v3 .. v8}, Lorg/telegram/messenger/MediaController;->trimCurrentRecording(JJLjava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$onTouchEvent$6(Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "trimvoicehint"

    const/4 p2, 0x0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private synthetic lambda$showOnceHint$1(Lorg/telegram/ui/Stories/recorder/HintView2;)V
    .locals 1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->onceHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->onceHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    :cond_0
    return-void
.end method

.method private synthetic lambda$showPauseHint$0(Lorg/telegram/ui/Stories/recorder/HintView2;)V
    .locals 1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->pauseHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->pauseHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    :cond_0
    return-void
.end method

.method private scale(Landroid/graphics/RectF;F)V
    .locals 3

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget v2, p1, Landroid/graphics/RectF;->left:F

    invoke-static {v0, v2, p2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v2

    iput v2, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->right:F

    invoke-static {v0, v2, p2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    iput v0, p1, Landroid/graphics/RectF;->right:F

    iget v0, p1, Landroid/graphics/RectF;->top:F

    invoke-static {v1, v0, p2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    iput v0, p1, Landroid/graphics/RectF;->top:F

    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    invoke-static {v1, v0, p2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p2

    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    return-void
.end method


# virtual methods
.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->virtualViewHelper:Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView$VirtualViewHelper;

    invoke-virtual {v0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public hideHintView()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->pauseHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v2, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;Lorg/telegram/ui/Stories/recorder/HintView2;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Stories/recorder/HintView2;->setOnHiddenListener(Ljava/lang/Runnable;)Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    iput-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->pauseHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->onceHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-eqz v0, :cond_1

    new-instance v2, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;Lorg/telegram/ui/Stories/recorder/HintView2;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Stories/recorder/HintView2;->setOnHiddenListener(Ljava/lang/Runnable;)Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    iput-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->onceHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    :cond_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4400(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v1

    const/high16 v2, 0x3e800000    # 0.25f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f000000    # 0.5f

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_0

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4400(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v1

    div-float/2addr v1, v3

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4400(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v1

    const v4, 0x3dcccccd    # 0.1f

    const/high16 v5, 0x3f400000    # 0.75f

    cmpg-float v1, v1, v5

    if-gtz v1, :cond_1

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4400(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v1

    sub-float/2addr v1, v3

    div-float/2addr v1, v2

    mul-float v1, v1, v4

    sub-float v1, v8, v1

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4400(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v1

    sub-float/2addr v1, v5

    div-float/2addr v1, v2

    mul-float v1, v1, v4

    const v3, 0x3f666666    # 0.9f

    add-float/2addr v1, v3

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->lastUpdateTime:J

    sub-long/2addr v3, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->lastUpdateTime:J

    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4500(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v5

    const v6, 0x461c4000    # 10000.0f

    const/high16 v9, 0x42640000    # 57.0f

    const/4 v10, 0x0

    const/4 v11, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_2

    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4600(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v5

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4500(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v6

    sub-float/2addr v5, v6

    float-to-int v5, v5

    invoke-static {v10, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    cmpl-float v6, v5, v6

    if-lez v6, :cond_3

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :cond_3
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    const/high16 v12, 0x41d00000    # 26.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp2(F)I

    move-result v12

    sub-int/2addr v6, v12

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    div-float v9, v5, v9

    sub-float v9, v8, v9

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    const/high16 v13, 0x43420000    # 194.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    sub-int/2addr v12, v13

    int-to-float v12, v12

    iget-object v13, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v13}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v13

    const v14, 0x3ecccccd    # 0.4f

    const/high16 v15, 0x41800000    # 16.0f

    const/high16 v16, 0x42100000    # 36.0f

    const/high16 v17, 0x41000000    # 8.0f

    const/high16 v18, 0x40000000    # 2.0f

    if-eqz v13, :cond_5

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    int-to-float v13, v13

    const/high16 v19, 0x42700000    # 60.0f

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v12

    const/high16 v19, 0x41f00000    # 30.0f

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v19

    sub-float v1, v8, v1

    mul-float v19, v19, v1

    add-float v2, v2, v19

    sub-float/2addr v2, v5

    const/high16 v1, 0x41600000    # 14.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    mul-float v1, v1, v9

    add-float/2addr v2, v1

    div-float v1, v13, v18

    add-float/2addr v1, v2

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v5

    sub-float/2addr v1, v5

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v5

    add-float/2addr v1, v5

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    cmpl-float v5, v9, v14

    if-lez v5, :cond_4

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_4
    div-float v5, v9, v14

    :goto_2
    sub-float v19, v8, v9

    const/high16 v20, 0x41100000    # 9.0f

    mul-float v19, v19, v20

    iget-object v14, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v14}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4800(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v14

    sub-float v14, v8, v14

    mul-float v19, v19, v14

    iget-object v14, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v14}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4800(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v14

    const/high16 v21, 0x41700000    # 15.0f

    mul-float v14, v14, v21

    sub-float v5, v8, v5

    mul-float v14, v14, v5

    sub-float v19, v19, v14

    move v5, v9

    move v14, v13

    :goto_3
    move v13, v2

    move/from16 v2, v19

    goto :goto_4

    :cond_5
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/high16 v13, 0x41600000    # 14.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    int-to-float v13, v13

    mul-float v13, v13, v9

    float-to-int v13, v13

    add-int/2addr v2, v13

    int-to-float v13, v2

    const/high16 v2, 0x42700000    # 60.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v12

    const/high16 v14, 0x41f00000    # 30.0f

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    int-to-float v14, v14

    sub-float v1, v8, v1

    mul-float v14, v14, v1

    float-to-int v1, v14

    int-to-float v1, v1

    add-float/2addr v2, v1

    float-to-int v1, v5

    int-to-float v1, v1

    sub-float/2addr v2, v1

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget v1, v1, Lorg/telegram/ui/Components/ChatActivityEnterView;->idleProgress:F

    mul-float v1, v1, v9

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    mul-float v1, v1, v5

    add-float/2addr v2, v1

    div-float v1, v13, v18

    add-float/2addr v1, v2

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v5

    sub-float/2addr v1, v5

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v5

    add-float/2addr v1, v5

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v5

    mul-float v5, v5, v9

    add-float/2addr v1, v5

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    sub-float v5, v8, v9

    const/high16 v14, 0x41100000    # 9.0f

    mul-float v19, v5, v14

    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v5, v11}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4802(Lorg/telegram/ui/Components/ChatActivityEnterView;F)F

    move v14, v13

    const/4 v5, 0x0

    goto :goto_3

    :goto_4
    iget-object v15, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v15}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v15

    const/high16 v21, 0x3fc00000    # 1.5f

    const/16 v22, 0x2

    const/high16 v23, 0x40800000    # 4.0f

    const/high16 v24, 0x40400000    # 3.0f

    if-eqz v15, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v25

    iget-object v15, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v15}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4200(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v27

    sub-long v25, v25, v27

    const-wide/16 v27, 0xc8

    cmp-long v15, v25, v27

    if-gtz v15, :cond_7

    :cond_6
    iget-object v15, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v15}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4900(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v15

    cmpl-float v15, v15, v11

    if-eqz v15, :cond_c

    :cond_7
    const v15, 0x3f4ccccd    # 0.8f

    cmpg-float v15, v9, v15

    if-ltz v15, :cond_8

    iget-object v15, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v15}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v15

    if-nez v15, :cond_8

    iget-object v15, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v15}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5000(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v15

    cmpl-float v15, v15, v11

    if-nez v15, :cond_8

    iget-object v15, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v15}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5100(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v15

    cmpl-float v15, v15, v11

    if-eqz v15, :cond_9

    :cond_8
    iget-object v15, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v15, v10}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4102(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)Z

    :cond_9
    iget-object v15, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v15}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v15

    if-eqz v15, :cond_a

    iget-object v15, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v15}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4900(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v15

    cmpl-float v15, v15, v8

    if-eqz v15, :cond_b

    iget-object v15, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    long-to-float v3, v3

    const/high16 v4, 0x43160000    # 150.0f

    div-float/2addr v3, v4

    invoke-static {v15, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4916(Lorg/telegram/ui/Components/ChatActivityEnterView;F)F

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4900(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v3

    cmpl-float v3, v3, v8

    if-ltz v3, :cond_b

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3, v8}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4902(Lorg/telegram/ui/Components/ChatActivityEnterView;F)F

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->increaseLockRecordAudioVideoHintShowed()V

    goto :goto_5

    :cond_a
    iget-object v15, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    long-to-float v3, v3

    const/high16 v4, 0x43160000    # 150.0f

    div-float/2addr v3, v4

    invoke-static {v15, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4924(Lorg/telegram/ui/Components/ChatActivityEnterView;F)F

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4900(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v3

    cmpg-float v3, v3, v11

    if-gez v3, :cond_b

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3, v11}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4902(Lorg/telegram/ui/Components/ChatActivityEnterView;F)F

    :cond_b
    :goto_5
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4900(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v3

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float v3, v3, v4

    float-to-int v3, v3

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->tooltipBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->tooltipBackgroundArrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->tooltipPaint:Landroid/text/TextPaint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->tooltipLayout:Landroid/text/StaticLayout;

    if-eqz v4, :cond_c

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->rectF:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    int-to-float v15, v15

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v4, v11, v11, v15, v8}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    iget v8, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->tooltipWidth:F

    sub-float/2addr v4, v8

    const/high16 v8, 0x42300000    # 44.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v4, v8

    const/high16 v8, 0x41800000    # 16.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v8

    add-float/2addr v8, v12

    invoke-virtual {v7, v4, v8}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->tooltipBackground:Landroid/graphics/drawable/Drawable;

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    neg-int v8, v8

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    neg-int v15, v15

    iget v10, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->tooltipWidth:F

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v10, v11

    float-to-int v10, v10

    iget-object v11, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->tooltipLayout:Landroid/text/StaticLayout;

    invoke-virtual {v11}, Landroid/text/Layout;->getHeight()I

    move-result v11

    int-to-float v11, v11

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v27

    add-float v11, v11, v27

    float-to-int v11, v11

    invoke-virtual {v4, v8, v15, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->tooltipBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->tooltipLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4, v7}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    const/high16 v8, 0x41d00000    # 26.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    sub-int/2addr v4, v8

    int-to-float v4, v4

    const/high16 v8, 0x41880000    # 17.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v8

    add-float/2addr v8, v12

    iget-object v10, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->tooltipLayout:Landroid/text/StaticLayout;

    invoke-virtual {v10}, Landroid/text/Layout;->getHeight()I

    move-result v10

    int-to-float v10, v10

    div-float v10, v10, v18

    add-float/2addr v8, v10

    iget-object v10, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget v10, v10, Lorg/telegram/ui/Components/ChatActivityEnterView;->idleProgress:F

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v11

    mul-float v10, v10, v11

    sub-float/2addr v8, v10

    invoke-virtual {v7, v4, v8}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->path:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->path:Landroid/graphics/Path;

    const/high16 v8, 0x40a00000    # 5.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v8

    neg-float v8, v8

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v10

    invoke-virtual {v4, v8, v10}, Landroid/graphics/Path;->setLastPoint(FF)V

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->path:Landroid/graphics/Path;

    const/4 v8, 0x0

    invoke-virtual {v4, v8, v8}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->path:Landroid/graphics/Path;

    const/high16 v8, 0x40a00000    # 5.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v8

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v10

    invoke-virtual {v4, v8, v10}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->p:Landroid/graphics/Paint;

    const/4 v8, -0x1

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->p:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->p:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->p:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->p:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->p:Landroid/graphics/Paint;

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->path:Landroid/graphics/Path;

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->p:Landroid/graphics/Paint;

    invoke-virtual {v7, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->tooltipBackgroundArrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int v4, v6, v4

    iget-object v8, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->tooltipLayout:Landroid/text/StaticLayout;

    invoke-virtual {v8}, Landroid/text/Layout;->getHeight()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v8, v12

    const/high16 v10, 0x41a00000    # 20.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v10

    add-float/2addr v8, v10

    float-to-int v8, v8

    iget-object v10, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->tooltipBackgroundArrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v6

    iget-object v11, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->tooltipLayout:Landroid/text/StaticLayout;

    invoke-virtual {v11}, Landroid/text/Layout;->getHeight()I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v11, v12

    const/high16 v12, 0x41a00000    # 20.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v12

    add-float/2addr v11, v12

    float-to-int v11, v11

    iget-object v12, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->tooltipBackgroundArrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {v3, v4, v8, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->tooltipBackgroundArrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_c
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->hidePauseT:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v4

    if-eqz v4, :cond_d

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5200(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v10

    const-wide/32 v27, 0xe678

    cmp-long v4, v10, v27

    if-ltz v4, :cond_d

    const/4 v4, 0x1

    goto :goto_6

    :cond_d
    const/4 v4, 0x0

    :goto_6
    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v10

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5100(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_10

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v4, v3, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioTimelineView:Lorg/telegram/ui/Components/RecordedAudioPlayerView;

    if-eqz v4, :cond_10

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5100(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v3

    const v4, 0x3ec28f5c    # 0.38f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_e

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_7

    :cond_e
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5100(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v3

    div-float/2addr v3, v4

    :goto_7
    iget-object v11, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v11}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5100(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v11

    const v12, 0x3f2147ae    # 0.63f

    cmpl-float v11, v11, v12

    if-lez v11, :cond_f

    const/4 v4, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    goto :goto_8

    :cond_f
    iget-object v11, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v11}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5100(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v11

    sub-float/2addr v11, v4

    const/high16 v4, 0x3e800000    # 0.25f

    div-float/2addr v11, v4

    const/4 v4, 0x0

    invoke-static {v4, v11}, Ljava/lang/Math;->max(FF)F

    move-result v11

    :goto_8
    sget-object v12, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_BOTH:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v12, v3}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v26

    invoke-virtual {v12, v11}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move/from16 v11, v26

    goto :goto_b

    :cond_10
    const/4 v4, 0x0

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5000(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v3

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_13

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5000(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v3

    const v4, 0x3f19999a    # 0.6f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_11

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_9

    :cond_11
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5000(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v3

    div-float/2addr v3, v4

    :goto_9
    iget-object v11, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-boolean v12, v11, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageTransitionIsRunning:Z

    if-eqz v12, :cond_12

    invoke-static {v11}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5000(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v4

    goto :goto_a

    :cond_12
    invoke-static {v11}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5000(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v11

    sub-float/2addr v11, v4

    const v4, 0x3ecccccd    # 0.4f

    div-float/2addr v11, v4

    const/4 v4, 0x0

    invoke-static {v4, v11}, Ljava/lang/Math;->max(FF)F

    move-result v11

    move v4, v11

    :goto_a
    sget-object v11, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_BOTH:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v11, v3}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v3

    invoke-virtual {v11, v4}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v4

    move v11, v3

    goto :goto_b

    :cond_13
    const/4 v4, 0x0

    const/4 v11, 0x0

    :goto_b
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    iget-object v15, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v15}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/FrameLayout;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    sub-int/2addr v12, v15

    const/4 v15, 0x0

    invoke-virtual {v7, v15, v15, v3, v12}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5400(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v3

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float v3, v12, v3

    const/4 v15, 0x0

    cmpl-float v3, v3, v15

    if-eqz v3, :cond_14

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5400(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v3

    sub-float v26, v12, v3

    move/from16 v3, v26

    goto :goto_c

    :cond_14
    cmpl-float v3, v4, v15

    if-eqz v3, :cond_15

    move v3, v4

    goto :goto_c

    :cond_15
    const/4 v3, 0x0

    :goto_c
    iget-object v12, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v12}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5500(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v12

    const v15, 0x3f333333    # 0.7f

    cmpg-float v12, v12, v15

    if-ltz v12, :cond_17

    iget-object v12, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v12}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v12

    if-eqz v12, :cond_16

    goto :goto_d

    :cond_16
    iget-object v12, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v12}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5700(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v12

    const/high16 v15, 0x3f800000    # 1.0f

    cmpl-float v12, v12, v15

    if-eqz v12, :cond_18

    iget-object v12, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const v8, 0x3df5c28f    # 0.12f

    invoke-static {v12, v8}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5716(Lorg/telegram/ui/Components/ChatActivityEnterView;F)F

    iget-object v8, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v8}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5700(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v8

    cmpl-float v8, v8, v15

    if-lez v8, :cond_18

    iget-object v8, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v8, v15}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5702(Lorg/telegram/ui/Components/ChatActivityEnterView;F)F

    goto :goto_e

    :cond_17
    :goto_d
    iget-object v8, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v12, 0x0

    invoke-static {v8, v12}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4102(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)Z

    iget-object v8, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v8}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5700(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v8

    const/4 v12, 0x0

    cmpl-float v8, v8, v12

    if-eqz v8, :cond_18

    iget-object v8, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const v15, 0x3df5c28f    # 0.12f

    invoke-static {v8, v15}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5724(Lorg/telegram/ui/Components/ChatActivityEnterView;F)F

    iget-object v8, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v8}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5700(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v8

    cmpg-float v8, v8, v12

    if-gez v8, :cond_18

    iget-object v8, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v8, v12}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5702(Lorg/telegram/ui/Components/ChatActivityEnterView;F)F

    :cond_18
    :goto_e
    const/high16 v8, 0x42900000    # 72.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v8

    mul-float v12, v8, v3

    const/high16 v15, 0x41c00000    # 24.0f

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v15

    mul-float v15, v15, v11

    const/high16 v20, 0x3f800000    # 1.0f

    sub-float v3, v20, v3

    mul-float v15, v15, v3

    add-float/2addr v12, v15

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5700(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v3

    sub-float v3, v20, v3

    mul-float v3, v3, v8

    add-float/2addr v12, v3

    cmpl-float v3, v12, v8

    if-lez v3, :cond_19

    goto :goto_f

    :cond_19
    move v8, v12

    :goto_f
    sub-float v3, v20, v10

    iget-object v12, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v12}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5400(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v12

    mul-float v3, v3, v12

    sub-float v4, v20, v4

    mul-float v3, v3, v4

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5700(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v4

    mul-float v3, v3, v4

    int-to-float v12, v6

    add-float/2addr v1, v8

    invoke-virtual {v7, v3, v3, v12, v1}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->rectF:Landroid/graphics/RectF;

    const/high16 v15, 0x41900000    # 18.0f

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v20

    move/from16 v27, v10

    sub-float v10, v12, v20

    move/from16 v20, v11

    add-float v11, v13, v8

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v28

    add-float v15, v12, v28

    move/from16 v28, v13

    add-float v13, v11, v14

    invoke-virtual {v4, v10, v11, v15, v13}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v10, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->rectF:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->left:F

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v11

    sub-float/2addr v10, v11

    float-to-int v10, v10

    iget-object v11, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->rectF:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->top:F

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v13

    sub-float/2addr v11, v13

    float-to-int v11, v11

    iget-object v13, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->rectF:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->right:F

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v15

    add-float/2addr v13, v15

    float-to-int v13, v13

    iget-object v15, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->rectF:Landroid/graphics/RectF;

    iget v15, v15, Landroid/graphics/RectF;->bottom:F

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v29

    add-float v15, v15, v29

    float-to-int v15, v15

    invoke-virtual {v4, v10, v11, v13, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->rectF:Landroid/graphics/RectF;

    const/high16 v10, 0x41900000    # 18.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v11

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v13

    iget-object v10, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->lockBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v4, v11, v13, v10}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5800(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/RectF;

    move-result-object v4

    iget-object v10, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v4, v10}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5800(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/RectF;

    move-result-object v4

    invoke-direct {v0, v4, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->scale(Landroid/graphics/RectF;F)V

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->pauseHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-eqz v3, :cond_1a

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    const/4 v10, 0x0

    invoke-virtual {v3, v10, v4}, Lorg/telegram/ui/Stories/recorder/HintView2;->setJointPx(FF)Lorg/telegram/ui/Stories/recorder/HintView2;

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->pauseHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    :cond_1a
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->rectF:Landroid/graphics/RectF;

    const/high16 v4, 0x40c00000    # 6.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v10

    sub-float v10, v12, v10

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v11

    const/high16 v13, 0x3f800000    # 1.0f

    sub-float v15, v13, v5

    mul-float v11, v11, v15

    sub-float/2addr v10, v11

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v11

    mul-float v11, v11, v15

    sub-float v11, v1, v11

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    add-int/2addr v6, v13

    int-to-float v6, v6

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v13

    mul-float v13, v13, v15

    add-float/2addr v6, v13

    const/high16 v13, 0x41400000    # 12.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v1, v4

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    mul-float v4, v4, v15

    add-float/2addr v1, v4

    invoke-virtual {v3, v10, v11, v6, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->rectF:Landroid/graphics/RectF;

    iget v3, v1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v10

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v30, v4, v9

    mul-float v1, v1, v30

    const/4 v6, 0x0

    invoke-virtual {v7, v6, v1}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v7, v2, v10, v11}, Landroid/graphics/Canvas;->rotate(FFF)V

    cmpl-float v1, v5, v4

    if-eqz v1, :cond_1c

    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v13

    invoke-virtual {v4, v6, v6, v1, v13}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v3, v8

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v13

    mul-float v13, v13, v30

    add-float/2addr v3, v13

    invoke-virtual {v7, v6, v6, v1, v3}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    sub-float v1, v12, v1

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->rectF:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    const/high16 v6, 0x40c00000    # 6.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    int-to-float v6, v13

    sub-float/2addr v3, v6

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v6

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v13

    move-object/from16 v31, v4

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget v4, v4, Lorg/telegram/ui/Components/ChatActivityEnterView;->idleProgress:F

    const/high16 v25, 0x3f800000    # 1.0f

    sub-float v4, v25, v4

    mul-float v13, v13, v4

    invoke-static {v6, v13, v9}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x41400000    # 12.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v6

    mul-float v6, v6, v5

    add-float/2addr v3, v6

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4800(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v6

    mul-float v4, v4, v6

    add-float/2addr v3, v4

    invoke-virtual {v7, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v1, 0x0

    cmpl-float v3, v2, v1

    if-lez v3, :cond_1b

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v7, v2, v1, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    :cond_1b
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v6

    mul-float v6, v6, v15

    add-float/2addr v6, v1

    iget-object v13, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->lockOutlinePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move-object/from16 v17, v31

    move/from16 v29, v14

    move v14, v5

    move v5, v6

    move-object v6, v13

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->lockOutlinePaint:Landroid/graphics/Paint;

    const/high16 v4, -0x3ccc0000    # -180.0f

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object/from16 v2, v17

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget v5, v4, Lorg/telegram/ui/Components/ChatActivityEnterView;->idleProgress:F

    mul-float v2, v2, v5

    mul-float v2, v2, v9

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v4

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    int-to-float v4, v4

    mul-float v2, v2, v4

    add-float/2addr v1, v2

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4800(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v4

    mul-float v2, v2, v4

    mul-float v2, v2, v30

    add-float v5, v1, v2

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->lockOutlinePaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_10

    :cond_1c
    move/from16 v29, v14

    move v14, v5

    :goto_10
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5100(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v1

    mul-float v1, v1, v18

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v1

    cmpl-float v2, v1, v3

    if-lez v2, :cond_1e

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v2

    if-eqz v2, :cond_1d

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->vidDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_11

    :cond_1d
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->micDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_11

    :cond_1e
    const/4 v2, 0x0

    :goto_11
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->lockPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getAlpha()I

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->lockPaint:Landroid/graphics/Paint;

    int-to-float v5, v3

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v9, v6, v1

    mul-float v5, v5, v9

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v4, 0x0

    cmpl-float v5, v14, v4

    if-lez v5, :cond_1f

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->rectF:Landroid/graphics/RectF;

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v5

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v6

    iget-object v9, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->lockBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v4, v5, v6, v9}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->path2:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->rewind()V

    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v4, v5}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    const v6, 0x3fd47ae1    # 1.66f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v14

    sub-float/2addr v5, v6

    iput v5, v4, Landroid/graphics/RectF;->right:F

    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->radiiLeft:[F

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-static {v6, v9, v14}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v6

    int-to-float v6, v6

    const/4 v9, 0x7

    aput v6, v5, v9

    const/4 v9, 0x6

    aput v6, v5, v9

    const/4 v9, 0x1

    aput v6, v5, v9

    const/4 v9, 0x0

    aput v6, v5, v9

    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->radiiLeft:[F

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v14

    const/4 v9, 0x5

    aput v6, v5, v9

    const/4 v9, 0x4

    aput v6, v5, v9

    const/4 v9, 0x3

    aput v6, v5, v9

    aput v6, v5, v22

    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->path2:Landroid/graphics/Path;

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->radiiLeft:[F

    sget-object v9, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v5, v4, v6, v9}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v4, v5}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    const v6, 0x3fd47ae1    # 1.66f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v14

    add-float/2addr v5, v6

    iput v5, v4, Landroid/graphics/RectF;->left:F

    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->radiiRight:[F

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    invoke-static {v6, v13, v14}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v6

    int-to-float v6, v6

    const/4 v13, 0x5

    aput v6, v5, v13

    const/4 v13, 0x4

    aput v6, v5, v13

    const/4 v13, 0x3

    aput v6, v5, v13

    aput v6, v5, v22

    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->radiiRight:[F

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v14

    const/4 v13, 0x7

    aput v6, v5, v13

    const/4 v13, 0x6

    aput v6, v5, v13

    const/4 v13, 0x1

    aput v6, v5, v13

    const/16 v17, 0x0

    aput v6, v5, v17

    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->path2:Landroid/graphics/Path;

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->radiiRight:[F

    invoke-virtual {v5, v4, v6, v9}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->path2:Landroid/graphics/Path;

    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->lockPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_12

    :cond_1f
    const/4 v13, 0x1

    const/16 v17, 0x0

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->rectF:Landroid/graphics/RectF;

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v5

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v6

    iget-object v9, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->lockPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v4, v5, v6, v9}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :goto_12
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->lockPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    if-eqz v2, :cond_20

    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    const v6, 0x3f6db22d    # 0.9285f

    mul-float v5, v5, v6

    sub-float/2addr v4, v5

    float-to-int v4, v4

    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    mul-float v9, v9, v6

    sub-float/2addr v5, v9

    float-to-int v5, v5

    iget-object v9, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->centerX()F

    move-result v9

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v19

    div-int/lit8 v13, v19, 0x2

    int-to-float v13, v13

    mul-float v13, v13, v6

    add-float/2addr v9, v13

    float-to-int v9, v9

    iget-object v13, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v13}, Landroid/graphics/RectF;->centerY()F

    move-result v13

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v19

    move/from16 v21, v12

    div-int/lit8 v12, v19, 0x2

    int-to-float v12, v12

    mul-float v12, v12, v6

    add-float/2addr v13, v12

    float-to-int v6, v13

    invoke-virtual {v3, v4, v5, v9, v6}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float v1, v1, v3

    float-to-int v1, v1

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {v2, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_13
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_14

    :cond_20
    move/from16 v21, v12

    goto :goto_13

    :goto_14
    cmpl-float v2, v14, v1

    if-eqz v2, :cond_21

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    mul-float v1, v1, v15

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->lockBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v10, v11, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_21
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    const/high16 v2, 0x42ec0000    # 118.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5000(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5700(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v3

    move/from16 v4, v20

    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    move/from16 v3, v28

    invoke-static {v3, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v1

    add-float/2addr v1, v8

    const/high16 v2, 0x42180000    # 38.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v27

    add-float/2addr v1, v2

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->rectF:Landroid/graphics/RectF;

    const/high16 v3, 0x41900000    # 18.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    sub-float v12, v21, v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    add-float v3, v21, v4

    add-float v14, v1, v29

    invoke-virtual {v2, v12, v1, v3, v14}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v2

    if-eqz v2, :cond_22

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v2

    invoke-interface {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->onceVoiceAvailable()Z

    move-result v2

    if-eqz v2, :cond_22

    const/4 v10, 0x1

    goto :goto_15

    :cond_22
    const/4 v10, 0x0

    :goto_15
    iput-boolean v10, v1, Lorg/telegram/ui/Components/ChatActivityEnterView;->onceVisible:Z

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-boolean v1, v1, Lorg/telegram/ui/Components/ChatActivityEnterView;->onceVisible:Z

    if-eqz v1, :cond_24

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->rectF:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v4, v2, Landroid/graphics/RectF;->top:F

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v5

    sub-float/2addr v4, v5

    sub-float/2addr v4, v1

    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->rectF:Landroid/graphics/RectF;

    iget v6, v5, Landroid/graphics/RectF;->right:F

    iget v5, v5, Landroid/graphics/RectF;->top:F

    sub-float/2addr v5, v1

    invoke-virtual {v2, v3, v4, v6, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->onceHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-eqz v1, :cond_23

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lorg/telegram/ui/Stories/recorder/HintView2;->setJointPx(FF)Lorg/telegram/ui/Stories/recorder/HintView2;

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->onceHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    :cond_23
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->onceRect:Landroid/graphics/RectF;

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5400(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5000(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v8, v3, v2

    mul-float v1, v1, v8

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5700(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v2

    mul-float v1, v1, v2

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4800(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v2

    mul-float v1, v1, v2

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {v7, v1, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->rectF:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->rectF:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->rectF:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v5

    add-float/2addr v4, v5

    float-to-int v4, v4

    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->rectF:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v6

    add-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->rectF:Landroid/graphics/RectF;

    const/high16 v2, 0x41900000    # 18.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->lockBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v3, v2, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->periodDrawable:Lorg/telegram/ui/Stories/recorder/CaptionContainerView$PeriodDrawable;

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->rectF:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    iget v4, v2, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    iget v5, v2, Landroid/graphics/RectF;->right:F

    float-to-int v5, v5

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    float-to-int v2, v2

    invoke-virtual {v1, v3, v4, v5, v2}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$PeriodDrawable;->setBounds(IIII)V

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->periodDrawable:Lorg/telegram/ui/Stories/recorder/CaptionContainerView$PeriodDrawable;

    invoke-virtual {v1, v7}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$PeriodDrawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_24
    return-void
.end method

.method protected onMeasure(II)V
    .locals 10

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v0, 0x437e0000    # 254.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->lastSize:I

    if-eq v1, p2, :cond_1

    iput p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->lastSize:I

    new-instance p2, Landroid/text/StaticLayout;

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->tooltipMessage:Ljava/lang/String;

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->tooltipPaint:Landroid/text/TextPaint;

    const/high16 v1, 0x435c0000    # 220.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v2, p2

    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->tooltipLayout:Landroid/text/StaticLayout;

    invoke-virtual {p2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result p2

    const/4 v1, 0x0

    iput v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->tooltipWidth:F

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->tooltipLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v1}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v2

    iget v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->tooltipWidth:F

    cmpl-float v3, v2, v3

    if-lez v3, :cond_0

    iput v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->tooltipWidth:F

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method protected onSetAlpha(I)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onSetAlpha(I)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5800(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/RectF;

    move-result-object p1

    int-to-float v2, v0

    int-to-float v5, v1

    invoke-virtual {p1, v2, v5}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->pausePressed:Z

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-boolean v2, p1, Lorg/telegram/ui/Components/ChatActivityEnterView;->onceVisible:Z

    if-eqz v2, :cond_e

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    move-result-object p1

    if-eqz p1, :cond_e

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4800(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result p1

    const v2, 0x3dcccccd    # 0.1f

    cmpl-float p1, p1, v2

    if-lez p1, :cond_e

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->onceRect:Landroid/graphics/RectF;

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->oncePressed:Z

    goto/16 :goto_4

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v3, :cond_c

    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->pausePressed:Z

    if-eqz p1, :cond_9

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5800(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/RectF;

    move-result-object p1

    int-to-float v2, v0

    int-to-float v5, v1

    invoke-virtual {p1, v2, v5}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isInVideoMode()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/View;->setEnabled(Z)V

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object p1

    invoke-interface {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->toggleVideoRecordingPause()V

    goto/16 :goto_0

    :cond_3
    new-instance p1, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->pauseHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->shown()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->hideHintView()V

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioTimelineView:Lorg/telegram/ui/Components/RecordedAudioPlayerView;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->setPlaying(Z)V

    :cond_5
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->isRecordingPaused()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioTimelineView:Lorg/telegram/ui/Components/RecordedAudioPlayerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->getAudioLeft()F

    move-result v0

    const v1, 0x3c23d70a    # 0.01f

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioTimelineView:Lorg/telegram/ui/Components/RecordedAudioPlayerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->getAudioRight()F

    move-result v0

    const v1, 0x3f7d70a4    # 0.99f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_8

    :cond_6
    new-instance v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;Ljava/lang/Runnable;)V

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v1, "trimvoicehint"

    invoke-interface {p1, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_7

    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-direct {p1, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget v1, Lorg/telegram/messenger/R$string;->RecordingTrimTitle:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget v1, Lorg/telegram/messenger/R$string;->RecordingTrimText:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget v1, Lorg/telegram/messenger/R$string;->OK:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    goto :goto_0

    :cond_7
    move-object p1, v0

    :cond_8
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    iput-boolean v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->oncePressed:Z

    iput-boolean v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->pausePressed:Z

    return v3

    :cond_9
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->oncePressed:Z

    if-eqz p1, :cond_d

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->onceRect:Landroid/graphics/RectF;

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-boolean v0, p1, Lorg/telegram/ui/Components/ChatActivityEnterView;->voiceOnce:Z

    xor-int/2addr v0, v3

    iput-boolean v0, p1, Lorg/telegram/ui/Components/ChatActivityEnterView;->voiceOnce:Z

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->periodDrawable:Lorg/telegram/ui/Stories/recorder/CaptionContainerView$PeriodDrawable;

    invoke-virtual {p1, v3, v0, v3}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$PeriodDrawable;->setValue(IZZ)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2400(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v5

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2500(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v6

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object p1

    iget-boolean p1, p1, Lorg/telegram/ui/ChatActivity;->isTopic:Z

    if-eqz p1, :cond_a

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->getTopicId()J

    move-result-wide v0

    :goto_1
    move-wide v8, v0

    goto :goto_2

    :cond_a
    const-wide/16 v0, 0x0

    goto :goto_1

    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-boolean v10, p1, Lorg/telegram/ui/Components/ChatActivityEnterView;->voiceOnce:Z

    invoke-virtual/range {v5 .. v10}, Lorg/telegram/messenger/MediaDataController;->toggleDraftVoiceOnce(JJZ)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-boolean p1, p1, Lorg/telegram/ui/Components/ChatActivityEnterView;->voiceOnce:Z

    if-eqz p1, :cond_b

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->showOnceHint()V

    goto :goto_3

    :cond_b
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->hideHintView()V

    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_e

    :cond_d
    iput-boolean v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->oncePressed:Z

    iput-boolean v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->pausePressed:Z

    :cond_e
    :goto_4
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->pausePressed:Z

    if-nez p1, :cond_10

    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->oncePressed:Z

    if-eqz p1, :cond_f

    goto :goto_5

    :cond_f
    const/4 v3, 0x0

    :cond_10
    :goto_5
    return v3
.end method

.method public setAlpha(F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method

.method public showOnceHint()V
    .locals 8

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->hideHintView()V

    new-instance v0, Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/HintView2;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->onceHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/HintView2;->setJoint(FF)Lorg/telegram/ui/Stories/recorder/HintView2;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->onceHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/HintView2;->setMultilineText(Z)Lorg/telegram/ui/Stories/recorder/HintView2;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-boolean v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->voiceOnce:Z

    if-eqz v0, :cond_0

    sget v0, Lorg/telegram/messenger/R$string;->VideoSetOnceHintEnabled:I

    goto :goto_0

    :cond_0
    sget v0, Lorg/telegram/messenger/R$string;->VideoSetOnceHint:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-boolean v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->voiceOnce:Z

    if-eqz v0, :cond_2

    sget v0, Lorg/telegram/messenger/R$string;->VoiceSetOnceHintEnabled:I

    goto :goto_0

    :cond_2
    sget v0, Lorg/telegram/messenger/R$string;->VoiceSetOnceHint:I

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->onceHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->setText(Ljava/lang/CharSequence;)Lorg/telegram/ui/Stories/recorder/HintView2;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->onceHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->onceHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {v3}, Lorg/telegram/ui/Stories/recorder/HintView2;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/telegram/ui/Stories/recorder/HintView2;->cutInFancyHalf(Ljava/lang/CharSequence;Landroid/text/TextPaint;)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Stories/recorder/HintView2;->setMaxWidthPx(I)Lorg/telegram/ui/Stories/recorder/HintView2;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-boolean v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->voiceOnce:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->onceHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    sget v1, Lorg/telegram/messenger/R$raw;->fire_on:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/HintView2;->setIcon(I)Lorg/telegram/ui/Stories/recorder/HintView2;

    goto :goto_1

    :cond_3
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "voiceoncehint"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    add-int/2addr v2, v1

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->onceHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/high16 v6, 0x42580000    # 54.0f

    const/high16 v7, 0x42680000    # 58.0f

    const/4 v1, -0x1

    const/high16 v2, -0x40800000    # -1.0f

    const/16 v3, 0x77

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->onceHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    new-instance v1, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;Lorg/telegram/ui/Stories/recorder/HintView2;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/HintView2;->setOnHiddenListener(Ljava/lang/Runnable;)Lorg/telegram/ui/Stories/recorder/HintView2;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->onceHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->show()Lorg/telegram/ui/Stories/recorder/HintView2;

    return-void
.end method

.method public showPauseHint()V
    .locals 8

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "voicepausehint"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x3

    if-le v0, v3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->hideHintView()V

    new-instance v0, Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x2

    invoke-direct {v0, v3, v4}, Lorg/telegram/ui/Stories/recorder/HintView2;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->pauseHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/Stories/recorder/HintView2;->setJoint(FF)Lorg/telegram/ui/Stories/recorder/HintView2;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->pauseHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Stories/recorder/HintView2;->setMultilineText(Z)Lorg/telegram/ui/Stories/recorder/HintView2;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->pauseHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    sget v4, Lorg/telegram/messenger/R$string;->VoicePauseHint:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Stories/recorder/HintView2;->setText(Ljava/lang/CharSequence;)Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    add-int/2addr v2, v3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->pauseHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/high16 v6, 0x42580000    # 54.0f

    const/high16 v7, 0x42680000    # 58.0f

    const/4 v1, -0x1

    const/high16 v2, -0x40800000    # -1.0f

    const/16 v3, 0x77

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->pauseHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    new-instance v1, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;Lorg/telegram/ui/Stories/recorder/HintView2;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/HintView2;->setOnHiddenListener(Ljava/lang/Runnable;)Lorg/telegram/ui/Stories/recorder/HintView2;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->pauseHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->show()Lorg/telegram/ui/Stories/recorder/HintView2;

    return-void
.end method

.method public showTooltipIfNeed()V
    .locals 3

    sget v0, Lorg/telegram/messenger/SharedConfig;->lockRecordAudioVideoHint:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4102(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4202(Lorg/telegram/ui/Components/ChatActivityEnterView;J)J

    :cond_0
    return-void
.end method

.method public updateColors()V
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->periodDrawable:Lorg/telegram/ui/Stories/recorder/CaptionContainerView$PeriodDrawable;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelVoiceLock:I

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3100(Lorg/telegram/ui/Components/ChatActivityEnterView;I)I

    move-result v1

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelVoiceBackground:I

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3100(Lorg/telegram/ui/Components/ChatActivityEnterView;I)I

    move-result v3

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v3, v4}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$PeriodDrawable;->updateColors(III)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->lockBackgroundPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelVoiceLockBackground:I

    invoke-static {v1, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3100(Lorg/telegram/ui/Components/ChatActivityEnterView;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->tooltipPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_gifSaveHintText:I

    invoke-static {v1, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3100(Lorg/telegram/ui/Components/ChatActivityEnterView;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_gifSaveHintBackground:I

    invoke-static {v1, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3100(Lorg/telegram/ui/Components/ChatActivityEnterView;I)I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->tooltipBackground:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->tooltipBackgroundArrow:Landroid/graphics/drawable/Drawable;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v5, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3100(Lorg/telegram/ui/Components/ChatActivityEnterView;I)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->lockBackgroundPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3100(Lorg/telegram/ui/Components/ChatActivityEnterView;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->lockPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3100(Lorg/telegram/ui/Components/ChatActivityEnterView;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->lockOutlinePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3100(Lorg/telegram/ui/Components/ChatActivityEnterView;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->micDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3100(Lorg/telegram/ui/Components/ChatActivityEnterView;I)I

    move-result v3

    invoke-direct {v1, v3, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->vidDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3100(Lorg/telegram/ui/Components/ChatActivityEnterView;I)I

    move-result v2

    invoke-direct {v1, v2, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->periodDrawable:Lorg/telegram/ui/Stories/recorder/CaptionContainerView$PeriodDrawable;

    if-eq p1, v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
