.class public abstract Lorg/telegram/ui/Components/ChatActivityEnterTopView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/ChatActivityEnterTopView$EditView;,
        Lorg/telegram/ui/Components/ChatActivityEnterTopView$EditViewButton;
    }
.end annotation


# instance fields
.field private editMode:Z

.field private editView:Lorg/telegram/ui/Components/ChatActivityEnterTopView$EditView;

.field private replyView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public addEditView(Lorg/telegram/ui/Components/ChatActivityEnterTopView$EditView;Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterTopView;->editView:Lorg/telegram/ui/Components/ChatActivityEnterTopView$EditView;

    if-nez v0, :cond_0

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterTopView;->editView:Lorg/telegram/ui/Components/ChatActivityEnterTopView$EditView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public addReplyView(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterTopView;->replyView:Landroid/view/View;

    if-nez v0, :cond_0

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterTopView;->replyView:Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public getEditView()Lorg/telegram/ui/Components/ChatActivityEnterTopView$EditView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterTopView;->editView:Lorg/telegram/ui/Components/ChatActivityEnterTopView$EditView;

    return-object v0
.end method

.method public getReplyView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterTopView;->replyView:Landroid/view/View;

    return-object v0
.end method

.method public isEditMode()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterTopView;->editMode:Z

    return v0
.end method

.method public setEditMode(Z)V
    .locals 4

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterTopView;->editMode:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterTopView;->replyView:Landroid/view/View;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_0

    const/16 v3, 0x8

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterTopView;->editView:Lorg/telegram/ui/Components/ChatActivityEnterTopView$EditView;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setEditSuggestionMode(Z)V
    .locals 2

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ChatActivityEnterTopView;->setEditMode(Z)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterTopView;->replyView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterTopView;->editView:Lorg/telegram/ui/Components/ChatActivityEnterTopView$EditView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterTopView$EditView;->access$000(Lorg/telegram/ui/Components/ChatActivityEnterTopView$EditView;)[Lorg/telegram/ui/Components/ChatActivityEnterTopView$EditViewButton;

    move-result-object v1

    aget-object v0, v1, v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ChatActivityEnterTopView$EditViewButton;->setOnlyIconMode(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterTopView;->editView:Lorg/telegram/ui/Components/ChatActivityEnterTopView$EditView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterTopView$EditView;->access$000(Lorg/telegram/ui/Components/ChatActivityEnterTopView$EditView;)[Lorg/telegram/ui/Components/ChatActivityEnterTopView$EditViewButton;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ChatActivityEnterTopView$EditViewButton;->setOnlyIconMode(Z)V

    return-void
.end method
