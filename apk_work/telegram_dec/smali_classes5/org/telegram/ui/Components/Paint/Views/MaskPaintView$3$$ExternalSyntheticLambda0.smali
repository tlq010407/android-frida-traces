.class public final synthetic Lorg/telegram/ui/Components/Paint/Views/MaskPaintView$3$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView$3$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView$3$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;->onRenderViewAlphaUpdate(Landroid/animation/ValueAnimator;)V

    return-void
.end method
