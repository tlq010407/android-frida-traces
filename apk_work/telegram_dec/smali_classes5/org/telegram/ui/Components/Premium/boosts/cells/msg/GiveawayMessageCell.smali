.class public Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final monthsToEmoticon:Ljava/util/Map;


# instance fields
.field private additionPrizeHeight:I

.field private additionPrizeLayout:Landroid/text/StaticLayout;

.field private avatarDrawables:[Lorg/telegram/ui/Components/AvatarDrawable;

.field private avatarImageReceivers:[Lorg/telegram/messenger/ImageReceiver;

.field private avatarVisible:[Z

.field private bottomHeight:I

.field private bottomLayout:Landroid/text/StaticLayout;

.field private chatBgPaint:Landroid/graphics/Paint;

.field private chatRect:Landroid/graphics/RectF;

.field private chatTextPaint:Landroid/text/TextPaint;

.field private chatTitleWidths:[F

.field private chatTitles:[Ljava/lang/CharSequence;

.field private chats:[Lorg/telegram/tgnet/TLRPC$Chat;

.field private clickRect:[Landroid/graphics/Rect;

.field private clipRectPaint:Landroid/graphics/Paint;

.field private containerRect:Landroid/graphics/Rect;

.field private countRect:Landroid/graphics/RectF;

.field private counterBgPaint:Landroid/graphics/Paint;

.field private counterIcon:Landroid/graphics/drawable/Drawable;

.field private counterStarsTextPaint:Landroid/text/TextPaint;

.field private counterStr:Ljava/lang/String;

.field private counterTextBounds:Landroid/graphics/Rect;

.field private counterTextPaint:Landroid/text/TextPaint;

.field private countriesHeight:I

.field private countriesLayout:Landroid/text/StaticLayout;

.field private countriesTextPaint:Landroid/text/TextPaint;

.field private diffTextWidth:I

.field private giftReceiver:Lorg/telegram/messenger/ImageReceiver;

.field private isButtonPressed:Z

.field private isContainerPressed:Z

.field private isStars:Z

.field private lineDividerPaint:Landroid/graphics/Paint;

.field private measuredHeight:I

.field private measuredWidth:I

.field private messageObject:Lorg/telegram/messenger/MessageObject;

.field private needNewRow:[Z

.field private final parentView:Lorg/telegram/ui/Cells/ChatMessageCell;

.field private pressedPos:I

.field private pressedState:[I

.field private saveLayerPaint:Landroid/graphics/Paint;

.field private selectorColor:I

.field private selectorDrawable:Landroid/graphics/drawable/Drawable;

.field private textDivider:Ljava/lang/String;

.field private textDividerPaint:Landroid/text/TextPaint;

.field private textDividerWidth:F

.field private textPaint:Landroid/text/TextPaint;

.field private titleHeight:I

.field private titleLayout:Landroid/text/StaticLayout;

.field private topHeight:I

.field private topLayout:Landroid/text/StaticLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->monthsToEmoticon:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "1\u20e3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "2\u20e3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "3\u20e3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "4\u20e3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "5\u20e3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->measuredHeight:I

    iput v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->measuredWidth:I

    const/4 v1, -0x1

    iput v1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->pressedPos:I

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->isButtonPressed:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->isContainerPressed:Z

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->parentView:Lorg/telegram/ui/Cells/ChatMessageCell;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;)Lorg/telegram/ui/Cells/ChatMessageCell;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->parentView:Lorg/telegram/ui/Cells/ChatMessageCell;

    return-object p0
.end method

.method private checkArraysLimits(I)V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->avatarImageReceivers:[Lorg/telegram/messenger/ImageReceiver;

    array-length v1, v0

    if-ge v1, p1, :cond_0

    array-length v1, v0

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/telegram/messenger/ImageReceiver;

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->avatarImageReceivers:[Lorg/telegram/messenger/ImageReceiver;

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->avatarDrawables:[Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/telegram/ui/Components/AvatarDrawable;

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->avatarDrawables:[Lorg/telegram/ui/Components/AvatarDrawable;

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->avatarVisible:[Z

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->avatarVisible:[Z

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->chatTitles:[Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->chatTitles:[Ljava/lang/CharSequence;

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->chatTitleWidths:[F

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->chatTitleWidths:[F

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->needNewRow:[Z

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->needNewRow:[Z

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->clickRect:[Landroid/graphics/Rect;

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/Rect;

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->clickRect:[Landroid/graphics/Rect;

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->chats:[Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/telegram/tgnet/TLRPC$Chat;

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->chats:[Lorg/telegram/tgnet/TLRPC$Chat;

    const/4 v0, 0x1

    sub-int/2addr v1, v0

    :goto_0
    if-ge v1, p1, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->avatarImageReceivers:[Lorg/telegram/messenger/ImageReceiver;

    new-instance v3, Lorg/telegram/messenger/ImageReceiver;

    iget-object v4, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->parentView:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-direct {v3, v4}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    aput-object v3, v2, v1

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->avatarImageReceivers:[Lorg/telegram/messenger/ImageReceiver;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/ImageReceiver;->setAllowLoadingOnAttachedOnly(Z)V

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->avatarImageReceivers:[Lorg/telegram/messenger/ImageReceiver;

    aget-object v2, v2, v1

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->avatarDrawables:[Lorg/telegram/ui/Components/AvatarDrawable;

    new-instance v3, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v3}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    aput-object v3, v2, v1

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->avatarDrawables:[Lorg/telegram/ui/Components/AvatarDrawable;

    aget-object v2, v2, v1

    const/high16 v3, 0x41900000    # 18.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/AvatarDrawable;->setTextSize(I)V

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->clickRect:[Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private createImages()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->avatarImageReceivers:[Lorg/telegram/messenger/ImageReceiver;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0xa

    new-array v1, v0, [Lorg/telegram/messenger/ImageReceiver;

    iput-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->avatarImageReceivers:[Lorg/telegram/messenger/ImageReceiver;

    new-array v1, v0, [Lorg/telegram/ui/Components/AvatarDrawable;

    iput-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->avatarDrawables:[Lorg/telegram/ui/Components/AvatarDrawable;

    new-array v0, v0, [Z

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->avatarVisible:[Z

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->avatarImageReceivers:[Lorg/telegram/messenger/ImageReceiver;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    new-instance v2, Lorg/telegram/messenger/ImageReceiver;

    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->parentView:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-direct {v2, v3}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    aput-object v2, v1, v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->avatarImageReceivers:[Lorg/telegram/messenger/ImageReceiver;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setAllowLoadingOnAttachedOnly(Z)V

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->avatarImageReceivers:[Lorg/telegram/messenger/ImageReceiver;

    aget-object v1, v1, v0

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->avatarDrawables:[Lorg/telegram/ui/Components/AvatarDrawable;

    new-instance v2, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v2}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    aput-object v2, v1, v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->avatarDrawables:[Lorg/telegram/ui/Components/AvatarDrawable;

    aget-object v1, v1, v0

    const/high16 v2, 0x41900000    # 18.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AvatarDrawable;->setTextSize(I)V

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->clickRect:[Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getChatColor(Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v0

    if-eqz v0, :cond_0

    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outPreviewInstantText:I

    invoke-static {p1, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1

    :cond_0
    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->getColorId(Lorg/telegram/tgnet/TLRPC$Chat;)I

    move-result p1

    const/4 v0, 0x7

    if-ge p1, v0, :cond_1

    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_nameInMessage:[I

    aget p1, v0, p1

    :goto_0
    invoke-static {p1, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    goto :goto_2

    :cond_1
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->peerColors:Lorg/telegram/messenger/MessagesController$PeerColors;

    if-nez v0, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessagesController$PeerColors;->getColor(I)Lorg/telegram/messenger/MessagesController$PeerColor;

    move-result-object p1

    :goto_1
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1, v0, p2}, Lorg/telegram/messenger/MessagesController$PeerColor;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    goto :goto_2

    :cond_3
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_nameInMessage:[I

    aget p1, p1, v0

    goto :goto_0

    :goto_2
    return p1
.end method

.method private init()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->counterTextPaint:Landroid/text/TextPaint;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->counterTextPaint:Landroid/text/TextPaint;

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->counterStarsTextPaint:Landroid/text/TextPaint;

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->chatTextPaint:Landroid/text/TextPaint;

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->textPaint:Landroid/text/TextPaint;

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->textDividerPaint:Landroid/text/TextPaint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->lineDividerPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->countriesTextPaint:Landroid/text/TextPaint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->counterBgPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->chatBgPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->saveLayerPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->clipRectPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->countRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->chatRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->counterTextBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->containerRect:Landroid/graphics/Rect;

    const v0, 0x101009e

    const v2, 0x10100a7

    filled-new-array {v0, v2}, [I

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->pressedState:[I

    const/16 v0, 0xa

    new-array v2, v0, [Ljava/lang/CharSequence;

    iput-object v2, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->chatTitles:[Ljava/lang/CharSequence;

    new-array v2, v0, [Lorg/telegram/tgnet/TLRPC$Chat;

    iput-object v2, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->chats:[Lorg/telegram/tgnet/TLRPC$Chat;

    new-array v2, v0, [F

    iput-object v2, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->chatTitleWidths:[F

    new-array v2, v0, [Z

    iput-object v2, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->needNewRow:[Z

    new-array v0, v0, [Landroid/graphics/Rect;

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->clickRect:[Landroid/graphics/Rect;

    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->parentView:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-direct {v0, v2}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->giftReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setAllowLoadingOnAttachedOnly(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->clipRectPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->counterTextPaint:Landroid/text/TextPaint;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->counterTextPaint:Landroid/text/TextPaint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->counterTextPaint:Landroid/text/TextPaint;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->counterTextPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->counterStarsTextPaint:Landroid/text/TextPaint;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->counterStarsTextPaint:Landroid/text/TextPaint;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->counterStarsTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->counterStarsTextPaint:Landroid/text/TextPaint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->chatTextPaint:Landroid/text/TextPaint;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->chatTextPaint:Landroid/text/TextPaint;

    const/high16 v1, 0x41500000    # 13.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->countriesTextPaint:Landroid/text/TextPaint;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->textPaint:Landroid/text/TextPaint;

    const/high16 v1, 0x41600000    # 14.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->textDividerPaint:Landroid/text/TextPaint;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->textDividerPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    return-void
.end method

.method private setGiftImage(Lorg/telegram/messenger/MessageObject;)V
    .locals 13

    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGiveaway;

    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/UserConfig;->premiumGiftsStickerPack:Ljava/lang/String;

    if-nez v0, :cond_0

    sget p1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MediaDataController;->checkPremiumGiftStickers()V

    return-void

    :cond_0
    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/MediaDataController;->getStickerSetByName(Ljava/lang/String;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v1

    if-nez v1, :cond_1

    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/MediaDataController;->getStickerSetByEmojiOrName(Ljava/lang/String;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v1

    :cond_1
    move-object v7, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v7, :cond_8

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGiveaway;->months:I

    sget-object v3, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->monthsToEmoticon:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v3, v7, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->packs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;

    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->emoticon:Ljava/lang/String;

    invoke-static {v5, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v8, v7, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v10, v9, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    cmp-long v12, v10, v5

    if-nez v12, :cond_4

    move-object v2, v9

    :cond_5
    if-eqz v2, :cond_3

    :cond_6
    if-eqz v2, :cond_2

    :cond_7
    if-nez v2, :cond_8

    iget-object p1, v7, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, v7, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Document;

    :cond_8
    if-eqz v2, :cond_a

    iget-object p1, v2, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_emptyListPlaceholder:I

    const v1, 0x3e4ccccd    # 0.2f

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/DocumentObject;->getSvgThumb(Ljava/util/ArrayList;IF)Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    move-result-object v5

    if-eqz v5, :cond_9

    const/16 p1, 0x200

    invoke-virtual {v5, p1, p1}, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->overrideWidthAndHeight(II)V

    :cond_9
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->giftReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {v2}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v3

    const-string v6, "tgs"

    const/4 v8, 0x1

    const-string v4, "160_160_firstframe"

    move-object v2, p1

    invoke-virtual/range {v2 .. v8}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    goto :goto_1

    :cond_a
    sget p1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    if-nez v7, :cond_b

    const/4 v2, 0x1

    goto :goto_0

    :cond_b
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/messenger/MediaDataController;->loadStickersByEmojiOrName(Ljava/lang/String;ZZ)V

    :goto_1
    return-void
.end method


# virtual methods
.method public checkMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->messageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isGiveaway()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_4

    const/4 p1, 0x0

    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->clickRect:[Landroid/graphics/Rect;

    array-length v5, v3

    if-ge p1, v5, :cond_3

    aget-object v3, v3, p1

    invoke-virtual {v3, v0, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_2

    iput p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->pressedPos:I

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt p1, v1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    int-to-float v0, v0

    int-to-float v1, v2

    invoke-static {p1, v0, v1}, Landroidx/core/graphics/drawable/WrappedDrawableApi21$$ExternalSyntheticApiModelOutline2;->m(Landroid/graphics/drawable/Drawable;FF)V

    :cond_1
    iput-boolean v4, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->isButtonPressed:Z

    invoke-virtual {p0, v4}, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->setButtonPressed(Z)V

    return v4

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->containerRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_a

    iput-boolean v4, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->isContainerPressed:Z

    return v4

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v4, :cond_7

    iget-boolean p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->isButtonPressed:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->parentView:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getDelegate()Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->parentView:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getDelegate()Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->parentView:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget v2, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->pressedPos:I

    invoke-interface {p1, v0, v2}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;->didPressGiveawayChatButton(Lorg/telegram/ui/Cells/ChatMessageCell;I)V

    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->parentView:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {p1, v1}, Landroid/view/View;->playSoundEffect(I)V

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->setButtonPressed(Z)V

    iput-boolean v1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->isButtonPressed:Z

    :cond_6
    iget-boolean p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->isContainerPressed:Z

    if-eqz p1, :cond_a

    iput-boolean v1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->isContainerPressed:Z

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-static {p1}, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs;->showBulletinAbout(Lorg/telegram/messenger/MessageObject;)V

    goto :goto_1

    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_8

    goto :goto_1

    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_a

    iget-boolean p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->isButtonPressed:Z

    if-eqz p1, :cond_9

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->setButtonPressed(Z)V

    :cond_9
    iput-boolean v1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->isButtonPressed:Z

    iput-boolean v1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->isContainerPressed:Z

    :cond_a
    :goto_1
    return v1
.end method

.method public draw(Landroid/graphics/Canvas;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    move-object/from16 v10, p4

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->messageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isGiveaway()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_b

    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->selectorColor:I

    const/16 v2, 0xc

    invoke-static {v1, v2, v2}, Lorg/telegram/ui/ActionBar/Theme;->createRadSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->parentView:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->textPaint:Landroid/text/TextPaint;

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->chat_msgTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->textDividerPaint:Landroid/text/TextPaint;

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->chat_msgTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    const v3, 0x3ee66666    # 0.45f

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->lineDividerPaint:Landroid/graphics/Paint;

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->chat_msgTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    const v3, 0x3e19999a    # 0.15f

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->countriesTextPaint:Landroid/text/TextPaint;

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->chat_msgTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->chatTextPaint:Landroid/text/TextPaint;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outPreviewInstantText:I

    invoke-static {v2, v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->counterBgPaint:Landroid/graphics/Paint;

    invoke-static {v2, v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->chatBgPaint:Landroid/graphics/Paint;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outReplyLine:I

    :goto_0
    invoke-static {v2, v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    :cond_2
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->chatTextPaint:Landroid/text/TextPaint;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inPreviewInstantText:I

    invoke-static {v2, v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->counterBgPaint:Landroid/graphics/Paint;

    invoke-static {v2, v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->chatBgPaint:Landroid/graphics/Paint;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inReplyLine:I

    goto :goto_0

    :goto_1
    iget-boolean v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->isStars:Z

    if-eqz v1, :cond_3

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->counterBgPaint:Landroid/graphics/Paint;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_starsGradient1:I

    invoke-static {v2, v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v11, 0x40800000    # 4.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int v12, p3, v1

    int-to-float v1, v12

    int-to-float v2, v9

    invoke-virtual {v8, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->containerRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v12

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v9

    invoke-virtual {v1, v12, v9, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->getMeasuredWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->getMeasuredHeight()I

    move-result v1

    int-to-float v5, v1

    iget-object v6, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->saveLayerPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    const/16 v7, 0x1f

    const/4 v2, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->giftReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v8}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v13, 0x40000000    # 2.0f

    div-float v14, v1, v13

    const/high16 v1, 0x42d40000    # 106.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->counterTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    const/high16 v15, 0x41400000    # 12.0f

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->counterTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v3, v5

    iget-object v5, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->countRect:Landroid/graphics/RectF;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v6, v2

    int-to-float v6, v6

    div-float/2addr v6, v13

    sub-float v6, v14, v6

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    add-int/2addr v7, v3

    int-to-float v7, v7

    div-float/2addr v7, v13

    sub-float v7, v1, v7

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v16

    add-int v15, v2, v16

    int-to-float v15, v15

    div-float/2addr v15, v13

    add-float/2addr v15, v14

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v16

    add-int v11, v3, v16

    int-to-float v11, v11

    div-float/2addr v11, v13

    add-float/2addr v11, v1

    invoke-virtual {v5, v6, v7, v15, v11}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v5, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->countRect:Landroid/graphics/RectF;

    const/high16 v6, 0x41300000    # 11.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    iget-object v11, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->clipRectPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v5, v7, v6, v11}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v5, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->countRect:Landroid/graphics/RectF;

    int-to-float v2, v2

    div-float/2addr v2, v13

    sub-float v6, v14, v2

    int-to-float v3, v3

    div-float/2addr v3, v13

    sub-float v7, v1, v3

    add-float/2addr v2, v14

    add-float/2addr v1, v3

    invoke-virtual {v5, v6, v7, v2, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->countRect:Landroid/graphics/RectF;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->counterBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->counterIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->countRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->countRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    float-to-int v3, v3

    const v4, 0x40deb852    # 6.96f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v3, v5

    iget-object v5, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->countRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    float-to-int v5, v5

    const v6, 0x41a9eb85    # 21.24f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v5, v6

    iget-object v6, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->countRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    float-to-int v6, v6

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v6, v4

    invoke-virtual {v1, v2, v3, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->counterIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_4
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->counterStr:Ljava/lang/String;

    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->countRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-boolean v3, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->isStars:Z

    const/4 v11, 0x0

    if-eqz v3, :cond_5

    const/high16 v3, 0x41000000    # 8.0f

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    :goto_2
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->countRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    const/high16 v4, 0x40800000    # 4.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v4, v5

    add-float/2addr v3, v4

    iget-boolean v4, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->isStars:Z

    if-eqz v4, :cond_6

    iget-object v4, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->counterStarsTextPaint:Landroid/text/TextPaint;

    goto :goto_3

    :cond_6
    iget-object v4, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->counterTextPaint:Landroid/text/TextPaint;

    :goto_3
    invoke-virtual {v8, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    const/high16 v1, 0x43000000    # 128.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v8, v11, v2}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int v7, v9, v1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->diffTextWidth:I

    int-to-float v1, v1

    div-float/2addr v1, v13

    invoke-virtual {v8, v1, v11}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->titleLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, v8}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    iget v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->titleHeight:I

    int-to-float v1, v1

    invoke-virtual {v8, v11, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->additionPrizeLayout:Landroid/text/StaticLayout;

    const/high16 v9, 0x41800000    # 16.0f

    const/high16 v15, 0x40c00000    # 6.0f

    if-eqz v1, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->titleHeight:I

    iget v2, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->additionPrizeHeight:I

    add-int/2addr v1, v2

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v6, v1

    iget v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->measuredWidth:I

    int-to-float v1, v1

    div-float v5, v1, v13

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->textDivider:Ljava/lang/String;

    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->textDividerPaint:Landroid/text/TextPaint;

    invoke-virtual {v8, v1, v5, v6, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/high16 v1, 0x41880000    # 17.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v2, v1

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float v3, v6, v3

    iget v4, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->textDividerWidth:F

    div-float/2addr v4, v13

    sub-float v4, v5, v4

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v4, v11

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v1, v11

    sub-float v11, v6, v1

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->lineDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v1

    move-object/from16 v1, p1

    move/from16 v18, v5

    move v5, v11

    move v11, v6

    move-object/from16 v6, v17

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->textDividerWidth:F

    div-float/2addr v1, v13

    add-float v5, v18, v1

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    add-float v2, v5, v1

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float v3, v11, v3

    iget v4, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->measuredWidth:I

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v1, v5

    sub-float v5, v11, v1

    iget-object v6, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->lineDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->measuredWidth:I

    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->additionPrizeLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v1, v13

    iget v2, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->titleHeight:I

    int-to-float v2, v2

    invoke-virtual {v8, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->additionPrizeLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, v8}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->diffTextWidth:I

    int-to-float v1, v1

    div-float/2addr v1, v13

    iget v2, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->additionPrizeHeight:I

    iget v3, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->titleHeight:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v8, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_7
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->topLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, v8}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    iget v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->topHeight:I

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v8, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->topHeight:I

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v7, v1

    const/4 v1, 0x0

    move v11, v7

    const/4 v2, 0x0

    :goto_4
    iget-object v3, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->avatarVisible:[Z

    array-length v4, v3

    const/4 v5, 0x1

    if-ge v1, v4, :cond_e

    aget-boolean v3, v3, v1

    if-eqz v3, :cond_d

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move v4, v1

    const/4 v3, 0x0

    :cond_8
    iget-object v6, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->chatTitleWidths:[F

    aget v6, v6, v4

    const/high16 v17, 0x42200000    # 40.0f

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    add-float/2addr v3, v6

    add-int/2addr v4, v5

    iget-object v6, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->avatarVisible:[Z

    array-length v7, v6

    if-ge v4, v7, :cond_9

    iget-object v7, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->needNewRow:[Z

    aget-boolean v7, v7, v4

    if-nez v7, :cond_9

    aget-boolean v6, v6, v4

    if-nez v6, :cond_8

    :cond_9
    div-float/2addr v3, v13

    sub-float v3, v14, v3

    const/4 v4, 0x0

    invoke-virtual {v8, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    float-to-int v3, v3

    add-int/2addr v3, v12

    move v7, v1

    move v6, v3

    :goto_5
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->chats:[Lorg/telegram/tgnet/TLRPC$Chat;

    aget-object v1, v1, v7

    invoke-direct {v0, v1, v10}, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->getChatColor(Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    iget v3, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->pressedPos:I

    if-ltz v3, :cond_a

    if-ne v3, v7, :cond_a

    move/from16 v18, v1

    goto :goto_6

    :cond_a
    move/from16 v18, v2

    :goto_6
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->chatTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->chatBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->chatBgPaint:Landroid/graphics/Paint;

    const/16 v2, 0x19

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->avatarImageReceivers:[Lorg/telegram/messenger/ImageReceiver;

    aget-object v1, v1, v7

    invoke-virtual {v1, v8}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->chatTitles:[Ljava/lang/CharSequence;

    aget-object v2, v1, v7

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/high16 v19, 0x41f00000    # 30.0f

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v5, v1

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v3, v1

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->chatTextPaint:Landroid/text/TextPaint;

    const/16 v20, 0x0

    move-object/from16 v21, v1

    move-object/from16 v1, p1

    move/from16 v22, v3

    move/from16 v3, v20

    move v9, v6

    move/from16 v6, v22

    move/from16 v20, v7

    move-object/from16 v7, v21

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->chatRect:Landroid/graphics/RectF;

    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->chatTitleWidths:[F

    aget v2, v2, v20

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    const/high16 v3, 0x41c00000    # 24.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v5, v2, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->chatRect:Landroid/graphics/RectF;

    const/high16 v4, 0x41400000    # 12.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    iget-object v6, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->chatBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v1, v2, v5, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->clickRect:[Landroid/graphics/Rect;

    aget-object v1, v1, v20

    int-to-float v2, v9

    iget-object v5, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->chatRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    add-float/2addr v5, v2

    float-to-int v5, v5

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v3, v11

    invoke-virtual {v1, v9, v11, v5, v3}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->chatRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    const/4 v3, 0x0

    invoke-virtual {v8, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->chatRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    add-float/2addr v2, v1

    float-to-int v6, v2

    add-int/lit8 v7, v20, 0x1

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->avatarVisible:[Z

    array-length v2, v1

    if-ge v7, v2, :cond_c

    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->needNewRow:[Z

    aget-boolean v2, v2, v7

    if-nez v2, :cond_c

    aget-boolean v1, v1, v7

    if-nez v1, :cond_b

    goto :goto_7

    :cond_b
    move/from16 v2, v18

    const/high16 v9, 0x41800000    # 16.0f

    goto/16 :goto_5

    :cond_c
    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v8, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v11, v1

    move v1, v7

    move/from16 v2, v18

    :goto_8
    const/high16 v9, 0x41800000    # 16.0f

    goto/16 :goto_4

    :cond_d
    const/high16 v4, 0x41400000    # 12.0f

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_e
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->countriesLayout:Landroid/text/StaticLayout;

    if-eqz v1, :cond_f

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->measuredWidth:I

    iget-object v3, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->countriesLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/Layout;->getWidth()I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    div-float/2addr v1, v13

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v8, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->countriesLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, v8}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    iget v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->countriesHeight:I

    int-to-float v1, v1

    const/4 v3, 0x0

    invoke-virtual {v8, v3, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_9

    :cond_f
    const/4 v3, 0x0

    :goto_9
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v8, v3, v1}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->diffTextWidth:I

    int-to-float v1, v1

    div-float/2addr v1, v13

    invoke-virtual {v8, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->bottomLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, v8}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    iget v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->pressedPos:I

    if-ltz v1, :cond_12

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v1

    if-eqz v1, :cond_10

    const v1, 0x3df5c28f    # 0.12f

    goto :goto_a

    :cond_10
    const v1, 0x3dcccccd    # 0.1f

    :goto_a
    invoke-static {v2, v1}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v1

    iget v2, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->selectorColor:I

    if-eq v2, v1, :cond_11

    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    iput v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->selectorColor:I

    invoke-static {v2, v1, v5}, Lorg/telegram/ui/ActionBar/Theme;->setSelectorDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    :cond_11
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->clickRect:[Landroid/graphics/Rect;

    iget v3, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->pressedPos:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->parentView:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_12
    :goto_b
    return-void
.end method

.method public getMeasuredHeight()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->measuredHeight:I

    return v0
.end method

.method public getMeasuredWidth()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->measuredWidth:I

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->giftReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->avatarImageReceivers:[Lorg/telegram/messenger/ImageReceiver;

    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->giftReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->avatarImageReceivers:[Lorg/telegram/messenger/ImageReceiver;

    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setButtonPressed(Z)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->messageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isGiveaway()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    new-instance p1, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell$1;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell$1;-><init>(Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->pressedState:[I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->parentView:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->invalidate()V

    goto :goto_1

    :cond_1
    sget-object p1, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public setMessageContent(Lorg/telegram/messenger/MessageObject;II)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    iput-object v4, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->messageObject:Lorg/telegram/messenger/MessageObject;

    iput-object v4, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->titleLayout:Landroid/text/StaticLayout;

    iput-object v4, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->additionPrizeLayout:Landroid/text/StaticLayout;

    iput-object v4, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->topLayout:Landroid/text/StaticLayout;

    iput-object v4, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->bottomLayout:Landroid/text/StaticLayout;

    iput-object v4, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->countriesLayout:Landroid/text/StaticLayout;

    const/4 v5, 0x0

    iput v5, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->measuredHeight:I

    iput v5, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->measuredWidth:I

    iput v5, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->additionPrizeHeight:I

    const/4 v6, 0x0

    iput v6, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->textDividerWidth:F

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isGiveaway()Z

    move-result v7

    if-nez v7, :cond_0

    return-void

    :cond_0
    iput-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->init()V

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->createImages()V

    invoke-direct/range {p0 .. p1}, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->setGiftImage(Lorg/telegram/messenger/MessageObject;)V

    iget-object v7, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    check-cast v7, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGiveaway;

    iget v8, v7, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    and-int/lit8 v8, v8, 0x20

    if-eqz v8, :cond_1

    const/4 v8, 0x1

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    :goto_0
    iput-boolean v8, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->isStars:Z

    iget-object v8, v7, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGiveaway;->channels:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-direct {v0, v8}, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->checkArraysLimits(I)V

    const/high16 v8, 0x43140000    # 148.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v9

    const/high16 v10, 0x42a00000    # 80.0f

    if-eqz v9, :cond_2

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getMinTabletSide()I

    move-result v9

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    sub-int/2addr v9, v10

    goto :goto_1

    :cond_2
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    sub-int v9, p2, v9

    :goto_1
    sget v10, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v10}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isForwarded()Z

    move-result v11

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v11, :cond_3

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    goto :goto_2

    :cond_3
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    :goto_2
    invoke-static {v1}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v11

    neg-long v11, v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    sget v10, Lorg/telegram/messenger/R$string;->BoostingGiveawayPrizes:I

    invoke-static {v10}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v10

    new-instance v11, Landroid/text/SpannableStringBuilder;

    invoke-direct {v11, v10}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v12, Landroid/text/style/RelativeSizeSpan;

    const v13, 0x3f866666    # 1.05f

    invoke-direct {v12, v13}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v10

    const/16 v14, 0x21

    invoke-virtual {v11, v12, v5, v10, v14}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    new-instance v10, Landroid/text/SpannableStringBuilder;

    invoke-direct {v10}, Landroid/text/SpannableStringBuilder;-><init>()V

    iget-boolean v12, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->isStars:Z

    const-string v15, "\n"

    if-eqz v12, :cond_4

    iget-wide v13, v7, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGiveaway;->stars:J

    long-to-int v12, v13

    const-string v13, "BoostingStarsGiveawayMsgInfoPlural1"

    invoke-static {v13, v12}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v10, v15}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget v12, v7, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGiveaway;->quantity:I

    new-array v13, v5, [Ljava/lang/Object;

    const-string v14, "BoostingStarsGiveawayMsgInfoPlural2"

    invoke-static {v14, v12, v13}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_3

    :cond_4
    iget v12, v7, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGiveaway;->quantity:I

    const-string v13, "BoostingGiveawayMsgInfoPlural1"

    invoke-static {v13, v12}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v10, v15}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget v12, v7, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGiveaway;->quantity:I

    iget v13, v7, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGiveaway;->months:I

    new-array v14, v5, [Ljava/lang/Object;

    const-string v6, "BoldMonths"

    invoke-static {v6, v13, v14}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-array v13, v3, [Ljava/lang/Object;

    aput-object v6, v13, v5

    const-string v6, "BoostingGiveawayMsgInfoPlural2"

    invoke-static {v6, v12, v13}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    invoke-virtual {v10, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :goto_3
    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-virtual {v6, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const-string v12, "\n\n"

    invoke-virtual {v6, v12}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v12, Landroid/text/style/RelativeSizeSpan;

    const v13, 0x3ecccccd    # 0.4f

    invoke-direct {v12, v13}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v13

    sub-int/2addr v13, v3

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v14

    const/16 v4, 0x21

    invoke-virtual {v6, v12, v13, v14, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    sget v4, Lorg/telegram/messenger/R$string;->BoostingGiveawayMsgParticipants:I

    const-string v12, "BoostingGiveawayMsgParticipants"

    invoke-static {v12, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v12, Landroid/text/style/RelativeSizeSpan;

    const v13, 0x3f866666    # 1.05f

    invoke-direct {v12, v13}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v10}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v13

    add-int/2addr v13, v2

    invoke-virtual {v10}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v10

    add-int/2addr v10, v2

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int/2addr v10, v4

    const/16 v4, 0x21

    invoke-virtual {v6, v12, v13, v10, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v6, v15}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-boolean v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGiveaway;->only_new_subscribers:Z

    if-eqz v4, :cond_6

    if-eqz v1, :cond_5

    const-string v1, "BoostingGiveawayMsgNewSubsPlural"

    goto :goto_4

    :cond_5
    const-string v1, "BoostingGiveawayMsgNewSubsGroupPlural"

    :goto_4
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGiveaway;->channels:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v10, v5, [Ljava/lang/Object;

    invoke-static {v1, v4, v10}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_5
    invoke-virtual {v6, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_7

    :cond_6
    if-eqz v1, :cond_7

    const-string v1, "BoostingGiveawayMsgAllSubsPlural"

    goto :goto_6

    :cond_7
    const-string v1, "BoostingGiveawayMsgAllSubsGroupPlural"

    :goto_6
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGiveaway;->channels:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v10, v5, [Ljava/lang/Object;

    invoke-static {v1, v4, v10}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :goto_7
    sget v1, Lorg/telegram/messenger/R$string;->BoostingWinnersDate:I

    const-string v4, "BoostingWinnersDate"

    invoke-static {v4, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v10, Landroid/text/style/RelativeSizeSpan;

    const v12, 0x3f866666    # 1.05f

    invoke-direct {v10, v12}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/16 v12, 0x21

    invoke-virtual {v4, v10, v5, v1, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    new-instance v1, Ljava/util/Date;

    iget v10, v7, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGiveaway;->until_date:I

    int-to-long v12, v10

    const-wide/16 v16, 0x3e8

    mul-long v12, v12, v16

    invoke-direct {v1, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/messenger/LocaleController;->getFormatterGiveawayCard()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v10

    invoke-virtual {v10, v1}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/messenger/LocaleController;->getFormatterDay()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v12

    invoke-virtual {v12, v1}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v15}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    sget v12, Lorg/telegram/messenger/R$string;->formatDateAtTime:I

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v10, v2, v5

    aput-object v1, v2, v3

    const-string v1, "formatDateAtTime"

    invoke-static {v1, v12, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->textPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v20, 0x40000000    # 2.0f

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v15, v10

    sget-object v21, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    const/16 v16, 0x0

    const/16 v19, 0xa

    const/high16 v14, 0x3f800000    # 1.0f

    move-object v10, v11

    move-object v11, v1

    move v12, v9

    move-object v13, v2

    move-object/from16 v17, v21

    move/from16 v18, v9

    invoke-static/range {v10 .. v19}, Lorg/telegram/ui/Components/StaticLayoutEx;->createStaticLayout(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;II)Landroid/text/StaticLayout;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->titleLayout:Landroid/text/StaticLayout;

    iget-object v11, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->textPaint:Landroid/text/TextPaint;

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v15, v1

    move-object v10, v6

    invoke-static/range {v10 .. v19}, Lorg/telegram/ui/Components/StaticLayoutEx;->createStaticLayout(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;II)Landroid/text/StaticLayout;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->topLayout:Landroid/text/StaticLayout;

    iget-object v11, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->textPaint:Landroid/text/TextPaint;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v15, v1

    move-object v10, v4

    invoke-static/range {v10 .. v19}, Lorg/telegram/ui/Components/StaticLayoutEx;->createStaticLayout(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;II)Landroid/text/StaticLayout;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->bottomLayout:Landroid/text/StaticLayout;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_8
    iget-object v4, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->titleLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v4

    if-ge v1, v4, :cond_8

    int-to-double v10, v2

    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->titleLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v1}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v2

    float-to-double v12, v2

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v10

    double-to-int v2, v10

    add-int/2addr v1, v3

    goto :goto_8

    :cond_8
    const/4 v1, 0x0

    :goto_9
    iget-object v4, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->topLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v4

    if-ge v1, v4, :cond_9

    int-to-double v10, v2

    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->topLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v1}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v2

    float-to-double v12, v2

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v10

    double-to-int v2, v10

    add-int/2addr v1, v3

    goto :goto_9

    :cond_9
    const/4 v1, 0x0

    :goto_a
    iget-object v4, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->bottomLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v4

    if-ge v1, v4, :cond_a

    int-to-double v10, v2

    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->bottomLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v1}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v2

    float-to-double v12, v2

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v10

    double-to-int v2, v10

    add-int/2addr v1, v3

    goto :goto_a

    :cond_a
    const/high16 v1, 0x43340000    # 180.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    if-ge v2, v4, :cond_b

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    :cond_b
    iget-object v1, v7, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGiveaway;->prize_description:Ljava/lang/String;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c

    iget v1, v7, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGiveaway;->quantity:I

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGiveaway;->prize_description:Ljava/lang/String;

    new-array v6, v3, [Ljava/lang/Object;

    aput-object v4, v6, v5

    const-string v4, "BoostingGiveawayMsgPrizes"

    invoke-static {v4, v1, v6}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    iget-object v4, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->countriesTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v4

    invoke-static {v1, v4, v5}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v10

    iget-object v11, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->textPaint:Landroid/text/TextPaint;

    sget-object v13, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v15, v1

    sget-object v17, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    const/16 v16, 0x0

    const/16 v19, 0x14

    const/high16 v14, 0x3f800000    # 1.0f

    move v12, v2

    move/from16 v18, v2

    invoke-static/range {v10 .. v19}, Lorg/telegram/ui/Components/StaticLayoutEx;->createStaticLayout(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;II)Landroid/text/StaticLayout;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->additionPrizeLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {v1, v4}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v1

    const/high16 v4, 0x41b00000    # 22.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v1, v4

    iput v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->additionPrizeHeight:I

    sget v1, Lorg/telegram/messenger/R$string;->BoostingGiveawayMsgWithDivider:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->textDivider:Ljava/lang/String;

    iget-object v4, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->textDividerPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v1, v5, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->textDividerWidth:F

    :cond_c
    iget-object v1, v7, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGiveaway;->countries_iso2:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-string v4, ""

    if-lez v1, :cond_f

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, v7, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGiveaway;->countries_iso2:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    new-instance v11, Ljava/util/Locale;

    invoke-direct {v11, v4, v10}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/Locale;->getDisplayCountry(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10}, Lorg/telegram/messenger/LocaleController;->getLanguageFlag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-instance v12, Landroid/text/SpannableStringBuilder;

    invoke-direct {v12}, Landroid/text/SpannableStringBuilder;-><init>()V

    if-eqz v10, :cond_d

    invoke-virtual {v12, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v10

    const-string v13, "\u00a0"

    invoke-virtual {v10, v13}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_d
    invoke-virtual {v12, v11}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-interface {v1, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_e
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_f

    sget v6, Lorg/telegram/messenger/R$string;->BoostingGiveAwayFromCountries:I

    const-string v10, ", "

    invoke-static {v10, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    new-array v10, v3, [Ljava/lang/Object;

    aput-object v1, v10, v5

    const-string v1, "BoostingGiveAwayFromCountries"

    invoke-static {v1, v6, v10}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    iget-object v6, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->countriesTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v6

    invoke-static {v1, v6, v5}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v10

    iget-object v11, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->countriesTextPaint:Landroid/text/TextPaint;

    sget-object v13, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    sget-object v17, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    const/16 v16, 0x0

    const/16 v19, 0xa

    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    move v12, v2

    move/from16 v18, v2

    invoke-static/range {v10 .. v19}, Lorg/telegram/ui/Components/StaticLayoutEx;->createStaticLayout(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;II)Landroid/text/StaticLayout;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->countriesLayout:Landroid/text/StaticLayout;

    :cond_f
    const/high16 v1, 0x42180000    # 38.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v2, v1

    invoke-static {v2, v9}, Ljava/lang/Math;->min(II)I

    move-result v1

    move/from16 v2, p3

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    sub-int v2, v1, v9

    iput v2, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->diffTextWidth:I

    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->giftReceiver:Lorg/telegram/messenger/ImageReceiver;

    int-to-float v6, v1

    div-float v9, v6, v20

    int-to-float v8, v8

    div-float v10, v8, v20

    sub-float/2addr v9, v10

    const/high16 v11, 0x42280000    # 42.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v11, v10

    invoke-virtual {v2, v9, v11, v8, v8}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->titleLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v8

    sub-int/2addr v8, v3

    invoke-virtual {v2, v8}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    const/high16 v8, 0x40a00000    # 5.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    add-int/2addr v2, v8

    iput v2, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->titleHeight:I

    iget v8, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->additionPrizeHeight:I

    add-int/2addr v2, v8

    iget-object v8, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->topLayout:Landroid/text/StaticLayout;

    invoke-virtual {v8}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v9

    sub-int/2addr v9, v3

    invoke-virtual {v8, v9}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v8

    add-int/2addr v2, v8

    iput v2, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->topHeight:I

    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->bottomLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v8

    sub-int/2addr v8, v3

    invoke-virtual {v2, v8}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->bottomHeight:I

    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->countriesLayout:Landroid/text/StaticLayout;

    if-eqz v2, :cond_10

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v8

    sub-int/2addr v8, v3

    invoke-virtual {v2, v8}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    const/high16 v8, 0x41400000    # 12.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    add-int/2addr v2, v8

    goto :goto_c

    :cond_10
    const/4 v2, 0x0

    :goto_c
    iput v2, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->countriesHeight:I

    iget v8, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->measuredHeight:I

    iget v9, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->topHeight:I

    add-int/2addr v8, v9

    add-int/2addr v8, v2

    iget v2, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->bottomHeight:I

    add-int/2addr v8, v2

    iput v8, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->measuredHeight:I

    const/high16 v2, 0x43000000    # 128.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v8, v2

    iput v8, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->measuredHeight:I

    iput v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->measuredWidth:I

    iget-boolean v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->isStars:Z

    if-eqz v1, :cond_12

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->counterIcon:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_11

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$drawable;->filled_giveaway_stars:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->counterIcon:Landroid/graphics/drawable/Drawable;

    :cond_11
    iget-wide v1, v7, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGiveaway;->stars:J

    long-to-int v2, v1

    int-to-long v1, v2

    const/16 v8, 0x2c

    invoke-static {v1, v2, v8}, Lorg/telegram/messenger/LocaleController;->formatNumber(JC)Ljava/lang/String;

    move-result-object v1

    :goto_d
    iput-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->counterStr:Ljava/lang/String;

    goto :goto_e

    :cond_12
    const/4 v1, 0x0

    iput-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->counterIcon:Landroid/graphics/drawable/Drawable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v7, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGiveaway;->quantity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_d

    :goto_e
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->counterTextPaint:Landroid/text/TextPaint;

    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->counterStr:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    iget-object v9, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->counterTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v5, v8, v9}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-wide v1, v7, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGiveaway;->stars:J

    const-wide/16 v8, 0x0

    const/high16 v10, 0x41a00000    # 20.0f

    cmp-long v11, v1, v8

    if-eqz v11, :cond_13

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->counterTextBounds:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->right:I

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    add-int/2addr v2, v8

    iput v2, v1, Landroid/graphics/Rect;->right:I

    :cond_13
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->avatarVisible:[Z

    invoke-static {v1, v5}, Ljava/util/Arrays;->fill([ZZ)V

    iget v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->measuredHeight:I

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    add-int/2addr v1, v8

    iput v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->measuredHeight:I

    new-instance v1, Ljava/util/ArrayList;

    iget-object v8, v7, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGiveaway;->channels:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-direct {v1, v8}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGiveaway;->channels:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_14
    :goto_f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_15

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    sget v9, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v9}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    invoke-virtual {v9, v8}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v9

    if-eqz v9, :cond_14

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_15
    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_10
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    if-ge v7, v9, :cond_1a

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    sget v13, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v13}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v13

    invoke-virtual {v13, v9}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v9

    if-eqz v9, :cond_19

    iget-object v11, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->avatarVisible:[Z

    aput-boolean v3, v11, v7

    iget-object v11, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->chats:[Lorg/telegram/tgnet/TLRPC$Chat;

    aput-object v9, v11, v7

    iget-object v11, v9, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    iget-object v12, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->chatTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v12}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v12

    invoke-static {v11, v12, v5}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v11

    iget-object v12, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->chatTitles:[Ljava/lang/CharSequence;

    iget-object v13, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->chatTextPaint:Landroid/text/TextPaint;

    const v14, 0x3f4ccccd    # 0.8f

    mul-float v14, v14, v6

    sget-object v15, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v11, v13, v14, v15}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v11

    aput-object v11, v12, v7

    iget-object v11, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->chatTitleWidths:[F

    iget-object v12, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->chatTextPaint:Landroid/text/TextPaint;

    iget-object v13, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->chatTitles:[Ljava/lang/CharSequence;

    aget-object v13, v13, v7

    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v14

    invoke-virtual {v12, v13, v5, v14}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v12

    aput v12, v11, v7

    iget-object v11, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->chatTitleWidths:[F

    aget v11, v11, v7

    const/high16 v12, 0x42200000    # 40.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    int-to-float v12, v12

    add-float/2addr v11, v12

    add-float/2addr v8, v11

    if-lez v7, :cond_17

    iget-object v12, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->needNewRow:[Z

    const v13, 0x3f666666    # 0.9f

    mul-float v13, v13, v6

    cmpl-float v13, v8, v13

    if-lez v13, :cond_16

    const/4 v13, 0x1

    goto :goto_11

    :cond_16
    const/4 v13, 0x0

    :goto_11
    aput-boolean v13, v12, v7

    if-eqz v13, :cond_18

    iget v8, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->measuredHeight:I

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    add-int/2addr v8, v12

    iput v8, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->measuredHeight:I

    move v8, v11

    goto :goto_12

    :cond_17
    iget-object v11, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->needNewRow:[Z

    aput-boolean v5, v11, v7

    :cond_18
    :goto_12
    iget-object v11, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->avatarDrawables:[Lorg/telegram/ui/Components/AvatarDrawable;

    aget-object v11, v11, v7

    invoke-virtual {v11, v9}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$Chat;)V

    iget-object v11, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->avatarImageReceivers:[Lorg/telegram/messenger/ImageReceiver;

    aget-object v11, v11, v7

    iget-object v12, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->avatarDrawables:[Lorg/telegram/ui/Components/AvatarDrawable;

    aget-object v12, v12, v7

    invoke-virtual {v11, v9, v12}, Lorg/telegram/messenger/ImageReceiver;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Landroid/graphics/drawable/Drawable;)V

    iget-object v9, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->avatarImageReceivers:[Lorg/telegram/messenger/ImageReceiver;

    aget-object v9, v9, v7

    const/high16 v11, 0x41c00000    # 24.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    int-to-float v12, v12

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    const/4 v13, 0x0

    invoke-virtual {v9, v13, v13, v12, v11}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    const/4 v14, 0x0

    goto :goto_13

    :cond_19
    const/4 v13, 0x0

    iget-object v9, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->chats:[Lorg/telegram/tgnet/TLRPC$Chat;

    const/4 v14, 0x0

    aput-object v14, v9, v7

    iget-object v9, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->avatarVisible:[Z

    aput-boolean v5, v9, v7

    iget-object v9, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->chatTitles:[Ljava/lang/CharSequence;

    aput-object v4, v9, v7

    iget-object v9, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->needNewRow:[Z

    aput-boolean v5, v9, v7

    iget-object v9, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->chatTitleWidths:[F

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    int-to-float v15, v15

    aput v15, v9, v7

    iget-object v9, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayMessageCell;->avatarDrawables:[Lorg/telegram/ui/Components/AvatarDrawable;

    aget-object v9, v9, v7

    invoke-virtual {v9, v11, v12, v4, v4}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(JLjava/lang/String;Ljava/lang/String;)V

    :goto_13
    add-int/2addr v7, v3

    goto/16 :goto_10

    :cond_1a
    return-void
.end method
