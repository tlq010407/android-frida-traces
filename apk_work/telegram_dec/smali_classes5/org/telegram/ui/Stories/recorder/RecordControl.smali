.class public Lorg/telegram/ui/Stories/recorder/RecordControl;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Stories/recorder/FlashViews$Invertable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Stories/recorder/RecordControl$Delegate;
    }
.end annotation


# instance fields
.field private final HALF_PI:F

.field public amplitude:F

.field public final animatedAmplitude:Lorg/telegram/ui/Components/AnimatedFloat;

.field private final buttonPaint:Landroid/graphics/Paint;

.field private final buttonPaintWhite:Landroid/graphics/Paint;

.field private final check1:Lorg/telegram/ui/Components/Point;

.field private final check2:Lorg/telegram/ui/Components/Point;

.field private final check3:Lorg/telegram/ui/Components/Point;

.field private final checkAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

.field private final checkPaint:Landroid/graphics/Paint;

.field private final checkPath:Landroid/graphics/Path;

.field private final circlePath:Landroid/graphics/Path;

.field private final collage:Lorg/telegram/ui/Components/AnimatedFloat;

.field private collageProgress:F

.field private final collageProgressAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

.field private cx:F

.field private cy:F

.field private delegate:Lorg/telegram/ui/Stories/recorder/RecordControl$Delegate;

.field private discardParentTouch:Z

.field private dual:Z

.field private final dualT:Lorg/telegram/ui/Components/AnimatedFloat;

.field private final flipButton:Lorg/telegram/ui/Components/ButtonBounce;

.field private flipButtonWasPressed:Z

.field private final flipDrawableBlack:Landroid/graphics/drawable/Drawable;

.field private flipDrawableRotate:F

.field private final flipDrawableRotateT:Lorg/telegram/ui/Components/AnimatedFloat;

.field private final flipDrawableWhite:Landroid/graphics/drawable/Drawable;

.field private final galleryImage:Lorg/telegram/messenger/ImageReceiver;

.field private final h1:Lorg/telegram/ui/Components/Point;

.field private final h2:Lorg/telegram/ui/Components/Point;

.field private final h3:Lorg/telegram/ui/Components/Point;

.field private final h4:Lorg/telegram/ui/Components/Point;

.field private final hintLinePaintBlack:Landroid/graphics/Paint;

.field private final hintLinePaintWhite:Landroid/graphics/Paint;

.field private lastDuration:J

.field private leftCx:F

.field private loadingSegments:[F

.field private final lockButton:Lorg/telegram/ui/Components/ButtonBounce;

.field private final lockDrawable:Landroid/graphics/drawable/Drawable;

.field private final lockedT:Lorg/telegram/ui/Components/AnimatedFloat;

.field private longpressRecording:Z

.field private final mainPaint:Landroid/graphics/Paint;

.field private final metaballsPath:Landroid/graphics/Path;

.field private final noGalleryDrawable:Lorg/telegram/ui/Components/CombinedDrawable;

.field private final onFlipLongPressRunnable:Ljava/lang/Runnable;

.field private final onRecordLongPressRunnable:Ljava/lang/Runnable;

.field private final outlineFilledPaint:Landroid/graphics/Paint;

.field private final outlinePaint:Landroid/graphics/Paint;

.field private overrideStartModeIsVideoT:F

.field private final p1:Lorg/telegram/ui/Components/Point;

.field private final p2:Lorg/telegram/ui/Components/Point;

.field private final p3:Lorg/telegram/ui/Components/Point;

.field private final p4:Lorg/telegram/ui/Components/Point;

.field private final pauseDrawable:Landroid/graphics/drawable/Drawable;

.field private final recordButton:Lorg/telegram/ui/Components/ButtonBounce;

.field private final recordCx:Lorg/telegram/ui/Components/AnimatedFloat;

.field private recording:Z

.field private recordingLoading:Z

.field private recordingLoadingStart:J

.field private final recordingLoadingT:Lorg/telegram/ui/Components/AnimatedFloat;

.field private final recordingLongT:Lorg/telegram/ui/Components/AnimatedFloat;

.field private recordingStart:J

.field private final recordingT:Lorg/telegram/ui/Components/AnimatedFloat;

.field private redGradient:Landroid/graphics/RadialGradient;

.field private final redMatrix:Landroid/graphics/Matrix;

.field private final redPaint:Landroid/graphics/Paint;

.field private rightCx:F

.field private showLock:Z

.field private startModeIsVideo:Z

.field private final startModeIsVideoT:Lorg/telegram/ui/Components/AnimatedFloat;

.field private touch:Z

.field private final touchIsButtonT:Lorg/telegram/ui/Components/AnimatedFloat;

.field private final touchIsCenter2T:Lorg/telegram/ui/Components/AnimatedFloat;

.field private final touchIsCenterT:Lorg/telegram/ui/Components/AnimatedFloat;

.field private touchStart:J

.field private final touchT:Lorg/telegram/ui/Components/AnimatedFloat;

.field private touchX:F

.field private touchY:F

.field private final unlockDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public static synthetic $r8$lambda$3ZzWXMYjsjBBOz2G3OrTcQhh1Lc(Lorg/telegram/ui/Stories/recorder/RecordControl;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/RecordControl;->lambda$onTouchEvent$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$6xJMBr3SbMfAhCndglYJf3cf_bs(Lorg/telegram/ui/Stories/recorder/RecordControl;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/RecordControl;->lambda$new$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$7NkBq9Y92CBC5ZWDNJDXD3cIpeQ(Lorg/telegram/ui/Stories/recorder/RecordControl;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/RecordControl;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$pOH_bnT5rZ0guqn8UgT07xIx7no(Lorg/telegram/ui/Stories/recorder/RecordControl;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/RecordControl;->lambda$onDraw$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$vLRxi8b5MZNV-d_5yw7cj0A9EqI(Lorg/telegram/ui/Stories/recorder/RecordControl;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/RecordControl;->lambda$new$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 30

    move-object/from16 v7, p0

    invoke-direct/range {p0 .. p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v8, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v8}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    iput-object v8, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->galleryImage:Lorg/telegram/messenger/ImageReceiver;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v9, 0x1

    invoke-direct {v0, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->mainPaint:Landroid/graphics/Paint;

    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v10, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->outlinePaint:Landroid/graphics/Paint;

    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v11, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->outlineFilledPaint:Landroid/graphics/Paint;

    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v12, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->buttonPaint:Landroid/graphics/Paint;

    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v13, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->buttonPaintWhite:Landroid/graphics/Paint;

    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v14, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->redPaint:Landroid/graphics/Paint;

    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v15, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->hintLinePaintWhite:Landroid/graphics/Paint;

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v6, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->hintLinePaintBlack:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v4, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->checkPaint:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    iput-object v5, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->redMatrix:Landroid/graphics/Matrix;

    new-instance v0, Lorg/telegram/ui/Components/ButtonBounce;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Components/ButtonBounce;-><init>(Landroid/view/View;)V

    iput-object v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->recordButton:Lorg/telegram/ui/Components/ButtonBounce;

    new-instance v0, Lorg/telegram/ui/Components/ButtonBounce;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Components/ButtonBounce;-><init>(Landroid/view/View;)V

    iput-object v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->flipButton:Lorg/telegram/ui/Components/ButtonBounce;

    new-instance v0, Lorg/telegram/ui/Components/ButtonBounce;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Components/ButtonBounce;-><init>(Landroid/view/View;)V

    iput-object v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->lockButton:Lorg/telegram/ui/Components/ButtonBounce;

    new-instance v2, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v16, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x136

    move-object v0, v2

    move-object/from16 v1, p0

    move-object v9, v2

    move-wide/from16 v2, v17

    move-object/from16 v21, v4

    move-object/from16 v22, v5

    move-wide/from16 v4, v19

    move-object/from16 v17, v8

    move-object v8, v6

    move-object/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v9, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->flipDrawableRotateT:Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance v9, Lorg/telegram/ui/Components/AnimatedFloat;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x14a

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v9, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->dualT:Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->checkPath:Landroid/graphics/Path;

    new-instance v0, Lorg/telegram/ui/Components/Point;

    const v1, 0x411aaaab

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    neg-float v2, v2

    const v3, 0x40155555

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/Components/Point;-><init>(FF)V

    iput-object v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->check1:Lorg/telegram/ui/Components/Point;

    new-instance v0, Lorg/telegram/ui/Components/Point;

    const v2, 0x40355555

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    neg-float v2, v2

    const v3, 0x410aaaab

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/Components/Point;-><init>(FF)V

    iput-object v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->check2:Lorg/telegram/ui/Components/Point;

    new-instance v0, Lorg/telegram/ui/Components/Point;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    const v2, -0x3f955555

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Point;-><init>(FF)V

    iput-object v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->check3:Lorg/telegram/ui/Components/Point;

    new-instance v9, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v6, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xc8

    move-object v0, v9

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v9, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->animatedAmplitude:Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance v9, Lorg/telegram/ui/Components/AnimatedFloat;

    const-wide/16 v4, 0x15e

    move-object v0, v9

    move-object/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v9, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->startModeIsVideoT:Lorg/telegram/ui/Components/AnimatedFloat;

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->overrideStartModeIsVideoT:F

    const/4 v0, 0x1

    iput-boolean v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->startModeIsVideo:Z

    new-instance v9, Lorg/telegram/ui/Components/AnimatedFloat;

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v9, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->recordingT:Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance v9, Lorg/telegram/ui/Components/AnimatedFloat;

    const-wide/16 v4, 0x352

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v9, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->recordingLongT:Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->loadingSegments:[F

    new-instance v9, Lorg/telegram/ui/Components/AnimatedFloat;

    const-wide/16 v4, 0x15e

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v9, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->recordingLoadingT:Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance v9, Lorg/telegram/ui/Components/AnimatedFloat;

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v9, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->touchT:Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance v9, Lorg/telegram/ui/Components/AnimatedFloat;

    const-wide/16 v4, 0x28a

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v9, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->touchIsCenterT:Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance v9, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v6, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_IN:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v4, 0xa0

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v9, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->touchIsCenter2T:Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance v9, Lorg/telegram/ui/Components/AnimatedFloat;

    const-wide/16 v4, 0x2ee

    move-object v0, v9

    move-object/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v9, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->recordCx:Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance v9, Lorg/telegram/ui/Components/AnimatedFloat;

    const-wide/16 v4, 0x28a

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v9, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->touchIsButtonT:Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance v9, Lorg/telegram/ui/Components/AnimatedFloat;

    const-wide/16 v4, 0x140

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v9, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->lockedT:Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance v9, Lorg/telegram/ui/Components/AnimatedFloat;

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v9, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->collage:Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance v9, Lorg/telegram/ui/Components/AnimatedFloat;

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v9, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->collageProgressAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance v9, Lorg/telegram/ui/Components/AnimatedFloat;

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v9, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->checkAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance v0, Lorg/telegram/ui/Stories/recorder/RecordControl$$ExternalSyntheticLambda3;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Stories/recorder/RecordControl$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Stories/recorder/RecordControl;)V

    iput-object v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->onRecordLongPressRunnable:Ljava/lang/Runnable;

    new-instance v0, Lorg/telegram/ui/Stories/recorder/RecordControl$$ExternalSyntheticLambda4;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Stories/recorder/RecordControl$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Stories/recorder/RecordControl;)V

    iput-object v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->onFlipLongPressRunnable:Ljava/lang/Runnable;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->metaballsPath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->circlePath:Landroid/graphics/Path;

    const v0, 0x3fc90fdb

    iput v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->HALF_PI:F

    new-instance v0, Lorg/telegram/ui/Components/Point;

    invoke-direct {v0}, Lorg/telegram/ui/Components/Point;-><init>()V

    iput-object v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->p1:Lorg/telegram/ui/Components/Point;

    new-instance v0, Lorg/telegram/ui/Components/Point;

    invoke-direct {v0}, Lorg/telegram/ui/Components/Point;-><init>()V

    iput-object v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->p2:Lorg/telegram/ui/Components/Point;

    new-instance v0, Lorg/telegram/ui/Components/Point;

    invoke-direct {v0}, Lorg/telegram/ui/Components/Point;-><init>()V

    iput-object v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->p3:Lorg/telegram/ui/Components/Point;

    new-instance v0, Lorg/telegram/ui/Components/Point;

    invoke-direct {v0}, Lorg/telegram/ui/Components/Point;-><init>()V

    iput-object v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->p4:Lorg/telegram/ui/Components/Point;

    new-instance v0, Lorg/telegram/ui/Components/Point;

    invoke-direct {v0}, Lorg/telegram/ui/Components/Point;-><init>()V

    iput-object v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->h1:Lorg/telegram/ui/Components/Point;

    new-instance v0, Lorg/telegram/ui/Components/Point;

    invoke-direct {v0}, Lorg/telegram/ui/Components/Point;-><init>()V

    iput-object v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->h2:Lorg/telegram/ui/Components/Point;

    new-instance v0, Lorg/telegram/ui/Components/Point;

    invoke-direct {v0}, Lorg/telegram/ui/Components/Point;-><init>()V

    iput-object v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->h3:Lorg/telegram/ui/Components/Point;

    new-instance v0, Lorg/telegram/ui/Components/Point;

    invoke-direct {v0}, Lorg/telegram/ui/Components/Point;-><init>()V

    iput-object v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->h4:Lorg/telegram/ui/Components/Point;

    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    new-instance v1, Landroid/graphics/RadialGradient;

    const/high16 v2, 0x42400000    # 48.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    const v3, -0x8cecf

    const/4 v4, -0x1

    filled-new-array {v3, v3, v4}, [I

    move-result-object v27

    const/4 v5, 0x3

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    sget-object v29, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v23, v1

    move/from16 v26, v2

    move-object/from16 v28, v5

    invoke-direct/range {v23 .. v29}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v1, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->redGradient:Landroid/graphics/RadialGradient;

    move-object/from16 v2, v22

    invoke-virtual {v1, v2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v1, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->redGradient:Landroid/graphics/RadialGradient;

    invoke-virtual {v14, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-virtual {v10, v4}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v10, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v10, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    invoke-virtual {v11, v3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v11, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    invoke-virtual {v11, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v3, 0x64000000

    invoke-virtual {v12, v3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v13, v4}, Landroid/graphics/Paint;->setColor(I)V

    const v3, 0x58ffffff

    invoke-virtual {v15, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v3, 0x18000000

    invoke-virtual {v8, v3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v15, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v15, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    move-object/from16 v3, v21

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_0

    invoke-static {}, Lorg/telegram/ui/Stories/recorder/RecordControl$$ExternalSyntheticApiModelOutline0;->m()Landroid/graphics/BlendMode;

    move-result-object v1

    invoke-static {v3, v1}, Lorg/telegram/messenger/ImageReceiver$$ExternalSyntheticApiModelOutline1;->m(Landroid/graphics/Paint;Landroid/graphics/BlendMode;)V

    :goto_0
    move-object/from16 v1, v17

    goto :goto_1

    :cond_0
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_0

    :goto_1
    invoke-virtual {v1, v7}, Lorg/telegram/messenger/ImageReceiver;->setParentView(Landroid/view/View;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setCrossfadeWithOldImage(Z)V

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_media_gallery:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    const v6, 0x4dffffff    # 5.3687088E8f

    invoke-direct {v3, v6, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    new-instance v3, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const v6, -0xd1d1d1

    invoke-static {v2, v6}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v2

    invoke-direct {v3, v2, v1}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v3, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->noGalleryDrawable:Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/CombinedDrawable;->setFullsize(Z)V

    const/high16 v0, 0x41c00000    # 24.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {v3, v1, v0}, Lorg/telegram/ui/Components/CombinedDrawable;->setIconSize(II)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_photo_switch2:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->flipDrawableWhite:Landroid/graphics/drawable/Drawable;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v2, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->flipDrawableBlack:Landroid/graphics/drawable/Drawable;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const/high16 v2, -0x1000000

    invoke-direct {v1, v2, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_filled_unlockedrecord:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->unlockDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v1, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_filled_lockedrecord:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->lockDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v1, v2, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_round_pause_m:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->pauseDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v1, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/RecordControl;->updateGalleryImage()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f23d70a    # 0.64f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private dist(Lorg/telegram/ui/Components/Point;Lorg/telegram/ui/Components/Point;)F
    .locals 2

    iget v0, p1, Lorg/telegram/ui/Components/Point;->x:F

    iget p1, p1, Lorg/telegram/ui/Components/Point;->y:F

    iget v1, p2, Lorg/telegram/ui/Components/Point;->x:F

    iget p2, p2, Lorg/telegram/ui/Components/Point;->y:F

    invoke-static {v0, p1, v1, p2}, Lcom/google/zxing/common/detector/MathUtils;->distance(FFFF)F

    move-result p1

    return p1
.end method

.method private getVector(FFDFLorg/telegram/ui/Components/Point;)V
    .locals 6

    float-to-double v0, p1

    invoke-static {p3, p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    float-to-double v4, p5

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, v2

    double-to-float p1, v0

    iput p1, p6, Lorg/telegram/ui/Components/Point;->x:F

    float-to-double p1, p2

    invoke-static {p3, p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide p3

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p3, p3, v4

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr p1, p3

    double-to-float p1, p1

    iput p1, p6, Lorg/telegram/ui/Components/Point;->y:F

    return-void
.end method

.method private isPressed(FFFFFZ)Z
    .locals 3

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->recording:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    if-eqz p6, :cond_0

    sub-float/2addr p4, p2

    const/high16 p2, 0x42c80000    # 100.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    cmpl-float p2, p4, p2

    if-lez p2, :cond_0

    return v2

    :cond_0
    sub-float/2addr p3, p1

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpg-float p1, p1, p5

    if-gtz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_2
    invoke-static {p1, p2, p3, p4}, Lcom/google/zxing/common/detector/MathUtils;->distance(FFFF)F

    move-result p1

    cmpg-float p1, p1, p5

    if-gtz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method private synthetic lambda$new$0()V
    .locals 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->recordingStart:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->recording:Z

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->delegate:Lorg/telegram/ui/Stories/recorder/RecordControl$Delegate;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->lastDuration:J

    invoke-interface {v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/RecordControl$Delegate;->onVideoDuration(J)V

    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 3

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->recording:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/RecordControl;->hasCheck()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->delegate:Lorg/telegram/ui/Stories/recorder/RecordControl$Delegate;

    invoke-interface {v0}, Lorg/telegram/ui/Stories/recorder/RecordControl$Delegate;->canRecordAudio()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->touch:Z

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->recordButton:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->flipButton:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->lockButton:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->longpressRecording:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->showLock:Z

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->delegate:Lorg/telegram/ui/Stories/recorder/RecordControl$Delegate;

    new-instance v2, Lorg/telegram/ui/Stories/recorder/RecordControl$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Stories/recorder/RecordControl$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Stories/recorder/RecordControl;)V

    invoke-interface {v1, v0, v2}, Lorg/telegram/ui/Stories/recorder/RecordControl$Delegate;->onVideoRecordStart(ZLjava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic lambda$new$2()V
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->recording:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/RecordControl;->hasCheck()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->delegate:Lorg/telegram/ui/Stories/recorder/RecordControl$Delegate;

    invoke-interface {v0}, Lorg/telegram/ui/Stories/recorder/RecordControl$Delegate;->onFlipLongClick()V

    const/high16 v0, 0x43b40000    # 360.0f

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/recorder/RecordControl;->rotateFlip(F)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->touch:Z

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->recordButton:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->flipButton:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->lockButton:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onDraw$3()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->recording:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->longpressRecording:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->recordingLoadingStart:J

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->recordingLoading:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->touch:Z

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->recordButton:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->flipButton:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->lockButton:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->delegate:Lorg/telegram/ui/Stories/recorder/RecordControl$Delegate;

    invoke-interface {v0, v1}, Lorg/telegram/ui/Stories/recorder/RecordControl$Delegate;->onVideoRecordEnd(Z)V

    return-void
.end method

.method private synthetic lambda$onTouchEvent$4()V
    .locals 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->recordingStart:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->lastDuration:J

    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->recording:Z

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->delegate:Lorg/telegram/ui/Stories/recorder/RecordControl$Delegate;

    invoke-interface {v2, v0, v1}, Lorg/telegram/ui/Stories/recorder/RecordControl$Delegate;->onVideoDuration(J)V

    return-void
.end method

.method private static setDrawableBounds(Landroid/graphics/drawable/Drawable;FF)V
    .locals 2

    .line 0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-static {p0, p1, p2, v0}, Lorg/telegram/ui/Stories/recorder/RecordControl;->setDrawableBounds(Landroid/graphics/drawable/Drawable;FFF)V

    return-void
.end method

.method private static setDrawableBounds(Landroid/graphics/drawable/Drawable;FFF)V
    .locals 2

    .line 0
    sub-float v0, p1, p3

    float-to-int v0, v0

    sub-float v1, p2, p3

    float-to-int v1, v1

    add-float/2addr p1, p3

    float-to-int p1, p1

    add-float/2addr p2, p3

    float-to-int p2, p2

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method


# virtual methods
.method public hasCheck()Z
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->collageProgress:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTouch()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->discardParentTouch:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->galleryImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->galleryImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 46

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->recordingT:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v1, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->recording:Z

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    if-eqz v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v11

    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->recordingLongT:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v1, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->recording:Z

    if-eqz v1, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v12

    iget v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->overrideStartModeIsVideoT:F

    cmpl-float v1, v0, v10

    if-ltz v1, :cond_2

    goto :goto_3

    :cond_2
    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->startModeIsVideoT:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v1, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->startModeIsVideo:Z

    if-eqz v1, :cond_3

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v0

    :goto_3
    invoke-static {v11, v0}, Ljava/lang/Math;->max(FF)F

    move-result v13

    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->touchT:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v1, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->touch:Z

    if-eqz v1, :cond_4

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v14

    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->touchIsCenterT:Lorg/telegram/ui/Components/AnimatedFloat;

    iget v1, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->touchX:F

    iget v2, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->cx:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x42800000    # 64.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    cmpg-float v1, v1, v3

    if-gez v1, :cond_6

    iget-boolean v1, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->recording:Z

    if-nez v1, :cond_5

    iget-object v1, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->recordButton:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ButtonBounce;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_5

    :cond_6
    const/4 v1, 0x0

    :goto_5
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v0

    mul-float v15, v14, v0

    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->touchIsCenter2T:Lorg/telegram/ui/Components/AnimatedFloat;

    iget v1, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->touchX:F

    iget v3, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->cx:F

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    cmpg-float v1, v1, v3

    if-gez v1, :cond_7

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_6

    :cond_7
    const/4 v1, 0x0

    :goto_6
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v0

    mul-float v16, v14, v0

    iget v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->touchX:F

    iget v1, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->cx:F

    sub-float/2addr v0, v1

    const/high16 v17, 0x41800000    # 16.0f

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, -0x40800000    # -1.0f

    invoke-static {v0, v9, v1}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v6

    iget v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->touchX:F

    iget v3, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->cx:F

    sub-float/2addr v0, v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-static {v0, v9, v1}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v18

    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->touchIsButtonT:Lorg/telegram/ui/Components/AnimatedFloat;

    iget v1, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->touchX:F

    iget v2, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->rightCx:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->touchX:F

    iget v3, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->leftCx:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_8

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_7

    :cond_8
    const/4 v1, 0x0

    :goto_7
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v0

    mul-float v5, v14, v0

    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->collage:Lorg/telegram/ui/Components/AnimatedFloat;

    iget v1, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->collageProgress:F

    const/16 v19, 0x0

    const/16 v20, 0x1

    cmpl-float v1, v1, v10

    if-lez v1, :cond_9

    const/4 v1, 0x1

    goto :goto_8

    :cond_9
    const/4 v1, 0x0

    :goto_8
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v0

    sub-float v21, v9, v11

    mul-float v4, v0, v21

    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->collageProgressAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    iget v1, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->collageProgress:F

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v22

    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->checkAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/RecordControl;->hasCheck()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v3

    iget-boolean v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->longpressRecording:Z

    if-eqz v0, :cond_a

    mul-float v0, v11, v13

    mul-float v0, v0, v14

    move v2, v0

    goto :goto_9

    :cond_a
    const/4 v2, 0x0

    :goto_9
    const/high16 v23, 0x40000000    # 2.0f

    cmpl-float v0, v2, v10

    if-lez v0, :cond_b

    iget v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->cx:F

    const/high16 v1, 0x42480000    # 50.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    sub-float v10, v0, v10

    iget v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->cx:F

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v0

    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->hintLinePaintWhite:Landroid/graphics/Paint;

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->hintLinePaintBlack:Landroid/graphics/Paint;

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v9, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->cy:F

    iget v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->rightCx:F

    const/high16 v24, 0x41f00000    # 30.0f

    move/from16 v25, v3

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v0, v3

    invoke-static {v1, v0, v2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    iget v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->cy:F

    move/from16 v26, v5

    iget-object v5, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->hintLinePaintBlack:Landroid/graphics/Paint;

    move/from16 v27, v0

    move-object/from16 v0, p1

    move/from16 v28, v1

    move/from16 v29, v14

    move v14, v2

    move v2, v9

    move/from16 v9, v25

    move/from16 v25, v12

    move v12, v4

    move/from16 v4, v27

    move/from16 v30, v26

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v2, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->cy:F

    iget v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->rightCx:F

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    move/from16 v1, v28

    invoke-static {v1, v0, v14}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    iget v4, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->cy:F

    iget-object v5, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->hintLinePaintWhite:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v2, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->cy:F

    iget v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->leftCx:F

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-static {v10, v0, v14}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    iget v4, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->cy:F

    iget-object v5, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->hintLinePaintBlack:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move v1, v10

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v2, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->cy:F

    iget v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->leftCx:F

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-static {v10, v0, v14}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    iget v4, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->cy:F

    iget-object v5, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->hintLinePaintWhite:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move v1, v10

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_a

    :cond_b
    move v9, v3

    move/from16 v30, v5

    move/from16 v25, v12

    move/from16 v29, v14

    move v12, v4

    :goto_a
    iget v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->cx:F

    iget-object v1, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->recordCx:Lorg/telegram/ui/Components/AnimatedFloat;

    const/high16 v10, 0x40800000    # 4.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v6

    add-float/2addr v2, v0

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v1

    invoke-static {v0, v1, v15}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v14

    const/high16 v0, 0x41e80000    # 29.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v0, v1, v11}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42000000    # 32.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v4

    mul-float v3, v3, v4

    sub-float/2addr v2, v3

    invoke-static {v0, v2, v15}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v24

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    const/high16 v2, 0x40e00000    # 7.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v0, v2, v11}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v0

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v0, v1, v15}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v0

    int-to-float v6, v0

    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->recordButton:Lorg/telegram/ui/Components/ButtonBounce;

    iget-boolean v1, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->startModeIsVideo:Z

    const v5, 0x3e4ccccd    # 0.2f

    if-eqz v1, :cond_c

    const/4 v1, 0x0

    goto :goto_b

    :cond_c
    const v1, 0x3e4ccccd    # 0.2f

    :goto_b
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ButtonBounce;->getScale(F)F

    move-result v0

    iget-object v1, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->animatedAmplitude:Lorg/telegram/ui/Components/AnimatedFloat;

    iget v2, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->amplitude:F

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v1

    mul-float v1, v1, v5

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    invoke-static {v0, v1, v11}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v4

    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    sub-float v1, v14, v24

    iget v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->cy:F

    sub-float v5, v0, v24

    add-float v10, v14, v24

    add-float v0, v0, v24

    invoke-virtual {v3, v1, v5, v10, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->mainPaint:Landroid/graphics/Paint;

    sub-float v28, v2, v9

    mul-float v2, v13, v28

    const/4 v5, -0x1

    move/from16 v31, v1

    const v1, -0x8cecf

    invoke-static {v5, v1, v2}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v32, 0x437f0000    # 255.0f

    const/4 v0, 0x0

    cmpl-float v1, v9, v0

    if-lez v1, :cond_d

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->cx:F

    iget v1, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->cy:F

    invoke-virtual {v8, v4, v4, v0, v1}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->mainPaint:Landroid/graphics/Paint;

    mul-float v1, v28, v32

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->mainPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v3, v6, v6, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v5, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v2, v0

    const/16 v33, 0xff

    const/16 v34, 0x1f

    const/4 v1, 0x0

    const/16 v35, 0x0

    move-object/from16 v0, p1

    move/from16 v36, v31

    move/from16 v31, v2

    move/from16 v2, v35

    move-object/from16 v37, v3

    move v3, v5

    move v5, v4

    move/from16 v4, v31

    move/from16 v38, v5

    move/from16 v5, v33

    move/from16 v26, v10

    move v10, v6

    move/from16 v6, v34

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    goto :goto_c

    :cond_d
    move-object/from16 v37, v3

    move/from16 v38, v4

    move/from16 v26, v10

    move/from16 v36, v31

    move v10, v6

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    :goto_c
    iget v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->cx:F

    iget v1, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->cy:F

    move/from16 v2, v38

    invoke-virtual {v8, v2, v2, v0, v1}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->mainPaint:Landroid/graphics/Paint;

    const/16 v6, 0xff

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->mainPaint:Landroid/graphics/Paint;

    move-object/from16 v5, v37

    invoke-virtual {v8, v5, v10, v10, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    const v31, 0x3f333333    # 0.7f

    const v0, 0x3e99999a    # 0.3f

    const/4 v1, 0x0

    cmpl-float v3, v9, v1

    if-lez v3, :cond_f

    iget-object v1, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->checkPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v3, v4

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->checkPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    iget-object v1, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->checkPath:Landroid/graphics/Path;

    iget-object v3, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->check1:Lorg/telegram/ui/Components/Point;

    iget v4, v3, Lorg/telegram/ui/Components/Point;->x:F

    iget v3, v3, Lorg/telegram/ui/Components/Point;->y:F

    invoke-virtual {v1, v4, v3}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v1, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->checkPath:Landroid/graphics/Path;

    iget-object v3, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->check1:Lorg/telegram/ui/Components/Point;

    iget v3, v3, Lorg/telegram/ui/Components/Point;->x:F

    iget-object v4, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->check2:Lorg/telegram/ui/Components/Point;

    iget v4, v4, Lorg/telegram/ui/Components/Point;->x:F

    div-float v6, v9, v0

    move/from16 v35, v10

    move/from16 v37, v14

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    invoke-static {v6, v0, v10}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v14

    invoke-static {v3, v4, v14}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    iget-object v4, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->check1:Lorg/telegram/ui/Components/Point;

    iget v4, v4, Lorg/telegram/ui/Components/Point;->y:F

    iget-object v14, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->check2:Lorg/telegram/ui/Components/Point;

    iget v14, v14, Lorg/telegram/ui/Components/Point;->y:F

    invoke-static {v6, v0, v10}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v6

    invoke-static {v4, v14, v6}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    invoke-virtual {v1, v3, v0}, Landroid/graphics/Path;->lineTo(FF)V

    const v0, 0x3e99999a    # 0.3f

    cmpl-float v1, v9, v0

    if-lez v1, :cond_e

    iget-object v1, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->checkPath:Landroid/graphics/Path;

    iget-object v3, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->check2:Lorg/telegram/ui/Components/Point;

    iget v3, v3, Lorg/telegram/ui/Components/Point;->x:F

    iget-object v4, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->check3:Lorg/telegram/ui/Components/Point;

    iget v4, v4, Lorg/telegram/ui/Components/Point;->x:F

    sub-float v6, v9, v0

    div-float v6, v6, v31

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    invoke-static {v6, v0, v10}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v14

    invoke-static {v3, v4, v14}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    iget-object v4, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->check2:Lorg/telegram/ui/Components/Point;

    iget v4, v4, Lorg/telegram/ui/Components/Point;->y:F

    iget-object v14, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->check3:Lorg/telegram/ui/Components/Point;

    iget v14, v14, Lorg/telegram/ui/Components/Point;->y:F

    invoke-static {v6, v0, v10}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v6

    invoke-static {v4, v14, v6}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    invoke-virtual {v1, v3, v0}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_e
    iget v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->cx:F

    iget v1, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->cy:F

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->checkPath:Landroid/graphics/Path;

    iget-object v1, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->checkPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_d

    :cond_f
    move/from16 v35, v10

    move/from16 v37, v14

    :goto_d
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->cx:F

    iget v2, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->cy:F

    invoke-virtual {v8, v1, v1, v0, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    const/high16 v0, 0x42060000    # 33.5f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    const/high16 v1, 0x40900000    # 4.5f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    const/high16 v2, 0x41100000    # 9.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2, v15}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v1

    add-float v1, v24, v1

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v12

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v4, v3, v15

    mul-float v2, v2, v4

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v1, v3, v12}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v1

    int-to-float v6, v1

    sub-float v1, v24, v6

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-static {v0, v1, v9}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    iget v1, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->cx:F

    sub-float v2, v1, v0

    iget v3, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->cy:F

    sub-float v4, v3, v0

    add-float/2addr v1, v0

    add-float/2addr v3, v0

    invoke-virtual {v5, v2, v4, v1, v3}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->outlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->outlinePaint:Landroid/graphics/Paint;

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3e99999a    # 0.3f

    invoke-static {v2, v3, v12}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    mul-float v3, v3, v32

    mul-float v3, v3, v28

    float-to-int v2, v3

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v1, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->cx:F

    iget v2, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->cy:F

    iget-object v3, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->outlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const/4 v0, 0x0

    cmpl-float v1, v12, v0

    if-lez v1, :cond_10

    const/4 v1, 0x1

    goto :goto_e

    :cond_10
    const/4 v1, 0x0

    :goto_e
    cmpl-float v2, v22, v0

    if-lez v2, :cond_11

    const/4 v0, 0x1

    goto :goto_f

    :cond_11
    const/4 v0, 0x0

    :goto_f
    and-int/2addr v0, v1

    const/high16 v9, 0x43b40000    # 360.0f

    if-eqz v0, :cond_12

    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->outlinePaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    mul-float v3, v22, v9

    iget-object v10, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->outlinePaint:Landroid/graphics/Paint;

    const/high16 v2, -0x3d4c0000    # -90.0f

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v12, v5

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_10

    :cond_12
    move-object v12, v5

    :goto_10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->recordingStart:J

    sub-long v4, v0, v2

    iget-boolean v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->recording:Z

    if-eqz v0, :cond_13

    const/4 v1, 0x0

    goto :goto_11

    :cond_13
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v1, v0, v25

    :goto_11
    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->delegate:Lorg/telegram/ui/Stories/recorder/RecordControl$Delegate;

    const-wide/32 v2, 0xea60

    if-eqz v0, :cond_14

    invoke-interface {v0}, Lorg/telegram/ui/Stories/recorder/RecordControl$Delegate;->getMaxVideoDuration()J

    move-result-wide v38

    goto :goto_12

    :cond_14
    move-wide/from16 v38, v2

    :goto_12
    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->delegate:Lorg/telegram/ui/Stories/recorder/RecordControl$Delegate;

    if-eqz v0, :cond_15

    invoke-interface {v0}, Lorg/telegram/ui/Stories/recorder/RecordControl$Delegate;->getMaxVisibleVideoDuration()J

    move-result-wide v40

    goto :goto_13

    :cond_15
    move-wide/from16 v40, v2

    :goto_13
    long-to-float v0, v4

    const-wide/16 v42, 0x0

    cmp-long v10, v40, v42

    if-gez v10, :cond_16

    goto :goto_14

    :cond_16
    move-wide/from16 v2, v40

    :goto_14
    long-to-float v2, v2

    div-float/2addr v0, v2

    mul-float v0, v0, v9

    invoke-static {v0, v9}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->recordingLoadingT:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v2, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->recordingLoading:Z

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v0

    iget-object v2, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->outlineFilledPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v2, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->outlineFilledPaint:Landroid/graphics/Paint;

    mul-float v6, v0, v31

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float v1, v9, v1

    invoke-static {v6, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    mul-float v1, v1, v32

    float-to-int v1, v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-gtz v2, :cond_17

    iget-object v6, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->outlineFilledPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x3d4c0000    # -90.0f

    const/4 v9, 0x0

    move-object/from16 v0, p1

    move-object v1, v12

    move-wide/from16 v44, v4

    move v4, v9

    move-object v5, v6

    :goto_15
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_16

    :cond_17
    move-wide/from16 v44, v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v4, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->recordingLoadingStart:J

    sub-long/2addr v1, v4

    const-wide/16 v4, 0x1518

    rem-long/2addr v1, v4

    long-to-float v1, v1

    iget-object v2, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->loadingSegments:[F

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/CircularProgressDrawable;->getSegments(F[F)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    iget-object v1, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->loadingSegments:[F

    aget v2, v1, v19

    aget v1, v1, v20

    add-float v4, v2, v1

    div-float v4, v4, v23

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float v1, v1, v23

    iget-boolean v2, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->recordingLoading:Z

    if-eqz v2, :cond_18

    div-float v3, v3, v23

    const/high16 v2, -0x3d4c0000    # -90.0f

    add-float/2addr v2, v3

    invoke-static {v2, v4, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v4

    invoke-static {v3, v1, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v1

    :cond_18
    sub-float v2, v4, v1

    mul-float v3, v1, v23

    iget-object v5, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->outlineFilledPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object v1, v12

    goto :goto_15

    :goto_16
    iget-boolean v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->recording:Z

    if-eqz v0, :cond_1b

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    const-wide/16 v0, 0x3e8

    move-wide/from16 v2, v44

    div-long v4, v2, v0

    iget-wide v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->lastDuration:J

    const-wide/16 v9, 0x3e8

    div-long/2addr v0, v9

    cmp-long v6, v4, v0

    if-eqz v6, :cond_19

    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->delegate:Lorg/telegram/ui/Stories/recorder/RecordControl$Delegate;

    invoke-interface {v0, v4, v5}, Lorg/telegram/ui/Stories/recorder/RecordControl$Delegate;->onVideoDuration(J)V

    :cond_19
    const-wide/16 v0, 0x0

    cmp-long v4, v38, v0

    if-lez v4, :cond_1a

    cmp-long v0, v2, v38

    if-ltz v0, :cond_1a

    new-instance v0, Lorg/telegram/ui/Stories/recorder/RecordControl$$ExternalSyntheticLambda1;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Stories/recorder/RecordControl$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/recorder/RecordControl;)V

    invoke-virtual {v7, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1a
    iput-wide v2, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->lastDuration:J

    :cond_1b
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    iget-boolean v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->showLock:Z

    const/high16 v9, 0x41b00000    # 22.0f

    if-eqz v0, :cond_1c

    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->lockButton:Lorg/telegram/ui/Components/ButtonBounce;

    const v10, 0x3e4ccccd    # 0.2f

    invoke-virtual {v0, v10}, Lorg/telegram/ui/Components/ButtonBounce;->getScale(F)F

    move-result v0

    mul-float v0, v0, v11

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_1d

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v1, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->leftCx:F

    iget v2, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->cy:F

    invoke-virtual {v8, v0, v0, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->leftCx:F

    iget v1, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->cy:F

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->buttonPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getRotation()F

    move-result v0

    neg-float v0, v0

    iget v1, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->leftCx:F

    iget v2, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->cy:F

    invoke-virtual {v8, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->unlockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_17

    :cond_1c
    const v10, 0x3e4ccccd    # 0.2f

    :cond_1d
    :goto_17
    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->lockButton:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v0, v10}, Lorg/telegram/ui/Components/ButtonBounce;->getScale(F)F

    move-result v0

    mul-float v0, v0, v21

    mul-float v0, v0, v28

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_1e

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v1, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->leftCx:F

    iget v2, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->cy:F

    invoke-virtual {v8, v0, v0, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getRotation()F

    move-result v0

    neg-float v0, v0

    iget v1, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->leftCx:F

    iget v2, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->cy:F

    invoke-virtual {v8, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->galleryImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, v8}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1e
    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->dualT:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v1, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->dual:Z

    if-eqz v1, :cond_1f

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_18

    :cond_1f
    const/4 v1, 0x0

    :goto_18
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_20

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v1, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->flipButton:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v1, v10}, Lorg/telegram/ui/Components/ButtonBounce;->getScale(F)F

    move-result v1

    mul-float v1, v1, v0

    mul-float v1, v1, v28

    iget v2, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->rightCx:F

    iget v3, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->cy:F

    invoke-virtual {v8, v1, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v1, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->flipDrawableRotateT:Lorg/telegram/ui/Components/AnimatedFloat;

    iget v2, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->flipDrawableRotate:F

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getRotation()F

    move-result v2

    sub-float/2addr v1, v2

    iget v2, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->rightCx:F

    iget v3, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->cy:F

    invoke-virtual {v8, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget v1, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->rightCx:F

    iget v2, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->cy:F

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->buttonPaintWhite:Landroid/graphics/Paint;

    invoke-virtual {v8, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v1, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->flipDrawableBlack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_20
    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v2, v0, v1

    if-gez v2, :cond_21

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v2, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->flipButton:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v2, v10}, Lorg/telegram/ui/Components/ButtonBounce;->getScale(F)F

    move-result v2

    sub-float v0, v1, v0

    mul-float v2, v2, v0

    mul-float v2, v2, v28

    iget v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->rightCx:F

    iget v1, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->cy:F

    invoke-virtual {v8, v2, v2, v0, v1}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->flipDrawableRotateT:Lorg/telegram/ui/Components/AnimatedFloat;

    iget v1, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->flipDrawableRotate:F

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getRotation()F

    move-result v1

    sub-float/2addr v0, v1

    iget v1, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->rightCx:F

    iget v2, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->cy:F

    invoke-virtual {v8, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->rightCx:F

    iget v1, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->cy:F

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->buttonPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->flipDrawableWhite:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_21
    iget-boolean v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->longpressRecording:Z

    if-eqz v0, :cond_22

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/RecordControl;->hasCheck()Z

    move-result v0

    if-nez v0, :cond_22

    mul-float v14, v29, v13

    mul-float v14, v14, v11

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    move/from16 v3, v30

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v1

    invoke-static {v3, v15}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    mul-float v0, v0, v14

    move v14, v0

    goto :goto_19

    :cond_22
    const/4 v14, 0x0

    :goto_19
    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->lockedT:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v1, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->longpressRecording:Z

    if-nez v1, :cond_23

    iget-boolean v1, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->recording:Z

    if-eqz v1, :cond_23

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_1a

    :cond_23
    const/4 v1, 0x0

    :goto_1a
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v15

    const/4 v0, 0x0

    cmpl-float v1, v14, v0

    if-lez v1, :cond_27

    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->redPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->touchX:F

    iget v1, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->cy:F

    iget-object v2, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->redPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v0, v1, v14, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v6, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->touchX:F

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v0

    mul-float v0, v0, v29

    const v1, 0x3fa66666    # 1.3f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v5

    sub-float v0, v37, v6

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v17

    mul-float v0, v14, v23

    add-float v1, v24, v0

    cmpg-float v1, v17, v1

    if-gez v1, :cond_27

    const v1, 0x3f19999a    # 0.6f

    cmpg-float v1, v5, v1

    if-gez v1, :cond_27

    add-float v18, v24, v14

    cmpg-float v1, v17, v18

    if-gez v1, :cond_24

    mul-float v1, v24, v24

    mul-float v2, v17, v17

    add-float v3, v1, v2

    mul-float v4, v14, v14

    sub-float/2addr v3, v4

    mul-float v19, v24, v23

    mul-float v19, v19, v17

    div-float v3, v3, v19

    float-to-double v9, v3

    invoke-static {v9, v10}, Ljava/lang/Math;->acos(D)D

    move-result-wide v9

    add-float/2addr v4, v2

    sub-float/2addr v4, v1

    mul-float v0, v0, v17

    div-float/2addr v4, v0

    float-to-double v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    goto :goto_1b

    :cond_24
    const-wide/16 v9, 0x0

    move-wide v0, v9

    :goto_1b
    cmpl-float v4, v6, v37

    if-lez v4, :cond_25

    const-wide/16 v20, 0x0

    goto :goto_1c

    :cond_25
    const-wide v20, 0x400921fb54442d18L    # Math.PI

    :goto_1c
    sub-float v4, v24, v14

    div-float v4, v4, v17

    float-to-double v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->acos(D)D

    move-result-wide v2

    double-to-float v2, v2

    float-to-double v2, v2

    add-double v33, v20, v9

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v38, v2, v9

    move/from16 v22, v11

    move-object/from16 v25, v12

    float-to-double v11, v5

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v38, v38, v11

    add-double v33, v33, v38

    sub-double v9, v20, v9

    sub-double v9, v9, v38

    const-wide v30, 0x400921fb54442d18L    # Math.PI

    add-double v38, v20, v30

    sub-double v38, v38, v0

    sub-double v40, v30, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v40, v40, v2

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v40, v40, v11

    sub-double v38, v38, v40

    sub-double v20, v20, v30

    add-double v20, v20, v0

    add-double v20, v20, v40

    iget v2, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->cy:F

    iget-object v11, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->p1:Lorg/telegram/ui/Components/Point;

    move-object/from16 v0, p0

    move/from16 v1, v37

    move-wide/from16 v3, v33

    move v12, v5

    move/from16 v5, v24

    move/from16 v27, v6

    move-object v6, v11

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Stories/recorder/RecordControl;->getVector(FFDFLorg/telegram/ui/Components/Point;)V

    iget v2, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->cy:F

    iget-object v6, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->p2:Lorg/telegram/ui/Components/Point;

    move-wide v3, v9

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Stories/recorder/RecordControl;->getVector(FFDFLorg/telegram/ui/Components/Point;)V

    iget v2, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->cy:F

    iget-object v6, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->p3:Lorg/telegram/ui/Components/Point;

    move/from16 v1, v27

    move-wide/from16 v3, v38

    move v5, v14

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Stories/recorder/RecordControl;->getVector(FFDFLorg/telegram/ui/Components/Point;)V

    iget v2, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->cy:F

    iget-object v6, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->p4:Lorg/telegram/ui/Components/Point;

    move-wide/from16 v3, v20

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Stories/recorder/RecordControl;->getVector(FFDFLorg/telegram/ui/Components/Point;)V

    const v0, 0x4019999a    # 2.4f

    mul-float v5, v12, v0

    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->p1:Lorg/telegram/ui/Components/Point;

    iget-object v1, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->p3:Lorg/telegram/ui/Components/Point;

    invoke-direct {v7, v0, v1}, Lorg/telegram/ui/Stories/recorder/RecordControl;->dist(Lorg/telegram/ui/Components/Point;Lorg/telegram/ui/Components/Point;)F

    move-result v0

    div-float v0, v0, v18

    invoke-static {v5, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    mul-float v17, v17, v23

    div-float v1, v17, v18

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    mul-float v0, v0, v1

    mul-float v11, v24, v0

    mul-float v12, v14, v0

    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->p1:Lorg/telegram/ui/Components/Point;

    iget v1, v0, Lorg/telegram/ui/Components/Point;->x:F

    iget v2, v0, Lorg/telegram/ui/Components/Point;->y:F

    const-wide v17, 0x3ff921fb60000000L    # 1.5707963705062866

    sub-double v3, v33, v17

    iget-object v6, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->h1:Lorg/telegram/ui/Components/Point;

    move-object/from16 v0, p0

    move v5, v11

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Stories/recorder/RecordControl;->getVector(FFDFLorg/telegram/ui/Components/Point;)V

    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->p2:Lorg/telegram/ui/Components/Point;

    iget v1, v0, Lorg/telegram/ui/Components/Point;->x:F

    iget v2, v0, Lorg/telegram/ui/Components/Point;->y:F

    add-double v3, v9, v17

    iget-object v6, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->h2:Lorg/telegram/ui/Components/Point;

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Stories/recorder/RecordControl;->getVector(FFDFLorg/telegram/ui/Components/Point;)V

    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->p3:Lorg/telegram/ui/Components/Point;

    iget v1, v0, Lorg/telegram/ui/Components/Point;->x:F

    iget v2, v0, Lorg/telegram/ui/Components/Point;->y:F

    add-double v3, v38, v17

    iget-object v6, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->h3:Lorg/telegram/ui/Components/Point;

    move-object/from16 v0, p0

    move v5, v12

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Stories/recorder/RecordControl;->getVector(FFDFLorg/telegram/ui/Components/Point;)V

    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->p4:Lorg/telegram/ui/Components/Point;

    iget v1, v0, Lorg/telegram/ui/Components/Point;->x:F

    iget v2, v0, Lorg/telegram/ui/Components/Point;->y:F

    sub-double v3, v20, v17

    iget-object v6, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->h4:Lorg/telegram/ui/Components/Point;

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Stories/recorder/RecordControl;->getVector(FFDFLorg/telegram/ui/Components/Point;)V

    mul-float v0, v29, v13

    mul-float v0, v0, v22

    mul-float v0, v0, v16

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_26

    iget-object v1, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->metaballsPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    iget-object v1, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->metaballsPath:Landroid/graphics/Path;

    iget-object v2, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->p1:Lorg/telegram/ui/Components/Point;

    iget v3, v2, Lorg/telegram/ui/Components/Point;->x:F

    iget v2, v2, Lorg/telegram/ui/Components/Point;->y:F

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v1, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->metaballsPath:Landroid/graphics/Path;

    iget-object v2, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->h1:Lorg/telegram/ui/Components/Point;

    iget v3, v2, Lorg/telegram/ui/Components/Point;->x:F

    iget v2, v2, Lorg/telegram/ui/Components/Point;->y:F

    iget-object v4, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->h3:Lorg/telegram/ui/Components/Point;

    iget v5, v4, Lorg/telegram/ui/Components/Point;->x:F

    iget v4, v4, Lorg/telegram/ui/Components/Point;->y:F

    iget-object v6, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->p3:Lorg/telegram/ui/Components/Point;

    iget v9, v6, Lorg/telegram/ui/Components/Point;->x:F

    iget v6, v6, Lorg/telegram/ui/Components/Point;->y:F

    move-object/from16 v38, v1

    move/from16 v39, v3

    move/from16 v40, v2

    move/from16 v41, v5

    move/from16 v42, v4

    move/from16 v43, v9

    move/from16 v44, v6

    invoke-virtual/range {v38 .. v44}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v1, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->metaballsPath:Landroid/graphics/Path;

    iget-object v2, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->p4:Lorg/telegram/ui/Components/Point;

    iget v3, v2, Lorg/telegram/ui/Components/Point;->x:F

    iget v2, v2, Lorg/telegram/ui/Components/Point;->y:F

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->metaballsPath:Landroid/graphics/Path;

    iget-object v2, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->h4:Lorg/telegram/ui/Components/Point;

    iget v3, v2, Lorg/telegram/ui/Components/Point;->x:F

    iget v2, v2, Lorg/telegram/ui/Components/Point;->y:F

    iget-object v4, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->h2:Lorg/telegram/ui/Components/Point;

    iget v5, v4, Lorg/telegram/ui/Components/Point;->x:F

    iget v4, v4, Lorg/telegram/ui/Components/Point;->y:F

    iget-object v6, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->p2:Lorg/telegram/ui/Components/Point;

    iget v9, v6, Lorg/telegram/ui/Components/Point;->x:F

    iget v6, v6, Lorg/telegram/ui/Components/Point;->y:F

    move-object/from16 v38, v1

    move/from16 v39, v3

    move/from16 v40, v2

    move/from16 v41, v5

    move/from16 v42, v4

    move/from16 v43, v9

    move/from16 v44, v6

    invoke-virtual/range {v38 .. v44}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v1, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->metaballsPath:Landroid/graphics/Path;

    iget-object v2, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->p1:Lorg/telegram/ui/Components/Point;

    iget v3, v2, Lorg/telegram/ui/Components/Point;->x:F

    iget v2, v2, Lorg/telegram/ui/Components/Point;->y:F

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->redPaint:Landroid/graphics/Paint;

    mul-float v0, v0, v32

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->metaballsPath:Landroid/graphics/Path;

    iget-object v1, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->redPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->cy:F

    sub-float v1, v0, v24

    add-float v0, v0, v24

    move-object/from16 v2, v25

    move/from16 v4, v26

    move/from16 v3, v36

    invoke-virtual {v2, v3, v1, v4, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->redPaint:Landroid/graphics/Paint;

    move/from16 v1, v35

    invoke-virtual {v8, v2, v1, v1, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_26
    :goto_1d
    const/4 v0, 0x0

    goto :goto_1e

    :cond_27
    move/from16 v22, v11

    goto :goto_1d

    :goto_1e
    cmpl-float v1, v14, v0

    if-gtz v1, :cond_28

    cmpl-float v1, v15, v0

    if-lez v1, :cond_2c

    :cond_28
    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->lockButton:Lorg/telegram/ui/Components/ButtonBounce;

    const v1, 0x3e4ccccd    # 0.2f

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ButtonBounce;->getScale(F)F

    move-result v0

    mul-float v0, v0, v22

    mul-float v0, v0, v28

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v1, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->circlePath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    const/4 v1, 0x0

    cmpl-float v2, v14, v1

    if-lez v2, :cond_29

    iget-object v2, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->circlePath:Landroid/graphics/Path;

    iget v3, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->touchX:F

    iget v4, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->cy:F

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v3, v4, v14, v5}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    :cond_29
    cmpl-float v1, v15, v1

    if-lez v1, :cond_2a

    iget-boolean v1, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->showLock:Z

    if-eqz v1, :cond_2a

    iget-object v1, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->circlePath:Landroid/graphics/Path;

    iget v2, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->leftCx:F

    iget v3, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->cy:F

    const/high16 v4, 0x41b00000    # 22.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v4, v5

    mul-float v15, v15, v4

    mul-float v15, v15, v0

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v3, v15, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    :cond_2a
    iget-object v1, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->circlePath:Landroid/graphics/Path;

    invoke-virtual {v8, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget-boolean v1, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->showLock:Z

    if-eqz v1, :cond_2b

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v1, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->leftCx:F

    iget v2, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->cy:F

    invoke-virtual {v8, v0, v0, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->leftCx:F

    iget v1, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->cy:F

    const/high16 v2, 0x41b00000    # 22.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v2, v3

    iget-object v3, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->buttonPaintWhite:Landroid/graphics/Paint;

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getRotation()F

    move-result v0

    neg-float v0, v0

    iget v1, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->leftCx:F

    iget v2, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->cy:F

    invoke-virtual {v8, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->lockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2b
    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->flipButton:Lorg/telegram/ui/Components/ButtonBounce;

    const v1, 0x3e4ccccd    # 0.2f

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ButtonBounce;->getScale(F)F

    move-result v0

    mul-float v0, v0, v28

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v1, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->rightCx:F

    iget v2, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->cy:F

    invoke-virtual {v8, v0, v0, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->flipDrawableRotateT:Lorg/telegram/ui/Components/AnimatedFloat;

    iget v1, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->flipDrawableRotate:F

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getRotation()F

    move-result v1

    sub-float/2addr v0, v1

    iget v1, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->rightCx:F

    iget v2, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->cy:F

    invoke-virtual {v8, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->rightCx:F

    iget v1, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->cy:F

    const/high16 v2, 0x41b00000    # 22.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->buttonPaintWhite:Landroid/graphics/Paint;

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->flipDrawableBlack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2c
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 p2, 0x42c80000    # 100.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float v0, p1

    const/high16 v1, 0x40000000    # 2.0f

    div-float v2, v0, v1

    iput v2, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->cx:F

    int-to-float v2, p2

    div-float/2addr v2, v1

    iput v2, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->cy:F

    const/high16 v1, 0x43070000    # 135.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3eb33333    # 0.35f

    mul-float v0, v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->cx:F

    sub-float v2, v1, v0

    iput v2, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->leftCx:F

    add-float/2addr v1, v0

    iput v1, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->rightCx:F

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->flipDrawableWhite:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->cy:F

    const/high16 v3, 0x41600000    # 14.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v0, v1, v2, v4}, Lorg/telegram/ui/Stories/recorder/RecordControl;->setDrawableBounds(Landroid/graphics/drawable/Drawable;FFF)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->flipDrawableBlack:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->rightCx:F

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->cy:F

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/ui/Stories/recorder/RecordControl;->setDrawableBounds(Landroid/graphics/drawable/Drawable;FFF)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->unlockDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->leftCx:F

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->cy:F

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/RecordControl;->setDrawableBounds(Landroid/graphics/drawable/Drawable;FF)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->lockDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->leftCx:F

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->cy:F

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/RecordControl;->setDrawableBounds(Landroid/graphics/drawable/Drawable;FF)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->pauseDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->leftCx:F

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->cy:F

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/RecordControl;->setDrawableBounds(Landroid/graphics/drawable/Drawable;FF)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->galleryImage:Lorg/telegram/messenger/ImageReceiver;

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->leftCx:F

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v1, v3

    iget v3, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->cy:F

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v3, v2

    const/high16 v2, 0x42200000    # 40.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v3, v4, v2}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->redMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->redMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->cx:F

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->cy:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->redGradient:Landroid/graphics/RadialGradient;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->redMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 17

    move-object/from16 v7, p0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    const/4 v9, 0x0

    add-float/2addr v0, v9

    iget v1, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->rightCx:F

    iget v2, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->leftCx:F

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    add-float v11, v0, v9

    iget v3, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->rightCx:F

    iget v4, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->cy:F

    const/high16 v0, 0x40e00000    # 7.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v5, v0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move v1, v10

    move v2, v11

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Stories/recorder/RecordControl;->isPressed(FFFFFZ)Z

    move-result v12

    iget-boolean v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->recordingLoading:Z

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->recordButton:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v0, v14}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->flipButton:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v0, v14}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->lockButton:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v0, v14}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    goto :goto_2

    :cond_0
    if-eqz v8, :cond_1

    iget-boolean v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->touch:Z

    if-eqz v0, :cond_4

    :cond_1
    iget-object v15, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->recordButton:Lorg/telegram/ui/Components/ButtonBounce;

    iget v3, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->cx:F

    iget v4, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->cy:F

    const/high16 v0, 0x42700000    # 60.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v10

    move v2, v11

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Stories/recorder/RecordControl;->isPressed(FFFFFZ)Z

    move-result v0

    invoke-virtual {v15, v0}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    iget-object v15, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->flipButton:Lorg/telegram/ui/Components/ButtonBounce;

    iget v3, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->rightCx:F

    iget v4, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->cy:F

    const/high16 v16, 0x41f00000    # 30.0f

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v5, v0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Stories/recorder/RecordControl;->isPressed(FFFFFZ)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/RecordControl;->hasCheck()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v15, v0}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    iget-object v15, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->lockButton:Lorg/telegram/ui/Components/ButtonBounce;

    iget v3, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->leftCx:F

    iget v4, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->cy:F

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v10

    move v2, v11

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Stories/recorder/RecordControl;->isPressed(FFFFFZ)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/RecordControl;->hasCheck()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v15, v0}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    :cond_4
    :goto_2
    if-nez v8, :cond_8

    iput-boolean v13, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->touch:Z

    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->recordButton:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ButtonBounce;->isPressed()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->flipButton:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ButtonBounce;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    const/4 v14, 0x1

    :cond_6
    iput-boolean v14, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->discardParentTouch:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->touchStart:J

    iput v10, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->touchX:F

    iput v11, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->touchY:F

    iget v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->cx:F

    sub-float/2addr v10, v0

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x42480000    # 50.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_7

    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->onRecordLongPressRunnable:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_7
    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->flipButton:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ButtonBounce;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->onFlipLongPressRunnable:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto/16 :goto_5

    :cond_8
    const/4 v0, 0x2

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x43340000    # 180.0f

    if-ne v8, v0, :cond_b

    iget-boolean v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->touch:Z

    if-nez v0, :cond_9

    return v14

    :cond_9
    iget v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->rightCx:F

    iget v3, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->leftCx:F

    invoke-static {v10, v0, v3}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v0

    iput v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->touchX:F

    iput v11, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->touchY:F

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    iget-boolean v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->recording:Z

    if-eqz v0, :cond_a

    iget-boolean v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->flipButtonWasPressed:Z

    if-nez v0, :cond_a

    if-eqz v12, :cond_a

    invoke-virtual {v7, v2}, Lorg/telegram/ui/Stories/recorder/RecordControl;->rotateFlip(F)V

    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->delegate:Lorg/telegram/ui/Stories/recorder/RecordControl$Delegate;

    invoke-interface {v0}, Lorg/telegram/ui/Stories/recorder/RecordControl$Delegate;->onFlipClick()V

    :cond_a
    iget-boolean v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->recording:Z

    if-eqz v0, :cond_16

    iget-boolean v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->longpressRecording:Z

    if-eqz v0, :cond_16

    iget v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->cy:F

    const/high16 v2, 0x42400000    # 48.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    sub-float/2addr v0, v11

    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    div-float/2addr v0, v2

    invoke-static {v0, v1, v9}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v0

    iget-object v1, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->delegate:Lorg/telegram/ui/Stories/recorder/RecordControl$Delegate;

    invoke-interface {v1, v0}, Lorg/telegram/ui/Stories/recorder/RecordControl$Delegate;->onZoom(F)V

    goto/16 :goto_5

    :cond_b
    if-eq v8, v13, :cond_d

    const/4 v0, 0x3

    if-ne v8, v0, :cond_c

    goto :goto_3

    :cond_c
    const/4 v13, 0x0

    goto/16 :goto_5

    :cond_d
    :goto_3
    iget-boolean v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->touch:Z

    if-nez v0, :cond_e

    return v14

    :cond_e
    iput-boolean v14, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->touch:Z

    iput-boolean v14, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->discardParentTouch:Z

    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->onRecordLongPressRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->onFlipLongPressRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-boolean v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->recording:Z

    if-nez v0, :cond_f

    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->lockButton:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ButtonBounce;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->delegate:Lorg/telegram/ui/Stories/recorder/RecordControl$Delegate;

    invoke-interface {v0}, Lorg/telegram/ui/Stories/recorder/RecordControl$Delegate;->onGalleryClick()V

    goto/16 :goto_4

    :cond_f
    iget-boolean v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->recording:Z

    if-eqz v0, :cond_10

    iget-boolean v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->longpressRecording:Z

    if-eqz v0, :cond_10

    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->lockButton:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ButtonBounce;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_13

    iput-boolean v14, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->longpressRecording:Z

    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->lockedT:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v0, v1, v13}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->delegate:Lorg/telegram/ui/Stories/recorder/RecordControl$Delegate;

    invoke-interface {v0}, Lorg/telegram/ui/Stories/recorder/RecordControl$Delegate;->onVideoRecordLocked()V

    goto :goto_4

    :cond_10
    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->recordButton:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ButtonBounce;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/RecordControl;->hasCheck()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->delegate:Lorg/telegram/ui/Stories/recorder/RecordControl$Delegate;

    invoke-interface {v0}, Lorg/telegram/ui/Stories/recorder/RecordControl$Delegate;->onCheckClick()V

    goto :goto_4

    :cond_11
    iget-boolean v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->startModeIsVideo:Z

    if-nez v0, :cond_12

    iget-boolean v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->recording:Z

    if-nez v0, :cond_12

    iget-boolean v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->longpressRecording:Z

    if-nez v0, :cond_12

    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->delegate:Lorg/telegram/ui/Stories/recorder/RecordControl$Delegate;

    invoke-interface {v0}, Lorg/telegram/ui/Stories/recorder/RecordControl$Delegate;->onPhotoShoot()V

    goto :goto_4

    :cond_12
    iget-boolean v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->recording:Z

    if-nez v0, :cond_13

    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->delegate:Lorg/telegram/ui/Stories/recorder/RecordControl$Delegate;

    invoke-interface {v0}, Lorg/telegram/ui/Stories/recorder/RecordControl$Delegate;->canRecordAudio()Z

    move-result v0

    if-eqz v0, :cond_14

    const-wide/16 v0, 0x0

    iput-wide v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->lastDuration:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->recordingStart:J

    iput-boolean v14, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->showLock:Z

    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->delegate:Lorg/telegram/ui/Stories/recorder/RecordControl$Delegate;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/RecordControl$$ExternalSyntheticLambda2;

    invoke-direct {v1, v7}, Lorg/telegram/ui/Stories/recorder/RecordControl$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stories/recorder/RecordControl;)V

    invoke-interface {v0, v14, v1}, Lorg/telegram/ui/Stories/recorder/RecordControl$Delegate;->onVideoRecordStart(ZLjava/lang/Runnable;)V

    goto :goto_4

    :cond_13
    iput-boolean v14, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->recording:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->recordingLoadingStart:J

    iput-boolean v13, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->recordingLoading:Z

    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->delegate:Lorg/telegram/ui/Stories/recorder/RecordControl$Delegate;

    invoke-interface {v0, v14}, Lorg/telegram/ui/Stories/recorder/RecordControl$Delegate;->onVideoRecordEnd(Z)V

    :cond_14
    :goto_4
    iput-boolean v14, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->longpressRecording:Z

    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->flipButton:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ButtonBounce;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {v7, v2}, Lorg/telegram/ui/Stories/recorder/RecordControl;->rotateFlip(F)V

    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->delegate:Lorg/telegram/ui/Stories/recorder/RecordControl$Delegate;

    invoke-interface {v0}, Lorg/telegram/ui/Stories/recorder/RecordControl$Delegate;->onFlipClick()V

    :cond_15
    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->recordButton:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v0, v14}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->flipButton:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v0, v14}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->lockButton:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v0, v14}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    :cond_16
    :goto_5
    iput-boolean v12, v7, Lorg/telegram/ui/Stories/recorder/RecordControl;->flipButtonWasPressed:Z

    return v13
.end method

.method public rotateFlip(F)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->flipDrawableRotateT:Lorg/telegram/ui/Components/AnimatedFloat;

    const/high16 v1, 0x43340000    # 180.0f

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    const-wide/16 v1, 0x26c

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x136

    :goto_0
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->setDuration(J)V

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->flipDrawableRotate:F

    add-float/2addr v0, p1

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->flipDrawableRotate:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setAmplitude(FZ)V
    .locals 1

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->amplitude:F

    if-nez p2, :cond_0

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->animatedAmplitude:Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    :cond_0
    return-void
.end method

.method public setCollageProgress(FZ)V
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->collageProgress:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3c23d70a    # 0.01f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->collageProgress:F

    if-nez p2, :cond_2

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->collage:Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 v0, 0x0

    const/4 v1, 0x1

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->recording:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2, v0, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(ZZ)F

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->collageProgressAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {p2, p1, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Stories/recorder/RecordControl$Delegate;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->delegate:Lorg/telegram/ui/Stories/recorder/RecordControl$Delegate;

    return-void
.end method

.method public setDual(Z)V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->dual:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->dual:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setInvert(F)V
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->outlinePaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    const/high16 v2, -0x1000000

    invoke-static {v1, v2, p1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->buttonPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x64000000

    const/high16 v4, 0x16000000

    invoke-static {v3, v4, p1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->hintLinePaintWhite:Landroid/graphics/Paint;

    const v3, 0x58ffffff

    const v4, 0x10ffffff

    invoke-static {v3, v4, p1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->hintLinePaintBlack:Landroid/graphics/Paint;

    const/high16 v3, 0x18000000

    const/high16 v4, 0x30000000

    invoke-static {v3, v4, p1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->flipDrawableWhite:Landroid/graphics/drawable/Drawable;

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v1, v2, p1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->unlockDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v1, v2, p1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p1

    invoke-direct {v3, p1, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public startAsVideo(Z)V
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->overrideStartModeIsVideoT:F

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->startModeIsVideo:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public startAsVideoT(F)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->overrideStartModeIsVideoT:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public stopRecording()V
    .locals 3

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->recording:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->recording:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->recordingLoadingStart:J

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->recordingLoading:Z

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->delegate:Lorg/telegram/ui/Stories/recorder/RecordControl$Delegate;

    invoke-interface {v1, v0}, Lorg/telegram/ui/Stories/recorder/RecordControl$Delegate;->onVideoRecordEnd(Z)V

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->recordButton:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->flipButton:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->lockButton:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public stopRecordingLoading(Z)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->recordingLoading:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->recordingLoadingT:Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(ZZ)F

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public updateGalleryImage()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->delegate:Lorg/telegram/ui/Stories/recorder/RecordControl$Delegate;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/telegram/ui/Stories/recorder/RecordControl$Delegate;->showStoriesDrafts()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->galleryImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getCurrentAccount()I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/StoriesController;->getDraftsController()Lorg/telegram/ui/Stories/recorder/DraftsController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/ui/Stories/recorder/DraftsController;->drafts:Ljava/util/ArrayList;

    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->galleryImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4, v3, v3, v2}, Lorg/telegram/messenger/ImageReceiver;->setOrientation(IIZ)V

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v4, v4, Lorg/telegram/ui/Stories/recorder/StoryEntry;->draftThumbFile:Ljava/io/File;

    if-eqz v4, :cond_0

    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->galleryImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v1, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->draftThumbFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/ImageLocation;->getForPath(Ljava/lang/String;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v6

    iget-object v10, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->noGalleryDrawable:Lorg/telegram/ui/Components/CombinedDrawable;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-string v7, "80_80"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v5 .. v15}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    return-void

    :cond_0
    sget-object v1, Lorg/telegram/messenger/MediaController;->allMediaAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-eqz v1, :cond_1

    iget-object v4, v1, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    iget-object v3, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->thumbPath:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->galleryImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {v3}, Lorg/telegram/messenger/ImageLocation;->getForPath(Ljava/lang/String;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v5

    iget-object v9, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->noGalleryDrawable:Lorg/telegram/ui/Components/CombinedDrawable;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-string v6, "80_80"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v4 .. v14}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    goto/16 :goto_1

    :cond_2
    if-eqz v1, :cond_4

    iget-object v3, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-boolean v3, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    const-string v4, ":"

    if-eqz v3, :cond_3

    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->galleryImage:Lorg/telegram/messenger/ImageReceiver;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "vthumb://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/ImageLocation;->getForPath(Ljava/lang/String;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v6

    iget-object v10, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->noGalleryDrawable:Lorg/telegram/ui/Components/CombinedDrawable;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-string v7, "80_80"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v5 .. v15}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    goto :goto_1

    :cond_3
    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->galleryImage:Lorg/telegram/messenger/ImageReceiver;

    iget v5, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->orientation:I

    iget v6, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->invert:I

    invoke-virtual {v3, v5, v6, v2}, Lorg/telegram/messenger/ImageReceiver;->setOrientation(IIZ)V

    iget-object v7, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->galleryImage:Lorg/telegram/messenger/ImageReceiver;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "thumb://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/ImageLocation;->getForPath(Ljava/lang/String;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v8

    iget-object v12, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->noGalleryDrawable:Lorg/telegram/ui/Components/CombinedDrawable;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-string v9, "80_80"

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v7 .. v17}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    goto :goto_1

    :cond_4
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->galleryImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->noGalleryDrawable:Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    return-void
.end method
