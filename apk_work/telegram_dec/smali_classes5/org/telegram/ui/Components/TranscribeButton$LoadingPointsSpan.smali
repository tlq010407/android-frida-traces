.class public Lorg/telegram/ui/Components/TranscribeButton$LoadingPointsSpan;
.super Landroid/text/style/ImageSpan;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/TranscribeButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoadingPointsSpan"
.end annotation


# static fields
.field private static drawable:Lorg/telegram/ui/Components/TranscribeButton$LoadingPointsDrawable;


# direct methods
.method public constructor <init>()V
    .locals 6

    sget-object v0, Lorg/telegram/ui/Components/TranscribeButton$LoadingPointsSpan;->drawable:Lorg/telegram/ui/Components/TranscribeButton$LoadingPointsDrawable;

    if-nez v0, :cond_0

    new-instance v0, Lorg/telegram/ui/Components/TranscribeButton$LoadingPointsDrawable;

    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->chat_msgTextPaint:Landroid/text/TextPaint;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/TranscribeButton$LoadingPointsDrawable;-><init>(Landroid/text/TextPaint;)V

    sput-object v0, Lorg/telegram/ui/Components/TranscribeButton$LoadingPointsSpan;->drawable:Lorg/telegram/ui/Components/TranscribeButton$LoadingPointsDrawable;

    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->chat_msgTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    const v2, 0x3f63d70a    # 0.89f

    mul-float v0, v0, v2

    const v2, 0x3ca3d70a    # 0.02f

    mul-float v2, v2, v0

    float-to-int v2, v2

    invoke-virtual {p0}, Landroid/text/style/DynamicDrawableSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    float-to-int v4, v0

    const/high16 v5, 0x3fa00000    # 1.25f

    mul-float v0, v0, v5

    float-to-int v0, v0

    add-int/2addr v0, v2

    invoke-virtual {v3, v1, v2, v4, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 5

    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    const v1, 0x3f63d70a    # 0.89f

    mul-float v0, v0, v1

    const v1, 0x3ca3d70a    # 0.02f

    mul-float v1, v1, v0

    float-to-int v1, v1

    invoke-virtual {p0}, Landroid/text/style/DynamicDrawableSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    float-to-int v3, v0

    const/high16 v4, 0x3fa00000    # 1.25f

    mul-float v0, v0, v4

    float-to-int v0, v0

    add-int/2addr v0, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v1, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-super {p0, p1}, Landroid/text/style/ImageSpan;->updateDrawState(Landroid/text/TextPaint;)V

    return-void
.end method
