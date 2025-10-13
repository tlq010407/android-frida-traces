.class Lorg/telegram/ui/Components/PasscodeView$InnerAnimator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/PasscodeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InnerAnimator"
.end annotation


# instance fields
.field private animatorSet:Landroid/animation/AnimatorSet;

.field private startRadius:F


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/Components/PasscodeView$1;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/PasscodeView$InnerAnimator;-><init>()V

    return-void
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Components/PasscodeView$InnerAnimator;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/PasscodeView$InnerAnimator;->startRadius:F

    return p0
.end method

.method static synthetic access$2202(Lorg/telegram/ui/Components/PasscodeView$InnerAnimator;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/PasscodeView$InnerAnimator;->startRadius:F

    return p1
.end method

.method static synthetic access$2300(Lorg/telegram/ui/Components/PasscodeView$InnerAnimator;)Landroid/animation/AnimatorSet;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/PasscodeView$InnerAnimator;->animatorSet:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$2302(Lorg/telegram/ui/Components/PasscodeView$InnerAnimator;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/PasscodeView$InnerAnimator;->animatorSet:Landroid/animation/AnimatorSet;

    return-object p1
.end method
