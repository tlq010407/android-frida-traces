.class Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Cells/ChatMessageCell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BotButton"
.end annotation


# instance fields
.field private angle:I

.field private button:Lorg/telegram/tgnet/TLRPC$KeyboardButton;

.field private buttonCustom:Lorg/telegram/messenger/BotInlineKeyboard$ButtonCustom;

.field private height:I

.field private iconDrawable:Landroid/graphics/drawable/Drawable;

.field private isInviteButton:Z

.field private isLocked:Z

.field private isSeparator:Z

.field private lastUpdateTime:J

.field private loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

.field private positionFlags:I

.field private pressAnimator:Landroid/animation/ValueAnimator;

.field private pressT:F

.field private pressed:Z

.field private progressAlpha:F

.field private selectorDrawable:Landroid/graphics/drawable/Drawable;

.field final synthetic this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

.field private title:Lorg/telegram/ui/Components/Text;

.field private width:F

.field private x:F

.field private y:I


# direct methods
.method public static synthetic $r8$lambda$zYjssnBer-J3QOxt_bPte16x_vs(Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;->lambda$setPressed$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private constructor <init>(Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/ui/Cells/ChatMessageCell$1;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;-><init>(Lorg/telegram/ui/Cells/ChatMessageCell;)V

    return-void
.end method

.method static synthetic access$002(Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;->pressAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;)Lorg/telegram/tgnet/TLRPC$KeyboardButton;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;->button:Lorg/telegram/tgnet/TLRPC$KeyboardButton;

    return-object p0
.end method

.method static synthetic access$1102(Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;Lorg/telegram/tgnet/TLRPC$KeyboardButton;)Lorg/telegram/tgnet/TLRPC$KeyboardButton;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;->button:Lorg/telegram/tgnet/TLRPC$KeyboardButton;

    return-object p1
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;->y:I

    return p0
.end method

.method static synthetic access$1902(Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;->y:I

    return p1
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;->x:F

    return p0
.end method

.method static synthetic access$2002(Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;->x:F

    return p1
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;->width:F

    return p0
.end method

.method static synthetic access$2102(Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;->width:F

    return p1
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;->height:I

    return p0
.end method

.method static synthetic access$2202(Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;->height:I

    return p1
.end method

.method static synthetic access$2300(Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$2302(Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$2400(Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;->isLocked:Z

    return p0
.end method

.method static synthetic access$2402(Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;->isLocked:Z

    return p1
.end method

.method static synthetic access$2500(Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;->setPressed(Z)V

    return-void
.end method

.method static synthetic access$2600(Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;)Lorg/telegram/messenger/BotInlineKeyboard$ButtonCustom;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;->buttonCustom:Lorg/telegram/messenger/BotInlineKeyboard$ButtonCustom;

    return-object p0
.end method

.method static synthetic access$2602(Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;Lorg/telegram/messenger/BotInlineKeyboard$ButtonCustom;)Lorg/telegram/messenger/BotInlineKeyboard$ButtonCustom;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;->buttonCustom:Lorg/telegram/messenger/BotInlineKeyboard$ButtonCustom;

    return-object p1
.end method

.method static synthetic access$4200(Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;->iconDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$4202(Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;->iconDrawable:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$4300(Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;->progressAlpha:F

    return p0
.end method

.method static synthetic access$4302(Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;->progressAlpha:F

    return p1
.end method

.method static synthetic access$4400(Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;->angle:I

    return p0
.end method

.method static synthetic access$4402(Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;->angle:I

    return p1
.end method

.method static synthetic access$4500(Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;)J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;->lastUpdateTime:J

    return-wide v0
.end method

.method static synthetic access$4502(Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;J)J
    .locals 0

    iput-wide p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;->lastUpdateTime:J

    return-wide p1
.end method

.method static synthetic access$4676(Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;I)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;->positionFlags:I

    or-int/2addr p1, v0

    iput p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;->positionFlags:I

    return p1
.end method

.method static synthetic access$4700(Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;)Lorg/telegram/ui/Components/Text;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;->title:Lorg/telegram/ui/Components/Text;

    return-object p0
.end method

.method static synthetic access$4702(Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;Lorg/telegram/ui/Components/Text;)Lorg/telegram/ui/Components/Text;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;->title:Lorg/telegram/ui/Components/Text;

    return-object p1
.end method

.method static synthetic access$4800(Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;->isInviteButton:Z

    return p0
.end method

.method static synthetic access$4802(Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;->isInviteButton:Z

    return p1
.end method

.method static synthetic access$4900(Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;->isSeparator:Z

    return p0
.end method

.method static synthetic access$4902(Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;->isSeparator:Z

    return p1
.end method

.method static synthetic access$6700(Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;)F
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;->getPressScale()F

    move-result p0

    return p0
.end method

.method static synthetic access$6800(Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;)Lorg/telegram/ui/Components/LoadingDrawable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    return-object p0
.end method

.method static synthetic access$6802(Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;Lorg/telegram/ui/Components/LoadingDrawable;)Lorg/telegram/ui/Components/LoadingDrawable;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    return-object p1
.end method

.method private getPressScale()F
    .locals 4

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;->pressed:Z

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;->pressT:F

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_0

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->screenRefreshRate:F

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v3, v2

    const/high16 v2, 0x42200000    # 40.0f

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    add-float/2addr v0, v2

    iput v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;->pressT:F

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;->pressT:F

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->invalidateOutbounds()V

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;->pressT:F

    sub-float/2addr v1, v0

    const v0, 0x3d23d70a    # 0.04f

    mul-float v1, v1, v0

    const v0, 0x3f75c28f    # 0.96f

    add-float/2addr v1, v0

    return v1
.end method

.method private synthetic lambda$setPressed$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;->pressT:F

    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->invalidateOutbounds()V

    return-void
.end method

.method private setPressed(Z)V
    .locals 3

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;->pressed:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;->pressed:Z

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->invalidateOutbounds()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;->pressAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;->pressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    if-nez p1, :cond_1

    iget p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;->pressT:F

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput v0, v1, p1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;->pressAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/Cells/ChatMessageCell$BotButton$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Cells/ChatMessageCell$BotButton$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;->pressAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/Cells/ChatMessageCell$BotButton$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Cells/ChatMessageCell$BotButton$1;-><init>(Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;->pressAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {v0, v1}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;->pressAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x15e

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;->pressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_1
    return-void
.end method


# virtual methods
.method public hasPositionFlag(I)Z
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;->positionFlags:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
