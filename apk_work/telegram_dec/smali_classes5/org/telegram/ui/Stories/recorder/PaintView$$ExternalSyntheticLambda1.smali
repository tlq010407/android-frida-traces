.class public final synthetic Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Stories/recorder/PaintView;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Stories/recorder/PaintView;II)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/Stories/recorder/PaintView;

    iput p2, p0, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda1;->f$1:I

    iput p3, p0, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda1;->f$2:I

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/Stories/recorder/PaintView;

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda1;->f$1:I

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda1;->f$2:I

    invoke-static {v0, v1, v2, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->$r8$lambda$VTwXdQ1aFFz1FfgczXN5Bap14IQ(Lorg/telegram/ui/Stories/recorder/PaintView;IILandroid/animation/ValueAnimator;)V

    return-void
.end method
