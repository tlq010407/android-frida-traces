.class Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog$3;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final clipPath:Landroid/graphics/Path;

.field private firstSizeChange:Z

.field private final gestureDetector:Landroid/view/GestureDetector;

.field private final rectF:Landroid/graphics/RectF;

.field final synthetic this$1:Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog$3;->this$1:Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;

    invoke-direct {p0, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog$3$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog$3$1;-><init>(Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog$3;)V

    invoke-direct {p1, p2, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog$3;->gestureDetector:Landroid/view/GestureDetector;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog$3;->clipPath:Landroid/graphics/Path;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog$3;->rectF:Landroid/graphics/RectF;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog$3;->firstSizeChange:Z

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog$3;->clipPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog$3;->this$1:Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;

    invoke-static {v0}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->access$1400(Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    iget-object p3, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog$3;->this$1:Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;

    invoke-static {p3}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->access$2100(Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;)I

    move-result p3

    sub-int/2addr p1, p3

    div-int/lit8 p1, p1, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p3

    iget-object v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog$3;->this$1:Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;

    invoke-static {v0}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->access$1600(Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;)Lorg/telegram/ui/Components/ProfileGalleryView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr p3, v0

    div-int/lit8 p3, p3, 0x2

    iget-object v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog$3;->this$1:Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;

    invoke-static {v0}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->access$1600(Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;)Lorg/telegram/ui/Components/ProfileGalleryView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog$3;->this$1:Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;

    invoke-static {v1}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->access$1600(Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;)Lorg/telegram/ui/Components/ProfileGalleryView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, p3

    iget-object v2, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog$3;->this$1:Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;

    invoke-static {v2}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->access$1600(Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;)Lorg/telegram/ui/Components/ProfileGalleryView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, p1

    invoke-virtual {v0, p3, p1, v1, v2}, Landroid/view/View;->layout(IIII)V

    iget-object p3, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog$3;->this$1:Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;

    invoke-static {p3}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->access$1700(Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;)Lorg/telegram/ui/AvatarPreviewPagerIndicator;

    move-result-object p3

    iget-object v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog$3;->this$1:Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;

    invoke-static {v0}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->access$1600(Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;)Lorg/telegram/ui/Components/ProfileGalleryView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog$3;->this$1:Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;

    invoke-static {v1}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->access$1600(Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;)Lorg/telegram/ui/Components/ProfileGalleryView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog$3;->this$1:Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;

    invoke-static {v2}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->access$1600(Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;)Lorg/telegram/ui/Components/ProfileGalleryView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog$3;->this$1:Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;

    invoke-static {v3}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->access$1600(Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;)Lorg/telegram/ui/Components/ProfileGalleryView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog$3;->this$1:Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;

    invoke-static {v4}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->access$1700(Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;)Lorg/telegram/ui/AvatarPreviewPagerIndicator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p3, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    iget-object p3, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog$3;->this$1:Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;

    invoke-static {p3}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->access$1600(Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;)Lorg/telegram/ui/Components/ProfileGalleryView;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    const/high16 v0, 0x41400000    # 12.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr p3, v1

    add-int/2addr p1, p3

    iget-object p3, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog$3;->this$1:Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;

    invoke-static {p3}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->access$1800(Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;)Landroid/widget/TextView;

    move-result-object p3

    iget-object v1, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog$3;->this$1:Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;

    invoke-static {v1}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->access$1600(Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;)Lorg/telegram/ui/Components/ProfileGalleryView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v1, v3

    iget-object v3, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog$3;->this$1:Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;

    invoke-static {v3}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->access$1600(Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;)Lorg/telegram/ui/Components/ProfileGalleryView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v3, v2

    iget-object v2, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog$3;->this$1:Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;

    invoke-static {v2}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->access$1800(Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, p1

    invoke-virtual {p3, v1, p1, v3, v2}, Landroid/view/View;->layout(IIII)V

    iget-object p3, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog$3;->this$1:Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;

    invoke-static {p3}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->access$1800(Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;)Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    add-int/2addr p1, p3

    iget-object p3, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog$3;->this$1:Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;

    invoke-static {p3}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->access$1900(Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;)Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    move-result p3

    const/16 v1, 0x8

    if-eq p3, v1, :cond_0

    const/high16 p3, 0x40800000    # 4.0f

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    add-int/2addr p1, p3

    iget-object p3, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog$3;->this$1:Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;

    invoke-static {p3}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->access$1900(Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;)Landroid/widget/TextView;

    move-result-object p3

    iget-object v2, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog$3;->this$1:Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;

    invoke-static {v2}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->access$1800(Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog$3;->this$1:Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;

    invoke-static {v3}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->access$1800(Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog$3;->this$1:Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;

    invoke-static {v4}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->access$1900(Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, p1

    invoke-virtual {p3, v2, p1, v3, v4}, Landroid/view/View;->layout(IIII)V

    iget-object p3, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog$3;->this$1:Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;

    invoke-static {p3}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->access$1900(Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;)Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    add-int/2addr p1, p3

    :cond_0
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    add-int/2addr p1, p3

    iget-object p3, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog$3;->this$1:Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;

    invoke-static {p3}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->access$1400(Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iget-object v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog$3;->this$1:Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;

    invoke-static {v0}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->access$1600(Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;)Lorg/telegram/ui/Components/ProfileGalleryView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog$3;->this$1:Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;

    invoke-static {v2}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->access$2000(Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;)I

    move-result v2

    sub-int/2addr v0, v2

    iget-object v2, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog$3;->this$1:Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;

    invoke-static {v2}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->access$1600(Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;)Lorg/telegram/ui/Components/ProfileGalleryView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog$3;->this$1:Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;

    invoke-static {v3}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->access$2200(Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;)I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog$3;->this$1:Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;

    invoke-static {v3}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->access$1600(Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;)Lorg/telegram/ui/Components/ProfileGalleryView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog$3;->this$1:Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;

    invoke-static {v4}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->access$2000(Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog$3;->this$1:Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;

    invoke-static {v4}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->access$2200(Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;)I

    move-result v4

    add-int/2addr v4, p1

    invoke-virtual {p3, v0, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p3, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog$3;->this$1:Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;

    invoke-static {p3}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->access$1600(Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;)Lorg/telegram/ui/Components/ProfileGalleryView;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result p3

    iget-object v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog$3;->this$1:Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;

    invoke-static {v0}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->access$1500(Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr p3, v0

    iget-object v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog$3;->this$1:Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;

    invoke-static {v0}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->access$2000(Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;)I

    move-result v0

    add-int/2addr p3, v0

    iget-object v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog$3;->this$1:Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;

    invoke-static {v0}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->access$1500(Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog$3;->this$1:Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;

    invoke-static {v2}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->access$1600(Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;)Lorg/telegram/ui/Components/ProfileGalleryView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog$3;->this$1:Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;

    invoke-static {v3}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->access$2000(Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;)I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog$3;->this$1:Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;

    invoke-static {v3}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->access$1500(Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, p1

    invoke-virtual {v0, p3, p1, v2, v3}, Landroid/view/View;->layout(IIII)V

    iget-object p1, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog$3;->this$1:Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;

    invoke-static {p1}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->access$1500(Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    move-result-object p1

    iget-object p3, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog$3;->this$1:Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;

    invoke-static {p3}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->access$1500(Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result p3

    if-ge p3, p5, :cond_1

    const/4 v1, 0x0

    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    const/high16 p1, 0x40c00000    # 6.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    iget-object p3, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog$3;->rectF:Landroid/graphics/RectF;

    iget-object v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog$3;->this$1:Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;

    invoke-static {v0}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->access$1600(Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;)Lorg/telegram/ui/Components/ProfileGalleryView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog$3;->this$1:Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;

    invoke-static {v1}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->access$1600(Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;)Lorg/telegram/ui/Components/ProfileGalleryView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog$3;->this$1:Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;

    invoke-static {v2}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->access$1600(Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;)Lorg/telegram/ui/Components/ProfileGalleryView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog$3;->this$1:Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;

    invoke-static {v3}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->access$1600(Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;)Lorg/telegram/ui/Components/ProfileGalleryView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    mul-int/lit8 v4, p1, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p3, v0, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p3, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog$3;->clipPath:Landroid/graphics/Path;

    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    iget-object p3, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog$3;->clipPath:Landroid/graphics/Path;

    iget-object v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog$3;->rectF:Landroid/graphics/RectF;

    int-to-float v1, p1

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p3, v0, v1, v1, v2}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    iget-object p3, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog$3;->rectF:Landroid/graphics/RectF;

    int-to-float p2, p2

    iget-object v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog$3;->this$1:Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;

    invoke-static {v0}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->access$1600(Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;)Lorg/telegram/ui/Components/ProfileGalleryView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    add-int/2addr v0, p1

    int-to-float p1, v0

    int-to-float p4, p4

    int-to-float p5, p5

    invoke-virtual {p3, p2, p1, p4, p5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p1, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog$3;->clipPath:Landroid/graphics/Path;

    iget-object p2, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog$3;->rectF:Landroid/graphics/RectF;

    invoke-virtual {p1, p2, v2}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    int-to-double v1, p2

    const-wide v3, 0x3fe51eb851eb851fL    # 0.66

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    double-to-int p2, v1

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/high16 p2, 0x41400000    # 12.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    mul-int/lit8 p2, p2, 0x2

    sub-int/2addr p1, p2

    const/high16 p2, -0x80000000

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog$3;->this$1:Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;

    invoke-static {v2}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->access$1600(Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;)Lorg/telegram/ui/Components/ProfileGalleryView;

    move-result-object v2

    invoke-virtual {v2, v1, v1}, Landroid/view/View;->measure(II)V

    iget-object v2, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog$3;->this$1:Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;

    invoke-static {v2}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->access$1700(Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;)Lorg/telegram/ui/AvatarPreviewPagerIndicator;

    move-result-object v2

    invoke-virtual {v2, v1, v1}, Landroid/view/View;->measure(II)V

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr p1, v1

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    iget-object v1, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog$3;->this$1:Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;

    invoke-static {v1}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->access$1800(Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v1, p1, v2}, Landroid/view/View;->measure(II)V

    iget-object v1, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog$3;->this$1:Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;

    invoke-static {v1}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->access$1900(Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v1, p1, v2}, Landroid/view/View;->measure(II)V

    iget-object p1, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog$3;->this$1:Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;

    invoke-static {p1}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->access$1500(Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog$3;->this$1:Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;

    invoke-static {v1}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->access$1600(Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;)Lorg/telegram/ui/Components/ProfileGalleryView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog$3;->this$1:Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;

    invoke-static {v2}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->access$2000(Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-static {v1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-le v1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog$3;->this$1:Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;

    invoke-static {v0}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->access$2301(Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;)V

    :cond_0
    if-eq p1, p3, :cond_2

    if-eq p2, p4, :cond_2

    iget-boolean p1, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog$3;->firstSizeChange:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog$3;->this$1:Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;

    invoke-static {p1}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->access$2400(Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;)V

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog$3;->firstSizeChange:Z

    :cond_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog$3;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog$3;->this$1:Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;

    invoke-static {v0}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->access$1400(Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq p1, v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

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
