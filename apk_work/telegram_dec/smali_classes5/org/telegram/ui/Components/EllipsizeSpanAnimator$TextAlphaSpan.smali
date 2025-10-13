.class public Lorg/telegram/ui/Components/EllipsizeSpanAnimator$TextAlphaSpan;
.super Landroid/text/style/CharacterStyle;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/EllipsizeSpanAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextAlphaSpan"
.end annotation


# instance fields
.field private alpha:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 0
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/EllipsizeSpanAnimator$TextAlphaSpan;->alpha:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    iput p1, p0, Lorg/telegram/ui/Components/EllipsizeSpanAnimator$TextAlphaSpan;->alpha:I

    return-void
.end method


# virtual methods
.method public setAlpha(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/EllipsizeSpanAnimator$TextAlphaSpan;->alpha:I

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 3

    invoke-virtual {p1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Components/EllipsizeSpanAnimator$TextAlphaSpan;->alpha:I

    int-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    mul-float v0, v0, v1

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method
