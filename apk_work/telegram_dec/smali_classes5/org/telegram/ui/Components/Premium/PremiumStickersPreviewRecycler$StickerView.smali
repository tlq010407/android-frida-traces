.class Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StickerView"
.end annotation


# instance fields
.field animateImage:Z

.field private animateImageProgress:F

.field centerImage:Lorg/telegram/messenger/ImageReceiver;

.field document:Lorg/telegram/tgnet/TLRPC$Document;

.field drawEffect:Z

.field effectImage:Lorg/telegram/messenger/ImageReceiver;

.field private effectProgress:F

.field public progress:F

.field final synthetic this$0:Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;

.field update:Z

.field view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;->this$0:Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;->animateImage:Z

    new-instance v0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView$1;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView$1;-><init>(Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;Landroid/content/Context;Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;->view:Landroid/view/View;

    new-instance p1, Lorg/telegram/messenger/ImageReceiver;

    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;->view:Landroid/view/View;

    invoke-direct {p1, p2}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    new-instance p1, Lorg/telegram/messenger/ImageReceiver;

    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;->view:Landroid/view/View;

    invoke-direct {p1, p2}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;->effectImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/ImageReceiver;->setAllowStartAnimation(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;->effectImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/ImageReceiver;->setAllowStartAnimation(Z)V

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;->view:Landroid/view/View;

    const/4 p2, -0x2

    const/16 v0, 0x15

    const/4 v1, -0x1

    invoke-static {v1, p2, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;->effectProgress:F

    return p0
.end method

.method static synthetic access$402(Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;->effectProgress:F

    return p1
.end method

.method static synthetic access$416(Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;F)F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;->effectProgress:F

    add-float/2addr v0, p1

    iput v0, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;->effectProgress:F

    return v0
.end method

.method static synthetic access$424(Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;F)F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;->effectProgress:F

    sub-float/2addr v0, p1

    iput v0, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;->effectProgress:F

    return v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;->animateImageProgress:F

    return p0
.end method

.method static synthetic access$502(Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;->animateImageProgress:F

    return p1
.end method

.method static synthetic access$516(Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;F)F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;->animateImageProgress:F

    add-float/2addr v0, p1

    iput v0, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;->animateImageProgress:F

    return v0
.end method

.method static synthetic access$524(Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;F)F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;->animateImageProgress:F

    sub-float/2addr v0, p1

    iput v0, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;->animateImageProgress:F

    return v0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;->effectImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;->effectImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;->this$0:Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;

    invoke-static {p2}, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;->access$600(Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;)I

    move-result p2

    int-to-float p2, p2

    const v0, 0x3f19999a    # 0.6f

    mul-float p2, p2, v0

    float-to-int p2, p2

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int v2, p2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    int-to-float p2, p2

    const v1, 0x3f333333    # 0.7f

    mul-float p2, p2, v1

    float-to-int p2, p2

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setDrawImage(ZZZ)V
    .locals 3

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;->drawEffect:Z

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eq v0, p2, :cond_2

    iput-boolean p2, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;->drawEffect:Z

    if-nez p3, :cond_1

    if-eqz p2, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput p2, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;->effectProgress:F

    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;->view:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    :cond_2
    iget-boolean p2, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;->animateImage:Z

    if-eq p2, p1, :cond_5

    iput-boolean p1, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;->animateImage:Z

    if-nez p3, :cond_4

    if-eqz p1, :cond_3

    const/high16 v1, 0x3f800000    # 1.0f

    :cond_3
    iput v1, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;->animateImageProgress:F

    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;->view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_5
    return-void
.end method

.method public setSticker(Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;->update:Z

    return-void
.end method
