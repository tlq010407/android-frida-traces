.class public Lorg/telegram/ui/Stories/recorder/TimelineView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Stories/recorder/TimelineView$Track;,
        Lorg/telegram/ui/Stories/recorder/TimelineView$WaveformPath;,
        Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;,
        Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;,
        Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;
    }
.end annotation


# instance fields
.field private askExactSeek:Ljava/lang/Runnable;

.field private audioAuthor:Landroid/text/StaticLayout;

.field private audioAuthorLeft:F

.field private final audioAuthorPaint:Landroid/text/TextPaint;

.field private audioAuthorWidth:F

.field private final audioBlur:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

.field private final audioBounds:Landroid/graphics/RectF;

.field private final audioClipPath:Landroid/graphics/Path;

.field private final audioDotPaint:Landroid/graphics/Paint;

.field private audioDuration:J

.field private final audioIcon:Landroid/graphics/drawable/Drawable;

.field private audioLeft:F

.field private audioOffset:J

.field private audioPath:Ljava/lang/String;

.field private audioRight:F

.field private audioSelected:Z

.field private final audioSelectedT:Lorg/telegram/ui/Components/AnimatedFloat;

.field private final audioT:Lorg/telegram/ui/Components/AnimatedFloat;

.field private audioTitle:Landroid/text/StaticLayout;

.field private audioTitleLeft:F

.field private final audioTitlePaint:Landroid/text/TextPaint;

.field private audioTitleWidth:F

.field private audioVolume:F

.field private final audioWaveformBlur:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

.field private final backgroundBlur:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

.field private final blurManager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

.field private final collageClipPath:Landroid/graphics/Path;

.field private final collageFramePaint:Landroid/graphics/Paint;

.field private collageMain:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

.field private collageSelected:I

.field private final collageTracks:Ljava/util/ArrayList;

.field private final collageWaveforms:Ljava/util/ArrayList;

.field private final countTextPaint:Landroid/text/TextPaint;

.field private coverEnd:J

.field private coverStart:J

.field private delegate:Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;

.field private dragSpeed:F

.field private dragged:Z

.field private draggingProgress:Z

.field private final ellipsizeGradient:Landroid/graphics/LinearGradient;

.field private final ellipsizeMatrix:Landroid/graphics/Matrix;

.field private final ellipsizePaint:Landroid/graphics/Paint;

.field private h:I

.field private hadDragChange:Z

.field private hasAudio:Z

.field private hasRound:Z

.field private isCover:Z

.field private lastHeight:I

.field private lastTime:J

.field private lastX:F

.field private final loopProgress:Lorg/telegram/ui/Components/AnimatedFloat;

.field private loopProgressFrom:J

.field private maxCount:I

.field private onHeightChange:Ljava/lang/Runnable;

.field private final onLongPress:Ljava/lang/Runnable;

.field private onTimelineClick:Ljava/lang/Runnable;

.field public open:Z

.field private final openT:Lorg/telegram/ui/Components/AnimatedFloat;

.field private ph:I

.field private pressCollageIndex:I

.field private pressHandle:I

.field private pressHandleCollageIndex:I

.field private pressTime:J

.field private pressType:I

.field private final previewContainer:Landroid/view/View;

.field private progress:J

.field private final progressShadowPaint:Landroid/graphics/Paint;

.field private final progressWhitePaint:Landroid/graphics/Paint;

.field private px:I

.field private py:I

.field private final regionCutPaint:Landroid/graphics/Paint;

.field private final regionHandlePaint:Landroid/graphics/Paint;

.field private final regionPaint:Landroid/graphics/Paint;

.field private resetWaveform:Z

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private final roundBounds:Landroid/graphics/RectF;

.field private final roundClipPath:Landroid/graphics/Path;

.field private roundDuration:J

.field private roundLeft:F

.field private roundOffset:J

.field private roundPath:Ljava/lang/String;

.field private roundRight:F

.field private roundSelected:Z

.field private final roundSelectedT:Lorg/telegram/ui/Components/AnimatedFloat;

.field private final roundT:Lorg/telegram/ui/Components/AnimatedFloat;

.field private roundThumbs:Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;

.field private roundVolume:F

.field private scroll:J

.field private final scroller:Lorg/telegram/ui/Components/Scroller;

.field private scrolling:Z

.field private scrollingCollage:I

.field private scrollingVideo:Z

.field private final selectedCollageClipPath:Landroid/graphics/Path;

.field private final selectedVideoClipPath:Landroid/graphics/Path;

.field final selectedVideoRadii:[F

.field private sw:I

.field private final timelineBounds:Landroid/graphics/RectF;

.field private final timelineClipPath:Landroid/graphics/Path;

.field private final timelineIcon:Landroid/graphics/drawable/Drawable;

.field private final timelineText:Lorg/telegram/ui/Components/Text;

.field private final timelineWaveformLoaded:Lorg/telegram/ui/Components/AnimatedFloat;

.field private final timelineWaveformMax:Lorg/telegram/ui/Components/AnimatedFloat;

.field private final timelineWaveformPath:Lorg/telegram/ui/Stories/recorder/TimelineView$WaveformPath;

.field private velocityTracker:Landroid/view/VelocityTracker;

.field private final videoBounds:Landroid/graphics/RectF;

.field private final videoClipPath:Landroid/graphics/Path;

.field private final videoFramePaint:Landroid/graphics/Paint;

.field private videoTrack:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

.field private w:I

.field private wasScrollX:I

.field private waveform:Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;

.field private waveformIsLoaded:Z

.field private final waveformMax:Lorg/telegram/ui/Components/AnimatedFloat;

.field private final waveformPaint:Landroid/graphics/Paint;

.field private final waveformPath:Lorg/telegram/ui/Stories/recorder/TimelineView$WaveformPath;


# direct methods
.method public static synthetic $r8$lambda$3xfpuv3NLYw_7m5eQR4XDlX9AVw(Lorg/telegram/ui/Stories/recorder/TimelineView;Landroid/view/ViewGroup;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/BlurringShader$BlurManager;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stories/recorder/TimelineView;->lambda$new$6(Landroid/view/ViewGroup;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/BlurringShader$BlurManager;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7j3DKEqbZxbFm4cHs9YxhnORcSQ(Lorg/telegram/ui/Stories/recorder/TimelineView;Ljava/lang/Float;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/TimelineView;->lambda$new$0(Ljava/lang/Float;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CcgHyMQkOAL1CJP_zrgPRlX6yxQ(Lorg/telegram/ui/Stories/recorder/TimelineView$Track;Lorg/telegram/ui/Stories/recorder/TimelineView$Track;)I
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Stories/recorder/TimelineView;->lambda$sortCollage$7(Lorg/telegram/ui/Stories/recorder/TimelineView$Track;Lorg/telegram/ui/Stories/recorder/TimelineView$Track;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$G8ujk_cWeaysCw6dOFM32DyUvr0(Lorg/telegram/ui/Stories/recorder/TimelineView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->lambda$new$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$LB5xKJ5UqtqxrxGlddx1Rq3Q_M0(Lorg/telegram/ui/Stories/recorder/TimelineView;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/TimelineView;->lambda$setProgressAt$9(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$VKEvP7BMWSMm0sA52g6r4hpygfg(Lorg/telegram/ui/Stories/recorder/TimelineView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->lambda$setupRoundThumbs$8()V

    return-void
.end method

.method public static synthetic $r8$lambda$cGqD5y3W4FcwjXr1-H28Dw0Gpno(Lorg/telegram/ui/Stories/recorder/TimelineView;Ljava/lang/Float;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/TimelineView;->lambda$new$2(Ljava/lang/Float;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hR6yXxbyw7j0f7kSfKmENclw7Qw(Lorg/telegram/ui/Stories/recorder/TimelineView;Lorg/telegram/ui/Stories/recorder/TimelineView$Track;Ljava/lang/Float;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/TimelineView;->lambda$new$5(Lorg/telegram/ui/Stories/recorder/TimelineView$Track;Ljava/lang/Float;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kx2RWR0HuGW--ZWCMCnhKwT75y4(Lorg/telegram/ui/Stories/recorder/TimelineView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$lokWYyMBVmGgL-aI60HGFVf3AAg(Lorg/telegram/ui/Stories/recorder/TimelineView;Ljava/lang/Float;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/TimelineView;->lambda$new$4(Ljava/lang/Float;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/BlurringShader$BlurManager;)V
    .locals 32

    move-object/from16 v8, p0

    move-object/from16 v9, p5

    invoke-direct/range {p0 .. p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v10, 0x0

    iput v10, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->collageSelected:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->collageWaveforms:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->collageTracks:Ljava/util/ArrayList;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v11, 0x3

    invoke-direct {v0, v11}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->collageFramePaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->collageClipPath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->selectedCollageClipPath:Landroid/graphics/Path;

    const/4 v12, 0x1

    iput v12, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->maxCount:I

    new-instance v7, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v13, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x168

    move-object v0, v7

    move-object/from16 v1, p0

    move-object v6, v13

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v7, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundT:Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    const-wide/16 v14, 0x168

    invoke-direct {v0, v8, v14, v15, v13}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JLandroid/animation/TimeInterpolator;)V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundSelectedT:Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance v7, Lorg/telegram/ui/Components/AnimatedFloat;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v7, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioT:Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-direct {v0, v8, v14, v15, v13}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JLandroid/animation/TimeInterpolator;)V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioSelectedT:Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance v7, Lorg/telegram/ui/Components/AnimatedFloat;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v7, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->waveformMax:Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance v7, Lorg/telegram/ui/Components/AnimatedFloat;

    const-wide/16 v4, 0x258

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v7, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->timelineWaveformLoaded:Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance v7, Lorg/telegram/ui/Components/AnimatedFloat;

    const-wide/16 v4, 0x168

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v7, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->timelineWaveformMax:Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance v7, Lorg/telegram/ui/Components/AnimatedFloat;

    const-wide/16 v4, 0x140

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v7, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->openT:Lorg/telegram/ui/Components/AnimatedFloat;

    iput-boolean v12, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->open:Z

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->timelineBounds:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->timelineClipPath:Landroid/graphics/Path;

    new-instance v0, Lorg/telegram/ui/Stories/recorder/TimelineView$WaveformPath;

    invoke-direct {v0}, Lorg/telegram/ui/Stories/recorder/TimelineView$WaveformPath;-><init>()V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->timelineWaveformPath:Lorg/telegram/ui/Stories/recorder/TimelineView$WaveformPath;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoBounds:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v11}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoFramePaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoClipPath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->selectedVideoClipPath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundBounds:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundClipPath:Landroid/graphics/Path;

    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14, v12}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v14, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->regionPaint:Landroid/graphics/Paint;

    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15, v12}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v15, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->regionCutPaint:Landroid/graphics/Paint;

    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7, v12}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v7, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->regionHandlePaint:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5, v12}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v5, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->progressShadowPaint:Landroid/graphics/Paint;

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6, v12}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v6, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->progressWhitePaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/text/TextPaint;

    invoke-direct {v3, v12}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v3, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->countTextPaint:Landroid/text/TextPaint;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioBounds:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioClipPath:Landroid/graphics/Path;

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4, v12}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v4, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->waveformPaint:Landroid/graphics/Paint;

    new-instance v0, Lorg/telegram/ui/Stories/recorder/TimelineView$WaveformPath;

    invoke-direct {v0}, Lorg/telegram/ui/Stories/recorder/TimelineView$WaveformPath;-><init>()V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->waveformPath:Lorg/telegram/ui/Stories/recorder/TimelineView$WaveformPath;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v12}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioDotPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1, v12}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioAuthorPaint:Landroid/text/TextPaint;

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v12}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioTitlePaint:Landroid/text/TextPaint;

    new-instance v11, Landroid/graphics/LinearGradient;

    const v10, 0xffffff

    move-object/from16 v24, v5

    const/4 v5, -0x1

    filled-new-array {v10, v5}, [I

    move-result-object v21

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    sget-object v23, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/high16 v19, 0x41800000    # 16.0f

    const/16 v20, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v16, v11

    move-object/from16 v22, v5

    invoke-direct/range {v16 .. v23}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v11, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->ellipsizeGradient:Landroid/graphics/LinearGradient;

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    iput-object v5, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->ellipsizeMatrix:Landroid/graphics/Matrix;

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5, v12}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v5, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->ellipsizePaint:Landroid/graphics/Paint;

    new-instance v12, Lorg/telegram/ui/Components/Scroller;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v12, v10}, Lorg/telegram/ui/Components/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v12, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->scroller:Lorg/telegram/ui/Components/Scroller;

    move-object v12, v5

    move-object v10, v6

    const-wide/16 v5, -0x1

    iput-wide v5, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->coverStart:J

    iput-wide v5, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->coverEnd:J

    new-instance v5, Lorg/telegram/ui/Components/AnimatedFloat;

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x154

    const/4 v6, 0x0

    move-object/from16 v25, v0

    move-object v0, v5

    move-object/from16 v26, v1

    move v1, v6

    move-object v6, v2

    move-object/from16 v2, p0

    move-object/from16 v27, v3

    move-object/from16 v28, v4

    move-wide/from16 v3, v20

    move-object/from16 v31, v5

    move-object/from16 v29, v6

    move-object/from16 v30, v12

    move-object v12, v10

    move-object/from16 v10, v24

    move-wide/from16 v5, v22

    move-object v9, v7

    move-object v7, v13

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(FLandroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    move-object/from16 v0, v31

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->loopProgress:Lorg/telegram/ui/Components/AnimatedFloat;

    const-wide/16 v0, -0x1

    iput-wide v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->loopProgressFrom:J

    const/4 v0, -0x1

    iput v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->pressHandle:I

    iput v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->pressHandleCollageIndex:I

    iput v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->pressType:I

    iput v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->pressCollageIndex:I

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->dragSpeed:F

    const/4 v1, 0x1

    iput-boolean v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->scrollingVideo:Z

    iput v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->scrollingCollage:I

    const/4 v1, 0x0

    iput-boolean v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->scrolling:Z

    const/16 v1, 0x8

    new-array v1, v1, [F

    iput-object v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->selectedVideoRadii:[F

    move-object/from16 v5, p3

    iput-object v5, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->previewContainer:Landroid/view/View;

    move-object/from16 v3, p4

    iput-object v3, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const v1, 0x7fffffff

    move-object/from16 v2, v29

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v4, v26

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v4, v25

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setColor(I)V

    const v2, 0x40ffffff    # 7.9999995f

    move-object/from16 v4, v28

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v2, v30

    invoke-virtual {v2, v11}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    const/high16 v6, 0x1a000000

    const/4 v7, 0x0

    invoke-virtual {v14, v4, v7, v2, v6}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v4, v27

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    const/high16 v11, 0x40000000    # 2.0f

    invoke-virtual {v4, v6, v7, v2, v11}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v15, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/high16 v2, -0x1000000

    invoke-virtual {v9, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v2, 0x26000000

    invoke-virtual {v10, v2}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v2, Lorg/telegram/ui/Components/Text;

    sget v4, Lorg/telegram/messenger/R$string;->StoryTimeline:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v6

    invoke-direct {v2, v4, v1, v6}, Lorg/telegram/ui/Components/Text;-><init>(Ljava/lang/CharSequence;FLandroid/graphics/Typeface;)V

    iput-object v2, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->timelineText:Lorg/telegram/ui/Components/Text;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$drawable;->timeline:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->timelineIcon:Landroid/graphics/drawable/Drawable;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v0, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$drawable;->filled_widget_music:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioIcon:Landroid/graphics/drawable/Drawable;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v2, v0, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    move-object/from16 v4, p5

    iput-object v4, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->blurManager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    new-instance v0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    const/4 v1, 0x0

    invoke-direct {v0, v4, v8, v1}, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;-><init>(Lorg/telegram/ui/Components/BlurringShader$BlurManager;Landroid/view/View;I)V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->backgroundBlur:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    new-instance v0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    const/4 v1, 0x3

    invoke-direct {v0, v4, v8, v1}, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;-><init>(Lorg/telegram/ui/Components/BlurringShader$BlurManager;Landroid/view/View;I)V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioBlur:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    new-instance v0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    const/4 v1, 0x4

    invoke-direct {v0, v4, v8, v1}, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;-><init>(Lorg/telegram/ui/Components/BlurringShader$BlurManager;Landroid/view/View;I)V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioWaveformBlur:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    new-instance v6, Lorg/telegram/ui/Stories/recorder/TimelineView$$ExternalSyntheticLambda0;

    move-object v0, v6

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Stories/recorder/TimelineView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/recorder/TimelineView;Landroid/view/ViewGroup;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/BlurringShader$BlurManager;Landroid/view/View;)V

    iput-object v6, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->onLongPress:Ljava/lang/Runnable;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$000(Lorg/telegram/ui/Stories/recorder/TimelineView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->w:I

    return p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Stories/recorder/TimelineView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->px:I

    return p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Stories/recorder/TimelineView;)Lorg/telegram/ui/Stories/recorder/TimelineView$Track;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoTrack:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    return-object p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Stories/recorder/TimelineView;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->collageTracks:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Stories/recorder/TimelineView;)J
    .locals 2

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->getBaseDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Stories/recorder/TimelineView;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->hasRound:Z

    return p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Stories/recorder/TimelineView;)J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundDuration:J

    return-wide v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Stories/recorder/TimelineView;)J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->coverStart:J

    return-wide v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Stories/recorder/TimelineView;)J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->coverEnd:J

    return-wide v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Stories/recorder/TimelineView;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->collageWaveforms:Ljava/util/ArrayList;

    return-object p0
.end method

.method private detectHandle(Landroid/view/MotionEvent;)I
    .locals 16

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->getBaseDuration()J

    move-result-wide v3

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->getMaxScrollDuration()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    iget-wide v5, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->progress:J

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->getBaseDuration()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    invoke-static/range {v5 .. v10}, Lorg/telegram/messenger/Utilities;->clamp(JJJ)J

    move-result-wide v5

    long-to-float v5, v5

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->collageMain:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    if-eqz v6, :cond_0

    iget-wide v7, v6, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->offset:J

    long-to-float v7, v7

    iget v8, v6, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->left:F

    iget-wide v9, v6, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->duration:J

    long-to-float v6, v9

    mul-float v8, v8, v6

    add-float/2addr v7, v8

    goto :goto_1

    :cond_0
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoTrack:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    if-nez v6, :cond_1

    iget-wide v6, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioOffset:J

    goto :goto_0

    :cond_1
    const-wide/16 v6, 0x0

    :goto_0
    long-to-float v7, v6

    :goto_1
    add-float/2addr v5, v7

    iget-wide v6, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->scroll:J

    long-to-float v6, v6

    sub-float/2addr v5, v6

    long-to-float v3, v3

    div-float/2addr v5, v3

    iget v4, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->px:I

    iget v6, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->ph:I

    add-int/2addr v4, v6

    int-to-float v4, v4

    iget v6, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->sw:I

    int-to-float v6, v6

    mul-float v6, v6, v5

    add-float/2addr v4, v6

    iget-boolean v5, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->isCover:Z

    const/4 v6, 0x0

    if-nez v5, :cond_2

    const/high16 v5, 0x41400000    # 12.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    sub-float v7, v4, v7

    cmpl-float v7, v1, v7

    if-ltz v7, :cond_2

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    cmpg-float v4, v1, v4

    if-gtz v4, :cond_2

    return v6

    :cond_2
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoTrack:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    const/high16 v7, 0x40000000    # 2.0f

    if-eqz v4, :cond_3

    iget v4, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->h:I

    iget v8, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->py:I

    sub-int/2addr v4, v8

    int-to-float v4, v4

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->getVideoHeight()F

    move-result v8

    sub-float/2addr v4, v8

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v4, v8

    cmpl-float v4, v2, v4

    if-lez v4, :cond_3

    const/4 v4, 0x1

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_2
    iget-object v8, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->collageTracks:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    const/high16 v9, 0x40800000    # 4.0f

    if-nez v8, :cond_4

    iget v8, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->h:I

    iget v10, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->py:I

    sub-int/2addr v8, v10

    int-to-float v8, v8

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->getVideoHeight()F

    move-result v10

    sub-float/2addr v8, v10

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v8, v10

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->getCollageHeight()F

    move-result v10

    sub-float/2addr v8, v10

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v8, v10

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v8, v10

    cmpl-float v8, v2, v8

    if-lez v8, :cond_4

    iget v8, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->h:I

    iget v10, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->py:I

    sub-int/2addr v8, v10

    int-to-float v8, v8

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->getVideoHeight()F

    move-result v10

    sub-float/2addr v8, v10

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v8, v10

    cmpg-float v8, v2, v8

    if-gez v8, :cond_4

    const/4 v8, 0x1

    goto :goto_3

    :cond_4
    const/4 v8, 0x0

    :goto_3
    iget-boolean v10, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->hasRound:Z

    if-eqz v10, :cond_7

    iget v10, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->h:I

    iget v11, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->py:I

    sub-int/2addr v10, v11

    int-to-float v10, v10

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->getVideoHeight()F

    move-result v11

    sub-float/2addr v10, v11

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v10, v11

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->getCollageHeight()F

    move-result v11

    sub-float/2addr v10, v11

    iget-object v11, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->collageTracks:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    const/4 v12, 0x0

    if-eqz v11, :cond_5

    const/4 v11, 0x0

    goto :goto_4

    :cond_5
    const/high16 v11, 0x40800000    # 4.0f

    :goto_4
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v10, v11

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->getRoundHeight()F

    move-result v11

    sub-float/2addr v10, v11

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v10, v11

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v10, v11

    cmpl-float v10, v2, v10

    if-lez v10, :cond_7

    iget v10, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->h:I

    iget v11, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->py:I

    sub-int/2addr v10, v11

    int-to-float v10, v10

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->getVideoHeight()F

    move-result v11

    sub-float/2addr v10, v11

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v10, v11

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->getCollageHeight()F

    move-result v11

    sub-float/2addr v10, v11

    iget-object v11, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->collageTracks:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_6

    const/4 v9, 0x0

    :cond_6
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v10, v9

    cmpg-float v9, v2, v10

    if-gez v9, :cond_7

    const/4 v9, 0x1

    goto :goto_5

    :cond_7
    const/4 v9, 0x0

    :goto_5
    if-eqz v8, :cond_f

    :goto_6
    iget-object v8, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->collageTracks:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v6, v8, :cond_27

    iget-object v8, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->collageTracks:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    sget-object v9, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object v15, v8, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v9, v15}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    neg-int v15, v15

    int-to-float v15, v15

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v9, v15, v5}, Landroid/graphics/RectF;->inset(FF)V

    invoke-virtual {v9, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v5

    if-eqz v5, :cond_e

    iget v2, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->px:I

    iget v4, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->ph:I

    add-int/2addr v2, v4

    int-to-float v2, v2

    iget-wide v4, v8, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->offset:J

    long-to-float v7, v4

    div-float v9, v7, v3

    iget v15, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->sw:I

    int-to-float v15, v15

    mul-float v9, v9, v15

    add-float/2addr v9, v2

    iget v10, v8, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->left:F

    iget-wide v11, v8, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->duration:J

    long-to-float v13, v11

    mul-float v10, v10, v13

    add-float/2addr v10, v7

    div-float/2addr v10, v3

    mul-float v10, v10, v15

    add-float/2addr v10, v2

    iget v14, v8, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->right:F

    mul-float v14, v14, v13

    add-float/2addr v7, v14

    div-float/2addr v7, v3

    mul-float v7, v7, v15

    add-float/2addr v7, v2

    add-long/2addr v4, v11

    long-to-float v4, v4

    div-float/2addr v4, v3

    mul-float v4, v4, v15

    add-float/2addr v2, v4

    iput v6, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->pressHandleCollageIndex:I

    const/high16 v3, 0x41700000    # 15.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v3, v4

    sub-float v3, v10, v3

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_8

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v10

    cmpg-float v4, v1, v4

    if-gtz v4, :cond_9

    const/16 v1, 0xd

    return v1

    :cond_8
    const/high16 v3, 0x40a00000    # 5.0f

    :cond_9
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float v3, v7, v3

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_a

    const/high16 v3, 0x41700000    # 15.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v7

    cmpg-float v3, v1, v3

    if-gtz v3, :cond_a

    const/16 v1, 0xe

    return v1

    :cond_a
    cmpl-float v3, v1, v10

    if-ltz v3, :cond_c

    cmpg-float v3, v1, v7

    if-gtz v3, :cond_c

    iget v3, v8, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->left:F

    const v4, 0x3c23d70a    # 0.01f

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_b

    iget v3, v8, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->right:F

    const v4, 0x3f7d70a4    # 0.99f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_c

    :cond_b
    const/16 v1, 0xf

    return v1

    :cond_c
    cmpl-float v3, v1, v9

    if-ltz v3, :cond_d

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_d

    const/16 v1, 0x10

    return v1

    :cond_d
    const/4 v1, -0x1

    return v1

    :cond_e
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_6

    :cond_f
    if-eqz v4, :cond_17

    iget v2, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->px:I

    iget v5, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->ph:I

    add-int/2addr v2, v5

    int-to-float v2, v2

    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoTrack:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    iget v6, v5, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->left:F

    iget-wide v7, v5, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->duration:J

    long-to-float v7, v7

    mul-float v6, v6, v7

    iget-wide v8, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->scroll:J

    long-to-float v8, v8

    sub-float/2addr v6, v8

    div-float/2addr v6, v3

    iget v9, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->sw:I

    int-to-float v9, v9

    mul-float v6, v6, v9

    add-float/2addr v6, v2

    iget v5, v5, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->right:F

    mul-float v5, v5, v7

    sub-float/2addr v5, v8

    div-float/2addr v5, v3

    mul-float v5, v5, v9

    add-float/2addr v2, v5

    iget-boolean v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->isCover:Z

    const/4 v5, 0x4

    if-eqz v3, :cond_12

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->getBaseDuration()J

    move-result-wide v3

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->getMaxScrollDuration()J

    move-result-wide v7

    cmp-long v9, v3, v7

    if-ltz v9, :cond_11

    const/high16 v3, 0x41700000    # 15.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v6, v4

    cmpl-float v4, v1, v6

    if-ltz v4, :cond_10

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_10

    goto :goto_7

    :cond_10
    const/4 v1, 0x1

    return v1

    :cond_11
    :goto_7
    return v5

    :cond_12
    const/high16 v3, 0x41700000    # 15.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v3, v7

    sub-float v3, v6, v3

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_13

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, v6

    cmpg-float v7, v1, v7

    if-gtz v7, :cond_14

    const/4 v1, 0x2

    return v1

    :cond_13
    const/high16 v3, 0x40a00000    # 5.0f

    :cond_14
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float v3, v2, v3

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_15

    const/high16 v3, 0x41700000    # 15.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v2

    cmpg-float v3, v1, v3

    if-gtz v3, :cond_15

    const/4 v1, 0x3

    return v1

    :cond_15
    cmpl-float v3, v1, v6

    if-ltz v3, :cond_27

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_27

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoTrack:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    iget v2, v1, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->left:F

    const v3, 0x3c23d70a    # 0.01f

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_16

    iget v1, v1, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->right:F

    const v2, 0x3f7d70a4    # 0.99f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_27

    :cond_16
    return v5

    :cond_17
    if-eqz v9, :cond_1f

    iget v2, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->px:I

    iget v5, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->ph:I

    add-int/2addr v2, v5

    int-to-float v2, v2

    iget-wide v5, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundOffset:J

    long-to-float v5, v5

    iget v6, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundLeft:F

    iget-wide v7, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundDuration:J

    long-to-float v7, v7

    mul-float v6, v6, v7

    add-float/2addr v6, v5

    iget-wide v8, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->scroll:J

    long-to-float v8, v8

    sub-float/2addr v6, v8

    div-float/2addr v6, v3

    iget v9, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->sw:I

    int-to-float v9, v9

    mul-float v6, v6, v9

    add-float/2addr v6, v2

    iget v10, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundRight:F

    mul-float v10, v10, v7

    add-float/2addr v5, v10

    sub-float/2addr v5, v8

    div-float/2addr v5, v3

    mul-float v5, v5, v9

    add-float/2addr v2, v5

    iget-boolean v5, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundSelected:Z

    const/16 v7, 0x9

    if-nez v5, :cond_18

    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoTrack:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    if-nez v5, :cond_1e

    :cond_18
    const/high16 v5, 0x41700000    # 15.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v5, v8

    sub-float v5, v6, v5

    cmpl-float v5, v1, v5

    if-ltz v5, :cond_19

    const/high16 v5, 0x40a00000    # 5.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v8, v6

    cmpg-float v8, v1, v8

    if-gtz v8, :cond_1a

    const/16 v1, 0xa

    return v1

    :cond_19
    const/high16 v5, 0x40a00000    # 5.0f

    :cond_1a
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    sub-float v5, v2, v5

    cmpl-float v5, v1, v5

    if-ltz v5, :cond_1b

    const/high16 v5, 0x41700000    # 15.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v2

    cmpg-float v5, v1, v5

    if-gtz v5, :cond_1b

    const/16 v1, 0xb

    return v1

    :cond_1b
    cmpl-float v5, v1, v6

    if-ltz v5, :cond_1d

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_1d

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoTrack:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    if-nez v1, :cond_1c

    const/16 v1, 0xc

    return v1

    :cond_1c
    return v7

    :cond_1d
    iget v2, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->px:I

    iget v5, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->ph:I

    add-int/2addr v2, v5

    int-to-float v2, v2

    iget-wide v5, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundOffset:J

    iget-wide v8, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->scroll:J

    sub-long v10, v5, v8

    long-to-float v10, v10

    div-float/2addr v10, v3

    iget v11, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->sw:I

    int-to-float v11, v11

    mul-float v10, v10, v11

    add-float/2addr v10, v2

    iget-wide v12, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundDuration:J

    add-long/2addr v5, v12

    sub-long/2addr v5, v8

    long-to-float v5, v5

    div-float/2addr v5, v3

    mul-float v5, v5, v11

    add-float/2addr v2, v5

    move v6, v10

    :cond_1e
    cmpl-float v3, v1, v6

    if-ltz v3, :cond_27

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_27

    return v7

    :cond_1f
    iget-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->hasAudio:Z

    if-eqz v2, :cond_27

    iget v2, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->px:I

    iget v5, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->ph:I

    add-int/2addr v2, v5

    int-to-float v2, v2

    iget-wide v5, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioOffset:J

    long-to-float v5, v5

    iget v6, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioLeft:F

    iget-wide v7, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioDuration:J

    long-to-float v7, v7

    mul-float v6, v6, v7

    add-float/2addr v6, v5

    iget-wide v8, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->scroll:J

    long-to-float v8, v8

    sub-float/2addr v6, v8

    div-float/2addr v6, v3

    iget v9, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->sw:I

    int-to-float v9, v9

    mul-float v6, v6, v9

    add-float/2addr v6, v2

    iget v10, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioRight:F

    mul-float v10, v10, v7

    add-float/2addr v5, v10

    sub-float/2addr v5, v8

    div-float/2addr v5, v3

    mul-float v5, v5, v9

    add-float/2addr v2, v5

    iget-boolean v5, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioSelected:Z

    const/4 v7, 0x5

    if-nez v5, :cond_20

    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoTrack:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    if-nez v5, :cond_26

    iget-boolean v5, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->hasRound:Z

    if-nez v5, :cond_26

    :cond_20
    const/high16 v5, 0x41700000    # 15.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v5, v8

    sub-float v5, v6, v5

    cmpl-float v5, v1, v5

    if-ltz v5, :cond_21

    const/high16 v5, 0x40a00000    # 5.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v8, v6

    cmpg-float v8, v1, v8

    if-gtz v8, :cond_22

    const/4 v1, 0x6

    return v1

    :cond_21
    const/high16 v5, 0x40a00000    # 5.0f

    :cond_22
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    sub-float v5, v2, v5

    cmpl-float v5, v1, v5

    if-ltz v5, :cond_23

    const/high16 v5, 0x41700000    # 15.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v2

    cmpg-float v5, v1, v5

    if-gtz v5, :cond_23

    const/4 v1, 0x7

    return v1

    :cond_23
    cmpl-float v5, v1, v6

    if-ltz v5, :cond_25

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_25

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoTrack:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    if-nez v1, :cond_24

    const/16 v1, 0x8

    return v1

    :cond_24
    return v7

    :cond_25
    iget v2, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->px:I

    iget v5, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->ph:I

    add-int/2addr v2, v5

    int-to-float v2, v2

    iget-wide v5, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioOffset:J

    iget-wide v8, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->scroll:J

    sub-long v10, v5, v8

    long-to-float v10, v10

    div-float/2addr v10, v3

    iget v11, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->sw:I

    int-to-float v11, v11

    mul-float v10, v10, v11

    add-float/2addr v10, v2

    iget-wide v12, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioDuration:J

    add-long/2addr v5, v12

    sub-long/2addr v5, v8

    long-to-float v5, v5

    div-float/2addr v5, v3

    mul-float v5, v5, v11

    add-float/2addr v2, v5

    move v6, v10

    :cond_26
    cmpl-float v3, v1, v6

    if-ltz v3, :cond_27

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_27

    return v7

    :cond_27
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoTrack:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    if-eqz v1, :cond_28

    iget-wide v1, v1, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->duration:J

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->getMaxScrollDuration()J

    move-result-wide v5

    cmp-long v3, v1, v5

    if-lez v3, :cond_28

    if-eqz v4, :cond_28

    const/4 v1, 0x1

    return v1

    :cond_28
    const/4 v1, -0x1

    return v1
.end method

.method private drawProgress(Landroid/graphics/Canvas;FFJF)V
    .locals 8

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->isCover:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->getBaseDuration()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->getMaxScrollDuration()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->getBaseDuration()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    move-wide v2, p4

    invoke-static/range {v2 .. v7}, Lorg/telegram/messenger/Utilities;->clamp(JJJ)J

    move-result-wide p4

    long-to-float p4, p4

    iget-object p5, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->collageMain:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    if-eqz p5, :cond_1

    iget-wide v2, p5, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->offset:J

    long-to-float v2, v2

    iget v3, p5, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->left:F

    iget-wide v4, p5, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->duration:J

    long-to-float p5, v4

    mul-float v3, v3, p5

    add-float/2addr v2, v3

    goto :goto_1

    :cond_1
    iget-object p5, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoTrack:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    if-nez p5, :cond_2

    iget-wide v2, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioOffset:J

    goto :goto_0

    :cond_2
    const-wide/16 v2, 0x0

    :goto_0
    long-to-float v2, v2

    :goto_1
    add-float/2addr p4, v2

    iget-wide v2, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->scroll:J

    long-to-float p5, v2

    sub-float/2addr p4, p5

    long-to-float p5, v0

    div-float/2addr p4, p5

    iget p5, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->px:I

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->ph:I

    add-int/2addr p5, v0

    int-to-float p5, p5

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->sw:I

    int-to-float v0, v0

    mul-float v0, v0, p4

    add-float/2addr p5, v0

    sub-float p4, p3, p2

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p4, v0

    div-float/2addr p4, v0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p6

    mul-float p4, p4, v0

    add-float/2addr p2, p4

    sub-float/2addr p3, p4

    iget-object p4, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->progressShadowPaint:Landroid/graphics/Paint;

    const/high16 v0, 0x42180000    # 38.0f

    mul-float v0, v0, p6

    float-to-int v0, v0

    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p4, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->progressWhitePaint:Landroid/graphics/Paint;

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float p6, p6, v0

    float-to-int p6, p6

    invoke-virtual {p4, p6}, Landroid/graphics/Paint;->setAlpha(I)V

    sget-object p4, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    const/high16 p6, 0x3fc00000    # 1.5f

    invoke-static {p6}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    sub-float v0, p5, v0

    invoke-static {p6}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    add-float/2addr v1, p5

    invoke-virtual {p4, v0, p2, v1, p3}, Landroid/graphics/RectF;->set(FFFF)V

    const v0, 0x3f28f5c3    # 0.66f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    neg-float v1, v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    neg-float v0, v0

    invoke-virtual {p4, v1, v0}, Landroid/graphics/RectF;->inset(FF)V

    const/high16 v0, 0x40c00000    # 6.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->progressShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p4, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-static {p6}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    sub-float v1, p5, v1

    invoke-static {p6}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result p6

    add-float/2addr p5, p6

    invoke-virtual {p4, v1, p2, p5, p3}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    int-to-float p3, p3

    iget-object p5, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->progressWhitePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p4, p2, p3, p5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawRegion(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFFFF)V
    .locals 15

    move-object v0, p0

    move-object/from16 v8, p1

    move/from16 v9, p3

    move/from16 v10, p4

    const/4 v1, 0x0

    cmpg-float v1, p7, v1

    if-gtz v1, :cond_0

    return-void

    :cond_0
    sget-object v11, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    const/high16 v12, 0x41200000    # 10.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    sub-float v1, p5, v1

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float v2, p6, v2

    invoke-virtual {v11, v1, v9, v2, v10}, Landroid/graphics/RectF;->set(FFFF)V

    iget v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->w:I

    int-to-float v4, v1

    iget v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->h:I

    int-to-float v5, v1

    const/16 v6, 0xff

    const/16 v7, 0x1f

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->regionPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float v2, v2, p7

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->regionPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v11, v3, v1, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->isCover:Z

    const/high16 v3, 0x40200000    # 2.5f

    if-eqz v1, :cond_1

    const/high16 v1, 0x40200000    # 2.5f

    goto :goto_0

    :cond_1
    const/high16 v1, 0x41200000    # 10.0f

    :goto_0
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v11, v1, v5}, Landroid/graphics/RectF;->inset(FF)V

    iget-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->isCover:Z

    if-eqz v1, :cond_2

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->regionCutPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v11, v5, v1, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_2
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->regionCutPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v11, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :goto_1
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    if-eqz p2, :cond_3

    move-object/from16 v6, p2

    goto :goto_2

    :cond_3
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->regionHandlePaint:Landroid/graphics/Paint;

    :goto_2
    iget-object v7, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->regionHandlePaint:Landroid/graphics/Paint;

    const/16 v13, 0xff

    invoke-virtual {v7, v13}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->isCover:Z

    if-eqz v2, :cond_4

    const/high16 v2, 0x40000000    # 2.0f

    goto :goto_3

    :cond_4
    const/high16 v2, 0x41200000    # 10.0f

    :goto_3
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v1

    div-float/2addr v2, v4

    sub-float v2, p5, v2

    add-float v7, v9, v10

    sub-float v9, v7, v5

    div-float/2addr v9, v4

    iget-boolean v10, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->isCover:Z

    if-eqz v10, :cond_5

    const/high16 v10, 0x40000000    # 2.0f

    goto :goto_4

    :cond_5
    const/high16 v10, 0x41200000    # 10.0f

    :goto_4
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v10, v1

    div-float/2addr v10, v4

    sub-float v10, p5, v10

    add-float/2addr v7, v5

    div-float/2addr v7, v4

    invoke-virtual {v11, v2, v9, v10, v7}, Landroid/graphics/RectF;->set(FFFF)V

    iget-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->isCover:Z

    const/high16 v5, 0x42400000    # 48.0f

    const/high16 v10, 0x3f800000    # 1.0f

    if-nez v2, :cond_6

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v8, v11, v2, v13, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    if-eqz p2, :cond_6

    iget-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->isCover:Z

    if-nez v2, :cond_6

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->regionHandlePaint:Landroid/graphics/Paint;

    mul-float v13, p7, v5

    float-to-int v13, v13

    invoke-virtual {v2, v13}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    int-to-float v13, v13

    iget-object v14, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->regionHandlePaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v11, v2, v13, v14}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_6
    iget-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->isCover:Z

    if-eqz v2, :cond_7

    const/high16 v2, 0x40200000    # 2.5f

    goto :goto_5

    :cond_7
    const/high16 v2, 0x41200000    # 10.0f

    :goto_5
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v1

    div-float/2addr v2, v4

    add-float v2, p6, v2

    iget-boolean v13, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->isCover:Z

    if-eqz v13, :cond_8

    const/high16 v12, 0x40200000    # 2.5f

    :cond_8
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v1

    div-float/2addr v3, v4

    add-float v1, p6, v3

    invoke-virtual {v11, v2, v9, v1, v7}, Landroid/graphics/RectF;->set(FFFF)V

    iget-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->isCover:Z

    if-nez v1, :cond_9

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v8, v11, v1, v2, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    if-eqz p2, :cond_9

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->regionHandlePaint:Landroid/graphics/Paint;

    mul-float v2, p7, v5

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->regionHandlePaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v11, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private getAudioHeight()F
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioSelectedT:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioSelected:Z

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v0

    const/high16 v1, 0x41e00000    # 28.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/high16 v2, 0x42180000    # 38.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v1, v2, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method private getBaseDuration()J
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoTrack:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    const-wide/16 v1, 0x1

    if-eqz v0, :cond_0

    :goto_0
    iget-wide v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->duration:J

    :goto_1
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->collageMain:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->hasRound:Z

    if-eqz v0, :cond_2

    iget-wide v3, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundDuration:J

    goto :goto_1

    :cond_2
    iget-wide v3, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioDuration:J

    goto :goto_1
.end method

.method private getCollageHeight()F
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->collageTracks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->collageTracks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    cmpl-float v3, v2, v1

    if-lez v3, :cond_1

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->collageTracks:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    invoke-static {v3}, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->access$800(Lorg/telegram/ui/Stories/recorder/TimelineView$Track;)Lorg/telegram/ui/Components/AnimatedFloat;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v3

    const/high16 v4, 0x41e00000    # 28.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/high16 v5, 0x42180000    # 38.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v4, v5, v3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method private getRoundHeight()F
    .locals 3

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->hasRound:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundSelectedT:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundSelected:Z

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v0

    const/high16 v1, 0x41e00000    # 28.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/high16 v2, 0x42180000    # 38.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v1, v2, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method private getVideoHeight()F
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoTrack:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->access$800(Lorg/telegram/ui/Stories/recorder/TimelineView$Track;)Lorg/telegram/ui/Components/AnimatedFloat;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v0

    const/high16 v1, 0x41e00000    # 28.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/high16 v2, 0x42180000    # 38.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v1, v2, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public static heightDp()I
    .locals 1

    const/16 v0, 0x184

    return v0
.end method

.method private synthetic lambda$new$0(Ljava/lang/Float;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioVolume:F

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->delegate:Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-interface {v0, p1}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;->onAudioVolumeChange(F)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->delegate:Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;->onAudioRemove()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$2(Ljava/lang/Float;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundVolume:F

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->delegate:Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-interface {v0, p1}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;->onRoundVolumeChange(F)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$3()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->delegate:Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;->onRoundRemove()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$4(Ljava/lang/Float;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoTrack:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->volume:F

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->delegate:Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-interface {v0, p1}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;->onVideoVolumeChange(F)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$5(Lorg/telegram/ui/Stories/recorder/TimelineView$Track;Ljava/lang/Float;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p1, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->volume:F

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->delegate:Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;

    if-eqz v0, :cond_0

    iget p1, p1, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->index:I

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-interface {v0, p1, p2}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;->onVideoVolumeChange(IF)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$6(Landroid/view/ViewGroup;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/BlurringShader$BlurManager;Landroid/view/View;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    iget v4, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->pressType:I

    const/4 v5, 0x2

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x41900000    # 18.0f

    const/4 v8, 0x5

    const/high16 v9, 0x3fc00000    # 1.5f

    const/4 v10, 0x0

    const/4 v11, 0x0

    if-ne v4, v5, :cond_0

    iget-boolean v5, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->hasAudio:Z

    if-eqz v5, :cond_0

    new-instance v4, Lorg/telegram/ui/Stories/recorder/SliderView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5, v11}, Lorg/telegram/ui/Stories/recorder/SliderView;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v4, v10, v9}, Lorg/telegram/ui/Stories/recorder/SliderView;->setMinMax(FF)Lorg/telegram/ui/Stories/recorder/SliderView;

    move-result-object v4

    iget v5, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioVolume:F

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Stories/recorder/SliderView;->setValue(F)Lorg/telegram/ui/Stories/recorder/SliderView;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/Stories/recorder/TimelineView$$ExternalSyntheticLambda4;

    invoke-direct {v5, v0}, Lorg/telegram/ui/Stories/recorder/TimelineView$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Stories/recorder/TimelineView;)V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Stories/recorder/SliderView;->setOnValueChange(Lorg/telegram/messenger/Utilities$Callback;)Lorg/telegram/ui/Stories/recorder/SliderView;

    move-result-object v4

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->getBaseDuration()J

    move-result-wide v9

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->getMaxScrollDuration()J

    move-result-wide v13

    invoke-static {v9, v10, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    iget v5, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->w:I

    iget v13, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->px:I

    sub-int/2addr v5, v13

    iget v14, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->ph:I

    sub-int/2addr v5, v14

    int-to-float v5, v5

    add-int/2addr v13, v14

    int-to-float v13, v13

    iget-wide v14, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioOffset:J

    iget-wide v11, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->scroll:J

    sub-long/2addr v14, v11

    long-to-float v11, v14

    iget v12, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioRight:F

    iget-object v14, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioSelectedT:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v14}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v14

    invoke-static {v12, v6, v14}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v6

    iget-wide v14, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioDuration:J

    long-to-float v12, v14

    mul-float v6, v6, v12

    add-float/2addr v11, v6

    long-to-float v6, v9

    div-float/2addr v11, v6

    iget v6, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->sw:I

    int-to-float v6, v6

    mul-float v11, v11, v6

    add-float/2addr v13, v11

    invoke-static {v5, v13}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v1, v2, v0}, Lorg/telegram/ui/Components/ItemOptions;->makeOptions(Landroid/view/ViewGroup;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v1

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/ItemOptions;->addView(Landroid/view/View;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ItemOptions;->addSpaceGap()Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    sget v4, Lorg/telegram/messenger/R$string;->StoryAudioRemove:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lorg/telegram/ui/Stories/recorder/TimelineView$$ExternalSyntheticLambda5;

    invoke-direct {v6, v0}, Lorg/telegram/ui/Stories/recorder/TimelineView$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Stories/recorder/TimelineView;)V

    invoke-virtual {v1, v2, v4, v6}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v1

    invoke-virtual {v1, v8}, Lorg/telegram/ui/Components/ItemOptions;->setGravity(I)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/ItemOptions;->forceTop(Z)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v1

    iget v2, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->w:I

    int-to-float v2, v2

    sub-float/2addr v2, v5

    neg-float v2, v2

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v2, v4

    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioBounds:Landroid/graphics/RectF;

    :goto_0
    iget v4, v4, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1, v2, v4}, Lorg/telegram/ui/Components/ItemOptions;->translate(FF)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ItemOptions;->show()Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v1

    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getX()F

    move-result v2

    neg-float v2, v2

    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getY()F

    move-result v4

    neg-float v4, v4

    invoke-virtual {v1, v3, v2, v4}, Lorg/telegram/ui/Components/ItemOptions;->setBlurBackground(Lorg/telegram/ui/Components/BlurringShader$BlurManager;FF)Lorg/telegram/ui/Components/ItemOptions;

    const/4 v1, 0x0

    const/4 v2, 0x1

    goto/16 :goto_1

    :cond_0
    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    iget-boolean v5, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->hasRound:Z

    if-eqz v5, :cond_1

    new-instance v4, Lorg/telegram/ui/Stories/recorder/SliderView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v11, 0x0

    invoke-direct {v4, v5, v11}, Lorg/telegram/ui/Stories/recorder/SliderView;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v4, v10, v9}, Lorg/telegram/ui/Stories/recorder/SliderView;->setMinMax(FF)Lorg/telegram/ui/Stories/recorder/SliderView;

    move-result-object v4

    iget v5, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundVolume:F

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Stories/recorder/SliderView;->setValue(F)Lorg/telegram/ui/Stories/recorder/SliderView;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/Stories/recorder/TimelineView$$ExternalSyntheticLambda6;

    invoke-direct {v5, v0}, Lorg/telegram/ui/Stories/recorder/TimelineView$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Stories/recorder/TimelineView;)V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Stories/recorder/SliderView;->setOnValueChange(Lorg/telegram/messenger/Utilities$Callback;)Lorg/telegram/ui/Stories/recorder/SliderView;

    move-result-object v4

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->getBaseDuration()J

    move-result-wide v9

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->getMaxScrollDuration()J

    move-result-wide v11

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    iget v5, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->w:I

    iget v11, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->px:I

    sub-int/2addr v5, v11

    iget v12, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->ph:I

    sub-int/2addr v5, v12

    int-to-float v5, v5

    add-int/2addr v11, v12

    int-to-float v11, v11

    iget-wide v12, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundOffset:J

    iget-wide v14, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->scroll:J

    sub-long/2addr v12, v14

    long-to-float v12, v12

    iget v13, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundRight:F

    iget-object v14, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundSelectedT:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v14}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v14

    invoke-static {v13, v6, v14}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v6

    iget-wide v13, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundDuration:J

    long-to-float v13, v13

    mul-float v6, v6, v13

    add-float/2addr v12, v6

    long-to-float v6, v9

    div-float/2addr v12, v6

    iget v6, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->sw:I

    int-to-float v6, v6

    mul-float v12, v12, v6

    add-float/2addr v11, v12

    invoke-static {v5, v11}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v1, v2, v0}, Lorg/telegram/ui/Components/ItemOptions;->makeOptions(Landroid/view/ViewGroup;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v1

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/ItemOptions;->addView(Landroid/view/View;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ItemOptions;->addSpaceGap()Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    sget v4, Lorg/telegram/messenger/R$string;->StoryRoundRemove:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lorg/telegram/ui/Stories/recorder/TimelineView$$ExternalSyntheticLambda7;

    invoke-direct {v6, v0}, Lorg/telegram/ui/Stories/recorder/TimelineView$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Stories/recorder/TimelineView;)V

    invoke-virtual {v1, v2, v4, v6}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v1

    invoke-virtual {v1, v8}, Lorg/telegram/ui/Components/ItemOptions;->setGravity(I)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/ItemOptions;->forceTop(Z)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v1

    iget v2, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->w:I

    int-to-float v2, v2

    sub-float/2addr v2, v5

    neg-float v2, v2

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v2, v4

    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundBounds:Landroid/graphics/RectF;

    goto/16 :goto_0

    :cond_1
    if-nez v4, :cond_2

    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoTrack:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    if-eqz v5, :cond_2

    new-instance v4, Lorg/telegram/ui/Stories/recorder/SliderView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lorg/telegram/ui/Stories/recorder/SliderView;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v4, v10, v9}, Lorg/telegram/ui/Stories/recorder/SliderView;->setMinMax(FF)Lorg/telegram/ui/Stories/recorder/SliderView;

    move-result-object v4

    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoTrack:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    iget v5, v5, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->volume:F

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Stories/recorder/SliderView;->setValue(F)Lorg/telegram/ui/Stories/recorder/SliderView;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/Stories/recorder/TimelineView$$ExternalSyntheticLambda8;

    invoke-direct {v5, v0}, Lorg/telegram/ui/Stories/recorder/TimelineView$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Stories/recorder/TimelineView;)V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Stories/recorder/SliderView;->setOnValueChange(Lorg/telegram/messenger/Utilities$Callback;)Lorg/telegram/ui/Stories/recorder/SliderView;

    move-result-object v4

    invoke-static {v1, v2, v0}, Lorg/telegram/ui/Components/ItemOptions;->makeOptions(Landroid/view/ViewGroup;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v1

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/ItemOptions;->addView(Landroid/view/View;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v1

    invoke-virtual {v1, v8}, Lorg/telegram/ui/Components/ItemOptions;->setGravity(I)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/ItemOptions;->forceTop(Z)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v1

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoBounds:Landroid/graphics/RectF;

    goto/16 :goto_0

    :cond_2
    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    iget v4, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->pressCollageIndex:I

    if-ltz v4, :cond_3

    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->collageTracks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->collageTracks:Ljava/util/ArrayList;

    iget v5, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->pressCollageIndex:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    new-instance v5, Lorg/telegram/ui/Stories/recorder/SliderView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v11, 0x0

    invoke-direct {v5, v6, v11}, Lorg/telegram/ui/Stories/recorder/SliderView;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v5, v10, v9}, Lorg/telegram/ui/Stories/recorder/SliderView;->setMinMax(FF)Lorg/telegram/ui/Stories/recorder/SliderView;

    move-result-object v5

    iget v6, v4, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->volume:F

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Stories/recorder/SliderView;->setValue(F)Lorg/telegram/ui/Stories/recorder/SliderView;

    move-result-object v5

    new-instance v6, Lorg/telegram/ui/Stories/recorder/TimelineView$$ExternalSyntheticLambda9;

    invoke-direct {v6, v0, v4}, Lorg/telegram/ui/Stories/recorder/TimelineView$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Stories/recorder/TimelineView;Lorg/telegram/ui/Stories/recorder/TimelineView$Track;)V

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Stories/recorder/SliderView;->setOnValueChange(Lorg/telegram/messenger/Utilities$Callback;)Lorg/telegram/ui/Stories/recorder/SliderView;

    move-result-object v5

    invoke-static {v1, v2, v0}, Lorg/telegram/ui/Components/ItemOptions;->makeOptions(Landroid/view/ViewGroup;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v1

    invoke-virtual {v1, v5}, Lorg/telegram/ui/Components/ItemOptions;->addView(Landroid/view/View;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v1

    invoke-virtual {v1, v8}, Lorg/telegram/ui/Components/ItemOptions;->setGravity(I)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/ItemOptions;->forceTop(Z)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v1

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    iget-object v4, v4, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->bounds:Landroid/graphics/RectF;

    goto/16 :goto_0

    :goto_1
    :try_start_0
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    return-void
.end method

.method private synthetic lambda$setProgressAt$9(J)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->delegate:Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;->onProgressChange(JZ)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$setupRoundThumbs$8()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundThumbs:Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundThumbs:Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->getDuration()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundDuration:J

    :cond_0
    return-void
.end method

.method private static synthetic lambda$sortCollage$7(Lorg/telegram/ui/Stories/recorder/TimelineView$Track;Lorg/telegram/ui/Stories/recorder/TimelineView$Track;)I
    .locals 2

    iget-wide v0, p1, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->duration:J

    iget-wide p0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->duration:J

    sub-long/2addr v0, p0

    long-to-int p0, v0

    return p0
.end method

.method private maxSelectDuration()J
    .locals 4

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->maxCount:I

    int-to-long v0, v0

    const-wide/32 v2, 0xe678

    mul-long v0, v0, v2

    return-wide v0
.end method

.method private minAudioSelect()J
    .locals 4

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->getBaseDuration()J

    move-result-wide v0

    const-wide/32 v2, 0xe678

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-float v0, v0

    const v1, 0x3e19999a    # 0.15f

    mul-float v0, v0, v1

    const/high16 v1, 0x447a0000    # 1000.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-long v0, v0

    return-wide v0
.end method

.method private moveAudioOffset(F)V
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoTrack:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    if-nez v2, :cond_0

    iget-boolean v5, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->hasRound:Z

    if-nez v5, :cond_0

    iget-wide v5, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioOffset:J

    float-to-long v1, v1

    add-long v7, v5, v1

    iget-wide v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioDuration:J

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->getBaseDuration()J

    move-result-wide v9

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->getMaxScrollDuration()J

    move-result-wide v11

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    sub-long/2addr v1, v9

    neg-long v11, v1

    const-wide/16 v9, 0x0

    invoke-static/range {v7 .. v12}, Lorg/telegram/messenger/Utilities;->clamp(JJJ)J

    move-result-wide v1

    iput-wide v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioOffset:J

    sub-long/2addr v1, v5

    iget v5, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioLeft:F

    long-to-float v1, v1

    iget-wide v6, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioDuration:J

    long-to-float v2, v6

    div-float v2, v1, v2

    sub-float/2addr v5, v2

    invoke-static {v5, v4, v3}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioLeft:F

    iget v2, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioRight:F

    iget-wide v5, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioDuration:J

    long-to-float v5, v5

    div-float/2addr v1, v5

    sub-float/2addr v2, v1

    invoke-static {v2, v4, v3}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioRight:F

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->delegate:Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;

    if-eqz v1, :cond_9

    goto/16 :goto_7

    :cond_0
    iget-boolean v5, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioSelected:Z

    if-eqz v5, :cond_8

    if-eqz v2, :cond_1

    iget v5, v2, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->left:F

    iget-wide v6, v2, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->duration:J

    :goto_0
    long-to-float v6, v6

    mul-float v5, v5, v6

    goto :goto_1

    :cond_1
    iget v5, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundLeft:F

    iget-wide v6, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundDuration:J

    goto :goto_0

    :goto_1
    if-eqz v2, :cond_2

    iget v6, v2, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->right:F

    iget-wide v7, v2, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->duration:J

    :goto_2
    long-to-float v7, v7

    mul-float v6, v6, v7

    goto :goto_3

    :cond_2
    iget v6, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundRight:F

    iget-wide v7, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundDuration:J

    goto :goto_2

    :goto_3
    if-eqz v2, :cond_3

    iget v7, v2, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->right:F

    iget v8, v2, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->left:F

    sub-float/2addr v7, v8

    iget-wide v8, v2, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->duration:J

    long-to-float v2, v8

    mul-float v7, v7, v2

    goto :goto_4

    :cond_3
    iget v2, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundRight:F

    iget v7, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundLeft:F

    sub-float/2addr v2, v7

    iget-wide v7, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundDuration:J

    long-to-float v7, v7

    mul-float v7, v7, v2

    :goto_4
    iget v2, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioRight:F

    iget-wide v8, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioDuration:J

    long-to-float v8, v8

    mul-float v9, v2, v8

    sub-float v9, v6, v9

    float-to-long v9, v9

    iget v11, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioLeft:F

    mul-float v12, v11, v8

    sub-float v12, v5, v12

    float-to-long v12, v12

    sub-float/2addr v2, v11

    div-float/2addr v7, v8

    invoke-static {v2, v7}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iget-wide v7, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioOffset:J

    float-to-long v14, v1

    add-long v3, v7, v14

    cmp-long v1, v3, v9

    if-lez v1, :cond_5

    long-to-float v1, v7

    sub-float v1, v6, v1

    long-to-float v3, v14

    sub-float/2addr v1, v3

    iget-wide v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioDuration:J

    long-to-float v3, v3

    div-float/2addr v1, v3

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v1, v3, v2}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioRight:F

    sub-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {v1, v3, v2}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioLeft:F

    iget v2, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioRight:F

    iget-wide v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioDuration:J

    long-to-float v3, v3

    mul-float v2, v2, v3

    sub-float/2addr v6, v2

    float-to-long v6, v6

    mul-float v1, v1, v3

    sub-float/2addr v5, v1

    float-to-long v1, v5

    cmp-long v3, v6, v1

    if-gez v3, :cond_4

    move-wide/from16 v18, v1

    move-wide/from16 v20, v6

    goto :goto_5

    :cond_4
    move-wide/from16 v20, v1

    move-wide/from16 v18, v6

    :goto_5
    iget-wide v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioOffset:J

    add-long v16, v1, v14

    invoke-static/range {v16 .. v21}, Lorg/telegram/messenger/Utilities;->clamp(JJJ)J

    move-result-wide v1

    iput-wide v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioOffset:J

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->delegate:Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;

    if-eqz v1, :cond_9

    goto :goto_7

    :cond_5
    cmp-long v1, v3, v12

    if-gez v1, :cond_7

    long-to-float v1, v7

    sub-float v1, v5, v1

    long-to-float v3, v14

    sub-float/2addr v1, v3

    iget-wide v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioDuration:J

    long-to-float v3, v3

    div-float/2addr v1, v3

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v4, v3, v2

    const/4 v7, 0x0

    invoke-static {v1, v4, v7}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioLeft:F

    add-float/2addr v1, v2

    invoke-static {v1, v3, v7}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioRight:F

    iget-wide v2, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioDuration:J

    long-to-float v2, v2

    mul-float v1, v1, v2

    sub-float/2addr v6, v1

    float-to-long v3, v6

    iget v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioLeft:F

    mul-float v1, v1, v2

    sub-float/2addr v5, v1

    float-to-long v1, v5

    cmp-long v5, v3, v1

    if-gez v5, :cond_6

    move-wide/from16 v18, v1

    move-wide/from16 v20, v3

    goto :goto_6

    :cond_6
    move-wide/from16 v20, v1

    move-wide/from16 v18, v3

    :goto_6
    iget-wide v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioOffset:J

    add-long v16, v1, v14

    invoke-static/range {v16 .. v21}, Lorg/telegram/messenger/Utilities;->clamp(JJJ)J

    move-result-wide v1

    iput-wide v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioOffset:J

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->delegate:Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;

    if-eqz v1, :cond_9

    :goto_7
    iget v2, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioLeft:F

    invoke-interface {v1, v2}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;->onAudioLeftChange(F)V

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->delegate:Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;

    iget v2, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioRight:F

    invoke-interface {v1, v2}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;->onAudioRightChange(F)V

    goto :goto_8

    :cond_7
    iput-wide v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioOffset:J

    goto :goto_8

    :cond_8
    iget-wide v2, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioOffset:J

    float-to-long v4, v1

    add-long v12, v2, v4

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->getBaseDuration()J

    move-result-wide v1

    long-to-float v1, v1

    iget-wide v2, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioDuration:J

    long-to-float v2, v2

    iget v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioRight:F

    mul-float v3, v3, v2

    sub-float/2addr v1, v3

    float-to-long v14, v1

    iget v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioLeft:F

    neg-float v1, v1

    mul-float v1, v1, v2

    float-to-long v1, v1

    move-wide/from16 v16, v1

    invoke-static/range {v12 .. v17}, Lorg/telegram/messenger/Utilities;->clamp(JJJ)J

    move-result-wide v1

    iput-wide v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioOffset:J

    :cond_9
    :goto_8
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->delegate:Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;

    if-eqz v1, :cond_a

    iget-wide v2, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioOffset:J

    iget v4, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioLeft:F

    iget-wide v5, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioDuration:J

    long-to-float v5, v5

    mul-float v4, v4, v5

    float-to-long v4, v4

    add-long/2addr v2, v4

    invoke-interface {v1, v2, v3}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;->onAudioOffsetChange(J)V

    :cond_a
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->dragged:Z

    const/4 v2, 0x0

    if-nez v1, :cond_e

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->delegate:Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;

    if-eqz v3, :cond_e

    const/4 v1, 0x1

    invoke-interface {v3, v1}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;->onProgressDragChange(Z)V

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoTrack:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    if-eqz v3, :cond_b

    iget-wide v4, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioOffset:J

    iget v6, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioLeft:F

    iget-wide v7, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioDuration:J

    long-to-float v7, v7

    mul-float v6, v6, v7

    float-to-long v6, v6

    add-long v12, v4, v6

    iget v4, v3, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->right:F

    iget-wide v5, v3, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->duration:J

    long-to-float v5, v5

    mul-float v4, v4, v5

    float-to-long v14, v4

    iget v3, v3, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->left:F

    mul-float v3, v3, v5

    :goto_9
    float-to-long v3, v3

    move-wide/from16 v16, v3

    invoke-static/range {v12 .. v17}, Lorg/telegram/messenger/Utilities;->clamp(JJJ)J

    move-result-wide v3

    goto :goto_a

    :cond_b
    iget-boolean v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->hasRound:Z

    if-eqz v3, :cond_c

    iget-wide v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioOffset:J

    iget v5, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioLeft:F

    iget-wide v6, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioDuration:J

    long-to-float v6, v6

    mul-float v5, v5, v6

    float-to-long v5, v5

    add-long v12, v3, v5

    iget v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundRight:F

    iget-wide v4, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundDuration:J

    long-to-float v4, v4

    mul-float v3, v3, v4

    float-to-long v14, v3

    iget v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundLeft:F

    mul-float v3, v3, v4

    goto :goto_9

    :cond_c
    iget v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioLeft:F

    iget-wide v6, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioDuration:J

    long-to-float v4, v6

    mul-float v3, v3, v4

    float-to-long v4, v3

    const-wide/16 v8, 0x0

    invoke-static/range {v4 .. v9}, Lorg/telegram/messenger/Utilities;->clamp(JJJ)J

    move-result-wide v3

    :goto_a
    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoTrack:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    if-eqz v5, :cond_d

    iget-wide v5, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->progress:J

    sub-long/2addr v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    const-wide/16 v7, 0x190

    cmp-long v9, v5, v7

    if-lez v9, :cond_d

    iget-wide v5, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->progress:J

    iput-wide v5, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->loopProgressFrom:J

    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->loopProgress:Lorg/telegram/ui/Components/AnimatedFloat;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    :cond_d
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->delegate:Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;

    iput-wide v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->progress:J

    :goto_b
    invoke-interface {v1, v3, v4, v2}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;->onProgressChange(JZ)V

    goto :goto_f

    :cond_e
    if-nez v1, :cond_f

    iget-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->scrolling:Z

    if-eqz v1, :cond_12

    :cond_f
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoTrack:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    if-eqz v1, :cond_10

    iget-wide v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioOffset:J

    iget v5, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioLeft:F

    iget-wide v6, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioDuration:J

    long-to-float v6, v6

    mul-float v5, v5, v6

    float-to-long v5, v5

    add-long v7, v3, v5

    iget v3, v1, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->right:F

    iget-wide v4, v1, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->duration:J

    long-to-float v4, v4

    mul-float v3, v3, v4

    float-to-long v9, v3

    iget v1, v1, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->left:F

    mul-float v1, v1, v4

    float-to-long v11, v1

    :goto_c
    invoke-static/range {v7 .. v12}, Lorg/telegram/messenger/Utilities;->clamp(JJJ)J

    move-result-wide v3

    :goto_d
    iput-wide v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->progress:J

    goto :goto_e

    :cond_10
    iget-boolean v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->hasRound:Z

    if-eqz v3, :cond_11

    if-eqz v1, :cond_11

    iget-wide v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioOffset:J

    iget v5, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioLeft:F

    iget-wide v6, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioDuration:J

    long-to-float v6, v6

    mul-float v5, v5, v6

    float-to-long v5, v5

    add-long v7, v3, v5

    iget v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundRight:F

    iget-wide v4, v1, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->duration:J

    long-to-float v1, v4

    mul-float v3, v3, v1

    float-to-long v9, v3

    iget v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundLeft:F

    mul-float v3, v3, v1

    float-to-long v11, v3

    goto :goto_c

    :cond_11
    iget v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioLeft:F

    iget-wide v5, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioDuration:J

    long-to-float v3, v5

    mul-float v1, v1, v3

    float-to-long v3, v1

    const-wide/16 v7, 0x0

    invoke-static/range {v3 .. v8}, Lorg/telegram/messenger/Utilities;->clamp(JJJ)J

    move-result-wide v3

    goto :goto_d

    :goto_e
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->delegate:Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;

    if-eqz v1, :cond_12

    iget-wide v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->progress:J

    goto :goto_b

    :cond_12
    :goto_f
    return-void
.end method

.method private moveCollageOffset(Lorg/telegram/ui/Stories/recorder/TimelineView$Track;F)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->collageMain:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    const/high16 v4, 0x3f800000    # 1.0f

    if-eq v3, v1, :cond_7

    if-nez v3, :cond_1

    goto/16 :goto_3

    :cond_1
    iget v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->collageSelected:I

    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->collageTracks:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    if-ne v3, v5, :cond_6

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->collageMain:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    iget-wide v5, v3, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->duration:J

    long-to-float v5, v5

    mul-float v6, v5, v4

    iget v7, v1, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->right:F

    iget-wide v8, v1, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->duration:J

    long-to-float v8, v8

    mul-float v9, v7, v8

    sub-float/2addr v6, v9

    float-to-long v9, v6

    const/4 v6, 0x0

    mul-float v11, v5, v6

    iget v12, v1, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->left:F

    mul-float v13, v12, v8

    sub-float/2addr v11, v13

    float-to-long v13, v11

    sub-float/2addr v7, v12

    iget v11, v3, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->right:F

    iget v3, v3, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->left:F

    sub-float/2addr v11, v3

    mul-float v11, v11, v5

    div-float/2addr v11, v8

    invoke-static {v7, v11}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iget-wide v7, v1, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->offset:J

    float-to-long v11, v2

    add-long v4, v7, v11

    cmp-long v2, v4, v9

    if-lez v2, :cond_3

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->collageMain:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    iget v4, v2, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->right:F

    iget-wide v9, v2, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->duration:J

    long-to-float v2, v9

    mul-float v4, v4, v2

    long-to-float v2, v7

    sub-float/2addr v4, v2

    long-to-float v2, v11

    sub-float/2addr v4, v2

    iget-wide v7, v1, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->duration:J

    long-to-float v2, v7

    div-float/2addr v4, v2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v4, v2, v3}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v4

    iput v4, v1, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->right:F

    sub-float/2addr v4, v3

    invoke-static {v4, v2, v6}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v3

    iput v3, v1, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->left:F

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->collageMain:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    iget v4, v2, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->right:F

    iget-wide v5, v2, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->duration:J

    long-to-float v5, v5

    mul-float v4, v4, v5

    iget v6, v1, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->right:F

    iget-wide v7, v1, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->duration:J

    long-to-float v7, v7

    mul-float v6, v6, v7

    sub-float/2addr v4, v6

    float-to-long v8, v4

    iget v2, v2, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->left:F

    mul-float v2, v2, v5

    mul-float v3, v3, v7

    sub-float/2addr v2, v3

    float-to-long v2, v2

    cmp-long v4, v8, v2

    if-gez v4, :cond_2

    move-wide/from16 v17, v2

    move-wide/from16 v19, v8

    goto :goto_0

    :cond_2
    move-wide/from16 v19, v2

    move-wide/from16 v17, v8

    :goto_0
    iget-wide v2, v1, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->offset:J

    add-long v15, v2, v11

    invoke-static/range {v15 .. v20}, Lorg/telegram/messenger/Utilities;->clamp(JJJ)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->offset:J

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->delegate:Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;

    if-eqz v2, :cond_7

    goto :goto_2

    :cond_3
    cmp-long v2, v4, v13

    if-gez v2, :cond_5

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->collageMain:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    iget v4, v2, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->left:F

    iget-wide v9, v2, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->duration:J

    long-to-float v2, v9

    mul-float v4, v4, v2

    long-to-float v2, v7

    sub-float/2addr v4, v2

    long-to-float v2, v11

    sub-float/2addr v4, v2

    iget-wide v7, v1, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->duration:J

    long-to-float v2, v7

    div-float/2addr v4, v2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v5, v2, v3

    invoke-static {v4, v5, v6}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v4

    iput v4, v1, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->left:F

    add-float/2addr v4, v3

    invoke-static {v4, v2, v6}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v3

    iput v3, v1, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->right:F

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->collageMain:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    iget v4, v2, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->right:F

    iget-wide v5, v2, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->duration:J

    long-to-float v5, v5

    mul-float v4, v4, v5

    iget-wide v6, v1, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->duration:J

    long-to-float v6, v6

    mul-float v3, v3, v6

    sub-float/2addr v4, v3

    float-to-long v3, v4

    iget v2, v2, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->left:F

    mul-float v2, v2, v5

    iget v5, v1, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->left:F

    mul-float v5, v5, v6

    sub-float/2addr v2, v5

    float-to-long v5, v2

    cmp-long v2, v3, v5

    if-gez v2, :cond_4

    move-wide/from16 v19, v3

    move-wide/from16 v17, v5

    goto :goto_1

    :cond_4
    move-wide/from16 v17, v3

    move-wide/from16 v19, v5

    :goto_1
    iget-wide v2, v1, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->offset:J

    add-long v15, v2, v11

    invoke-static/range {v15 .. v20}, Lorg/telegram/messenger/Utilities;->clamp(JJJ)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->offset:J

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->delegate:Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;

    if-eqz v2, :cond_7

    :goto_2
    iget v3, v1, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->index:I

    iget v4, v1, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->left:F

    invoke-interface {v2, v3, v4}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;->onVideoLeftChange(IF)V

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->delegate:Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;

    iget v3, v1, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->index:I

    iget v4, v1, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->right:F

    invoke-interface {v2, v3, v4}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;->onVideoRightChange(IF)V

    goto :goto_3

    :cond_5
    iput-wide v4, v1, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->offset:J

    goto :goto_3

    :cond_6
    iget-wide v3, v1, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->offset:J

    float-to-long v5, v2

    add-long v7, v3, v5

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->getBaseDuration()J

    move-result-wide v2

    long-to-float v2, v2

    iget-wide v3, v1, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->duration:J

    long-to-float v3, v3

    iget v4, v1, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->right:F

    mul-float v4, v4, v3

    sub-float/2addr v2, v4

    float-to-long v9, v2

    iget v2, v1, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->left:F

    neg-float v2, v2

    mul-float v2, v2, v3

    float-to-long v11, v2

    invoke-static/range {v7 .. v12}, Lorg/telegram/messenger/Utilities;->clamp(JJJ)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->offset:J

    :cond_7
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->delegate:Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;

    if-eqz v2, :cond_8

    iget v3, v1, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->index:I

    iget-wide v4, v1, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->offset:J

    invoke-interface {v2, v3, v4, v5}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;->onVideoOffsetChange(IJ)V

    :cond_8
    iget-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->dragged:Z

    const/4 v3, 0x0

    if-nez v2, :cond_b

    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->delegate:Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;

    if-eqz v4, :cond_b

    const/4 v2, 0x1

    invoke-interface {v4, v2}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;->onProgressDragChange(Z)V

    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->collageMain:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    if-eq v4, v1, :cond_9

    if-eqz v4, :cond_9

    iget-wide v5, v1, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->offset:J

    iget v7, v1, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->left:F

    iget-wide v8, v1, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->duration:J

    long-to-float v8, v8

    mul-float v7, v7, v8

    float-to-long v7, v7

    add-long v9, v5, v7

    iget v5, v4, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->right:F

    iget-wide v6, v4, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->duration:J

    long-to-float v6, v6

    mul-float v5, v5, v6

    float-to-long v11, v5

    iget v4, v4, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->left:F

    mul-float v4, v4, v6

    float-to-long v13, v4

    invoke-static/range {v9 .. v14}, Lorg/telegram/messenger/Utilities;->clamp(JJJ)J

    move-result-wide v4

    goto :goto_4

    :cond_9
    iget v4, v1, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->left:F

    iget-wide v7, v1, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->duration:J

    long-to-float v5, v7

    mul-float v4, v4, v5

    float-to-long v5, v4

    const-wide/16 v9, 0x0

    invoke-static/range {v5 .. v10}, Lorg/telegram/messenger/Utilities;->clamp(JJJ)J

    move-result-wide v4

    :goto_4
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->collageMain:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    if-eq v6, v1, :cond_a

    if-eqz v6, :cond_a

    iget-wide v6, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->progress:J

    sub-long/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/16 v8, 0x190

    cmp-long v1, v6, v8

    if-lez v1, :cond_a

    iget-wide v6, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->progress:J

    iput-wide v6, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->loopProgressFrom:J

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->loopProgress:Lorg/telegram/ui/Components/AnimatedFloat;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v1, v6, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    :cond_a
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->delegate:Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;

    iput-wide v4, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->progress:J

    :goto_5
    invoke-interface {v1, v4, v5, v3}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;->onProgressChange(JZ)V

    goto :goto_8

    :cond_b
    if-nez v2, :cond_c

    iget-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->scrolling:Z

    if-eqz v2, :cond_e

    :cond_c
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->collageMain:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    if-eq v2, v1, :cond_d

    if-eqz v2, :cond_d

    iget-wide v4, v1, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->offset:J

    iget v6, v1, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->left:F

    iget-wide v7, v1, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->duration:J

    long-to-float v1, v7

    mul-float v6, v6, v1

    float-to-long v6, v6

    add-long v8, v4, v6

    iget v1, v2, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->right:F

    iget-wide v4, v2, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->duration:J

    long-to-float v4, v4

    mul-float v1, v1, v4

    float-to-long v10, v1

    iget v1, v2, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->left:F

    mul-float v1, v1, v4

    float-to-long v12, v1

    invoke-static/range {v8 .. v13}, Lorg/telegram/messenger/Utilities;->clamp(JJJ)J

    move-result-wide v1

    :goto_6
    iput-wide v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->progress:J

    goto :goto_7

    :cond_d
    iget v2, v1, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->left:F

    iget-wide v6, v1, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->duration:J

    long-to-float v1, v6

    mul-float v2, v2, v1

    float-to-long v4, v2

    const-wide/16 v8, 0x0

    invoke-static/range {v4 .. v9}, Lorg/telegram/messenger/Utilities;->clamp(JJJ)J

    move-result-wide v1

    goto :goto_6

    :goto_7
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->delegate:Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;

    if-eqz v1, :cond_e

    iget-wide v4, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->progress:J

    goto :goto_5

    :cond_e
    :goto_8
    return-void
.end method

.method private moveRoundOffset(F)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoTrack:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    if-nez v2, :cond_0

    iget-wide v5, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundOffset:J

    float-to-long v1, v1

    add-long v7, v5, v1

    iget-wide v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundDuration:J

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->getBaseDuration()J

    move-result-wide v9

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->getMaxScrollDuration()J

    move-result-wide v11

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    sub-long/2addr v1, v9

    neg-long v11, v1

    const-wide/16 v9, 0x0

    invoke-static/range {v7 .. v12}, Lorg/telegram/messenger/Utilities;->clamp(JJJ)J

    move-result-wide v1

    iput-wide v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundOffset:J

    sub-long/2addr v1, v5

    iget v5, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundLeft:F

    long-to-float v1, v1

    iget-wide v6, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundDuration:J

    long-to-float v2, v6

    div-float v2, v1, v2

    sub-float/2addr v5, v2

    invoke-static {v5, v4, v3}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundLeft:F

    iget v2, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundRight:F

    iget-wide v5, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundDuration:J

    long-to-float v5, v5

    div-float/2addr v1, v5

    sub-float/2addr v2, v1

    invoke-static {v2, v4, v3}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundRight:F

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->delegate:Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;

    if-eqz v1, :cond_6

    goto/16 :goto_2

    :cond_0
    iget-boolean v5, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundSelected:Z

    if-eqz v5, :cond_5

    iget v5, v2, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->right:F

    iget-wide v6, v2, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->duration:J

    long-to-float v6, v6

    mul-float v7, v5, v6

    iget v8, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundRight:F

    iget-wide v9, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundDuration:J

    long-to-float v9, v9

    mul-float v10, v8, v9

    sub-float/2addr v7, v10

    float-to-long v10, v7

    iget v2, v2, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->left:F

    mul-float v7, v2, v6

    iget v12, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundLeft:F

    mul-float v13, v12, v9

    sub-float/2addr v7, v13

    float-to-long v13, v7

    sub-float/2addr v8, v12

    sub-float/2addr v5, v2

    mul-float v5, v5, v6

    div-float/2addr v5, v9

    invoke-static {v8, v5}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iget-wide v5, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundOffset:J

    float-to-long v7, v1

    add-long v3, v5, v7

    cmp-long v1, v3, v10

    if-lez v1, :cond_2

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoTrack:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    iget v3, v1, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->right:F

    iget-wide v10, v1, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->duration:J

    long-to-float v1, v10

    mul-float v3, v3, v1

    long-to-float v1, v5

    sub-float/2addr v3, v1

    long-to-float v1, v7

    sub-float/2addr v3, v1

    iget-wide v4, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundDuration:J

    long-to-float v1, v4

    div-float/2addr v3, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v3, v1, v2}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v3

    iput v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundRight:F

    sub-float/2addr v3, v2

    const/4 v2, 0x0

    invoke-static {v3, v1, v2}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundLeft:F

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoTrack:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    iget v3, v1, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->right:F

    iget-wide v4, v1, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->duration:J

    long-to-float v4, v4

    mul-float v3, v3, v4

    iget v5, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundRight:F

    iget-wide v10, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundDuration:J

    long-to-float v6, v10

    mul-float v5, v5, v6

    sub-float/2addr v3, v5

    float-to-long v10, v3

    iget v1, v1, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->left:F

    mul-float v1, v1, v4

    mul-float v2, v2, v6

    sub-float/2addr v1, v2

    float-to-long v1, v1

    cmp-long v3, v10, v1

    if-gez v3, :cond_1

    move-wide v14, v1

    move-wide/from16 v16, v10

    goto :goto_0

    :cond_1
    move-wide/from16 v16, v1

    move-wide v14, v10

    :goto_0
    iget-wide v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundOffset:J

    add-long v12, v1, v7

    invoke-static/range {v12 .. v17}, Lorg/telegram/messenger/Utilities;->clamp(JJJ)J

    move-result-wide v1

    iput-wide v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundOffset:J

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->delegate:Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;

    if-eqz v1, :cond_6

    goto :goto_2

    :cond_2
    cmp-long v1, v3, v13

    if-gez v1, :cond_4

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoTrack:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    iget v3, v1, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->left:F

    iget-wide v10, v1, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->duration:J

    long-to-float v1, v10

    mul-float v3, v3, v1

    long-to-float v1, v5

    sub-float/2addr v3, v1

    long-to-float v1, v7

    sub-float/2addr v3, v1

    iget-wide v4, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundDuration:J

    long-to-float v1, v4

    div-float/2addr v3, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v4, v1, v2

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v3

    iput v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundLeft:F

    add-float/2addr v3, v2

    invoke-static {v3, v1, v5}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundRight:F

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoTrack:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    iget v3, v1, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->right:F

    iget-wide v4, v1, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->duration:J

    long-to-float v4, v4

    mul-float v3, v3, v4

    iget-wide v5, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundDuration:J

    long-to-float v5, v5

    mul-float v2, v2, v5

    sub-float/2addr v3, v2

    float-to-long v2, v3

    iget v1, v1, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->left:F

    mul-float v1, v1, v4

    iget v4, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundLeft:F

    mul-float v4, v4, v5

    sub-float/2addr v1, v4

    float-to-long v4, v1

    cmp-long v1, v2, v4

    if-gez v1, :cond_3

    move-wide v14, v2

    move-wide v12, v4

    goto :goto_1

    :cond_3
    move-wide v12, v2

    move-wide v14, v4

    :goto_1
    iget-wide v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundOffset:J

    add-long v10, v1, v7

    invoke-static/range {v10 .. v15}, Lorg/telegram/messenger/Utilities;->clamp(JJJ)J

    move-result-wide v1

    iput-wide v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundOffset:J

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->delegate:Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;

    if-eqz v1, :cond_6

    :goto_2
    iget v2, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundLeft:F

    invoke-interface {v1, v2}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;->onRoundLeftChange(F)V

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->delegate:Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;

    iget v2, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundRight:F

    invoke-interface {v1, v2}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;->onRoundRightChange(F)V

    goto :goto_3

    :cond_4
    iput-wide v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundOffset:J

    goto :goto_3

    :cond_5
    iget-wide v2, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundOffset:J

    float-to-long v4, v1

    add-long v10, v2, v4

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->getBaseDuration()J

    move-result-wide v1

    long-to-float v1, v1

    iget-wide v2, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundDuration:J

    long-to-float v2, v2

    iget v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundRight:F

    mul-float v3, v3, v2

    sub-float/2addr v1, v3

    float-to-long v12, v1

    iget v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundLeft:F

    neg-float v1, v1

    mul-float v1, v1, v2

    float-to-long v14, v1

    invoke-static/range {v10 .. v15}, Lorg/telegram/messenger/Utilities;->clamp(JJJ)J

    move-result-wide v1

    iput-wide v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundOffset:J

    :cond_6
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->delegate:Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;

    if-eqz v1, :cond_7

    iget-wide v2, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundOffset:J

    iget v4, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundLeft:F

    iget-wide v5, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundDuration:J

    long-to-float v5, v5

    mul-float v4, v4, v5

    float-to-long v4, v4

    add-long/2addr v2, v4

    invoke-interface {v1, v2, v3}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;->onRoundOffsetChange(J)V

    :cond_7
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->dragged:Z

    const/4 v2, 0x0

    if-nez v1, :cond_a

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->delegate:Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;

    if-eqz v3, :cond_a

    const/4 v1, 0x1

    invoke-interface {v3, v1}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;->onProgressDragChange(Z)V

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoTrack:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    if-eqz v3, :cond_8

    iget-wide v4, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundOffset:J

    iget v6, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundLeft:F

    iget-wide v7, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundDuration:J

    long-to-float v7, v7

    mul-float v6, v6, v7

    float-to-long v6, v6

    add-long v10, v4, v6

    iget v4, v3, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->right:F

    iget-wide v5, v3, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->duration:J

    long-to-float v5, v5

    mul-float v4, v4, v5

    float-to-long v12, v4

    iget v3, v3, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->left:F

    mul-float v3, v3, v5

    float-to-long v14, v3

    :goto_4
    invoke-static/range {v10 .. v15}, Lorg/telegram/messenger/Utilities;->clamp(JJJ)J

    move-result-wide v3

    goto :goto_5

    :cond_8
    iget v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundLeft:F

    iget-wide v12, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundDuration:J

    long-to-float v4, v12

    mul-float v3, v3, v4

    float-to-long v10, v3

    const-wide/16 v14, 0x0

    goto :goto_4

    :goto_5
    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoTrack:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    if-eqz v5, :cond_9

    iget-wide v5, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->progress:J

    sub-long/2addr v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    const-wide/16 v7, 0x190

    cmp-long v10, v5, v7

    if-lez v10, :cond_9

    iget-wide v5, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->progress:J

    iput-wide v5, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->loopProgressFrom:J

    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->loopProgress:Lorg/telegram/ui/Components/AnimatedFloat;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    :cond_9
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->delegate:Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;

    iput-wide v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->progress:J

    :goto_6
    invoke-interface {v1, v3, v4, v2}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;->onProgressChange(JZ)V

    goto :goto_9

    :cond_a
    if-nez v1, :cond_b

    iget-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->scrolling:Z

    if-eqz v1, :cond_d

    :cond_b
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoTrack:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    if-eqz v1, :cond_c

    iget-wide v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundOffset:J

    iget v5, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundLeft:F

    iget-wide v6, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundDuration:J

    long-to-float v6, v6

    mul-float v5, v5, v6

    float-to-long v5, v5

    add-long v7, v3, v5

    iget v3, v1, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->right:F

    iget-wide v4, v1, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->duration:J

    long-to-float v4, v4

    mul-float v3, v3, v4

    float-to-long v9, v3

    iget v1, v1, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->left:F

    mul-float v1, v1, v4

    float-to-long v11, v1

    invoke-static/range {v7 .. v12}, Lorg/telegram/messenger/Utilities;->clamp(JJJ)J

    move-result-wide v3

    :goto_7
    iput-wide v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->progress:J

    goto :goto_8

    :cond_c
    iget v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundLeft:F

    iget-wide v5, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundDuration:J

    long-to-float v3, v5

    mul-float v1, v1, v3

    float-to-long v3, v1

    const-wide/16 v7, 0x0

    invoke-static/range {v3 .. v8}, Lorg/telegram/messenger/Utilities;->clamp(JJJ)J

    move-result-wide v3

    goto :goto_7

    :goto_8
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->delegate:Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;

    if-eqz v1, :cond_d

    iget-wide v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->progress:J

    goto :goto_6

    :cond_d
    :goto_9
    return-void
.end method

.method private setProgressAt(FZ)Z
    .locals 10

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoTrack:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->hasAudio:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->collageTracks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->getBaseDuration()J

    move-result-wide v2

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->getMaxScrollDuration()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->px:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->ph:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->sw:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->collageMain:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    const-wide/16 v4, 0x0

    if-eqz v0, :cond_1

    iget-wide v6, v0, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->offset:J

    long-to-float v6, v6

    iget v7, v0, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->left:F

    iget-wide v8, v0, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->duration:J

    long-to-float v8, v8

    mul-float v7, v7, v8

    add-float/2addr v6, v7

    float-to-long v6, v6

    goto :goto_0

    :cond_1
    move-wide v6, v4

    :goto_0
    long-to-float v2, v2

    mul-float p1, p1, v2

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoTrack:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    if-nez v0, :cond_3

    iget-wide v6, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioOffset:J

    goto :goto_1

    :cond_3
    move-wide v6, v4

    :goto_1
    long-to-float v0, v6

    sub-float/2addr p1, v0

    iget-wide v2, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->scroll:J

    long-to-float v0, v2

    add-float/2addr p1, v0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->getBaseDuration()J

    move-result-wide v2

    long-to-float v0, v2

    const/4 v2, 0x0

    invoke-static {p1, v0, v2}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result p1

    float-to-long v2, p1

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoTrack:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    if-eqz p1, :cond_5

    long-to-float v0, v2

    iget-wide v6, p1, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->duration:J

    long-to-float v6, v6

    div-float/2addr v0, v6

    iget v6, p1, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->left:F

    cmpg-float v6, v0, v6

    if-ltz v6, :cond_4

    iget v6, p1, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->right:F

    cmpl-float v0, v0, v6

    if-lez v0, :cond_5

    :cond_4
    return v1

    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->collageMain:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    if-eqz v0, :cond_7

    cmp-long v6, v2, v4

    if-ltz v6, :cond_6

    iget v4, v0, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->right:F

    iget v5, v0, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->left:F

    sub-float/2addr v4, v5

    iget-wide v5, v0, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->duration:J

    long-to-float v0, v5

    mul-float v4, v4, v0

    float-to-long v4, v4

    cmp-long v0, v2, v4

    if-ltz v0, :cond_7

    :cond_6
    return v1

    :cond_7
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->hasAudio:Z

    if-eqz v0, :cond_9

    if-nez p1, :cond_9

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->collageTracks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_9

    long-to-float p1, v2

    iget-wide v4, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioDuration:J

    long-to-float v0, v4

    div-float/2addr p1, v0

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioLeft:F

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_8

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioRight:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_9

    :cond_8
    return v1

    :cond_9
    iput-wide v2, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->progress:J

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->delegate:Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;

    if-eqz p1, :cond_a

    invoke-interface {p1, v2, v3, p2}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;->onProgressChange(JZ)V

    :cond_a
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->askExactSeek:Ljava/lang/Runnable;

    if-eqz p1, :cond_b

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->askExactSeek:Ljava/lang/Runnable;

    :cond_b
    if-eqz p2, :cond_c

    new-instance p1, Lorg/telegram/ui/Stories/recorder/TimelineView$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0, v2, v3}, Lorg/telegram/ui/Stories/recorder/TimelineView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Stories/recorder/TimelineView;J)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->askExactSeek:Ljava/lang/Runnable;

    const-wide/16 v0, 0x96

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_c
    const/4 p1, 0x1

    return p1
.end method

.method private setupAudioWaveform()V
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->waveform:Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->resetWaveform:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioPath:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-direct {v0, p0, v1, v2}, Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;-><init>(Lorg/telegram/ui/Stories/recorder/TimelineView;Ljava/lang/String;I)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->waveform:Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->waveformIsLoaded:Z

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->waveformMax:Lorg/telegram/ui/Components/AnimatedFloat;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    :cond_1
    :goto_0
    return-void
.end method

.method private setupRoundThumbs()V
    .locals 16

    move-object/from16 v14, p0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, v14, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundThumbs:Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;

    if-nez v0, :cond_3

    iget-object v0, v14, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoTrack:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    if-eqz v0, :cond_0

    iget-wide v0, v0, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->duration:J

    const-wide/16 v2, 0x1

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    goto :goto_4

    :cond_0
    new-instance v15, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;

    iget-object v3, v14, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundPath:Ljava/lang/String;

    iget v0, v14, Lorg/telegram/ui/Stories/recorder/TimelineView;->w:I

    iget v1, v14, Lorg/telegram/ui/Stories/recorder/TimelineView;->px:I

    sub-int/2addr v0, v1

    sub-int v4, v0, v1

    const/high16 v0, 0x42180000    # 38.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    iget-wide v0, v14, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundDuration:J

    const-wide/16 v6, 0x2

    cmp-long v2, v0, v6

    if-lez v2, :cond_1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_0
    move-object v6, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    iget-object v0, v14, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoTrack:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    if-eqz v0, :cond_2

    iget-wide v0, v0, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->duration:J

    :goto_2
    move-wide v7, v0

    goto :goto_3

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->getMaxScrollDuration()J

    move-result-wide v0

    goto :goto_2

    :goto_3
    new-instance v13, Lorg/telegram/ui/Stories/recorder/TimelineView$$ExternalSyntheticLambda2;

    invoke-direct {v13, v14}, Lorg/telegram/ui/Stories/recorder/TimelineView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stories/recorder/TimelineView;)V

    const-wide/16 v9, -0x1

    const-wide/16 v11, -0x1

    const/4 v2, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v13}, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;-><init>(Lorg/telegram/ui/Stories/recorder/TimelineView;ZLjava/lang/String;IILjava/lang/Long;JJJLjava/lang/Runnable;)V

    iput-object v15, v14, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundThumbs:Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;

    :cond_3
    :goto_4
    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 7

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->scroller:Lorg/telegram/ui/Components/Scroller;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->scroller:Lorg/telegram/ui/Components/Scroller;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Scroller;->getCurrX()I

    move-result v0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->getBaseDuration()J

    move-result-wide v1

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->getMaxScrollDuration()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    iget-boolean v3, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->scrollingVideo:Z

    if-eqz v3, :cond_0

    iget v3, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->px:I

    sub-int v3, v0, v3

    iget v4, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->ph:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->sw:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    long-to-float v1, v1

    mul-float v3, v3, v1

    const/4 v1, 0x0

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-long v1, v1

    iput-wide v1, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->scroll:J

    goto :goto_0

    :cond_0
    iget-boolean v3, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioSelected:Z

    if-nez v3, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->scroller:Lorg/telegram/ui/Components/Scroller;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Scroller;->abortAnimation()V

    return-void

    :cond_1
    iget v3, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->px:I

    sub-int v4, v0, v3

    iget v5, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->ph:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v6, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->sw:I

    int-to-float v6, v6

    div-float/2addr v4, v6

    long-to-float v1, v1

    mul-float v4, v4, v1

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->wasScrollX:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v5

    int-to-float v2, v2

    div-float/2addr v2, v6

    mul-float v2, v2, v1

    sub-float/2addr v4, v2

    invoke-direct {p0, v4}, Lorg/telegram/ui/Stories/recorder/TimelineView;->moveAudioOffset(F)V

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->wasScrollX:I

    goto :goto_1

    :cond_2
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->scrolling:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->scrolling:Z

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->delegate:Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;

    if-eqz v1, :cond_3

    invoke-interface {v1, v0}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;->onProgressDragChange(Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 52

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->backgroundBlur:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v0, v10}, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->getPaint(F)Landroid/graphics/Paint;

    move-result-object v11

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->openT:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->open:Z

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v6

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->getBaseDuration()J

    move-result-wide v0

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->getMaxScrollDuration()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    const v23, 0x406a3d71    # 3.66f

    const/16 v12, 0x1f

    const/high16 v16, 0x41e00000    # 28.0f

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v24, 0x437f0000    # 255.0f

    const/high16 v4, 0x33000000

    const/high16 v25, 0x40000000    # 2.0f

    const/high16 v26, 0x41000000    # 8.0f

    cmpg-float v0, v6, v10

    if-gez v0, :cond_5

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->timelineBounds:Landroid/graphics/RectF;

    iget v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->px:I

    int-to-float v1, v1

    iget v2, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->h:I

    iget v3, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->py:I

    sub-int/2addr v2, v3

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->w:I

    iget v7, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->px:I

    sub-int/2addr v3, v7

    int-to-float v3, v3

    iget v7, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->h:I

    iget v13, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->py:I

    sub-int/2addr v7, v13

    int-to-float v7, v7

    invoke-virtual {v0, v1, v2, v3, v7}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->timelineClipPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->timelineClipPath:Landroid/graphics/Path;

    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->timelineBounds:Landroid/graphics/RectF;

    invoke-static/range {v26 .. v26}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static/range {v26 .. v26}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3, v7}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->timelineBounds:Landroid/graphics/RectF;

    sub-float v1, v10, v6

    mul-float v1, v1, v24

    float-to-int v1, v1

    invoke-virtual {v9, v0, v1, v12}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->timelineClipPath:Landroid/graphics/Path;

    invoke-virtual {v9, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->blurManager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BlurringShader$BlurManager;->hasRenderNode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->backgroundBlur:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    invoke-virtual {v0, v9}, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->drawRect(Landroid/graphics/Canvas;)V

    :goto_0
    invoke-virtual {v9, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_1

    :cond_0
    if-nez v11, :cond_1

    invoke-virtual {v9, v5}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_1

    :cond_1
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->timelineBounds:Landroid/graphics/RectF;

    invoke-virtual {v9, v0, v11}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0

    :goto_1
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->collageWaveforms:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->blurManager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BlurringShader$BlurManager;->hasRenderNode()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->timelineWaveformMax:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->collageWaveforms:Ljava/util/ArrayList;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/TimelineView$WaveformPath;->getMaxBar(Ljava/util/ArrayList;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v33

    iget v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->px:I

    iget v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->ph:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget-wide v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioOffset:J

    iget-wide v4, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->scroll:J

    sub-long/2addr v1, v4

    long-to-float v1, v1

    long-to-float v2, v14

    div-float/2addr v1, v2

    iget v2, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->sw:I

    int-to-float v2, v2

    mul-float v1, v1, v2

    add-float v28, v0, v1

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->timelineWaveformPath:Lorg/telegram/ui/Stories/recorder/TimelineView$WaveformPath;

    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->timelineBounds:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v1, v1, Landroid/graphics/RectF;->right:F

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->timelineBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    iget-object v5, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->collageWaveforms:Ljava/util/ArrayList;

    const/16 v31, 0x0

    move-object/from16 v27, v0

    move/from16 v29, v2

    move/from16 v30, v1

    move/from16 v32, v3

    move/from16 v34, v4

    move-object/from16 v35, v5

    invoke-virtual/range {v27 .. v35}, Lorg/telegram/ui/Stories/recorder/TimelineView$WaveformPath;->check(FFFFFFFLjava/util/ArrayList;)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->timelineBounds:Landroid/graphics/RectF;

    const/16 v5, 0x66

    invoke-virtual {v9, v0, v5, v12}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->timelineWaveformPath:Lorg/telegram/ui/Stories/recorder/TimelineView$WaveformPath;

    invoke-virtual {v9, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioWaveformBlur:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    invoke-virtual {v0, v9}, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->drawRect(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_2

    :cond_2
    const/16 v5, 0x66

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->collageWaveforms:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioWaveformBlur:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->getPaint(F)Landroid/graphics/Paint;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->waveformPaint:Landroid/graphics/Paint;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_3
    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->timelineWaveformMax:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-object v2, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->collageWaveforms:Ljava/util/ArrayList;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/TimelineView$WaveformPath;->getMaxBar(Ljava/util/ArrayList;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v33

    iget v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->px:I

    iget v2, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->ph:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget-wide v2, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioOffset:J

    iget-wide v12, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->scroll:J

    sub-long/2addr v2, v12

    long-to-float v2, v2

    long-to-float v3, v14

    div-float/2addr v2, v3

    iget v3, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->sw:I

    int-to-float v3, v3

    mul-float v2, v2, v3

    add-float v28, v1, v2

    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->timelineWaveformPath:Lorg/telegram/ui/Stories/recorder/TimelineView$WaveformPath;

    iget-object v2, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->timelineBounds:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v2, v2, Landroid/graphics/RectF;->right:F

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    int-to-float v12, v12

    iget-object v13, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->timelineBounds:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->bottom:F

    iget-object v4, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->collageWaveforms:Ljava/util/ArrayList;

    const/16 v31, 0x0

    move-object/from16 v27, v1

    move/from16 v29, v3

    move/from16 v30, v2

    move/from16 v32, v12

    move/from16 v34, v13

    move-object/from16 v35, v4

    invoke-virtual/range {v27 .. v35}, Lorg/telegram/ui/Stories/recorder/TimelineView$WaveformPath;->check(FFFFFFFLjava/util/ArrayList;)V

    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->timelineWaveformPath:Lorg/telegram/ui/Stories/recorder/TimelineView$WaveformPath;

    invoke-virtual {v9, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_4
    :goto_2
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->timelineText:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Text;->getCurrentWidth()F

    move-result v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->timelineIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->timelineBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    div-float v0, v0, v25

    sub-float/2addr v1, v0

    float-to-int v1, v1

    iget-object v2, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->timelineBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->timelineIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int v4, v2, v4

    iget-object v12, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->timelineIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v12

    add-int/2addr v12, v1

    iget-object v13, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->timelineIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    add-int/2addr v13, v2

    invoke-virtual {v3, v1, v4, v12, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->timelineIcon:Landroid/graphics/drawable/Drawable;

    const/16 v3, 0xbf

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->timelineIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v9}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->timelineText:Lorg/telegram/ui/Components/Text;

    iget-object v3, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->timelineBounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    sub-float/2addr v3, v0

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->timelineIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v3, v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v3, v0

    int-to-float v4, v2

    const/4 v12, -0x1

    const/high16 v13, 0x3f400000    # 0.75f

    move-object v0, v1

    move-object/from16 v1, p1

    move v2, v3

    move v3, v4

    const/high16 v7, 0x33000000

    move v4, v12

    const/high16 v12, 0x40000000    # 2.0f

    const/16 v19, 0x66

    move v5, v13

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/Text;->draw(Landroid/graphics/Canvas;FFIF)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_3

    :cond_5
    const/high16 v7, 0x33000000

    const/high16 v12, 0x40000000    # 2.0f

    const/16 v19, 0x66

    :goto_3
    const/4 v5, 0x1

    const/4 v4, 0x0

    cmpl-float v0, v6, v4

    if-lez v0, :cond_69

    cmpg-float v0, v6, v10

    if-gez v0, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v2, v0

    mul-float v6, v6, v24

    float-to-int v6, v6

    const/16 v20, 0x0

    const/16 v21, 0x1f

    const/4 v1, 0x0

    move-object/from16 v0, p1

    move/from16 v22, v2

    move/from16 v2, v20

    const/4 v10, 0x0

    move/from16 v4, v22

    move v5, v6

    move/from16 v6, v21

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    const/16 v28, 0x1

    goto :goto_4

    :cond_6
    const/4 v10, 0x0

    const/16 v28, 0x0

    :goto_4
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoTrack:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    if-eqz v0, :cond_7

    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_5

    :cond_7
    const/4 v6, 0x0

    :goto_5
    if-eqz v0, :cond_9

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->access$800(Lorg/telegram/ui/Stories/recorder/TimelineView$Track;)Lorg/telegram/ui/Components/AnimatedFloat;

    move-result-object v0

    iget-boolean v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioSelected:Z

    if-nez v1, :cond_8

    iget-boolean v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundSelected:Z

    if-nez v1, :cond_8

    const/4 v5, 0x1

    goto :goto_6

    :cond_8
    const/4 v5, 0x0

    :goto_6
    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v4

    move v5, v4

    goto :goto_7

    :cond_9
    const/4 v5, 0x0

    :goto_7
    iget v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->h:I

    iget v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->py:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v29, 0x40800000    # 4.0f

    invoke-static/range {v29 .. v29}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoTrack:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    const-wide/16 v30, 0x0

    if-eqz v2, :cond_1b

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->getVideoHeight()F

    move-result v2

    iget-object v13, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoTrack:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    iget v12, v13, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->left:F

    iget-wide v3, v13, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->duration:J

    long-to-float v7, v3

    mul-float v12, v12, v7

    mul-float v12, v12, v5

    add-float/2addr v12, v10

    iget v13, v13, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->right:F

    mul-float v13, v13, v7

    mul-float v13, v13, v5

    add-float v7, v13, v10

    cmp-long v13, v3, v30

    if-gtz v13, :cond_a

    move/from16 v37, v12

    goto :goto_8

    :cond_a
    iget v13, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->px:I

    iget v10, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->ph:I

    add-int/2addr v13, v10

    int-to-float v10, v13

    move/from16 v37, v12

    iget-wide v12, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->scroll:J

    long-to-float v12, v12

    long-to-float v13, v14

    div-float/2addr v12, v13

    iget v13, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->sw:I

    int-to-float v13, v13

    mul-float v12, v12, v13

    sub-float/2addr v10, v12

    :goto_8
    iget v12, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->ph:I

    int-to-float v13, v12

    sub-float/2addr v10, v13

    cmp-long v38, v3, v30

    if-gtz v38, :cond_b

    move/from16 v38, v7

    move-object/from16 v39, v11

    const/4 v4, 0x0

    goto :goto_9

    :cond_b
    move/from16 v38, v7

    iget v7, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->px:I

    add-int/2addr v7, v12

    int-to-float v7, v7

    move-object/from16 v39, v11

    iget-wide v11, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->scroll:J

    sub-long/2addr v3, v11

    long-to-float v3, v3

    long-to-float v4, v14

    div-float/2addr v3, v4

    iget v4, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->sw:I

    int-to-float v4, v4

    mul-float v3, v3, v4

    add-float v4, v7, v3

    :goto_9
    add-float/2addr v4, v13

    iget-object v3, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoBounds:Landroid/graphics/RectF;

    sub-float v7, v0, v2

    invoke-virtual {v3, v10, v7, v4, v0}, Landroid/graphics/RectF;->set(FFFF)V

    mul-float v3, v1, v6

    add-float/2addr v3, v2

    sub-float/2addr v0, v3

    iget-object v3, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoBounds:Landroid/graphics/RectF;

    iget v7, v3, Landroid/graphics/RectF;->top:F

    mul-float v7, v7, v5

    const/4 v11, 0x0

    add-float/2addr v7, v11

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    mul-float v3, v3, v5

    add-float/2addr v3, v11

    iget-object v11, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoClipPath:Landroid/graphics/Path;

    invoke-virtual {v11}, Landroid/graphics/Path;->rewind()V

    iget-object v11, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoClipPath:Landroid/graphics/Path;

    iget-object v12, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoBounds:Landroid/graphics/RectF;

    invoke-static/range {v26 .. v26}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    int-to-float v13, v13

    move/from16 v40, v0

    invoke-static/range {v26 .. v26}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    move/from16 v41, v3

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v11, v12, v13, v0, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoClipPath:Landroid/graphics/Path;

    invoke-virtual {v9, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoTrack:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->thumbs:Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->getFrameWidth()I

    move-result v0

    iget v3, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->px:I

    int-to-float v3, v3

    sub-float v3, v10, v3

    int-to-float v11, v0

    div-float/2addr v3, v11

    float-to-double v12, v3

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    move/from16 v43, v5

    move/from16 v42, v6

    const-wide/16 v5, 0x0

    invoke-static {v5, v6, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v12

    double-to-int v3, v12

    iget-object v5, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoTrack:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    iget-object v5, v5, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->thumbs:Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;

    invoke-static {v5}, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->access$1000(Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;)I

    move-result v5

    int-to-double v5, v5

    sub-float/2addr v4, v10

    iget v12, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->px:I

    int-to-float v12, v12

    sub-float/2addr v4, v12

    div-float/2addr v4, v11

    float-to-double v12, v4

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    add-double v12, v12, v20

    invoke-static {v5, v6, v12, v13}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    double-to-int v4, v4

    iget-object v5, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoBounds:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    float-to-int v5, v5

    iget-object v6, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoTrack:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    iget-object v6, v6, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->thumbs:Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;

    invoke-static {v6}, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->access$1100(Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v6, v4, :cond_c

    const/4 v6, 0x1

    goto :goto_a

    :cond_c
    const/4 v6, 0x0

    :goto_a
    if-eqz v0, :cond_d

    if-eqz v6, :cond_d

    iget-object v12, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoTrack:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    iget-boolean v12, v12, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->isRound:Z

    if-nez v12, :cond_d

    const/4 v12, 0x1

    goto :goto_b

    :cond_d
    const/4 v12, 0x0

    :goto_b
    if-eqz v12, :cond_f

    move v13, v3

    move/from16 v44, v13

    :goto_c
    iget-object v3, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoTrack:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    iget-object v3, v3, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->thumbs:Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;

    invoke-static {v3}, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->access$1100(Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-ge v13, v3, :cond_10

    iget-object v3, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoTrack:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    iget-object v3, v3, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->thumbs:Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;

    invoke-static {v3}, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->access$1100(Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader$BitmapFrame;

    iget-object v3, v3, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader$BitmapFrame;->bitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_e

    const/4 v12, 0x0

    goto :goto_d

    :cond_e
    add-int/lit8 v13, v13, 0x1

    goto :goto_c

    :cond_f
    move/from16 v44, v3

    :cond_10
    :goto_d
    if-nez v12, :cond_11

    iget-object v3, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->blurManager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/BlurringShader$BlurManager;->hasRenderNode()Z

    move-result v3

    if-eqz v3, :cond_12

    iget-object v3, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->backgroundBlur:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    invoke-virtual {v3, v9}, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->drawRect(Landroid/graphics/Canvas;)V

    const/high16 v3, 0x33000000

    invoke-virtual {v9, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    :cond_11
    :goto_e
    move-object/from16 v13, v39

    goto :goto_f

    :cond_12
    const/high16 v3, 0x33000000

    if-nez v39, :cond_13

    const/high16 v12, 0x40000000    # 2.0f

    invoke-virtual {v9, v12}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_e

    :cond_13
    iget-object v12, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoBounds:Landroid/graphics/RectF;

    move-object/from16 v13, v39

    invoke-virtual {v9, v12, v13}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-virtual {v9, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    :goto_f
    if-eqz v0, :cond_15

    move/from16 v3, v44

    :goto_10
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoTrack:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->thumbs:Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->access$1100(Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-ge v3, v0, :cond_15

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoTrack:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->thumbs:Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->access$1100(Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader$BitmapFrame;

    iget-object v12, v0, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader$BitmapFrame;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v12, :cond_14

    iget-object v12, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader$BitmapFrame;->getAlpha()F

    move-result v39

    move/from16 v44, v4

    mul-float v4, v39, v24

    float-to-int v4, v4

    invoke-virtual {v12, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader$BitmapFrame;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v2

    div-float v4, v4, v25

    float-to-int v4, v4

    sub-int v4, v5, v4

    int-to-float v4, v4

    iget-object v12, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v0, v10, v4, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_11

    :cond_14
    move/from16 v44, v4

    :goto_11
    add-float/2addr v10, v11

    add-int/lit8 v3, v3, 0x1

    move/from16 v4, v44

    goto :goto_10

    :cond_15
    if-nez v6, :cond_17

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoTrack:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->thumbs:Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->load()V

    goto :goto_12

    :cond_16
    move/from16 v43, v5

    move/from16 v42, v6

    move-object/from16 v13, v39

    :cond_17
    :goto_12
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->selectedVideoClipPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    iget-boolean v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->isCover:Z

    if-nez v0, :cond_1a

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget v3, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->px:I

    iget v4, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->ph:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v5, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoTrack:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    iget v6, v5, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->left:F

    iget-wide v10, v5, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->duration:J

    long-to-float v10, v10

    mul-float v11, v6, v10

    move-object/from16 v39, v13

    iget-wide v12, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->scroll:J

    long-to-float v12, v12

    sub-float/2addr v11, v12

    long-to-float v13, v14

    div-float/2addr v11, v13

    move/from16 v44, v4

    iget v4, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->sw:I

    int-to-float v4, v4

    mul-float v11, v11, v4

    add-float/2addr v11, v3

    const/16 v36, 0x0

    cmpg-float v6, v6, v36

    if-gtz v6, :cond_18

    move/from16 v6, v44

    goto :goto_13

    :cond_18
    const/4 v6, 0x0

    :goto_13
    int-to-float v6, v6

    sub-float/2addr v11, v6

    iget v6, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->h:I

    move/from16 v45, v7

    iget v7, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->py:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    sub-float v7, v6, v2

    iget v5, v5, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->right:F

    mul-float v10, v10, v5

    sub-float/2addr v10, v12

    div-float/2addr v10, v13

    mul-float v10, v10, v4

    add-float/2addr v3, v10

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v4

    if-ltz v5, :cond_19

    move/from16 v4, v44

    goto :goto_14

    :cond_19
    const/4 v4, 0x0

    :goto_14
    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {v0, v11, v7, v3, v6}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v3, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->selectedVideoClipPath:Landroid/graphics/Path;

    iget-object v4, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->selectedVideoRadii:[F

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v0, v4, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->selectedVideoClipPath:Landroid/graphics/Path;

    sget-object v3, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v9, v0, v3}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    const/high16 v0, 0x50000000

    invoke-virtual {v9, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_15

    :cond_1a
    move/from16 v45, v7

    move-object/from16 v39, v13

    :goto_15
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    move v10, v2

    move/from16 v4, v37

    move/from16 v0, v40

    goto :goto_16

    :cond_1b
    move/from16 v43, v5

    move/from16 v42, v6

    move-object/from16 v39, v11

    const/4 v4, 0x0

    const/4 v10, 0x0

    const/16 v38, 0x0

    const/16 v41, 0x0

    const/16 v45, 0x0

    :goto_16
    iget-object v2, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->collageTracks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2e

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->getCollageHeight()F

    const/4 v2, 0x0

    :goto_17
    iget-object v3, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->collageTracks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2d

    iget-object v3, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->collageTracks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    invoke-static {v3}, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->access$800(Lorg/telegram/ui/Stories/recorder/TimelineView$Track;)Lorg/telegram/ui/Components/AnimatedFloat;

    move-result-object v5

    iget-boolean v6, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioSelected:Z

    if-nez v6, :cond_1c

    iget-boolean v6, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundSelected:Z

    if-nez v6, :cond_1c

    iget v6, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->collageSelected:I

    if-ne v6, v2, :cond_1c

    const/4 v6, 0x1

    goto :goto_18

    :cond_1c
    const/4 v6, 0x0

    :goto_18
    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v5

    iget-object v6, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->collageMain:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    if-eq v3, v6, :cond_1d

    iget v6, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->px:I

    iget v7, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->ph:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    iget-wide v11, v3, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->offset:J

    move v7, v1

    move v13, v2

    iget-wide v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->scroll:J

    sub-long/2addr v11, v1

    long-to-float v1, v11

    iget v2, v3, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->left:F

    const/4 v11, 0x0

    invoke-static {v2, v11, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v2

    iget-wide v11, v3, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->duration:J

    long-to-float v11, v11

    mul-float v2, v2, v11

    add-float/2addr v1, v2

    long-to-float v2, v14

    div-float/2addr v1, v2

    iget v11, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->sw:I

    int-to-float v11, v11

    mul-float v1, v1, v11

    add-float/2addr v6, v1

    iget v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->px:I

    iget v11, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->ph:I

    add-int/2addr v1, v11

    int-to-float v1, v1

    iget-wide v11, v3, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->offset:J

    move/from16 v40, v6

    move/from16 v37, v7

    iget-wide v6, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->scroll:J

    sub-long/2addr v11, v6

    long-to-float v6, v11

    iget v7, v3, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->right:F

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static {v7, v11, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v7

    iget-wide v11, v3, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->duration:J

    long-to-float v11, v11

    mul-float v7, v7, v11

    add-float/2addr v6, v7

    div-float/2addr v6, v2

    iget v2, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->sw:I

    int-to-float v2, v2

    mul-float v6, v6, v2

    add-float/2addr v1, v6

    move-wide/from16 v46, v14

    move/from16 v6, v40

    move v15, v13

    goto :goto_19

    :cond_1d
    move/from16 v37, v1

    move v13, v2

    iget v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->px:I

    iget v2, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->ph:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget-wide v6, v3, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->offset:J

    iget-wide v11, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->scroll:J

    sub-long/2addr v6, v11

    long-to-float v2, v6

    long-to-float v11, v14

    div-float/2addr v2, v11

    iget v12, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->sw:I

    int-to-float v12, v12

    mul-float v2, v2, v12

    add-float/2addr v2, v1

    move-wide/from16 v46, v14

    move v15, v13

    iget-wide v13, v3, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->duration:J

    add-long/2addr v6, v13

    long-to-float v6, v6

    div-float/2addr v6, v11

    mul-float v6, v6, v12

    add-float/2addr v1, v6

    move v6, v2

    :goto_19
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/high16 v7, 0x42180000    # 38.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-static {v2, v7, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v2

    int-to-float v2, v2

    iget-object v7, v3, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->bounds:Landroid/graphics/RectF;

    iget v11, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->ph:I

    int-to-float v11, v11

    sub-float/2addr v6, v11

    sub-float v12, v0, v2

    add-float/2addr v1, v11

    invoke-virtual {v7, v6, v12, v1, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, v3, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->bounds:Landroid/graphics/RectF;

    iget v6, v1, Landroid/graphics/RectF;->top:F

    mul-float v6, v6, v5

    add-float v45, v45, v6

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    mul-float v1, v1, v5

    add-float v41, v41, v1

    iget-wide v6, v3, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->offset:J

    long-to-float v1, v6

    iget v6, v3, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->left:F

    iget-wide v11, v3, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->duration:J

    long-to-float v7, v11

    mul-float v6, v6, v7

    add-float/2addr v6, v1

    mul-float v6, v6, v5

    add-float/2addr v4, v6

    iget v6, v3, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->right:F

    mul-float v6, v6, v7

    add-float/2addr v1, v6

    mul-float v1, v1, v5

    add-float v38, v38, v1

    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->collageClipPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->collageClipPath:Landroid/graphics/Path;

    iget-object v5, v3, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->bounds:Landroid/graphics/RectF;

    invoke-static/range {v26 .. v26}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    invoke-static/range {v26 .. v26}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    sget-object v11, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v5, v6, v7, v11}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->collageClipPath:Landroid/graphics/Path;

    invoke-virtual {v9, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget-object v1, v3, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->thumbs:Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;

    if-eqz v1, :cond_28

    iget-wide v5, v3, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->duration:J

    cmp-long v7, v5, v30

    if-gtz v7, :cond_1e

    move-wide/from16 v13, v46

    const/4 v7, 0x0

    goto :goto_1a

    :cond_1e
    iget v7, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->px:I

    iget v11, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->ph:I

    add-int/2addr v7, v11

    int-to-float v7, v7

    iget-wide v11, v3, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->offset:J

    iget-wide v13, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->scroll:J

    sub-long/2addr v11, v13

    long-to-float v11, v11

    move-wide/from16 v13, v46

    long-to-float v12, v13

    div-float/2addr v11, v12

    iget v12, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->sw:I

    int-to-float v12, v12

    mul-float v11, v11, v12

    add-float/2addr v7, v11

    :goto_1a
    iget v11, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->ph:I

    int-to-float v12, v11

    sub-float/2addr v7, v12

    cmp-long v40, v5, v30

    if-gtz v40, :cond_1f

    move/from16 v40, v4

    move/from16 v44, v10

    const/4 v4, 0x0

    goto :goto_1b

    :cond_1f
    move/from16 v40, v4

    iget v4, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->px:I

    add-int/2addr v4, v11

    int-to-float v4, v4

    move/from16 v44, v10

    iget-wide v10, v3, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->offset:J

    add-long/2addr v10, v5

    iget-wide v5, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->scroll:J

    sub-long/2addr v10, v5

    long-to-float v5, v10

    long-to-float v6, v13

    div-float/2addr v5, v6

    iget v6, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->sw:I

    int-to-float v6, v6

    mul-float v5, v5, v6

    add-float/2addr v4, v5

    :goto_1b
    add-float/2addr v4, v12

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->getFrameWidth()I

    move-result v1

    iget v5, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->px:I

    iget v6, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->ph:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget-wide v10, v3, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->offset:J

    move v12, v2

    move-object v6, v3

    iget-wide v2, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->scroll:J

    sub-long/2addr v10, v2

    long-to-float v2, v10

    long-to-float v3, v13

    div-float/2addr v2, v3

    iget v3, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->sw:I

    int-to-float v3, v3

    mul-float v2, v2, v3

    add-float/2addr v5, v2

    sub-float v2, v7, v5

    int-to-float v3, v1

    div-float/2addr v2, v3

    float-to-double v10, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    move-wide/from16 v46, v13

    const-wide/16 v13, 0x0

    invoke-static {v13, v14, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v10

    double-to-int v2, v10

    iget-object v5, v6, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->thumbs:Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;

    invoke-static {v5}, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->access$1000(Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;)I

    move-result v5

    int-to-double v10, v5

    sub-float/2addr v4, v7

    div-float/2addr v4, v3

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    add-double v4, v4, v20

    invoke-static {v10, v11, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    double-to-int v4, v4

    iget-object v5, v6, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->bounds:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    float-to-int v5, v5

    iget-object v10, v6, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->thumbs:Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;

    invoke-static {v10}, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->access$1100(Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lt v10, v4, :cond_20

    const/4 v10, 0x1

    goto :goto_1c

    :cond_20
    const/4 v10, 0x0

    :goto_1c
    if-eqz v10, :cond_22

    move v11, v2

    :goto_1d
    iget-object v13, v6, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->thumbs:Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;

    invoke-static {v13}, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->access$1100(Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-static {v13, v4}, Ljava/lang/Math;->min(II)I

    move-result v13

    if-ge v11, v13, :cond_22

    iget-object v13, v6, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->thumbs:Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;

    invoke-static {v13}, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->access$1100(Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader$BitmapFrame;

    iget-object v13, v13, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader$BitmapFrame;->bitmap:Landroid/graphics/Bitmap;

    if-nez v13, :cond_21

    const/4 v11, 0x0

    goto :goto_1e

    :cond_21
    add-int/lit8 v11, v11, 0x1

    goto :goto_1d

    :cond_22
    move v11, v10

    :goto_1e
    if-nez v11, :cond_23

    iget-object v11, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->blurManager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    invoke-virtual {v11}, Lorg/telegram/ui/Components/BlurringShader$BlurManager;->hasRenderNode()Z

    move-result v11

    if-eqz v11, :cond_24

    iget-object v11, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->backgroundBlur:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    invoke-virtual {v11, v9}, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->drawRect(Landroid/graphics/Canvas;)V

    const/high16 v11, 0x33000000

    invoke-virtual {v9, v11}, Landroid/graphics/Canvas;->drawColor(I)V

    :cond_23
    :goto_1f
    move-object/from16 v14, v39

    goto :goto_20

    :cond_24
    const/high16 v11, 0x33000000

    if-nez v39, :cond_25

    const/high16 v13, 0x40000000    # 2.0f

    invoke-virtual {v9, v13}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_1f

    :cond_25
    iget-object v13, v6, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->bounds:Landroid/graphics/RectF;

    move-object/from16 v14, v39

    invoke-virtual {v9, v13, v14}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-virtual {v9, v11}, Landroid/graphics/Canvas;->drawColor(I)V

    :goto_20
    if-eqz v1, :cond_27

    :goto_21
    iget-object v1, v6, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->thumbs:Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->access$1100(Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge v2, v1, :cond_27

    iget-object v1, v6, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->thumbs:Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->access$1100(Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader$BitmapFrame;

    iget-object v11, v1, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader$BitmapFrame;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v11, :cond_26

    iget-object v11, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->collageFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader$BitmapFrame;->getAlpha()F

    move-result v13

    mul-float v13, v13, v24

    float-to-int v13, v13

    invoke-virtual {v11, v13}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, v1, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader$BitmapFrame;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v11, v12

    div-float v11, v11, v25

    float-to-int v11, v11

    sub-int v11, v5, v11

    int-to-float v11, v11

    iget-object v13, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->collageFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v1, v7, v11, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_26
    add-float/2addr v7, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    :cond_27
    if-nez v10, :cond_29

    iget-object v1, v6, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->thumbs:Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->load()V

    goto :goto_22

    :cond_28
    move v12, v2

    move-object v6, v3

    move/from16 v40, v4

    move/from16 v44, v10

    move-object/from16 v14, v39

    :cond_29
    :goto_22
    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->selectedCollageClipPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    iget-boolean v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->isCover:Z

    if-nez v1, :cond_2c

    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget v2, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->px:I

    iget v3, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->ph:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v4, v6, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->left:F

    iget-wide v10, v6, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->duration:J

    long-to-float v5, v10

    mul-float v7, v4, v5

    iget-wide v10, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->scroll:J

    long-to-float v10, v10

    sub-float/2addr v7, v10

    move-object/from16 v39, v14

    iget-wide v13, v6, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->offset:J

    long-to-float v11, v13

    add-float/2addr v7, v11

    move-wide/from16 v13, v46

    move/from16 v46, v3

    long-to-float v3, v13

    div-float/2addr v7, v3

    move-wide/from16 v47, v13

    iget v13, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->sw:I

    int-to-float v13, v13

    mul-float v7, v7, v13

    add-float/2addr v7, v2

    const/4 v14, 0x0

    cmpg-float v4, v4, v14

    if-gtz v4, :cond_2a

    move/from16 v4, v46

    goto :goto_23

    :cond_2a
    const/4 v4, 0x0

    :goto_23
    int-to-float v4, v4

    sub-float/2addr v7, v4

    iget-object v4, v6, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->bounds:Landroid/graphics/RectF;

    iget v14, v4, Landroid/graphics/RectF;->top:F

    iget v6, v6, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->right:F

    mul-float v5, v5, v6

    sub-float/2addr v5, v10

    add-float/2addr v5, v11

    div-float/2addr v5, v3

    mul-float v5, v5, v13

    add-float/2addr v2, v5

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v5, v6, v3

    if-ltz v5, :cond_2b

    move/from16 v3, v46

    goto :goto_24

    :cond_2b
    const/4 v3, 0x0

    :goto_24
    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, v4, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v1, v7, v14, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->selectedCollageClipPath:Landroid/graphics/Path;

    iget-object v3, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->selectedVideoRadii:[F

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v1, v3, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->selectedCollageClipPath:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v9, v1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    const/high16 v1, 0x50000000

    invoke-virtual {v9, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_25

    :cond_2c
    move-object/from16 v39, v14

    move-wide/from16 v47, v46

    :goto_25
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v2, v37, v1

    add-float/2addr v2, v12

    sub-float/2addr v0, v2

    add-int/lit8 v2, v15, 0x1

    move/from16 v1, v37

    move/from16 v4, v40

    move/from16 v10, v44

    move-wide/from16 v14, v47

    goto/16 :goto_17

    :cond_2d
    move/from16 v37, v1

    move/from16 v44, v10

    move-wide/from16 v47, v14

    const/high16 v7, 0x3f800000    # 1.0f

    goto :goto_26

    :cond_2e
    move/from16 v37, v1

    move/from16 v44, v10

    move-wide/from16 v47, v14

    const/4 v7, 0x0

    :goto_26
    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundT:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v2, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->hasRound:Z

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v10

    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundSelectedT:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v2, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->hasRound:Z

    if-eqz v2, :cond_2f

    iget-boolean v2, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundSelected:Z

    if-eqz v2, :cond_2f

    const/4 v5, 0x1

    goto :goto_27

    :cond_2f
    const/4 v5, 0x0

    :goto_27
    invoke-virtual {v1, v5}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v11

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->getRoundHeight()F

    move-result v1

    mul-float v1, v1, v10

    iget-object v2, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoTrack:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    if-nez v2, :cond_31

    iget-boolean v2, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->hasAudio:Z

    if-nez v2, :cond_31

    iget-object v2, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->collageTracks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_30

    goto :goto_28

    :cond_30
    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_29

    :cond_31
    :goto_28
    move v2, v11

    :goto_29
    mul-float v2, v2, v10

    const/4 v3, 0x0

    cmpl-float v5, v10, v3

    if-lez v5, :cond_42

    iget-wide v5, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundOffset:J

    long-to-float v3, v5

    iget v12, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundLeft:F

    iget-wide v13, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundDuration:J

    long-to-float v15, v13

    mul-float v16, v12, v15

    add-float v16, v3, v16

    mul-float v16, v16, v2

    add-float v4, v4, v16

    move/from16 v16, v4

    iget v4, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundRight:F

    mul-float v4, v4, v15

    add-float/2addr v3, v4

    mul-float v3, v3, v2

    add-float v38, v38, v3

    iget-object v3, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoTrack:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    if-eqz v3, :cond_32

    iget v3, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->px:I

    iget v4, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->ph:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget-wide v13, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->scroll:J

    sub-long/2addr v5, v13

    long-to-float v4, v5

    const/4 v5, 0x0

    invoke-static {v12, v5, v11}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v6

    iget-wide v12, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundDuration:J

    long-to-float v5, v12

    mul-float v6, v6, v5

    add-float/2addr v4, v6

    move-wide/from16 v5, v47

    long-to-float v12, v5

    div-float/2addr v4, v12

    iget v13, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->sw:I

    int-to-float v13, v13

    mul-float v4, v4, v13

    add-float/2addr v3, v4

    iget v4, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->px:I

    iget v13, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->ph:I

    add-int/2addr v4, v13

    int-to-float v4, v4

    iget-wide v13, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundOffset:J

    move-wide/from16 v46, v5

    iget-wide v5, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->scroll:J

    sub-long/2addr v13, v5

    long-to-float v5, v13

    iget v6, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundRight:F

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-static {v6, v13, v11}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v6

    iget-wide v13, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundDuration:J

    long-to-float v13, v13

    mul-float v6, v6, v13

    add-float/2addr v5, v6

    div-float/2addr v5, v12

    iget v6, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->sw:I

    int-to-float v6, v6

    mul-float v5, v5, v6

    add-float/2addr v4, v5

    move v9, v3

    move v5, v4

    move/from16 v40, v10

    move-wide/from16 v3, v46

    goto :goto_2a

    :cond_32
    move-wide/from16 v3, v47

    iget v12, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->px:I

    iget v15, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->ph:I

    add-int/2addr v12, v15

    int-to-float v12, v12

    move/from16 v40, v10

    iget-wide v9, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->scroll:J

    sub-long/2addr v5, v9

    long-to-float v9, v5

    long-to-float v10, v3

    div-float/2addr v9, v10

    iget v15, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->sw:I

    int-to-float v15, v15

    mul-float v9, v9, v15

    add-float/2addr v9, v12

    add-long/2addr v5, v13

    long-to-float v5, v5

    div-float/2addr v5, v10

    mul-float v5, v5, v15

    add-float/2addr v5, v12

    :goto_2a
    iget-object v6, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundBounds:Landroid/graphics/RectF;

    iget v10, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->ph:I

    int-to-float v10, v10

    sub-float/2addr v9, v10

    sub-float v12, v0, v1

    add-float/2addr v5, v10

    invoke-virtual {v6, v9, v12, v5, v0}, Landroid/graphics/RectF;->set(FFFF)V

    mul-float v5, v37, v40

    add-float/2addr v5, v1

    sub-float/2addr v0, v5

    iget-object v5, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundBounds:Landroid/graphics/RectF;

    iget v6, v5, Landroid/graphics/RectF;->top:F

    mul-float v6, v6, v2

    add-float v45, v45, v6

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    mul-float v5, v5, v2

    add-float v41, v41, v5

    iget-object v2, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundClipPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->rewind()V

    iget-object v2, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundClipPath:Landroid/graphics/Path;

    iget-object v5, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundBounds:Landroid/graphics/RectF;

    invoke-static/range {v26 .. v26}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    invoke-static/range {v26 .. v26}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    sget-object v10, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v5, v6, v9, v10}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v2, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundClipPath:Landroid/graphics/Path;

    move-object/from16 v9, p1

    invoke-virtual {v9, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget-object v2, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundThumbs:Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;

    if-eqz v2, :cond_3e

    iget-wide v5, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundDuration:J

    cmp-long v10, v5, v30

    if-gtz v10, :cond_33

    const/4 v10, 0x0

    goto :goto_2b

    :cond_33
    iget v10, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->px:I

    iget v12, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->ph:I

    add-int/2addr v10, v12

    int-to-float v10, v10

    iget-wide v12, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundOffset:J

    iget-wide v14, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->scroll:J

    sub-long/2addr v12, v14

    long-to-float v12, v12

    long-to-float v13, v3

    div-float/2addr v12, v13

    iget v13, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->sw:I

    int-to-float v13, v13

    mul-float v12, v12, v13

    add-float/2addr v10, v12

    :goto_2b
    iget v12, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->ph:I

    int-to-float v13, v12

    sub-float/2addr v10, v13

    cmp-long v14, v5, v30

    if-gtz v14, :cond_34

    const/4 v5, 0x0

    goto :goto_2c

    :cond_34
    iget v14, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->px:I

    add-int/2addr v14, v12

    int-to-float v12, v14

    iget-wide v14, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundOffset:J

    add-long/2addr v14, v5

    iget-wide v5, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->scroll:J

    sub-long/2addr v14, v5

    long-to-float v5, v14

    long-to-float v6, v3

    div-float/2addr v5, v6

    iget v6, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->sw:I

    int-to-float v6, v6

    mul-float v5, v5, v6

    add-float/2addr v5, v12

    :goto_2c
    add-float/2addr v5, v13

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->getFrameWidth()I

    move-result v2

    iget-object v6, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoTrack:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    if-eqz v6, :cond_35

    iget v6, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->px:I

    iget v12, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->ph:I

    add-int/2addr v6, v12

    int-to-float v6, v6

    iget-wide v12, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundOffset:J

    iget-wide v14, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->scroll:J

    sub-long/2addr v12, v14

    long-to-float v12, v12

    long-to-float v13, v3

    div-float/2addr v12, v13

    iget v13, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->sw:I

    int-to-float v13, v13

    mul-float v12, v12, v13

    add-float/2addr v6, v12

    goto :goto_2d

    :cond_35
    iget v6, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->px:I

    int-to-float v6, v6

    :goto_2d
    sub-float v6, v10, v6

    int-to-float v12, v2

    div-float/2addr v6, v12

    float-to-double v13, v6

    invoke-static {v13, v14}, Ljava/lang/Math;->floor(D)D

    move-result-wide v13

    move/from16 v30, v7

    const-wide/16 v6, 0x0

    invoke-static {v6, v7, v13, v14}, Ljava/lang/Math;->max(DD)D

    move-result-wide v13

    double-to-int v13, v13

    iget-object v14, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundThumbs:Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;

    invoke-static {v14}, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->access$1000(Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;)I

    move-result v14

    int-to-double v14, v14

    sub-float/2addr v5, v10

    div-float/2addr v5, v12

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    add-double v5, v5, v20

    invoke-static {v14, v15, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v5

    double-to-int v5, v5

    iget-object v6, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundBounds:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    float-to-int v6, v6

    iget-object v7, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundThumbs:Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;

    invoke-static {v7}, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->access$1100(Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v7, v5, :cond_36

    const/4 v7, 0x1

    goto :goto_2e

    :cond_36
    const/4 v7, 0x0

    :goto_2e
    if-eqz v7, :cond_38

    move v14, v13

    :goto_2f
    iget-object v15, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundThumbs:Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;

    invoke-static {v15}, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->access$1100(Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    invoke-static {v15, v5}, Ljava/lang/Math;->min(II)I

    move-result v15

    if-ge v14, v15, :cond_38

    iget-object v15, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundThumbs:Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;

    invoke-static {v15}, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->access$1100(Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader$BitmapFrame;

    iget-object v15, v15, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader$BitmapFrame;->bitmap:Landroid/graphics/Bitmap;

    if-nez v15, :cond_37

    const/4 v14, 0x0

    goto :goto_30

    :cond_37
    add-int/lit8 v14, v14, 0x1

    goto :goto_2f

    :cond_38
    move v14, v7

    :goto_30
    if-nez v14, :cond_39

    iget-object v14, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->blurManager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    invoke-virtual {v14}, Lorg/telegram/ui/Components/BlurringShader$BlurManager;->hasRenderNode()Z

    move-result v14

    if-eqz v14, :cond_3a

    iget-object v14, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->backgroundBlur:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    invoke-virtual {v14, v9}, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->drawRect(Landroid/graphics/Canvas;)V

    const/high16 v14, 0x33000000

    invoke-virtual {v9, v14}, Landroid/graphics/Canvas;->drawColor(I)V

    :cond_39
    :goto_31
    move/from16 v20, v0

    move-object/from16 v0, v39

    goto :goto_32

    :cond_3a
    const/high16 v14, 0x33000000

    if-nez v39, :cond_3b

    const/high16 v15, 0x40000000    # 2.0f

    invoke-virtual {v9, v15}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_31

    :cond_3b
    iget-object v15, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundBounds:Landroid/graphics/RectF;

    move/from16 v20, v0

    move-object/from16 v0, v39

    invoke-virtual {v9, v15, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-virtual {v9, v14}, Landroid/graphics/Canvas;->drawColor(I)V

    :goto_32
    if-eqz v2, :cond_3d

    :goto_33
    iget-object v2, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundThumbs:Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->access$1100(Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-ge v13, v2, :cond_3d

    iget-object v2, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundThumbs:Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->access$1100(Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader$BitmapFrame;

    iget-object v14, v2, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader$BitmapFrame;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v14, :cond_3c

    iget-object v14, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader$BitmapFrame;->getAlpha()F

    move-result v15

    mul-float v15, v15, v24

    float-to-int v15, v15

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, v2, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader$BitmapFrame;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    int-to-float v14, v14

    sub-float/2addr v14, v1

    div-float v14, v14, v25

    float-to-int v14, v14

    sub-int v14, v6, v14

    int-to-float v14, v14

    iget-object v15, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v2, v10, v14, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_3c
    add-float/2addr v10, v12

    add-int/lit8 v13, v13, 0x1

    goto :goto_33

    :cond_3d
    if-nez v7, :cond_3f

    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundThumbs:Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->load()V

    goto :goto_34

    :cond_3e
    move/from16 v20, v0

    move/from16 v30, v7

    move-object/from16 v0, v39

    :cond_3f
    :goto_34
    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->selectedVideoClipPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget v2, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->px:I

    iget v5, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->ph:I

    add-int/2addr v2, v5

    int-to-float v2, v2

    iget v6, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundLeft:F

    iget-wide v12, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundDuration:J

    long-to-float v7, v12

    mul-float v10, v6, v7

    iget-wide v12, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->scroll:J

    long-to-float v12, v12

    sub-float/2addr v10, v12

    iget-wide v13, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundOffset:J

    long-to-float v13, v13

    add-float/2addr v10, v13

    long-to-float v14, v3

    div-float/2addr v10, v14

    iget v15, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->sw:I

    int-to-float v15, v15

    mul-float v10, v10, v15

    add-float/2addr v10, v2

    const/16 v21, 0x0

    cmpg-float v6, v6, v21

    if-gtz v6, :cond_40

    move v6, v5

    goto :goto_35

    :cond_40
    const/4 v6, 0x0

    :goto_35
    int-to-float v6, v6

    sub-float/2addr v10, v6

    int-to-float v6, v5

    const/high16 v21, 0x3f800000    # 1.0f

    sub-float v31, v21, v11

    mul-float v6, v6, v31

    sub-float/2addr v10, v6

    move-object/from16 v39, v0

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundBounds:Landroid/graphics/RectF;

    move-wide/from16 v46, v3

    iget v3, v0, Landroid/graphics/RectF;->top:F

    iget v4, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundRight:F

    mul-float v7, v7, v4

    sub-float/2addr v7, v12

    add-float/2addr v7, v13

    div-float/2addr v7, v14

    mul-float v7, v7, v15

    add-float/2addr v2, v7

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v7

    if-ltz v4, :cond_41

    goto :goto_36

    :cond_41
    const/4 v5, 0x0

    :goto_36
    int-to-float v4, v5

    add-float/2addr v2, v4

    add-float/2addr v2, v6

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v1, v10, v3, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->selectedVideoClipPath:Landroid/graphics/Path;

    iget-object v2, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->selectedVideoRadii:[F

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->selectedVideoClipPath:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v9, v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    const/high16 v0, 0x50000000

    invoke-virtual {v9, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    move/from16 v4, v16

    move/from16 v2, v20

    move-wide/from16 v0, v46

    goto :goto_37

    :cond_42
    move v2, v0

    move/from16 v30, v7

    move/from16 v40, v10

    move-wide/from16 v0, v47

    :goto_37
    iget-object v3, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioT:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v5, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->hasAudio:Z

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v7

    iget-object v3, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioSelectedT:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v5, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->hasAudio:Z

    if-eqz v5, :cond_43

    iget-boolean v5, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioSelected:Z

    if-eqz v5, :cond_43

    const/4 v5, 0x1

    goto :goto_38

    :cond_43
    const/4 v5, 0x0

    :goto_38
    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v10

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->getAudioHeight()F

    move-result v3

    mul-float v3, v3, v7

    iget-object v5, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoTrack:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    if-nez v5, :cond_45

    iget-boolean v5, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->hasRound:Z

    if-nez v5, :cond_45

    iget-object v5, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->collageTracks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_44

    goto :goto_39

    :cond_44
    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_3a

    :cond_45
    :goto_39
    move v5, v10

    :goto_3a
    mul-float v5, v5, v7

    const/4 v6, 0x0

    cmpl-float v12, v7, v6

    if-lez v12, :cond_56

    iget-wide v12, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioOffset:J

    long-to-float v6, v12

    iget v12, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioLeft:F

    iget-wide v13, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioDuration:J

    long-to-float v13, v13

    mul-float v12, v12, v13

    add-float/2addr v12, v6

    mul-float v12, v12, v5

    add-float v31, v4, v12

    iget v4, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioRight:F

    mul-float v4, v4, v13

    add-float/2addr v6, v4

    mul-float v6, v6, v5

    add-float v38, v38, v6

    iget-object v4, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioBlur:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    invoke-virtual {v4, v7}, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->getPaint(F)Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v6, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoTrack:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    if-nez v6, :cond_46

    iget-boolean v6, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->hasRound:Z

    if-nez v6, :cond_46

    iget-object v6, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->collageTracks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_47

    :cond_46
    move-object/from16 v20, v4

    move/from16 v16, v5

    move/from16 v37, v11

    goto :goto_3b

    :cond_47
    iget v6, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->px:I

    iget v12, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->ph:I

    add-int/2addr v6, v12

    int-to-float v6, v6

    iget-wide v12, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioOffset:J

    iget-wide v14, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->scroll:J

    sub-long/2addr v12, v14

    long-to-float v14, v12

    long-to-float v15, v0

    div-float/2addr v14, v15

    move/from16 v37, v11

    iget v11, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->sw:I

    int-to-float v11, v11

    mul-float v14, v14, v11

    add-float/2addr v14, v6

    move-object/from16 v20, v4

    move/from16 v16, v5

    iget-wide v4, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioDuration:J

    add-long/2addr v12, v4

    long-to-float v4, v12

    div-float/2addr v4, v15

    mul-float v4, v4, v11

    add-float/2addr v6, v4

    move v15, v6

    goto :goto_3c

    :goto_3b
    iget v4, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->px:I

    iget v5, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->ph:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget-wide v5, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioOffset:J

    iget-wide v11, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->scroll:J

    sub-long/2addr v5, v11

    long-to-float v5, v5

    iget v6, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioLeft:F

    const/4 v11, 0x0

    invoke-static {v6, v11, v10}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v6

    iget-wide v11, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioDuration:J

    long-to-float v11, v11

    mul-float v6, v6, v11

    add-float/2addr v5, v6

    long-to-float v6, v0

    div-float/2addr v5, v6

    iget v11, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->sw:I

    int-to-float v11, v11

    mul-float v5, v5, v11

    add-float/2addr v4, v5

    iget v5, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->px:I

    iget v11, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->ph:I

    add-int/2addr v5, v11

    int-to-float v5, v5

    iget-wide v11, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioOffset:J

    iget-wide v13, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->scroll:J

    sub-long/2addr v11, v13

    long-to-float v11, v11

    iget v12, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioRight:F

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-static {v12, v13, v10}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v12

    iget-wide v13, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioDuration:J

    long-to-float v13, v13

    mul-float v12, v12, v13

    add-float/2addr v11, v12

    div-float/2addr v11, v6

    iget v6, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->sw:I

    int-to-float v6, v6

    mul-float v11, v11, v6

    add-float/2addr v5, v11

    move v14, v4

    move v15, v5

    :goto_3c
    iget-object v4, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioBounds:Landroid/graphics/RectF;

    iget v5, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->ph:I

    int-to-float v5, v5

    sub-float v6, v14, v5

    sub-float v11, v2, v3

    add-float/2addr v5, v15

    invoke-virtual {v4, v6, v11, v5, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioBounds:Landroid/graphics/RectF;

    iget v4, v2, Landroid/graphics/RectF;->top:F

    mul-float v4, v4, v16

    add-float v45, v45, v4

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    mul-float v2, v2, v16

    add-float v41, v41, v2

    iget-object v2, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioClipPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->rewind()V

    iget-object v2, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioClipPath:Landroid/graphics/Path;

    iget-object v4, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioBounds:Landroid/graphics/RectF;

    invoke-static/range {v26 .. v26}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-static/range {v26 .. v26}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    sget-object v11, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v4, v5, v6, v11}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    iget-object v2, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioClipPath:Landroid/graphics/Path;

    invoke-virtual {v9, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget-object v2, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->blurManager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    if-eqz v2, :cond_48

    invoke-virtual {v2}, Lorg/telegram/ui/Components/BlurringShader$BlurManager;->hasRenderNode()Z

    move-result v2

    if-eqz v2, :cond_48

    iget-object v2, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->backgroundBlur:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    invoke-virtual {v2, v9}, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->drawRect(Landroid/graphics/Canvas;)V

    const/high16 v2, 0x33000000

    invoke-static {v2, v7}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v2

    :goto_3d
    invoke-virtual {v9, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    move-object/from16 v5, v20

    goto :goto_3e

    :cond_48
    const/high16 v2, 0x33000000

    if-nez v20, :cond_49

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v4, v7}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v2

    goto :goto_3d

    :cond_49
    iget-object v4, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioBounds:Landroid/graphics/RectF;

    move-object/from16 v5, v20

    invoke-virtual {v9, v4, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-static {v2, v7}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v2

    invoke-virtual {v9, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    :goto_3e
    iget-object v2, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->waveform:Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;

    if-eqz v2, :cond_4c

    iget-object v2, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->blurManager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    if-eqz v2, :cond_4c

    invoke-virtual {v2}, Lorg/telegram/ui/Components/BlurringShader$BlurManager;->hasRenderNode()Z

    move-result v2

    if-eqz v2, :cond_4c

    iget-object v2, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->waveformMax:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-object v4, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->waveform:Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;

    invoke-virtual {v4}, Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;->getMaxBar()S

    move-result v4

    int-to-float v4, v4

    iget-boolean v5, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->waveformIsLoaded:Z

    const/4 v11, 0x1

    xor-int/2addr v5, v11

    invoke-virtual {v2, v4, v5}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    move-result v20

    iget-object v2, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->waveform:Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;->getLoadedCount()I

    move-result v2

    if-lez v2, :cond_4a

    const/4 v5, 0x1

    goto :goto_3f

    :cond_4a
    const/4 v5, 0x0

    :goto_3f
    iput-boolean v5, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->waveformIsLoaded:Z

    iget v2, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->px:I

    iget v4, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->ph:I

    add-int/2addr v2, v4

    int-to-float v2, v2

    iget-wide v4, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioOffset:J

    iget-wide v12, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->scroll:J

    sub-long/2addr v4, v12

    long-to-float v4, v4

    long-to-float v5, v0

    div-float/2addr v4, v5

    iget v5, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->sw:I

    int-to-float v5, v5

    mul-float v4, v4, v5

    add-float v13, v2, v4

    iget-object v12, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->waveformPath:Lorg/telegram/ui/Stories/recorder/TimelineView$WaveformPath;

    iget-object v2, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->waveform:Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;

    const/16 v5, 0x1f

    move-object/from16 v32, v39

    const/16 v6, 0x66

    move/from16 v16, v10

    move-wide/from16 v17, v0

    move/from16 v19, v3

    move/from16 v21, v2

    move-object/from16 v22, v4

    invoke-virtual/range {v12 .. v22}, Lorg/telegram/ui/Stories/recorder/TimelineView$WaveformPath;->check(FFFFJFFFLorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;)V

    iget-object v2, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioBounds:Landroid/graphics/RectF;

    invoke-virtual {v9, v2, v6, v5}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    iget-object v2, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->waveformPath:Lorg/telegram/ui/Stories/recorder/TimelineView$WaveformPath;

    invoke-virtual {v9, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget-object v2, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioWaveformBlur:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    invoke-virtual {v2, v9}, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->drawRect(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_4b
    :goto_40
    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_42

    :cond_4c
    move-object/from16 v32, v39

    const/4 v11, 0x1

    iget-object v2, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->waveform:Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;

    if-eqz v2, :cond_4b

    if-eqz v5, :cond_4b

    iget-object v2, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioWaveformBlur:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    const v4, 0x3ecccccd    # 0.4f

    mul-float v4, v4, v7

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->getPaint(F)Landroid/graphics/Paint;

    move-result-object v2

    if-nez v2, :cond_4d

    iget-object v2, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->waveformPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x42800000    # 64.0f

    mul-float v4, v4, v7

    float-to-int v4, v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_4d
    iget-object v4, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->waveformMax:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-object v5, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->waveform:Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;

    invoke-virtual {v5}, Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;->getMaxBar()S

    move-result v5

    int-to-float v5, v5

    iget-boolean v6, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->waveformIsLoaded:Z

    xor-int/2addr v6, v11

    invoke-virtual {v4, v5, v6}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    move-result v20

    iget-object v4, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->waveform:Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;

    invoke-virtual {v4}, Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;->getLoadedCount()I

    move-result v4

    if-lez v4, :cond_4e

    const/4 v13, 0x1

    goto :goto_41

    :cond_4e
    const/4 v13, 0x0

    :goto_41
    iput-boolean v13, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->waveformIsLoaded:Z

    iget v4, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->px:I

    iget v5, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->ph:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget-wide v5, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioOffset:J

    iget-wide v12, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->scroll:J

    sub-long/2addr v5, v12

    long-to-float v5, v5

    long-to-float v6, v0

    div-float/2addr v5, v6

    iget v6, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->sw:I

    int-to-float v6, v6

    mul-float v5, v5, v6

    add-float v13, v4, v5

    iget-object v12, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->waveformPath:Lorg/telegram/ui/Stories/recorder/TimelineView$WaveformPath;

    iget-object v4, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    iget-object v5, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->waveform:Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;

    move/from16 v16, v10

    move-wide/from16 v17, v0

    move/from16 v19, v3

    move/from16 v21, v4

    move-object/from16 v22, v5

    invoke-virtual/range {v12 .. v22}, Lorg/telegram/ui/Stories/recorder/TimelineView$WaveformPath;->check(FFFFJFFFLorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;)V

    iget-object v3, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->waveformPath:Lorg/telegram/ui/Stories/recorder/TimelineView$WaveformPath;

    invoke-virtual {v9, v3, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_40

    :goto_42
    cmpg-float v3, v10, v2

    if-gez v3, :cond_55

    iget v2, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->px:I

    iget v3, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->ph:I

    add-int/2addr v3, v2

    int-to-float v3, v3

    iget-wide v4, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioOffset:J

    iget-wide v12, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->scroll:J

    sub-long/2addr v4, v12

    long-to-float v4, v4

    iget v5, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioLeft:F

    iget-wide v12, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioDuration:J

    long-to-float v6, v12

    mul-float v5, v5, v6

    add-float/2addr v5, v4

    long-to-float v12, v0

    div-float/2addr v5, v12

    iget v13, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->sw:I

    int-to-float v13, v13

    mul-float v5, v5, v13

    add-float/2addr v5, v3

    iget v14, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioRight:F

    mul-float v14, v14, v6

    add-float/2addr v4, v14

    div-float/2addr v4, v12

    mul-float v4, v4, v13

    add-float v12, v3, v4

    int-to-float v2, v2

    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget v3, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->w:I

    iget v4, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->px:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-static {v3, v12}, Ljava/lang/Math;->min(FF)F

    move-result v3

    add-float/2addr v2, v3

    div-float v2, v2, v25

    iget-object v3, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioBounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v13

    iget v3, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->w:I

    iget v4, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->px:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-static {v3, v12}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iget v4, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->px:I

    int-to-float v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x41c00000    # 24.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    const/high16 v4, 0x41500000    # 13.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v5

    iget-object v6, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioAuthor:Landroid/text/StaticLayout;

    if-nez v6, :cond_4f

    iget-object v6, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioTitle:Landroid/text/StaticLayout;

    if-nez v6, :cond_4f

    const/4 v6, 0x0

    goto :goto_43

    :cond_4f
    const v6, 0x40470a3d    # 3.11f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v6

    iget v14, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioAuthorWidth:F

    add-float/2addr v6, v14

    const v14, 0x411a8f5c    # 9.66f

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v14

    add-float/2addr v6, v14

    iget v14, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioTitleWidth:F

    add-float/2addr v6, v14

    :goto_43
    add-float/2addr v5, v6

    cmpg-float v6, v5, v3

    if-gez v6, :cond_50

    const/4 v14, 0x1

    goto :goto_44

    :cond_50
    const/4 v14, 0x0

    :goto_44
    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    div-float v3, v3, v25

    sub-float/2addr v2, v3

    iget-object v3, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioIcon:Landroid/graphics/drawable/Drawable;

    float-to-int v5, v2

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    div-float v6, v6, v25

    sub-float v6, v13, v6

    float-to-int v6, v6

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    int-to-float v15, v15

    add-float/2addr v15, v2

    float-to-int v15, v15

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    div-float v4, v4, v25

    add-float/2addr v4, v13

    float-to-int v4, v4

    invoke-virtual {v3, v5, v6, v15, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v3, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioIcon:Landroid/graphics/drawable/Drawable;

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v15, v4, v10

    mul-float v6, v15, v24

    float-to-int v4, v6

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v3, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v9}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const v3, 0x4180e148    # 16.11f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    add-float v5, v2, v3

    iget v2, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->w:I

    int-to-float v3, v2

    iget v2, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->h:I

    int-to-float v4, v2

    const/16 v16, 0xff

    const/16 v17, 0x1f

    const/4 v2, 0x0

    const/16 v18, 0x0

    move-wide/from16 v49, v0

    move-object/from16 v0, p1

    move v1, v2

    move/from16 v2, v18

    const-wide/16 v18, 0x0

    move v11, v5

    move/from16 v51, v43

    move/from16 v5, v16

    move/from16 v20, v6

    move/from16 v16, v10

    move/from16 v10, v42

    move/from16 v6, v17

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    iget v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->w:I

    int-to-float v0, v0

    invoke-static {v12, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    sub-float v3, v0, v1

    iget v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->h:I

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {v9, v11, v1, v3, v0}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioAuthor:Landroid/text/StaticLayout;

    if-eqz v0, :cond_51

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioAuthorLeft:F

    sub-float v5, v11, v0

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioAuthor:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v0, v25

    sub-float v0, v13, v0

    invoke-virtual {v9, v5, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioAuthorPaint:Landroid/text/TextPaint;

    mul-float v6, v20, v7

    float-to-int v1, v6

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioAuthor:Landroid/text/StaticLayout;

    invoke-virtual {v0, v9}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    iget v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioAuthorWidth:F

    add-float v5, v11, v0

    goto :goto_45

    :cond_51
    move v5, v11

    :goto_45
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioAuthor:Landroid/text/StaticLayout;

    if-eqz v0, :cond_52

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioTitle:Landroid/text/StaticLayout;

    if-eqz v0, :cond_52

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    add-float/2addr v5, v0

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioDotPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioDotPaint:Landroid/graphics/Paint;

    int-to-float v2, v0

    mul-float v2, v2, v15

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v5

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v1, v4

    iget-object v4, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioDotPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v2, v13, v1, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioDotPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    add-float/2addr v5, v0

    invoke-static/range {v29 .. v29}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    add-float/2addr v5, v0

    :cond_52
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioTitle:Landroid/text/StaticLayout;

    if-eqz v0, :cond_53

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioTitleLeft:F

    sub-float/2addr v5, v0

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioTitle:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v0, v25

    sub-float/2addr v13, v0

    invoke-virtual {v9, v5, v13}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioTitlePaint:Landroid/text/TextPaint;

    mul-float v6, v20, v7

    float-to-int v1, v6

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioTitle:Landroid/text/StaticLayout;

    invoke-virtual {v0, v9}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_53
    if-nez v14, :cond_54

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->ellipsizeMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->ellipsizeMatrix:Landroid/graphics/Matrix;

    invoke-static/range {v26 .. v26}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    const/high16 v2, 0x41800000    # 16.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->ellipsizeMatrix:Landroid/graphics/Matrix;

    invoke-static/range {v26 .. v26}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    sub-float v1, v3, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->ellipsizeGradient:Landroid/graphics/LinearGradient;

    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->ellipsizeMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    invoke-static/range {v26 .. v26}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    sub-float v1, v3, v0

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioBounds:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->top:F

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v5, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->ellipsizePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_54
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_46

    :cond_55
    move-wide/from16 v49, v0

    move/from16 v16, v10

    move/from16 v10, v42

    move/from16 v51, v43

    const-wide/16 v18, 0x0

    :goto_46
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    move/from16 v4, v31

    :goto_47
    move/from16 v3, v45

    goto :goto_48

    :cond_56
    move-wide/from16 v49, v0

    move/from16 v16, v10

    move/from16 v37, v11

    move-object/from16 v32, v39

    move/from16 v10, v42

    move/from16 v51, v43

    const-wide/16 v18, 0x0

    goto :goto_47

    :goto_48
    iget v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->px:I

    iget v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->ph:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget-wide v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->scroll:J

    long-to-float v1, v1

    sub-float/2addr v4, v1

    move-wide/from16 v11, v49

    long-to-float v13, v11

    div-float/2addr v4, v13

    iget v2, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->sw:I

    int-to-float v2, v2

    mul-float v4, v4, v2

    add-float v5, v0, v4

    sub-float v38, v38, v1

    div-float v38, v38, v13

    mul-float v38, v38, v2

    add-float v6, v0, v38

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->collageTracks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_57

    move/from16 v14, v30

    :goto_49
    move/from16 v0, v40

    goto :goto_4a

    :cond_57
    iget-boolean v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->hasAudio:Z

    if-eqz v0, :cond_58

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoTrack:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    if-nez v0, :cond_58

    move v14, v7

    goto :goto_49

    :cond_58
    move/from16 v0, v40

    invoke-static {v10, v0}, Ljava/lang/Math;->max(FF)F

    move-result v1

    move v14, v1

    :goto_4a
    float-to-double v1, v7

    cmpl-double v4, v1, v18

    if-gtz v4, :cond_5a

    float-to-double v0, v0

    cmpl-double v2, v0, v18

    if-gtz v2, :cond_5a

    float-to-double v0, v10

    cmpl-double v2, v0, v18

    if-gtz v2, :cond_5a

    move/from16 v0, v30

    float-to-double v0, v0

    cmpl-double v2, v0, v18

    if-lez v2, :cond_59

    goto :goto_4b

    :cond_59
    move-wide/from16 v46, v11

    goto/16 :goto_55

    :cond_5a
    :goto_4b
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoTrack:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    if-nez v0, :cond_5b

    iget-boolean v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->hasRound:Z

    if-nez v0, :cond_5b

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->collageTracks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5c

    :cond_5b
    move/from16 v10, v16

    goto :goto_4c

    :cond_5c
    const v0, 0x3f19999a    # 0.6f

    move/from16 v10, v16

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v10}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    mul-float v0, v0, v7

    goto :goto_4d

    :goto_4c
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_4d
    mul-float v7, v0, v14

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v32

    move/from16 v4, v41

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Stories/recorder/TimelineView;->drawRegion(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFFFF)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoTrack:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    if-eqz v0, :cond_60

    iget-boolean v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->hasAudio:Z

    if-nez v1, :cond_5d

    iget-boolean v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->hasRound:Z

    if-eqz v1, :cond_60

    :cond_5d
    const/4 v1, 0x0

    cmpl-float v2, v10, v1

    if-gtz v2, :cond_5e

    cmpl-float v2, v37, v1

    if-lez v2, :cond_60

    :cond_5e
    iget v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->h:I

    iget v2, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->py:I

    sub-int/2addr v1, v2

    int-to-float v4, v1

    sub-float v3, v4, v44

    iget v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->ph:I

    iget v2, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->px:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, v0, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->left:F

    iget-wide v5, v0, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->duration:J

    long-to-float v5, v5

    mul-float v2, v2, v5

    iget-wide v6, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->scroll:J

    long-to-float v6, v6

    sub-float/2addr v2, v6

    div-float/2addr v2, v13

    iget v7, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->sw:I

    int-to-float v7, v7

    mul-float v2, v2, v7

    add-float v10, v1, v2

    iget v0, v0, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->right:F

    mul-float v0, v0, v5

    sub-float/2addr v0, v6

    div-float/2addr v0, v13

    mul-float v0, v0, v7

    add-float v6, v1, v0

    const v7, 0x3f4ccccd    # 0.8f

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v32

    move v5, v10

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Stories/recorder/TimelineView;->drawRegion(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFFFF)V

    :cond_5f
    move-wide/from16 v46, v11

    goto :goto_4e

    :cond_60
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->collageMain:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    if-eqz v0, :cond_5f

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->collageTracks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_5f

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->collageMain:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->bounds:Landroid/graphics/RectF;

    iget v3, v1, Landroid/graphics/RectF;->top:F

    iget v4, v1, Landroid/graphics/RectF;->bottom:F

    iget v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->ph:I

    iget v2, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->px:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget-wide v5, v0, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->offset:J

    long-to-float v2, v5

    iget v5, v0, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->left:F

    iget-wide v6, v0, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->duration:J

    long-to-float v6, v6

    mul-float v5, v5, v6

    add-float/2addr v5, v2

    move-wide/from16 v46, v11

    iget-wide v10, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->scroll:J

    long-to-float v7, v10

    sub-float/2addr v5, v7

    div-float/2addr v5, v13

    iget v10, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->sw:I

    int-to-float v10, v10

    mul-float v5, v5, v10

    add-float/2addr v5, v1

    iget v0, v0, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->right:F

    mul-float v0, v0, v6

    add-float/2addr v2, v0

    sub-float/2addr v2, v7

    div-float/2addr v2, v13

    mul-float v2, v2, v10

    add-float v6, v1, v2

    const v7, 0x3f4ccccd    # 0.8f

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v32

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Stories/recorder/TimelineView;->drawRegion(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFFFF)V

    :goto_4e
    iget v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->maxCount:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_63

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoTrack:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    if-eqz v0, :cond_63

    iget-wide v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->duration:J

    long-to-float v1, v1

    iget v2, v0, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->right:F

    iget v0, v0, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->left:F

    sub-float v3, v2, v0

    mul-float v3, v3, v1

    float-to-long v6, v3

    const-wide/32 v3, 0x10d87

    cmp-long v5, v6, v3

    if-lez v5, :cond_63

    iget v3, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->px:I

    iget v4, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->ph:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    mul-float v0, v0, v1

    iget-wide v4, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->scroll:J

    long-to-float v4, v4

    sub-float/2addr v0, v4

    div-float/2addr v0, v13

    iget v5, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->sw:I

    int-to-float v5, v5

    mul-float v0, v0, v5

    add-float/2addr v0, v3

    mul-float v2, v2, v1

    sub-float/2addr v2, v4

    div-float/2addr v2, v13

    mul-float v2, v2, v5

    add-float/2addr v3, v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->h:I

    iget v2, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->py:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sub-float v2, v1, v44

    invoke-virtual {v9, v0, v2, v3, v1}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->regionPaint:Landroid/graphics/Paint;

    const v1, 0x3f4ccccd    # 0.8f

    move/from16 v4, v51

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2, v4}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v1

    mul-float v1, v1, v24

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->maxCount:I

    const/4 v10, 0x1

    sub-int/2addr v0, v10

    int-to-long v0, v0

    const-wide/32 v11, 0xe678

    div-long v2, v6, v11

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v15, v0

    const/4 v5, 0x1

    :goto_4f
    if-gt v5, v15, :cond_62

    int-to-long v0, v5

    mul-long v0, v0, v11

    sub-long v2, v6, v0

    invoke-static {v11, v12, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    const-wide/16 v16, 0x3e8

    cmp-long v4, v2, v16

    if-gez v4, :cond_61

    goto :goto_50

    :cond_61
    iget v2, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->px:I

    iget v3, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->ph:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoTrack:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    iget-wide v10, v3, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->duration:J

    long-to-float v4, v10

    iget v3, v3, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->left:F

    mul-float v4, v4, v3

    float-to-long v3, v4

    add-long/2addr v3, v0

    iget-wide v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->scroll:J

    sub-long/2addr v3, v0

    long-to-float v0, v3

    div-float/2addr v0, v13

    iget v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->sw:I

    int-to-float v1, v1

    mul-float v0, v0, v1

    add-float v10, v2, v0

    iget v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->h:I

    iget v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->py:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    sub-float v2, v0, v44

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v0, v1

    add-float v3, v10, v0

    iget v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->h:I

    iget v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->py:I

    sub-int/2addr v0, v1

    int-to-float v4, v0

    iget-object v11, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->regionPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move v1, v10

    move v12, v5

    move-object v5, v11

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v12, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v10, v1

    iget v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->h:I

    iget v2, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->py:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sub-float v1, v1, v44

    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->countTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v9, v0, v10, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/4 v10, 0x1

    const-wide/32 v11, 0xe678

    goto/16 :goto_4f

    :cond_62
    :goto_50
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_63
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->loopProgress:Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v7

    iget v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->h:I

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->getContentHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->py:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    const v1, 0x40133333    # 2.3f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    sub-float v10, v0, v1

    iget v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->h:I

    iget v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->py:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const v1, 0x4089999a    # 4.3f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    add-float v11, v0, v1

    const/4 v0, 0x0

    cmpl-float v1, v7, v0

    if-lez v1, :cond_68

    iget-wide v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->loopProgressFrom:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_64

    :goto_51
    move-wide v4, v0

    goto :goto_54

    :cond_64
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoTrack:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    if-eqz v0, :cond_65

    iget-wide v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->duration:J

    long-to-float v1, v1

    iget v0, v0, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->right:F

    mul-float v1, v1, v0

    :goto_52
    float-to-long v0, v1

    goto :goto_51

    :cond_65
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->collageMain:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    if-eqz v0, :cond_66

    iget-wide v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->duration:J

    long-to-float v1, v1

    iget v2, v0, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->right:F

    iget v0, v0, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->left:F

    sub-float/2addr v2, v0

    mul-float v1, v1, v2

    goto :goto_52

    :cond_66
    iget-boolean v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->hasRound:Z

    if-eqz v0, :cond_67

    iget-wide v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundDuration:J

    long-to-float v0, v0

    iget v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundRight:F

    :goto_53
    mul-float v0, v0, v1

    float-to-long v0, v0

    goto :goto_51

    :cond_67
    iget-wide v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioDuration:J

    long-to-float v0, v0

    iget v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioRight:F

    goto :goto_53

    :goto_54
    mul-float v6, v7, v14

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v10

    move v3, v11

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Stories/recorder/TimelineView;->drawProgress(Landroid/graphics/Canvas;FFJF)V

    :cond_68
    iget-wide v4, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->progress:J

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v1, v0, v7

    mul-float v6, v1, v14

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v10

    move v3, v11

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Stories/recorder/TimelineView;->drawProgress(Landroid/graphics/Canvas;FFJF)V

    :goto_55
    if-eqz v28, :cond_6a

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_56

    :cond_69
    move-wide/from16 v46, v14

    :cond_6a
    :goto_56
    iget-boolean v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->dragged:Z

    if-eqz v0, :cond_77

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->screenRefreshRate:F

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    div-float v10, v0, v1

    const/high16 v0, 0x42000000    # 32.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    iget v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->sw:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    move-wide/from16 v1, v46

    long-to-float v3, v1

    mul-float v0, v0, v3

    mul-float v0, v0, v10

    iget v3, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->dragSpeed:F

    mul-float v0, v0, v3

    float-to-long v4, v0

    iget-boolean v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->isCover:Z

    if-eqz v0, :cond_6b

    const/high16 v0, 0x3e800000    # 0.25f

    mul-float v10, v10, v0

    add-float/2addr v3, v10

    iput v3, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->dragSpeed:F

    :cond_6b
    iget v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->pressHandle:I

    const/4 v3, 0x4

    if-ne v0, v3, :cond_6f

    iget-object v3, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoTrack:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    if-eqz v3, :cond_6f

    iget v0, v3, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->left:F

    iget-wide v6, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->scroll:J

    long-to-float v9, v6

    iget-wide v10, v3, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->duration:J

    long-to-float v12, v10

    div-float/2addr v9, v12

    cmpg-float v0, v0, v9

    if-gez v0, :cond_6c

    const/4 v13, -0x1

    goto :goto_57

    :cond_6c
    iget v0, v3, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->right:F

    add-long v14, v6, v1

    long-to-float v3, v14

    div-float/2addr v3, v12

    cmpl-float v0, v0, v3

    if-lez v0, :cond_6d

    const/4 v13, 0x1

    goto :goto_57

    :cond_6d
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->dragSpeed:F

    const/4 v13, 0x0

    :goto_57
    int-to-long v12, v13

    mul-long v12, v12, v4

    add-long v14, v6, v12

    sub-long v16, v10, v1

    const-wide/16 v18, 0x0

    invoke-static/range {v14 .. v19}, Lorg/telegram/messenger/Utilities;->clamp(JJJ)J

    move-result-wide v0

    iput-wide v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->scroll:J

    iget-wide v2, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->progress:J

    add-long/2addr v2, v12

    iput-wide v2, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->progress:J

    sub-long/2addr v0, v6

    long-to-float v0, v0

    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoTrack:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    iget-wide v2, v1, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->duration:J

    long-to-float v2, v2

    div-float/2addr v0, v2

    const/4 v2, 0x0

    cmpl-float v3, v0, v2

    if-lez v3, :cond_6e

    iget v1, v1, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->right:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v10, v3, v1

    invoke-static {v10, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_58

    :cond_6e
    const/high16 v3, 0x3f800000    # 1.0f

    iget v1, v1, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->left:F

    sub-float v4, v2, v1

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    :goto_58
    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoTrack:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    iget v4, v1, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->left:F

    add-float/2addr v4, v0

    invoke-static {v4, v3, v2}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v4

    iput v4, v1, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->left:F

    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoTrack:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    iget v4, v1, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->right:F

    add-float/2addr v4, v0

    invoke-static {v4, v3, v2}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->right:F

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->delegate:Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;

    if-eqz v0, :cond_76

    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoTrack:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    iget v1, v1, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->left:F

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;->onVideoLeftChange(ZF)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->delegate:Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;

    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoTrack:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    iget v1, v1, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->right:F

    invoke-interface {v0, v3, v1}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;->onVideoRightChange(ZF)V

    goto/16 :goto_5e

    :cond_6f
    const/4 v3, 0x0

    const/16 v6, 0x8

    if-ne v0, v6, :cond_77

    iget v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioLeft:F

    iget-wide v6, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioOffset:J

    neg-long v9, v6

    const-wide/16 v11, 0x64

    add-long/2addr v11, v9

    long-to-float v11, v11

    iget-wide v12, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioDuration:J

    long-to-float v14, v12

    div-float/2addr v11, v14

    cmpg-float v11, v0, v11

    if-gez v11, :cond_70

    const/4 v1, -0x1

    goto :goto_59

    :cond_70
    iget v11, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioRight:F

    add-long/2addr v9, v1

    const-wide/16 v1, 0x64

    sub-long/2addr v9, v1

    long-to-float v1, v9

    div-float/2addr v1, v14

    cmpl-float v1, v11, v1

    if-ltz v1, :cond_71

    const/4 v1, 0x1

    goto :goto_59

    :cond_71
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->dragSpeed:F

    const/4 v1, 0x0

    :goto_59
    if-eqz v1, :cond_77

    iget-boolean v2, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioSelected:Z

    if-eqz v2, :cond_72

    iget-object v2, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoTrack:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    if-eqz v2, :cond_72

    int-to-long v9, v1

    mul-long v9, v9, v4

    sub-long v15, v6, v9

    iget v1, v2, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->right:F

    iget-wide v4, v2, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->duration:J

    long-to-float v4, v4

    mul-float v1, v1, v4

    mul-float v0, v0, v14

    sub-float/2addr v1, v0

    float-to-long v0, v1

    iget v2, v2, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->left:F

    mul-float v2, v2, v4

    iget v4, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioRight:F

    mul-float v4, v4, v14

    sub-float/2addr v2, v4

    float-to-long v4, v2

    :goto_5a
    move-wide/from16 v17, v0

    move-wide/from16 v19, v4

    invoke-static/range {v15 .. v20}, Lorg/telegram/messenger/Utilities;->clamp(JJJ)J

    move-result-wide v0

    :goto_5b
    iput-wide v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioOffset:J

    goto :goto_5c

    :cond_72
    iget-boolean v2, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundSelected:Z

    if-eqz v2, :cond_73

    iget-boolean v2, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->hasRound:Z

    if-eqz v2, :cond_73

    int-to-long v1, v1

    mul-long v1, v1, v4

    sub-long v15, v6, v1

    iget v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundRight:F

    iget-wide v4, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundDuration:J

    long-to-float v2, v4

    mul-float v1, v1, v2

    mul-float v0, v0, v14

    sub-float/2addr v1, v0

    float-to-long v0, v1

    iget v4, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundLeft:F

    mul-float v4, v4, v2

    iget v2, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioRight:F

    mul-float v2, v2, v14

    sub-float/2addr v4, v2

    float-to-long v4, v4

    goto :goto_5a

    :cond_73
    int-to-long v0, v1

    mul-long v0, v0, v4

    sub-long v14, v6, v0

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->getBaseDuration()J

    move-result-wide v0

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->getMaxScrollDuration()J

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    sub-long/2addr v12, v0

    neg-long v0, v12

    const-wide/16 v16, 0x0

    move-wide/from16 v18, v0

    invoke-static/range {v14 .. v19}, Lorg/telegram/messenger/Utilities;->clamp(JJJ)J

    move-result-wide v0

    goto :goto_5b

    :goto_5c
    iget-wide v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioOffset:J

    sub-long/2addr v0, v6

    neg-long v0, v0

    long-to-float v0, v0

    iget-wide v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioDuration:J

    long-to-float v1, v1

    div-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_74

    iget v2, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioRight:F

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v10, v4, v2

    invoke-static {v10, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_5d

    :cond_74
    iget v2, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioLeft:F

    sub-float v4, v1, v2

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    :goto_5d
    iget-object v2, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoTrack:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    if-nez v2, :cond_75

    iget-wide v4, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->progress:J

    long-to-float v2, v4

    iget-wide v4, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioDuration:J

    long-to-float v4, v4

    mul-float v5, v0, v4

    add-float/2addr v2, v5

    invoke-static {v2, v4, v1}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v2

    float-to-long v4, v2

    iput-wide v4, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->progress:J

    :cond_75
    iget v2, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioLeft:F

    add-float/2addr v2, v0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v2, v4, v1}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v2

    iput v2, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioLeft:F

    iget v2, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioRight:F

    add-float/2addr v2, v0

    invoke-static {v2, v4, v1}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v0

    iput v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioRight:F

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->delegate:Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;

    if-eqz v0, :cond_76

    iget v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioLeft:F

    invoke-interface {v0, v1}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;->onAudioLeftChange(F)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->delegate:Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;

    iget v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioRight:F

    invoke-interface {v0, v1}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;->onAudioRightChange(F)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->delegate:Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;

    iget-wide v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->progress:J

    invoke-interface {v0, v1, v2, v3}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;->onProgressChange(JZ)V

    :cond_76
    :goto_5e
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    goto :goto_5f

    :cond_77
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->dragSpeed:F

    :goto_5f
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->getContentHeight()I

    move-result v0

    iget v1, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->lastHeight:I

    if-eq v1, v0, :cond_78

    iput v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->lastHeight:I

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/TimelineView;->onHeightChange:Ljava/lang/Runnable;

    if-eqz v0, :cond_78

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_78
    return-void
.end method

.method public getContentHeight()I
    .locals 5

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->py:I

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoTrack:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    const/4 v2, 0x0

    const/high16 v3, 0x40800000    # 4.0f

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->getVideoHeight()F

    move-result v1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v1, v4

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-float/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->collageTracks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->getCollageHeight()F

    move-result v1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v1, v4

    :goto_1
    add-float/2addr v0, v1

    iget-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->hasRound:Z

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->getRoundHeight()F

    move-result v1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v1, v4

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-float/2addr v0, v1

    iget-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->hasAudio:Z

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->getAudioHeight()F

    move-result v1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v1

    :cond_3
    add-float/2addr v0, v2

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->py:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getMaxCount()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->maxCount:I

    return v0
.end method

.method public getMaxScrollDuration()J
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->collageTracks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->maxSelectDuration()J

    move-result-wide v0

    long-to-float v0, v0

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float v0, v0, v1

    float-to-long v0, v0

    const-wide/32 v2, 0x1d4c0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/32 v0, 0x11170

    return-wide v0
.end method

.method public getTimelineHeight()I
    .locals 3

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->py:I

    const/high16 v1, 0x41e00000    # 28.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->py:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->getContentHeight()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->openT:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v0

    return v0
.end method

.method public isDragging()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->dragged:Z

    return v0
.end method

.method public normalizeScrollByVideo()V
    .locals 13

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->getBaseDuration()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->getMaxScrollDuration()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoTrack:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    iget v3, v2, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->right:F

    iget v4, v2, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->left:F

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget-wide v5, v2, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->duration:J

    long-to-float v2, v5

    mul-float v3, v3, v2

    long-to-float v2, v0

    div-float/2addr v2, v4

    sub-float/2addr v3, v2

    float-to-long v7, v3

    sub-long v9, v5, v0

    const-wide/16 v11, 0x0

    invoke-static/range {v7 .. v12}, Lorg/telegram/messenger/Utilities;->clamp(JJJ)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->scroll:J

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onBackPressed()Z
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioSelected:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioSelected:Z

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->hasRound:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoTrack:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundSelected:Z

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->delegate:Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;->onRoundSelectChange(Z)V

    :cond_0
    return v1
.end method

.method protected onMeasure(II)V
    .locals 3

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioAuthorPaint:Landroid/text/TextPaint;

    const/high16 v0, 0x41400000    # 12.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioTitlePaint:Landroid/text/TextPaint;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    iput p2, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->px:I

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->py:I

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {p0, p2, v2, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->w:I

    invoke-static {}, Lorg/telegram/ui/Stories/recorder/TimelineView;->heightDp()I

    move-result p2

    int-to-float p2, p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    iput p2, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->h:I

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    const/high16 p1, 0x41200000    # 10.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->ph:I

    iget p2, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->w:I

    mul-int/lit8 p1, p1, 0x2

    sub-int/2addr p2, p1

    iget p1, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->px:I

    mul-int/lit8 p1, p1, 0x2

    sub-int/2addr p2, p1

    iput p2, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->sw:I

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoTrack:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p1, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->path:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->thumbs:Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->access$500(Lorg/telegram/ui/Stories/recorder/TimelineView$Track;Z)V

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->collageTracks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->collageTracks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->path:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->thumbs:Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;

    if-nez v1, :cond_1

    invoke-static {v0, p2}, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->access$500(Lorg/telegram/ui/Stories/recorder/TimelineView$Track;Z)V

    invoke-static {v0, p2}, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->access$700(Lorg/telegram/ui/Stories/recorder/TimelineView$Track;Z)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioPath:Ljava/lang/String;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->waveform:Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;

    if-nez p1, :cond_3

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->setupAudioWaveform()V

    :cond_3
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 26

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoTrack:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->collageTracks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->hasAudio:Z

    if-nez v1, :cond_0

    iget-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->hasRound:Z

    if-nez v1, :cond_0

    return v2

    :cond_0
    iget v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->h:I

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->getTimelineHeight()I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    cmpg-float v1, v3, v1

    if-gez v1, :cond_1

    return v2

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v5, 0x5

    const/16 v6, 0xa

    const/4 v7, 0x0

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/16 v10, 0x8

    const/4 v11, -0x1

    const/4 v13, 0x1

    if-nez v1, :cond_11

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->askExactSeek:Ljava/lang/Runnable;

    if-eqz v1, :cond_2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iput-object v7, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->askExactSeek:Ljava/lang/Runnable;

    :cond_2
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->scroller:Lorg/telegram/ui/Components/Scroller;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Scroller;->abortAnimation()V

    iput v11, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->pressHandleCollageIndex:I

    invoke-direct/range {p0 .. p1}, Lorg/telegram/ui/Stories/recorder/TimelineView;->detectHandle(Landroid/view/MotionEvent;)I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->pressHandle:I

    iput v11, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->pressType:I

    iput v11, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->pressCollageIndex:I

    iget v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->h:I

    iget v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->py:I

    sub-int/2addr v1, v3

    iget-boolean v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->open:Z

    if-nez v3, :cond_3

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->timelineBounds:Landroid/graphics/RectF;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v14

    invoke-virtual {v3, v4, v14}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v3

    if-eqz v3, :cond_3

    iput v6, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->pressType:I

    iput v11, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->pressHandle:I

    :cond_3
    iget v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->pressType:I

    const/high16 v4, 0x40800000    # 4.0f

    const/high16 v6, 0x40000000    # 2.0f

    if-ne v3, v11, :cond_5

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoTrack:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    if-eqz v3, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    int-to-float v1, v1

    cmpg-float v3, v3, v1

    if-gez v3, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->getVideoHeight()F

    move-result v14

    sub-float v14, v1, v14

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    int-to-float v15, v15

    sub-float/2addr v14, v15

    cmpl-float v3, v3, v14

    if-lez v3, :cond_4

    iput v2, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->pressType:I

    :cond_4
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->getVideoHeight()F

    move-result v3

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    int-to-float v14, v14

    add-float/2addr v3, v14

    sub-float/2addr v1, v3

    float-to-int v1, v1

    :cond_5
    iget v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->pressType:I

    if-ne v3, v11, :cond_7

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->collageTracks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    const/4 v3, 0x0

    :goto_0
    iget-object v14, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->collageTracks:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v3, v14, :cond_7

    iget-object v14, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->collageTracks:Ljava/util/ArrayList;

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    invoke-static {v14}, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->access$800(Lorg/telegram/ui/Stories/recorder/TimelineView$Track;)Lorg/telegram/ui/Components/AnimatedFloat;

    move-result-object v14

    invoke-virtual {v14}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v14

    const/high16 v15, 0x41e00000    # 28.0f

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    const/high16 v16, 0x42180000    # 38.0f

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    invoke-static {v15, v12, v14}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v12

    int-to-float v12, v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v14

    int-to-float v15, v1

    cmpg-float v14, v14, v15

    if-gez v14, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v14

    sub-float v16, v15, v12

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    sub-float v16, v16, v7

    cmpl-float v7, v14, v16

    if-lez v7, :cond_6

    iput v8, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->pressType:I

    iput v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->pressCollageIndex:I

    goto :goto_1

    :cond_6
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v12, v1

    sub-float/2addr v15, v12

    float-to-int v1, v15

    add-int/lit8 v3, v3, 0x1

    const/4 v7, 0x0

    goto :goto_0

    :cond_7
    :goto_1
    iget v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->pressType:I

    if-ne v3, v11, :cond_9

    iget-boolean v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->hasRound:Z

    if-eqz v3, :cond_9

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    int-to-float v1, v1

    cmpg-float v3, v3, v1

    if-gez v3, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->getRoundHeight()F

    move-result v7

    sub-float v7, v1, v7

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v7, v8

    cmpl-float v3, v3, v7

    if-lez v3, :cond_8

    iput v13, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->pressType:I

    :cond_8
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->getRoundHeight()F

    move-result v3

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v3, v7

    sub-float/2addr v1, v3

    float-to-int v1, v1

    :cond_9
    iget v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->pressType:I

    if-ne v3, v11, :cond_b

    iget-boolean v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->hasAudio:Z

    if-eqz v3, :cond_b

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    int-to-float v1, v1

    cmpg-float v3, v3, v1

    if-gez v3, :cond_a

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->getAudioHeight()F

    move-result v7

    sub-float/2addr v1, v7

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v1, v6

    cmpl-float v1, v3, v1

    if-lez v1, :cond_a

    iput v9, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->pressType:I

    :cond_a
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->getAudioHeight()F

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    :cond_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->pressTime:J

    iget v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->pressHandle:I

    if-eqz v1, :cond_d

    if-eq v1, v11, :cond_d

    if-ne v1, v13, :cond_c

    goto :goto_2

    :cond_c
    const/4 v3, 0x0

    goto :goto_3

    :cond_d
    :goto_2
    const/4 v3, 0x1

    :goto_3
    iput-boolean v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->draggingProgress:Z

    iput-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->hadDragChange:Z

    if-eq v1, v13, :cond_10

    if-eq v1, v5, :cond_10

    if-ne v1, v10, :cond_e

    goto :goto_5

    :cond_e
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v1, 0x0

    :goto_4
    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->velocityTracker:Landroid/view/VelocityTracker;

    :cond_f
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_6

    :cond_10
    :goto_5
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    goto :goto_4

    :goto_6
    iput v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->dragSpeed:F

    iput-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->dragged:Z

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->lastX:F

    iget-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->isCover:Z

    if-nez v1, :cond_75

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->onLongPress:Ljava/lang/Runnable;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->onLongPress:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto/16 :goto_2d

    :cond_11
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/16 v7, 0xc

    const/4 v12, 0x0

    if-ne v1, v9, :cond_59

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v11, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->lastX:F

    sub-float/2addr v1, v11

    iget-boolean v11, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->open:Z

    if-eqz v11, :cond_56

    iget-boolean v11, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->dragged:Z

    if-nez v11, :cond_12

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v11

    sget v16, Lorg/telegram/messenger/AndroidUtilities;->touchSlop:F

    cmpl-float v11, v11, v16

    if-lez v11, :cond_56

    :cond_12
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->getBaseDuration()J

    move-result-wide v14

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->getMaxScrollDuration()J

    move-result-wide v5

    invoke-static {v14, v15, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    iget-object v11, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoTrack:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    if-eqz v11, :cond_14

    iget v14, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->pressHandle:I

    if-ne v14, v13, :cond_14

    iget-wide v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->scroll:J

    long-to-float v3, v3

    iget v4, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->sw:I

    int-to-float v4, v4

    div-float/2addr v1, v4

    long-to-float v4, v5

    mul-float v1, v1, v4

    sub-float/2addr v3, v1

    iget-wide v7, v11, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->duration:J

    sub-long/2addr v7, v5

    long-to-float v1, v7

    invoke-static {v3, v1, v12}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v1

    float-to-long v3, v1

    iput-wide v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->scroll:J

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    iget-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->dragged:Z

    if-nez v1, :cond_13

    :goto_7
    const/high16 v1, 0x3f800000    # 1.0f

    goto/16 :goto_1c

    :cond_13
    :goto_8
    const/4 v1, 0x1

    goto/16 :goto_1d

    :cond_14
    if-eqz v11, :cond_1e

    iget v14, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->pressHandle:I

    const/4 v15, 0x4

    if-eq v14, v9, :cond_15

    if-eq v14, v8, :cond_15

    if-ne v14, v15, :cond_1e

    :cond_15
    iget v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->sw:I

    int-to-float v3, v3

    div-float/2addr v1, v3

    long-to-float v3, v5

    iget-wide v4, v11, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->duration:J

    long-to-float v4, v4

    div-float/2addr v3, v4

    mul-float v1, v1, v3

    const/high16 v3, 0x447a0000    # 1000.0f

    if-ne v14, v9, :cond_17

    iget v5, v11, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->left:F

    add-float/2addr v5, v1

    iget v1, v11, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->right:F

    div-float/2addr v3, v4

    sub-float/2addr v1, v3

    invoke-static {v5, v1, v12}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v1

    iput v1, v11, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->left:F

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->delegate:Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;

    if-eqz v1, :cond_16

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoTrack:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    iget v3, v3, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->left:F

    invoke-interface {v1, v2, v3}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;->onVideoLeftChange(ZF)V

    :cond_16
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoTrack:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    iget v3, v1, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->right:F

    iget v1, v1, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->left:F

    sub-float/2addr v3, v1

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->maxSelectDuration()J

    move-result-wide v4

    long-to-float v1, v4

    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoTrack:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    iget-wide v5, v4, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->duration:J

    long-to-float v5, v5

    div-float/2addr v1, v5

    cmpl-float v1, v3, v1

    if-lez v1, :cond_1b

    iget v1, v4, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->left:F

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->maxSelectDuration()J

    move-result-wide v5

    long-to-float v3, v5

    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoTrack:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    iget-wide v5, v5, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->duration:J

    long-to-float v5, v5

    div-float/2addr v3, v5

    add-float/2addr v1, v3

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, v4, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->right:F

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->delegate:Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;

    if-eqz v1, :cond_1b

    :goto_9
    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoTrack:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    iget v3, v3, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->right:F

    invoke-interface {v1, v2, v3}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;->onVideoRightChange(ZF)V

    goto/16 :goto_b

    :cond_17
    if-ne v14, v8, :cond_19

    iget v5, v11, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->right:F

    add-float/2addr v5, v1

    iget v1, v11, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->left:F

    div-float/2addr v3, v4

    add-float/2addr v1, v3

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v5, v3, v1}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v1

    iput v1, v11, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->right:F

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->delegate:Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;

    if-eqz v1, :cond_18

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoTrack:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    iget v3, v3, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->right:F

    invoke-interface {v1, v2, v3}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;->onVideoRightChange(ZF)V

    :cond_18
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoTrack:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    iget v3, v1, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->right:F

    iget v1, v1, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->left:F

    sub-float/2addr v3, v1

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->maxSelectDuration()J

    move-result-wide v4

    long-to-float v1, v4

    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoTrack:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    iget-wide v5, v4, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->duration:J

    long-to-float v5, v5

    div-float/2addr v1, v5

    cmpl-float v1, v3, v1

    if-lez v1, :cond_1b

    iget v1, v4, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->right:F

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->maxSelectDuration()J

    move-result-wide v5

    long-to-float v3, v5

    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoTrack:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    iget-wide v5, v5, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->duration:J

    long-to-float v5, v5

    div-float/2addr v3, v5

    sub-float/2addr v1, v3

    invoke-static {v12, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v4, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->left:F

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->delegate:Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;

    if-eqz v1, :cond_1b

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoTrack:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    iget v3, v3, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->left:F

    invoke-interface {v1, v2, v3}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;->onVideoLeftChange(ZF)V

    goto :goto_b

    :cond_19
    if-ne v14, v15, :cond_1b

    cmpl-float v3, v1, v12

    if-lez v3, :cond_1a

    iget v3, v11, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->right:F

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v12, v4, v3

    invoke-static {v12, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    goto :goto_a

    :cond_1a
    iget v3, v11, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->left:F

    neg-float v3, v3

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    :goto_a
    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoTrack:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    iget v4, v3, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->left:F

    add-float/2addr v4, v1

    iput v4, v3, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->left:F

    iget v5, v3, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->right:F

    add-float/2addr v5, v1

    iput v5, v3, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->right:F

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->delegate:Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;

    if-eqz v1, :cond_1b

    invoke-interface {v1, v2, v4}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;->onVideoLeftChange(ZF)V

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->delegate:Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;

    goto/16 :goto_9

    :cond_1b
    :goto_b
    iget-wide v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->progress:J

    long-to-float v1, v3

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoTrack:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    iget-wide v4, v3, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->duration:J

    long-to-float v4, v4

    div-float/2addr v1, v4

    iget v5, v3, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->left:F

    cmpg-float v6, v1, v5

    if-ltz v6, :cond_1c

    iget v3, v3, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->right:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_1d

    :cond_1c
    mul-float v5, v5, v4

    float-to-long v3, v5

    iput-wide v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->progress:J

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->delegate:Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;

    if-eqz v1, :cond_1d

    invoke-interface {v1, v3, v4, v2}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;->onProgressChange(JZ)V

    :cond_1d
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    iget-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->dragged:Z

    if-nez v1, :cond_13

    goto/16 :goto_7

    :cond_1e
    iget v8, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->pressHandle:I

    const/4 v9, 0x6

    if-eq v8, v9, :cond_43

    const/4 v14, 0x7

    if-eq v8, v14, :cond_43

    if-ne v8, v10, :cond_1f

    goto/16 :goto_15

    :cond_1f
    const/16 v14, 0xa

    if-eq v8, v14, :cond_33

    const/16 v9, 0xb

    if-eq v8, v9, :cond_33

    if-ne v8, v7, :cond_20

    goto/16 :goto_f

    :cond_20
    iget v7, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->pressHandleCollageIndex:I

    if-ltz v7, :cond_2c

    iget-object v8, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->collageTracks:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_2c

    iget v7, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->pressHandle:I

    const/16 v8, 0xd

    const/16 v9, 0xf

    if-eq v7, v8, :cond_21

    const/16 v8, 0xe

    if-eq v7, v8, :cond_21

    if-ne v7, v9, :cond_2c

    :cond_21
    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->collageTracks:Ljava/util/ArrayList;

    iget v4, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->pressHandleCollageIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    iget v4, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->sw:I

    int-to-float v4, v4

    div-float/2addr v1, v4

    long-to-float v4, v5

    iget-wide v7, v3, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->duration:J

    long-to-float v7, v7

    div-float/2addr v4, v7

    mul-float v1, v1, v4

    iget v4, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->pressHandle:I

    const/16 v7, 0xd

    if-ne v4, v7, :cond_25

    iget v4, v3, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->right:F

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->minAudioSelect()J

    move-result-wide v7

    long-to-float v7, v7

    iget-wide v14, v3, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->duration:J

    long-to-float v8, v14

    div-float/2addr v7, v8

    sub-float/2addr v4, v7

    iget-wide v7, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->scroll:J

    iget-wide v14, v3, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->offset:J

    sub-long/2addr v7, v14

    const-wide/16 v14, 0x0

    invoke-static {v14, v15, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    long-to-float v7, v7

    iget-wide v14, v3, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->duration:J

    long-to-float v8, v14

    div-float/2addr v7, v8

    iget-object v8, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->collageMain:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    if-ne v3, v8, :cond_22

    iget v8, v3, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->right:F

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->maxSelectDuration()J

    move-result-wide v14

    long-to-float v14, v14

    iget-wide v10, v3, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->duration:J

    long-to-float v10, v10

    div-float/2addr v14, v10

    sub-float/2addr v8, v14

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iget-boolean v8, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->hadDragChange:Z

    if-nez v8, :cond_22

    cmpg-float v8, v1, v12

    if-gez v8, :cond_22

    iget v8, v3, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->left:F

    iget v10, v3, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->right:F

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->maxSelectDuration()J

    move-result-wide v12

    long-to-float v11, v12

    iget-wide v12, v3, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->duration:J

    long-to-float v12, v12

    div-float/2addr v11, v12

    sub-float/2addr v10, v11

    cmpg-float v8, v8, v10

    if-gtz v8, :cond_22

    iput v9, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->pressHandle:I

    :cond_22
    iget v8, v3, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->left:F

    add-float v10, v8, v1

    invoke-static {v10, v4, v7}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v4

    iput v4, v3, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->left:F

    sub-float/2addr v8, v4

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const v7, 0x3c23d70a    # 0.01f

    cmpl-float v4, v4, v7

    if-lez v4, :cond_23

    const/4 v4, 0x1

    iput-boolean v4, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->hadDragChange:Z

    :cond_23
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->delegate:Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;

    if-eqz v4, :cond_24

    iget v7, v3, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->index:I

    iget-wide v10, v3, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->offset:J

    invoke-interface {v4, v7, v10, v11}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;->onVideoOffsetChange(IJ)V

    :cond_24
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->delegate:Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;

    if-eqz v4, :cond_28

    iget v7, v3, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->index:I

    iget v8, v3, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->left:F

    invoke-interface {v4, v7, v8}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;->onVideoLeftChange(IF)V

    goto/16 :goto_c

    :cond_25
    const/16 v7, 0xe

    if-ne v4, v7, :cond_28

    iget-wide v7, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->scroll:J

    iget-wide v10, v3, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->offset:J

    sub-long/2addr v7, v10

    add-long/2addr v7, v5

    const-wide/16 v10, 0x0

    invoke-static {v10, v11, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    long-to-float v4, v7

    iget-wide v7, v3, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->duration:J

    long-to-float v7, v7

    div-float/2addr v4, v7

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v7, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iget v7, v3, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->left:F

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->minAudioSelect()J

    move-result-wide v10

    long-to-float v8, v10

    iget-wide v10, v3, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->duration:J

    long-to-float v10, v10

    div-float/2addr v8, v10

    add-float/2addr v7, v8

    iget-object v8, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->collageMain:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    if-ne v3, v8, :cond_26

    iget v8, v3, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->left:F

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->maxSelectDuration()J

    move-result-wide v10

    long-to-float v10, v10

    iget-wide v11, v3, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->duration:J

    long-to-float v11, v11

    div-float/2addr v10, v11

    add-float/2addr v8, v10

    invoke-static {v4, v8}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iget-boolean v8, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->hadDragChange:Z

    if-nez v8, :cond_26

    const/4 v8, 0x0

    cmpl-float v10, v1, v8

    if-lez v10, :cond_26

    iget v8, v3, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->right:F

    iget v10, v3, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->left:F

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->maxSelectDuration()J

    move-result-wide v11

    long-to-float v11, v11

    iget-wide v12, v3, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->duration:J

    long-to-float v12, v12

    div-float/2addr v11, v12

    add-float/2addr v10, v11

    cmpl-float v8, v8, v10

    if-ltz v8, :cond_26

    iput v9, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->pressHandle:I

    :cond_26
    iget v8, v3, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->right:F

    add-float v10, v8, v1

    invoke-static {v10, v4, v7}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v4

    iput v4, v3, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->right:F

    sub-float/2addr v8, v4

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const v7, 0x3c23d70a    # 0.01f

    cmpl-float v4, v4, v7

    if-lez v4, :cond_27

    const/4 v4, 0x1

    iput-boolean v4, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->hadDragChange:Z

    :cond_27
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->delegate:Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;

    if-eqz v4, :cond_28

    iget v7, v3, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->index:I

    iget v8, v3, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->right:F

    invoke-interface {v4, v7, v8}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;->onVideoRightChange(IF)V

    :cond_28
    :goto_c
    iget v4, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->pressHandle:I

    if-ne v4, v9, :cond_2b

    iget-wide v7, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->scroll:J

    iget-wide v9, v3, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->offset:J

    sub-long/2addr v7, v9

    const-wide/16 v9, 0x0

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    long-to-float v4, v7

    iget-wide v7, v3, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->duration:J

    long-to-float v7, v7

    div-float/2addr v4, v7

    iget-wide v7, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->scroll:J

    iget-wide v11, v3, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->offset:J

    sub-long/2addr v7, v11

    add-long/2addr v7, v5

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    long-to-float v5, v5

    iget-wide v6, v3, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->duration:J

    long-to-float v6, v6

    div-float/2addr v5, v6

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v6, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v6, v1, v6

    if-lez v6, :cond_29

    iget v4, v3, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->right:F

    sub-float/2addr v5, v4

    invoke-static {v5, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    goto :goto_d

    :cond_29
    iget v5, v3, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->left:F

    sub-float/2addr v4, v5

    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    :goto_d
    iget v4, v3, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->left:F

    add-float/2addr v4, v1

    iput v4, v3, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->left:F

    iget v5, v3, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->right:F

    add-float/2addr v5, v1

    iput v5, v3, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->right:F

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->delegate:Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;

    if-eqz v1, :cond_2a

    iget v5, v3, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->index:I

    invoke-interface {v1, v5, v4}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;->onVideoLeftChange(IF)V

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->delegate:Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;

    iget v4, v3, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->index:I

    iget-wide v5, v3, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->offset:J

    invoke-interface {v1, v4, v5, v6}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;->onVideoOffsetChange(IJ)V

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->delegate:Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;

    iget v4, v3, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->index:I

    iget v3, v3, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->right:F

    invoke-interface {v1, v4, v3}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;->onVideoRightChange(IF)V

    :cond_2a
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->delegate:Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;

    if-eqz v1, :cond_2b

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;->onProgressDragChange(Z)V

    :cond_2b
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    iget-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->dragged:Z

    if-nez v1, :cond_13

    goto/16 :goto_7

    :cond_2c
    iget v7, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->pressHandle:I

    const/4 v8, 0x5

    if-ne v7, v8, :cond_2d

    iget v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->sw:I

    int-to-float v3, v3

    div-float/2addr v1, v3

    long-to-float v3, v5

    mul-float v1, v1, v3

    invoke-direct {v0, v1}, Lorg/telegram/ui/Stories/recorder/TimelineView;->moveAudioOffset(F)V

    iget-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->dragged:Z

    if-nez v1, :cond_13

    goto/16 :goto_7

    :cond_2d
    const/16 v8, 0x9

    if-ne v7, v8, :cond_2e

    iget v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->sw:I

    int-to-float v3, v3

    div-float/2addr v1, v3

    long-to-float v3, v5

    mul-float v1, v1, v3

    invoke-direct {v0, v1}, Lorg/telegram/ui/Stories/recorder/TimelineView;->moveRoundOffset(F)V

    iget-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->dragged:Z

    if-nez v1, :cond_13

    goto/16 :goto_7

    :cond_2e
    iget v7, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->pressHandleCollageIndex:I

    if-ltz v7, :cond_2f

    iget-object v8, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->collageTracks:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_2f

    iget v7, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->pressHandle:I

    const/16 v8, 0x10

    if-ne v7, v8, :cond_2f

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->collageTracks:Ljava/util/ArrayList;

    iget v4, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->pressHandleCollageIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    iget v4, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->sw:I

    int-to-float v4, v4

    div-float/2addr v1, v4

    long-to-float v4, v5

    mul-float v1, v1, v4

    invoke-direct {v0, v3, v1}, Lorg/telegram/ui/Stories/recorder/TimelineView;->moveCollageOffset(Lorg/telegram/ui/Stories/recorder/TimelineView$Track;F)V

    iget-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->dragged:Z

    if-nez v1, :cond_13

    goto/16 :goto_7

    :cond_2f
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->draggingProgress:Z

    if-eqz v1, :cond_55

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget-wide v5, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->lastTime:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x15e

    cmp-long v7, v3, v5

    if-gez v7, :cond_30

    const/4 v2, 0x1

    :cond_30
    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/TimelineView;->setProgressAt(FZ)Z

    iget-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->dragged:Z

    if-nez v1, :cond_31

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->delegate:Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;

    if-eqz v1, :cond_31

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;->onProgressDragChange(Z)V

    goto :goto_e

    :cond_31
    const/4 v2, 0x1

    :goto_e
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->dragged:Z

    if-nez v1, :cond_32

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->dragSpeed:F

    :cond_32
    iput-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->dragged:Z

    goto/16 :goto_1e

    :cond_33
    :goto_f
    iget v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->sw:I

    int-to-float v3, v3

    div-float/2addr v1, v3

    long-to-float v3, v5

    iget-wide v9, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundDuration:J

    long-to-float v4, v9

    div-float/2addr v3, v4

    mul-float v1, v1, v3

    const/16 v3, 0xa

    if-ne v8, v3, :cond_39

    iget v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundRight:F

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->minAudioSelect()J

    move-result-wide v8

    long-to-float v4, v8

    iget-wide v8, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundDuration:J

    long-to-float v8, v8

    div-float/2addr v4, v8

    sub-float/2addr v3, v4

    iget-wide v8, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->scroll:J

    iget-wide v10, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundOffset:J

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x0

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    long-to-float v4, v8

    iget-wide v8, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundDuration:J

    long-to-float v8, v8

    div-float/2addr v4, v8

    iget-object v9, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoTrack:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    if-eqz v9, :cond_34

    goto :goto_10

    :cond_34
    iget-object v9, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->collageMain:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    if-eqz v9, :cond_35

    :goto_10
    iget v10, v9, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->left:F

    iget-wide v11, v9, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->duration:J

    long-to-float v9, v11

    mul-float v10, v10, v9

    iget-wide v11, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->scroll:J

    long-to-float v9, v11

    add-float/2addr v10, v9

    iget-wide v11, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundOffset:J

    long-to-float v9, v11

    sub-float/2addr v10, v9

    div-float/2addr v10, v8

    invoke-static {v4, v10}, Ljava/lang/Math;->max(FF)F

    move-result v4

    goto :goto_11

    :cond_35
    iget v8, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundRight:F

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->maxSelectDuration()J

    move-result-wide v9

    long-to-float v9, v9

    iget-wide v10, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundDuration:J

    long-to-float v10, v10

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    invoke-static {v4, v8}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iget-boolean v8, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->hadDragChange:Z

    if-nez v8, :cond_36

    const/4 v8, 0x0

    cmpg-float v9, v1, v8

    if-gez v9, :cond_36

    iget v8, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundLeft:F

    iget v9, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundRight:F

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->maxSelectDuration()J

    move-result-wide v10

    long-to-float v10, v10

    iget-wide v11, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundDuration:J

    long-to-float v11, v11

    div-float/2addr v10, v11

    sub-float/2addr v9, v10

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_36

    const/16 v8, 0x8

    iput v8, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->pressHandle:I

    :cond_36
    :goto_11
    iget v8, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundLeft:F

    add-float v9, v8, v1

    invoke-static {v9, v3, v4}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v3

    iput v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundLeft:F

    sub-float/2addr v8, v3

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const v4, 0x3c23d70a    # 0.01f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_37

    const/4 v3, 0x1

    iput-boolean v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->hadDragChange:Z

    :cond_37
    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->delegate:Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;

    if-eqz v3, :cond_38

    iget-wide v8, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundOffset:J

    iget v4, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundLeft:F

    iget-wide v10, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundDuration:J

    long-to-float v10, v10

    mul-float v4, v4, v10

    float-to-long v10, v4

    add-long/2addr v8, v10

    invoke-interface {v3, v8, v9}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;->onRoundOffsetChange(J)V

    :cond_38
    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->delegate:Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;

    if-eqz v3, :cond_3e

    iget v4, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundLeft:F

    invoke-interface {v3, v4}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;->onRoundLeftChange(F)V

    goto/16 :goto_13

    :cond_39
    const/16 v3, 0xb

    if-ne v8, v3, :cond_3e

    iget-wide v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->scroll:J

    iget-wide v8, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundOffset:J

    sub-long/2addr v3, v8

    add-long/2addr v3, v5

    const-wide/16 v8, 0x0

    invoke-static {v8, v9, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    long-to-float v3, v3

    iget-wide v8, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundDuration:J

    long-to-float v4, v8

    div-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iget v4, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundLeft:F

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->minAudioSelect()J

    move-result-wide v8

    long-to-float v8, v8

    iget-wide v9, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundDuration:J

    long-to-float v9, v9

    div-float/2addr v8, v9

    add-float/2addr v4, v8

    iget-object v8, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoTrack:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    if-eqz v8, :cond_3a

    iget v10, v8, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->right:F

    iget-wide v11, v8, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->duration:J

    long-to-float v8, v11

    mul-float v10, v10, v8

    iget-wide v11, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->scroll:J

    long-to-float v8, v11

    add-float/2addr v10, v8

    iget-wide v11, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundOffset:J

    long-to-float v8, v11

    sub-float/2addr v10, v8

    div-float/2addr v10, v9

    invoke-static {v3, v10}, Ljava/lang/Math;->min(FF)F

    move-result v3

    :cond_3a
    iget-object v8, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->collageMain:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    if-eqz v8, :cond_3b

    iget v9, v8, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->right:F

    iget-wide v10, v8, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->duration:J

    long-to-float v8, v10

    mul-float v9, v9, v8

    iget-wide v10, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->scroll:J

    long-to-float v8, v10

    add-float/2addr v9, v8

    iget-wide v10, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundOffset:J

    long-to-float v8, v10

    sub-float/2addr v9, v8

    iget-wide v10, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundDuration:J

    long-to-float v8, v10

    div-float/2addr v9, v8

    invoke-static {v3, v9}, Ljava/lang/Math;->min(FF)F

    move-result v3

    goto :goto_12

    :cond_3b
    iget v8, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundLeft:F

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->maxSelectDuration()J

    move-result-wide v9

    long-to-float v9, v9

    iget-wide v10, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundDuration:J

    long-to-float v10, v10

    div-float/2addr v9, v10

    add-float/2addr v8, v9

    invoke-static {v3, v8}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iget-boolean v8, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->hadDragChange:Z

    if-nez v8, :cond_3c

    const/4 v8, 0x0

    cmpl-float v9, v1, v8

    if-lez v9, :cond_3c

    iget v8, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundRight:F

    iget v9, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundLeft:F

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->maxSelectDuration()J

    move-result-wide v10

    long-to-float v10, v10

    iget-wide v11, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundDuration:J

    long-to-float v11, v11

    div-float/2addr v10, v11

    add-float/2addr v9, v10

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_3c

    const/16 v8, 0x8

    iput v8, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->pressHandle:I

    :cond_3c
    :goto_12
    iget v8, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundRight:F

    add-float v9, v8, v1

    invoke-static {v9, v3, v4}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v3

    iput v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundRight:F

    sub-float/2addr v8, v3

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const v4, 0x3c23d70a    # 0.01f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3d

    const/4 v3, 0x1

    iput-boolean v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->hadDragChange:Z

    :cond_3d
    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->delegate:Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;

    if-eqz v3, :cond_3e

    iget v4, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundRight:F

    invoke-interface {v3, v4}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;->onRoundRightChange(F)V

    :cond_3e
    :goto_13
    iget v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->pressHandle:I

    if-ne v3, v7, :cond_41

    iget-wide v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->scroll:J

    iget-wide v7, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundOffset:J

    sub-long/2addr v3, v7

    const-wide/16 v7, 0x0

    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    long-to-float v3, v3

    iget-wide v9, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundDuration:J

    long-to-float v4, v9

    div-float/2addr v3, v4

    iget-wide v9, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->scroll:J

    iget-wide v11, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundOffset:J

    sub-long/2addr v9, v11

    add-long/2addr v9, v5

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    long-to-float v4, v4

    iget-wide v5, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundDuration:J

    long-to-float v5, v5

    div-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v5, v1, v5

    if-lez v5, :cond_3f

    iget v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundRight:F

    sub-float/2addr v4, v3

    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    goto :goto_14

    :cond_3f
    iget v4, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundLeft:F

    sub-float/2addr v3, v4

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    :goto_14
    iget v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundLeft:F

    add-float/2addr v3, v1

    iput v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundLeft:F

    iget v4, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundRight:F

    add-float/2addr v4, v1

    iput v4, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundRight:F

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->delegate:Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;

    if-eqz v1, :cond_40

    invoke-interface {v1, v3}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;->onRoundLeftChange(F)V

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->delegate:Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;

    iget-wide v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundOffset:J

    iget v5, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundLeft:F

    iget-wide v6, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundDuration:J

    long-to-float v6, v6

    mul-float v5, v5, v6

    float-to-long v5, v5

    add-long/2addr v3, v5

    invoke-interface {v1, v3, v4}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;->onRoundOffsetChange(J)V

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->delegate:Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;

    iget v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundRight:F

    invoke-interface {v1, v3}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;->onRoundRightChange(F)V

    :cond_40
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->delegate:Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;

    if-eqz v1, :cond_41

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;->onProgressDragChange(Z)V

    :cond_41
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoTrack:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    if-nez v1, :cond_42

    iget v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundLeft:F

    iget-wide v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundDuration:J

    long-to-float v3, v3

    mul-float v1, v1, v3

    float-to-long v3, v1

    iput-wide v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->progress:J

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->delegate:Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;

    if-eqz v1, :cond_42

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;->onProgressDragChange(Z)V

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->delegate:Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;

    iget-wide v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->progress:J

    invoke-interface {v1, v3, v4, v2}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;->onProgressChange(JZ)V

    :cond_42
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    iget-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->dragged:Z

    if-nez v1, :cond_13

    goto/16 :goto_7

    :cond_43
    :goto_15
    iget v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->sw:I

    int-to-float v3, v3

    div-float/2addr v1, v3

    long-to-float v3, v5

    iget-wide v10, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioDuration:J

    long-to-float v4, v10

    div-float/2addr v3, v4

    mul-float v1, v1, v3

    if-ne v8, v9, :cond_4a

    iget v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioRight:F

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->minAudioSelect()J

    move-result-wide v7

    long-to-float v4, v7

    iget-wide v7, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioDuration:J

    long-to-float v7, v7

    div-float/2addr v4, v7

    sub-float/2addr v3, v4

    iget-wide v7, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->scroll:J

    iget-wide v9, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioOffset:J

    sub-long/2addr v7, v9

    const-wide/16 v9, 0x0

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    long-to-float v4, v7

    iget-wide v7, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioDuration:J

    long-to-float v7, v7

    div-float/2addr v4, v7

    iget-object v8, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoTrack:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    if-eqz v8, :cond_44

    goto :goto_16

    :cond_44
    iget-object v8, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->collageMain:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    if-eqz v8, :cond_45

    :goto_16
    iget v9, v8, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->left:F

    iget-wide v10, v8, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->duration:J

    long-to-float v8, v10

    mul-float v9, v9, v8

    iget-wide v10, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->scroll:J

    long-to-float v8, v10

    add-float/2addr v9, v8

    iget-wide v10, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioOffset:J

    long-to-float v8, v10

    sub-float/2addr v9, v8

    div-float/2addr v9, v7

    invoke-static {v4, v9}, Ljava/lang/Math;->max(FF)F

    move-result v4

    goto :goto_17

    :cond_45
    iget-boolean v8, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->hasRound:Z

    if-eqz v8, :cond_46

    iget v8, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundLeft:F

    iget-wide v9, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundDuration:J

    long-to-float v9, v9

    mul-float v8, v8, v9

    iget-wide v9, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->scroll:J

    long-to-float v9, v9

    add-float/2addr v8, v9

    iget-wide v9, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioOffset:J

    long-to-float v9, v9

    sub-float/2addr v8, v9

    div-float/2addr v8, v7

    invoke-static {v4, v8}, Ljava/lang/Math;->max(FF)F

    move-result v4

    goto :goto_17

    :cond_46
    iget v7, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioRight:F

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->maxSelectDuration()J

    move-result-wide v8

    long-to-float v8, v8

    iget-wide v9, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioDuration:J

    long-to-float v9, v9

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    invoke-static {v4, v7}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iget-boolean v7, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->hadDragChange:Z

    if-nez v7, :cond_47

    const/4 v7, 0x0

    cmpg-float v8, v1, v7

    if-gez v8, :cond_47

    iget v7, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioLeft:F

    iget v8, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioRight:F

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->maxSelectDuration()J

    move-result-wide v9

    long-to-float v9, v9

    iget-wide v10, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioDuration:J

    long-to-float v10, v10

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_47

    const/16 v7, 0x8

    iput v7, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->pressHandle:I

    :cond_47
    :goto_17
    iget v7, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioLeft:F

    add-float v8, v7, v1

    invoke-static {v8, v3, v4}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v3

    iput v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioLeft:F

    sub-float/2addr v7, v3

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const v4, 0x3c23d70a    # 0.01f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_48

    const/4 v3, 0x1

    iput-boolean v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->hadDragChange:Z

    :cond_48
    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->delegate:Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;

    if-eqz v3, :cond_49

    iget-wide v7, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioOffset:J

    iget v4, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioLeft:F

    iget-wide v9, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioDuration:J

    long-to-float v9, v9

    mul-float v4, v4, v9

    float-to-long v9, v4

    add-long/2addr v7, v9

    invoke-interface {v3, v7, v8}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;->onAudioOffsetChange(J)V

    :cond_49
    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->delegate:Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;

    if-eqz v3, :cond_50

    iget v4, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioLeft:F

    invoke-interface {v3, v4}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;->onAudioLeftChange(F)V

    goto/16 :goto_1a

    :cond_4a
    const/4 v3, 0x7

    if-ne v8, v3, :cond_50

    iget-wide v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->scroll:J

    iget-wide v7, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioOffset:J

    sub-long/2addr v3, v7

    add-long/2addr v3, v5

    const-wide/16 v7, 0x0

    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    long-to-float v3, v3

    iget-wide v7, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioDuration:J

    long-to-float v4, v7

    div-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iget v4, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioLeft:F

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->minAudioSelect()J

    move-result-wide v7

    long-to-float v7, v7

    iget-wide v8, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioDuration:J

    long-to-float v8, v8

    div-float/2addr v7, v8

    add-float/2addr v4, v7

    iget-object v7, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoTrack:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    if-eqz v7, :cond_4b

    goto :goto_18

    :cond_4b
    iget-object v7, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->collageMain:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    if-eqz v7, :cond_4c

    :goto_18
    iget v9, v7, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->right:F

    iget-wide v10, v7, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->duration:J

    long-to-float v7, v10

    mul-float v9, v9, v7

    iget-wide v10, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->scroll:J

    long-to-float v7, v10

    add-float/2addr v9, v7

    iget-wide v10, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioOffset:J

    long-to-float v7, v10

    sub-float/2addr v9, v7

    div-float/2addr v9, v8

    invoke-static {v3, v9}, Ljava/lang/Math;->min(FF)F

    move-result v3

    goto :goto_19

    :cond_4c
    iget-boolean v7, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->hasRound:Z

    if-eqz v7, :cond_4d

    iget v7, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundRight:F

    iget-wide v9, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundDuration:J

    long-to-float v9, v9

    mul-float v7, v7, v9

    iget-wide v9, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->scroll:J

    long-to-float v9, v9

    add-float/2addr v7, v9

    iget-wide v9, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioOffset:J

    long-to-float v9, v9

    sub-float/2addr v7, v9

    div-float/2addr v7, v8

    invoke-static {v3, v7}, Ljava/lang/Math;->min(FF)F

    move-result v3

    goto :goto_19

    :cond_4d
    iget v7, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioLeft:F

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->maxSelectDuration()J

    move-result-wide v8

    long-to-float v8, v8

    iget-wide v9, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioDuration:J

    long-to-float v9, v9

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    invoke-static {v3, v7}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iget-boolean v7, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->hadDragChange:Z

    if-nez v7, :cond_4e

    const/4 v7, 0x0

    cmpl-float v8, v1, v7

    if-lez v8, :cond_4e

    iget v7, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioRight:F

    iget v8, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioLeft:F

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->maxSelectDuration()J

    move-result-wide v9

    long-to-float v9, v9

    iget-wide v10, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioDuration:J

    long-to-float v10, v10

    div-float/2addr v9, v10

    add-float/2addr v8, v9

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_4e

    const/16 v7, 0x8

    iput v7, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->pressHandle:I

    :cond_4e
    :goto_19
    iget v7, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioRight:F

    add-float v8, v7, v1

    invoke-static {v8, v3, v4}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v3

    iput v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioRight:F

    sub-float/2addr v7, v3

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const v4, 0x3c23d70a    # 0.01f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4f

    const/4 v3, 0x1

    iput-boolean v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->hadDragChange:Z

    :cond_4f
    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->delegate:Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;

    if-eqz v3, :cond_50

    iget v4, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioRight:F

    invoke-interface {v3, v4}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;->onAudioRightChange(F)V

    :cond_50
    :goto_1a
    iget v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->pressHandle:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_53

    iget-wide v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->scroll:J

    iget-wide v7, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioOffset:J

    sub-long/2addr v3, v7

    const-wide/16 v7, 0x0

    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    long-to-float v3, v3

    iget-wide v9, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioDuration:J

    long-to-float v4, v9

    div-float/2addr v3, v4

    iget-wide v9, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->scroll:J

    iget-wide v11, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioOffset:J

    sub-long/2addr v9, v11

    add-long/2addr v9, v5

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    long-to-float v4, v4

    iget-wide v5, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioDuration:J

    long-to-float v5, v5

    div-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v6, v1, v5

    if-lez v6, :cond_51

    iget v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioRight:F

    sub-float/2addr v4, v3

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    goto :goto_1b

    :cond_51
    iget v4, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioLeft:F

    sub-float/2addr v3, v4

    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    :goto_1b
    iget v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioLeft:F

    add-float/2addr v3, v1

    iput v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioLeft:F

    iget v4, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioRight:F

    add-float/2addr v4, v1

    iput v4, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioRight:F

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->delegate:Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;

    if-eqz v1, :cond_52

    invoke-interface {v1, v3}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;->onAudioLeftChange(F)V

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->delegate:Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;

    iget-wide v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioOffset:J

    iget v5, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioLeft:F

    iget-wide v6, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioDuration:J

    long-to-float v6, v6

    mul-float v5, v5, v6

    float-to-long v5, v5

    add-long/2addr v3, v5

    invoke-interface {v1, v3, v4}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;->onAudioOffsetChange(J)V

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->delegate:Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;

    iget v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioRight:F

    invoke-interface {v1, v3}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;->onAudioRightChange(F)V

    :cond_52
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->delegate:Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;

    if-eqz v1, :cond_53

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;->onProgressDragChange(Z)V

    :cond_53
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoTrack:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    if-nez v1, :cond_54

    iget-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->hasRound:Z

    if-nez v1, :cond_54

    iget v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioLeft:F

    iget-wide v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioDuration:J

    long-to-float v3, v3

    mul-float v1, v1, v3

    float-to-long v3, v1

    iput-wide v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->progress:J

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->delegate:Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;

    if-eqz v1, :cond_54

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;->onProgressDragChange(Z)V

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->delegate:Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;

    iget-wide v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->progress:J

    invoke-interface {v1, v3, v4, v2}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;->onProgressChange(JZ)V

    :cond_54
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    iget-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->dragged:Z

    if-nez v1, :cond_13

    goto/16 :goto_7

    :goto_1c
    iput v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->dragSpeed:F

    goto/16 :goto_8

    :goto_1d
    iput-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->dragged:Z

    iput-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->draggingProgress:Z

    :cond_55
    :goto_1e
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->lastX:F

    :cond_56
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->dragged:Z

    if-eqz v1, :cond_57

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->onLongPress:Ljava/lang/Runnable;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    :cond_57
    iget v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->pressHandle:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_58

    const/4 v2, 0x5

    if-eq v1, v2, :cond_58

    const/16 v2, 0x8

    if-ne v1, v2, :cond_75

    :cond_58
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_75

    move-object/from16 v3, p1

    invoke-virtual {v1, v3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto/16 :goto_2d

    :cond_59
    move-object/from16 v3, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v4, 0x1

    if-eq v1, v4, :cond_5a

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v8, :cond_75

    :cond_5a
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->onLongPress:Ljava/lang/Runnable;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->scroller:Lorg/telegram/ui/Components/Scroller;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Scroller;->abortAnimation()V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v4, :cond_72

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v12, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->pressTime:J

    sub-long/2addr v4, v12

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v1

    int-to-long v12, v1

    cmp-long v1, v4, v12

    if-gtz v1, :cond_5b

    iget-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->dragged:Z

    if-eqz v1, :cond_5c

    :cond_5b
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->open:Z

    if-nez v1, :cond_67

    :cond_5c
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->open:Z

    if-nez v1, :cond_5d

    iget v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->pressType:I

    const/16 v3, 0xa

    if-ne v1, v3, :cond_72

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->onTimelineClick:Ljava/lang/Runnable;

    if-eqz v1, :cond_72

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_2b

    :cond_5d
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->isCover:Z

    if-eqz v1, :cond_5e

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoTrack:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    if-eqz v1, :cond_5e

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->getBaseDuration()J

    move-result-wide v4

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->getMaxScrollDuration()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->px:I

    int-to-float v3, v3

    sub-float/2addr v1, v3

    iget v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->ph:I

    int-to-float v3, v3

    sub-float/2addr v1, v3

    iget v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->sw:I

    int-to-float v3, v3

    div-float/2addr v1, v3

    long-to-float v3, v4

    mul-float v1, v1, v3

    iget-wide v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->scroll:J

    long-to-float v3, v3

    add-float/2addr v1, v3

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->getBaseDuration()J

    move-result-wide v3

    long-to-float v3, v3

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v1

    float-to-long v3, v1

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoTrack:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    iget v5, v1, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->right:F

    iget v6, v1, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->left:F

    sub-float/2addr v5, v6

    long-to-float v3, v3

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->getBaseDuration()J

    move-result-wide v6

    long-to-float v4, v6

    div-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v12, v4, v5

    mul-float v3, v3, v12

    iput v3, v1, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->left:F

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoTrack:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    iget v3, v1, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->left:F

    add-float/2addr v5, v3

    iput v5, v1, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->right:F

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->delegate:Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;

    if-eqz v1, :cond_65

    const/4 v4, 0x1

    invoke-interface {v1, v4, v3}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;->onVideoLeftChange(ZF)V

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->delegate:Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoTrack:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    iget v3, v3, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->right:F

    invoke-interface {v1, v4, v3}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;->onVideoRightChange(ZF)V

    goto/16 :goto_22

    :cond_5e
    iget v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->pressType:I

    if-ne v1, v8, :cond_61

    iget-boolean v4, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioSelected:Z

    if-nez v4, :cond_60

    iget-boolean v4, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundSelected:Z

    if-eqz v4, :cond_5f

    goto :goto_1f

    :cond_5f
    iget v4, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->collageSelected:I

    goto :goto_20

    :cond_60
    :goto_1f
    const/4 v4, -0x1

    :goto_20
    iget v5, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->pressCollageIndex:I

    if-eq v4, v5, :cond_61

    iput-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioSelected:Z

    iput-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundSelected:Z

    iput v5, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->collageSelected:I

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->delegate:Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;

    if-eqz v1, :cond_65

    if-ltz v5, :cond_65

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->collageTracks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v5, v1, :cond_65

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->collageTracks:Ljava/util/ArrayList;

    iget v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->pressCollageIndex:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->delegate:Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;

    iget v1, v1, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->index:I

    invoke-interface {v3, v1}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;->onVideoSelected(I)V

    goto :goto_22

    :cond_61
    if-ne v1, v9, :cond_62

    iget-boolean v4, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioSelected:Z

    if-nez v4, :cond_62

    const/4 v4, 0x1

    iput-boolean v4, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioSelected:Z

    iput-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundSelected:Z

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->delegate:Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;

    if-eqz v1, :cond_65

    goto :goto_21

    :cond_62
    const/4 v4, 0x1

    if-ne v1, v4, :cond_63

    iget-boolean v5, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundSelected:Z

    if-nez v5, :cond_63

    iput-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioSelected:Z

    iput-boolean v4, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundSelected:Z

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->delegate:Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;

    if-eqz v1, :cond_65

    invoke-interface {v1, v4}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;->onRoundSelectChange(Z)V

    goto :goto_22

    :cond_63
    if-eq v1, v9, :cond_64

    iget-boolean v4, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioSelected:Z

    if-eqz v4, :cond_64

    iput-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioSelected:Z

    iput-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundSelected:Z

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->delegate:Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;

    if-eqz v1, :cond_65

    goto :goto_21

    :cond_64
    const/4 v4, 0x1

    if-eq v1, v4, :cond_66

    iget-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundSelected:Z

    if-eqz v1, :cond_66

    iput-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioSelected:Z

    iput-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundSelected:Z

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->delegate:Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;

    if-eqz v1, :cond_65

    :goto_21
    invoke-interface {v1, v2}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;->onRoundSelectChange(Z)V

    :cond_65
    :goto_22
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_2b

    :cond_66
    iget-wide v4, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->progress:J

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/TimelineView;->setProgressAt(FZ)Z

    move-result v1

    if-eqz v1, :cond_72

    iget-wide v6, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->progress:J

    sub-long/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/16 v8, 0x190

    cmp-long v1, v6, v8

    if-lez v1, :cond_72

    iput-wide v4, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->loopProgressFrom:J

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->loopProgress:Lorg/telegram/ui/Components/AnimatedFloat;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    goto :goto_22

    :cond_67
    iget v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->pressHandle:I

    const/16 v3, 0x10

    const/high16 v4, 0x42c80000    # 100.0f

    const/16 v5, 0x3e8

    if-ne v1, v3, :cond_68

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_68

    invoke-virtual {v3, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v1

    float-to-int v1, v1

    const/4 v3, 0x1

    iput-boolean v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->scrollingVideo:Z

    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoTrack:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    if-eqz v5, :cond_72

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    if-le v5, v4, :cond_72

    goto :goto_23

    :cond_68
    const/4 v3, 0x1

    if-ne v1, v3, :cond_69

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v6, :cond_69

    invoke-virtual {v6, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v1

    float-to-int v1, v1

    iput-boolean v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->scrollingVideo:Z

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoTrack:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    if-eqz v3, :cond_72

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    if-le v3, v4, :cond_72

    :goto_23
    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoTrack:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    iget-wide v3, v3, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->duration:J

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->getMaxScrollDuration()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    iget v5, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->px:I

    int-to-float v6, v5

    iget-wide v7, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->scroll:J

    long-to-float v7, v7

    long-to-float v8, v3

    div-float/2addr v7, v8

    iget v9, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->sw:I

    int-to-float v9, v9

    mul-float v7, v7, v9

    add-float/2addr v7, v6

    float-to-int v7, v7

    iget-object v10, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoTrack:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    iget-wide v12, v10, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->duration:J

    sub-long/2addr v12, v3

    long-to-float v3, v12

    div-float/2addr v3, v8

    mul-float v3, v3, v9

    add-float/2addr v6, v3

    float-to-int v3, v6

    const/4 v4, 0x1

    iput-boolean v4, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->scrolling:Z

    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->scroller:Lorg/telegram/ui/Components/Scroller;

    iput v7, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->wasScrollX:I

    neg-int v1, v1

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    move-object/from16 v17, v4

    move/from16 v18, v7

    move/from16 v20, v1

    :goto_24
    move/from16 v22, v5

    move/from16 v23, v3

    invoke-virtual/range {v17 .. v25}, Lorg/telegram/ui/Components/Scroller;->fling(IIIIIIII)V

    const/4 v4, 0x0

    goto/16 :goto_2c

    :cond_69
    const/4 v3, 0x5

    if-eq v1, v3, :cond_6a

    const/16 v3, 0x8

    if-ne v1, v3, :cond_6e

    iget-boolean v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->dragged:Z

    if-nez v3, :cond_6e

    :cond_6a
    iget-boolean v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioSelected:Z

    if-eqz v3, :cond_6e

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_6e

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoTrack:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    if-eqz v1, :cond_6b

    goto :goto_25

    :cond_6b
    const/16 v5, 0x5dc

    :goto_25
    invoke-virtual {v3, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v1

    float-to-int v1, v1

    iput-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->scrollingVideo:Z

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    if-le v3, v4, :cond_72

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->getBaseDuration()J

    move-result-wide v3

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->getMaxScrollDuration()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    iget v5, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->px:I

    iget v6, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->ph:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget-wide v6, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioOffset:J

    long-to-float v6, v6

    long-to-float v3, v3

    div-float/2addr v6, v3

    iget v4, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->sw:I

    int-to-float v4, v4

    mul-float v6, v6, v4

    add-float/2addr v5, v6

    float-to-int v4, v5

    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoTrack:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    if-eqz v5, :cond_6c

    iget v6, v5, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->right:F

    iget-wide v7, v5, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->duration:J

    long-to-float v7, v7

    mul-float v6, v6, v7

    iget-wide v8, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioDuration:J

    :goto_26
    const-wide/16 v12, 0x0

    long-to-float v10, v12

    sub-float/2addr v6, v10

    float-to-long v12, v6

    iget v5, v5, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->left:F

    mul-float v5, v5, v7

    long-to-float v6, v8

    sub-float/2addr v5, v6

    float-to-long v5, v5

    :goto_27
    move/from16 v20, v1

    :goto_28
    const/4 v1, 0x1

    goto/16 :goto_2a

    :cond_6c
    iget-boolean v5, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->hasRound:Z

    if-eqz v5, :cond_6d

    iget v5, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundRight:F

    iget-wide v6, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundDuration:J

    long-to-float v6, v6

    mul-float v5, v5, v6

    iget-wide v7, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioDuration:J

    const-wide/16 v9, 0x0

    long-to-float v9, v9

    sub-float/2addr v5, v9

    float-to-long v9, v5

    iget v5, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundLeft:F

    mul-float v5, v5, v6

    long-to-float v6, v7

    sub-float/2addr v5, v6

    float-to-long v5, v5

    move/from16 v20, v1

    move-wide v12, v9

    goto :goto_28

    :cond_6d
    iget-wide v5, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioDuration:J

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->getBaseDuration()J

    move-result-wide v7

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->getMaxScrollDuration()J

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    sub-long/2addr v5, v7

    neg-long v5, v5

    move/from16 v20, v1

    const/4 v1, 0x1

    const-wide/16 v12, 0x0

    goto :goto_2a

    :cond_6e
    const/16 v3, 0x9

    if-eq v1, v3, :cond_6f

    if-ne v1, v7, :cond_72

    iget-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->dragged:Z

    if-nez v1, :cond_72

    :cond_6f
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundSelected:Z

    if-eqz v1, :cond_72

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_72

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoTrack:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    if-eqz v3, :cond_70

    goto :goto_29

    :cond_70
    const/16 v5, 0x5dc

    :goto_29
    invoke-virtual {v1, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v1

    float-to-int v1, v1

    iput-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->scrollingVideo:Z

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    if-le v3, v4, :cond_72

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->getBaseDuration()J

    move-result-wide v3

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->getMaxScrollDuration()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    iget v5, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->px:I

    iget v6, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->ph:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget-wide v6, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundOffset:J

    long-to-float v6, v6

    long-to-float v3, v3

    div-float/2addr v6, v3

    iget v4, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->sw:I

    int-to-float v4, v4

    mul-float v6, v6, v4

    add-float/2addr v5, v6

    float-to-int v4, v5

    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoTrack:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    if-eqz v5, :cond_71

    iget v6, v5, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->right:F

    iget-wide v7, v5, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->duration:J

    long-to-float v7, v7

    mul-float v6, v6, v7

    iget-wide v8, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundDuration:J

    goto/16 :goto_26

    :cond_71
    const-wide/16 v12, 0x0

    iget-wide v5, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundDuration:J

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->getBaseDuration()J

    move-result-wide v7

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->getMaxScrollDuration()J

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    sub-long/2addr v5, v7

    neg-long v5, v5

    goto/16 :goto_27

    :goto_2a
    iput-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->scrolling:Z

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->scroller:Lorg/telegram/ui/Components/Scroller;

    iput v4, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->wasScrollX:I

    iget v7, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->px:I

    iget v8, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->ph:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    long-to-float v5, v5

    div-float/2addr v5, v3

    iget v6, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->sw:I

    int-to-float v6, v6

    mul-float v5, v5, v6

    add-float/2addr v5, v7

    float-to-int v5, v5

    long-to-float v8, v12

    div-float/2addr v8, v3

    mul-float v8, v8, v6

    add-float/2addr v7, v8

    float-to-int v3, v7

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    move-object/from16 v17, v1

    move/from16 v18, v4

    goto/16 :goto_24

    :cond_72
    :goto_2b
    const/4 v4, 0x1

    :goto_2c
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->askExactSeek:Ljava/lang/Runnable;

    if-eqz v1, :cond_73

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->askExactSeek:Ljava/lang/Runnable;

    :cond_73
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->dragged:Z

    if-eqz v1, :cond_74

    if-eqz v4, :cond_74

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->delegate:Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;

    if-eqz v1, :cond_74

    invoke-interface {v1, v2}, Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;->onProgressDragChange(Z)V

    :cond_74
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->dragSpeed:F

    iput-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->dragged:Z

    iput-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->draggingProgress:Z

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->pressTime:J

    iput v11, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->pressHandle:I

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_75

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->velocityTracker:Landroid/view/VelocityTracker;

    :cond_75
    :goto_2d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->lastTime:J

    const/4 v1, 0x1

    return v1
.end method

.method public selectRound(Z)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->hasRound:Z

    if-eqz p1, :cond_0

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundSelected:Z

    iput-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioSelected:Z

    goto :goto_1

    :cond_0
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundSelected:Z

    iget-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->hasAudio:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoTrack:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioSelected:Z

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setAudio(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJFFFZ)V
    .locals 14

    move-object v0, p0

    move-object v1, p1

    move-wide/from16 v2, p4

    move/from16 v4, p8

    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioPath:Ljava/lang/String;

    invoke-static {v5, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-nez v5, :cond_1

    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->waveform:Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;->destroy()V

    iput-object v7, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->waveform:Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;

    iput-boolean v6, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->waveformIsLoaded:Z

    :cond_0
    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioPath:Ljava/lang/String;

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->setupAudioWaveform()V

    :cond_1
    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioPath:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v5, 0x1

    xor-int/2addr v1, v5

    iput-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->hasAudio:Z

    if-nez v1, :cond_2

    iput-boolean v6, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioSelected:Z

    move-object v1, v7

    move-object v8, v1

    goto :goto_0

    :cond_2
    move-object/from16 v1, p2

    move-object/from16 v8, p3

    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    move-object v1, v7

    :cond_3
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    move-object v8, v7

    :cond_4
    iget-boolean v9, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->hasAudio:Z

    if-eqz v9, :cond_b

    iput-wide v2, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioDuration:J

    long-to-float v2, v2

    mul-float v2, v2, v4

    float-to-long v2, v2

    sub-long v2, p6, v2

    iput-wide v2, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioOffset:J

    iput v4, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioLeft:F

    move/from16 v2, p9

    iput v2, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioRight:F

    move/from16 v2, p10

    iput v2, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioVolume:F

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    new-instance v3, Landroid/text/StaticLayout;

    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioAuthorPaint:Landroid/text/TextPaint;

    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const v12, 0x1869f

    const/high16 v13, 0x3f800000    # 1.0f

    move-object p1, v3

    move-object/from16 p2, v1

    move-object/from16 p3, v4

    move/from16 p4, v12

    move-object/from16 p5, v9

    move/from16 p6, v13

    move/from16 p7, v10

    move/from16 p8, v11

    invoke-direct/range {p1 .. p8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioAuthor:Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v1

    if-lez v1, :cond_5

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioAuthor:Landroid/text/StaticLayout;

    invoke-virtual {v1, v6}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v1

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :goto_1
    iput v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioAuthorWidth:F

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioAuthor:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v1

    if-lez v1, :cond_6

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioAuthor:Landroid/text/StaticLayout;

    invoke-virtual {v1, v6}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    iput v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioAuthorLeft:F

    goto :goto_3

    :cond_7
    iput v2, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioAuthorWidth:F

    iput-object v7, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioAuthor:Landroid/text/StaticLayout;

    :goto_3
    if-eqz v8, :cond_a

    new-instance v1, Landroid/text/StaticLayout;

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioTitlePaint:Landroid/text/TextPaint;

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/4 v7, 0x0

    const/4 v9, 0x0

    const v10, 0x1869f

    const/high16 v11, 0x3f800000    # 1.0f

    move-object p1, v1

    move-object/from16 p2, v8

    move-object/from16 p3, v3

    move/from16 p4, v10

    move-object/from16 p5, v4

    move/from16 p6, v11

    move/from16 p7, v7

    move/from16 p8, v9

    invoke-direct/range {p1 .. p8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioTitle:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v1

    if-lez v1, :cond_8

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioTitle:Landroid/text/StaticLayout;

    invoke-virtual {v1, v6}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v1

    goto :goto_4

    :cond_8
    const/4 v1, 0x0

    :goto_4
    iput v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioTitleWidth:F

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioTitle:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v1

    if-lez v1, :cond_9

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioTitle:Landroid/text/StaticLayout;

    invoke-virtual {v1, v6}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v2

    :cond_9
    iput v2, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioTitleLeft:F

    goto :goto_5

    :cond_a
    iput v2, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioTitleWidth:F

    iput-object v7, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioTitle:Landroid/text/StaticLayout;

    :cond_b
    :goto_5
    if-nez p11, :cond_c

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioT:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->hasAudio:Z

    invoke-virtual {v1, v2, v5}, Lorg/telegram/ui/Components/AnimatedFloat;->set(ZZ)F

    :cond_c
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setCollage(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Stories/recorder/StoryEntry;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->collageTracks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->collageTracks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    if-eqz v2, :cond_0

    iget-object v2, v2, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->thumbs:Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->destroy()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->collageTracks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->collageWaveforms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->collageWaveforms:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;->destroy()V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->collageWaveforms:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->timelineWaveformMax:Lorg/telegram/ui/Components/AnimatedFloat;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    if-eqz p1, :cond_5

    const/4 v1, 0x0

    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->collageWaveforms:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-boolean v4, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-eqz v4, :cond_4

    new-instance v4, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    invoke-direct {v4, p0, v3}, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;-><init>(Lorg/telegram/ui/Stories/recorder/TimelineView;Lorg/telegram/ui/Stories/recorder/TimelineView$1;)V

    iput v1, v4, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->index:I

    iput-boolean v0, v4, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->isRound:Z

    iget-object v3, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->path:Ljava/lang/String;

    iget-wide v5, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->duration:J

    iput-wide v5, v4, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->duration:J

    iget-wide v5, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->videoOffset:J

    iput-wide v5, v4, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->offset:J

    iget v3, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->videoVolume:F

    iput v3, v4, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->volume:F

    iget v3, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->videoLeft:F

    iput v3, v4, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->left:F

    iget v2, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->videoRight:F

    iput v2, v4, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->right:F

    invoke-static {v4, v0}, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->access$500(Lorg/telegram/ui/Stories/recorder/TimelineView$Track;Z)V

    invoke-static {v4, v0}, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->access$700(Lorg/telegram/ui/Stories/recorder/TimelineView$Track;Z)V

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->collageTracks:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->sortCollage()V

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->collageSelected:I

    return-void
.end method

.method public setCover()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->isCover:Z

    return-void
.end method

.method public setCoverVideo(JJ)V
    .locals 0

    iput-wide p1, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->coverStart:J

    iput-wide p3, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->coverEnd:J

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoTrack:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->access$500(Lorg/telegram/ui/Stories/recorder/TimelineView$Track;Z)V

    :cond_0
    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->delegate:Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;

    return-void
.end method

.method public setMaxCount(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->maxCount:I

    return-void
.end method

.method public setOnHeightChange(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->onHeightChange:Ljava/lang/Runnable;

    return-void
.end method

.method public setOnTimelineClick(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->onTimelineClick:Ljava/lang/Runnable;

    return-void
.end method

.method public setOpen(ZZ)V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->open:Z

    if-ne v0, p1, :cond_0

    if-eqz p2, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->open:Z

    if-nez p2, :cond_1

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->openT:Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lorg/telegram/ui/Components/AnimatedFloat;->set(ZZ)F

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setProgress(J)V
    .locals 9

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoTrack:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    const-wide/16 v1, 0xf0

    const/high16 v3, 0x43700000    # 240.0f

    if-eqz v0, :cond_0

    iget-wide v4, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->progress:J

    cmp-long v6, p1, v4

    if-gez v6, :cond_0

    long-to-float v6, p1

    iget-wide v7, v0, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->duration:J

    long-to-float v7, v7

    iget v8, v0, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->left:F

    mul-float v8, v8, v7

    add-float/2addr v8, v3

    cmpg-float v6, v6, v8

    if-gtz v6, :cond_0

    add-long/2addr v4, v1

    long-to-float v4, v4

    iget v5, v0, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->right:F

    mul-float v7, v7, v5

    cmpl-float v4, v4, v7

    if-gez v4, :cond_2

    :cond_0
    iget-boolean v4, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->hasAudio:Z

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->hasRound:Z

    if-nez v4, :cond_1

    if-nez v0, :cond_1

    iget-wide v4, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->progress:J

    cmp-long v6, p1, v4

    if-gez v6, :cond_1

    long-to-float v6, p1

    iget-wide v7, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioDuration:J

    long-to-float v7, v7

    iget v8, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioLeft:F

    mul-float v8, v8, v7

    add-float/2addr v8, v3

    cmpg-float v6, v6, v8

    if-gtz v6, :cond_1

    add-long/2addr v4, v1

    long-to-float v4, v4

    iget v5, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioRight:F

    mul-float v7, v7, v5

    cmpl-float v4, v4, v7

    if-gez v4, :cond_2

    :cond_1
    iget-boolean v4, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->hasRound:Z

    if-eqz v4, :cond_3

    if-nez v0, :cond_3

    iget-wide v4, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->progress:J

    cmp-long v0, p1, v4

    if-gez v0, :cond_3

    long-to-float v0, p1

    iget-wide v6, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundDuration:J

    long-to-float v6, v6

    iget v7, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioLeft:F

    mul-float v7, v7, v6

    add-float/2addr v7, v3

    cmpg-float v0, v0, v7

    if-gtz v0, :cond_3

    add-long/2addr v4, v1

    long-to-float v0, v4

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioRight:F

    mul-float v6, v6, v1

    cmpl-float v0, v0, v6

    if-ltz v0, :cond_3

    :cond_2
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->loopProgressFrom:J

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->loopProgress:Lorg/telegram/ui/Components/AnimatedFloat;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    :cond_3
    iput-wide p1, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->progress:J

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setRound(Ljava/lang/String;JJFFFZ)V
    .locals 12

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move/from16 v4, p6

    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundPath:Ljava/lang/String;

    invoke-static {v5, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    return-void

    :cond_0
    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundThumbs:Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->destroy()V

    iput-object v6, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundThumbs:Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;

    :cond_1
    iget-wide v7, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundDuration:J

    const/4 v5, 0x0

    const/4 v9, 0x1

    if-eqz v1, :cond_2

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundPath:Ljava/lang/String;

    iput-wide v2, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundDuration:J

    long-to-float v1, v2

    mul-float v1, v1, v4

    float-to-long v10, v1

    sub-long v10, p4, v10

    iput-wide v10, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundOffset:J

    iput v4, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundLeft:F

    move/from16 v1, p7

    iput v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundRight:F

    move/from16 v1, p8

    iput v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundVolume:F

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->setupRoundThumbs()V

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoTrack:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    if-nez v1, :cond_3

    iput-boolean v5, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioSelected:Z

    iput-boolean v9, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundSelected:Z

    goto :goto_0

    :cond_2
    iput-object v6, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundPath:Ljava/lang/String;

    const-wide/16 v10, 0x1

    iput-wide v10, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundDuration:J

    iput-boolean v5, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundSelected:Z

    :cond_3
    :goto_0
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundPath:Ljava/lang/String;

    if-eqz v1, :cond_4

    const/4 v5, 0x1

    :cond_4
    iput-boolean v5, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->hasRound:Z

    cmp-long v1, v7, v2

    if-eqz v1, :cond_5

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoTrack:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    if-nez v1, :cond_5

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->waveform:Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;

    if-eqz v1, :cond_5

    iput-boolean v9, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->resetWaveform:Z

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->setupAudioWaveform()V

    :cond_5
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->hasAudio:Z

    if-eqz v1, :cond_6

    iget-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->hasRound:Z

    if-eqz v1, :cond_6

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoTrack:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    if-nez v1, :cond_6

    const/4 v1, 0x0

    iput v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioLeft:F

    long-to-float v2, v2

    iget-wide v3, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioDuration:J

    long-to-float v3, v3

    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v3, v1}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioRight:F

    :cond_6
    if-nez p9, :cond_7

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundSelectedT:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundSelected:Z

    invoke-virtual {v1, v2, v9}, Lorg/telegram/ui/Components/AnimatedFloat;->set(ZZ)F

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioSelectedT:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->audioSelected:Z

    invoke-virtual {v1, v2, v9}, Lorg/telegram/ui/Components/AnimatedFloat;->set(ZZ)F

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundT:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/TimelineView;->hasRound:Z

    invoke-virtual {v1, v2, v9}, Lorg/telegram/ui/Components/AnimatedFloat;->set(ZZ)F

    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setRoundNull(Z)V
    .locals 10

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v9, p1

    invoke-virtual/range {v0 .. v9}, Lorg/telegram/ui/Stories/recorder/TimelineView;->setRound(Ljava/lang/String;JJFFFZ)V

    return-void
.end method

.method public setVideo(ZLjava/lang/String;JF)V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoTrack:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->path:Ljava/lang/String;

    :goto_0
    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoTrack:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->thumbs:Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->destroy()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoTrack:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->thumbs:Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;

    :cond_2
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoTrack:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    :cond_3
    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    if-eqz p2, :cond_4

    iput-wide v2, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->scroll:J

    new-instance v4, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    invoke-direct {v4, p0, v1}, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;-><init>(Lorg/telegram/ui/Stories/recorder/TimelineView;Lorg/telegram/ui/Stories/recorder/TimelineView$1;)V

    iput-object v4, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoTrack:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    iput-boolean p1, v4, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->isRound:Z

    iput-object p2, v4, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->path:Ljava/lang/String;

    iput-wide p3, v4, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->duration:J

    iput p5, v4, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->volume:F

    invoke-static {v4, v0}, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->access$500(Lorg/telegram/ui/Stories/recorder/TimelineView$Track;Z)V

    goto :goto_1

    :cond_4
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoTrack:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    iput-wide v2, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->scroll:J

    :goto_1
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->hasRound:Z

    if-nez p1, :cond_5

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->roundSelected:Z

    :cond_5
    iput-wide v2, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->progress:J

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setVideoLeft(F)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoTrack:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->left:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setVideoRight(F)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->videoTrack:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, v0, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->right:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public sortCollage()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->collageTracks:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/TimelineView$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lorg/telegram/ui/Stories/recorder/TimelineView$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->collageTracks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->collageTracks:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    :goto_0
    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView;->collageMain:Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    return-void
.end method
