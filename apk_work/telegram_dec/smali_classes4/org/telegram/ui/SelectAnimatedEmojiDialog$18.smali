.class Lorg/telegram/ui/SelectAnimatedEmojiDialog$18;
.super Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/SelectAnimatedEmojiDialog;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;ZLjava/lang/Integer;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;


# direct methods
.method constructor <init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/content/Context;Z)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$18;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/content/Context;Z)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 9

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$18;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$3900(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Lorg/telegram/ui/SelectAnimatedEmojiDialog$BackgroundDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$18;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$3900(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Lorg/telegram/ui/SelectAnimatedEmojiDialog$BackgroundDelegate;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$18;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v0, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchBox:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$18;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v2, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->gridViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v2

    add-float v7, v0, v2

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$18;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v0, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchBox:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$18;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v2, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->gridViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    add-float v8, v0, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    invoke-interface/range {v1 .. v8}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$BackgroundDelegate;->drawRect(Landroid/graphics/Canvas;IIIIFF)V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setTranslationY(F)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$18;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$3900(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Lorg/telegram/ui/SelectAnimatedEmojiDialog$BackgroundDelegate;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->invalidate()V

    :cond_0
    return-void
.end method
