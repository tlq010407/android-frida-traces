.class Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->updateLock(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

.field final synthetic val$enable:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;Z)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton$5;->this$1:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    iput-boolean p2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton$5;->val$enable:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-boolean p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton$5;->val$enable:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton$5;->this$1:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->access$1400(Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;)Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
