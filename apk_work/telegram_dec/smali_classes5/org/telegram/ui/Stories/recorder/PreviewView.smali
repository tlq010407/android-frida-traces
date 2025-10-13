.class public abstract Lorg/telegram/ui/Stories/recorder/PreviewView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Stories/recorder/PreviewView$TextureViewHolder;
    }
.end annotation


# instance fields
.field private allowCropping:Z

.field private allowRotation:Z

.field private allowWithSingleTouch:Z

.field private angle:F

.field private audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

.field private bitmap:Landroid/graphics/Bitmap;

.field private final bitmapDst:Landroid/graphics/Rect;

.field private final bitmapPaint:Landroid/graphics/Paint;

.field private final bitmapSrc:Landroid/graphics/Rect;

.field private final blurManager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

.field private collage:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

.field private cropEditorDrawing:Lorg/telegram/ui/Stories/recorder/CropEditor;

.field private cx:F

.field private cy:F

.field private doNotSpanRotation:Z

.field private draw:Z

.field public drawForThemeToggle:Z

.field private entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

.field public filterTextureView:Landroid/view/TextureView;

.field private finalMatrix:Landroid/graphics/Matrix;

.field private finalSeekPosition:J

.field private gradientBottom:I

.field private final gradientPaint:Landroid/graphics/Paint;

.field private gradientTop:I

.field private h:F

.field public invalidateBlur:Ljava/lang/Runnable;

.field private final invertMatrix:Landroid/graphics/Matrix;

.field public isMuted:Z

.field private lastPos:J

.field private final lastTouch:Landroid/graphics/PointF;

.field private lastTouchDistance:F

.field private lastTouchRotation:D

.field private lastWallpaperDrawable:Landroid/graphics/drawable/Drawable;

.field private final matrix:Landroid/graphics/Matrix;

.field private moving:Z

.field private multitouch:Z

.field private onErrorListener:Ljava/lang/Runnable;

.field private onTap:Ljava/lang/Runnable;

.field private final pauseLinks:Ljava/util/HashSet;

.field private photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

.field private rotationDiff:F

.field private roundPlayer:Lorg/telegram/ui/Components/VideoPlayer;

.field private roundPlayerHeight:I

.field private roundPlayerWidth:I

.field private roundView:Lorg/telegram/ui/Components/Paint/Views/RoundView;

.field private seekedLastTime:J

.field private slowerSeek:Ljava/lang/Runnable;

.field private slowerSeekScheduled:Z

.field private final snapPaint:Landroid/graphics/Paint;

.field private snappedRotation:Z

.field private snappedToCenterAndScaled:Z

.field private tapTime:J

.field private textureView:Lorg/telegram/ui/Components/VideoEditTextureView;

.field private final textureViewHolder:Lorg/telegram/ui/Stories/recorder/PreviewView$TextureViewHolder;

.field private final thumbAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

.field private thumbBitmap:Landroid/graphics/Bitmap;

.field private timelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

.field private final touch:Landroid/graphics/PointF;

.field private touchMatrix:Landroid/graphics/Matrix;

.field private final transformBackMatrix:Landroid/graphics/Matrix;

.field private final transformMatrix:Landroid/graphics/Matrix;

.field private final updateAudioProgressRunnable:Ljava/lang/Runnable;

.field private final updateProgressRunnable:Ljava/lang/Runnable;

.field private final updateRoundProgressRunnable:Ljava/lang/Runnable;

.field private final vertices:[F

.field private videoHeight:I

.field private videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

.field private videoWidth:I

.field private w:F

.field private wallpaperDrawable:Landroid/graphics/drawable/Drawable;

.field private wallpaperDrawableCrossfade:Lorg/telegram/ui/Components/AnimatedFloat;


# direct methods
.method public static synthetic $r8$lambda$-n7-sOkc-tZfblm4M-j_DVdZLfQ(Lorg/telegram/ui/Stories/recorder/PreviewView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setupGradient()V

    return-void
.end method

.method public static synthetic $r8$lambda$2kpkN-KXknCFiM3yMPiPYaQSS3U(Lorg/telegram/ui/Stories/recorder/PreviewView;Lorg/telegram/ui/Stories/recorder/StoryEntry;JLjava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Stories/recorder/PreviewView;->lambda$setupImage$3(Lorg/telegram/ui/Stories/recorder/StoryEntry;JLjava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$CxvBV3dFONwihCq5bSofn-gACbo(Lorg/telegram/ui/Stories/recorder/PreviewView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->lambda$new$12()V

    return-void
.end method

.method public static synthetic $r8$lambda$MVTr9TWLg-KtcZwpWdE4hXMAVwI(Lorg/telegram/ui/Stories/recorder/PreviewView;I[I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/PreviewView;->lambda$setupGradient$6(I[I)V

    return-void
.end method

.method public static synthetic $r8$lambda$NUtN6UZyT8eMGfag-UPyrwaYpEA(Lorg/telegram/ui/Stories/recorder/PreviewView;I[I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/PreviewView;->lambda$setupGradient$7(I[I)V

    return-void
.end method

.method public static synthetic $r8$lambda$SUOc28zjcoBM39n4SezQqEJpZT8(Lorg/telegram/ui/Stories/recorder/PreviewView;[Landroid/graphics/Bitmap;Lorg/telegram/ui/Stories/recorder/StoryEntry;[Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/recorder/PreviewView;->lambda$setupImage$4([Landroid/graphics/Bitmap;Lorg/telegram/ui/Stories/recorder/StoryEntry;[Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$YvX6qPvkc_kWlwMcyzka-Jt4bas(Lorg/telegram/ui/ActionBar/EmojiThemes;ZZLorg/telegram/ui/Components/MotionBackgroundDrawable;ILandroid/util/Pair;)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p5}, Lorg/telegram/ui/Stories/recorder/PreviewView;->lambda$getBackgroundDrawableFromTheme$13(Lorg/telegram/ui/ActionBar/EmojiThemes;ZZLorg/telegram/ui/Components/MotionBackgroundDrawable;ILandroid/util/Pair;)V

    return-void
.end method

.method public static synthetic $r8$lambda$euKzbLKgVXX741x5sHwEjL7vfec(Lorg/telegram/ui/Stories/recorder/PreviewView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->lambda$new$10()V

    return-void
.end method

.method public static synthetic $r8$lambda$gcmx4tJ_q80-XzT55TXXqAt5v-I(Lorg/telegram/ui/Stories/recorder/PreviewView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->lambda$setupVideoPlayer$8()V

    return-void
.end method

.method public static synthetic $r8$lambda$gtUDqzZcecXMSQuffPZSxUaUDy4(Lorg/telegram/messenger/Utilities$Callback;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->lambda$getCoverBitmap$1(Lorg/telegram/messenger/Utilities$Callback;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jQudLc4HYUyzgS-w_VphDvRmb78(Lorg/telegram/ui/Stories/recorder/PreviewView;Lorg/telegram/ui/Stories/recorder/StoryEntry;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->lambda$setupImage$5(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mySK8_QmHv1RuhFIVbbzfsoNLHs(Lorg/telegram/ui/Stories/recorder/PreviewView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->lambda$new$11()V

    return-void
.end method

.method public static synthetic $r8$lambda$n8Q808FVPSY0qkobHNtVJv4cS8Y(Lorg/telegram/ui/Stories/recorder/PreviewView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$xW4_UpPPqR_o185V2LHvtWoY7CI(III[Landroid/graphics/Bitmap;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stories/recorder/PreviewView;->lambda$getCoverBitmap$2(III[Landroid/graphics/Bitmap;Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$z4tam59nbvyNSyWBG8zNmsnMtUA(Lorg/telegram/ui/Stories/recorder/PreviewView;Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->lambda$setupVideoPlayer$9(Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/Components/BlurringShader$BlurManager;Lorg/telegram/ui/Stories/recorder/PreviewView$TextureViewHolder;)V
    .locals 9

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->bitmapSrc:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->bitmapDst:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->snapPaint:Landroid/graphics/Paint;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/PreviewView$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/PreviewView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stories/recorder/PreviewView;)V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->slowerSeek:Ljava/lang/Runnable;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/PreviewView$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/PreviewView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Stories/recorder/PreviewView;)V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->updateProgressRunnable:Ljava/lang/Runnable;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/PreviewView$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/PreviewView$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Stories/recorder/PreviewView;)V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->updateAudioProgressRunnable:Ljava/lang/Runnable;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/PreviewView$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/PreviewView$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Stories/recorder/PreviewView;)V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->updateRoundProgressRunnable:Ljava/lang/Runnable;

    new-instance v1, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v8, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x15e

    move-object v2, v1

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->wallpaperDrawableCrossfade:Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->bitmapPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->gradientPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->matrix:Landroid/graphics/Matrix;

    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->vertices:[F

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->draw:Z

    new-instance v1, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v8, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v6, 0x140

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->thumbAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->drawForThemeToggle:Z

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->invertMatrix:Landroid/graphics/Matrix;

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->transformMatrix:Landroid/graphics/Matrix;

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->transformBackMatrix:Landroid/graphics/Matrix;

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->allowCropping:Z

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->lastTouch:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->touch:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->touchMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->finalMatrix:Landroid/graphics/Matrix;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->pauseLinks:Ljava/util/HashSet;

    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->blurManager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    iput-object p3, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->textureViewHolder:Lorg/telegram/ui/Stories/recorder/PreviewView$TextureViewHolder;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object p3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 p3, -0x1

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 p3, 0x40400000    # 3.0f

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    int-to-float p3, p3

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    const/4 v0, 0x0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {p1, p3, v0, p2, v1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Stories/recorder/PreviewView;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->updateAudioProgressRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Components/VideoPlayer;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Stories/recorder/PreviewView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoHeight:I

    return p0
.end method

.method static synthetic access$1002(Lorg/telegram/ui/Stories/recorder/PreviewView;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoHeight:I

    return p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Stories/recorder/PreviewView$TextureViewHolder;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->textureViewHolder:Lorg/telegram/ui/Stories/recorder/PreviewView$TextureViewHolder;

    return-object p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Stories/recorder/PreviewView;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->bitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$1202(Lorg/telegram/ui/Stories/recorder/PreviewView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->bitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Components/VideoPlayer;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->roundPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    return-object p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Stories/recorder/PreviewView;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->updateRoundProgressRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1502(Lorg/telegram/ui/Stories/recorder/PreviewView;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->roundPlayerWidth:I

    return p1
.end method

.method static synthetic access$1602(Lorg/telegram/ui/Stories/recorder/PreviewView;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->roundPlayerHeight:I

    return p1
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Components/Paint/Views/RoundView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->roundView:Lorg/telegram/ui/Components/Paint/Views/RoundView;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->collage:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Stories/recorder/PreviewView;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/PreviewView;->seekTo(J)V

    return-void
.end method

.method static synthetic access$400(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Components/VideoPlayer;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Stories/recorder/StoryEntry;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Stories/recorder/PreviewView;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->updateProgressRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Stories/recorder/PreviewView;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->onErrorListener:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Components/VideoEditTextureView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->textureView:Lorg/telegram/ui/Components/VideoEditTextureView;

    return-object p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Stories/recorder/PreviewView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoWidth:I

    return p0
.end method

.method static synthetic access$902(Lorg/telegram/ui/Stories/recorder/PreviewView;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoWidth:I

    return p1
.end method

.method private extractPointsData(Landroid/graphics/Matrix;)V
    .locals 7

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->vertices:[F

    iget v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->width:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const/4 v4, 0x0

    aput v2, v1, v4

    iget v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->height:I

    int-to-float v0, v0

    div-float/2addr v0, v3

    const/4 v2, 0x1

    aput v0, v1, v2

    invoke-virtual {p1, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->vertices:[F

    aget v1, v0, v4

    iput v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->cx:F

    aget v1, v0, v2

    iput v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->cy:F

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v5, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->width:I

    int-to-float v5, v5

    aput v5, v0, v4

    iget v1, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->height:I

    int-to-float v1, v1

    div-float/2addr v1, v3

    aput v1, v0, v2

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->vertices:[F

    aget v1, v0, v2

    iget v5, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->cy:F

    sub-float/2addr v1, v5

    float-to-double v5, v1

    aget v0, v0, v4

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->cx:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->angle:F

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->cx:F

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->cy:F

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->vertices:[F

    aget v6, v5, v4

    aget v5, v5, v2

    invoke-static {v0, v1, v6, v5}, Lcom/google/zxing/common/detector/MathUtils;->distance(FFFF)F

    move-result v0

    mul-float v0, v0, v3

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->w:F

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->vertices:[F

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v5, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->width:I

    int-to-float v5, v5

    div-float/2addr v5, v3

    aput v5, v0, v4

    iget v1, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->height:I

    int-to-float v1, v1

    aput v1, v0, v2

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->cx:F

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->cy:F

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->vertices:[F

    aget v4, v1, v4

    aget v1, v1, v2

    invoke-static {p1, v0, v4, v1}, Lcom/google/zxing/common/detector/MathUtils;->distance(FFFF)F

    move-result p1

    mul-float p1, p1, v3

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->h:F

    return-void
.end method

.method public static getBackgroundDrawable(Landroid/graphics/drawable/Drawable;IJZ)Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 0
    const-wide/high16 v0, -0x8000000000000000L

    const/4 v2, 0x0

    cmp-long v3, p2, v0

    if-nez v3, :cond_0

    return-object v2

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v3, p2, v0

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    if-ltz v3, :cond_1

    invoke-virtual {v0, p2, p3}, Lorg/telegram/messenger/MessagesController;->getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object v2, p2, Lorg/telegram/tgnet/TLRPC$UserFull;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    goto :goto_0

    :cond_1
    neg-long p2, p2

    invoke-virtual {v0, p2, p3}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object v2, p2, Lorg/telegram/tgnet/TLRPC$ChatFull;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    :cond_2
    :goto_0
    invoke-static {p0, p1, v2, p4}, Lorg/telegram/ui/Stories/recorder/PreviewView;->getBackgroundDrawable(Landroid/graphics/drawable/Drawable;ILorg/telegram/tgnet/TLRPC$WallPaper;Z)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static getBackgroundDrawable(Landroid/graphics/drawable/Drawable;ILorg/telegram/tgnet/TLRPC$WallPaper;Z)Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 0
    if-eqz p2, :cond_0

    invoke-static {p2}, Lorg/telegram/messenger/ChatThemeController;->getWallpaperEmoticon(Lorg/telegram/tgnet/TLRPC$WallPaper;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p2, p3}, Lorg/telegram/ui/ChatBackgroundDrawable;->getOrCreate(Landroid/graphics/drawable/Drawable;Lorg/telegram/tgnet/TLRPC$WallPaper;Z)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    if-eqz p2, :cond_1

    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    if-eqz v0, :cond_1

    invoke-static {p1}, Lorg/telegram/messenger/ChatThemeController;->getInstance(I)Lorg/telegram/messenger/ChatThemeController;

    move-result-object v0

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->emoticon:Ljava/lang/String;

    invoke-virtual {v0, p2}, Lorg/telegram/messenger/ChatThemeController;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/EmojiThemes;

    move-result-object p2

    goto :goto_0

    :cond_1
    move-object p2, p0

    :goto_0
    const/4 v0, 0x0

    if-eqz p2, :cond_2

    invoke-static {p1, p2, v0, p3}, Lorg/telegram/ui/Stories/recorder/PreviewView;->getBackgroundDrawableFromTheme(ILorg/telegram/ui/ActionBar/EmojiThemes;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_2
    sget-object p1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string p2, "themeconfig"

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string p2, "lastDayTheme"

    const-string v1, "Blue"

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isDark()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    move-object p2, v1

    :cond_4
    const-string v2, "lastDarkTheme"

    const-string v3, "Dark Blue"

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isDark()Z

    move-result v2

    if-nez v2, :cond_6

    :cond_5
    move-object p1, v3

    :cond_6
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getActiveTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isDark()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "Night"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_2

    :cond_7
    :goto_1
    move-object v1, p2

    goto :goto_3

    :cond_8
    :goto_2
    move-object v3, p1

    goto :goto_3

    :cond_9
    move-object v3, p1

    goto :goto_1

    :goto_3
    if-eqz p3, :cond_a

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object p1

    goto :goto_4

    :cond_a
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object p1

    :goto_4
    new-instance p2, Landroid/util/SparseIntArray;

    invoke-direct {p2}, Landroid/util/SparseIntArray;-><init>()V

    const/4 p3, 0x1

    new-array v1, p3, [Ljava/lang/String;

    iget-object v2, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->assetName:Ljava/lang/String;

    if-eqz v2, :cond_b

    invoke-static {p0, v2, v1}, Lorg/telegram/ui/ActionBar/Theme;->getThemeFileValues(Ljava/io/File;Ljava/lang/String;[Ljava/lang/String;)Landroid/util/SparseIntArray;

    move-result-object p0

    goto :goto_5

    :cond_b
    new-instance v2, Ljava/io/File;

    iget-object v3, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->pathToFile:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, p0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getThemeFileValues(Ljava/io/File;Ljava/lang/String;[Ljava/lang/String;)Landroid/util/SparseIntArray;

    move-result-object p0

    :goto_5
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getDefaultColors()[I

    move-result-object v2

    if-eqz v2, :cond_c

    const/4 v3, 0x0

    :goto_6
    array-length v4, v2

    if-ge v3, v4, :cond_c

    aget v4, v2, v3

    invoke-virtual {p2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_c
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->getAccent(Z)Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    move-result-object v2

    if-eqz v2, :cond_d

    invoke-virtual {v2, p0, p2}, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->fillAccentColors(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)Z

    goto :goto_8

    :cond_d
    if-eqz p0, :cond_e

    const/4 v2, 0x0

    :goto_7
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_e

    invoke-virtual {p0, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p0, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    invoke-virtual {p2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_e
    :goto_8
    aget-object p0, v1, v0

    invoke-static {p1, p2, p0, v0, p3}, Lorg/telegram/ui/ActionBar/Theme;->createBackgroundDrawable(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;Landroid/util/SparseIntArray;Ljava/lang/String;IZ)Lorg/telegram/ui/ActionBar/Theme$BackgroundDrawableSettings;

    move-result-object p0

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/Theme$BackgroundDrawableSettings;->themedWallpaper:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_f

    goto :goto_9

    :cond_f
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/Theme$BackgroundDrawableSettings;->wallpaper:Landroid/graphics/drawable/Drawable;

    :goto_9
    return-object p1
.end method

.method public static getBackgroundDrawableFromTheme(ILjava/lang/String;Z)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->getBackgroundDrawableFromTheme(ILjava/lang/String;ZZ)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static getBackgroundDrawableFromTheme(ILjava/lang/String;ZZ)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/messenger/ChatThemeController;->getInstance(I)Lorg/telegram/messenger/ChatThemeController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ChatThemeController;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/EmojiThemes;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCachedWallpaper()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2, p3}, Lorg/telegram/ui/Stories/recorder/PreviewView;->getBackgroundDrawableFromTheme(ILorg/telegram/ui/ActionBar/EmojiThemes;IZZ)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static getBackgroundDrawableFromTheme(ILorg/telegram/ui/ActionBar/EmojiThemes;IZ)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->getBackgroundDrawableFromTheme(ILorg/telegram/ui/ActionBar/EmojiThemes;IZZ)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static getBackgroundDrawableFromTheme(ILorg/telegram/ui/ActionBar/EmojiThemes;IZZ)Landroid/graphics/drawable/Drawable;
    .locals 16

    .line 0
    move/from16 v0, p0

    move-object/from16 v6, p1

    move/from16 v1, p2

    move/from16 v7, p3

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/ActionBar/EmojiThemes;->isAnyStub()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static/range {p3 .. p3}, Lorg/telegram/ui/ActionBar/EmojiThemes;->getDefaultThemeInfo(Z)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v2

    invoke-virtual {v6, v0, v7}, Lorg/telegram/ui/ActionBar/EmojiThemes;->getPreviewColors(II)Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v6, v7}, Lorg/telegram/ui/ActionBar/EmojiThemes;->getWallpaperLink(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v0, v3, v1, v4}, Lorg/telegram/ui/ActionBar/Theme;->createBackgroundDrawable(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;Landroid/util/SparseIntArray;Ljava/lang/String;IZ)Lorg/telegram/ui/ActionBar/Theme$BackgroundDrawableSettings;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/Theme$BackgroundDrawableSettings;->wallpaper:Landroid/graphics/drawable/Drawable;

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v1, -0x1000000

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v6, v0, v7}, Lorg/telegram/ui/ActionBar/EmojiThemes;->getPreviewColors(II)Landroid/util/SparseIntArray;

    move-result-object v0

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v9

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_to1:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v10

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_to2:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v11

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_to3:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v12

    new-instance v15, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    invoke-direct {v15}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;-><init>()V

    move/from16 v0, p4

    iput-boolean v0, v15, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->isPreview:Z

    invoke-virtual {v6, v7}, Lorg/telegram/ui/ActionBar/EmojiThemes;->getWallpaper(I)Lorg/telegram/tgnet/TLRPC$WallPaper;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->intensity:I

    invoke-virtual {v15, v0}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setPatternBitmap(I)V

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object v8, v15

    invoke-virtual/range {v8 .. v14}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setColors(IIIIIZ)V

    invoke-virtual {v15, v1}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setPhase(I)V

    invoke-virtual {v15}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->getPatternColor()I

    move-result v5

    new-instance v8, Lorg/telegram/ui/Stories/recorder/PreviewView$$ExternalSyntheticLambda0;

    move-object v0, v8

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p3

    move-object v4, v15

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Stories/recorder/PreviewView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ActionBar/EmojiThemes;ZZLorg/telegram/ui/Components/MotionBackgroundDrawable;I)V

    invoke-virtual {v6, v7, v8}, Lorg/telegram/ui/ActionBar/EmojiThemes;->loadWallpaper(ILorg/telegram/tgnet/ResultCallback;)V

    move-object v0, v15

    :goto_0
    return-object v0
.end method

.method private static synthetic lambda$getBackgroundDrawableFromTheme$13(Lorg/telegram/ui/ActionBar/EmojiThemes;ZZLorg/telegram/ui/Components/MotionBackgroundDrawable;ILandroid/util/Pair;)V
    .locals 4

    if-nez p5, :cond_0

    return-void

    :cond_0
    iget-object v0, p5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object p5, p5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p5, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/EmojiThemes;->getTlTheme(I)Lorg/telegram/tgnet/TLRPC$TL_theme;

    move-result-object p1

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$TL_theme;->id:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    if-eqz p5, :cond_1

    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/EmojiThemes;->getWallpaper(I)Lorg/telegram/tgnet/TLRPC$WallPaper;

    move-result-object p0

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    iget p0, p0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->intensity:I

    invoke-virtual {p3, p0, p5}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setPatternBitmap(ILandroid/graphics/Bitmap;)V

    invoke-virtual {p3, p4}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setPatternColorFilter(I)V

    const/high16 p0, 0x3f800000    # 1.0f

    invoke-virtual {p3, p0}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setPatternAlpha(F)V

    :cond_1
    return-void
.end method

.method private static synthetic lambda$getCoverBitmap$1(Lorg/telegram/messenger/Utilities$Callback;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-interface {p0, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$getCoverBitmap$2(III[Landroid/graphics/Bitmap;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 5

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    int-to-float p2, p2

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, p2, p2, v2}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    const/4 p2, 0x0

    :goto_0
    array-length v0, p3

    if-ge p2, v0, :cond_1

    aget-object v0, p3, p2

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    aget-object v2, p3, p2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    aget-object v3, p3, p2

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    aget-object v0, p3, p2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    aget-object v2, p3, p2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    aget-object v0, p3, p2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v4, v4, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    aget-object v0, p3, p2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->recycleBitmap(Landroid/graphics/Bitmap;)V

    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    invoke-static {p0, p1}, Lorg/telegram/messenger/Utilities;->stackBlurBitmap(Landroid/graphics/Bitmap;I)V

    new-instance p1, Lorg/telegram/ui/Stories/recorder/PreviewView$$ExternalSyntheticLambda14;

    invoke-direct {p1, p4, p0}, Lorg/telegram/ui/Stories/recorder/PreviewView$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/messenger/Utilities$Callback;Landroid/graphics/Bitmap;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 2

    iget-wide v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->finalSeekPosition:J

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->seekTo(J)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->slowerSeekScheduled:Z

    return-void
.end method

.method private synthetic lambda$new$10()V
    .locals 8

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_7

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->timelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->getCurrentPosition()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->getDuration()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v6, v2, v4

    if-lez v6, :cond_5

    long-to-float v2, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->getDuration()J

    move-result-wide v3

    long-to-float v3, v3

    div-float/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->timelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

    invoke-virtual {v3}, Lorg/telegram/ui/Stories/recorder/TimelineView;->isDragging()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v5, v3, Lorg/telegram/ui/Stories/recorder/StoryEntry;->left:F

    cmpg-float v5, v2, v5

    if-ltz v5, :cond_1

    iget v3, v3, Lorg/telegram/ui/Stories/recorder/StoryEntry;->right:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v5, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->seekedLastTime:J

    sub-long/2addr v2, v5

    const-wide/16 v5, 0x1f4

    cmp-long v7, v2, v5

    if-lez v7, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->seekedLastTime:J

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v1, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->left:F

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->getDuration()J

    move-result-wide v2

    long-to-float v2, v2

    mul-float v1, v1, v2

    float-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(J)V

    invoke-virtual {p0, v4}, Lorg/telegram/ui/Stories/recorder/PreviewView;->updateAudioPlayer(Z)V

    invoke-virtual {p0, v4}, Lorg/telegram/ui/Stories/recorder/PreviewView;->updateRoundPlayer(Z)V

    move-wide v0, v1

    goto :goto_2

    :cond_2
    iget-wide v2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->lastPos:J

    const/4 v5, 0x0

    cmp-long v6, v0, v2

    if-gez v6, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0, v2}, Lorg/telegram/ui/Stories/recorder/PreviewView;->updateAudioPlayer(Z)V

    iget-wide v2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->lastPos:J

    cmp-long v6, v0, v2

    if-gez v6, :cond_4

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {p0, v4}, Lorg/telegram/ui/Stories/recorder/PreviewView;->updateRoundPlayer(Z)V

    :cond_5
    :goto_2
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->timelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/VideoPlayer;->getCurrentPosition()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/Stories/recorder/TimelineView;->setProgress(J)V

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/VideoPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->updateProgressRunnable:Ljava/lang/Runnable;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->updateProgressRunnable:Ljava/lang/Runnable;

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->screenRefreshRate:F

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v4, v3

    float-to-long v3, v4

    invoke-static {v2, v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_6
    iput-wide v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->lastPos:J

    :cond_7
    :goto_3
    return-void
.end method

.method private synthetic lambda$new$11()V
    .locals 7

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->roundPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->timelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->isCollage()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->getCurrentPosition()J

    move-result-wide v0

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v2, :cond_2

    long-to-float v3, v0

    iget v4, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioLeft:F

    iget-wide v5, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioDuration:J

    long-to-float v5, v5

    mul-float v4, v4, v5

    cmpg-float v4, v3, v4

    if-ltz v4, :cond_1

    iget v2, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioRight:F

    mul-float v2, v2, v5

    cmpl-float v2, v3, v2

    if-lez v2, :cond_2

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->seekedLastTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1f4

    cmp-long v6, v2, v4

    if-lez v6, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->seekedLastTime:J

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v2, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioLeft:F

    iget-wide v3, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioDuration:J

    long-to-float v1, v3

    mul-float v2, v2, v1

    float-to-long v1, v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(J)V

    move-wide v0, v1

    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->timelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

    invoke-virtual {v2, v0, v1}, Lorg/telegram/ui/Stories/recorder/TimelineView;->setProgress(J)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->updateAudioProgressRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->updateAudioProgressRunnable:Ljava/lang/Runnable;

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->screenRefreshRate:F

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v2, v1

    float-to-long v1, v2

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_3
    :goto_0
    return-void
.end method

.method private synthetic lambda$new$12()V
    .locals 7

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->roundPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->isCollage()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->timelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->roundPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->getCurrentPosition()J

    move-result-wide v0

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v2, :cond_2

    long-to-float v3, v0

    iget v4, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundLeft:F

    iget-wide v5, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundDuration:J

    long-to-float v5, v5

    mul-float v4, v4, v5

    cmpg-float v4, v3, v4

    if-ltz v4, :cond_1

    iget v2, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundRight:F

    mul-float v2, v2, v5

    cmpl-float v2, v3, v2

    if-lez v2, :cond_2

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->seekedLastTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1f4

    cmp-long v6, v2, v4

    if-lez v6, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->seekedLastTime:J

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->roundPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v2, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundLeft:F

    iget-wide v3, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundDuration:J

    long-to-float v1, v3

    mul-float v2, v2, v1

    float-to-long v1, v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(J)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->updateAudioPlayer(Z)V

    move-wide v0, v1

    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->timelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

    invoke-virtual {v2, v0, v1}, Lorg/telegram/ui/Stories/recorder/TimelineView;->setProgress(J)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->roundPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->updateRoundProgressRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->updateRoundProgressRunnable:Ljava/lang/Runnable;

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->screenRefreshRate:F

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v2, v1

    float-to-long v1, v2

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_3
    :goto_0
    return-void
.end method

.method private synthetic lambda$setupGradient$6(I[I)V
    .locals 10

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    const/4 v1, 0x0

    aget v1, p2, v1

    iput v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->gradientTop:I

    iput v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->gradientTopColor:I

    const/4 v1, 0x1

    aget v1, p2, v1

    iput v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->gradientBottom:I

    iput v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->gradientBottomColor:I

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->gradientPaint:Landroid/graphics/Paint;

    new-instance v9, Landroid/graphics/LinearGradient;

    int-to-float v5, p1

    const/4 p1, 0x2

    new-array v7, p1, [F

    fill-array-data v7, :array_0

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    move-object v1, v9

    move-object v6, p2

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->textureView:Lorg/telegram/ui/Components/VideoEditTextureView;

    if-eqz p1, :cond_0

    iget p2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->gradientTop:I

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->gradientBottom:I

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Components/VideoEditTextureView;->updateUiBlurGradient(II)V

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    if-eqz p1, :cond_1

    iget p2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->gradientTop:I

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->gradientBottom:I

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Components/PhotoFilterView;->updateUiBlurGradient(II)V

    :cond_1
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private synthetic lambda$setupGradient$7(I[I)V
    .locals 10

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    const/4 v1, 0x0

    aget v1, p2, v1

    iput v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->gradientTop:I

    iput v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->gradientTopColor:I

    const/4 v1, 0x1

    aget v1, p2, v1

    iput v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->gradientBottom:I

    iput v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->gradientBottomColor:I

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->gradientPaint:Landroid/graphics/Paint;

    new-instance v9, Landroid/graphics/LinearGradient;

    int-to-float v5, p1

    const/4 p1, 0x2

    new-array v7, p1, [F

    fill-array-data v7, :array_0

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    move-object v1, v9

    move-object v6, p2

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->textureView:Lorg/telegram/ui/Components/VideoEditTextureView;

    if-eqz p1, :cond_0

    iget p2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->gradientTop:I

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->gradientBottom:I

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Components/VideoEditTextureView;->updateUiBlurGradient(II)V

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    if-eqz p1, :cond_1

    iget p2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->gradientTop:I

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->gradientBottom:I

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Components/PhotoFilterView;->updateUiBlurGradient(II)V

    :cond_1
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private synthetic lambda$setupImage$3(Lorg/telegram/ui/Stories/recorder/StoryEntry;JLjava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1

    iget-boolean v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-eqz v0, :cond_1

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->thumbPath:Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-static {p1, p5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 p4, 0x1

    invoke-static {p1, p2, p3, p4, p5}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-static {p4, p5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$setupImage$4([Landroid/graphics/Bitmap;Lorg/telegram/ui/Stories/recorder/StoryEntry;[Z)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    const/4 v0, 0x0

    aget-object p1, p1, v0

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->bitmap:Landroid/graphics/Bitmap;

    if-eqz p2, :cond_1

    iget-boolean v1, p2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isDraft:Z

    if-nez v1, :cond_1

    iget-boolean v1, p2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iput p1, p2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->width:I

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->height:I

    invoke-virtual {p2}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->setupMatrix()V

    :cond_1
    aget-boolean p1, p3, v0

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->blurManager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    if-eqz p1, :cond_2

    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->bitmap:Landroid/graphics/Bitmap;

    if-eqz p3, :cond_2

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BlurringShader$BlurManager;->resetBitmap()V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->blurManager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->bitmap:Landroid/graphics/Bitmap;

    const v1, 0x3e4ccccd    # 0.2f

    invoke-virtual {p2, v1, p3}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->buildBitmap(FLandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Components/BlurringShader$BlurManager;->setFallbackBlur(Landroid/graphics/Bitmap;I)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->invalidateBlur:Ljava/lang/Runnable;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setupGradient()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$setupImage$5(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V
    .locals 13

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/graphics/Bitmap;

    new-array v2, v0, [Z

    const/4 v3, 0x0

    aput-boolean v0, v2, v3

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-gtz v0, :cond_0

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    :goto_0
    mul-int/lit8 v4, v0, 0x10

    int-to-float v4, v4

    const/high16 v5, 0x41100000    # 9.0f

    div-float/2addr v4, v5

    float-to-int v4, v4

    iget-boolean v5, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-eqz v5, :cond_4

    iget-object v5, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->blurredVideoThumb:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_1

    aput-object v5, v1, v3

    :cond_1
    aget-object v5, v1, v3

    if-nez v5, :cond_4

    iget-object v5, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->thumbPath:Ljava/lang/String;

    if-eqz v5, :cond_4

    const-string v6, "vthumb://"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->thumbPath:Ljava/lang/String;

    const/16 v6, 0x9

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    aget-object v7, v1, v3

    if-nez v7, :cond_3

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1d

    if-lt v7, v8, :cond_3

    :try_start_0
    iget-boolean v7, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-eqz v7, :cond_2

    sget-object v7, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_1

    :catch_0
    nop

    goto :goto_2

    :cond_2
    sget-object v7, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    :goto_1
    invoke-static {v7, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    new-instance v9, Landroid/util/Size;

    invoke-direct {v9, v0, v4}, Landroid/util/Size;-><init>(II)V

    const/4 v10, 0x0

    invoke-static {v8, v7, v9, v10}, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$EntryView$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/util/Size;Landroid/os/CancellationSignal;)Landroid/graphics/Bitmap;

    move-result-object v7

    aput-object v7, v1, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_2
    move-wide v10, v5

    goto :goto_3

    :cond_4
    const-wide/16 v5, -0x1

    goto :goto_2

    :goto_3
    const-wide/16 v5, 0x0

    cmp-long v7, v10, v5

    if-gez v7, :cond_5

    iget-boolean v5, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-eqz v5, :cond_5

    iget-object v5, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->thumbPath:Ljava/lang/String;

    if-nez v5, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    :cond_5
    aget-object v5, v1, v3

    if-nez v5, :cond_7

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->getOriginalFile()Ljava/io/File;

    move-result-object v5

    if-nez v5, :cond_6

    return-void

    :cond_6
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    new-instance v5, Lorg/telegram/ui/Stories/recorder/PreviewView$$ExternalSyntheticLambda12;

    move-object v7, v5

    move-object v8, p0

    move-object v9, p1

    invoke-direct/range {v7 .. v12}, Lorg/telegram/ui/Stories/recorder/PreviewView$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/Stories/recorder/PreviewView;Lorg/telegram/ui/Stories/recorder/StoryEntry;JLjava/lang/String;)V

    invoke-static {v5, v0, v4, v3, v3}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->getScaledBitmap(Lorg/telegram/ui/Stories/recorder/StoryEntry$DecodeBitmap;IIZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    aput-object v0, v1, v3

    aput-boolean v3, v2, v3

    :cond_7
    new-instance v0, Lorg/telegram/ui/Stories/recorder/PreviewView$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0, v1, p1, v2}, Lorg/telegram/ui/Stories/recorder/PreviewView$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/Stories/recorder/PreviewView;[Landroid/graphics/Bitmap;Lorg/telegram/ui/Stories/recorder/StoryEntry;[Z)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$setupVideoPlayer$8()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->textureView:Lorg/telegram/ui/Components/VideoEditTextureView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoEditTextureView;->release()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->textureView:Lorg/telegram/ui/Components/VideoEditTextureView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->textureView:Lorg/telegram/ui/Components/VideoEditTextureView;

    :cond_0
    return-void
.end method

.method private synthetic lambda$setupVideoPlayer$9(Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->textureView:Lorg/telegram/ui/Components/VideoEditTextureView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/VideoEditTextureView;->setHDRInfo(Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;)V

    :cond_0
    return-void
.end method

.method private seekTo(J)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->seekTo(JZ)V

    return-void
.end method

.method private setupCollage(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->timelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->collageContent:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/recorder/TimelineView;->setCollage(Ljava/util/ArrayList;)V

    :cond_1
    return-void
.end method

.method private setupGradient()V
    .locals 11

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v2, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->gradientTopColor:I

    if-eqz v2, :cond_4

    iget v1, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->gradientBottomColor:I

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->gradientPaint:Landroid/graphics/Paint;

    new-instance v10, Landroid/graphics/LinearGradient;

    int-to-float v6, v0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->gradientTopColor:I

    iput v2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->gradientTop:I

    iget v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->gradientBottomColor:I

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->gradientBottom:I

    filled-new-array {v2, v0}, [I

    move-result-object v7

    const/4 v0, 0x2

    new-array v8, v0, [F

    fill-array-data v8, :array_0

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->textureView:Lorg/telegram/ui/Components/VideoEditTextureView;

    if-eqz v0, :cond_3

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->gradientTop:I

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->gradientBottom:I

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/VideoEditTextureView;->updateUiBlurGradient(II)V

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    if-eqz v0, :cond_7

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->gradientTop:I

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->gradientBottom:I

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/PhotoFilterView;->updateUiBlurGradient(II)V

    goto :goto_3

    :cond_4
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->bitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    new-instance v3, Lorg/telegram/ui/Stories/recorder/PreviewView$$ExternalSyntheticLambda9;

    invoke-direct {v3, p0, v0}, Lorg/telegram/ui/Stories/recorder/PreviewView$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Stories/recorder/PreviewView;I)V

    :goto_2
    invoke-static {v2, v1, v2, v3}, Lorg/telegram/ui/Stories/recorder/DominantColors;->getColors(ZLandroid/graphics/Bitmap;ZLorg/telegram/messenger/Utilities$Callback;)V

    goto :goto_3

    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->thumbBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_6

    new-instance v3, Lorg/telegram/ui/Stories/recorder/PreviewView$$ExternalSyntheticLambda10;

    invoke-direct {v3, p0, v0}, Lorg/telegram/ui/Stories/recorder/PreviewView$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Stories/recorder/PreviewView;I)V

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->gradientPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_7
    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private setupImage(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V
    .locals 2

    sget-object v0, Lorg/telegram/messenger/Utilities;->searchQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/PreviewView$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Stories/recorder/PreviewView$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Stories/recorder/PreviewView;Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private tapTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->tapTime:J

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const-wide/16 v2, 0x0

    if-ne v0, v1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->tapTime:J

    sub-long/2addr v4, v6

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result p1

    int-to-long v6, p1

    cmp-long p1, v4, v6

    if-gtz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->onTap:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1
    iput-wide v2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->tapTime:J

    return v1

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    iput-wide v2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->tapTime:J

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method private touchEvent(Landroid/view/MotionEvent;)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->allowCropping:Z

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v4, 0x1

    if-le v2, v4, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    const/4 v5, 0x0

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->touch:Landroid/graphics/PointF;

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    if-eqz v2, :cond_2

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    add-float/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    iput v7, v6, Landroid/graphics/PointF;->x:F

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->touch:Landroid/graphics/PointF;

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    add-float/2addr v7, v9

    div-float/2addr v7, v8

    iput v7, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    invoke-static {v6, v7, v8, v9}, Lcom/google/zxing/common/detector/MathUtils;->distance(FFFF)F

    move-result v6

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    sub-float/2addr v7, v8

    float-to-double v7, v7

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    sub-float/2addr v9, v10

    float-to-double v9, v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v7

    goto :goto_1

    :cond_2
    iput v7, v6, Landroid/graphics/PointF;->x:F

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->touch:Landroid/graphics/PointF;

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    iput v7, v6, Landroid/graphics/PointF;->y:F

    const-wide/16 v7, 0x0

    const/4 v6, 0x0

    :goto_1
    iget-boolean v9, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->multitouch:Z

    if-eq v9, v2, :cond_3

    iget-object v9, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->lastTouch:Landroid/graphics/PointF;

    iget-object v10, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->touch:Landroid/graphics/PointF;

    iget v11, v10, Landroid/graphics/PointF;->x:F

    iput v11, v9, Landroid/graphics/PointF;->x:F

    iget v10, v10, Landroid/graphics/PointF;->y:F

    iput v10, v9, Landroid/graphics/PointF;->y:F

    iput v6, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->lastTouchDistance:F

    iput-wide v7, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->lastTouchRotation:D

    iput-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->multitouch:Z

    :cond_3
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-nez v2, :cond_4

    return v3

    :cond_4
    iget v2, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultWidth:I

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v2, v9

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    if-nez v9, :cond_5

    iput v5, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->rotationDiff:F

    iput-boolean v3, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->snappedRotation:Z

    iput-boolean v3, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->snappedToCenterAndScaled:Z

    iput-boolean v3, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->doNotSpanRotation:Z

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    iput-boolean v4, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->moving:Z

    iget-object v9, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->touchMatrix:Landroid/graphics/Matrix;

    iget-object v10, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v10, v10, Lorg/telegram/ui/Stories/recorder/StoryEntry;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v9, v10}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_11

    iget-boolean v9, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->moving:Z

    if-eqz v9, :cond_11

    iget-object v9, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v9, :cond_11

    iget-object v9, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->touch:Landroid/graphics/PointF;

    iget v10, v9, Landroid/graphics/PointF;->x:F

    mul-float v10, v10, v2

    iget v9, v9, Landroid/graphics/PointF;->y:F

    mul-float v9, v9, v2

    iget-object v11, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->lastTouch:Landroid/graphics/PointF;

    iget v12, v11, Landroid/graphics/PointF;->x:F

    mul-float v12, v12, v2

    iget v11, v11, Landroid/graphics/PointF;->y:F

    mul-float v11, v11, v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/high16 v13, 0x42b40000    # 90.0f

    if-le v2, v4, :cond_c

    iget v2, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->lastTouchDistance:F

    cmpl-float v14, v2, v5

    if-eqz v14, :cond_6

    div-float v2, v6, v2

    iget-object v14, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->touchMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v14, v2, v2, v10, v9}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    :cond_6
    iget-wide v14, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->lastTouchRotation:D

    sub-double v14, v7, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v14

    double-to-float v2, v14

    iget v14, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->rotationDiff:F

    add-float/2addr v14, v2

    iput v14, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->rotationDiff:F

    iget-boolean v15, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->allowRotation:Z

    if-nez v15, :cond_a

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    const/high16 v15, 0x41a00000    # 20.0f

    cmpl-float v14, v14, v15

    if-lez v14, :cond_7

    const/4 v14, 0x1

    goto :goto_2

    :cond_7
    const/4 v14, 0x0

    :goto_2
    iput-boolean v14, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->allowRotation:Z

    if-nez v14, :cond_9

    iget-object v14, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->touchMatrix:Landroid/graphics/Matrix;

    invoke-direct {v0, v14}, Lorg/telegram/ui/Stories/recorder/PreviewView;->extractPointsData(Landroid/graphics/Matrix;)V

    iget v14, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->angle:F

    div-float/2addr v14, v13

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    int-to-float v14, v14

    mul-float v14, v14, v13

    iget v5, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->angle:F

    sub-float/2addr v14, v5

    cmpl-float v5, v14, v15

    if-lez v5, :cond_8

    const/4 v5, 0x1

    goto :goto_3

    :cond_8
    const/4 v5, 0x0

    :goto_3
    iput-boolean v5, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->allowRotation:Z

    :cond_9
    iget-boolean v5, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->snappedRotation:Z

    if-nez v5, :cond_a

    invoke-static/range {p0 .. p0}, Lorg/telegram/messenger/AndroidUtilities;->vibrateCursor(Landroid/view/View;)V

    iput-boolean v4, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->snappedRotation:Z

    :cond_a
    iget-boolean v5, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->allowRotation:Z

    if-eqz v5, :cond_b

    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->touchMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v2, v10, v9}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    :cond_b
    iput-boolean v4, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->allowWithSingleTouch:Z

    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-gt v2, v4, :cond_d

    iget-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->allowWithSingleTouch:Z

    if-eqz v2, :cond_e

    :cond_d
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->touchMatrix:Landroid/graphics/Matrix;

    sub-float/2addr v10, v12

    sub-float/2addr v9, v11

    invoke-virtual {v2, v10, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_e
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->finalMatrix:Landroid/graphics/Matrix;

    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->touchMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v5}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->matrix:Landroid/graphics/Matrix;

    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->touchMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v5}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->matrix:Landroid/graphics/Matrix;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Stories/recorder/PreviewView;->extractPointsData(Landroid/graphics/Matrix;)V

    iget v2, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->angle:F

    div-float/2addr v2, v13

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v13

    iget v5, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->angle:F

    sub-float/2addr v2, v5

    iget-boolean v5, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->allowRotation:Z

    if-eqz v5, :cond_10

    iget-boolean v5, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->doNotSpanRotation:Z

    if-nez v5, :cond_10

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v9, 0x40600000    # 3.5f

    cmpg-float v5, v5, v9

    if-gez v5, :cond_f

    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->finalMatrix:Landroid/graphics/Matrix;

    iget v9, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->cx:F

    iget v10, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->cy:F

    invoke-virtual {v5, v2, v9, v10}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    iget-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->snappedRotation:Z

    if-nez v2, :cond_10

    invoke-static/range {p0 .. p0}, Lorg/telegram/messenger/AndroidUtilities;->vibrateCursor(Landroid/view/View;)V

    iput-boolean v4, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->snappedRotation:Z

    goto :goto_4

    :cond_f
    iput-boolean v3, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->snappedRotation:Z

    :cond_10
    :goto_4
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v2, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->matrix:Landroid/graphics/Matrix;

    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->finalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v5}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iput-boolean v4, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editedMedia:Z

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->applyMatrix()V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    :cond_11
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eq v2, v4, :cond_12

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v5, 0x3

    if-ne v2, v5, :cond_14

    :cond_12
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-gt v1, v4, :cond_13

    iput-boolean v3, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->allowWithSingleTouch:Z

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Stories/recorder/PreviewView;->onEntityDraggedTop(Z)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Stories/recorder/PreviewView;->onEntityDraggedBottom(Z)V

    :cond_13
    iput-boolean v3, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->moving:Z

    iput-boolean v3, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->allowRotation:Z

    const/4 v1, 0x0

    iput v1, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->rotationDiff:F

    iput-boolean v3, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->snappedToCenterAndScaled:Z

    iput-boolean v3, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->snappedRotation:Z

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    :cond_14
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->lastTouch:Landroid/graphics/PointF;

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->touch:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iput v3, v1, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iput v2, v1, Landroid/graphics/PointF;->y:F

    iput v6, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->lastTouchDistance:F

    iput-wide v7, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->lastTouchRotation:D

    return v4
.end method


# virtual methods
.method public abstract additionalTouchEvent(Landroid/view/MotionEvent;)Z
.end method

.method public applyMatrix()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v0, :cond_4

    iget-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isRepostMessage:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->textureView:Lorg/telegram/ui/Components/VideoEditTextureView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->matrix:Landroid/graphics/Matrix;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    div-float v1, v2, v1

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v3, v3, Lorg/telegram/ui/Stories/recorder/StoryEntry;->width:I

    if-gez v3, :cond_1

    iget v3, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoWidth:I

    :cond_1
    int-to-float v3, v3

    mul-float v1, v1, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v3, v3, Lorg/telegram/ui/Stories/recorder/StoryEntry;->height:I

    if-gez v3, :cond_2

    iget v3, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoHeight:I

    :cond_2
    int-to-float v3, v3

    mul-float v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v2, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v3, v3, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->transformBackMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->transformMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->transformBackMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->textureView:Lorg/telegram/ui/Components/VideoEditTextureView;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoEditTextureView;->setTransform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->textureView:Lorg/telegram/ui/Components/VideoEditTextureView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_4
    :goto_0
    return-void
.end method

.method public attachRoundView(Lorg/telegram/ui/Components/Paint/Views/RoundView;)V
    .locals 1

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->roundView:Lorg/telegram/ui/Components/Paint/Views/RoundView;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->roundPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lorg/telegram/ui/Components/Paint/Views/RoundView;->textureView:Landroid/view/TextureView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/VideoPlayer;->setTextureView(Landroid/view/TextureView;)V

    :cond_0
    return-void
.end method

.method public checkVolumes()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_3

    iget-boolean v3, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->isMuted:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v3, :cond_0

    iget-boolean v4, v3, Lorg/telegram/ui/Stories/recorder/StoryEntry;->muted:Z

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v3, :cond_1

    iget v3, v3, Lorg/telegram/ui/Stories/recorder/StoryEntry;->videoVolume:F

    goto :goto_1

    :cond_1
    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/VideoPlayer;->setVolume(F)V

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->roundPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_6

    iget-boolean v3, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->isMuted:Z

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v3, :cond_5

    iget v3, v3, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundVolume:F

    goto :goto_2

    :cond_5
    const/high16 v3, 0x3f800000    # 1.0f

    :goto_2
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/VideoPlayer;->setVolume(F)V

    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_9

    iget-boolean v3, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->isMuted:Z

    if-eqz v3, :cond_7

    goto :goto_3

    :cond_7
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v1, :cond_8

    iget v1, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioVolume:F

    goto :goto_3

    :cond_8
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_3
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoPlayer;->setVolume(F)V

    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->collage:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    if-eqz v0, :cond_a

    iget-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->isMuted:Z

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->setMuted(Z)V

    :cond_a
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 14

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->drawBackground(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->cropEditorDrawing:Lorg/telegram/ui/Stories/recorder/CropEditor;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/CropEditor;->contentView:Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->drawImage(Landroid/graphics/Canvas;Z)V

    goto/16 :goto_3

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->draw:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->isCollage()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->thumbAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->bitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->thumbBitmap:Landroid/graphics/Bitmap;

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x40000000    # 2.0f

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    cmpl-float v7, v0, v2

    if-lez v7, :cond_5

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v8, v8, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultWidth:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v8

    int-to-float v8, v8

    iget-object v9, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v9, v9, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultHeight:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v7, v7, Lorg/telegram/ui/Stories/recorder/StoryEntry;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v8, v7, Lorg/telegram/ui/Stories/recorder/StoryEntry;->crop:Lorg/telegram/messenger/MediaController$CropState;

    if-eqz v8, :cond_4

    iget v8, v7, Lorg/telegram/ui/Stories/recorder/StoryEntry;->width:I

    int-to-float v8, v8

    div-float/2addr v8, v6

    iget v7, v7, Lorg/telegram/ui/Stories/recorder/StoryEntry;->height:I

    int-to-float v7, v7

    div-float/2addr v7, v6

    invoke-virtual {p1, v8, v7}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v7, v7, Lorg/telegram/ui/Stories/recorder/StoryEntry;->orientation:I

    neg-int v7, v7

    int-to-float v7, v7

    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->rotate(F)V

    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v8, v7, Lorg/telegram/ui/Stories/recorder/StoryEntry;->width:I

    iget v9, v7, Lorg/telegram/ui/Stories/recorder/StoryEntry;->height:I

    iget v10, v7, Lorg/telegram/ui/Stories/recorder/StoryEntry;->orientation:I

    iget-object v7, v7, Lorg/telegram/ui/Stories/recorder/StoryEntry;->crop:Lorg/telegram/messenger/MediaController$CropState;

    iget v11, v7, Lorg/telegram/messenger/MediaController$CropState;->transformRotation:I

    add-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x5a

    rem-int/lit8 v10, v10, 0x2

    if-ne v10, v1, :cond_2

    goto :goto_1

    :cond_2
    move v13, v9

    move v9, v8

    move v8, v13

    :goto_1
    neg-int v10, v9

    int-to-float v10, v10

    iget v11, v7, Lorg/telegram/messenger/MediaController$CropState;->cropPw:F

    mul-float v10, v10, v11

    div-float/2addr v10, v6

    neg-int v12, v8

    int-to-float v12, v12

    iget v7, v7, Lorg/telegram/messenger/MediaController$CropState;->cropPh:F

    mul-float v12, v12, v7

    div-float/2addr v12, v6

    int-to-float v9, v9

    mul-float v11, v11, v9

    div-float/2addr v11, v6

    int-to-float v8, v8

    mul-float v7, v7, v8

    div-float/2addr v7, v6

    invoke-virtual {p1, v10, v12, v11, v7}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v7, v7, Lorg/telegram/ui/Stories/recorder/StoryEntry;->crop:Lorg/telegram/messenger/MediaController$CropState;

    iget v7, v7, Lorg/telegram/messenger/MediaController$CropState;->cropScale:F

    invoke-virtual {p1, v7, v7}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v7, v7, Lorg/telegram/ui/Stories/recorder/StoryEntry;->crop:Lorg/telegram/messenger/MediaController$CropState;

    iget v10, v7, Lorg/telegram/messenger/MediaController$CropState;->cropPx:F

    mul-float v10, v10, v9

    iget v7, v7, Lorg/telegram/messenger/MediaController$CropState;->cropPy:F

    mul-float v7, v7, v8

    invoke-virtual {p1, v10, v7}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v7, v7, Lorg/telegram/ui/Stories/recorder/StoryEntry;->crop:Lorg/telegram/messenger/MediaController$CropState;

    iget v8, v7, Lorg/telegram/messenger/MediaController$CropState;->cropRotate:F

    iget v7, v7, Lorg/telegram/messenger/MediaController$CropState;->transformRotation:I

    int-to-float v7, v7

    add-float/2addr v8, v7

    invoke-virtual {p1, v8}, Landroid/graphics/Canvas;->rotate(F)V

    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v7, v7, Lorg/telegram/ui/Stories/recorder/StoryEntry;->crop:Lorg/telegram/messenger/MediaController$CropState;

    iget-boolean v7, v7, Lorg/telegram/messenger/MediaController$CropState;->mirrored:Z

    if-eqz v7, :cond_3

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->scale(FF)V

    :cond_3
    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v7, v7, Lorg/telegram/ui/Stories/recorder/StoryEntry;->orientation:I

    int-to-float v7, v7

    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->rotate(F)V

    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v8, v7, Lorg/telegram/ui/Stories/recorder/StoryEntry;->width:I

    neg-int v8, v8

    int-to-float v8, v8

    div-float/2addr v8, v6

    iget v7, v7, Lorg/telegram/ui/Stories/recorder/StoryEntry;->height:I

    neg-int v7, v7

    int-to-float v7, v7

    div-float/2addr v7, v6

    invoke-virtual {p1, v8, v7}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_4
    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v7, v7, Lorg/telegram/ui/Stories/recorder/StoryEntry;->width:I

    int-to-float v7, v7

    iget-object v8, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->thumbBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    iget-object v8, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v8, v8, Lorg/telegram/ui/Stories/recorder/StoryEntry;->height:I

    int-to-float v8, v8

    iget-object v9, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->thumbBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->bitmapPaint:Landroid/graphics/Paint;

    const/16 v8, 0xff

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->thumbBitmap:Landroid/graphics/Bitmap;

    iget-object v8, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v2, v2, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_5
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_9

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v7, v7, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultWidth:I

    int-to-float v7, v7

    div-float/2addr v2, v7

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v8, v8, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultHeight:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    invoke-virtual {p1, v2, v7}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v2, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v7, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->crop:Lorg/telegram/messenger/MediaController$CropState;

    if-eqz v7, :cond_8

    iget v7, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->width:I

    int-to-float v7, v7

    div-float/2addr v7, v6

    iget v2, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->height:I

    int-to-float v2, v2

    div-float/2addr v2, v6

    invoke-virtual {p1, v7, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v2, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->orientation:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->rotate(F)V

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v7, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->width:I

    iget v8, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->height:I

    iget v9, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->orientation:I

    iget-object v2, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->crop:Lorg/telegram/messenger/MediaController$CropState;

    iget v10, v2, Lorg/telegram/messenger/MediaController$CropState;->transformRotation:I

    add-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x5a

    rem-int/lit8 v9, v9, 0x2

    if-ne v9, v1, :cond_6

    goto :goto_2

    :cond_6
    move v13, v8

    move v8, v7

    move v7, v13

    :goto_2
    neg-int v1, v8

    int-to-float v1, v1

    iget v9, v2, Lorg/telegram/messenger/MediaController$CropState;->cropPw:F

    mul-float v1, v1, v9

    div-float/2addr v1, v6

    neg-int v10, v7

    int-to-float v10, v10

    iget v2, v2, Lorg/telegram/messenger/MediaController$CropState;->cropPh:F

    mul-float v10, v10, v2

    div-float/2addr v10, v6

    int-to-float v8, v8

    mul-float v9, v9, v8

    div-float/2addr v9, v6

    int-to-float v7, v7

    mul-float v2, v2, v7

    div-float/2addr v2, v6

    invoke-virtual {p1, v1, v10, v9, v2}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v1, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->crop:Lorg/telegram/messenger/MediaController$CropState;

    iget v1, v1, Lorg/telegram/messenger/MediaController$CropState;->cropScale:F

    invoke-virtual {p1, v1, v1}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v1, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->crop:Lorg/telegram/messenger/MediaController$CropState;

    iget v2, v1, Lorg/telegram/messenger/MediaController$CropState;->cropPx:F

    mul-float v2, v2, v8

    iget v1, v1, Lorg/telegram/messenger/MediaController$CropState;->cropPy:F

    mul-float v1, v1, v7

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v1, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->crop:Lorg/telegram/messenger/MediaController$CropState;

    iget v2, v1, Lorg/telegram/messenger/MediaController$CropState;->cropRotate:F

    iget v1, v1, Lorg/telegram/messenger/MediaController$CropState;->transformRotation:I

    int-to-float v1, v1

    add-float/2addr v2, v1

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->rotate(F)V

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v1, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->crop:Lorg/telegram/messenger/MediaController$CropState;

    iget-boolean v1, v1, Lorg/telegram/messenger/MediaController$CropState;->mirrored:Z

    if-eqz v1, :cond_7

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->scale(FF)V

    :cond_7
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v1, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->orientation:I

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->rotate(F)V

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v2, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->width:I

    neg-int v2, v2

    int-to-float v2, v2

    div-float/2addr v2, v6

    iget v1, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->height:I

    neg-int v1, v1

    int-to-float v1, v1

    div-float/2addr v1, v6

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_8
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->bitmapPaint:Landroid/graphics/Paint;

    sub-float/2addr v5, v0

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float v5, v5, v0

    float-to-int v0, v5

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->bitmapSrc:Landroid/graphics/Rect;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->bitmapDst:Landroid/graphics/Rect;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v2, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->width:I

    iget v1, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->height:I

    invoke-virtual {v0, v3, v3, v2, v1}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->bitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->bitmapSrc:Landroid/graphics/Rect;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->bitmapDst:Landroid/graphics/Rect;

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_9
    :goto_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->touchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->additionalTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->tapTouchEvent(Landroid/view/MotionEvent;)Z

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-gt v0, v2, :cond_2

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_2
    return v2

    :cond_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public drawBackground(Landroid/graphics/Canvas;)V
    .locals 7

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->wallpaperDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->drawForThemeToggle:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v1, v1, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v2, v4, v3, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->wallpaperDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v2, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v2, :cond_1

    check-cast v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->getPatternBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->wallpaperDrawableCrossfade:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v1

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->lastWallpaperDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v2, 0x437f0000    # 255.0f

    if-eqz v0, :cond_3

    cmpg-float v4, v1, v3

    if-gez v4, :cond_3

    sub-float/2addr v3, v1

    mul-float v3, v3, v2

    float-to-int v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->lastWallpaperDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-static {p1, v0, v3, v4}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->drawBackgroundDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;II)V

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->wallpaperDrawable:Landroid/graphics/drawable/Drawable;

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->wallpaperDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-static {p1, v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->drawBackgroundDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;II)V

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->drawForThemeToggle:Z

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->gradientPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_5
    :goto_0
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 8

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->textureView:Lorg/telegram/ui/Components/VideoEditTextureView;

    if-ne p2, v0, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v1, :cond_0

    iget-boolean v1, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isRepostMessage:Z

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-eq p2, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->filterTextureView:Landroid/view/TextureView;

    if-ne p2, v0, :cond_4

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->crop:Lorg/telegram/messenger/MediaController$CropState;

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v1, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v2, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->crop:Lorg/telegram/messenger/MediaController$CropState;

    if-eqz v1, :cond_3

    iget v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->width:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->height:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->orientation:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->width:I

    iget v3, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->height:I

    iget v4, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->orientation:I

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->crop:Lorg/telegram/messenger/MediaController$CropState;

    iget v5, v0, Lorg/telegram/messenger/MediaController$CropState;->transformRotation:I

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x5a

    rem-int/lit8 v4, v4, 0x2

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    move v7, v3

    move v3, v1

    move v1, v7

    :cond_2
    neg-int v4, v1

    int-to-float v4, v4

    iget v5, v0, Lorg/telegram/messenger/MediaController$CropState;->cropPw:F

    mul-float v4, v4, v5

    div-float/2addr v4, v2

    neg-int v6, v3

    int-to-float v6, v6

    iget v0, v0, Lorg/telegram/messenger/MediaController$CropState;->cropPh:F

    mul-float v6, v6, v0

    div-float/2addr v6, v2

    int-to-float v1, v1

    mul-float v1, v1, v5

    div-float/2addr v1, v2

    int-to-float v3, v3

    mul-float v3, v3, v0

    div-float/2addr v3, v2

    invoke-virtual {p1, v4, v6, v1, v3}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->orientation:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->width:I

    neg-int v1, v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    iget v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->height:I

    neg-int v0, v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->invertMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v1, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v0, v1, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v3, v3, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    div-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return p2

    :cond_4
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method public drawContent(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->textureView:Lorg/telegram/ui/Components/VideoEditTextureView;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->getContentWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->getContentHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->transformBackMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->textureView:Lorg/telegram/ui/Components/VideoEditTextureView;

    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v1, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->width:I

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v2, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->height:I

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->bitmapPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->bitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->matrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getContentHeight()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->height:I

    return v0
.end method

.method public getContentWidth()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->width:I

    return v0
.end method

.method public varargs getCoverBitmap(Lorg/telegram/messenger/Utilities$Callback;[Landroid/view/View;)V
    .locals 9

    const/high16 v0, 0x41d00000    # 26.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float v0, v0, v1

    float-to-int v2, v0

    const v0, 0x41f2a3d7    # 30.33f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float v0, v0, v1

    float-to-int v3, v0

    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float v0, v0, v1

    float-to-int v4, v0

    array-length v0, p2

    new-array v5, v0, [Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_4

    aget-object v1, p2, v0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-ltz v1, :cond_3

    aget-object v1, p2, v0

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_1

    :cond_0
    aget-object v1, p2, v0

    if-ne v1, p0, :cond_1

    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->textureView:Lorg/telegram/ui/Components/VideoEditTextureView;

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v5, v0

    goto :goto_1

    :cond_1
    instance-of v6, v1, Landroid/view/TextureView;

    if-eqz v6, :cond_2

    check-cast v1, Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v5, v0

    goto :goto_1

    :cond_2
    instance-of v6, v1, Landroid/view/ViewGroup;

    if-eqz v6, :cond_3

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_3

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v5, v0

    new-instance v1, Landroid/graphics/Canvas;

    aget-object v6, v5, v0

    invoke-direct {v1, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    int-to-float v6, v2

    aget-object v7, p2, v0

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    int-to-float v7, v3

    aget-object v8, p2, v0

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    invoke-virtual {v1, v6, v6}, Landroid/graphics/Canvas;->scale(FF)V

    aget-object v6, p2, v0

    invoke-virtual {v6, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    sget-object p2, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/ui/Stories/recorder/PreviewView$$ExternalSyntheticLambda11;

    move-object v1, v0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Stories/recorder/PreviewView$$ExternalSyntheticLambda11;-><init>(III[Landroid/graphics/Bitmap;Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {p2, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getCurrentPosition()J
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->roundPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0

    :cond_2
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDuration()J
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v0, :cond_0

    iget-wide v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->fileDuration:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_0

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double v0, v0, v2

    double-to-long v0, v0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->getDuration()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->getDuration()J

    move-result-wide v0

    return-wide v0

    :cond_1
    const-wide/16 v0, 0x1

    return-wide v0
.end method

.method public getOrientation()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->orientation:I

    :goto_0
    return v0
.end method

.method public getPaintSize()Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/Pair;

    const/16 v1, 0x438

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x780

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_0
    new-instance v0, Landroid/util/Pair;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v1, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultWidth:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v2, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultHeight:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getPhotoBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getTextureView()Lorg/telegram/ui/Components/VideoEditTextureView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->textureView:Lorg/telegram/ui/Components/VideoEditTextureView;

    return-object v0
.end method

.method protected abstract invalidateTextureViewHolder()V
.end method

.method public isCollage()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->collage:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isCollage()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPlaying()Z
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->pauseLinks:Ljava/util/HashSet;

    const/16 v1, -0x26fe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public mute(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->isMuted:Z

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->checkVolumes()V

    return-void
.end method

.method public abstract onAudioChanged()V
.end method

.method public abstract onEntityDraggedBottom(Z)V
.end method

.method public abstract onEntityDraggedTop(Z)V
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->allowCropping:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->touchEvent(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public abstract onRoundRemove()V
.end method

.method public abstract onRoundSelectChange(Z)V
.end method

.method public play(Z)V
    .locals 1

    xor-int/lit8 p1, p1, 0x1

    const/16 v0, -0x26fe

    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->updatePauseReason(IZ)V

    return-void
.end method

.method public preset(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V
    .locals 3

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    invoke-direct {p0, v1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setupImage(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    invoke-virtual {p0, v1, v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setupWallpaper(Lorg/telegram/ui/Stories/recorder/StoryEntry;Z)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->gradientPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-virtual {p0, v1, v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setupAudio(Lorg/telegram/ui/Stories/recorder/StoryEntry;Z)V

    invoke-virtual {p0, v1, v1, v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setupRound(Lorg/telegram/ui/Stories/recorder/StoryEntry;Lorg/telegram/ui/Components/Paint/Views/RoundView;Z)V

    return-void

    :cond_0
    iget-boolean v2, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setupImage(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    if-eqz v2, :cond_2

    iget v2, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->gradientTopColor:I

    if-nez v2, :cond_2

    iget v2, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->gradientBottomColor:I

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v2, Lorg/telegram/ui/Stories/recorder/PreviewView$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Stories/recorder/PreviewView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/recorder/PreviewView;)V

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->setupGradient(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setupGradient()V

    :goto_1
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->applyMatrix()V

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setupWallpaper(Lorg/telegram/ui/Stories/recorder/StoryEntry;Z)V

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setupAudio(Lorg/telegram/ui/Stories/recorder/StoryEntry;Z)V

    invoke-virtual {p0, p1, v1, v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setupRound(Lorg/telegram/ui/Stories/recorder/StoryEntry;Lorg/telegram/ui/Components/Paint/Views/RoundView;Z)V

    return-void
.end method

.method public release()J
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->pause()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/VideoPlayer;->releasePlayer(Z)V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->roundPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->getCurrentPosition()J

    move-result-wide v3

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->roundPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->pause()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->roundPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/VideoPlayer;->releasePlayer(Z)V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->roundPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    goto :goto_0

    :cond_1
    const-wide/16 v3, 0x0

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->getCurrentPosition()J

    move-result-wide v3

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->pause()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/VideoPlayer;->releasePlayer(Z)V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    :cond_2
    return-wide v3
.end method

.method public seek(J)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/PreviewView;->seekTo(J)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->timelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Stories/recorder/TimelineView;->setProgress(J)V

    :cond_0
    return-void
.end method

.method public seekTo(JZ)V
    .locals 5

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->isCollage()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->collage:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->seekTo(JZ)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->roundPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_3

    :goto_0
    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(JZ)V

    :cond_3
    :goto_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->updateAudioPlayer(Z)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->updateRoundPlayer(Z)V

    if-eqz p3, :cond_6

    iget-boolean p3, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->slowerSeekScheduled:Z

    if-eqz p3, :cond_4

    iget-wide v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->finalSeekPosition:J

    sub-long/2addr v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    const-wide/16 v3, 0x1c2

    cmp-long p3, v1, v3

    if-lez p3, :cond_5

    :cond_4
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->slowerSeekScheduled:Z

    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->slowerSeek:Ljava/lang/Runnable;

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->slowerSeek:Ljava/lang/Runnable;

    const-wide/16 v0, 0x3c

    invoke-static {p3, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_5
    iput-wide p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->finalSeekPosition:J

    :cond_6
    return-void
.end method

.method public set(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V
    .locals 3

    .line 0
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/PreviewView;->set(Lorg/telegram/ui/Stories/recorder/StoryEntry;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public set(Lorg/telegram/ui/Stories/recorder/StoryEntry;Ljava/lang/Runnable;J)V
    .locals 3

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p0, v1, p2, p3, p4}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setupVideoPlayer(Lorg/telegram/ui/Stories/recorder/StoryEntry;Ljava/lang/Runnable;J)V

    invoke-direct {p0, v1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setupImage(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    invoke-direct {p0, v1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setupCollage(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    invoke-virtual {p0, v1, v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setupWallpaper(Lorg/telegram/ui/Stories/recorder/StoryEntry;Z)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->gradientPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-virtual {p0, v1, v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setupAudio(Lorg/telegram/ui/Stories/recorder/StoryEntry;Z)V

    invoke-virtual {p0, v1, v1, v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setupRound(Lorg/telegram/ui/Stories/recorder/StoryEntry;Lorg/telegram/ui/Components/Paint/Views/RoundView;Z)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isCollage()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setupImage(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    invoke-virtual {p0, v1, p2, p3, p4}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setupVideoPlayer(Lorg/telegram/ui/Stories/recorder/StoryEntry;Ljava/lang/Runnable;J)V

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setupCollage(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    goto :goto_1

    :cond_1
    iget-boolean v2, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-eqz v2, :cond_4

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setupImage(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    invoke-direct {p0, v1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setupCollage(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setupVideoPlayer(Lorg/telegram/ui/Stories/recorder/StoryEntry;Ljava/lang/Runnable;J)V

    iget p2, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->gradientTopColor:I

    if-nez p2, :cond_3

    iget p2, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->gradientBottomColor:I

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    new-instance p2, Lorg/telegram/ui/Stories/recorder/PreviewView$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Stories/recorder/PreviewView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/recorder/PreviewView;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->setupGradient(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_3
    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setupGradient()V

    goto :goto_1

    :cond_4
    invoke-direct {p0, v1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setupCollage(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    const-wide/16 p3, 0x0

    invoke-virtual {p0, v1, p2, p3, p4}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setupVideoPlayer(Lorg/telegram/ui/Stories/recorder/StoryEntry;Ljava/lang/Runnable;J)V

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setupImage(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->applyMatrix()V

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setupWallpaper(Lorg/telegram/ui/Stories/recorder/StoryEntry;Z)V

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setupAudio(Lorg/telegram/ui/Stories/recorder/StoryEntry;Z)V

    invoke-virtual {p0, p1, v1, v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setupRound(Lorg/telegram/ui/Stories/recorder/StoryEntry;Lorg/telegram/ui/Components/Paint/Views/RoundView;Z)V

    return-void
.end method

.method public setAllowCropping(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->allowCropping:Z

    return-void
.end method

.method public setCollageView(Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->collage:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    return-void
.end method

.method public setCropEditorDrawing(Lorg/telegram/ui/Stories/recorder/CropEditor;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->cropEditorDrawing:Lorg/telegram/ui/Stories/recorder/CropEditor;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->cropEditorDrawing:Lorg/telegram/ui/Stories/recorder/CropEditor;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setDraw(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->draw:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setFilterTextureView(Landroid/view/TextureView;Lorg/telegram/ui/Components/PhotoFilterView;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->filterTextureView:Landroid/view/TextureView;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->filterTextureView:Landroid/view/TextureView;

    :cond_0
    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->filterTextureView:Landroid/view/TextureView;

    if-eqz p2, :cond_1

    iget p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->gradientTop:I

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->gradientBottom:I

    invoke-virtual {p2, p1, v0}, Lorg/telegram/ui/Components/PhotoFilterView;->updateUiBlurGradient(II)V

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->filterTextureView:Landroid/view/TextureView;

    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public setOnTapListener(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->onTap:Ljava/lang/Runnable;

    return-void
.end method

.method public setVideoTimelineView(Lorg/telegram/ui/Stories/recorder/TimelineView;)V
    .locals 1

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->timelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

    if-eqz p1, :cond_0

    new-instance v0, Lorg/telegram/ui/Stories/recorder/PreviewView$2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/recorder/PreviewView$2;-><init>(Lorg/telegram/ui/Stories/recorder/PreviewView;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->setDelegate(Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;)V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->set(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    :cond_0
    return-void
.end method

.method public setupAudio(Lorg/telegram/messenger/MessageObject;Z)V
    .locals 10

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v0, :cond_b

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editedMedia:Z

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    if-eqz p1, :cond_a

    iget-object v7, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-nez v7, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    iput-object v7, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioPath:Ljava/lang/String;

    iput-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioAuthor:Ljava/lang/String;

    iput-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioTitle:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    instance-of v6, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    if-eqz v6, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->performer:Ljava/lang/String;

    iput-object v6, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioAuthor:Ljava/lang/String;

    iget-object p1, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->title:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->title:Ljava/lang/String;

    iput-object v6, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioTitle:Ljava/lang/String;

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->duration:D

    const-wide v8, 0x408f400000000000L    # 1000.0

    mul-double v6, v6, v8

    double-to-long v6, v6

    iput-wide v6, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioDuration:J

    goto :goto_1

    :cond_3
    instance-of v6, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->file_name:Ljava/lang/String;

    iput-object v0, v6, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioTitle:Ljava/lang/String;

    goto :goto_0

    :cond_4
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iput-wide v4, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioOffset:J

    iget-boolean v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-eqz v0, :cond_5

    iget v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->left:F

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->getDuration()J

    move-result-wide v6

    long-to-float v6, v6

    mul-float v0, v0, v6

    float-to-long v6, v0

    iput-wide v6, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioOffset:J

    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iput v2, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioLeft:F

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->isCollage()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->collage:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->hasVideo()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->collage:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->getDuration()J

    move-result-wide v6

    goto :goto_2

    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-boolean v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->getDuration()J

    move-result-wide v6

    goto :goto_2

    :cond_7
    iget-wide v6, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioDuration:J

    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->timelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

    if-nez p1, :cond_8

    goto :goto_3

    :cond_8
    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/TimelineView;->getMaxCount()I

    move-result v1

    :goto_3
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-wide v8, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioDuration:J

    cmp-long v0, v8, v4

    if-nez v0, :cond_9

    goto :goto_4

    :cond_9
    int-to-long v0, v1

    const-wide/32 v4, 0xe678

    mul-long v0, v0, v4

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-wide v1, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioDuration:J

    long-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v3

    :goto_4
    iput v3, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioRight:F

    goto :goto_6

    :cond_a
    :goto_5
    iput-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioPath:Ljava/lang/String;

    iput-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioAuthor:Ljava/lang/String;

    iput-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioTitle:Ljava/lang/String;

    iput-wide v4, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioOffset:J

    iput-wide v4, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioDuration:J

    iput v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioLeft:F

    iput v3, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioRight:F

    :cond_b
    :goto_6
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setupAudio(Lorg/telegram/ui/Stories/recorder/StoryEntry;Z)V

    return-void
.end method

.method public setupAudio(Lorg/telegram/ui/Stories/recorder/StoryEntry;Z)V
    .locals 16

    .line 0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/telegram/ui/Components/VideoPlayer;->pause()V

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/VideoPlayer;->releasePlayer(Z)V

    const/4 v2, 0x0

    iput-object v2, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    :cond_0
    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->timelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

    if-eqz v4, :cond_2

    iget-object v5, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioPath:Ljava/lang/String;

    iget-object v6, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioAuthor:Ljava/lang/String;

    iget-object v7, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioTitle:Ljava/lang/String;

    iget-wide v8, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioDuration:J

    iget-wide v10, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioOffset:J

    iget v12, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioLeft:F

    iget v13, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioRight:F

    iget v14, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioVolume:F

    move/from16 v15, p2

    invoke-virtual/range {v4 .. v15}, Lorg/telegram/ui/Stories/recorder/TimelineView;->setAudio(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJFFFZ)V

    :cond_2
    iget-object v2, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioPath:Ljava/lang/String;

    if-eqz v2, :cond_4

    new-instance v2, Lorg/telegram/ui/Components/VideoPlayer;

    invoke-direct {v2}, Lorg/telegram/ui/Components/VideoPlayer;-><init>()V

    iput-object v2, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    iput-boolean v3, v2, Lorg/telegram/ui/Components/VideoPlayer;->allowMultipleInstances:Z

    new-instance v4, Lorg/telegram/ui/Stories/recorder/PreviewView$1;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Stories/recorder/PreviewView$1;-><init>(Lorg/telegram/ui/Stories/recorder/PreviewView;)V

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/VideoPlayer;->setDelegate(Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;)V

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    new-instance v4, Ljava/io/File;

    iget-object v5, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioPath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "other"

    invoke-virtual {v2, v4, v5}, Lorg/telegram/ui/Components/VideoPlayer;->preparePlayer(Landroid/net/Uri;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->checkVolumes()V

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v2, :cond_3

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->getDuration()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_3

    iget v1, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->left:F

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->getDuration()J

    move-result-wide v4

    long-to-float v2, v4

    mul-float v1, v1, v2

    float-to-long v1, v1

    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v4, v1, v2}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(J)V

    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->timelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

    invoke-virtual {v4, v1, v2}, Lorg/telegram/ui/Stories/recorder/TimelineView;->setProgress(J)V

    :cond_3
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Stories/recorder/PreviewView;->updateAudioPlayer(Z)V

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->onAudioChanged()V

    return-void
.end method

.method public setupRound(Lorg/telegram/ui/Stories/recorder/StoryEntry;Lorg/telegram/ui/Components/Paint/Views/RoundView;Z)V
    .locals 14

    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    iget-object v4, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->round:Ljava/io/File;

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->roundPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v4, :cond_1

    invoke-virtual {v4, v3}, Lorg/telegram/ui/Components/VideoPlayer;->releasePlayer(Z)V

    iput-object v2, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->roundPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    :cond_1
    new-instance v2, Lorg/telegram/ui/Components/VideoPlayer;

    invoke-direct {v2}, Lorg/telegram/ui/Components/VideoPlayer;-><init>()V

    iput-object v2, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->roundPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    iput-boolean v3, v2, Lorg/telegram/ui/Components/VideoPlayer;->allowMultipleInstances:Z

    new-instance v4, Lorg/telegram/ui/Stories/recorder/PreviewView$4;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Stories/recorder/PreviewView$4;-><init>(Lorg/telegram/ui/Stories/recorder/PreviewView;)V

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/VideoPlayer;->setDelegate(Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;)V

    iget-object v2, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->round:Ljava/io/File;

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->roundPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    const-string v5, "other"

    invoke-virtual {v4, v2, v5}, Lorg/telegram/ui/Components/VideoPlayer;->preparePlayer(Landroid/net/Uri;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->checkVolumes()V

    move-object/from16 v2, p2

    invoke-virtual {p0, v2}, Lorg/telegram/ui/Stories/recorder/PreviewView;->attachRoundView(Lorg/telegram/ui/Components/Paint/Views/RoundView;)V

    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->timelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

    iget-object v2, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->round:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    iget-wide v6, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundDuration:J

    iget-wide v8, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundOffset:J

    iget v10, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundLeft:F

    iget v11, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundRight:F

    iget v12, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundVolume:F

    move/from16 v13, p3

    invoke-virtual/range {v4 .. v13}, Lorg/telegram/ui/Stories/recorder/TimelineView;->setRound(Ljava/lang/String;JJFFFZ)V

    invoke-virtual {p0, v3}, Lorg/telegram/ui/Stories/recorder/PreviewView;->updateRoundPlayer(Z)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->roundPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lorg/telegram/ui/Components/VideoPlayer;->pause()V

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->roundPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/VideoPlayer;->releasePlayer(Z)V

    iput-object v2, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->roundPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    :cond_3
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->timelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

    if-eqz v1, :cond_4

    move/from16 v3, p3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Stories/recorder/TimelineView;->setRoundNull(Z)V

    :cond_4
    iput-object v2, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->roundView:Lorg/telegram/ui/Components/Paint/Views/RoundView;

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->updateProgressRunnable:Ljava/lang/Runnable;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method

.method public setupVideoPlayer(Lorg/telegram/ui/Stories/recorder/StoryEntry;Ljava/lang/Runnable;J)V
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isCollage()Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v4, :cond_1

    invoke-virtual {v4, v3}, Lorg/telegram/ui/Components/VideoPlayer;->releasePlayer(Z)V

    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    :cond_1
    new-array v4, v3, [Ljava/lang/Runnable;

    aput-object p2, v4, v0

    new-instance v5, Lorg/telegram/ui/Components/VideoPlayer;

    invoke-direct {v5}, Lorg/telegram/ui/Components/VideoPlayer;-><init>()V

    iput-object v5, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    iput-boolean v3, v5, Lorg/telegram/ui/Components/VideoPlayer;->allowMultipleInstances:Z

    new-instance v6, Lorg/telegram/ui/Stories/recorder/PreviewView$3;

    invoke-direct {v6, p0, p1, v4}, Lorg/telegram/ui/Stories/recorder/PreviewView$3;-><init>(Lorg/telegram/ui/Stories/recorder/PreviewView;Lorg/telegram/ui/Stories/recorder/StoryEntry;[Ljava/lang/Runnable;)V

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/VideoPlayer;->setDelegate(Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;)V

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->textureView:Lorg/telegram/ui/Components/VideoEditTextureView;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/view/View;->clearAnimation()V

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->textureView:Lorg/telegram/ui/Components/VideoEditTextureView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/VideoEditTextureView;->release()V

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->textureView:Lorg/telegram/ui/Components/VideoEditTextureView;

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->textureView:Lorg/telegram/ui/Components/VideoEditTextureView;

    :cond_2
    new-instance v4, Lorg/telegram/ui/Components/VideoEditTextureView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-direct {v4, v5, v6}, Lorg/telegram/ui/Components/VideoEditTextureView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/VideoPlayer;)V

    iput-object v4, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->textureView:Lorg/telegram/ui/Components/VideoEditTextureView;

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->blurManager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/BlurringShader$BlurManager;->resetBitmap()V

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->textureView:Lorg/telegram/ui/Components/VideoEditTextureView;

    iget-boolean v5, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isRepostMessage:Z

    if-eqz v5, :cond_3

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->blurManager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    :goto_0
    invoke-virtual {v4, v2}, Lorg/telegram/ui/Components/VideoEditTextureView;->updateUiBlurManager(Lorg/telegram/ui/Components/BlurringShader$BlurManager;)V

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->textureView:Lorg/telegram/ui/Components/VideoEditTextureView;

    invoke-virtual {v2, v0}, Landroid/view/TextureView;->setOpaque(Z)V

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->applyMatrix()V

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->textureViewHolder:Lorg/telegram/ui/Stories/recorder/PreviewView$TextureViewHolder;

    if-eqz v2, :cond_4

    iget-boolean v4, v2, Lorg/telegram/ui/Stories/recorder/PreviewView$TextureViewHolder;->active:Z

    if-eqz v4, :cond_4

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->textureView:Lorg/telegram/ui/Components/VideoEditTextureView;

    invoke-virtual {v2, p2}, Lorg/telegram/ui/Stories/recorder/PreviewView$TextureViewHolder;->setTextureView(Landroid/view/TextureView;)V

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->textureView:Lorg/telegram/ui/Components/VideoEditTextureView;

    if-nez p2, :cond_5

    goto :goto_1

    :cond_5
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->textureView:Lorg/telegram/ui/Components/VideoEditTextureView;

    const/16 v1, 0x33

    const/4 v2, -0x2

    invoke-static {v2, v2, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_2
    new-instance p2, Lorg/telegram/ui/Stories/recorder/PreviewView$$ExternalSyntheticLambda7;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Stories/recorder/PreviewView$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Stories/recorder/PreviewView;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->detectHDR(Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->getOriginalFile()Ljava/io/File;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    const-string v2, "other"

    invoke-virtual {v1, p2, v2}, Lorg/telegram/ui/Components/VideoPlayer;->preparePlayer(Landroid/net/Uri;Ljava/lang/String;)V

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->pauseLinks:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/VideoPlayer;->setPlayWhenReady(Z)V

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {p2, v3}, Lorg/telegram/ui/Components/VideoPlayer;->setLooping(Z)V

    iget-boolean p2, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isEditSaved:Z

    if-eqz p2, :cond_6

    iget p2, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->left:F

    iget-wide v1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->duration:J

    long-to-float v1, v1

    mul-float p2, p2, v1

    long-to-float p3, p3

    add-float/2addr p2, p3

    float-to-long p3, p2

    :cond_6
    const-wide/16 v1, 0x0

    cmp-long p2, p3, v1

    if-lez p2, :cond_7

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {p2, p3, p4}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(J)V

    :cond_7
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->checkVolumes()V

    invoke-virtual {p0, v3}, Lorg/telegram/ui/Stories/recorder/PreviewView;->updateAudioPlayer(Z)V

    iget-boolean p2, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isRepostMessage:Z

    if-eqz p2, :cond_8

    iget-object p2, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->messageObjects:Ljava/util/ArrayList;

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ne p2, v3, :cond_8

    iget-object p2, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/messenger/MessageObject;

    iget p2, p2, Lorg/telegram/messenger/MessageObject;->type:I

    const/4 v4, 0x5

    if-ne p2, v4, :cond_8

    const/4 v6, 0x1

    goto :goto_3

    :cond_8
    const/4 v6, 0x0

    :goto_3
    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->timelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->getOriginalFile()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->getDuration()J

    move-result-wide v8

    iget v10, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->videoVolume:F

    invoke-virtual/range {v5 .. v10}, Lorg/telegram/ui/Stories/recorder/TimelineView;->setVideo(ZLjava/lang/String;JF)V

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->timelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

    iget v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->left:F

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->setVideoLeft(F)V

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->timelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

    iget p1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->right:F

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Stories/recorder/TimelineView;->setVideoRight(F)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->timelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

    if-eqz p1, :cond_e

    cmp-long p2, p3, v1

    if-lez p2, :cond_e

    invoke-virtual {p1, p3, p4}, Lorg/telegram/ui/Stories/recorder/TimelineView;->setProgress(J)V

    goto :goto_6

    :cond_9
    :goto_4
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lorg/telegram/ui/Components/VideoPlayer;->pause()V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/VideoPlayer;->releasePlayer(Z)V

    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    :cond_a
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->textureViewHolder:Lorg/telegram/ui/Stories/recorder/PreviewView$TextureViewHolder;

    if-eqz p1, :cond_b

    iget-boolean p3, p1, Lorg/telegram/ui/Stories/recorder/PreviewView$TextureViewHolder;->active:Z

    if-eqz p3, :cond_b

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Stories/recorder/PreviewView$TextureViewHolder;->setTextureView(Landroid/view/TextureView;)V

    goto :goto_5

    :cond_b
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->textureView:Lorg/telegram/ui/Components/VideoEditTextureView;

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->textureView:Lorg/telegram/ui/Components/VideoEditTextureView;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p3, Lorg/telegram/ui/Stories/recorder/PreviewView$$ExternalSyntheticLambda8;

    invoke-direct {p3, p0}, Lorg/telegram/ui/Stories/recorder/PreviewView$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Stories/recorder/PreviewView;)V

    invoke-virtual {p1, p3}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_c
    :goto_5
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->timelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

    if-eqz v0, :cond_d

    const-wide/16 v3, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Stories/recorder/TimelineView;->setVideo(ZLjava/lang/String;JF)V

    :cond_d
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->updateProgressRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    if-eqz p2, :cond_e

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_e
    :goto_6
    return-void
.end method

.method public setupWallpaper(Lorg/telegram/ui/Stories/recorder/StoryEntry;Z)V
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->wallpaperDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->lastWallpaperDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    if-nez p1, :cond_1

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->wallpaperDrawable:Landroid/graphics/drawable/Drawable;

    return-void

    :cond_1
    iget-wide v2, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->backgroundWallpaperPeerId:J

    iget-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->backgroundWallpaperEmoticon:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget v2, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->currentAccount:I

    iget-boolean v3, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isDark:Z

    invoke-static {v2, v0, v3}, Lorg/telegram/ui/Stories/recorder/PreviewView;->getBackgroundDrawableFromTheme(ILjava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    iput-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->wallpaperDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_2
    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v0, v2, v4

    if-eqz v0, :cond_c

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->wallpaperDrawable:Landroid/graphics/drawable/Drawable;

    iget v4, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->currentAccount:I

    iget-boolean v5, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isDark:Z

    invoke-static {v0, v4, v2, v3, v5}, Lorg/telegram/ui/Stories/recorder/PreviewView;->getBackgroundDrawable(Landroid/graphics/drawable/Drawable;IJZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->lastWallpaperDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->wallpaperDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x1

    if-eq p1, v0, :cond_4

    if-eqz p2, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->wallpaperDrawableCrossfade:Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    goto :goto_2

    :cond_3
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->lastWallpaperDrawable:Landroid/graphics/drawable/Drawable;

    :cond_4
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->wallpaperDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_5

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->blurManager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    if-eqz p1, :cond_b

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->wallpaperDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    if-eqz p2, :cond_a

    instance-of v1, p2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_6

    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Components/BlurringShader$BlurManager;->setFallbackBlur(Landroid/graphics/Bitmap;I)V

    goto :goto_3

    :cond_6
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->wallpaperDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p2

    if-lez p1, :cond_7

    if-gtz p2, :cond_8

    :cond_7
    const/16 p1, 0x438

    const/16 p2, 0x780

    :cond_8
    int-to-float v1, p1

    const/high16 v3, 0x42c80000    # 100.0f

    div-float v4, v3, v1

    int-to-float v5, p2

    div-float/2addr v3, v5

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v3, v4

    if-lez v4, :cond_9

    mul-float v1, v1, v3

    float-to-int p1, v1

    mul-float v5, v5, v3

    float-to-int p2, v5

    :cond_9
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->wallpaperDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v0, v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->wallpaperDrawable:Landroid/graphics/drawable/Drawable;

    new-instance p2, Landroid/graphics/Canvas;

    invoke-direct {p2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->blurManager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    invoke-virtual {p1, v1, v0, v2}, Lorg/telegram/ui/Components/BlurringShader$BlurManager;->setFallbackBlur(Landroid/graphics/Bitmap;IZ)V

    goto :goto_3

    :cond_a
    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/Components/BlurringShader$BlurManager;->setFallbackBlur(Landroid/graphics/Bitmap;I)V

    :cond_b
    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    :cond_c
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->wallpaperDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public updateAudioPlayer(Z)V
    .locals 12

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    const/4 v1, 0x1

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->roundPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->isCollage()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->pauseLinks:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/VideoPlayer;->setPlayWhenReady(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoPlayer;->setLooping(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->getCurrentPosition()J

    move-result-wide v0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/VideoPlayer;->getDuration()J

    move-result-wide v2

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v2, v4

    if-eqz p1, :cond_2

    long-to-float p1, v0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->getDuration()J

    move-result-wide v0

    long-to-float v0, v0

    div-float/2addr p1, v0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioLeft:F

    cmpg-float v1, p1, v1

    if-ltz v1, :cond_1

    iget v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioRight:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->seekedLastTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long p1, v0, v2

    if-lez p1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->seekedLastTime:J

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-wide v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioOffset:J

    neg-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(J)V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->isCollage()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->collage:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->getPositionWithOffset()J

    move-result-wide v2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->collage:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->isPlaying()Z

    move-result v0

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_5

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->roundPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    :goto_0
    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->getCurrentPosition()J

    move-result-wide v2

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->isPlaying()Z

    move-result v0

    :goto_1
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v5, v4, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioRight:F

    iget v6, v4, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioLeft:F

    sub-float/2addr v5, v6

    iget-wide v7, v4, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioDuration:J

    long-to-float v7, v7

    mul-float v5, v5, v7

    float-to-long v8, v5

    if-eqz v0, :cond_6

    iget-wide v10, v4, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioOffset:J

    cmp-long v0, v2, v10

    if-ltz v0, :cond_6

    add-long/2addr v10, v8

    cmp-long v0, v2, v10

    if-gtz v0, :cond_6

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    iget-wide v4, v4, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioOffset:J

    mul-float v6, v6, v7

    float-to-long v6, v6

    sub-long/2addr v4, v6

    sub-long/2addr v2, v4

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->isPlaying()Z

    move-result v0

    if-eq v0, v1, :cond_7

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/VideoPlayer;->setPlayWhenReady(Z)V

    :goto_3
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {p1, v2, v3}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(J)V

    goto :goto_5

    :cond_7
    if-eqz p1, :cond_9

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/VideoPlayer;->getCurrentPosition()J

    move-result-wide v0

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->isCollage()Z

    move-result p1

    if-eqz p1, :cond_8

    const/16 p1, 0x12c

    goto :goto_4

    :cond_8
    const/16 p1, 0x78

    :goto_4
    int-to-long v4, p1

    cmp-long p1, v0, v4

    if-lez p1, :cond_9

    goto :goto_3

    :cond_9
    :goto_5
    return-void
.end method

.method public updatePauseReason(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->pauseLinks:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->pauseLinks:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->pauseLinks:Ljava/util/HashSet;

    invoke-virtual {p2}, Ljava/util/HashSet;->isEmpty()Z

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/VideoPlayer;->setPlayWhenReady(Z)V

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->collage:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    if-eqz p1, :cond_2

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->pauseLinks:Ljava/util/HashSet;

    invoke-virtual {p2}, Ljava/util/HashSet;->isEmpty()Z

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->setPlaying(Z)V

    :cond_2
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->updateAudioPlayer(Z)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->updateRoundPlayer(Z)V

    return-void
.end method

.method public updateRoundPlayer(Z)V
    .locals 12

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->roundPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->isCollage()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->roundPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->pauseLinks:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/VideoPlayer;->setPlayWhenReady(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->roundPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/VideoPlayer;->setLooping(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->roundView:Lorg/telegram/ui/Components/Paint/Views/RoundView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/Components/Paint/Views/RoundView;->setShown(ZZ)V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->roundPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->getCurrentPosition()J

    move-result-wide v0

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->roundPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/VideoPlayer;->getDuration()J

    move-result-wide v2

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v2, v4

    if-eqz p1, :cond_3

    long-to-float p1, v0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->roundPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->getDuration()J

    move-result-wide v0

    long-to-float v0, v0

    div-float/2addr p1, v0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundLeft:F

    cmpg-float v1, p1, v1

    if-ltz v1, :cond_2

    iget v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundRight:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_3

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->seekedLastTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long p1, v0, v2

    if-lez p1, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->seekedLastTime:J

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->roundPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-wide v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundOffset:J

    neg-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(J)V

    :cond_3
    return-void

    :cond_4
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->isCollage()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->collage:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->getPositionWithOffset()J

    move-result-wide v3

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->collage:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->isPlaying()Z

    move-result v0

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->getCurrentPosition()J

    move-result-wide v3

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->isPlaying()Z

    move-result v0

    :goto_0
    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v6, v5, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundRight:F

    iget v7, v5, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundLeft:F

    sub-float/2addr v6, v7

    iget-wide v8, v5, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundDuration:J

    long-to-float v8, v8

    mul-float v6, v6, v8

    float-to-long v9, v6

    iget-wide v5, v5, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundOffset:J

    cmp-long v11, v3, v5

    if-ltz v11, :cond_6

    add-long/2addr v9, v5

    cmp-long v11, v3, v9

    if-gtz v11, :cond_6

    const/4 v9, 0x1

    goto :goto_1

    :cond_6
    const/4 v9, 0x0

    :goto_1
    if-eqz v0, :cond_7

    if-eqz v9, :cond_7

    const/4 v1, 0x1

    :cond_7
    sub-long/2addr v3, v5

    mul-float v7, v7, v8

    float-to-long v5, v7

    add-long/2addr v3, v5

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->roundView:Lorg/telegram/ui/Components/Paint/Views/RoundView;

    if-eqz v0, :cond_8

    invoke-virtual {v0, v9, v2}, Lorg/telegram/ui/Components/Paint/Views/RoundView;->setShown(ZZ)V

    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->roundPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->isPlaying()Z

    move-result v0

    if-eq v0, v1, :cond_9

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->roundPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/VideoPlayer;->setPlayWhenReady(Z)V

    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->roundPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {p1, v3, v4}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(J)V

    goto :goto_4

    :cond_9
    if-eqz p1, :cond_b

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->roundPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/VideoPlayer;->getCurrentPosition()J

    move-result-wide v0

    sub-long/2addr v0, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->isCollage()Z

    move-result p1

    if-eqz p1, :cond_a

    const/16 p1, 0x12c

    goto :goto_3

    :cond_a
    const/16 p1, 0x78

    :goto_3
    int-to-long v5, p1

    cmp-long p1, v0, v5

    if-lez p1, :cond_b

    goto :goto_2

    :cond_b
    :goto_4
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->wallpaperDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_1

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

.method public whenError(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->onErrorListener:Ljava/lang/Runnable;

    return-void
.end method
