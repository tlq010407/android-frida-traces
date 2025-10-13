.class Lorg/telegram/ui/Components/Premium/LimitPreviewView$TextViewHolder;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/Premium/LimitPreviewView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextViewHolder"
.end annotation


# instance fields
.field private final isLeft:Z

.field private final paint:Landroid/graphics/Paint;

.field final synthetic this$0:Lorg/telegram/ui/Components/Premium/LimitPreviewView;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/Premium/LimitPreviewView;Landroid/content/Context;Z)V
    .locals 1

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$TextViewHolder;->this$0:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$TextViewHolder;->paint:Landroid/graphics/Paint;

    const/4 p2, 0x2

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    new-instance p2, Landroid/graphics/PorterDuffXfermode;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, v0}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iput-boolean p3, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$TextViewHolder;->isLeft:Z

    return-void
.end method


# virtual methods
.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 8

    instance-of v0, p2, Landroid/widget/TextView;

    if-eqz v0, :cond_4

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p3

    iget-object p4, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$TextViewHolder;->this$0:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    invoke-static {p4}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->access$600(Lorg/telegram/ui/Components/Premium/LimitPreviewView;)F

    move-result p4

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float p4, p4, v0

    if-eqz p4, :cond_0

    iget-object p4, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$TextViewHolder;->this$0:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    invoke-static {p4}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->access$600(Lorg/telegram/ui/Components/Premium/LimitPreviewView;)F

    move-result p4

    cmpg-float p4, p4, v3

    if-gtz p4, :cond_0

    iget-boolean p4, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$TextViewHolder;->isLeft:Z

    if-eqz p4, :cond_0

    const/4 p4, 0x1

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$TextViewHolder;->this$0:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    invoke-static {v0}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->access$600(Lorg/telegram/ui/Components/Premium/LimitPreviewView;)F

    move-result v0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$TextViewHolder;->isLeft:Z

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    if-nez p4, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    iget-object p4, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$TextViewHolder;->this$0:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    invoke-static {p4}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->access$100(Lorg/telegram/ui/Components/Premium/LimitPreviewView;)Z

    move-result p4

    if-eqz p4, :cond_3

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p4

    int-to-float v1, p4

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p4

    int-to-float v2, p4

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result p4

    int-to-float v3, p4

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result p4

    int-to-float v4, p4

    iget-object v5, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$TextViewHolder;->paint:Landroid/graphics/Paint;

    const/16 v6, 0x1f

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    iget-object p4, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$TextViewHolder;->this$0:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    invoke-static {p4}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->access$200(Lorg/telegram/ui/Components/Premium/LimitPreviewView;)Lorg/telegram/ui/Components/Premium/LimitPreviewView$DarkGradientProvider;

    move-result-object p4

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v2

    add-float/2addr v1, v2

    invoke-interface {p4, v0, v1}, Lorg/telegram/ui/Components/Premium/LimitPreviewView$DarkGradientProvider;->setDarkGradientLocation(FF)Landroid/graphics/Paint;

    move-result-object v7

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p4

    int-to-float v3, p4

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p4

    int-to-float v4, p4

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result p4

    int-to-float v5, p4

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result p2

    int-to-float v6, p2

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_3
    return p3

    :cond_4
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method
