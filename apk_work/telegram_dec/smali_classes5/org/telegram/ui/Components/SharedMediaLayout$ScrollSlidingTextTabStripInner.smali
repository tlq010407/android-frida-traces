.class public abstract Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;
.super Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/SharedMediaLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScrollSlidingTextTabStripInner"
.end annotation


# instance fields
.field public backgroundColor:I

.field protected backgroundPaint:Landroid/graphics/Paint;

.field private blurBounds:Landroid/graphics/Rect;

.field final synthetic this$0:Lorg/telegram/ui/Components/SharedMediaLayout;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 p1, 0x0

    iput p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;->backgroundColor:I

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;->blurBounds:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method protected drawBackground(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->chatBlurEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;->backgroundColor:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;->backgroundPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;->backgroundPaint:Landroid/graphics/Paint;

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;->backgroundPaint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;->backgroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;->blurBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;->blurBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v1, v2, v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->drawBackgroundWithBlur(Landroid/graphics/Canvas;FLandroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;->backgroundColor:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
