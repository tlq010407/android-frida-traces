.class Lorg/telegram/ui/Components/EmojiPacksAlert$4;
.super Lorg/telegram/ui/Components/RecyclerListView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EmojiPacksAlert;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private highlightPaint:Landroid/graphics/Paint;

.field final synthetic this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EmojiPacksAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$4;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$4;->highlightPaint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$4;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiPacksAlert;->access$1800(Lorg/telegram/ui/Components/EmojiPacksAlert;)Lorg/telegram/ui/Components/AnimatedFloat;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$4;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    iget v1, v0, Lorg/telegram/ui/Components/EmojiPacksAlert;->highlightStartPosition:I

    if-ltz v1, :cond_3

    iget v1, v0, Lorg/telegram/ui/Components/EmojiPacksAlert;->highlightEndPosition:I

    if-ltz v1, :cond_3

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiPacksAlert;->access$1900(Lorg/telegram/ui/Components/EmojiPacksAlert;)Lorg/telegram/ui/Components/EmojiPacksAlert$Adapter;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$4;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiPacksAlert;->access$1800(Lorg/telegram/ui/Components/EmojiPacksAlert;)Lorg/telegram/ui/Components/AnimatedFloat;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_3

    const v1, 0x7fffffff

    const/high16 v2, -0x80000000

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$4;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    iget v7, v6, Lorg/telegram/ui/Components/EmojiPacksAlert;->highlightStartPosition:I

    if-lt v5, v7, :cond_0

    iget v6, v6, Lorg/telegram/ui/Components/EmojiPacksAlert;->highlightEndPosition:I

    if-gt v5, v6, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v4}, Landroid/view/View;->getTranslationY()F

    move-result v6

    float-to-int v6, v6

    add-int/2addr v5, v6

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v4}, Landroid/view/View;->getTranslationY()F

    move-result v4

    float-to-int v4, v4

    add-int/2addr v5, v4

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-ge v1, v2, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$4;->highlightPaint:Landroid/graphics/Paint;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_linkSelectBackground:I

    invoke-virtual {p0, v4}, Lorg/telegram/ui/Components/RecyclerListView;->getThemedColor(I)I

    move-result v4

    invoke-static {v4, v0}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v6, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v7, v0

    int-to-float v8, v2

    iget-object v9, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$4;->highlightPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_3
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Lorg/telegram/ui/Components/RecyclerListView;->onDetachedFromWindow()V

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$4;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiPacksAlert;->access$1600(Lorg/telegram/ui/Components/EmojiPacksAlert;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$4;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiPacksAlert;->access$1700(Lorg/telegram/ui/Components/EmojiPacksAlert;)Landroid/util/LongSparseArray;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->release(Landroid/view/View;Landroid/util/LongSparseArray;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-static {}, Lorg/telegram/ui/ContentPreviewViewer;->getInstance()Lorg/telegram/ui/ContentPreviewViewer;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$4;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiPacksAlert;->access$1100(Lorg/telegram/ui/Components/EmojiPacksAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$4;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiPacksAlert;->access$1200(Lorg/telegram/ui/Components/EmojiPacksAlert;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Components/RecyclerListView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/ContentPreviewViewer;->onInterceptTouchEvent(Landroid/view/MotionEvent;Lorg/telegram/ui/Components/RecyclerListView;ILorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Z

    move-result v0

    invoke-super {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lorg/telegram/ui/Components/RecyclerListView;->onLayout(ZIIII)V

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$4;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiPacksAlert;->access$1400(Lorg/telegram/ui/Components/EmojiPacksAlert;)Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;->updateEmojiDrawables()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$4;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiPacksAlert;->access$1300(Lorg/telegram/ui/Components/EmojiPacksAlert;)Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object v0

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    invoke-super {p0, p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->onMeasure(II)V

    return-void
.end method

.method public onScrolled(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->onScrolled(II)V

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$4;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiPacksAlert;->access$1400(Lorg/telegram/ui/Components/EmojiPacksAlert;)Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EmojiPacksAlert$ContentView;->updateEmojiDrawables()V

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$4;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiPacksAlert;->access$1500(Lorg/telegram/ui/Components/EmojiPacksAlert;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
