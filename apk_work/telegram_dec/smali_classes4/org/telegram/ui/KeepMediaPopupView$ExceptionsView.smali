.class Lorg/telegram/ui/KeepMediaPopupView$ExceptionsView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/KeepMediaPopupView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExceptionsView"
.end annotation


# instance fields
.field avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

.field ignoreLayout:Z

.field final synthetic this$0:Lorg/telegram/ui/KeepMediaPopupView;

.field titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/KeepMediaPopupView;Landroid/content/Context;)V
    .locals 9

    iput-object p1, p0, Lorg/telegram/ui/KeepMediaPopupView$ExceptionsView;->this$0:Lorg/telegram/ui/KeepMediaPopupView;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {p1, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/telegram/ui/KeepMediaPopupView$ExceptionsView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    iget-object p1, p0, Lorg/telegram/ui/KeepMediaPopupView$ExceptionsView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setEllipsizeByGradient(Z)V

    iget-object p1, p0, Lorg/telegram/ui/KeepMediaPopupView$ExceptionsView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/high16 v1, 0x42880000    # 68.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightPadding(I)V

    iget-object p1, p0, Lorg/telegram/ui/KeepMediaPopupView$ExceptionsView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/KeepMediaPopupView$ExceptionsView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/high16 v6, 0x41980000    # 19.0f

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/high16 v2, -0x40000000    # -2.0f

    const/16 v3, 0x13

    const/high16 v4, 0x41980000    # 19.0f

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Lorg/telegram/ui/Components/AvatarsImageView;

    const/4 v1, 0x0

    invoke-direct {p1, p2, v1}, Lorg/telegram/ui/Components/AvatarsImageView;-><init>(Landroid/content/Context;Z)V

    iput-object p1, p0, Lorg/telegram/ui/KeepMediaPopupView$ExceptionsView;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    iget-object p1, p1, Lorg/telegram/ui/Components/AvatarsImageView;->avatarsDrawable:Lorg/telegram/ui/Components/AvatarsDrawable;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/AvatarsDrawable;->setShowSavedMessages(Z)V

    iget-object p1, p0, Lorg/telegram/ui/KeepMediaPopupView$ExceptionsView;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    const/16 p2, 0xb

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/AvatarsImageView;->setStyle(I)V

    iget-object p1, p0, Lorg/telegram/ui/KeepMediaPopupView$ExceptionsView;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    const/high16 p2, 0x41b00000    # 22.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/AvatarsImageView;->setAvatarsTextSize(I)V

    iget-object p1, p0, Lorg/telegram/ui/KeepMediaPopupView$ExceptionsView;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    const/high16 v7, 0x40800000    # 4.0f

    const/4 v8, 0x0

    const/16 v2, 0x38

    const/high16 v3, -0x40800000    # -1.0f

    const/16 v4, 0x15

    const/4 v6, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    const/4 p2, 0x4

    invoke-static {p1, v1, p2}, Lorg/telegram/ui/ActionBar/Theme;->createRadSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/KeepMediaPopupView$ExceptionsView;->ignoreLayout:Z

    iget-object v0, p0, Lorg/telegram/ui/KeepMediaPopupView$ExceptionsView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    iget-object v0, p0, Lorg/telegram/ui/KeepMediaPopupView$ExceptionsView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/KeepMediaPopupView$ExceptionsView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput-boolean v1, p0, Lorg/telegram/ui/KeepMediaPopupView$ExceptionsView;->ignoreLayout:Z

    iget-object v0, p0, Lorg/telegram/ui/KeepMediaPopupView$ExceptionsView;->this$0:Lorg/telegram/ui/KeepMediaPopupView;

    invoke-static {v0}, Lorg/telegram/ui/KeepMediaPopupView;->access$100(Lorg/telegram/ui/KeepMediaPopupView;)V

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public requestLayout()V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/KeepMediaPopupView$ExceptionsView;->ignoreLayout:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method
