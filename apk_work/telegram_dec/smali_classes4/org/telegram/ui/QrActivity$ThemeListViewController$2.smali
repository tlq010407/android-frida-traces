.class Lorg/telegram/ui/QrActivity$ThemeListViewController$2;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/QrActivity$ThemeListViewController;-><init>(Lorg/telegram/ui/QrActivity;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/Window;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final backgroundPadding:Landroid/graphics/Rect;

.field final synthetic this$1:Lorg/telegram/ui/QrActivity$ThemeListViewController;

.field final synthetic val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field final synthetic val$this$0:Lorg/telegram/ui/QrActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/QrActivity$ThemeListViewController;Landroid/content/Context;Lorg/telegram/ui/QrActivity;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 1

    iput-object p1, p0, Lorg/telegram/ui/QrActivity$ThemeListViewController$2;->this$1:Lorg/telegram/ui/QrActivity$ThemeListViewController;

    iput-object p3, p0, Lorg/telegram/ui/QrActivity$ThemeListViewController$2;->val$this$0:Lorg/telegram/ui/QrActivity;

    iput-object p4, p0, Lorg/telegram/ui/QrActivity$ThemeListViewController$2;->val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/QrActivity$ThemeListViewController$2;->backgroundPadding:Landroid/graphics/Rect;

    invoke-static {p1}, Lorg/telegram/ui/QrActivity$ThemeListViewController;->access$1900(Lorg/telegram/ui/QrActivity$ThemeListViewController;)Landroid/graphics/Paint;

    move-result-object p3

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {p4, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result p4

    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setColor(I)V

    invoke-static {p1}, Lorg/telegram/ui/QrActivity$ThemeListViewController;->access$2000(Lorg/telegram/ui/QrActivity$ThemeListViewController;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p3, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-static {p1}, Lorg/telegram/ui/QrActivity$ThemeListViewController;->access$2000(Lorg/telegram/ui/QrActivity$ThemeListViewController;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget p1, p2, Landroid/graphics/Rect;->top:I

    const/high16 p3, 0x41000000    # 8.0f

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    add-int/2addr p1, p3

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    const/4 p3, 0x0

    invoke-virtual {p0, p3, p1, p3, p2}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/QrActivity$ThemeListViewController$2;->this$1:Lorg/telegram/ui/QrActivity$ThemeListViewController;

    invoke-static {v0}, Lorg/telegram/ui/QrActivity$ThemeListViewController;->access$2400(Lorg/telegram/ui/QrActivity$ThemeListViewController;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/QrActivity$ThemeListViewController$2;->this$1:Lorg/telegram/ui/QrActivity$ThemeListViewController;

    invoke-static {v0}, Lorg/telegram/ui/QrActivity$ThemeListViewController;->access$2000(Lorg/telegram/ui/QrActivity$ThemeListViewController;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/QrActivity$ThemeListViewController$2;->backgroundPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/QrActivity$ThemeListViewController$2;->backgroundPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lorg/telegram/ui/QrActivity$ThemeListViewController$2;->this$1:Lorg/telegram/ui/QrActivity$ThemeListViewController;

    invoke-static {v0}, Lorg/telegram/ui/QrActivity$ThemeListViewController;->access$2000(Lorg/telegram/ui/QrActivity$ThemeListViewController;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v1, v3

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v4, v1, v3}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/QrActivity$ThemeListViewController$2;->this$1:Lorg/telegram/ui/QrActivity$ThemeListViewController;

    invoke-static {v3}, Lorg/telegram/ui/QrActivity$ThemeListViewController;->access$1900(Lorg/telegram/ui/QrActivity$ThemeListViewController;)Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 13

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    const/4 v2, 0x0

    if-ge v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iget-object v3, p0, Lorg/telegram/ui/QrActivity$ThemeListViewController$2;->this$1:Lorg/telegram/ui/QrActivity$ThemeListViewController;

    invoke-static {v3}, Lorg/telegram/ui/QrActivity$ThemeListViewController;->access$2100(Lorg/telegram/ui/QrActivity$ThemeListViewController;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    if-eqz v0, :cond_2

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v4, -0x1

    const/high16 v5, 0x42d00000    # 104.0f

    const v6, 0x800003

    const/4 v7, 0x0

    const/high16 v8, 0x42300000    # 44.0f

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lorg/telegram/ui/QrActivity$ThemeListViewController$2;->this$1:Lorg/telegram/ui/QrActivity$ThemeListViewController;

    invoke-static {v3}, Lorg/telegram/ui/QrActivity$ThemeListViewController;->access$2100(Lorg/telegram/ui/QrActivity$ThemeListViewController;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    invoke-virtual {v3, v1, v2, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    iget-object v1, p0, Lorg/telegram/ui/QrActivity$ThemeListViewController$2;->this$1:Lorg/telegram/ui/QrActivity$ThemeListViewController;

    iget-object v3, v1, Lorg/telegram/ui/QrActivity$ThemeListViewController;->scanButtonWrap:Landroid/widget/LinearLayout;

    iget-object v1, v1, Lorg/telegram/ui/QrActivity$ThemeListViewController;->shareButton:Landroid/widget/TextView;

    const/high16 v8, 0x41800000    # 16.0f

    if-eqz v3, :cond_1

    const/high16 v9, 0x42900000    # 72.0f

    const/4 v3, -0x1

    const/high16 v4, 0x42400000    # 48.0f

    const v5, 0x800003

    const/high16 v6, 0x41800000    # 16.0f

    const/high16 v7, 0x43220000    # 162.0f

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lorg/telegram/ui/QrActivity$ThemeListViewController$2;->this$1:Lorg/telegram/ui/QrActivity$ThemeListViewController;

    iget-object v1, v1, Lorg/telegram/ui/QrActivity$ThemeListViewController;->scanButtonWrap:Landroid/widget/LinearLayout;

    const/high16 v9, 0x41800000    # 16.0f

    const/4 v3, -0x1

    const v5, 0x800053

    :goto_1
    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :cond_1
    const/high16 v9, 0x41800000    # 16.0f

    const/4 v3, -0x1

    const/high16 v4, 0x42400000    # 48.0f

    const v5, 0x800003

    const/high16 v6, 0x41800000    # 16.0f

    const/high16 v7, 0x43220000    # 162.0f

    goto :goto_1

    :cond_2
    div-int/lit8 v4, v1, 0x2

    invoke-virtual {v3, v1, v4, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    iget-object v1, p0, Lorg/telegram/ui/QrActivity$ThemeListViewController$2;->this$1:Lorg/telegram/ui/QrActivity$ThemeListViewController;

    iget-object v3, v1, Lorg/telegram/ui/QrActivity$ThemeListViewController;->scanButtonWrap:Landroid/widget/LinearLayout;

    invoke-static {v1}, Lorg/telegram/ui/QrActivity$ThemeListViewController;->access$2100(Lorg/telegram/ui/QrActivity$ThemeListViewController;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    const/4 v8, 0x0

    if-eqz v3, :cond_3

    const/high16 v9, 0x43080000    # 136.0f

    const/4 v3, -0x1

    const/high16 v4, -0x40800000    # -1.0f

    const v5, 0x800003

    const/4 v6, 0x0

    const/high16 v7, 0x42300000    # 44.0f

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lorg/telegram/ui/QrActivity$ThemeListViewController$2;->this$1:Lorg/telegram/ui/QrActivity$ThemeListViewController;

    iget-object v1, v1, Lorg/telegram/ui/QrActivity$ThemeListViewController;->shareButton:Landroid/widget/TextView;

    const/high16 v8, 0x41800000    # 16.0f

    const/high16 v9, 0x42900000    # 72.0f

    const/4 v3, -0x1

    const/high16 v4, 0x42400000    # 48.0f

    const/16 v5, 0x50

    const/high16 v6, 0x41800000    # 16.0f

    const/4 v7, 0x0

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lorg/telegram/ui/QrActivity$ThemeListViewController$2;->this$1:Lorg/telegram/ui/QrActivity$ThemeListViewController;

    iget-object v1, v1, Lorg/telegram/ui/QrActivity$ThemeListViewController;->scanButtonWrap:Landroid/widget/LinearLayout;

    const/high16 v9, 0x41800000    # 16.0f

    const/4 v3, -0x1

    goto :goto_1

    :cond_3
    const/high16 v9, 0x42a00000    # 80.0f

    const/4 v3, -0x1

    const/high16 v4, -0x40800000    # -1.0f

    const v5, 0x800003

    const/4 v6, 0x0

    const/high16 v7, 0x42300000    # 44.0f

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lorg/telegram/ui/QrActivity$ThemeListViewController$2;->this$1:Lorg/telegram/ui/QrActivity$ThemeListViewController;

    iget-object v1, v1, Lorg/telegram/ui/QrActivity$ThemeListViewController;->shareButton:Landroid/widget/TextView;

    const/high16 v8, 0x41800000    # 16.0f

    const/high16 v9, 0x41800000    # 16.0f

    const/4 v3, -0x1

    const/high16 v4, 0x42400000    # 48.0f

    const/16 v5, 0x50

    const/high16 v6, 0x41800000    # 16.0f

    const/4 v7, 0x0

    goto :goto_1

    :goto_2
    iget-object v1, p0, Lorg/telegram/ui/QrActivity$ThemeListViewController$2;->this$1:Lorg/telegram/ui/QrActivity$ThemeListViewController;

    if-eqz v0, :cond_4

    invoke-static {v1}, Lorg/telegram/ui/QrActivity$ThemeListViewController;->access$2200(Lorg/telegram/ui/QrActivity$ThemeListViewController;)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lorg/telegram/ui/QrActivity$ThemeListViewController$2;->this$1:Lorg/telegram/ui/QrActivity$ThemeListViewController;

    invoke-static {v1}, Lorg/telegram/ui/QrActivity$ThemeListViewController;->access$2300(Lorg/telegram/ui/QrActivity$ThemeListViewController;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    :cond_4
    iget-object v3, v1, Lorg/telegram/ui/QrActivity$ThemeListViewController;->shareButton:Landroid/widget/TextView;

    if-eqz v3, :cond_5

    const/16 v3, 0x88

    goto :goto_3

    :cond_5
    const/16 v3, 0x50

    :goto_3
    invoke-static {v1}, Lorg/telegram/ui/QrActivity$ThemeListViewController;->access$2200(Lorg/telegram/ui/QrActivity$ThemeListViewController;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lorg/telegram/ui/QrActivity$ThemeListViewController$2;->this$1:Lorg/telegram/ui/QrActivity$ThemeListViewController;

    invoke-static {v1}, Lorg/telegram/ui/QrActivity$ThemeListViewController;->access$2200(Lorg/telegram/ui/QrActivity$ThemeListViewController;)Landroid/view/View;

    move-result-object v1

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v7, v5

    int-to-float v12, v3

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v6, -0x1

    const/16 v8, 0x50

    const/4 v9, 0x0

    invoke-static/range {v6 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lorg/telegram/ui/QrActivity$ThemeListViewController$2;->this$1:Lorg/telegram/ui/QrActivity$ThemeListViewController;

    invoke-static {v1}, Lorg/telegram/ui/QrActivity$ThemeListViewController;->access$2300(Lorg/telegram/ui/QrActivity$ThemeListViewController;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lorg/telegram/ui/QrActivity$ThemeListViewController$2;->this$1:Lorg/telegram/ui/QrActivity$ThemeListViewController;

    invoke-static {v1}, Lorg/telegram/ui/QrActivity$ThemeListViewController;->access$2300(Lorg/telegram/ui/QrActivity$ThemeListViewController;)Landroid/view/View;

    move-result-object v1

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v4, v2

    const/4 v8, 0x0

    const/4 v3, -0x1

    const/16 v5, 0x30

    const/4 v6, 0x0

    const/high16 v7, 0x42300000    # 44.0f

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_4
    iget-object v1, p0, Lorg/telegram/ui/QrActivity$ThemeListViewController$2;->this$1:Lorg/telegram/ui/QrActivity$ThemeListViewController;

    invoke-static {v1}, Lorg/telegram/ui/QrActivity$ThemeListViewController;->access$2400(Lorg/telegram/ui/QrActivity$ThemeListViewController;)Z

    move-result v1

    if-eq v1, v0, :cond_7

    iget-object v1, p0, Lorg/telegram/ui/QrActivity$ThemeListViewController$2;->this$1:Lorg/telegram/ui/QrActivity$ThemeListViewController;

    invoke-static {v1}, Lorg/telegram/ui/QrActivity$ThemeListViewController;->access$2100(Lorg/telegram/ui/QrActivity$ThemeListViewController;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/QrActivity$ThemeListViewController$2;->this$1:Lorg/telegram/ui/QrActivity$ThemeListViewController;

    invoke-static {v2, v0}, Lorg/telegram/ui/QrActivity$ThemeListViewController;->access$2600(Lorg/telegram/ui/QrActivity$ThemeListViewController;Z)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/telegram/ui/QrActivity$ThemeListViewController;->access$2502(Lorg/telegram/ui/QrActivity$ThemeListViewController;Landroidx/recyclerview/widget/LinearLayoutManager;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v1, p0, Lorg/telegram/ui/QrActivity$ThemeListViewController$2;->this$1:Lorg/telegram/ui/QrActivity$ThemeListViewController;

    invoke-static {v1}, Lorg/telegram/ui/QrActivity$ThemeListViewController;->access$2100(Lorg/telegram/ui/QrActivity$ThemeListViewController;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RecyclerListView;->requestLayout()V

    iget-object v1, p0, Lorg/telegram/ui/QrActivity$ThemeListViewController$2;->this$1:Lorg/telegram/ui/QrActivity$ThemeListViewController;

    iget v2, v1, Lorg/telegram/ui/QrActivity$ThemeListViewController;->prevSelectedPosition:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_6

    invoke-virtual {v1, v2}, Lorg/telegram/ui/QrActivity$ThemeListViewController;->setSelectedPosition(I)V

    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/QrActivity$ThemeListViewController$2;->this$1:Lorg/telegram/ui/QrActivity$ThemeListViewController;

    invoke-static {v1, v0}, Lorg/telegram/ui/QrActivity$ThemeListViewController;->access$2402(Lorg/telegram/ui/QrActivity$ThemeListViewController;Z)Z

    :cond_7
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/QrActivity$ThemeListViewController$2;->this$1:Lorg/telegram/ui/QrActivity$ThemeListViewController;

    invoke-static {v0}, Lorg/telegram/ui/QrActivity$ThemeListViewController;->access$2000(Lorg/telegram/ui/QrActivity$ThemeListViewController;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq p1, v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_0

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
