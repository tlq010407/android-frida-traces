.class public final synthetic Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;II)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$$ExternalSyntheticLambda5;->f$0:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    iput p2, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$$ExternalSyntheticLambda5;->f$1:I

    iput p3, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$$ExternalSyntheticLambda5;->f$2:I

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$$ExternalSyntheticLambda5;->f$0:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    iget v1, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$$ExternalSyntheticLambda5;->f$1:I

    iget v2, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$$ExternalSyntheticLambda5;->f$2:I

    invoke-static {v0, v1, v2, p1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->$r8$lambda$5Xa8Uhjvez-F5loJshRleRQfmEQ(Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;IILandroid/animation/ValueAnimator;)V

    return-void
.end method
