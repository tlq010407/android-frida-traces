.class public final synthetic Lorg/telegram/ui/Components/AnimatedEmojiSpan$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

.field public final synthetic f$1:F

.field public final synthetic f$2:F

.field public final synthetic f$3:F

.field public final synthetic f$4:F


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/AnimatedEmojiSpan;FFFF)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$$ExternalSyntheticLambda2;->f$0:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    iput p2, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$$ExternalSyntheticLambda2;->f$1:F

    iput p3, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$$ExternalSyntheticLambda2;->f$2:F

    iput p4, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$$ExternalSyntheticLambda2;->f$3:F

    iput p5, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$$ExternalSyntheticLambda2;->f$4:F

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$$ExternalSyntheticLambda2;->f$0:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    iget v1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$$ExternalSyntheticLambda2;->f$1:F

    iget v2, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$$ExternalSyntheticLambda2;->f$2:F

    iget v3, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$$ExternalSyntheticLambda2;->f$3:F

    iget v4, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$$ExternalSyntheticLambda2;->f$4:F

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->$r8$lambda$ccEuweyqzEp3QxMhza_oTsktDNs(Lorg/telegram/ui/Components/AnimatedEmojiSpan;FFFFLandroid/animation/ValueAnimator;)V

    return-void
.end method
