.class public Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;
.implements Lorg/telegram/messenger/pip/source/IPipSourceDelegate;


# static fields
.field private static final PIP_X_PROPERTY:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

.field private static final PIP_Y_PROPERTY:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

.field private static instance:Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;


# instance fields
.field private accountInstance:Lorg/telegram/messenger/AccountInstance;

.field private aspectRatio:Ljava/lang/Float;

.field private avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

.field private boundParticipant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

.field private boundPresentation:Z

.field private cellFlickerDrawable:Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

.field private consumingChild:Landroid/view/View;

.field private contentFrameLayout:Landroid/widget/FrameLayout;

.field private contentView:Landroid/view/ViewGroup;

.field private controlsView:Landroid/widget/FrameLayout;

.field private dismissControlsCallback:Ljava/lang/Runnable;

.field private firstFrameCallback:Ljava/lang/Runnable;

.field private firstFrameRendered:Z

.field private flickerView:Landroid/view/View;

.field private gestureDetector:Landroidx/core/view/GestureDetectorCompat;

.field private isScrollDisallowed:Z

.field private isScrolling:Z

.field private isShowingControls:Z

.field private isVisible:Z

.field private maxScaleFactor:F

.field private minScaleFactor:F

.field private pipHeight:I

.field private pipSource:Lorg/telegram/messenger/pip/PipSource;

.field private pipTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

.field private pipWidth:I

.field private pipX:F

.field private pipXSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private pipY:F

.field private pipYSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private placeholderShown:Z

.field private postedDismissControls:Z

.field private scaleAnimator:Landroid/animation/ValueAnimator;

.field private scaleFactor:F

.field private scaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

.field private windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private windowManager:Landroid/view/WindowManager;

.field private windowViewSkipRender:Z


# direct methods
.method public static synthetic $r8$lambda$3rL7lGcqh4hmab5qShhnR2-74jU(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->lambda$showInternal$8(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5hWfXb7hfmxXoOt6eBAH-hLIawU(Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->lambda$new$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$9P8m7WDr0ec6iH3CeyyeBds0yXY(Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->lambda$showInternal$7(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Cx8zoFRxTt5hJ6rk23t8_UwHZLU(Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;)F
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->lambda$static$2(Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;)F

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$S4FhBYX9MsfALb2OCkaS7mqIXGA(Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->lambda$toggleControls$5(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SCkwudA6M2DrlnqBYPkdXPJuITY(Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;F)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->lambda$static$1(Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;F)V

    return-void
.end method

.method public static synthetic $r8$lambda$_Tk57sOrJpPZZ-CDoVxB9cVvUIA(Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;F)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->lambda$static$3(Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;F)V

    return-void
.end method

.method public static synthetic $r8$lambda$dsXqnsaGk1E1TVy5L2H2GokKLtg(Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;)F
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->lambda$static$0(Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;)F

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$garEwqkCqBKn2Mf4aYABmurJ16s()V
    .locals 0

    .line 0
    invoke-static {}, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->lambda$dismissInternal$6()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/telegram/ui/Components/SimpleFloatPropertyCompat;

    new-instance v1, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay$$ExternalSyntheticLambda0;-><init>()V

    new-instance v2, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay$$ExternalSyntheticLambda1;-><init>()V

    const-string v3, "pipX"

    invoke-direct {v0, v3, v1, v2}, Lorg/telegram/ui/Components/SimpleFloatPropertyCompat;-><init>(Ljava/lang/String;Lorg/telegram/ui/Components/SimpleFloatPropertyCompat$Getter;Lorg/telegram/ui/Components/SimpleFloatPropertyCompat$Setter;)V

    sput-object v0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->PIP_X_PROPERTY:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    new-instance v0, Lorg/telegram/ui/Components/SimpleFloatPropertyCompat;

    new-instance v1, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay$$ExternalSyntheticLambda2;-><init>()V

    new-instance v2, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay$$ExternalSyntheticLambda3;-><init>()V

    const-string v3, "pipY"

    invoke-direct {v0, v3, v1, v2}, Lorg/telegram/ui/Components/SimpleFloatPropertyCompat;-><init>(Ljava/lang/String;Lorg/telegram/ui/Components/SimpleFloatPropertyCompat$Getter;Lorg/telegram/ui/Components/SimpleFloatPropertyCompat$Setter;)V

    sput-object v0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->PIP_Y_PROPERTY:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    new-instance v0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;

    invoke-direct {v0}, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;-><init>()V

    sput-object v0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->instance:Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3f19999a    # 0.6f

    iput v0, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->minScaleFactor:F

    const v0, 0x3fb33333    # 1.4f

    iput v0, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->maxScaleFactor:F

    new-instance v0, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    invoke-direct {v0}, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->cellFlickerDrawable:Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->placeholderShown:Z

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->scaleFactor:F

    new-instance v0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->dismissControlsCallback:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->scaleAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$002(Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->scaleAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->contentView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->minScaleFactor:F

    return p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->maxScaleFactor:F

    return p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->pipWidth:I

    return p0
.end method

.method static synthetic access$1202(Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->pipWidth:I

    return p1
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;)I
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->getSuggestedWidth()I

    move-result p0

    return p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->pipHeight:I

    return p0
.end method

.method static synthetic access$1402(Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->pipHeight:I

    return p1
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;)I
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->getSuggestedHeight()I

    move-result p0

    return p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->pipX:F

    return p0
.end method

.method static synthetic access$1602(Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->pipX:F

    return p1
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->pipXSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    return-object p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->pipY:F

    return p0
.end method

.method static synthetic access$1802(Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->pipY:F

    return p1
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->pipYSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;)Landroid/view/WindowManager;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->windowManager:Landroid/view/WindowManager;

    return-object p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->isScrollDisallowed:Z

    return p0
.end method

.method static synthetic access$2002(Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->isScrollDisallowed:Z

    return p1
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;)Landroid/view/WindowManager$LayoutParams;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    return-object p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->contentFrameLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->isShowingControls:Z

    return p0
.end method

.method static synthetic access$2402(Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->isShowingControls:Z

    return p1
.end method

.method static synthetic access$2500(Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->postedDismissControls:Z

    return p0
.end method

.method static synthetic access$2502(Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->postedDismissControls:Z

    return p1
.end method

.method static synthetic access$2600(Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->dismissControlsCallback:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->toggleControls(Z)V

    return-void
.end method

.method static synthetic access$2800(Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;)Landroid/view/ScaleGestureDetector;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->scaleGestureDetector:Landroid/view/ScaleGestureDetector;

    return-object p0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;)Landroidx/core/view/GestureDetectorCompat;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->gestureDetector:Landroidx/core/view/GestureDetectorCompat;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;)Lorg/telegram/ui/Components/voip/VoIPTextureView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    return-object p0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->bindTextureView()V

    return-void
.end method

.method static synthetic access$3100(Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->windowViewSkipRender:Z

    return p0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->firstFrameCallback:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$3202(Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->firstFrameCallback:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$3302(Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;Ljava/lang/Float;)Ljava/lang/Float;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->aspectRatio:Ljava/lang/Float;

    return-object p1
.end method

.method static synthetic access$3400(Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;)Lorg/telegram/messenger/pip/PipSource;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->pipSource:Lorg/telegram/messenger/pip/PipSource;

    return-object p0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;)Lorg/telegram/ui/Components/voip/CellFlickerDrawable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->cellFlickerDrawable:Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    return-object p0
.end method

.method static synthetic access$402(Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;)Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->boundParticipant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    return-object p1
.end method

.method static synthetic access$502(Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->placeholderShown:Z

    return p1
.end method

.method static synthetic access$602(Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->firstFrameRendered:Z

    return p1
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->consumingChild:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$702(Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->consumingChild:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->isScrolling:Z

    return p0
.end method

.method static synthetic access$802(Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->isScrolling:Z

    return p1
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->scaleFactor:F

    return p0
.end method

.method static synthetic access$902(Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->scaleFactor:F

    return p1
.end method

.method private bindTextureView()V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->bindTextureView(Z)V

    return-void
.end method

.method private bindTextureView(Z)V
    .locals 20

    .line 0
    move-object/from16 v0, p0

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_8

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz v1, :cond_8

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v1, v1, Lorg/telegram/messenger/ChatObject$Call;->visibleVideoParticipants:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v1, v1, Lorg/telegram/messenger/ChatObject$Call;->visibleVideoParticipants:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/ChatObject$VideoParticipant;

    iget-object v1, v1, Lorg/telegram/messenger/ChatObject$VideoParticipant;->participant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    if-nez p1, :cond_0

    iget-object v5, v0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->boundParticipant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    if-eqz v5, :cond_0

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v5}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v5

    iget-object v7, v1, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v7}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v7

    cmp-long v9, v5, v7

    if-eqz v9, :cond_a

    :cond_0
    iget-object v5, v0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->boundParticipant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    if-eqz v5, :cond_1

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v5

    iget-object v6, v0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->boundParticipant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    iget-boolean v7, v0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->boundPresentation:Z

    invoke-virtual {v5, v6, v7}, Lorg/telegram/messenger/voip/VoIPService;->removeRemoteSink(Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;Z)V

    :cond_1
    iget-object v5, v0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->pipTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_2
    iget-object v5, v0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    :goto_0
    iget-object v6, v1, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->presentation:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;

    if-eqz v6, :cond_3

    const/4 v6, 0x1

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    :goto_1
    iput-boolean v6, v0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->boundPresentation:Z

    iget-boolean v6, v1, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->self:Z

    if-eqz v6, :cond_4

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v6

    iget-object v5, v5, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    iget-boolean v7, v0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->boundPresentation:Z

    invoke-virtual {v6, v5, v7, v2}, Lorg/telegram/messenger/voip/VoIPService;->setSinks(Lorg/webrtc/VideoSink;ZLorg/webrtc/VideoSink;)V

    goto :goto_2

    :cond_4
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v6

    iget-boolean v7, v0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->boundPresentation:Z

    iget-object v5, v5, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v6, v1, v7, v5, v2}, Lorg/telegram/messenger/voip/VoIPService;->addRemoteSink(Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;ZLorg/webrtc/VideoSink;Lorg/webrtc/VideoSink;)Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;

    :goto_2
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v2, v2, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v2}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v5}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    const v9, 0x3ecccccd    # 0.4f

    const/4 v10, -0x1

    const v11, 0x3e4ccccd    # 0.2f

    const/high16 v12, -0x1000000

    cmp-long v13, v5, v7

    if-lez v13, :cond_6

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    invoke-static {v2, v3}, Lorg/telegram/messenger/ImageLocation;->getForUser(Lorg/telegram/tgnet/TLRPC$User;I)Lorg/telegram/messenger/ImageLocation;

    move-result-object v14

    if-eqz v2, :cond_5

    iget-wide v5, v2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v5, v6}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorForId(J)I

    move-result v5

    goto :goto_3

    :cond_5
    invoke-static {v12, v10, v11}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v5

    :goto_3
    new-instance v6, Landroid/graphics/drawable/GradientDrawable;

    sget-object v7, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-static {v5, v12, v11}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v8

    invoke-static {v5, v12, v9}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v5

    filled-new-array {v8, v5}, [I

    move-result-object v5

    invoke-direct {v6, v7, v5}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    :goto_4
    iget-object v5, v0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v13

    const/16 v17, 0x0

    const/16 v19, 0x0

    const-string v15, "50_50_b"

    move-object/from16 v16, v6

    move-object/from16 v18, v2

    invoke-virtual/range {v13 .. v19}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    goto :goto_6

    :cond_6
    neg-long v5, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    invoke-static {v2, v3}, Lorg/telegram/messenger/ImageLocation;->getForChat(Lorg/telegram/tgnet/TLRPC$Chat;I)Lorg/telegram/messenger/ImageLocation;

    move-result-object v14

    if-eqz v2, :cond_7

    iget-wide v5, v2, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-static {v5, v6}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorForId(J)I

    move-result v5

    goto :goto_5

    :cond_7
    invoke-static {v12, v10, v11}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v5

    :goto_5
    new-instance v6, Landroid/graphics/drawable/GradientDrawable;

    sget-object v7, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-static {v5, v12, v11}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v8

    invoke-static {v5, v12, v9}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v5

    filled-new-array {v8, v5}, [I

    move-result-object v5

    invoke-direct {v6, v7, v5}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    goto :goto_4

    :goto_6
    iput-object v1, v0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->boundParticipant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    goto :goto_7

    :cond_8
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->boundParticipant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    if-eqz v1, :cond_a

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    iget-object v5, v0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->boundParticipant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    invoke-virtual {v1, v5, v4}, Lorg/telegram/messenger/voip/VoIPService;->removeRemoteSink(Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;Z)V

    :cond_9
    iput-object v2, v0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->boundParticipant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    :cond_a
    :goto_7
    iget-boolean v1, v0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->firstFrameRendered:Z

    if-eqz v1, :cond_e

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->boundParticipant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    if-eqz v1, :cond_e

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->video:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;

    if-nez v2, :cond_b

    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->presentation:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;

    if-eqz v5, :cond_e

    :cond_b
    if-eqz v2, :cond_c

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;->paused:Z

    if-nez v2, :cond_e

    :cond_c
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->presentation:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;

    if-eqz v1, :cond_d

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;->paused:Z

    if-eqz v1, :cond_d

    goto :goto_8

    :cond_d
    const/4 v3, 0x0

    :cond_e
    :goto_8
    iget-boolean v1, v0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->placeholderShown:Z

    if-eq v1, v3, :cond_12

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->flickerView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->flickerView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v3, :cond_f

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_9

    :cond_f
    const/4 v5, 0x0

    :goto_9
    invoke-virtual {v1, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v5, 0x96

    invoke-virtual {v1, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget-object v7, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v7}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    if-eqz v3, :cond_10

    const/high16 v8, 0x3f800000    # 1.0f

    goto :goto_a

    :cond_10
    const/4 v8, 0x0

    :goto_a
    invoke-virtual {v1, v8}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    if-eqz v3, :cond_11

    goto :goto_b

    :cond_11
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_b
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    iput-boolean v3, v0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->placeholderShown:Z

    :cond_12
    iget v1, v0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->pipWidth:I

    int-to-float v1, v1

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->getSuggestedWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, v0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->scaleFactor:F

    mul-float v2, v2, v3

    cmpl-float v1, v1, v2

    if-nez v1, :cond_13

    iget v1, v0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->pipHeight:I

    int-to-float v1, v1

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->getSuggestedHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, v0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->scaleFactor:F

    mul-float v2, v2, v3

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_15

    :cond_13
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->getSuggestedWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, v0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->scaleFactor:F

    mul-float v2, v2, v3

    float-to-int v2, v2

    iput v2, v0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->pipWidth:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->getSuggestedHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, v0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->scaleFactor:F

    mul-float v2, v2, v3

    float-to-int v2, v2

    iput v2, v0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->pipHeight:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->windowManager:Landroid/view/WindowManager;

    iget-object v2, v0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->contentView:Landroid/view/ViewGroup;

    iget-object v3, v0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->updateViewLayout(Landroid/view/WindowManager;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->pipXSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget v2, v0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->pipX:F

    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v1

    check-cast v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    iget v2, v0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->pipX:F

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->getSuggestedWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, v0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->scaleFactor:F

    mul-float v3, v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    div-float v4, v3, v4

    const/high16 v5, 0x41800000    # 16.0f

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_14

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->getSuggestedWidth()I

    move-result v2

    int-to-float v2, v2

    iget v4, v0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->scaleFactor:F

    mul-float v2, v2, v4

    sub-float/2addr v3, v2

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v3, v2

    goto :goto_c

    :cond_14
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v3, v2

    :goto_c
    invoke-virtual {v1, v3}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->pipXSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->pipYSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget v2, v0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->pipY:F

    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v1

    check-cast v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    iget v2, v0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->pipY:F

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->getSuggestedHeight()I

    move-result v6

    int-to-float v6, v6

    iget v7, v0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->scaleFactor:F

    mul-float v6, v6, v7

    sub-float/2addr v4, v6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-static {v2, v3, v4}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->pipYSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    :cond_15
    return-void
.end method

.method public static dismiss()V
    .locals 1

    sget-object v0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->instance:Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;

    invoke-direct {v0}, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->dismissInternal()V

    return-void
.end method

.method private dismissInternal()V
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->isVisible:Z

    if-nez v2, :cond_0

    return-void

    :cond_0
    iput-boolean v1, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->isVisible:Z

    new-instance v2, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay$$ExternalSyntheticLambda4;-><init>()V

    const-wide/16 v3, 0x64

    invoke-static {v2, v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    iget-object v2, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->accountInstance:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v2}, Lorg/telegram/messenger/AccountInstance;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->groupCallUpdated:I

    invoke-virtual {v2, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget-object v2, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->accountInstance:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v2}, Lorg/telegram/messenger/AccountInstance;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->applyGroupCallVisibleParticipants:I

    invoke-virtual {v2, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->didEndCall:I

    invoke-virtual {v2, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget-object v2, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->scaleAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    iget-boolean v2, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->postedDismissControls:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->dismissControlsCallback:Ljava/lang/Runnable;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iput-boolean v1, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->postedDismissControls:Z

    :cond_2
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v3, 0xfa

    invoke-virtual {v2, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v3, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->contentView:Landroid/view/ViewGroup;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v0, [F

    const/4 v6, 0x0

    aput v6, v5, v1

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->contentView:Landroid/view/ViewGroup;

    sget-object v5, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const v6, 0x3dcccccd    # 0.1f

    new-array v7, v0, [F

    aput v6, v7, v1

    invoke-static {v4, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->contentView:Landroid/view/ViewGroup;

    sget-object v7, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v8, v0, [F

    aput v6, v8, v1

    invoke-static {v5, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Landroid/animation/Animator;

    aput-object v3, v6, v1

    aput-object v4, v6, v0

    const/4 v0, 0x2

    aput-object v5, v6, v0

    invoke-virtual {v2, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay$2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay$2;-><init>(Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;)V

    invoke-virtual {v2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->pipSource:Lorg/telegram/messenger/pip/PipSource;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/telegram/messenger/pip/PipSource;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->pipSource:Lorg/telegram/messenger/pip/PipSource;

    :cond_3
    return-void
.end method

.method private getRatio()F
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->aspectRatio:Ljava/lang/Float;

    if-nez v0, :cond_1

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v0, v0, Lorg/telegram/messenger/ChatObject$Call;->visibleVideoParticipants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v0, v0, Lorg/telegram/messenger/ChatObject$Call;->visibleVideoParticipants:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/ChatObject$VideoParticipant;

    iget v0, v0, Lorg/telegram/messenger/ChatObject$VideoParticipant;->aspectRatio:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f100000    # 0.5625f

    :goto_0
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->aspectRatio:Ljava/lang/Float;

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

    invoke-direct {p0}, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->getSuggestedWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->maxScaleFactor:F

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->aspectRatio:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method private getSuggestedHeight()I
    .locals 2

    invoke-direct {p0}, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->getSuggestedWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0}, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->getRatio()F

    move-result v1

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private getSuggestedWidth()I
    .locals 2

    invoke-direct {p0}, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->getRatio()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3eb33333    # 0.35f

    :goto_0
    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0

    :cond_0
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f19999a    # 0.6f

    goto :goto_0
.end method

.method public static isVisible()Z
    .locals 1

    sget-object v0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->instance:Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;

    iget-boolean v0, v0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->isVisible:Z

    return v0
.end method

.method private static synthetic lambda$dismissInternal$6()V
    .locals 3

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->groupCallVisibilityChanged:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$new$4()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->isShowingControls:Z

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->toggleControls(Z)V

    iput-boolean v0, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->postedDismissControls:Z

    return-void
.end method

.method private static synthetic lambda$showInternal$7(Landroid/view/View;)V
    .locals 0

    invoke-static {}, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->dismiss()V

    return-void
.end method

.method private static synthetic lambda$showInternal$8(Landroid/content/Context;Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lorg/telegram/ui/LaunchActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "voip_chat"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->getAccount()I

    move-result v0

    const-string v1, "currentAccount"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    instance-of v0, p0, Landroid/app/Activity;

    if-nez v0, :cond_0

    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-static {}, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->dismiss()V

    :cond_1
    return-void
.end method

.method private static synthetic lambda$static$0(Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->pipX:F

    return p0
.end method

.method private static synthetic lambda$static$1(Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;F)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->pipX:F

    float-to-int p1, p1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->windowManager:Landroid/view/WindowManager;

    iget-object p0, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->contentView:Landroid/view/ViewGroup;

    invoke-static {p1, p0, v0}, Lorg/telegram/messenger/AndroidUtilities;->updateViewLayout(Landroid/view/WindowManager;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private static synthetic lambda$static$2(Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->pipY:F

    return p0
.end method

.method private static synthetic lambda$static$3(Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;F)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->pipY:F

    float-to-int p1, p1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->windowManager:Landroid/view/WindowManager;

    iget-object p0, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->contentView:Landroid/view/ViewGroup;

    invoke-static {p1, p0, v0}, Lorg/telegram/messenger/AndroidUtilities;->updateViewLayout(Landroid/view/WindowManager;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private synthetic lambda$toggleControls$5(Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->controlsView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public static show(Landroid/app/Activity;)V
    .locals 1

    sget-object v0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->instance:Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->showInternal(Landroid/app/Activity;)V

    return-void
.end method

.method private showInternal(Landroid/app/Activity;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz v4, :cond_5

    iget-boolean v4, v0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->isVisible:Z

    if-eqz v4, :cond_0

    goto/16 :goto_1

    :cond_0
    iput-boolean v3, v0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->isVisible:Z

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v4, v4, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    iput-object v4, v0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->accountInstance:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v4}, Lorg/telegram/messenger/AccountInstance;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/NotificationCenter;->groupCallUpdated:I

    invoke-virtual {v4, v0, v5}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget-object v4, v0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->accountInstance:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v4}, Lorg/telegram/messenger/AccountInstance;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/NotificationCenter;->applyGroupCallVisibleParticipants:I

    invoke-virtual {v4, v0, v5}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/NotificationCenter;->didEndCall:I

    invoke-virtual {v4, v0, v5}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->getSuggestedWidth()I

    move-result v4

    iput v4, v0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->pipWidth:I

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->getSuggestedHeight()I

    move-result v4

    iput v4, v0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->pipHeight:I

    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, v0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->scaleFactor:F

    iput-boolean v2, v0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->isShowingControls:Z

    new-instance v5, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v6, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->PIP_X_PROPERTY:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    invoke-direct {v5, v0, v6}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    new-instance v6, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v6}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    const/high16 v7, 0x3f400000    # 0.75f

    invoke-virtual {v6, v7}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v6

    const v8, 0x44228000    # 650.0f

    invoke-virtual {v6, v8}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v5

    iput-object v5, v0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->pipXSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v5, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v6, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->PIP_Y_PROPERTY:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    invoke-direct {v5, v0, v6}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    new-instance v6, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v6}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    invoke-virtual {v6, v7}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v5

    iput-object v5, v0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->pipYSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v1, :cond_1

    move-object v5, v1

    goto :goto_0

    :cond_1
    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    :goto_0
    invoke-static {v5}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v6

    new-instance v7, Landroid/view/ScaleGestureDetector;

    new-instance v8, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay$3;

    invoke-direct {v8, v0}, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay$3;-><init>(Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;)V

    invoke-direct {v7, v5, v8}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v7, v0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->scaleGestureDetector:Landroid/view/ScaleGestureDetector;

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v7, v2}, Landroid/view/ScaleGestureDetector;->setQuickScaleEnabled(Z)V

    const/16 v7, 0x17

    if-lt v8, v7, :cond_2

    iget-object v7, v0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->scaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-static {v7, v2}, Lorg/telegram/ui/Components/PipVideoOverlay$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/ScaleGestureDetector;Z)V

    :cond_2
    new-instance v7, Landroidx/core/view/GestureDetectorCompat;

    new-instance v9, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay$4;

    invoke-direct {v9, v0, v6}, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay$4;-><init>(Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;I)V

    invoke-direct {v7, v5, v9}, Landroidx/core/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v7, v0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->gestureDetector:Landroidx/core/view/GestureDetectorCompat;

    new-instance v6, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay$5;

    invoke-direct {v6, v0, v5}, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay$5;-><init>(Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->contentFrameLayout:Landroid/widget/FrameLayout;

    new-instance v6, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay$6;

    invoke-direct {v6, v0, v5}, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay$6;-><init>(Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->contentView:Landroid/view/ViewGroup;

    iget-object v7, v0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->contentFrameLayout:Landroid/widget/FrameLayout;

    const/4 v12, -0x1

    const/high16 v13, -0x40800000    # -1.0f

    invoke-static {v12, v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v6, 0x15

    if-lt v8, v6, :cond_3

    iget-object v6, v0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->contentFrameLayout:Landroid/widget/FrameLayout;

    new-instance v7, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay$7;

    invoke-direct {v7, v0}, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay$7;-><init>(Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;)V

    invoke-static {v6, v7}, Lorg/telegram/ui/AvatarPreviewer$AvatarView$$ExternalSyntheticApiModelOutline0;->m(Landroid/widget/FrameLayout;Landroid/view/ViewOutlineProvider;)V

    iget-object v6, v0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->contentFrameLayout:Landroid/widget/FrameLayout;

    invoke-static {v6, v3}, Lorg/telegram/ui/AvatarPreviewer$Layout$$ExternalSyntheticApiModelOutline1;->m(Landroid/widget/FrameLayout;Z)V

    :cond_3
    iget-object v6, v0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->contentFrameLayout:Landroid/widget/FrameLayout;

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_actionBar:I

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v6, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v6, v5}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v7, v0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->contentFrameLayout:Landroid/widget/FrameLayout;

    invoke-static {v12, v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v14, Lorg/telegram/ui/Components/voip/VoIPTextureView;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v6, v14

    move-object v7, v5

    invoke-direct/range {v6 .. v11}, Lorg/telegram/ui/Components/voip/VoIPTextureView;-><init>(Landroid/content/Context;ZZZZ)V

    iput-object v14, v0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Landroid/view/View;->setAlpha(F)V

    iget-object v7, v0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v7, v7, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    sget-object v8, Lorg/webrtc/RendererCommon$ScalingType;->SCALE_ASPECT_FILL:Lorg/webrtc/RendererCommon$ScalingType;

    invoke-virtual {v7, v8}, Lorg/webrtc/TextureViewRenderer;->setScalingType(Lorg/webrtc/RendererCommon$ScalingType;)V

    iget-object v7, v0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    sget v8, Lorg/telegram/ui/Components/voip/VoIPTextureView;->SCALE_TYPE_FILL:I

    iput v8, v7, Lorg/telegram/ui/Components/voip/VoIPTextureView;->scaleType:I

    iget-object v7, v7, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v7, v3}, Lorg/webrtc/TextureViewRenderer;->setRotateTextureWithScreen(Z)V

    iget-object v7, v0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v7, v7, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-static {}, Lorg/telegram/messenger/voip/VideoCapturerDevice;->getEglBase()Lorg/webrtc/EglBase;

    move-result-object v8

    invoke-interface {v8}, Lorg/webrtc/EglBase;->getEglBaseContext()Lorg/webrtc/EglBase$Context;

    move-result-object v8

    new-instance v9, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay$8;

    invoke-direct {v9, v0}, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay$8;-><init>(Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;)V

    invoke-virtual {v7, v8, v9}, Lorg/webrtc/TextureViewRenderer;->init(Lorg/webrtc/EglBase$Context;Lorg/webrtc/RendererCommon$RendererEvents;)V

    iget-object v7, v0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->contentFrameLayout:Landroid/widget/FrameLayout;

    iget-object v8, v0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-static {v12, v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v7, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay$9;

    invoke-direct {v7, v0, v5}, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay$9;-><init>(Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;Landroid/content/Context;)V

    iput-object v7, v0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->flickerView:Landroid/view/View;

    iget-object v8, v0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->contentFrameLayout:Landroid/widget/FrameLayout;

    invoke-static {v12, v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v8, v7, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v7, Landroid/widget/FrameLayout;

    invoke-direct {v7, v5}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v7, v0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->controlsView:Landroid/widget/FrameLayout;

    invoke-virtual {v7, v6}, Landroid/view/View;->setAlpha(F)V

    new-instance v7, Landroid/view/View;

    invoke-direct {v7, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v8, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v8}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/high16 v9, 0x44000000    # 512.0f

    filled-new-array {v9, v2}, [I

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    sget-object v9, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/GradientDrawable;->setOrientation(Landroid/graphics/drawable/GradientDrawable$Orientation;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v8, v0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->controlsView:Landroid/widget/FrameLayout;

    invoke-static {v12, v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v8, v7, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v7, 0x41000000    # 8.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    new-instance v8, Landroid/widget/ImageView;

    invoke-direct {v8, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget v9, Lorg/telegram/messenger/R$drawable;->pip_video_close:I

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_actionBarItems:I

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v10

    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setColorFilter(I)V

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-static {v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v11

    invoke-static {v11}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v8, v7, v7, v7, v7}, Landroid/view/View;->setPadding(IIII)V

    new-instance v11, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay$$ExternalSyntheticLambda6;

    invoke-direct {v11}, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay$$ExternalSyntheticLambda6;-><init>()V

    invoke-virtual {v8, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v11, v0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->controlsView:Landroid/widget/FrameLayout;

    const/16 v14, 0x26

    int-to-float v14, v14

    const/4 v15, 0x4

    int-to-float v15, v15

    const/16 v18, 0x0

    const/16 v21, 0x0

    const/16 v16, 0x26

    const/16 v17, 0x5

    move/from16 v22, v15

    move/from16 v15, v16

    move/from16 v16, v14

    move/from16 v19, v22

    move/from16 v20, v22

    invoke-static/range {v15 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v15

    invoke-virtual {v11, v8, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v8, Landroid/widget/ImageView;

    invoke-direct {v8, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget v11, Lorg/telegram/messenger/R$drawable;->pip_video_expand:I

    invoke-virtual {v8, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setColorFilter(I)V

    invoke-static {v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v9

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v8, v7, v7, v7, v7}, Landroid/view/View;->setPadding(IIII)V

    new-instance v7, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay$$ExternalSyntheticLambda7;

    invoke-direct {v7, v5}, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay$$ExternalSyntheticLambda7;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v7, v0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->controlsView:Landroid/widget/FrameLayout;

    const/16 v9, 0x30

    int-to-float v9, v9

    const/16 v15, 0x26

    move/from16 v20, v9

    invoke-static/range {v15 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v7, v0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->contentFrameLayout:Landroid/widget/FrameLayout;

    iget-object v8, v0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->controlsView:Landroid/widget/FrameLayout;

    invoke-static {v12, v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v7, "window"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    iput-object v7, v0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->windowManager:Landroid/view/WindowManager;

    invoke-static {v5, v2}, Lorg/telegram/messenger/pip/utils/PipUtils;->createWindowLayoutParams(Landroid/content/Context;Z)Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iput-object v5, v0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v7, v0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->pipWidth:I

    iput v7, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v8, v0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->pipHeight:I

    iput v8, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    sget-object v8, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    sub-int/2addr v8, v7

    const/high16 v7, 0x41800000    # 16.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    iput v8, v0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->pipX:F

    float-to-int v8, v8

    iput v8, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v5, v0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    sget-object v8, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    iget v9, v0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->pipHeight:I

    sub-int/2addr v8, v9

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    sub-int/2addr v8, v7

    int-to-float v7, v8

    iput v7, v0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->pipY:F

    float-to-int v7, v7

    iput v7, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v5, v0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    const/16 v7, 0x208

    iput v7, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v5, v0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->contentView:Landroid/view/ViewGroup;

    invoke-virtual {v5, v6}, Landroid/view/View;->setAlpha(F)V

    iget-object v5, v0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->contentView:Landroid/view/ViewGroup;

    const v6, 0x3dcccccd    # 0.1f

    invoke-virtual {v5, v6}, Landroid/view/View;->setScaleX(F)V

    iget-object v5, v0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->contentView:Landroid/view/ViewGroup;

    invoke-virtual {v5, v6}, Landroid/view/View;->setScaleY(F)V

    iget-object v5, v0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->windowManager:Landroid/view/WindowManager;

    iget-object v6, v0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->contentView:Landroid/view/ViewGroup;

    iget-object v7, v0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-static {v5, v6, v7}, Lorg/telegram/messenger/AndroidUtilities;->setPreferredMaxRefreshRate(Landroid/view/WindowManager;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    iget-object v5, v0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->windowManager:Landroid/view/WindowManager;

    iget-object v6, v0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->contentView:Landroid/view/ViewGroup;

    iget-object v7, v0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v5, v6, v7}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v6, 0xfa

    invoke-virtual {v5, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    sget-object v6, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v6, v0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->contentView:Landroid/view/ViewGroup;

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v8, v3, [F

    aput v4, v8, v2

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    iget-object v7, v0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->contentView:Landroid/view/ViewGroup;

    sget-object v8, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v9, v3, [F

    aput v4, v9, v2

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    iget-object v8, v0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->contentView:Landroid/view/ViewGroup;

    sget-object v9, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v10, v3, [F

    aput v4, v10, v2

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const/4 v8, 0x3

    new-array v8, v8, [Landroid/animation/Animator;

    aput-object v6, v8, v2

    aput-object v7, v8, v3

    const/4 v6, 0x2

    aput-object v4, v8, v6

    invoke-virtual {v5, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v4, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay$10;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay$10;-><init>(Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;)V

    invoke-virtual {v5, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->bindTextureView()V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/NotificationCenter;->groupCallVisibilityChanged:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->pipSource:Lorg/telegram/messenger/pip/PipSource;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lorg/telegram/messenger/pip/PipSource;->destroy()V

    const/4 v2, 0x0

    iput-object v2, v0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->pipSource:Lorg/telegram/messenger/pip/PipSource;

    :cond_4
    if-eqz v1, :cond_5

    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/pip/utils/PipUtils;->checkPermissions(Landroid/content/Context;)I

    move-result v2

    if-ne v2, v3, :cond_5

    new-instance v2, Lorg/telegram/messenger/pip/PipSource$Builder;

    invoke-direct {v2, v1, v0}, Lorg/telegram/messenger/pip/PipSource$Builder;-><init>(Landroid/app/Activity;Lorg/telegram/messenger/pip/source/IPipSourceDelegate;)V

    const-string v1, "pip-rtmp-video"

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/pip/PipSource$Builder;->setTagPrefix(Ljava/lang/String;)Lorg/telegram/messenger/pip/PipSource$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/pip/PipSource$Builder;->setPriority(I)Lorg/telegram/messenger/pip/PipSource$Builder;

    move-result-object v1

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/pip/PipSource$Builder;->setCornerRadius(I)Lorg/telegram/messenger/pip/PipSource$Builder;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->contentView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/pip/PipSource$Builder;->setContentView(Landroid/view/View;)Lorg/telegram/messenger/pip/PipSource$Builder;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/voip/VoIPTextureView;->getPlaceholderView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/pip/PipSource$Builder;->setPlaceholderView(Landroid/view/View;)Lorg/telegram/messenger/pip/PipSource$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/pip/PipSource$Builder;->build()Lorg/telegram/messenger/pip/PipSource;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->pipSource:Lorg/telegram/messenger/pip/PipSource;

    :cond_5
    :goto_1
    return-void
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

    iput-object p1, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->scaleAnimator:Landroid/animation/ValueAnimator;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->scaleAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->scaleAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay$1;-><init>(Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->scaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    sget p2, Lorg/telegram/messenger/NotificationCenter;->didEndCall:I

    if-ne p1, p2, :cond_0

    invoke-static {}, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->dismiss()V

    goto :goto_0

    :cond_0
    sget p2, Lorg/telegram/messenger/NotificationCenter;->groupCallUpdated:I

    if-ne p1, p2, :cond_1

    invoke-direct {p0}, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->bindTextureView()V

    :cond_1
    :goto_0
    return-void
.end method

.method public pipCreatePictureInPictureView()Landroid/view/View;
    .locals 7

    new-instance v6, Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/voip/VoIPTextureView;-><init>(Landroid/content/Context;ZZZZ)V

    iput-object v6, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->pipTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v0, v6, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setOpaque(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->pipTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v0, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    sget-object v1, Lorg/webrtc/RendererCommon$ScalingType;->SCALE_ASPECT_FILL:Lorg/webrtc/RendererCommon$ScalingType;

    invoke-virtual {v0, v1}, Lorg/webrtc/TextureViewRenderer;->setScalingType(Lorg/webrtc/RendererCommon$ScalingType;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->pipTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    sget v1, Lorg/telegram/ui/Components/voip/VoIPTextureView;->SCALE_TYPE_FILL:I

    iput v1, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->scaleType:I

    iget-object v0, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/webrtc/TextureViewRenderer;->setRotateTextureWithScreen(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->pipTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v0, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-static {}, Lorg/telegram/messenger/voip/VideoCapturerDevice;->getEglBase()Lorg/webrtc/EglBase;

    move-result-object v1

    invoke-interface {v1}, Lorg/webrtc/EglBase;->getEglBaseContext()Lorg/webrtc/EglBase$Context;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay$11;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay$11;-><init>(Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;)V

    invoke-virtual {v0, v1, v2}, Lorg/webrtc/TextureViewRenderer;->init(Lorg/webrtc/EglBase$Context;Lorg/webrtc/RendererCommon$RendererEvents;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->pipTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v0, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->backgroundView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->pipTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    return-object v0
.end method

.method public pipCreatePictureInPictureViewBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->pipTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v0}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->pipTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v0, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

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

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v0}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v0, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

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

    iput-object p1, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->firstFrameCallback:Ljava/lang/Runnable;

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {p1}, Lorg/webrtc/TextureViewRenderer;->clearFirstFrame()V

    :cond_0
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->bindTextureView(Z)V

    iput-boolean p1, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->windowViewSkipRender:Z

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->windowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->contentView:Landroid/view/ViewGroup;

    invoke-interface {p1, v0}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->contentView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public synthetic pipIsAvailable()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/messenger/pip/source/IPipSourceDelegate$-CC;->$default$pipIsAvailable(Lorg/telegram/messenger/pip/source/IPipSourceDelegate;)Z

    move-result v0

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
    .locals 2

    iput-object p1, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->firstFrameCallback:Ljava/lang/Runnable;

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->pipSource:Lorg/telegram/messenger/pip/PipSource;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lorg/telegram/messenger/pip/PipSource;->params:Lorg/telegram/messenger/pip/utils/PipSourceParams;

    invoke-virtual {p1}, Lorg/telegram/messenger/pip/utils/PipSourceParams;->isValid()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->pipSource:Lorg/telegram/messenger/pip/PipSource;

    iget-object v0, v0, Lorg/telegram/messenger/pip/PipSource;->params:Lorg/telegram/messenger/pip/utils/PipSourceParams;

    invoke-virtual {v0}, Lorg/telegram/messenger/pip/utils/PipSourceParams;->getWidth()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->pipWidth:I

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->pipSource:Lorg/telegram/messenger/pip/PipSource;

    iget-object v0, v0, Lorg/telegram/messenger/pip/PipSource;->params:Lorg/telegram/messenger/pip/utils/PipSourceParams;

    invoke-virtual {v0}, Lorg/telegram/messenger/pip/utils/PipSourceParams;->getHeight()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->pipHeight:I

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->windowViewSkipRender:Z

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->windowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->contentView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v0, v1}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->contentView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->pipTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {p1}, Lorg/webrtc/TextureViewRenderer;->release()V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->pipTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    :cond_1
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->bindTextureView(Z)V

    return-void
.end method
