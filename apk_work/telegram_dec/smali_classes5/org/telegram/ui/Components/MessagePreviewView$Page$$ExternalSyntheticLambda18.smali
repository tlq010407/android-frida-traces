.class public final synthetic Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/MessagePreviewView$Page;

.field public final synthetic f$1:I

.field public final synthetic f$2:F


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;IF)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda18;->f$0:Lorg/telegram/ui/Components/MessagePreviewView$Page;

    iput p2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda18;->f$1:I

    iput p3, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda18;->f$2:F

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda18;->f$0:Lorg/telegram/ui/Components/MessagePreviewView$Page;

    iget v1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda18;->f$1:I

    iget v2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda18;->f$2:F

    invoke-static {v0, v1, v2, p1}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->$r8$lambda$yDWULFenTJukJcUAnSnGqfPouM8(Lorg/telegram/ui/Components/MessagePreviewView$Page;IFLandroid/animation/ValueAnimator;)V

    return-void
.end method
