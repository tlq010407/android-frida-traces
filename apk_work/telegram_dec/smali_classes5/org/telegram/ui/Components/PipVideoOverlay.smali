.class public Lorg/telegram/ui/Components/PipVideoOverlay;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/pip/source/IPipSourceDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/PipVideoOverlay$PipConfig;,
        Lorg/telegram/ui/Components/PipVideoOverlay$VideoProgressView;,
        Lorg/telegram/ui/Components/PipVideoOverlay$PipVideoViewGroup;
    }
.end annotation


# static fields
.field private static final PIP_X_PROPERTY:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

.field private static final PIP_Y_PROPERTY:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

.field private static instance:Lorg/telegram/ui/Components/PipVideoOverlay;


# instance fields
.field private aspectRatio:Ljava/lang/Float;

.field private bufferProgress:F

.field private canLongClick:Z

.field private consumingChild:Landroid/view/View;

.field private contentFrameLayout:Landroid/widget/FrameLayout;

.field private contentView:Landroid/view/ViewGroup;

.field private controlsAnimator:Landroid/animation/ValueAnimator;

.field private controlsView:Landroid/widget/FrameLayout;

.field private dismissControlsCallback:Ljava/lang/Runnable;

.field private gestureDetector:Lorg/telegram/ui/Components/GestureDetectorFixDoubleTap;

.field private innerView:Landroid/view/View;

.field private isDismissing:Z

.field private isScrollDisallowed:Z

.field private isScrolling:Z

.field private isShowingControls:Z

.field private isVideoCompleted:Z

.field private isVisible:Z

.field private isWebView:Z

.field private longClickCallback:Ljava/lang/Runnable;

.field private longClickStartPoint:[F

.field private mVideoHeight:I

.field private mVideoWidth:I

.field private maxScaleFactor:F

.field private minScaleFactor:F

.field private onSideToDismiss:Z

.field private parentSheet:Lorg/telegram/ui/Components/EmbedBottomSheet;

.field private photoViewer:Lorg/telegram/ui/PhotoViewer;

.field private photoViewerWebView:Lorg/telegram/ui/Components/PhotoViewerWebView;

.field private pipConfig:Lorg/telegram/ui/Components/PipVideoOverlay$PipConfig;

.field private pipHeight:I

.field private pipSource:Lorg/telegram/messenger/pip/PipSource;

.field public pipTextureView:Landroid/view/TextureView;

.field private pipWidth:I

.field private pipX:F

.field private pipXSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private pipY:F

.field private pipYSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private placeholderView:Landroid/view/View;

.field private playPauseButton:Landroid/widget/ImageView;

.field private postedDismissControls:Z

.field private progressRunnable:Ljava/lang/Runnable;

.field private scaleFactor:F

.field private scaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private seekSpeedDrawable:Lorg/telegram/ui/Components/SeekSpeedDrawable;

.field private videoForwardDrawable:Lorg/telegram/ui/Components/VideoForwardDrawable;

.field private videoProgress:F

.field private videoProgressView:Lorg/telegram/ui/Components/PipVideoOverlay$VideoProgressView;

.field private windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private windowManager:Landroid/view/WindowManager;

.field private windowViewSkipRender:Z


# direct methods
.method public static synthetic $r8$lambda$021UvH6ryNHUWTc0RDYOTkOoBOI(Lorg/telegram/ui/Components/PipVideoOverlay;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/PipVideoOverlay;->onDismissedInternal()V

    return-void
.end method

.method public static synthetic $r8$lambda$8jGLxBMij-CVl1dVaFacfc2F4EU(Lorg/telegram/ui/Components/PipVideoOverlay;)F
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/PipVideoOverlay;->lambda$static$2(Lorg/telegram/ui/Components/PipVideoOverlay;)F

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$AHBvbxBgsOx58s2E3qsf2a47mfE(Lorg/telegram/ui/Components/PipVideoOverlay;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PipVideoOverlay;->lambda$showInternal$11(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$T73iSTdJWKrqKwG4fHFr4MqbIKA(Lorg/telegram/ui/Components/PipVideoOverlay;F)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/PipVideoOverlay;->lambda$static$3(Lorg/telegram/ui/Components/PipVideoOverlay;F)V

    return-void
.end method

.method public static synthetic $r8$lambda$VozdQr6gdf9oTN1H0adHU7A3Pl8(Lorg/telegram/ui/Components/PipVideoOverlay;F)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/PipVideoOverlay;->lambda$static$1(Lorg/telegram/ui/Components/PipVideoOverlay;F)V

    return-void
.end method

.method public static synthetic $r8$lambda$WuZVMb9RZW0wKhVlPCD2ilMsLC0(Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/PipVideoOverlay;->lambda$showInternal$9(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZBaA-fHpBa0ZLxpJGyx8xL7YA5M(Lorg/telegram/ui/Components/PipVideoOverlay;)F
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/PipVideoOverlay;->lambda$static$0(Lorg/telegram/ui/Components/PipVideoOverlay;)F

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$exMrW55sq0BGli7LLfKP95Vt6tg(Lorg/telegram/ui/Components/PipVideoOverlay;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/PipVideoOverlay;->lambda$new$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$gB1qwbwEvH42dhrArrH6CHV1wQA(Lorg/telegram/ui/Components/PipVideoOverlay;ZLandroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/PipVideoOverlay;->lambda$showInternal$10(ZLandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$on_NRABVcr5gkj8PsoY0RmPqgII(Lorg/telegram/ui/Components/PipVideoOverlay;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/PipVideoOverlay;->lambda$showInternal$8(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$paljkKE1c9lKZoq8spB_26BWk8A(Lorg/telegram/ui/Components/PipVideoOverlay;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/PipVideoOverlay;->lambda$showInternal$7(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$sNtMJuM27rzGqFBqHFiiw-HDe2w(Lorg/telegram/ui/Components/PipVideoOverlay;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PipVideoOverlay;->lambda$toggleControls$6(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wAsXC3J3HIWlFyBBjlkZj439oME(Lorg/telegram/ui/Components/PipVideoOverlay;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/PipVideoOverlay;->lambda$new$4()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/telegram/ui/Components/SimpleFloatPropertyCompat;

    new-instance v1, Lorg/telegram/ui/Components/PipVideoOverlay$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lorg/telegram/ui/Components/PipVideoOverlay$$ExternalSyntheticLambda1;-><init>()V

    new-instance v2, Lorg/telegram/ui/Components/PipVideoOverlay$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lorg/telegram/ui/Components/PipVideoOverlay$$ExternalSyntheticLambda2;-><init>()V

    const-string v3, "pipX"

    invoke-direct {v0, v3, v1, v2}, Lorg/telegram/ui/Components/SimpleFloatPropertyCompat;-><init>(Ljava/lang/String;Lorg/telegram/ui/Components/SimpleFloatPropertyCompat$Getter;Lorg/telegram/ui/Components/SimpleFloatPropertyCompat$Setter;)V

    sput-object v0, Lorg/telegram/ui/Components/PipVideoOverlay;->PIP_X_PROPERTY:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    new-instance v0, Lorg/telegram/ui/Components/SimpleFloatPropertyCompat;

    new-instance v1, Lorg/telegram/ui/Components/PipVideoOverlay$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lorg/telegram/ui/Components/PipVideoOverlay$$ExternalSyntheticLambda3;-><init>()V

    new-instance v2, Lorg/telegram/ui/Components/PipVideoOverlay$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Lorg/telegram/ui/Components/PipVideoOverlay$$ExternalSyntheticLambda4;-><init>()V

    const-string v3, "pipY"

    invoke-direct {v0, v3, v1, v2}, Lorg/telegram/ui/Components/SimpleFloatPropertyCompat;-><init>(Ljava/lang/String;Lorg/telegram/ui/Components/SimpleFloatPropertyCompat$Getter;Lorg/telegram/ui/Components/SimpleFloatPropertyCompat$Setter;)V

    sput-object v0, Lorg/telegram/ui/Components/PipVideoOverlay;->PIP_Y_PROPERTY:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    new-instance v0, Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-direct {v0}, Lorg/telegram/ui/Components/PipVideoOverlay;-><init>()V

    sput-object v0, Lorg/telegram/ui/Components/PipVideoOverlay;->instance:Lorg/telegram/ui/Components/PipVideoOverlay;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f400000    # 0.75f

    iput v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->minScaleFactor:F

    const v0, 0x3fb33333    # 1.4f

    iput v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->maxScaleFactor:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->scaleFactor:F

    new-instance v0, Lorg/telegram/ui/Components/VideoForwardDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/VideoForwardDrawable;-><init>(Z)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->videoForwardDrawable:Lorg/telegram/ui/Components/VideoForwardDrawable;

    new-instance v0, Lorg/telegram/ui/Components/PipVideoOverlay$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/PipVideoOverlay$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/PipVideoOverlay;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->progressRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->longClickStartPoint:[F

    new-instance v0, Lorg/telegram/ui/Components/PipVideoOverlay$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/PipVideoOverlay$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/PipVideoOverlay;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->longClickCallback:Ljava/lang/Runnable;

    new-instance v0, Lorg/telegram/ui/Components/PipVideoOverlay$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/PipVideoOverlay$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Components/PipVideoOverlay;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->dismissControlsCallback:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->controlsAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/PipVideoOverlay;)I
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/PipVideoOverlay;->getSuggestedWidth()I

    move-result p0

    return p0
.end method

.method static synthetic access$102(Lorg/telegram/ui/Components/PipVideoOverlay;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->controlsAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/PipVideoOverlay;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->pipHeight:I

    return p0
.end method

.method static synthetic access$1102(Lorg/telegram/ui/Components/PipVideoOverlay;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->pipHeight:I

    return p1
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/PipVideoOverlay;)I
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/PipVideoOverlay;->getSuggestedHeight()I

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->pipXSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    return-object p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/PipVideoOverlay;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->pipX:F

    return p0
.end method

.method static synthetic access$1402(Lorg/telegram/ui/Components/PipVideoOverlay;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->pipX:F

    return p1
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->pipYSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    return-object p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/PipVideoOverlay;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->pipY:F

    return p0
.end method

.method static synthetic access$1602(Lorg/telegram/ui/Components/PipVideoOverlay;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->pipY:F

    return p1
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Components/PipVideoOverlay;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->isScrolling:Z

    return p0
.end method

.method static synthetic access$1702(Lorg/telegram/ui/Components/PipVideoOverlay;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->isScrolling:Z

    return p1
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Components/PipVideoOverlay;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->canLongClick:Z

    return p0
.end method

.method static synthetic access$1802(Lorg/telegram/ui/Components/PipVideoOverlay;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->canLongClick:Z

    return p1
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Components/PipVideoOverlay;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/PipVideoOverlay;->cancelRewind()V

    return-void
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/PipVideoOverlay;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/PipVideoOverlay;->onDismissedInternal()V

    return-void
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Components/PipVideoOverlay;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->longClickCallback:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Components/PipVideoOverlay;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->isScrollDisallowed:Z

    return p0
.end method

.method static synthetic access$2102(Lorg/telegram/ui/Components/PipVideoOverlay;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->isScrollDisallowed:Z

    return p1
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroid/view/WindowManager$LayoutParams;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    return-object p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroid/view/WindowManager;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->windowManager:Landroid/view/WindowManager;

    return-object p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->contentView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->contentFrameLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/Components/PipVideoOverlay;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->isShowingControls:Z

    return p0
.end method

.method static synthetic access$2702(Lorg/telegram/ui/Components/PipVideoOverlay;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->isShowingControls:Z

    return p1
.end method

.method static synthetic access$2800(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->consumingChild:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$2802(Lorg/telegram/ui/Components/PipVideoOverlay;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->consumingChild:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$2900(Lorg/telegram/ui/Components/PipVideoOverlay;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->postedDismissControls:Z

    return p0
.end method

.method static synthetic access$2902(Lorg/telegram/ui/Components/PipVideoOverlay;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->postedDismissControls:Z

    return p1
.end method

.method static synthetic access$3000(Lorg/telegram/ui/Components/PipVideoOverlay;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->dismissControlsCallback:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/Components/PipVideoOverlay;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PipVideoOverlay;->toggleControls(Z)V

    return-void
.end method

.method static synthetic access$3200(Lorg/telegram/ui/Components/PipVideoOverlay;)Lorg/telegram/ui/PhotoViewer;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->photoViewer:Lorg/telegram/ui/PhotoViewer;

    return-object p0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/Components/PipVideoOverlay;)Lorg/telegram/ui/Components/PhotoViewerWebView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->photoViewerWebView:Lorg/telegram/ui/Components/PhotoViewerWebView;

    return-object p0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/Components/PipVideoOverlay;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->isDismissing:Z

    return p0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/Components/PipVideoOverlay;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->isVideoCompleted:Z

    return p0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroid/view/ScaleGestureDetector;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->scaleGestureDetector:Landroid/view/ScaleGestureDetector;

    return-object p0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/Components/PipVideoOverlay;)J
    .locals 2

    invoke-direct {p0}, Lorg/telegram/ui/Components/PipVideoOverlay;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$3800(Lorg/telegram/ui/Components/PipVideoOverlay;)J
    .locals 2

    invoke-direct {p0}, Lorg/telegram/ui/Components/PipVideoOverlay;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$3900(Lorg/telegram/ui/Components/PipVideoOverlay;)Lorg/telegram/ui/Components/VideoForwardDrawable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->videoForwardDrawable:Lorg/telegram/ui/Components/VideoForwardDrawable;

    return-object p0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/Components/PipVideoOverlay;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/PipVideoOverlay;->seekTo(J)V

    return-void
.end method

.method static synthetic access$4100(Lorg/telegram/ui/Components/PipVideoOverlay;JFZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/PipVideoOverlay;->onUpdateRewindProgressUiInternal(JFZ)V

    return-void
.end method

.method static synthetic access$4200(Lorg/telegram/ui/Components/PipVideoOverlay;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->onSideToDismiss:Z

    return p0
.end method

.method static synthetic access$4202(Lorg/telegram/ui/Components/PipVideoOverlay;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->onSideToDismiss:Z

    return p1
.end method

.method static synthetic access$4300(Lorg/telegram/ui/Components/PipVideoOverlay;)Lorg/telegram/ui/Components/PipVideoOverlay$PipConfig;
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/PipVideoOverlay;->getPipConfig()Lorg/telegram/ui/Components/PipVideoOverlay$PipConfig;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4602(Lorg/telegram/ui/Components/PipVideoOverlay;[F)[F
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->longClickStartPoint:[F

    return-object p1
.end method

.method static synthetic access$4700(Lorg/telegram/ui/Components/PipVideoOverlay;)Lorg/telegram/ui/Components/GestureDetectorFixDoubleTap;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->gestureDetector:Lorg/telegram/ui/Components/GestureDetectorFixDoubleTap;

    return-object p0
.end method

.method static synthetic access$4802(Lorg/telegram/ui/Components/PipVideoOverlay;Lorg/telegram/ui/Components/PipVideoOverlay$PipConfig;)Lorg/telegram/ui/Components/PipVideoOverlay$PipConfig;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->pipConfig:Lorg/telegram/ui/Components/PipVideoOverlay$PipConfig;

    return-object p1
.end method

.method static synthetic access$4900(Lorg/telegram/ui/Components/PipVideoOverlay;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->windowViewSkipRender:Z

    return p0
.end method

.method static synthetic access$5000(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->controlsView:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$5100(Lorg/telegram/ui/Components/PipVideoOverlay;)Lorg/telegram/ui/Components/SeekSpeedDrawable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->seekSpeedDrawable:Lorg/telegram/ui/Components/SeekSpeedDrawable;

    return-object p0
.end method

.method static synthetic access$5200(Lorg/telegram/ui/Components/PipVideoOverlay;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->isWebView:Z

    return p0
.end method

.method static synthetic access$5300(Lorg/telegram/ui/Components/PipVideoOverlay;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->videoProgress:F

    return p0
.end method

.method static synthetic access$5400(Lorg/telegram/ui/Components/PipVideoOverlay;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->bufferProgress:F

    return p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/PipVideoOverlay;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->scaleFactor:F

    return p0
.end method

.method static synthetic access$602(Lorg/telegram/ui/Components/PipVideoOverlay;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->scaleFactor:F

    return p1
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/PipVideoOverlay;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->minScaleFactor:F

    return p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/PipVideoOverlay;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->maxScaleFactor:F

    return p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/PipVideoOverlay;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->pipWidth:I

    return p0
.end method

.method static synthetic access$902(Lorg/telegram/ui/Components/PipVideoOverlay;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->pipWidth:I

    return p1
.end method

.method private cancelRewind()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->photoViewer:Lorg/telegram/ui/PhotoViewer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer;->getVideoPlayerRewinder()Lorg/telegram/messenger/video/VideoPlayerRewinder;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->photoViewer:Lorg/telegram/ui/PhotoViewer;

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer;->getVideoPlayerRewinder()Lorg/telegram/messenger/video/VideoPlayerRewinder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/video/VideoPlayerRewinder;->cancelRewind()V

    return-void
.end method

.method public static dismiss()V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/telegram/ui/Components/PipVideoOverlay;->dismiss(Z)V

    return-void
.end method

.method public static dismiss(Z)V
    .locals 2

    .line 0
    sget-object v0, Lorg/telegram/ui/Components/PipVideoOverlay;->instance:Lorg/telegram/ui/Components/PipVideoOverlay;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Components/PipVideoOverlay;->dismissInternal(ZZ)V

    return-void
.end method

.method public static dismiss(ZZ)V
    .locals 1

    .line 0
    sget-object v0, Lorg/telegram/ui/Components/PipVideoOverlay;->instance:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/PipVideoOverlay;->dismissInternal(ZZ)V

    return-void
.end method

.method public static dismissAndDestroy()V
    .locals 2

    sget-object v0, Lorg/telegram/ui/Components/PipVideoOverlay;->instance:Lorg/telegram/ui/Components/PipVideoOverlay;

    iget-object v1, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->parentSheet:Lorg/telegram/ui/Components/EmbedBottomSheet;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EmbedBottomSheet;->destroy()V

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->photoViewer:Lorg/telegram/ui/PhotoViewer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer;->destroyPhotoViewer()V

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->tryResumePausedAudio()V

    :cond_1
    :goto_0
    invoke-static {}, Lorg/telegram/ui/Components/PipVideoOverlay;->dismiss()V

    return-void
.end method

.method private dismissInternal(ZZ)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-boolean v2, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->isDismissing:Z

    if-eqz v2, :cond_0

    return-void

    :cond_0
    iput-boolean v1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->isDismissing:Z

    iget-object v2, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->controlsAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    iget-boolean v2, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->postedDismissControls:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->dismissControlsCallback:Ljava/lang/Runnable;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iput-boolean v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->postedDismissControls:Z

    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->pipXSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    iget-object v2, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->pipYSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    :cond_3
    if-nez p1, :cond_5

    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->contentView:Landroid/view/ViewGroup;

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v2, 0xfa

    invoke-virtual {p1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p2, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->contentView:Landroid/view/ViewGroup;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v1, [F

    const/4 v4, 0x0

    aput v4, v3, v0

    invoke-static {p2, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    iget-object v2, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->contentView:Landroid/view/ViewGroup;

    sget-object v3, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const v4, 0x3dcccccd    # 0.1f

    new-array v5, v1, [F

    aput v4, v5, v0

    invoke-static {v2, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->contentView:Landroid/view/ViewGroup;

    sget-object v5, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v6, v1, [F

    aput v4, v6, v0

    invoke-static {v3, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/Animator;

    aput-object p2, v4, v0

    aput-object v2, v4, v1

    const/4 p2, 0x2

    aput-object v3, v4, p2

    invoke-virtual {p1, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance p2, Lorg/telegram/ui/Components/PipVideoOverlay$2;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/PipVideoOverlay$2;-><init>(Lorg/telegram/ui/Components/PipVideoOverlay;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_1

    :cond_5
    :goto_0
    if-eqz p2, :cond_6

    invoke-direct {p0}, Lorg/telegram/ui/Components/PipVideoOverlay;->onDismissedInternal()V

    goto :goto_1

    :cond_6
    new-instance p1, Lorg/telegram/ui/Components/PipVideoOverlay$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/PipVideoOverlay$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/PipVideoOverlay;)V

    const-wide/16 v0, 0x64

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :goto_1
    return-void
.end method

.method private getCurrentPosition()J
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->photoViewerWebView:Lorg/telegram/ui/Components/PhotoViewerWebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoViewerWebView;->getCurrentPosition()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->photoViewer:Lorg/telegram/ui/PhotoViewer;

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer;->getVideoPlayer()Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_1
    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method private getDuration()J
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->photoViewerWebView:Lorg/telegram/ui/Components/PhotoViewerWebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoViewerWebView;->getVideoDuration()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->photoViewer:Lorg/telegram/ui/PhotoViewer;

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer;->getVideoPlayer()Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_1
    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getInnerView()Landroid/view/View;
    .locals 1

    sget-object v0, Lorg/telegram/ui/Components/PipVideoOverlay;->instance:Lorg/telegram/ui/Components/PipVideoOverlay;

    iget-object v0, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->innerView:Landroid/view/View;

    return-object v0
.end method

.method private getPipConfig()Lorg/telegram/ui/Components/PipVideoOverlay$PipConfig;
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->pipConfig:Lorg/telegram/ui/Components/PipVideoOverlay$PipConfig;

    if-nez v0, :cond_0

    new-instance v0, Lorg/telegram/ui/Components/PipVideoOverlay$PipConfig;

    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Lorg/telegram/ui/Components/PipVideoOverlay$PipConfig;-><init>(IILorg/telegram/ui/Components/PipVideoOverlay$1;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->pipConfig:Lorg/telegram/ui/Components/PipVideoOverlay$PipConfig;

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->pipConfig:Lorg/telegram/ui/Components/PipVideoOverlay$PipConfig;

    return-object v0
.end method

.method public static getPipRect(ZF)Lorg/telegram/ui/Components/Rect;
    .locals 6

    new-instance v0, Lorg/telegram/ui/Components/Rect;

    invoke-direct {v0}, Lorg/telegram/ui/Components/Rect;-><init>()V

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, p1

    sget-object p1, Lorg/telegram/ui/Components/PipVideoOverlay;->instance:Lorg/telegram/ui/Components/PipVideoOverlay;

    iget-boolean v2, p1, Lorg/telegram/ui/Components/PipVideoOverlay;->isVisible:Z

    if-eqz v2, :cond_1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    iget p0, p1, Lorg/telegram/ui/Components/PipVideoOverlay;->pipX:F

    iput p0, v0, Lorg/telegram/ui/Components/Rect;->x:F

    iget p0, p1, Lorg/telegram/ui/Components/PipVideoOverlay;->pipY:F

    sget p1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    int-to-float p1, p1

    add-float/2addr p0, p1

    iput p0, v0, Lorg/telegram/ui/Components/Rect;->y:F

    sget-object p0, Lorg/telegram/ui/Components/PipVideoOverlay;->instance:Lorg/telegram/ui/Components/PipVideoOverlay;

    iget p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->pipWidth:I

    int-to-float p1, p1

    iput p1, v0, Lorg/telegram/ui/Components/Rect;->width:F

    iget p0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->pipHeight:I

    int-to-float p0, p0

    iput p0, v0, Lorg/telegram/ui/Components/Rect;->height:F

    return-object v0

    :cond_1
    :goto_0
    invoke-direct {p1}, Lorg/telegram/ui/Components/PipVideoOverlay;->getPipConfig()Lorg/telegram/ui/Components/PipVideoOverlay$PipConfig;

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/ui/Components/PipVideoOverlay$PipConfig;->access$300(Lorg/telegram/ui/Components/PipVideoOverlay$PipConfig;)F

    move-result p0

    sget-object p1, Lorg/telegram/ui/Components/PipVideoOverlay;->instance:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-direct {p1}, Lorg/telegram/ui/Components/PipVideoOverlay;->getPipConfig()Lorg/telegram/ui/Components/PipVideoOverlay$PipConfig;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/Components/PipVideoOverlay$PipConfig;->access$400(Lorg/telegram/ui/Components/PipVideoOverlay$PipConfig;)F

    move-result p1

    sget-object v2, Lorg/telegram/ui/Components/PipVideoOverlay;->instance:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-direct {v2}, Lorg/telegram/ui/Components/PipVideoOverlay;->getPipConfig()Lorg/telegram/ui/Components/PipVideoOverlay$PipConfig;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/ui/Components/PipVideoOverlay$PipConfig;->access$500(Lorg/telegram/ui/Components/PipVideoOverlay$PipConfig;)F

    move-result v2

    invoke-static {v1}, Lorg/telegram/ui/Components/PipVideoOverlay;->getSuggestedWidth(F)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v2

    iput v3, v0, Lorg/telegram/ui/Components/Rect;->width:F

    invoke-static {v1}, Lorg/telegram/ui/Components/PipVideoOverlay;->getSuggestedHeight(F)I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v2

    iput v1, v0, Lorg/telegram/ui/Components/Rect;->height:F

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x41800000    # 16.0f

    cmpl-float v3, p0, v1

    if-eqz v3, :cond_3

    iget v3, v0, Lorg/telegram/ui/Components/Rect;->width:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float v5, v3, v4

    add-float/2addr p0, v5

    sget-object v5, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    div-float v4, v5, v4

    cmpl-float p0, p0, v4

    if-ltz p0, :cond_2

    sub-float/2addr v5, v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr v5, p0

    goto :goto_1

    :cond_2
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p0

    int-to-float v5, p0

    :goto_1
    iput v5, v0, Lorg/telegram/ui/Components/Rect;->x:F

    goto :goto_2

    :cond_3
    sget-object p0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->x:I

    int-to-float p0, p0

    iget v3, v0, Lorg/telegram/ui/Components/Rect;->width:F

    sub-float/2addr p0, v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr p0, v3

    iput p0, v0, Lorg/telegram/ui/Components/Rect;->x:F

    :goto_2
    cmpl-float p0, p1, v1

    if-eqz p0, :cond_4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p0

    int-to-float p0, p0

    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, v0, Lorg/telegram/ui/Components/Rect;->height:F

    sub-float/2addr v1, v2

    invoke-static {p1, p0, v1}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result p0

    sget p1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    int-to-float p1, p1

    add-float/2addr p0, p1

    :goto_3
    iput p0, v0, Lorg/telegram/ui/Components/Rect;->y:F

    goto :goto_4

    :cond_4
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p0

    sget p1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr p0, p1

    int-to-float p0, p0

    goto :goto_3

    :goto_4
    return-object v0
.end method

.method public static getPipSource()Lorg/telegram/messenger/pip/PipSource;
    .locals 1

    sget-object v0, Lorg/telegram/ui/Components/PipVideoOverlay;->instance:Lorg/telegram/ui/Components/PipVideoOverlay;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->pipSource:Lorg/telegram/messenger/pip/PipSource;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static getPipTextureView()Landroid/view/TextureView;
    .locals 1

    sget-object v0, Lorg/telegram/ui/Components/PipVideoOverlay;->instance:Lorg/telegram/ui/Components/PipVideoOverlay;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->pipTextureView:Landroid/view/TextureView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private getRatio()F
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->aspectRatio:Ljava/lang/Float;

    if-nez v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->mVideoHeight:I

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->mVideoWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->aspectRatio:Ljava/lang/Float;

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/high16 v1, 0x42000000    # 32.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-direct {p0}, Lorg/telegram/ui/Components/PipVideoOverlay;->getSuggestedWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->maxScaleFactor:F

    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->videoForwardDrawable:Lorg/telegram/ui/Components/VideoForwardDrawable;

    iget-object v1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->aspectRatio:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    const v1, 0x3f19999a    # 0.6f

    goto :goto_0

    :cond_0
    const v1, 0x3ee66666    # 0.45f

    :goto_0
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoForwardDrawable;->setPlayScaleFactor(F)V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->aspectRatio:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method private getSuggestedHeight()I
    .locals 1

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/PipVideoOverlay;->getRatio()F

    move-result v0

    invoke-static {v0}, Lorg/telegram/ui/Components/PipVideoOverlay;->getSuggestedHeight(F)I

    move-result v0

    return v0
.end method

.method private static getSuggestedHeight(F)I
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/PipVideoOverlay;->getSuggestedWidth(F)I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, p0

    float-to-int p0, v0

    return p0
.end method

.method private getSuggestedWidth()I
    .locals 1

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/PipVideoOverlay;->getRatio()F

    move-result v0

    invoke-static {v0}, Lorg/telegram/ui/Components/PipVideoOverlay;->getSuggestedWidth(F)I

    move-result v0

    return v0
.end method

.method private static getSuggestedWidth(F)I
    .locals 1

    .line 0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p0, p0, v0

    if-ltz p0, :cond_0

    sget-object p0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, p0, Landroid/graphics/Point;->x:I

    iget p0, p0, Landroid/graphics/Point;->y:I

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    int-to-float p0, p0

    const v0, 0x3eb33333    # 0.35f

    :goto_0
    mul-float p0, p0, v0

    float-to-int p0, p0

    return p0

    :cond_0
    sget-object p0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, p0, Landroid/graphics/Point;->x:I

    iget p0, p0, Landroid/graphics/Point;->y:I

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    int-to-float p0, p0

    const v0, 0x3f19999a    # 0.6f

    goto :goto_0
.end method

.method public static isVisible()Z
    .locals 1

    sget-object v0, Lorg/telegram/ui/Components/PipVideoOverlay;->instance:Lorg/telegram/ui/Components/PipVideoOverlay;

    iget-boolean v0, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->isVisible:Z

    return v0
.end method

.method private synthetic lambda$new$4()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->photoViewer:Lorg/telegram/ui/PhotoViewer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->photoViewerWebView:Lorg/telegram/ui/Components/PhotoViewerWebView;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/PhotoViewerWebView;->getCurrentPosition()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->photoViewerWebView:Lorg/telegram/ui/Components/PhotoViewerWebView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/PhotoViewerWebView;->getVideoDuration()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->videoProgress:F

    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->photoViewerWebView:Lorg/telegram/ui/Components/PhotoViewerWebView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoViewerWebView;->getBufferedPosition()F

    move-result v0

    :goto_0
    iput v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->bufferProgress:F

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer;->getVideoPlayer()Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/Components/PipVideoOverlay;->getDuration()J

    move-result-wide v1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->getCurrentPosition()J

    move-result-wide v3

    long-to-float v3, v3

    long-to-float v1, v1

    div-float/2addr v3, v1

    iput v3, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->videoProgress:F

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->getBufferedPosition()J

    move-result-wide v2

    long-to-float v0, v2

    div-float/2addr v0, v1

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->videoProgressView:Lorg/telegram/ui/Components/PipVideoOverlay$VideoProgressView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->progressRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private synthetic lambda$new$5()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->photoViewer:Lorg/telegram/ui/PhotoViewer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer;->getVideoPlayerRewinder()Lorg/telegram/messenger/video/VideoPlayerRewinder;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/messenger/video/VideoPlayerRewinder;->rewinding:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->dismissControlsCallback:Ljava/lang/Runnable;

    const-wide/16 v1, 0x5dc

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->isShowingControls:Z

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/PipVideoOverlay;->toggleControls(Z)V

    iput-boolean v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->postedDismissControls:Z

    return-void
.end method

.method private synthetic lambda$showInternal$10(ZLandroid/view/View;)V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    const/4 v2, 0x1

    if-lt v0, v1, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v3, 0x64

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    if-nez p1, :cond_3

    if-eqz v2, :cond_2

    sget-boolean p1, Lorg/telegram/ui/LaunchActivity;->isResumed:Z

    if-nez p1, :cond_3

    :cond_2
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lorg/telegram/ui/Components/EmbedBottomSheet$$ExternalSyntheticLambda6;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/EmbedBottomSheet$$ExternalSyntheticLambda6;-><init>(Landroid/view/View;)V

    sput-object p1, Lorg/telegram/ui/LaunchActivity;->onResumeStaticCallback:Ljava/lang/Runnable;

    sget-object p1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance p2, Landroid/content/Intent;

    const-class v0, Lorg/telegram/ui/LaunchActivity;

    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x10000000

    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->parentSheet:Lorg/telegram/ui/Components/EmbedBottomSheet;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EmbedBottomSheet;->exitFromPip()V

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->photoViewer:Lorg/telegram/ui/PhotoViewer;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lorg/telegram/ui/PhotoViewer;->exitFromPip()V

    :cond_5
    :goto_1
    return-void
.end method

.method private synthetic lambda$showInternal$11(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->photoViewer:Lorg/telegram/ui/PhotoViewer;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->photoViewerWebView:Lorg/telegram/ui/Components/PhotoViewerWebView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoViewerWebView;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->photoViewerWebView:Lorg/telegram/ui/Components/PhotoViewerWebView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/PhotoViewerWebView;->pauseVideo()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->photoViewerWebView:Lorg/telegram/ui/Components/PhotoViewerWebView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/PhotoViewerWebView;->playVideo()V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lorg/telegram/ui/PhotoViewer;->getVideoPlayer()Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object p1

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {p1}, Lorg/telegram/ui/Components/VideoPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lorg/telegram/ui/Components/VideoPlayer;->pause()V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lorg/telegram/ui/Components/VideoPlayer;->play()V

    :goto_0
    invoke-static {}, Lorg/telegram/ui/Components/PipVideoOverlay;->updatePlayButton()V

    return-void
.end method

.method private synthetic lambda$showInternal$7(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/PipVideoOverlay;->getPipConfig()Lorg/telegram/ui/Components/PipVideoOverlay$PipConfig;

    move-result-object p1

    invoke-static {p1, p3}, Lorg/telegram/ui/Components/PipVideoOverlay$PipConfig;->access$4400(Lorg/telegram/ui/Components/PipVideoOverlay$PipConfig;F)V

    return-void
.end method

.method private synthetic lambda$showInternal$8(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/PipVideoOverlay;->getPipConfig()Lorg/telegram/ui/Components/PipVideoOverlay$PipConfig;

    move-result-object p1

    invoke-static {p1, p3}, Lorg/telegram/ui/Components/PipVideoOverlay$PipConfig;->access$4500(Lorg/telegram/ui/Components/PipVideoOverlay$PipConfig;F)V

    return-void
.end method

.method private static synthetic lambda$showInternal$9(Landroid/view/View;)V
    .locals 0

    invoke-static {}, Lorg/telegram/ui/Components/PipVideoOverlay;->dismissAndDestroy()V

    return-void
.end method

.method private static synthetic lambda$static$0(Lorg/telegram/ui/Components/PipVideoOverlay;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->pipX:F

    return p0
.end method

.method private static synthetic lambda$static$1(Lorg/telegram/ui/Components/PipVideoOverlay;F)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->pipX:F

    float-to-int p1, p1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    :try_start_0
    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->contentView:Landroid/view/ViewGroup;

    invoke-static {p1, v1, v0}, Lorg/telegram/messenger/AndroidUtilities;->updateViewLayout(Landroid/view/WindowManager;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object p0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->pipXSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    :goto_0
    return-void
.end method

.method private static synthetic lambda$static$2(Lorg/telegram/ui/Components/PipVideoOverlay;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->pipY:F

    return p0
.end method

.method private static synthetic lambda$static$3(Lorg/telegram/ui/Components/PipVideoOverlay;F)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->pipY:F

    float-to-int p1, p1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    :try_start_0
    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->contentView:Landroid/view/ViewGroup;

    invoke-static {p1, v1, v0}, Lorg/telegram/messenger/AndroidUtilities;->updateViewLayout(Landroid/view/WindowManager;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object p0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->pipYSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$toggleControls$6(Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->controlsView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private onDismissedInternal()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->contentView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->contentView:Landroid/view/ViewGroup;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->photoViewerWebView:Lorg/telegram/ui/Components/PhotoViewerWebView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoViewerWebView;->showControls()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->videoProgressView:Lorg/telegram/ui/Components/PipVideoOverlay$VideoProgressView;

    iput-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->innerView:Landroid/view/View;

    iput-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->photoViewer:Lorg/telegram/ui/PhotoViewer;

    iget-object v1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->pipSource:Lorg/telegram/messenger/pip/PipSource;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/telegram/messenger/pip/PipSource;->destroy()V

    iput-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->pipSource:Lorg/telegram/messenger/pip/PipSource;

    :cond_2
    iput-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->photoViewerWebView:Lorg/telegram/ui/Components/PhotoViewerWebView;

    iput-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->parentSheet:Lorg/telegram/ui/Components/EmbedBottomSheet;

    iput-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->consumingChild:Landroid/view/View;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->isScrolling:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->isVisible:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->isDismissing:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->canLongClick:Z

    invoke-direct {p0}, Lorg/telegram/ui/Components/PipVideoOverlay;->cancelRewind()V

    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->longClickCallback:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static onRewindCanceled()V
    .locals 1

    sget-object v0, Lorg/telegram/ui/Components/PipVideoOverlay;->instance:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-direct {v0}, Lorg/telegram/ui/Components/PipVideoOverlay;->onRewindCanceledInternal()V

    return-void
.end method

.method private onRewindCanceledInternal()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->videoForwardDrawable:Lorg/telegram/ui/Components/VideoForwardDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoForwardDrawable;->setShowing(Z)V

    return-void
.end method

.method public static onRewindStart(Z)V
    .locals 1

    sget-object v0, Lorg/telegram/ui/Components/PipVideoOverlay;->instance:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/PipVideoOverlay;->onRewindStartInternal(Z)V

    return-void
.end method

.method private onRewindStartInternal(Z)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->videoForwardDrawable:Lorg/telegram/ui/Components/VideoForwardDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoForwardDrawable;->setOneShootAnimation(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->videoForwardDrawable:Lorg/telegram/ui/Components/VideoForwardDrawable;

    const/4 v1, 0x1

    xor-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/VideoForwardDrawable;->setLeftSide(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->videoForwardDrawable:Lorg/telegram/ui/Components/VideoForwardDrawable;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/VideoForwardDrawable;->setShowing(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->videoProgressView:Lorg/telegram/ui/Components/PipVideoOverlay$VideoProgressView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->controlsView:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public static onUpdateRewindProgressUi(JFZ)V
    .locals 1

    sget-object v0, Lorg/telegram/ui/Components/PipVideoOverlay;->instance:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/telegram/ui/Components/PipVideoOverlay;->onUpdateRewindProgressUiInternal(JFZ)V

    return-void
.end method

.method private onUpdateRewindProgressUiInternal(JFZ)V
    .locals 2

    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->videoForwardDrawable:Lorg/telegram/ui/Components/VideoForwardDrawable;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/VideoForwardDrawable;->setTime(J)V

    if-eqz p4, :cond_1

    iput p3, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->videoProgress:F

    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->videoProgressView:Lorg/telegram/ui/Components/PipVideoOverlay$VideoProgressView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->controlsView:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public static onVideoCompleted()V
    .locals 1

    sget-object v0, Lorg/telegram/ui/Components/PipVideoOverlay;->instance:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-direct {v0}, Lorg/telegram/ui/Components/PipVideoOverlay;->onVideoCompletedInternal()V

    return-void
.end method

.method private onVideoCompletedInternal()V
    .locals 3

    iget-boolean v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->isVisible:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->videoProgressView:Lorg/telegram/ui/Components/PipVideoOverlay$VideoProgressView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->isVideoCompleted:Z

    const/4 v2, 0x0

    iput v2, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->videoProgress:F

    iput v2, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->bufferProgress:F

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    invoke-direct {p0}, Lorg/telegram/ui/Components/PipVideoOverlay;->updatePlayButtonInternal()V

    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->progressRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-boolean v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->isShowingControls:Z

    if-nez v0, :cond_1

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/PipVideoOverlay;->toggleControls(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->dismissControlsCallback:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private seekTo(J)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->photoViewerWebView:Lorg/telegram/ui/Components/PhotoViewerWebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/PhotoViewerWebView;->seekTo(J)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->photoViewer:Lorg/telegram/ui/PhotoViewer;

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer;->getVideoPlayer()Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(J)V

    :goto_0
    return-void
.end method

.method public static setBufferedProgress(F)V
    .locals 1

    sget-object v0, Lorg/telegram/ui/Components/PipVideoOverlay;->instance:Lorg/telegram/ui/Components/PipVideoOverlay;

    iput p0, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->bufferProgress:F

    iget-object p0, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->videoProgressView:Lorg/telegram/ui/Components/PipVideoOverlay$VideoProgressView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public static setParentSheet(Lorg/telegram/ui/Components/EmbedBottomSheet;)V
    .locals 1

    sget-object v0, Lorg/telegram/ui/Components/PipVideoOverlay;->instance:Lorg/telegram/ui/Components/PipVideoOverlay;

    iput-object p0, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->parentSheet:Lorg/telegram/ui/Components/EmbedBottomSheet;

    return-void
.end method

.method public static setPhotoViewer(Lorg/telegram/ui/PhotoViewer;)V
    .locals 5

    sget-object v0, Lorg/telegram/ui/Components/PipVideoOverlay;->instance:Lorg/telegram/ui/Components/PipVideoOverlay;

    iput-object p0, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->photoViewer:Lorg/telegram/ui/PhotoViewer;

    invoke-virtual {p0}, Lorg/telegram/ui/PhotoViewer;->getVideoPlayer()Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    sget-object v1, Lorg/telegram/ui/Components/PipVideoOverlay;->instance:Lorg/telegram/ui/Components/PipVideoOverlay;

    iget-object v1, v1, Lorg/telegram/ui/Components/PipVideoOverlay;->pipSource:Lorg/telegram/messenger/pip/PipSource;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/telegram/messenger/pip/PipSource;->destroy()V

    sget-object v1, Lorg/telegram/ui/Components/PipVideoOverlay;->instance:Lorg/telegram/ui/Components/PipVideoOverlay;

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/telegram/ui/Components/PipVideoOverlay;->pipSource:Lorg/telegram/messenger/pip/PipSource;

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/PhotoViewer;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/pip/utils/PipUtils;->checkPermissions(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    sget-object v1, Lorg/telegram/ui/Components/PipVideoOverlay;->instance:Lorg/telegram/ui/Components/PipVideoOverlay;

    new-instance v3, Lorg/telegram/messenger/pip/PipSource$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/PhotoViewer;->getParentActivity()Landroid/app/Activity;

    move-result-object p0

    sget-object v4, Lorg/telegram/ui/Components/PipVideoOverlay;->instance:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-direct {v3, p0, v4}, Lorg/telegram/messenger/pip/PipSource$Builder;-><init>(Landroid/app/Activity;Lorg/telegram/messenger/pip/source/IPipSourceDelegate;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "photo-viewer-pip-"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lorg/telegram/ui/Components/VideoPlayer;->playerId:I

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Lorg/telegram/messenger/pip/PipSource$Builder;->setTagPrefix(Ljava/lang/String;)Lorg/telegram/messenger/pip/PipSource$Builder;

    move-result-object p0

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/pip/PipSource$Builder;->setPriority(I)Lorg/telegram/messenger/pip/PipSource$Builder;

    move-result-object p0

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/telegram/messenger/pip/PipSource$Builder;->setCornerRadius(I)Lorg/telegram/messenger/pip/PipSource$Builder;

    move-result-object p0

    sget-object v3, Lorg/telegram/ui/Components/PipVideoOverlay;->instance:Lorg/telegram/ui/Components/PipVideoOverlay;

    iget-object v3, v3, Lorg/telegram/ui/Components/PipVideoOverlay;->contentView:Landroid/view/ViewGroup;

    invoke-virtual {p0, v3}, Lorg/telegram/messenger/pip/PipSource$Builder;->setContentView(Landroid/view/View;)Lorg/telegram/messenger/pip/PipSource$Builder;

    move-result-object p0

    sget-object v3, Lorg/telegram/ui/Components/PipVideoOverlay;->instance:Lorg/telegram/ui/Components/PipVideoOverlay;

    iget-object v3, v3, Lorg/telegram/ui/Components/PipVideoOverlay;->placeholderView:Landroid/view/View;

    invoke-virtual {p0, v3}, Lorg/telegram/messenger/pip/PipSource$Builder;->setPlaceholderView(Landroid/view/View;)Lorg/telegram/messenger/pip/PipSource$Builder;

    move-result-object p0

    sget-object v3, Lorg/telegram/ui/Components/PipVideoOverlay;->instance:Lorg/telegram/ui/Components/PipVideoOverlay;

    iget v4, v3, Lorg/telegram/ui/Components/PipVideoOverlay;->mVideoWidth:I

    iget v3, v3, Lorg/telegram/ui/Components/PipVideoOverlay;->mVideoHeight:I

    invoke-virtual {p0, v4, v3}, Lorg/telegram/messenger/pip/PipSource$Builder;->setContentRatio(II)Lorg/telegram/messenger/pip/PipSource$Builder;

    move-result-object p0

    iget-object v0, v0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/pip/PipSource$Builder;->setPlayer(Lcom/google/android/exoplayer2/Player;)Lorg/telegram/messenger/pip/PipSource$Builder;

    move-result-object p0

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/pip/PipSource$Builder;->setNeedMediaSession(Z)Lorg/telegram/messenger/pip/PipSource$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/messenger/pip/PipSource$Builder;->build()Lorg/telegram/messenger/pip/PipSource;

    move-result-object p0

    iput-object p0, v1, Lorg/telegram/ui/Components/PipVideoOverlay;->pipSource:Lorg/telegram/messenger/pip/PipSource;

    :cond_1
    sget-object p0, Lorg/telegram/ui/Components/PipVideoOverlay;->instance:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-direct {p0}, Lorg/telegram/ui/Components/PipVideoOverlay;->updatePlayButtonInternal()V

    return-void
.end method

.method public static show(ZLandroid/app/Activity;Landroid/view/View;II)Z
    .locals 6

    .line 0
    const/4 v5, 0x0

    move v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Components/PipVideoOverlay;->show(ZLandroid/app/Activity;Landroid/view/View;IIZ)Z

    move-result p0

    return p0
.end method

.method public static show(ZLandroid/app/Activity;Landroid/view/View;IIZ)Z
    .locals 7

    .line 0
    const/4 v2, 0x0

    move v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/PipVideoOverlay;->show(ZLandroid/app/Activity;Lorg/telegram/ui/Components/PhotoViewerWebView;Landroid/view/View;IIZ)Z

    move-result p0

    return p0
.end method

.method public static show(ZLandroid/app/Activity;Lorg/telegram/ui/Components/PhotoViewerWebView;Landroid/view/View;IIZ)Z
    .locals 8

    .line 0
    sget-object v0, Lorg/telegram/ui/Components/PipVideoOverlay;->instance:Lorg/telegram/ui/Components/PipVideoOverlay;

    move v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p2

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Components/PipVideoOverlay;->showInternal(ZLandroid/app/Activity;Landroid/view/View;Lorg/telegram/ui/Components/PhotoViewerWebView;IIZ)Z

    move-result p0

    return p0
.end method

.method private showInternal(ZLandroid/app/Activity;Landroid/view/View;Lorg/telegram/ui/Components/PhotoViewerWebView;IIZ)Z
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_1

    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v4}, Lorg/telegram/messenger/pip/utils/PipUtils;->checkPermissions(Landroid/content/Context;)I

    move-result v4

    if-ne v4, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x1

    :goto_1
    iget-boolean v5, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->isVisible:Z

    if-eqz v5, :cond_2

    return v3

    :cond_2
    iput-boolean v2, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->isVisible:Z

    move/from16 v5, p5

    iput v5, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->mVideoWidth:I

    move/from16 v5, p6

    iput v5, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->mVideoHeight:I

    const/4 v5, 0x0

    iput-object v5, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->aspectRatio:Ljava/lang/Float;

    if-eqz v1, :cond_3

    invoke-virtual/range {p4 .. p4}, Lorg/telegram/ui/Components/PhotoViewerWebView;->isControllable()Z

    move-result v6

    if-eqz v6, :cond_3

    iput-object v1, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->photoViewerWebView:Lorg/telegram/ui/Components/PhotoViewerWebView;

    invoke-virtual/range {p4 .. p4}, Lorg/telegram/ui/Components/PhotoViewerWebView;->hideControls()V

    goto :goto_2

    :cond_3
    iput-object v5, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->photoViewerWebView:Lorg/telegram/ui/Components/PhotoViewerWebView;

    :goto_2
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/PipVideoOverlay;->getPipConfig()Lorg/telegram/ui/Components/PipVideoOverlay$PipConfig;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/Components/PipVideoOverlay$PipConfig;->access$300(Lorg/telegram/ui/Components/PipVideoOverlay$PipConfig;)F

    move-result v1

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/PipVideoOverlay;->getPipConfig()Lorg/telegram/ui/Components/PipVideoOverlay$PipConfig;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/ui/Components/PipVideoOverlay$PipConfig;->access$400(Lorg/telegram/ui/Components/PipVideoOverlay$PipConfig;)F

    move-result v5

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/PipVideoOverlay;->getPipConfig()Lorg/telegram/ui/Components/PipVideoOverlay$PipConfig;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/ui/Components/PipVideoOverlay$PipConfig;->access$500(Lorg/telegram/ui/Components/PipVideoOverlay$PipConfig;)F

    move-result v6

    iput v6, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->scaleFactor:F

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/PipVideoOverlay;->getSuggestedWidth()I

    move-result v6

    int-to-float v6, v6

    iget v7, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->scaleFactor:F

    mul-float v6, v6, v7

    float-to-int v6, v6

    iput v6, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->pipWidth:I

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/PipVideoOverlay;->getSuggestedHeight()I

    move-result v6

    int-to-float v6, v6

    iget v7, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->scaleFactor:F

    mul-float v6, v6, v7

    float-to-int v6, v6

    iput v6, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->pipHeight:I

    iput-boolean v3, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->isShowingControls:Z

    new-instance v6, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v7, Lorg/telegram/ui/Components/PipVideoOverlay;->PIP_X_PROPERTY:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    invoke-direct {v6, v0, v7}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    new-instance v7, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v7}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    const/high16 v8, 0x3f400000    # 0.75f

    invoke-virtual {v7, v8}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v7

    const v9, 0x44228000    # 650.0f

    invoke-virtual {v7, v9}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v6

    new-instance v7, Lorg/telegram/ui/Components/PipVideoOverlay$$ExternalSyntheticLambda9;

    invoke-direct {v7, v0}, Lorg/telegram/ui/Components/PipVideoOverlay$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Components/PipVideoOverlay;)V

    invoke-virtual {v6, v7}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v6

    check-cast v6, Landroidx/dynamicanimation/animation/SpringAnimation;

    iput-object v6, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->pipXSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v6, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v7, Lorg/telegram/ui/Components/PipVideoOverlay;->PIP_Y_PROPERTY:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    invoke-direct {v6, v0, v7}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    new-instance v7, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v7}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    invoke-virtual {v7, v8}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v6

    new-instance v7, Lorg/telegram/ui/Components/PipVideoOverlay$$ExternalSyntheticLambda10;

    invoke-direct {v7, v0}, Lorg/telegram/ui/Components/PipVideoOverlay$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Components/PipVideoOverlay;)V

    invoke-virtual {v6, v7}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v6

    check-cast v6, Landroidx/dynamicanimation/animation/SpringAnimation;

    iput-object v6, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->pipYSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v4, :cond_4

    move-object/from16 v6, p2

    goto :goto_3

    :cond_4
    sget-object v6, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    :goto_3
    invoke-static {v6}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v7

    new-instance v8, Landroid/view/ScaleGestureDetector;

    new-instance v9, Lorg/telegram/ui/Components/PipVideoOverlay$3;

    invoke-direct {v9, v0}, Lorg/telegram/ui/Components/PipVideoOverlay$3;-><init>(Lorg/telegram/ui/Components/PipVideoOverlay;)V

    invoke-direct {v8, v6, v9}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v8, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->scaleGestureDetector:Landroid/view/ScaleGestureDetector;

    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v8, v3}, Landroid/view/ScaleGestureDetector;->setQuickScaleEnabled(Z)V

    const/16 v8, 0x17

    if-lt v9, v8, :cond_5

    iget-object v8, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->scaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-static {v8, v3}, Lorg/telegram/ui/Components/PipVideoOverlay$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/ScaleGestureDetector;Z)V

    :cond_5
    new-instance v8, Lorg/telegram/ui/Components/GestureDetectorFixDoubleTap;

    new-instance v10, Lorg/telegram/ui/Components/PipVideoOverlay$4;

    invoke-direct {v10, v0, v7}, Lorg/telegram/ui/Components/PipVideoOverlay$4;-><init>(Lorg/telegram/ui/Components/PipVideoOverlay;I)V

    invoke-direct {v8, v6, v10}, Lorg/telegram/ui/Components/GestureDetectorFixDoubleTap;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/GestureDetectorFixDoubleTap$OnGestureListener;)V

    iput-object v8, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->gestureDetector:Lorg/telegram/ui/Components/GestureDetectorFixDoubleTap;

    new-instance v7, Lorg/telegram/ui/Components/PipVideoOverlay$5;

    invoke-direct {v7, v0, v6}, Lorg/telegram/ui/Components/PipVideoOverlay$5;-><init>(Lorg/telegram/ui/Components/PipVideoOverlay;Landroid/content/Context;)V

    iput-object v7, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->contentFrameLayout:Landroid/widget/FrameLayout;

    new-instance v7, Lorg/telegram/ui/Components/PipVideoOverlay$6;

    invoke-direct {v7, v0, v6}, Lorg/telegram/ui/Components/PipVideoOverlay$6;-><init>(Lorg/telegram/ui/Components/PipVideoOverlay;Landroid/content/Context;)V

    iput-object v7, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->contentView:Landroid/view/ViewGroup;

    iget-object v8, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->contentFrameLayout:Landroid/widget/FrameLayout;

    const/4 v10, -0x1

    const/high16 v11, -0x40800000    # -1.0f

    invoke-static {v10, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v7, v8, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v7, 0x15

    if-lt v9, v7, :cond_6

    iget-object v7, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->contentFrameLayout:Landroid/widget/FrameLayout;

    new-instance v8, Lorg/telegram/ui/Components/PipVideoOverlay$7;

    invoke-direct {v8, v0}, Lorg/telegram/ui/Components/PipVideoOverlay$7;-><init>(Lorg/telegram/ui/Components/PipVideoOverlay;)V

    invoke-static {v7, v8}, Lorg/telegram/ui/AvatarPreviewer$AvatarView$$ExternalSyntheticApiModelOutline0;->m(Landroid/widget/FrameLayout;Landroid/view/ViewOutlineProvider;)V

    iget-object v7, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->contentFrameLayout:Landroid/widget/FrameLayout;

    invoke-static {v7, v2}, Lorg/telegram/ui/AvatarPreviewer$Layout$$ExternalSyntheticApiModelOutline1;->m(Landroid/widget/FrameLayout;Z)V

    :cond_6
    iget-object v7, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->contentFrameLayout:Landroid/widget/FrameLayout;

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_actionBar:I

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundColor(I)V

    move-object/from16 v7, p3

    iput-object v7, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->innerView:Landroid/view/View;

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-eqz v7, :cond_7

    iget-object v7, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->innerView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    iget-object v8, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->innerView:Landroid/view/View;

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_7
    iget-object v7, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->contentFrameLayout:Landroid/widget/FrameLayout;

    iget-object v8, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->innerView:Landroid/view/View;

    invoke-static {v10, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v7, Landroid/view/View;

    invoke-direct {v7, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v7, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->placeholderView:Landroid/view/View;

    iget-object v8, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->contentFrameLayout:Landroid/widget/FrameLayout;

    invoke-static {v10, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v8, v7, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v7, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->videoForwardDrawable:Lorg/telegram/ui/Components/VideoForwardDrawable;

    new-instance v8, Lorg/telegram/ui/Components/PipVideoOverlay$8;

    invoke-direct {v8, v0}, Lorg/telegram/ui/Components/PipVideoOverlay$8;-><init>(Lorg/telegram/ui/Components/PipVideoOverlay;)V

    invoke-virtual {v7, v8}, Lorg/telegram/ui/Components/VideoForwardDrawable;->setDelegate(Lorg/telegram/ui/Components/VideoForwardDrawable$VideoForwardDrawableDelegate;)V

    new-instance v7, Lorg/telegram/ui/Components/PipVideoOverlay$9;

    invoke-direct {v7, v0, v6}, Lorg/telegram/ui/Components/PipVideoOverlay$9;-><init>(Lorg/telegram/ui/Components/PipVideoOverlay;Landroid/content/Context;)V

    iput-object v7, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->controlsView:Landroid/widget/FrameLayout;

    new-instance v7, Lorg/telegram/ui/Components/SeekSpeedDrawable;

    iget-object v8, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->controlsView:Landroid/widget/FrameLayout;

    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v9, Lorg/telegram/ui/Components/PipVideoOverlay$$ExternalSyntheticLambda11;

    invoke-direct {v9, v8}, Lorg/telegram/ui/Components/PipVideoOverlay$$ExternalSyntheticLambda11;-><init>(Landroid/widget/FrameLayout;)V

    invoke-direct {v7, v9, v2, v3}, Lorg/telegram/ui/Components/SeekSpeedDrawable;-><init>(Ljava/lang/Runnable;ZZ)V

    iput-object v7, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->seekSpeedDrawable:Lorg/telegram/ui/Components/SeekSpeedDrawable;

    iget-object v7, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->controlsView:Landroid/widget/FrameLayout;

    invoke-virtual {v7, v3}, Landroid/view/View;->setWillNotDraw(Z)V

    iget-object v7, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->controlsView:Landroid/widget/FrameLayout;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setAlpha(F)V

    new-instance v7, Landroid/view/View;

    invoke-direct {v7, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 v9, 0x4c000000    # 3.3554432E7f

    invoke-virtual {v7, v9}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v9, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->controlsView:Landroid/widget/FrameLayout;

    invoke-static {v10, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v9, v7, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v7, 0x41000000    # 8.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    new-instance v9, Landroid/widget/ImageView;

    invoke-direct {v9, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget v12, Lorg/telegram/messenger/R$drawable;->pip_video_close:I

    invoke-virtual {v9, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_actionBarItems:I

    invoke-static {v12}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v13

    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v9, v13, v14}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    sget v13, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-static {v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v15

    invoke-static {v15}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-virtual {v9, v15}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v9, v7, v7, v7, v7}, Landroid/view/View;->setPadding(IIII)V

    new-instance v15, Lorg/telegram/ui/Components/PipVideoOverlay$$ExternalSyntheticLambda12;

    invoke-direct {v15}, Lorg/telegram/ui/Components/PipVideoOverlay$$ExternalSyntheticLambda12;-><init>()V

    invoke-virtual {v9, v15}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v15, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->controlsView:Landroid/widget/FrameLayout;

    const/16 v3, 0x26

    int-to-float v2, v3

    const/4 v8, 0x4

    int-to-float v8, v8

    const/16 v19, 0x0

    const/16 v22, 0x0

    const/16 v18, 0x5

    move/from16 v16, v3

    move/from16 v17, v2

    move/from16 v20, v8

    move/from16 v21, v8

    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v15, v9, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v9, Landroid/widget/ImageView;

    invoke-direct {v9, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget v10, Lorg/telegram/messenger/R$drawable;->pip_video_expand:I

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {v12}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10, v14}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-static {v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v10

    invoke-static {v10}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v9, v7, v7, v7, v7}, Landroid/view/View;->setPadding(IIII)V

    new-instance v7, Lorg/telegram/ui/Components/PipVideoOverlay$$ExternalSyntheticLambda13;

    invoke-direct {v7, v0, v4}, Lorg/telegram/ui/Components/PipVideoOverlay$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/Components/PipVideoOverlay;Z)V

    invoke-virtual {v9, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v7, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->controlsView:Landroid/widget/FrameLayout;

    const/16 v10, 0x30

    int-to-float v10, v10

    move/from16 v21, v10

    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v7, v9, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->playPauseButton:Landroid/widget/ImageView;

    invoke-static {v12}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v7

    invoke-virtual {v2, v7, v14}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->playPauseButton:Landroid/widget/ImageView;

    invoke-static {v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v7

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->playPauseButton:Landroid/widget/ImageView;

    new-instance v7, Lorg/telegram/ui/Components/PipVideoOverlay$$ExternalSyntheticLambda14;

    invoke-direct {v7, v0}, Lorg/telegram/ui/Components/PipVideoOverlay$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/Components/PipVideoOverlay;)V

    invoke-virtual {v2, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->innerView:Landroid/view/View;

    instance-of v7, v2, Landroid/webkit/WebView;

    if-nez v7, :cond_9

    instance-of v2, v2, Lorg/telegram/ui/Components/PhotoViewerWebView;

    if-eqz v2, :cond_8

    goto :goto_4

    :cond_8
    const/4 v2, 0x0

    goto :goto_5

    :cond_9
    :goto_4
    const/4 v2, 0x1

    :goto_5
    iput-boolean v2, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->isWebView:Z

    iget-object v7, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->playPauseButton:Landroid/widget/ImageView;

    if-eqz v2, :cond_b

    iget-object v2, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->photoViewerWebView:Lorg/telegram/ui/Components/PhotoViewerWebView;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PhotoViewerWebView;->isControllable()Z

    move-result v2

    if-nez v2, :cond_b

    :cond_a
    const/16 v2, 0x8

    goto :goto_6

    :cond_b
    const/4 v2, 0x0

    :goto_6
    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->controlsView:Landroid/widget/FrameLayout;

    iget-object v7, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->playPauseButton:Landroid/widget/ImageView;

    const/16 v8, 0x11

    invoke-static {v3, v3, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v7, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Lorg/telegram/ui/Components/PipVideoOverlay$VideoProgressView;

    invoke-direct {v2, v0, v6}, Lorg/telegram/ui/Components/PipVideoOverlay$VideoProgressView;-><init>(Lorg/telegram/ui/Components/PipVideoOverlay;Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->videoProgressView:Lorg/telegram/ui/Components/PipVideoOverlay$VideoProgressView;

    iget-object v3, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->controlsView:Landroid/widget/FrameLayout;

    const/4 v7, -0x1

    invoke-static {v7, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v3, v2, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->contentFrameLayout:Landroid/widget/FrameLayout;

    iget-object v3, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->controlsView:Landroid/widget/FrameLayout;

    invoke-static {v7, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v2, v3, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v4, :cond_c

    move-object/from16 v2, p2

    goto :goto_7

    :cond_c
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    :goto_7
    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->windowManager:Landroid/view/WindowManager;

    invoke-static {v6, v4}, Lorg/telegram/messenger/pip/utils/PipUtils;->createWindowLayoutParams(Landroid/content/Context;Z)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->pipWidth:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v4, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->pipHeight:I

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    const/high16 v4, 0x41800000    # 16.0f

    cmpl-float v6, v1, v11

    if-eqz v6, :cond_e

    int-to-float v6, v3

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v1, v6

    sget-object v6, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    int-to-float v8, v6

    div-float/2addr v8, v7

    cmpl-float v1, v1, v8

    if-ltz v1, :cond_d

    sub-int/2addr v6, v3

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v6, v1

    int-to-float v1, v6

    goto :goto_8

    :cond_d
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    goto :goto_9

    :goto_8
    iput v1, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->pipX:F

    float-to-int v1, v1

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_a

    :cond_e
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v3

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v1, v3

    :goto_9
    int-to-float v1, v1

    goto :goto_8

    :goto_a
    cmpl-float v1, v5, v11

    if-eqz v1, :cond_f

    iget-object v1, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->pipHeight:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-static {v5, v2, v3}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v2

    :goto_b
    iput v2, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->pipY:F

    float-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_c

    :cond_f
    iget-object v1, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    goto :goto_b

    :goto_c
    iget-object v1, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, 0x0

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    const/16 v2, 0x208

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v2, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->windowManager:Landroid/view/WindowManager;

    iget-object v3, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->contentView:Landroid/view/ViewGroup;

    invoke-static {v2, v3, v1}, Lorg/telegram/messenger/AndroidUtilities;->setPreferredMaxRefreshRate(Landroid/view/WindowManager;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    if-eqz p7, :cond_10

    iget-object v1, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->windowManager:Landroid/view/WindowManager;

    iget-object v2, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->contentView:Landroid/view/ViewGroup;

    iget-object v3, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v5, 0x1

    goto :goto_d

    :cond_10
    iget-object v1, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->contentView:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->contentView:Landroid/view/ViewGroup;

    const v2, 0x3dcccccd    # 0.1f

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleX(F)V

    iget-object v1, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->contentView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleY(F)V

    iget-object v1, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->windowManager:Landroid/view/WindowManager;

    iget-object v2, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->contentView:Landroid/view/ViewGroup;

    iget-object v3, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->contentView:Landroid/view/ViewGroup;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    new-array v6, v5, [F

    const/4 v7, 0x0

    aput v4, v6, v7

    invoke-static {v2, v3, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->contentView:Landroid/view/ViewGroup;

    sget-object v6, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v8, v5, [F

    aput v4, v8, v7

    invoke-static {v3, v6, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v6, v0, Lorg/telegram/ui/Components/PipVideoOverlay;->contentView:Landroid/view/ViewGroup;

    sget-object v8, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v9, v5, [F

    aput v4, v9, v7

    invoke-static {v6, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const/4 v6, 0x3

    new-array v6, v6, [Landroid/animation/Animator;

    aput-object v2, v6, v7

    aput-object v3, v6, v5

    const/4 v2, 0x2

    aput-object v4, v6, v2

    invoke-virtual {v1, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    :goto_d
    return v5
.end method

.method private toggleControls(Z)V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const/4 p1, 0x2

    new-array p1, p1, [F

    const/4 v1, 0x0

    aput v2, p1, v1

    const/4 v1, 0x1

    aput v0, p1, v1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->controlsAnimator:Landroid/animation/ValueAnimator;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->controlsAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/Components/PipVideoOverlay$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/PipVideoOverlay$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/Components/PipVideoOverlay;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->controlsAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/Components/PipVideoOverlay$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/PipVideoOverlay$1;-><init>(Lorg/telegram/ui/Components/PipVideoOverlay;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->controlsAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public static updatePlayButton()V
    .locals 1

    sget-object v0, Lorg/telegram/ui/Components/PipVideoOverlay;->instance:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-direct {v0}, Lorg/telegram/ui/Components/PipVideoOverlay;->updatePlayButtonInternal()V

    return-void
.end method

.method private updatePlayButtonInternal()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->photoViewer:Lorg/telegram/ui/PhotoViewer;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->playPauseButton:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->photoViewerWebView:Lorg/telegram/ui/Components/PhotoViewerWebView;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/PhotoViewerWebView;->isPlaying()Z

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer;->getVideoPlayer()Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->isPlaying()Z

    move-result v0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->progressRunnable:Ljava/lang/Runnable;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->isVideoCompleted:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->playPauseButton:Landroid/widget/ImageView;

    sget v1, Lorg/telegram/messenger/R$drawable;->pip_replay_large:I

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->playPauseButton:Landroid/widget/ImageView;

    sget v1, Lorg/telegram/messenger/R$drawable;->pip_play_large:I

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->playPauseButton:Landroid/widget/ImageView;

    sget v1, Lorg/telegram/messenger/R$drawable;->pip_pause_large:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->progressRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_5
    :goto_2
    return-void
.end method


# virtual methods
.method protected onLongClick()V
    .locals 14

    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->photoViewer:Lorg/telegram/ui/PhotoViewer;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer;->getVideoPlayer()Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->photoViewerWebView:Lorg/telegram/ui/Components/PhotoViewerWebView;

    if-eqz v0, :cond_5

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->isDismissing:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->isVideoCompleted:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->isScrolling:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->scaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->canLongClick:Z

    if-nez v0, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->photoViewer:Lorg/telegram/ui/PhotoViewer;

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer;->getVideoPlayer()Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v2

    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->longClickStartPoint:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-direct {p0}, Lorg/telegram/ui/Components/PipVideoOverlay;->getSuggestedWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->scaleFactor:F

    mul-float v3, v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float v3, v3, v4

    const/4 v7, 0x1

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_2

    const/4 v10, 0x1

    goto :goto_0

    :cond_2
    const/4 v10, 0x0

    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/PipVideoOverlay;->getCurrentPosition()J

    move-result-wide v3

    invoke-direct {p0}, Lorg/telegram/ui/Components/PipVideoOverlay;->getDuration()J

    move-result-wide v5

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v8

    if-eqz v0, :cond_5

    const-wide/16 v3, 0x3a98

    cmp-long v0, v5, v3

    if-gez v0, :cond_3

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->photoViewerWebView:Lorg/telegram/ui/Components/PhotoViewerWebView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->photoViewer:Lorg/telegram/ui/PhotoViewer;

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer;->getVideoPlayerRewinder()Lorg/telegram/messenger/video/VideoPlayerRewinder;

    move-result-object v8

    iget-object v9, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->photoViewerWebView:Lorg/telegram/ui/Components/PhotoViewerWebView;

    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->longClickStartPoint:[F

    aget v11, v0, v1

    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->photoViewer:Lorg/telegram/ui/PhotoViewer;

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer;->getCurrentVideoSpeed()F

    move-result v12

    iget-object v13, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->seekSpeedDrawable:Lorg/telegram/ui/Components/SeekSpeedDrawable;

    invoke-virtual/range {v8 .. v13}, Lorg/telegram/messenger/video/VideoPlayerRewinder;->startRewind(Lorg/telegram/ui/Components/PhotoViewerWebView;ZFFLorg/telegram/ui/Components/SeekSpeedDrawable;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->photoViewer:Lorg/telegram/ui/PhotoViewer;

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer;->getVideoPlayerRewinder()Lorg/telegram/messenger/video/VideoPlayerRewinder;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->longClickStartPoint:[F

    aget v4, v3, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->photoViewer:Lorg/telegram/ui/PhotoViewer;

    invoke-virtual {v1}, Lorg/telegram/ui/PhotoViewer;->getCurrentVideoSpeed()F

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->seekSpeedDrawable:Lorg/telegram/ui/Components/SeekSpeedDrawable;

    move-object v1, v0

    move v3, v10

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/messenger/video/VideoPlayerRewinder;->startRewind(Lorg/telegram/ui/Components/VideoPlayer;ZFFLorg/telegram/ui/Components/SeekSpeedDrawable;)V

    :goto_1
    iget-boolean v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->isShowingControls:Z

    if-nez v0, :cond_5

    iput-boolean v7, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->isShowingControls:Z

    invoke-direct {p0, v7}, Lorg/telegram/ui/Components/PipVideoOverlay;->toggleControls(Z)V

    iget-boolean v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->postedDismissControls:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->dismissControlsCallback:Ljava/lang/Runnable;

    const-wide/16 v1, 0x5dc

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    iput-boolean v7, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->postedDismissControls:Z

    :cond_5
    :goto_2
    return-void
.end method

.method public pipCreatePictureInPictureView()Landroid/view/View;
    .locals 2

    new-instance v0, Landroid/view/TextureView;

    iget-object v1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->contentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->pipTextureView:Landroid/view/TextureView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->pipTextureView:Landroid/view/TextureView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setOpaque(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->pipTextureView:Landroid/view/TextureView;

    new-instance v1, Lorg/telegram/ui/Components/PipVideoOverlay$10;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/PipVideoOverlay$10;-><init>(Lorg/telegram/ui/Components/PipVideoOverlay;)V

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->pipTextureView:Landroid/view/TextureView;

    return-object v0
.end method

.method public pipCreatePictureInPictureViewBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->pipTextureView:Landroid/view/TextureView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->pipTextureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public pipCreatePrimaryWindowViewBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->photoViewer:Lorg/telegram/ui/PhotoViewer;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->changedTextureView:Landroid/view/TextureView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->photoViewer:Lorg/telegram/ui/PhotoViewer;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->changedTextureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public pipHidePrimaryWindowView(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->photoViewer:Lorg/telegram/ui/PhotoViewer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer;->getVideoPlayer()Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->photoViewer:Lorg/telegram/ui/PhotoViewer;

    iput-object p1, v0, Lorg/telegram/ui/PhotoViewer;->pipFirstFrameCallback:Ljava/lang/Runnable;

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->windowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->contentView:Landroid/view/ViewGroup;

    invoke-interface {p1, v0}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->windowViewSkipRender:Z

    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->contentView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public pipIsAvailable()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->photoViewer:Lorg/telegram/ui/PhotoViewer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer;->pipIsAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic pipRenderBackground(Landroid/graphics/Canvas;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/messenger/pip/source/IPipSourceDelegate$-CC;->$default$pipRenderBackground(Lorg/telegram/messenger/pip/source/IPipSourceDelegate;Landroid/graphics/Canvas;)V

    return-void
.end method

.method public synthetic pipRenderForeground(Landroid/graphics/Canvas;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/messenger/pip/source/IPipSourceDelegate$-CC;->$default$pipRenderForeground(Lorg/telegram/messenger/pip/source/IPipSourceDelegate;Landroid/graphics/Canvas;)V

    return-void
.end method

.method public pipShowPrimaryWindowView(Ljava/lang/Runnable;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->pipSource:Lorg/telegram/messenger/pip/PipSource;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/messenger/pip/PipSource;->params:Lorg/telegram/messenger/pip/utils/PipSourceParams;

    invoke-virtual {v0}, Lorg/telegram/messenger/pip/utils/PipSourceParams;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->pipSource:Lorg/telegram/messenger/pip/PipSource;

    iget-object v1, v1, Lorg/telegram/messenger/pip/PipSource;->params:Lorg/telegram/messenger/pip/utils/PipSourceParams;

    invoke-virtual {v1}, Lorg/telegram/messenger/pip/utils/PipSourceParams;->getWidth()I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->pipWidth:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->pipSource:Lorg/telegram/messenger/pip/PipSource;

    iget-object v1, v1, Lorg/telegram/messenger/pip/PipSource;->params:Lorg/telegram/messenger/pip/utils/PipSourceParams;

    invoke-virtual {v1}, Lorg/telegram/messenger/pip/utils/PipSourceParams;->getHeight()I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->pipHeight:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->contentView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->windowViewSkipRender:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->contentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->photoViewer:Lorg/telegram/ui/PhotoViewer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer;->getVideoPlayer()Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay;->photoViewer:Lorg/telegram/ui/PhotoViewer;

    iput-object p1, v0, Lorg/telegram/ui/PhotoViewer;->pipFirstFrameCallback:Ljava/lang/Runnable;

    return-void
.end method
