.class Lorg/telegram/ui/Components/EmojiPacksAlert$SeparatorView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/EmojiPacksAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SeparatorView"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/EmojiPacksAlert;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$SeparatorView;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelShadowLine:I

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/EmojiPacksAlert;->access$3800(Lorg/telegram/ui/Components/EmojiPacksAlert;I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getShadowHeight()I

    move-result p2

    const/4 v0, -0x1

    invoke-direct {p1, v0, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    const/high16 p2, 0x41600000    # 14.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
