.class Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;

.field final synthetic val$this$0:Lorg/telegram/ui/ArticleViewer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;Lorg/telegram/ui/ArticleViewer;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$2;->this$1:Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;

    iput-object p2, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$2;->val$this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$2;->this$1:Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;

    invoke-static {p2}, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->access$17200(Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    int-to-float p2, p2

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$2;->this$1:Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;

    int-to-float p1, p1

    mul-float p1, p1, p2

    int-to-float p3, p3

    add-float/2addr p1, p3

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->access$17400(Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;)I

    move-result p3

    int-to-float p3, p3

    mul-float p3, p3, p2

    sub-float/2addr p1, p3

    div-float/2addr p1, p2

    invoke-static {v0, p1}, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->access$17302(Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;F)F

    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$2;->this$1:Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->access$17500(Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$2;->this$1:Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;

    invoke-static {v0, p1}, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->access$17402(Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;I)I

    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$2;->this$1:Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->access$17500(Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
