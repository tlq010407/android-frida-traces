.class Lorg/telegram/ui/Components/RLottieImageView$2;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(Lorg/telegram/tgnet/TLRPC$Document;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/RLottieImageView;

.field final synthetic val$h:I

.field final synthetic val$w:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/RLottieImageView;II)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/RLottieImageView$2;->this$0:Lorg/telegram/ui/Components/RLottieImageView;

    iput p2, p0, Lorg/telegram/ui/Components/RLottieImageView$2;->val$w:I

    iput p3, p0, Lorg/telegram/ui/Components/RLottieImageView$2;->val$h:I

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    iget v2, p0, Lorg/telegram/ui/Components/RLottieImageView$2;->val$w:I

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    iget v3, p0, Lorg/telegram/ui/Components/RLottieImageView$2;->val$h:I

    int-to-float v3, v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    iget v4, p0, Lorg/telegram/ui/Components/RLottieImageView$2;->val$w:I

    int-to-float v4, v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    iget v5, p0, Lorg/telegram/ui/Components/RLottieImageView$2;->val$h:I

    int-to-float v5, v5

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, p0, Lorg/telegram/ui/Components/RLottieImageView$2;->this$0:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-static {v1}, Lorg/telegram/ui/Components/RLottieImageView;->access$000(Lorg/telegram/ui/Components/RLottieImageView;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieImageView$2;->this$0:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-static {v0}, Lorg/telegram/ui/Components/RLottieImageView;->access$000(Lorg/telegram/ui/Components/RLottieImageView;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public setAlpha(I)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieImageView$2;->this$0:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-static {v0}, Lorg/telegram/ui/Components/RLottieImageView;->access$000(Lorg/telegram/ui/Components/RLottieImageView;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    int-to-float p1, p1

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr p1, v1

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieImageView$2;->this$0:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-static {v0}, Lorg/telegram/ui/Components/RLottieImageView;->access$000(Lorg/telegram/ui/Components/RLottieImageView;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method
