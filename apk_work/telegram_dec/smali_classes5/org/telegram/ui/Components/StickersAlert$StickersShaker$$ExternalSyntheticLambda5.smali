.class public final synthetic Lorg/telegram/ui/Components/StickersAlert$StickersShaker$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/StickersAlert$StickersShaker;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/StickersAlert$StickersShaker;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/StickersAlert$StickersShaker$$ExternalSyntheticLambda5;->f$0:Lorg/telegram/ui/Components/StickersAlert$StickersShaker;

    iput p2, p0, Lorg/telegram/ui/Components/StickersAlert$StickersShaker$$ExternalSyntheticLambda5;->f$1:I

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$StickersShaker$$ExternalSyntheticLambda5;->f$0:Lorg/telegram/ui/Components/StickersAlert$StickersShaker;

    iget v1, p0, Lorg/telegram/ui/Components/StickersAlert$StickersShaker$$ExternalSyntheticLambda5;->f$1:I

    invoke-static {v0, v1, p1}, Lorg/telegram/ui/Components/StickersAlert$StickersShaker;->$r8$lambda$jKrvSJk5DDM7O9gOCpa8p-n1cdk(Lorg/telegram/ui/Components/StickersAlert$StickersShaker;ILandroid/animation/ValueAnimator;)V

    return-void
.end method
