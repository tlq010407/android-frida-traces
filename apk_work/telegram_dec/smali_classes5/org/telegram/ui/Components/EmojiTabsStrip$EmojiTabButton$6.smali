.class Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->updateSelect(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

.field final synthetic val$selected:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;Z)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton$6;->this$1:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    iput-boolean p2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton$6;->val$selected:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton$6;->this$1:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    iget-object v0, p1, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->this$0:Lorg/telegram/ui/Components/EmojiTabsStrip;

    iget-boolean v0, v0, Lorg/telegram/ui/Components/EmojiTabsStrip;->updateButtonDrawables:Z

    if-eqz v0, :cond_2

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->access$1700(Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton$6;->val$selected:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton$6;->this$1:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->access$1800(Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton$6;->this$1:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_1
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton$6;->this$1:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton$6;->this$1:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    iget-object v0, p1, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->this$0:Lorg/telegram/ui/Components/EmojiTabsStrip;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiTabsStrip;->access$900(Lorg/telegram/ui/Components/EmojiTabsStrip;)I

    move-result v0

    const/16 v1, 0x8

    invoke-static {v0, v1, v1}, Lorg/telegram/ui/ActionBar/Theme;->createRadSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method
