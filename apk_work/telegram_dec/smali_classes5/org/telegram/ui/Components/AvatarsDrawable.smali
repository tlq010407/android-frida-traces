.class public Lorg/telegram/ui/Components/AvatarsDrawable;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;
    }
.end annotation


# instance fields
.field public animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

.field private attached:Z

.field centered:Z

.field public count:I

.field public currentStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

.field currentStyle:I

.field public drawStoriesCircle:Z

.field public height:I

.field private isInCall:Z

.field public maxX:F

.field private overrideAlpha:F

.field private overrideSize:I

.field private overrideSizeStepFactor:F

.field private paint:Landroid/graphics/Paint;

.field parent:Landroid/view/View;

.field random:Ljava/util/Random;

.field private showSavedMessages:Z

.field storiesTools:Lorg/telegram/ui/Stories/StoriesGradientTools;

.field public strokeWidth:I

.field public transitionDuration:J

.field private transitionInProgress:Z

.field public transitionInterpolator:Landroid/view/animation/Interpolator;

.field transitionProgress:F

.field transitionProgressAnimator:Landroid/animation/ValueAnimator;

.field updateAfterTransition:Z

.field updateDelegate:Ljava/lang/Runnable;

.field wasDraw:Z

.field public width:I

.field private xRefP:Landroid/graphics/Paint;


# direct methods
.method public static synthetic $r8$lambda$dbY2pkEUFqKoRp3_gjW-p5DYND8(Lorg/telegram/ui/Components/AvatarsDrawable;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AvatarsDrawable;->lambda$commitTransition$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Z)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v1, v0, [Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    iput-object v1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->currentStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    new-array v1, v0, [Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    iput-object v1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionProgress:F

    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->paint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->xRefP:Landroid/graphics/Paint;

    const v2, 0x3fd5c28f    # 1.67f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->strokeWidth:I

    const v2, 0x3f4ccccd    # 0.8f

    iput v2, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->overrideSizeStepFactor:F

    iput v1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->overrideAlpha:F

    const-wide/16 v1, 0xdc

    iput-wide v1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionDuration:J

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iput-object v1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionInterpolator:Landroid/view/animation/Interpolator;

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->random:Ljava/util/Random;

    iput-object p1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->parent:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v4, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->currentStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    new-instance v5, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    invoke-direct {v5}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;-><init>()V

    aput-object v5, v4, v2

    iget-object v4, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->currentStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v4, v4, v2

    new-instance v5, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v5, p1}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$802(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;Lorg/telegram/messenger/ImageReceiver;)Lorg/telegram/messenger/ImageReceiver;

    iget-object v4, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->currentStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v4, v4, v2

    invoke-static {v4}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$800(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/telegram/messenger/ImageReceiver;->setInvalidateAll(Z)V

    iget-object v4, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->currentStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v4, v4, v2

    invoke-static {v4}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$800(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v4

    const/high16 v5, 0x41400000    # 12.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    iget-object v4, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->currentStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v4, v4, v2

    new-instance v6, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v6}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object v6, v4, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget-object v4, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->currentStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v4, v4, v2

    iget-object v4, v4, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/AvatarDrawable;->setTextSize(I)V

    iget-object v4, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    new-instance v6, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    invoke-direct {v6}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;-><init>()V

    aput-object v6, v4, v2

    iget-object v4, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v4, v4, v2

    new-instance v6, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v6, p1}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    invoke-static {v4, v6}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$802(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;Lorg/telegram/messenger/ImageReceiver;)Lorg/telegram/messenger/ImageReceiver;

    iget-object v4, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v4, v4, v2

    invoke-static {v4}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$800(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/telegram/messenger/ImageReceiver;->setInvalidateAll(Z)V

    iget-object v4, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v4, v4, v2

    invoke-static {v4}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$800(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v4

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    iget-object v4, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v4, v4, v2

    new-instance v6, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v6}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object v6, v4, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget-object v4, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v4, v4, v2

    iget-object v4, v4, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/AvatarDrawable;->setTextSize(I)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_0
    iput-boolean p2, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->isInCall:Z

    iget-object p1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->xRefP:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->xRefP:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/PorterDuffXfermode;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, v0}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/AvatarsDrawable;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/AvatarsDrawable;->swapStates()V

    return-void
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/AvatarsDrawable;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/AvatarsDrawable;->invalidate()V

    return-void
.end method

.method private invalidate()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->parent:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$commitTransition$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionProgress:F

    invoke-direct {p0}, Lorg/telegram/ui/Components/AvatarsDrawable;->invalidate()V

    return-void
.end method

.method private swapStates()V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->currentStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v2, v1, v0

    iget-object v3, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v4, v3, v0

    aput-object v4, v1, v0

    aput-object v2, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public animateFromState(Lorg/telegram/ui/Components/AvatarsDrawable;IZ)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionProgressAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iget-boolean v0, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionInProgress:Z

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionInProgress:Z

    invoke-direct {p0}, Lorg/telegram/ui/Components/AvatarsDrawable;->swapStates()V

    :cond_1
    const/4 v0, 0x3

    new-array v2, v0, [Lorg/telegram/tgnet/TLObject;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    iget-object v4, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->currentStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v4, v4, v3

    invoke-static {v4}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$700(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/tgnet/TLObject;

    move-result-object v4

    aput-object v4, v2, v3

    iget-object v4, p1, Lorg/telegram/ui/Components/AvatarsDrawable;->currentStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v4, v4, v3

    invoke-static {v4}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$700(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/tgnet/TLObject;

    move-result-object v4

    invoke-virtual {p0, v3, p2, v4}, Lorg/telegram/ui/Components/AvatarsDrawable;->setObject(IILorg/telegram/tgnet/TLObject;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/AvatarsDrawable;->commitTransition(Z)V

    :goto_1
    if-ge v1, v0, :cond_3

    aget-object p1, v2, v1

    invoke-virtual {p0, v1, p2, p1}, Lorg/telegram/ui/Components/AvatarsDrawable;->setObject(IILorg/telegram/tgnet/TLObject;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->wasDraw:Z

    invoke-virtual {p0, p1, p3}, Lorg/telegram/ui/Components/AvatarsDrawable;->commitTransition(ZZ)V

    return-void
.end method

.method public commitTransition(Z)V
    .locals 1

    .line 0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/AvatarsDrawable;->commitTransition(ZZ)V

    return-void
.end method

.method public commitTransition(ZZ)V
    .locals 12

    .line 0
    const/4 v0, 0x2

    const/4 v1, 0x1

    iget-boolean v2, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->wasDraw:Z

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v2, :cond_c

    if-nez p1, :cond_0

    goto/16 :goto_7

    :cond_0
    const/4 p1, 0x3

    new-array v2, p1, [Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v5, p1, :cond_2

    iget-object v7, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->currentStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v8, v7, v5

    aput-object v8, v2, v5

    aget-object v7, v7, v5

    invoke-static {v7}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$000(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)J

    move-result-wide v7

    iget-object v9, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v9, v9, v5

    invoke-static {v9}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$000(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)J

    move-result-wide v9

    cmp-long v11, v7, v9

    if-eqz v11, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    iget-object v7, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->currentStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v7, v7, v5

    iget-object v8, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v8, v8, v5

    invoke-static {v8}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$100(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)J

    move-result-wide v8

    invoke-static {v7, v8, v9}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$102(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;J)J

    :goto_1
    add-int/2addr v5, v1

    goto :goto_0

    :cond_2
    if-nez v6, :cond_3

    iput v3, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionProgress:F

    return-void

    :cond_3
    const/4 v3, 0x0

    :goto_2
    if-ge v3, p1, :cond_7

    const/4 v5, 0x0

    :goto_3
    if-ge v5, p1, :cond_6

    iget-object v6, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->currentStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v6, v6, v5

    invoke-static {v6}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$000(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)J

    move-result-wide v6

    iget-object v8, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v8, v8, v3

    invoke-static {v8}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$000(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)J

    move-result-wide v8

    cmp-long v10, v6, v8

    if-nez v10, :cond_5

    const/4 v6, 0x0

    aput-object v6, v2, v5

    if-ne v3, v5, :cond_4

    iget-object v5, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v5, v5, v3

    const/4 v6, -0x1

    invoke-static {v5, v6}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$202(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;I)I

    iget-object v5, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v5, v5, v3

    invoke-static {v5}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$300(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v6, v6, v3

    iget-object v7, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->currentStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v7, v7, v3

    invoke-static {v7}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$300(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$302(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;)Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;

    iget-object v6, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->currentStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v6, v6, v3

    invoke-static {v6, v5}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$302(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;)Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;

    goto :goto_4

    :cond_4
    iget-object v6, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v6, v6, v3

    invoke-static {v6, v0}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$202(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;I)I

    iget-object v6, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v6, v6, v3

    invoke-static {v6, v5}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$402(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;I)I

    goto :goto_4

    :cond_5
    add-int/2addr v5, v1

    goto :goto_3

    :cond_6
    iget-object v5, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v5, v5, v3

    invoke-static {v5, v4}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$202(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;I)I

    :goto_4
    add-int/2addr v3, v1

    goto :goto_2

    :cond_7
    const/4 v3, 0x0

    :goto_5
    if-ge v3, p1, :cond_9

    aget-object v5, v2, v3

    if-eqz v5, :cond_8

    invoke-static {v5, v1}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$202(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;I)I

    :cond_8
    add-int/2addr v3, v1

    goto :goto_5

    :cond_9
    iget-object p1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionProgressAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/animation/Animator;->removeAllListeners()V

    iget-object p1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionProgressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    iget-boolean p1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionInProgress:Z

    if-eqz p1, :cond_a

    invoke-direct {p0}, Lorg/telegram/ui/Components/AvatarsDrawable;->swapStates()V

    iput-boolean v4, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionInProgress:Z

    :cond_a
    const/4 p1, 0x0

    iput p1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionProgress:F

    if-eqz p2, :cond_b

    new-array p1, v0, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionProgressAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lorg/telegram/ui/Components/AvatarsDrawable$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/AvatarsDrawable$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/AvatarsDrawable;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionProgressAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lorg/telegram/ui/Components/AvatarsDrawable$1;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/AvatarsDrawable$1;-><init>(Lorg/telegram/ui/Components/AvatarsDrawable;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionProgressAnimator:Landroid/animation/ValueAnimator;

    iget-wide v0, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionProgressAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionProgressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_6

    :cond_b
    iput-boolean v1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionInProgress:Z

    :goto_6
    invoke-direct {p0}, Lorg/telegram/ui/Components/AvatarsDrawable;->invalidate()V

    return-void

    :cond_c
    :goto_7
    iput v3, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionProgress:F

    invoke-direct {p0}, Lorg/telegram/ui/Components/AvatarsDrawable;->swapStates()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public getMaxX()F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->maxX:F

    return v0
.end method

.method public getSize()I
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->overrideSize:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->currentStyle:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/high16 v0, 0x41c00000    # 24.0f

    goto :goto_1

    :cond_2
    :goto_0
    const/high16 v0, 0x42000000    # 32.0f

    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method public getUsedWidth()F
    .locals 9

    iget v0, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->currentStyle:I

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    const/16 v3, 0xb

    if-ne v0, v3, :cond_2

    const/high16 v0, 0x41400000    # 12.0f

    :goto_2
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    goto :goto_3

    :cond_2
    iget v0, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->overrideSize:I

    if-eqz v0, :cond_3

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->overrideSizeStepFactor:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    goto :goto_3

    :cond_3
    if-eqz v1, :cond_4

    const/high16 v0, 0x41c00000    # 24.0f

    goto :goto_2

    :cond_4
    const/high16 v0, 0x41a00000    # 20.0f

    goto :goto_2

    :goto_3
    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_4
    const/4 v4, 0x3

    if-ge v1, v4, :cond_6

    iget-object v4, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->currentStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v4, v4, v1

    invoke-static {v4}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$000(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-eqz v8, :cond_5

    add-int/lit8 v3, v3, 0x1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_6
    add-int/lit8 v1, v3, -0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    mul-int v1, v1, v0

    if-lez v3, :cond_7

    invoke-virtual {p0}, Lorg/telegram/ui/Components/AvatarsDrawable;->getSize()I

    move-result v2

    :cond_7
    add-int/2addr v1, v2

    int-to-float v0, v1

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->attached:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->attached:Z

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->currentStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v1, v1, v0

    invoke-static {v1}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$800(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    iget-object v1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v1, v1, v0

    invoke-static {v1}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$800(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->attached:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->attached:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->wasDraw:Z

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->currentStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v1, v1, v0

    invoke-static {v1}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$800(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    iget-object v1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v1, v1, v0

    invoke-static {v1}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$800(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->currentStyle:I

    if-ne v0, v1, :cond_2

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getFragmentContextViewWavesDrawable()Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->setAmplitude(F)V

    :cond_2
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    const/4 v9, 0x1

    iput-boolean v9, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->wasDraw:Z

    iget v1, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->currentStyle:I

    const/16 v10, 0xa

    const/4 v12, 0x4

    if-eq v1, v12, :cond_1

    if-ne v1, v10, :cond_0

    goto :goto_0

    :cond_0
    const/4 v13, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v13, 0x1

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/AvatarsDrawable;->getSize()I

    move-result v14

    iget v1, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->currentStyle:I

    const/high16 v2, 0x41a00000    # 20.0f

    const/16 v15, 0xb

    if-ne v1, v15, :cond_2

    const/high16 v1, 0x41400000    # 12.0f

    :goto_2
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    :goto_3
    move/from16 v16, v1

    goto :goto_4

    :cond_2
    iget v1, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->overrideSize:I

    if-eqz v1, :cond_3

    int-to-float v1, v1

    iget v3, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->overrideSizeStepFactor:F

    mul-float v1, v1, v3

    float-to-int v1, v1

    goto :goto_3

    :cond_3
    if-eqz v13, :cond_4

    const/high16 v1, 0x41c00000    # 24.0f

    goto :goto_2

    :cond_4
    const/high16 v1, 0x41a00000    # 20.0f

    goto :goto_2

    :goto_4
    const/4 v1, 0x0

    :goto_5
    const/4 v7, 0x3

    if-ge v1, v7, :cond_5

    iget-object v3, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->currentStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v3, v3, v1

    invoke-static {v3}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$000(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)J

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_5
    iget v1, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->currentStyle:I

    if-eqz v1, :cond_7

    if-eq v1, v10, :cond_7

    if-ne v1, v15, :cond_6

    goto :goto_6

    :cond_6
    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    move/from16 v17, v1

    goto :goto_7

    :cond_7
    :goto_6
    const/16 v17, 0x0

    :goto_7
    iget-boolean v1, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->centered:Z

    const/4 v6, 0x2

    if-eqz v1, :cond_8

    iget v1, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->width:I

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/AvatarsDrawable;->getUsedWidth()F

    move-result v3

    float-to-int v3, v3

    sub-int/2addr v1, v3

    div-int/2addr v1, v6

    move/from16 v18, v1

    goto :goto_8

    :cond_8
    move/from16 v18, v17

    :goto_8
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/voip/VoIPService;->isMicMute()Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_9

    :cond_9
    const/4 v1, 0x0

    :goto_9
    iget v3, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->currentStyle:I

    if-ne v3, v12, :cond_a

    iget-object v1, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->paint:Landroid/graphics/Paint;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_inappPlayerBackground:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_b

    :cond_a
    if-eq v3, v7, :cond_c

    iget-object v3, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->paint:Landroid/graphics/Paint;

    if-eqz v1, :cond_b

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_returnToCallMutedBackground:I

    goto :goto_a

    :cond_b
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_returnToCallBackground:I

    :goto_a
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_c
    :goto_b
    const/4 v1, 0x0

    const/16 v19, 0x0

    :goto_c
    if-ge v1, v7, :cond_e

    iget-object v3, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v3, v3, v1

    invoke-static {v3}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$000(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)J

    move-result-wide v3

    const-wide/16 v20, 0x0

    cmp-long v5, v3, v20

    if-eqz v5, :cond_d

    add-int/lit8 v19, v19, 0x1

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_e
    iget v1, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->currentStyle:I

    const/4 v5, 0x5

    if-eqz v1, :cond_10

    if-eq v1, v9, :cond_10

    if-eq v1, v7, :cond_10

    if-eq v1, v12, :cond_10

    if-eq v1, v5, :cond_10

    if-eq v1, v10, :cond_10

    if-ne v1, v15, :cond_f

    goto :goto_d

    :cond_f
    const/16 v20, 0x0

    goto :goto_e

    :cond_10
    :goto_d
    const/16 v20, 0x1

    :goto_e
    const/high16 v21, 0x41800000    # 16.0f

    const/4 v4, 0x0

    if-eqz v20, :cond_13

    if-ne v1, v10, :cond_11

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    goto :goto_f

    :cond_11
    const/4 v1, 0x0

    :goto_f
    iget-boolean v3, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->drawStoriesCircle:Z

    if-eqz v3, :cond_12

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    :cond_12
    neg-float v3, v1

    iget v2, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->width:I

    int-to-float v2, v2

    add-float v22, v2, v1

    iget v2, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->height:I

    int-to-float v2, v2

    add-float v23, v2, v1

    const/16 v24, 0xff

    const/16 v25, 0x1f

    move-object/from16 v1, p1

    move v2, v3

    const/4 v11, 0x0

    move/from16 v4, v22

    move/from16 v5, v23

    const/4 v12, 0x2

    move/from16 v6, v24

    move/from16 v7, v25

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    goto :goto_10

    :cond_13
    const/4 v11, 0x0

    const/4 v12, 0x2

    :goto_10
    iput v11, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->maxX:F

    iget-boolean v1, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->drawStoriesCircle:Z

    const/4 v3, -0x1

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v7, 0x3f800000    # 1.0f

    if-eqz v1, :cond_28

    const/4 v1, 0x2

    :goto_11
    if-ltz v1, :cond_28

    const/4 v2, 0x0

    :goto_12
    if-ge v2, v12, :cond_27

    if-nez v2, :cond_14

    iget v6, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionProgress:F

    cmpl-float v6, v6, v7

    if-nez v6, :cond_14

    :goto_13
    const/high16 v26, 0x40800000    # 4.0f

    goto/16 :goto_24

    :cond_14
    if-nez v2, :cond_15

    iget-object v6, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    goto :goto_14

    :cond_15
    iget-object v6, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->currentStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    :goto_14
    if-ne v2, v9, :cond_16

    iget v11, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionProgress:F

    cmpl-float v11, v11, v7

    if-eqz v11, :cond_16

    aget-object v11, v6, v1

    invoke-static {v11}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$200(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)I

    move-result v11

    if-eq v11, v9, :cond_16

    goto :goto_13

    :cond_16
    aget-object v11, v6, v1

    invoke-static {v11}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$800(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/messenger/ImageReceiver;->hasImageSet()Z

    move-result v26

    if-nez v26, :cond_17

    goto :goto_13

    :cond_17
    if-nez v2, :cond_1a

    iget-boolean v5, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->centered:Z

    if-eqz v5, :cond_19

    iget v5, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->width:I

    mul-int v27, v19, v16

    sub-int v5, v5, v27

    if-eqz v13, :cond_18

    const/high16 v27, 0x41000000    # 8.0f

    goto :goto_15

    :cond_18
    const/high16 v27, 0x40800000    # 4.0f

    :goto_15
    invoke-static/range {v27 .. v27}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v27

    sub-int v5, v5, v27

    div-int/2addr v5, v12

    goto :goto_16

    :cond_19
    move/from16 v5, v17

    :goto_16
    mul-int v27, v16, v1

    add-int v5, v5, v27

    :goto_17
    int-to-float v5, v5

    invoke-virtual {v11, v5}, Lorg/telegram/messenger/ImageReceiver;->setImageX(F)V

    goto :goto_18

    :cond_1a
    mul-int v5, v16, v1

    add-int v5, v18, v5

    goto :goto_17

    :goto_18
    iget v5, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->currentStyle:I

    if-eqz v5, :cond_1d

    if-eq v5, v10, :cond_1d

    if-ne v5, v15, :cond_1b

    goto :goto_1b

    :cond_1b
    const/4 v15, 0x4

    if-ne v5, v15, :cond_1c

    const/high16 v5, 0x41000000    # 8.0f

    goto :goto_19

    :cond_1c
    const/high16 v5, 0x40c00000    # 6.0f

    :goto_19
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    :goto_1a
    invoke-virtual {v11, v5}, Lorg/telegram/messenger/ImageReceiver;->setImageY(F)V

    goto :goto_1c

    :cond_1d
    :goto_1b
    iget v5, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->height:I

    sub-int/2addr v5, v14

    int-to-float v5, v5

    div-float/2addr v5, v4

    goto :goto_1a

    :goto_1c
    iget v5, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionProgress:F

    cmpl-float v5, v5, v7

    if-eqz v5, :cond_24

    aget-object v5, v6, v1

    invoke-static {v5}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$200(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)I

    move-result v5

    if-ne v5, v9, :cond_1e

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v5, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionProgress:F

    sub-float v5, v7, v5

    invoke-virtual {v11}, Lorg/telegram/messenger/ImageReceiver;->getCenterX()F

    move-result v6

    invoke-virtual {v11}, Lorg/telegram/messenger/ImageReceiver;->getCenterY()F

    move-result v15

    invoke-virtual {v8, v5, v5, v6, v15}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget v5, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionProgress:F

    sub-float v5, v7, v5

    :goto_1d
    const/4 v6, 0x1

    goto/16 :goto_23

    :cond_1e
    aget-object v5, v6, v1

    invoke-static {v5}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$200(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)I

    move-result v5

    if-nez v5, :cond_1f

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v5, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionProgress:F

    invoke-virtual {v11}, Lorg/telegram/messenger/ImageReceiver;->getCenterX()F

    move-result v6

    invoke-virtual {v11}, Lorg/telegram/messenger/ImageReceiver;->getCenterY()F

    move-result v15

    invoke-virtual {v8, v5, v5, v6, v15}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget v5, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionProgress:F

    goto :goto_1d

    :cond_1f
    aget-object v5, v6, v1

    invoke-static {v5}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$200(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)I

    move-result v5

    if-ne v5, v12, :cond_22

    iget-boolean v5, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->centered:Z

    if-eqz v5, :cond_21

    iget v5, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->width:I

    mul-int v15, v19, v16

    sub-int/2addr v5, v15

    if-eqz v13, :cond_20

    const/high16 v15, 0x41000000    # 8.0f

    goto :goto_1e

    :cond_20
    const/high16 v15, 0x40800000    # 4.0f

    :goto_1e
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    sub-int/2addr v5, v15

    div-int/2addr v5, v12

    goto :goto_1f

    :cond_21
    move/from16 v5, v17

    :goto_1f
    mul-int v15, v16, v1

    add-int/2addr v5, v15

    aget-object v6, v6, v1

    invoke-static {v6}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$400(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)I

    move-result v6

    mul-int v6, v6, v16

    :goto_20
    add-int v6, v18, v6

    int-to-float v5, v5

    iget v15, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionProgress:F

    mul-float v5, v5, v15

    int-to-float v6, v6

    sub-float v15, v7, v15

    mul-float v6, v6, v15

    add-float/2addr v5, v6

    float-to-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v11, v5}, Lorg/telegram/messenger/ImageReceiver;->setImageX(F)V

    goto :goto_22

    :cond_22
    aget-object v5, v6, v1

    invoke-static {v5}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$200(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)I

    move-result v5

    if-ne v5, v3, :cond_24

    iget-boolean v5, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->centered:Z

    if-eqz v5, :cond_24

    iget v5, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->width:I

    mul-int v6, v19, v16

    sub-int/2addr v5, v6

    if-eqz v13, :cond_23

    const/high16 v6, 0x41000000    # 8.0f

    goto :goto_21

    :cond_23
    const/high16 v6, 0x40800000    # 4.0f

    :goto_21
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int/2addr v5, v6

    div-int/2addr v5, v12

    mul-int v6, v16, v1

    add-int/2addr v5, v6

    goto :goto_20

    :cond_24
    :goto_22
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    :goto_23
    iget v15, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->overrideAlpha:F

    mul-float v5, v5, v15

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/AvatarsDrawable;->getSize()I

    move-result v15

    int-to-float v15, v15

    div-float/2addr v15, v4

    const/high16 v26, 0x40800000    # 4.0f

    invoke-static/range {v26 .. v26}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v15, v3

    iget-object v3, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->storiesTools:Lorg/telegram/ui/Stories/StoriesGradientTools;

    if-nez v3, :cond_25

    new-instance v3, Lorg/telegram/ui/Stories/StoriesGradientTools;

    invoke-direct {v3}, Lorg/telegram/ui/Stories/StoriesGradientTools;-><init>()V

    iput-object v3, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->storiesTools:Lorg/telegram/ui/Stories/StoriesGradientTools;

    :cond_25
    iget-object v3, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->storiesTools:Lorg/telegram/ui/Stories/StoriesGradientTools;

    iget-object v4, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->parent:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v29, 0x42200000    # 40.0f

    invoke-static/range {v29 .. v29}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    const/4 v9, 0x0

    invoke-virtual {v3, v9, v9, v4, v10}, Lorg/telegram/ui/Components/GradientTools;->setBounds(FFFF)V

    iget-object v3, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->storiesTools:Lorg/telegram/ui/Stories/StoriesGradientTools;

    iget-object v3, v3, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float v5, v5, v4

    float-to-int v4, v5

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {v11}, Lorg/telegram/messenger/ImageReceiver;->getCenterX()F

    move-result v3

    invoke-virtual {v11}, Lorg/telegram/messenger/ImageReceiver;->getCenterY()F

    move-result v4

    iget-object v5, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->storiesTools:Lorg/telegram/ui/Stories/StoriesGradientTools;

    iget-object v5, v5, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    invoke-virtual {v8, v3, v4, v15, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    if-eqz v6, :cond_26

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_26
    :goto_24
    add-int/lit8 v2, v2, 0x1

    const/4 v3, -0x1

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v9, 0x1

    const/16 v10, 0xa

    const/4 v11, 0x0

    const/16 v15, 0xb

    goto/16 :goto_12

    :cond_27
    const/high16 v26, 0x40800000    # 4.0f

    add-int/lit8 v1, v1, -0x1

    const/4 v3, -0x1

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v9, 0x1

    const/16 v10, 0xa

    const/4 v11, 0x0

    const/16 v15, 0xb

    goto/16 :goto_11

    :cond_28
    const/high16 v26, 0x40800000    # 4.0f

    const/4 v6, 0x2

    :goto_25
    if-ltz v6, :cond_53

    const/4 v1, 0x0

    :goto_26
    if-ge v1, v12, :cond_52

    if-nez v1, :cond_29

    iget v2, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionProgress:F

    cmpl-float v2, v2, v7

    if-nez v2, :cond_29

    :goto_27
    const/4 v5, 0x5

    const/high16 v11, 0x40000000    # 2.0f

    goto/16 :goto_47

    :cond_29
    if-nez v1, :cond_2a

    iget-object v2, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    :goto_28
    const/4 v3, 0x1

    goto :goto_29

    :cond_2a
    iget-object v2, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->currentStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    goto :goto_28

    :goto_29
    if-ne v1, v3, :cond_2b

    iget v4, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionProgress:F

    cmpl-float v4, v4, v7

    if-eqz v4, :cond_2b

    aget-object v4, v2, v6

    invoke-static {v4}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$200(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)I

    move-result v4

    if-eq v4, v3, :cond_2b

    goto :goto_27

    :cond_2b
    aget-object v3, v2, v6

    invoke-static {v3}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$800(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->hasImageSet()Z

    move-result v4

    if-nez v4, :cond_2c

    goto :goto_27

    :cond_2c
    if-nez v1, :cond_2f

    iget-boolean v4, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->centered:Z

    if-eqz v4, :cond_2e

    iget v4, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->width:I

    mul-int v5, v19, v16

    sub-int/2addr v4, v5

    if-eqz v13, :cond_2d

    const/high16 v5, 0x41000000    # 8.0f

    goto :goto_2a

    :cond_2d
    const/high16 v5, 0x40800000    # 4.0f

    :goto_2a
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v4, v5

    div-int/2addr v4, v12

    goto :goto_2b

    :cond_2e
    move/from16 v4, v17

    :goto_2b
    mul-int v5, v16, v6

    add-int/2addr v4, v5

    :goto_2c
    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/ImageReceiver;->setImageX(F)V

    goto :goto_2d

    :cond_2f
    mul-int v4, v16, v6

    add-int v4, v18, v4

    goto :goto_2c

    :goto_2d
    iget v4, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->currentStyle:I

    if-eqz v4, :cond_32

    const/16 v5, 0xa

    if-eq v4, v5, :cond_32

    const/16 v5, 0xb

    if-ne v4, v5, :cond_30

    goto :goto_30

    :cond_30
    const/4 v9, 0x4

    if-ne v4, v9, :cond_31

    const/high16 v4, 0x41000000    # 8.0f

    goto :goto_2e

    :cond_31
    const/high16 v4, 0x40c00000    # 6.0f

    :goto_2e
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    :goto_2f
    invoke-virtual {v3, v4}, Lorg/telegram/messenger/ImageReceiver;->setImageY(F)V

    goto :goto_31

    :cond_32
    const/16 v5, 0xb

    :goto_30
    iget v4, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->height:I

    sub-int/2addr v4, v14

    int-to-float v4, v4

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v4, v9

    goto :goto_2f

    :goto_31
    iget v4, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionProgress:F

    cmpl-float v4, v4, v7

    if-eqz v4, :cond_37

    aget-object v4, v2, v6

    invoke-static {v4}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$200(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)I

    move-result v4

    const/4 v9, 0x1

    if-ne v4, v9, :cond_33

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v4, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionProgress:F

    sub-float v4, v7, v4

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getCenterX()F

    move-result v9

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getCenterY()F

    move-result v10

    invoke-virtual {v8, v4, v4, v9, v10}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget v4, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionProgress:F

    sub-float v4, v7, v4

    :goto_32
    move v10, v4

    const/4 v4, 0x1

    const/4 v9, -0x1

    goto/16 :goto_37

    :cond_33
    aget-object v4, v2, v6

    invoke-static {v4}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$200(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)I

    move-result v4

    if-nez v4, :cond_34

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v4, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionProgress:F

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getCenterX()F

    move-result v9

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getCenterY()F

    move-result v10

    invoke-virtual {v8, v4, v4, v9, v10}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget v4, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionProgress:F

    goto :goto_32

    :cond_34
    aget-object v4, v2, v6

    invoke-static {v4}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$200(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)I

    move-result v4

    if-ne v4, v12, :cond_38

    iget-boolean v4, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->centered:Z

    if-eqz v4, :cond_36

    iget v4, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->width:I

    mul-int v9, v19, v16

    sub-int/2addr v4, v9

    if-eqz v13, :cond_35

    const/high16 v9, 0x41000000    # 8.0f

    goto :goto_33

    :cond_35
    const/high16 v9, 0x40800000    # 4.0f

    :goto_33
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    sub-int/2addr v4, v9

    div-int/2addr v4, v12

    goto :goto_34

    :cond_36
    move/from16 v4, v17

    :goto_34
    mul-int v9, v16, v6

    add-int/2addr v4, v9

    aget-object v9, v2, v6

    invoke-static {v9}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$400(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)I

    move-result v9

    mul-int v9, v9, v16

    add-int v9, v18, v9

    int-to-float v4, v4

    iget v10, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionProgress:F

    mul-float v4, v4, v10

    int-to-float v9, v9

    sub-float v10, v7, v10

    mul-float v9, v9, v10

    add-float/2addr v4, v9

    float-to-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/ImageReceiver;->setImageX(F)V

    :cond_37
    const/4 v9, -0x1

    goto :goto_36

    :cond_38
    aget-object v4, v2, v6

    invoke-static {v4}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$200(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)I

    move-result v4

    const/4 v9, -0x1

    if-ne v4, v9, :cond_3a

    iget-boolean v4, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->centered:Z

    if-eqz v4, :cond_3a

    iget v4, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->width:I

    mul-int v10, v19, v16

    sub-int/2addr v4, v10

    if-eqz v13, :cond_39

    const/high16 v10, 0x41000000    # 8.0f

    goto :goto_35

    :cond_39
    const/high16 v10, 0x40800000    # 4.0f

    :goto_35
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    sub-int/2addr v4, v10

    div-int/2addr v4, v12

    mul-int v10, v16, v6

    add-int/2addr v4, v10

    add-int v10, v18, v10

    int-to-float v4, v4

    iget v11, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionProgress:F

    mul-float v4, v4, v11

    int-to-float v10, v10

    sub-float v11, v7, v11

    mul-float v10, v10, v11

    add-float/2addr v4, v10

    float-to-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/ImageReceiver;->setImageX(F)V

    :cond_3a
    :goto_36
    const/4 v4, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    :goto_37
    iget v11, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->overrideAlpha:F

    mul-float v10, v10, v11

    array-length v11, v2

    const/4 v15, 0x1

    sub-int/2addr v11, v15

    if-ne v6, v11, :cond_3c

    iget-boolean v11, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->drawStoriesCircle:Z

    if-eqz v11, :cond_3b

    goto :goto_38

    :cond_3b
    const/4 v5, 0x5

    goto :goto_3a

    :cond_3c
    :goto_38
    iget v11, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->currentStyle:I

    const/high16 v15, 0x41700000    # 15.0f

    const/high16 v27, 0x41a80000    # 21.0f

    const/high16 v28, 0x42990000    # 76.5f

    const/high16 v30, 0x41880000    # 17.0f

    const/4 v5, 0x1

    if-eq v11, v5, :cond_49

    const/4 v5, 0x3

    if-eq v11, v5, :cond_49

    const/4 v5, 0x5

    if-ne v11, v5, :cond_3d

    :goto_39
    const/16 v9, 0xa

    goto/16 :goto_41

    :cond_3d
    const/4 v9, 0x4

    if-eq v11, v9, :cond_42

    const/16 v9, 0xa

    if-ne v11, v9, :cond_3e

    goto :goto_3b

    :cond_3e
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/AvatarsDrawable;->getSize()I

    move-result v2

    int-to-float v2, v2

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v2, v9

    iget v9, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->strokeWidth:I

    int-to-float v9, v9

    add-float/2addr v2, v9

    if-eqz v20, :cond_3f

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getCenterX()F

    move-result v9

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getCenterY()F

    move-result v11

    iget-object v15, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->xRefP:Landroid/graphics/Paint;

    invoke-virtual {v8, v9, v11, v2, v15}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_3a

    :cond_3f
    iget-object v9, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v9}, Landroid/graphics/Paint;->getAlpha()I

    move-result v9

    cmpl-float v11, v10, v7

    if-eqz v11, :cond_40

    iget-object v11, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->paint:Landroid/graphics/Paint;

    int-to-float v15, v9

    mul-float v15, v15, v10

    float-to-int v15, v15

    invoke-virtual {v11, v15}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_40
    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getCenterX()F

    move-result v11

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getCenterY()F

    move-result v15

    iget-object v12, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v8, v11, v15, v2, v12}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    cmpl-float v2, v10, v7

    if-eqz v2, :cond_41

    iget-object v2, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_41
    :goto_3a
    const/high16 v2, 0x3f800000    # 1.0f

    goto/16 :goto_45

    :cond_42
    :goto_3b
    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getCenterX()F

    move-result v9

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getCenterY()F

    move-result v11

    invoke-static/range {v30 .. v30}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    int-to-float v12, v12

    iget-object v7, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->xRefP:Landroid/graphics/Paint;

    invoke-virtual {v8, v9, v11, v12, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    aget-object v7, v2, v6

    invoke-static {v7}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$300(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;

    move-result-object v7

    if-nez v7, :cond_43

    aget-object v7, v2, v6

    new-instance v9, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;

    invoke-static/range {v30 .. v30}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    invoke-static/range {v27 .. v27}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    invoke-direct {v9, v11, v12}, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;-><init>(II)V

    invoke-static {v7, v9}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$302(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;)Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;

    :cond_43
    iget v7, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->currentStyle:I

    const/16 v9, 0xa

    if-ne v7, v9, :cond_44

    aget-object v7, v2, v6

    invoke-static {v7}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$300(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;

    move-result-object v7

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_speakingText:I

    :goto_3c
    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v9

    mul-float v11, v10, v28

    float-to-int v11, v11

    invoke-static {v9, v11}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v9

    invoke-virtual {v7, v9}, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->setColor(I)V

    goto :goto_3d

    :cond_44
    aget-object v7, v2, v6

    invoke-static {v7}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$300(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;

    move-result-object v7

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_listeningText:I

    goto :goto_3c

    :goto_3d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    aget-object v7, v2, v6

    invoke-static {v7}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$900(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)J

    move-result-wide v27

    sub-long v27, v11, v27

    const-wide/16 v31, 0x64

    cmp-long v7, v27, v31

    if-lez v7, :cond_48

    aget-object v7, v2, v6

    invoke-static {v7, v11, v12}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$902(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;J)J

    iget v7, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->currentStyle:I

    const/16 v9, 0xa

    if-ne v7, v9, :cond_46

    aget-object v7, v2, v6

    iget-object v11, v7, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->participant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    if-eqz v11, :cond_45

    iget v11, v11, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->amplitude:F

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-lez v11, :cond_45

    invoke-static {v7}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$300(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;

    move-result-object v7

    iget-object v11, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->parent:Landroid/view/View;

    const/4 v12, 0x1

    invoke-virtual {v7, v12, v11}, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->setShowWaves(ZLandroid/view/View;)V

    aget-object v7, v2, v6

    iget-object v11, v7, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->participant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    iget v11, v11, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->amplitude:F

    mul-float v11, v11, v15

    invoke-static {v7}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$300(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;

    move-result-object v7

    float-to-double v11, v11

    :goto_3e
    invoke-virtual {v7, v11, v12}, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->setAmplitude(D)V

    goto :goto_3f

    :cond_45
    invoke-static {v7}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$300(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;

    move-result-object v7

    iget-object v11, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->parent:Landroid/view/View;

    const/4 v12, 0x0

    invoke-virtual {v7, v12, v11}, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->setShowWaves(ZLandroid/view/View;)V

    goto :goto_3f

    :cond_46
    sget v7, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v7}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v7

    int-to-long v11, v7

    aget-object v7, v2, v6

    invoke-static {v7}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$100(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)J

    move-result-wide v27

    sub-long v11, v11, v27

    const-wide/16 v27, 0x5

    cmp-long v7, v11, v27

    if-gtz v7, :cond_47

    aget-object v7, v2, v6

    invoke-static {v7}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$300(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;

    move-result-object v7

    iget-object v11, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->parent:Landroid/view/View;

    const/4 v12, 0x1

    invoke-virtual {v7, v12, v11}, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->setShowWaves(ZLandroid/view/View;)V

    aget-object v7, v2, v6

    invoke-static {v7}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$300(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;

    move-result-object v7

    iget-object v11, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->random:Ljava/util/Random;

    invoke-virtual {v11}, Ljava/util/Random;->nextInt()I

    move-result v11

    rem-int/lit8 v11, v11, 0x64

    int-to-double v11, v11

    goto :goto_3e

    :cond_47
    aget-object v7, v2, v6

    invoke-static {v7}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$300(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;

    move-result-object v7

    iget-object v11, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->parent:Landroid/view/View;

    const/4 v12, 0x0

    invoke-virtual {v7, v12, v11}, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->setShowWaves(ZLandroid/view/View;)V

    aget-object v7, v2, v6

    invoke-static {v7}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$300(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;

    move-result-object v7

    const-wide/16 v11, 0x0

    goto :goto_3e

    :cond_48
    const/16 v9, 0xa

    :goto_3f
    aget-object v7, v2, v6

    invoke-static {v7}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$300(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->update()V

    aget-object v7, v2, v6

    invoke-static {v7}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$300(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;

    move-result-object v7

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getCenterX()F

    move-result v11

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getCenterY()F

    move-result v12

    iget-object v15, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->parent:Landroid/view/View;

    invoke-virtual {v7, v8, v11, v12, v15}, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->draw(Landroid/graphics/Canvas;FFLandroid/view/View;)V

    aget-object v2, v2, v6

    :goto_40
    invoke-static {v2}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$300(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->getAvatarScale()F

    move-result v2

    goto/16 :goto_45

    :cond_49
    const/4 v5, 0x5

    goto/16 :goto_39

    :goto_41
    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getCenterX()F

    move-result v7

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getCenterY()F

    move-result v11

    const/high16 v12, 0x41500000    # 13.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    int-to-float v12, v12

    iget-object v9, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->xRefP:Landroid/graphics/Paint;

    invoke-virtual {v8, v7, v11, v12, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    aget-object v7, v2, v6

    invoke-static {v7}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$300(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;

    move-result-object v7

    if-nez v7, :cond_4b

    iget v7, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->currentStyle:I

    if-ne v7, v5, :cond_4a

    aget-object v7, v2, v6

    new-instance v9, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;

    const/high16 v11, 0x41600000    # 14.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    invoke-direct {v9, v11, v12}, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;-><init>(II)V

    :goto_42
    invoke-static {v7, v9}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$302(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;)Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;

    goto :goto_43

    :cond_4a
    aget-object v7, v2, v6

    new-instance v9, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;

    invoke-static/range {v30 .. v30}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    invoke-static/range {v27 .. v27}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    invoke-direct {v9, v11, v12}, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;-><init>(II)V

    goto :goto_42

    :cond_4b
    :goto_43
    iget v7, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->currentStyle:I

    if-ne v7, v5, :cond_4c

    aget-object v7, v2, v6

    invoke-static {v7}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$300(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;

    move-result-object v7

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_speakingText:I

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v9

    mul-float v11, v10, v28

    float-to-int v11, v11

    invoke-static {v9, v11}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v9

    invoke-virtual {v7, v9}, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->setColor(I)V

    :cond_4c
    aget-object v7, v2, v6

    iget-object v9, v7, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->participant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    if-eqz v9, :cond_4d

    iget v9, v9, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->amplitude:F

    const/4 v11, 0x0

    cmpl-float v9, v9, v11

    if-lez v9, :cond_4d

    invoke-static {v7}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$300(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;

    move-result-object v7

    iget-object v9, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->parent:Landroid/view/View;

    const/4 v12, 0x1

    invoke-virtual {v7, v12, v9}, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->setShowWaves(ZLandroid/view/View;)V

    aget-object v7, v2, v6

    iget-object v9, v7, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->participant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    iget v9, v9, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->amplitude:F

    mul-float v9, v9, v15

    invoke-static {v7}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$300(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;

    move-result-object v7

    float-to-double v11, v9

    invoke-virtual {v7, v11, v12}, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->setAmplitude(D)V

    const/4 v11, 0x0

    goto :goto_44

    :cond_4d
    invoke-static {v7}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$300(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;

    move-result-object v7

    iget-object v9, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->parent:Landroid/view/View;

    const/4 v11, 0x0

    invoke-virtual {v7, v11, v9}, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->setShowWaves(ZLandroid/view/View;)V

    :goto_44
    iget v7, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->currentStyle:I

    if-ne v7, v5, :cond_4e

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v27

    aget-object v7, v2, v6

    iget-object v7, v7, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->participant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    iget-wide v11, v7, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->lastSpeakTime:J

    sub-long v27, v27, v11

    const-wide/16 v11, 0x1f4

    cmp-long v7, v27, v11

    if-lez v7, :cond_4e

    iget-object v7, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->updateDelegate:Ljava/lang/Runnable;

    invoke-interface {v7}, Ljava/lang/Runnable;->run()V

    :cond_4e
    aget-object v7, v2, v6

    invoke-static {v7}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$300(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->update()V

    iget v7, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->currentStyle:I

    if-ne v7, v5, :cond_4f

    aget-object v7, v2, v6

    invoke-static {v7}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$300(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;

    move-result-object v7

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getCenterX()F

    move-result v9

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getCenterY()F

    move-result v11

    iget-object v12, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->parent:Landroid/view/View;

    invoke-virtual {v7, v8, v9, v11, v12}, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->draw(Landroid/graphics/Canvas;FFLandroid/view/View;)V

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/AvatarsDrawable;->invalidate()V

    :cond_4f
    aget-object v2, v2, v6

    goto/16 :goto_40

    :goto_45
    invoke-virtual {v3, v10}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v9, v2, v7

    if-eqz v9, :cond_50

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getCenterX()F

    move-result v9

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getCenterY()F

    move-result v10

    invoke-virtual {v8, v2, v2, v9, v10}, Landroid/graphics/Canvas;->scale(FFFF)V

    invoke-virtual {v3, v8}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_46

    :cond_50
    invoke-virtual {v3, v8}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    :goto_46
    iget v9, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->maxX:F

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getCenterX()F

    move-result v10

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()F

    move-result v3

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v3, v11

    mul-float v3, v3, v2

    add-float/2addr v10, v3

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->maxX:F

    if-eqz v4, :cond_51

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_51
    :goto_47
    add-int/lit8 v1, v1, 0x1

    const/4 v12, 0x2

    goto/16 :goto_26

    :cond_52
    const/4 v5, 0x5

    const/high16 v11, 0x40000000    # 2.0f

    add-int/lit8 v6, v6, -0x1

    const/4 v12, 0x2

    goto/16 :goto_25

    :cond_53
    if-eqz v20, :cond_54

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_54
    return-void
.end method

.method public reset()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v0, v2}, Lorg/telegram/ui/Components/AvatarsDrawable;->setObject(IILorg/telegram/tgnet/TLObject;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setAlpha(F)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->overrideAlpha:F

    return-void
.end method

.method public setAvatarsTextSize(I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->currentStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, v1, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->setTextSize(I)V

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    iget-object v1, v1, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->setTextSize(I)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setCentered(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->centered:Z

    return-void
.end method

.method public setCount(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->count:I

    iget-object p1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->parent:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setDelegate(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->updateDelegate:Ljava/lang/Runnable;

    return-void
.end method

.method public setObject(IILorg/telegram/tgnet/TLObject;)V
    .locals 23

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    iget-object v3, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v3, v3, p1

    const-wide/16 v4, 0x0

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$002(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;J)J

    iget-object v3, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v3, v3, p1

    const/4 v6, 0x0

    iput-object v6, v3, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->participant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    if-nez v2, :cond_0

    invoke-static {v3}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$800(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    invoke-virtual {v1, v6}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/AvatarsDrawable;->invalidate()V

    return-void

    :cond_0
    const-wide/16 v7, -0x1

    invoke-static {v3, v7, v8}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$102(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;J)J

    iget-object v3, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v3, v3, p1

    invoke-static {v3, v2}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$702(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;Lorg/telegram/tgnet/TLObject;)Lorg/telegram/tgnet/TLObject;

    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v3, :cond_5

    move-object v3, v2

    check-cast v3, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    iget-object v9, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v9, v9, p1

    iput-object v3, v9, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->participant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    iget-object v9, v3, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v9}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v9

    invoke-static {v9, v10}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v11

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v11

    iget-object v12, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v12, v12, p1

    iget-object v12, v12, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v12, v1, v11}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILorg/telegram/tgnet/TLRPC$User;)V

    move-object v12, v6

    goto :goto_1

    :cond_1
    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v11

    neg-long v12, v9

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v11

    iget-object v12, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v12, v12, p1

    iget-object v12, v12, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v12, v1, v11}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILorg/telegram/tgnet/TLRPC$Chat;)V

    move-object v12, v11

    move-object v11, v6

    :goto_1
    iget v13, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->currentStyle:I

    const/4 v14, 0x4

    if-ne v13, v14, :cond_4

    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/AccountInstance;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v13

    cmp-long v1, v9, v13

    if-nez v1, :cond_2

    iget-object v1, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v1, v1, p1

    invoke-static {v1, v4, v5}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$102(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;J)J

    goto :goto_4

    :cond_2
    iget-boolean v1, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->isInCall:Z

    if-eqz v1, :cond_3

    iget-object v1, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v1, v1, p1

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->lastActiveDate:J

    :goto_2
    invoke-static {v1, v3, v4}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$102(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;J)J

    goto :goto_4

    :cond_3
    iget-object v1, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v1, v1, p1

    :goto_3
    iget v3, v3, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->active_date:I

    int-to-long v3, v3

    goto :goto_2

    :cond_4
    iget-object v1, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v1, v1, p1

    goto :goto_3

    :goto_4
    iget-object v1, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v1, v1, p1

    invoke-static {v1, v9, v10}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$002(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;J)J

    goto/16 :goto_6

    :cond_5
    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$User;

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v3, :cond_7

    move-object v11, v2

    check-cast v11, Lorg/telegram/tgnet/TLRPC$User;

    iget-boolean v3, v11, Lorg/telegram/tgnet/TLRPC$User;->self:Z

    if-eqz v3, :cond_6

    iget-boolean v3, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->showSavedMessages:Z

    if-eqz v3, :cond_6

    iget-object v1, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v1, v1, p1

    iget-object v1, v1, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v1, v8}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v1, v1, p1

    iget-object v1, v1, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const v3, 0x3f19999a    # 0.6f

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/AvatarDrawable;->setScaleSize(F)V

    goto :goto_5

    :cond_6
    iget-object v3, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v3, v3, p1

    iget-object v3, v3, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    iget-object v3, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v3, v3, p1

    iget-object v3, v3, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/AvatarDrawable;->setScaleSize(F)V

    iget-object v3, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v3, v3, p1

    iget-object v3, v3, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v3, v1, v11}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILorg/telegram/tgnet/TLRPC$User;)V

    :goto_5
    iget-object v1, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v1, v1, p1

    iget-wide v3, v11, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v1, v3, v4}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$002(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;J)J

    move-object v12, v6

    goto :goto_6

    :cond_7
    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v3, :cond_8

    move-object v12, v2

    check-cast v12, Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v3, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v3, v3, p1

    iget-object v3, v3, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    iget-object v3, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v3, v3, p1

    iget-object v3, v3, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/AvatarDrawable;->setScaleSize(F)V

    iget-object v3, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v3, v3, p1

    iget-object v3, v3, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v3, v1, v12}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILorg/telegram/tgnet/TLRPC$Chat;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v1, v1, p1

    iget-wide v3, v12, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v3, v3

    invoke-static {v1, v3, v4}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$002(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;J)J

    move-object v11, v6

    goto :goto_6

    :cond_8
    move-object v11, v6

    move-object v12, v11

    :goto_6
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/AvatarsDrawable;->getSize()I

    move-result v1

    instance-of v3, v2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz v3, :cond_a

    check-cast v2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-object v3, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v3, v3, p1

    iget v4, v2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    int-to-long v4, v4

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$002(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;J)J

    iget-object v3, v2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const-string v5, "_"

    const/16 v9, 0x32

    if-eqz v4, :cond_9

    iget-object v3, v4, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-static {v3, v9, v8, v6, v7}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZLorg/telegram/tgnet/TLRPC$PhotoSize;Z)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v3

    iget-object v4, v2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-static {v4, v9, v8, v3, v8}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZLorg/telegram/tgnet/TLRPC$PhotoSize;Z)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v4

    iget-object v6, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v6, v6, p1

    invoke-static {v6}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$800(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v13

    iget-object v6, v2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v4, v6}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v14

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    iget-object v4, v2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v3, v4}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v16

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_7
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v20, 0x0

    const/16 v22, 0x0

    const-wide/16 v18, 0x0

    move-object/from16 v21, v2

    invoke-virtual/range {v13 .. v22}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Object;I)V

    goto/16 :goto_8

    :cond_9
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v3, :cond_d

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-static {v3, v9, v8, v6, v7}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZLorg/telegram/tgnet/TLRPC$PhotoSize;Z)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v3

    iget-object v4, v2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-static {v4, v9, v8, v3, v8}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZLorg/telegram/tgnet/TLRPC$PhotoSize;Z)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v4

    iget-object v6, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v6, v6, p1

    invoke-static {v6}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$800(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v13

    iget-object v6, v2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-static {v4, v6}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v14

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    iget-object v4, v2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-static {v3, v4}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v16

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_7

    :cond_a
    if-eqz v11, :cond_c

    iget-boolean v2, v11, Lorg/telegram/tgnet/TLRPC$User;->self:Z

    if-eqz v2, :cond_b

    iget-boolean v2, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->showSavedMessages:Z

    if-eqz v2, :cond_b

    iget-object v2, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v2, v2, p1

    invoke-static {v2}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$800(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v3, v3, p1

    iget-object v3, v3, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    goto :goto_8

    :cond_b
    iget-object v2, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v2, v2, p1

    invoke-static {v2}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$800(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v3, v3, p1

    iget-object v3, v3, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v2, v11, v3}, Lorg/telegram/messenger/ImageReceiver;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Landroid/graphics/drawable/Drawable;)V

    goto :goto_8

    :cond_c
    iget-object v2, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v2, v2, p1

    invoke-static {v2}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$800(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v3, v3, p1

    iget-object v3, v3, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v2, v12, v3}, Lorg/telegram/messenger/ImageReceiver;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Landroid/graphics/drawable/Drawable;)V

    :cond_d
    :goto_8
    iget-object v2, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v2, v2, p1

    invoke-static {v2}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$800(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    div-int/lit8 v3, v1, 0x2

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    iget-object v2, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v2, v2, p1

    invoke-static {v2}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$800(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    int-to-float v1, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, v1, v1}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    goto/16 :goto_0
.end method

.method public setShowSavedMessages(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->showSavedMessages:Z

    return-void
.end method

.method public setSize(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->overrideSize:I

    return-void
.end method

.method public setStepFactor(F)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->overrideSizeStepFactor:F

    return-void
.end method

.method public setStyle(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->currentStyle:I

    invoke-direct {p0}, Lorg/telegram/ui/Components/AvatarsDrawable;->invalidate()V

    return-void
.end method

.method public setTransitionProgress(F)V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionInProgress:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionProgress:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionProgress:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/Components/AvatarsDrawable;->swapStates()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionInProgress:Z

    :cond_0
    return-void
.end method

.method public updateAfterTransitionEnd()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->updateAfterTransition:Z

    return-void
.end method
