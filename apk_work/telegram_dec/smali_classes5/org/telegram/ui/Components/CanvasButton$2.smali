.class Lorg/telegram/ui/Components/CanvasButton$2;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/CanvasButton;-><init>(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/CanvasButton;

.field final synthetic val$maskPaint2:Landroid/graphics/Paint;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/CanvasButton;Landroid/graphics/Paint;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/CanvasButton$2;->this$0:Lorg/telegram/ui/Components/CanvasButton;

    iput-object p2, p0, Lorg/telegram/ui/Components/CanvasButton$2;->val$maskPaint2:Landroid/graphics/Paint;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/CanvasButton$2;->this$0:Lorg/telegram/ui/Components/CanvasButton;

    iget v1, v0, Lorg/telegram/ui/Components/CanvasButton;->usingRectCount:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    iget-object v1, v0, Lorg/telegram/ui/Components/CanvasButton;->maskPaint:Landroid/graphics/Paint;

    :goto_0
    invoke-static {v0, p1, v1}, Lorg/telegram/ui/Components/CanvasButton;->access$100(Lorg/telegram/ui/Components/CanvasButton;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/CanvasButton$2;->val$maskPaint2:Landroid/graphics/Paint;

    goto :goto_0

    :goto_1
    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
