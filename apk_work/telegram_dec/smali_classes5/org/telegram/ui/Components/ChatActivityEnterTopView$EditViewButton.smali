.class public abstract Lorg/telegram/ui/Components/ChatActivityEnterTopView$EditViewButton;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ChatActivityEnterTopView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "EditViewButton"
.end annotation


# instance fields
.field private editButton:Z

.field private imageView:Landroid/widget/ImageView;

.field private space:Landroid/widget/Space;

.field private textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public addImageView(Landroid/widget/ImageView;Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterTopView$EditViewButton;->imageView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterTopView$EditViewButton;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public addSpaceView(Landroid/widget/Space;Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterTopView$EditViewButton;->space:Landroid/widget/Space;

    if-nez v0, :cond_0

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterTopView$EditViewButton;->space:Landroid/widget/Space;

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public addTextView(Landroid/widget/TextView;Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterTopView$EditViewButton;->textView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterTopView$EditViewButton;->textView:Landroid/widget/TextView;

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public getImageView()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterTopView$EditViewButton;->imageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getTextView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterTopView$EditViewButton;->textView:Landroid/widget/TextView;

    return-object v0
.end method

.method public isEditButton()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterTopView$EditViewButton;->editButton:Z

    return v0
.end method

.method public setEditButton(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterTopView$EditViewButton;->editButton:Z

    return-void
.end method

.method public setOnlyIconMode(Z)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterTopView$EditViewButton;->textView:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/16 v3, 0x8

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterTopView$EditViewButton;->space:Landroid/widget/Space;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    const/16 v1, 0x8

    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method public abstract updateColors()V
.end method
