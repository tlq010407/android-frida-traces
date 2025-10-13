.class public Lorg/telegram/ui/Components/StatusBadgeComponent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

.field private verifiedDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 0
    const/16 v0, 0x12

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/StatusBadgeComponent;-><init>(Landroid/view/View;I)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;I)V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    int-to-float p2, p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-direct {v0, p1, p2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;-><init>(Landroid/view/View;I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/StatusBadgeComponent;->statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    return-void
.end method


# virtual methods
.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/StatusBadgeComponent;->statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/StatusBadgeComponent;->statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->attach()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/StatusBadgeComponent;->statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->detach()V

    return-void
.end method

.method public updateDrawable(Lorg/telegram/tgnet/TLObject;IZ)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 0
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$User;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {p0, p1, v1, p2, p3}, Lorg/telegram/ui/Components/StatusBadgeComponent;->updateDrawable(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_0
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-virtual {p0, v1, p1, p2, p3}, Lorg/telegram/ui/Components/StatusBadgeComponent;->updateDrawable(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p0, v1, v1, p2, p3}, Lorg/telegram/ui/Components/StatusBadgeComponent;->updateDrawable(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public updateDrawable(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;IZ)Landroid/graphics/drawable/Drawable;
    .locals 6

    .line 0
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget-boolean v1, p2, Lorg/telegram/tgnet/TLRPC$Chat;->verified:Z

    if-eqz v1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/StatusBadgeComponent;->statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    iget-object p2, p0, Lorg/telegram/ui/Components/StatusBadgeComponent;->verifiedDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p2, :cond_2

    new-instance p2, Lorg/telegram/ui/Components/CombinedDrawable;

    sget-object p3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_verifiedDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_verifiedCheckDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p2, p3, v1}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_0
    const-wide/16 v1, 0x0

    if-eqz p2, :cond_1

    iget-object v3, p2, Lorg/telegram/tgnet/TLRPC$Chat;->emoji_status:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    invoke-static {v3}, Lorg/telegram/messenger/DialogObject;->getEmojiStatusDocumentId(Lorg/telegram/tgnet/TLRPC$EmojiStatus;)J

    move-result-wide v3

    cmp-long v5, v3, v1

    if-eqz v5, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/StatusBadgeComponent;->statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$Chat;->emoji_status:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    invoke-static {p2}, Lorg/telegram/messenger/DialogObject;->getEmojiStatusDocumentId(Lorg/telegram/tgnet/TLRPC$EmojiStatus;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1, p4}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(JZ)Z

    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/StatusBadgeComponent;->statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setColor(Ljava/lang/Integer;)V

    goto :goto_3

    :cond_1
    if-eqz p1, :cond_3

    iget-boolean p2, p1, Lorg/telegram/tgnet/TLRPC$User;->verified:Z

    if-eqz p2, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Components/StatusBadgeComponent;->statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    iget-object p2, p0, Lorg/telegram/ui/Components/StatusBadgeComponent;->verifiedDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p2, :cond_2

    new-instance p2, Lorg/telegram/ui/Components/CombinedDrawable;

    sget-object p3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_verifiedDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_verifiedCheckDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p2, p3, v1}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_1
    iput-object p2, p0, Lorg/telegram/ui/Components/StatusBadgeComponent;->verifiedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2, p4}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(Landroid/graphics/drawable/Drawable;Z)V

    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/Components/StatusBadgeComponent;->statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setColor(Ljava/lang/Integer;)V

    goto :goto_3

    :cond_3
    if-eqz p1, :cond_4

    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$User;->emoji_status:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    invoke-static {p2}, Lorg/telegram/messenger/DialogObject;->getEmojiStatusDocumentId(Lorg/telegram/tgnet/TLRPC$EmojiStatus;)J

    move-result-wide v3

    cmp-long p2, v3, v1

    if-eqz p2, :cond_4

    iget-object p2, p0, Lorg/telegram/ui/Components/StatusBadgeComponent;->statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$User;->emoji_status:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    invoke-static {p1}, Lorg/telegram/messenger/DialogObject;->getEmojiStatusDocumentId(Lorg/telegram/tgnet/TLRPC$EmojiStatus;)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1, p4}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(JZ)Z

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_5

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$User;->premium:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lorg/telegram/ui/Components/StatusBadgeComponent;->statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-static {}, Lorg/telegram/ui/Components/Premium/PremiumGradient;->getInstance()Lorg/telegram/ui/Components/Premium/PremiumGradient;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/ui/Components/Premium/PremiumGradient;->premiumStarDrawableMini:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2, p4}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Components/StatusBadgeComponent;->statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {p1, v0, p4}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_2

    :goto_3
    iget-object p1, p0, Lorg/telegram/ui/Components/StatusBadgeComponent;->statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    return-object p1
.end method
