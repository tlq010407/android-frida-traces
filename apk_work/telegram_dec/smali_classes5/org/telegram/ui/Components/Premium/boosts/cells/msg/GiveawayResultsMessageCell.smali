.class public Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private avatarDrawables:[Lorg/telegram/ui/Components/AvatarDrawable;

.field private avatarImageReceivers:[Lorg/telegram/messenger/ImageReceiver;

.field private avatarVisible:[Z

.field private bottomHeight:I

.field private bottomLayout:Landroid/text/StaticLayout;

.field private chatBgPaint:Landroid/graphics/Paint;

.field private chatRect:Landroid/graphics/RectF;

.field private chatTextPaint:Landroid/text/TextPaint;

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

.field private giftDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

.field private giftReceiver:Lorg/telegram/messenger/ImageReceiver;

.field private isButtonPressed:Z

.field private isContainerPressed:Z

.field private isStars:Z

.field private links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

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

.field private subTitleMarginLeft:I

.field private subTitleMarginTop:I

.field private textDividerPaint:Landroid/text/TextPaint;

.field private textPaint:Landroid/text/TextPaint;

.field private titleHeight:I

.field private titleLayout:Landroid/text/StaticLayout;

.field private topHeight:I

.field private topLayout:Landroid/text/StaticLayout;

.field private topStringBuilder:Landroid/text/SpannableStringBuilder;

.field private userTitleWidths:[F

.field private userTitles:[Ljava/lang/CharSequence;

.field private users:[Lorg/telegram/tgnet/TLRPC$User;


# direct methods
.method public static synthetic $r8$lambda$_7RBugZXgBva8JAtpmq38RSSLCk(Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$TL_messageMediaGiveawayResults;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->lambda$setMessageContent$1(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$TL_messageMediaGiveawayResults;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kTQvcxCPh48zQ-LLCS3hyqK1gHw(Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$TL_messageMediaGiveawayResults;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->lambda$setMessageContent$0(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$TL_messageMediaGiveawayResults;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->measuredHeight:I

    iput v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->measuredWidth:I

    const/4 v1, -0x1

    iput v1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->pressedPos:I

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->isButtonPressed:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->isContainerPressed:Z

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->parentView:Lorg/telegram/ui/Cells/ChatMessageCell;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;)Lorg/telegram/ui/Cells/ChatMessageCell;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->parentView:Lorg/telegram/ui/Cells/ChatMessageCell;

    return-object p0
.end method

.method private checkArraysLimits(I)V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->avatarImageReceivers:[Lorg/telegram/messenger/ImageReceiver;

    array-length v1, v0

    if-ge v1, p1, :cond_0

    array-length v1, v0

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/telegram/messenger/ImageReceiver;

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->avatarImageReceivers:[Lorg/telegram/messenger/ImageReceiver;

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->avatarDrawables:[Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/telegram/ui/Components/AvatarDrawable;

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->avatarDrawables:[Lorg/telegram/ui/Components/AvatarDrawable;

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->avatarVisible:[Z

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->avatarVisible:[Z

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->userTitles:[Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->userTitles:[Ljava/lang/CharSequence;

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->userTitleWidths:[F

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->userTitleWidths:[F

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->needNewRow:[Z

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->needNewRow:[Z

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->clickRect:[Landroid/graphics/Rect;

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/Rect;

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->clickRect:[Landroid/graphics/Rect;

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->users:[Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/telegram/tgnet/TLRPC$User;

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->users:[Lorg/telegram/tgnet/TLRPC$User;

    const/4 v0, 0x1

    sub-int/2addr v1, v0

    :goto_0
    if-ge v1, p1, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->avatarImageReceivers:[Lorg/telegram/messenger/ImageReceiver;

    new-instance v3, Lorg/telegram/messenger/ImageReceiver;

    iget-object v4, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->parentView:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-direct {v3, v4}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    aput-object v3, v2, v1

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->avatarImageReceivers:[Lorg/telegram/messenger/ImageReceiver;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/ImageReceiver;->setAllowLoadingOnAttachedOnly(Z)V

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->avatarImageReceivers:[Lorg/telegram/messenger/ImageReceiver;

    aget-object v2, v2, v1

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->avatarDrawables:[Lorg/telegram/ui/Components/AvatarDrawable;

    new-instance v3, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v3}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    aput-object v3, v2, v1

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->avatarDrawables:[Lorg/telegram/ui/Components/AvatarDrawable;

    aget-object v2, v2, v1

    const/high16 v3, 0x41900000    # 18.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/AvatarDrawable;->setTextSize(I)V

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->clickRect:[Landroid/graphics/Rect;

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

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->avatarImageReceivers:[Lorg/telegram/messenger/ImageReceiver;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0xa

    new-array v1, v0, [Lorg/telegram/messenger/ImageReceiver;

    iput-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->avatarImageReceivers:[Lorg/telegram/messenger/ImageReceiver;

    new-array v1, v0, [Lorg/telegram/ui/Components/AvatarDrawable;

    iput-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->avatarDrawables:[Lorg/telegram/ui/Components/AvatarDrawable;

    new-array v0, v0, [Z

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->avatarVisible:[Z

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->avatarImageReceivers:[Lorg/telegram/messenger/ImageReceiver;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    new-instance v2, Lorg/telegram/messenger/ImageReceiver;

    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->parentView:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-direct {v2, v3}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    aput-object v2, v1, v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->avatarImageReceivers:[Lorg/telegram/messenger/ImageReceiver;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setAllowLoadingOnAttachedOnly(Z)V

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->avatarImageReceivers:[Lorg/telegram/messenger/ImageReceiver;

    aget-object v1, v1, v0

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->avatarDrawables:[Lorg/telegram/ui/Components/AvatarDrawable;

    new-instance v2, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v2}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    aput-object v2, v1, v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->avatarDrawables:[Lorg/telegram/ui/Components/AvatarDrawable;

    aget-object v1, v1, v0

    const/high16 v2, 0x41900000    # 18.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AvatarDrawable;->setTextSize(I)V

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->clickRect:[Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getUserColor(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v0

    if-eqz v0, :cond_0

    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outPreviewInstantText:I

    invoke-static {p1, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1

    :cond_0
    invoke-static {p1}, Lorg/telegram/messenger/UserObject;->getColorId(Lorg/telegram/tgnet/TLRPC$User;)I

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
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController$PeerColor;->getColor1()I

    move-result p1

    goto :goto_2

    :cond_3
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_nameInMessage:[I

    const/4 v0, 0x0

    aget p1, p1, v0

    goto :goto_0

    :goto_2
    return p1
.end method

.method private init()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->counterTextPaint:Landroid/text/TextPaint;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->counterTextPaint:Landroid/text/TextPaint;

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->counterStarsTextPaint:Landroid/text/TextPaint;

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->chatTextPaint:Landroid/text/TextPaint;

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->textPaint:Landroid/text/TextPaint;

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->textDividerPaint:Landroid/text/TextPaint;

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->countriesTextPaint:Landroid/text/TextPaint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->counterBgPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->chatBgPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->saveLayerPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->clipRectPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->countRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->chatRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->counterTextBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->containerRect:Landroid/graphics/Rect;

    const v0, 0x101009e

    const v2, 0x10100a7

    filled-new-array {v0, v2}, [I

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->pressedState:[I

    const/16 v0, 0xa

    new-array v2, v0, [Ljava/lang/CharSequence;

    iput-object v2, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->userTitles:[Ljava/lang/CharSequence;

    new-array v2, v0, [Lorg/telegram/tgnet/TLRPC$User;

    iput-object v2, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->users:[Lorg/telegram/tgnet/TLRPC$User;

    new-array v2, v0, [F

    iput-object v2, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->userTitleWidths:[F

    new-array v2, v0, [Z

    iput-object v2, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->needNewRow:[Z

    new-array v0, v0, [Landroid/graphics/Rect;

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->clickRect:[Landroid/graphics/Rect;

    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->parentView:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-direct {v0, v2}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->giftReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setAllowLoadingOnAttachedOnly(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->clipRectPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->counterTextPaint:Landroid/text/TextPaint;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->counterTextPaint:Landroid/text/TextPaint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->counterTextPaint:Landroid/text/TextPaint;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->counterTextPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->counterStarsTextPaint:Landroid/text/TextPaint;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->counterStarsTextPaint:Landroid/text/TextPaint;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->counterStarsTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->counterStarsTextPaint:Landroid/text/TextPaint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->chatTextPaint:Landroid/text/TextPaint;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->chatTextPaint:Landroid/text/TextPaint;

    const/high16 v1, 0x41500000    # 13.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->countriesTextPaint:Landroid/text/TextPaint;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->textPaint:Landroid/text/TextPaint;

    const/high16 v1, 0x41600000    # 14.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->textDividerPaint:Landroid/text/TextPaint;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->textDividerPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    return-void
.end method

.method private synthetic lambda$setMessageContent$0(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$TL_messageMediaGiveawayResults;)V
    .locals 6

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v0

    iget-wide v2, p2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGiveawayResults;->channel_id:J

    neg-long v2, v2

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->parentView:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getDelegate()Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->parentView:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget v2, p2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGiveawayResults;->launch_msg_id:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-interface/range {v0 .. v5}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;->didPressReplyMessage(Lorg/telegram/ui/Cells/ChatMessageCell;IFFZ)V

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget-wide v0, p2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGiveawayResults;->channel_id:J

    const-string v2, "chat_id"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGiveawayResults;->launch_msg_id:I

    const-string v0, "message_id"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p2, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :goto_0
    return-void
.end method

.method private synthetic lambda$setMessageContent$1(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$TL_messageMediaGiveawayResults;)V
    .locals 1

    new-instance v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$TL_messageMediaGiveawayResults;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setGiftImage()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->giftReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setAllowStartLottieAnimation(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->giftDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-nez v0, :cond_0

    new-instance v0, Lorg/telegram/ui/Components/RLottieDrawable;

    sget v1, Lorg/telegram/messenger/R$raw;->giveaway_results:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x42f00000    # 120.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-direct {v0, v1, v2, v4, v3}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(ILjava/lang/String;II)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->giftDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->giftReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->giftDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public checkMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->messageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isGiveawayResults()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    if-nez v0, :cond_1

    new-instance v0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->parentView:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    if-nez v0, :cond_5

    :cond_2
    iget-object v4, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->topStringBuilder:Landroid/text/SpannableStringBuilder;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->topLayout:Landroid/text/StaticLayout;

    if-eqz v4, :cond_5

    iget v5, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->subTitleMarginTop:I

    sub-int v5, p1, v5

    if-lez v5, :cond_5

    const/high16 v6, 0x41200000    # 10.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/text/StaticLayout;->getLineForVertical(I)I

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->topLayout:Landroid/text/StaticLayout;

    iget v6, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->subTitleMarginLeft:I

    sub-int v6, v2, v6

    int-to-float v6, v6

    invoke-virtual {v5, v4, v6}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->topStringBuilder:Landroid/text/SpannableStringBuilder;

    const-class v6, Landroid/text/style/ClickableSpan;

    invoke-virtual {v5, v4, v4, v6}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/style/ClickableSpan;

    array-length v5, v4

    if-eqz v5, :cond_4

    if-ne v0, v3, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->clear()V

    aget-object p1, v4, v1

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->parentView:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {p1, v0}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    goto :goto_0

    :cond_3
    new-instance v0, Lorg/telegram/ui/Components/LinkSpanDrawable;

    aget-object v5, v4, v1

    int-to-float v2, v2

    int-to-float p1, p1

    const/4 v6, 0x0

    invoke-direct {v0, v5, v6, v2, p1}, Lorg/telegram/ui/Components/LinkSpanDrawable;-><init>(Landroid/text/style/CharacterStyle;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;FF)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->addLink(Lorg/telegram/ui/Components/LinkSpanDrawable;)V

    :try_start_0
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->topStringBuilder:Landroid/text/SpannableStringBuilder;

    aget-object v2, v4, v1

    invoke-virtual {p1, v2}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/LinkSpanDrawable;->obtainNewPath()Lorg/telegram/ui/Components/LinkPath;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->topLayout:Landroid/text/StaticLayout;

    iget v5, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->subTitleMarginLeft:I

    int-to-float v5, v5

    iget v6, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->subTitleMarginTop:I

    int-to-float v6, v6

    invoke-virtual {v0, v2, p1, v5, v6}, Lorg/telegram/ui/Components/LinkPath;->setCurrentLayout(Landroid/text/Layout;IFF)V

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->topLayout:Landroid/text/StaticLayout;

    iget-object v5, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->topStringBuilder:Landroid/text/SpannableStringBuilder;

    aget-object v1, v4, v1

    invoke-virtual {v5, v1}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v2, p1, v1, v0}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return v3

    :cond_4
    iget-object v4, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->clear()V

    iget-object v4, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->parentView:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->invalidate()V

    :cond_5
    if-nez v0, :cond_9

    const/4 v0, 0x0

    :goto_1
    iget-object v4, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->clickRect:[Landroid/graphics/Rect;

    array-length v5, v4

    if-ge v0, v5, :cond_8

    aget-object v4, v4, v0

    invoke-virtual {v4, v2, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_7

    iput v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->pressedPos:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    int-to-float v1, v2

    int-to-float p1, p1

    invoke-static {v0, v1, p1}, Landroidx/core/graphics/drawable/WrappedDrawableApi21$$ExternalSyntheticApiModelOutline2;->m(Landroid/graphics/drawable/Drawable;FF)V

    :cond_6
    iput-boolean v3, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->isButtonPressed:Z

    invoke-virtual {p0, v3}, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->setButtonPressed(Z)V

    return v3

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->containerRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_f

    iput-boolean v3, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->isContainerPressed:Z

    return v3

    :cond_9
    if-ne v0, v3, :cond_c

    iget-boolean p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->isButtonPressed:Z

    if-eqz p1, :cond_b

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->parentView:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getDelegate()Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;

    move-result-object p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->parentView:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getDelegate()Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->parentView:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget v2, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->pressedPos:I

    invoke-interface {p1, v0, v2}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;->didPressGiveawayChatButton(Lorg/telegram/ui/Cells/ChatMessageCell;I)V

    :cond_a
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->parentView:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {p1, v1}, Landroid/view/View;->playSoundEffect(I)V

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->setButtonPressed(Z)V

    iput-boolean v1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->isButtonPressed:Z

    :cond_b
    iget-boolean p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->isContainerPressed:Z

    if-eqz p1, :cond_f

    iput-boolean v1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->isContainerPressed:Z

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-static {p1}, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs;->showBulletinAbout(Lorg/telegram/messenger/MessageObject;)V

    goto :goto_2

    :cond_c
    const/4 p1, 0x2

    if-ne v0, p1, :cond_d

    goto :goto_2

    :cond_d
    const/4 p1, 0x3

    if-ne v0, p1, :cond_f

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->clear()V

    iget-boolean p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->isButtonPressed:Z

    if-eqz p1, :cond_e

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->setButtonPressed(Z)V

    :cond_e
    iput-boolean v1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->isButtonPressed:Z

    iput-boolean v1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->isContainerPressed:Z

    :cond_f
    :goto_2
    return v1
.end method

.method public draw(Landroid/graphics/Canvas;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    move-object/from16 v10, p4

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->messageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isGiveawayResults()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_a

    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->selectorColor:I

    const/16 v2, 0xc

    invoke-static {v1, v2, v2}, Lorg/telegram/ui/ActionBar/Theme;->createRadSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->parentView:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->textPaint:Landroid/text/TextPaint;

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->chat_msgTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->textDividerPaint:Landroid/text/TextPaint;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextGray2:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->countriesTextPaint:Landroid/text/TextPaint;

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->chat_msgTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->chatTextPaint:Landroid/text/TextPaint;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outPreviewInstantText:I

    invoke-static {v2, v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->counterBgPaint:Landroid/graphics/Paint;

    invoke-static {v2, v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->chatBgPaint:Landroid/graphics/Paint;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outReplyLine:I

    :goto_0
    invoke-static {v2, v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    :cond_2
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->chatTextPaint:Landroid/text/TextPaint;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inPreviewInstantText:I

    invoke-static {v2, v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->counterBgPaint:Landroid/graphics/Paint;

    invoke-static {v2, v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->chatBgPaint:Landroid/graphics/Paint;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inReplyLine:I

    goto :goto_0

    :goto_1
    iget-boolean v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->isStars:Z

    if-eqz v1, :cond_3

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->counterBgPaint:Landroid/graphics/Paint;

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

    int-to-float v13, v12

    int-to-float v1, v9

    invoke-virtual {v8, v13, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->containerRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v12

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v9

    invoke-virtual {v1, v12, v9, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->getMeasuredWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->getMeasuredHeight()I

    move-result v1

    int-to-float v5, v1

    iget-object v6, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->saveLayerPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    const/16 v7, 0x1f

    const/4 v2, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->giftReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v8}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v14, 0x40000000    # 2.0f

    div-float v15, v1, v14

    const/high16 v1, 0x42d40000    # 106.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->counterTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    const/high16 v16, 0x41400000    # 12.0f

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->counterTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v3, v5

    iget-object v5, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->countRect:Landroid/graphics/RectF;

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v6, v2

    int-to-float v6, v6

    div-float/2addr v6, v14

    sub-float v6, v15, v6

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    add-int/2addr v7, v3

    int-to-float v7, v7

    div-float/2addr v7, v14

    sub-float v7, v1, v7

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v17

    add-int v11, v2, v17

    int-to-float v11, v11

    div-float/2addr v11, v14

    add-float/2addr v11, v15

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v17

    add-int v4, v3, v17

    int-to-float v4, v4

    div-float/2addr v4, v14

    add-float/2addr v4, v1

    invoke-virtual {v5, v6, v7, v11, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v4, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->countRect:Landroid/graphics/RectF;

    const/high16 v5, 0x41300000    # 11.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    iget-object v7, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->clipRectPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v4, v6, v5, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v4, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->countRect:Landroid/graphics/RectF;

    int-to-float v2, v2

    div-float/2addr v2, v14

    sub-float v5, v15, v2

    int-to-float v3, v3

    div-float/2addr v3, v14

    sub-float v6, v1, v3

    add-float/2addr v2, v15

    add-float/2addr v1, v3

    invoke-virtual {v4, v5, v6, v2, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->countRect:Landroid/graphics/RectF;

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    iget-object v4, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->counterBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v1, v3, v2, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->counterIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->countRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->countRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    float-to-int v3, v3

    const v4, 0x40deb852    # 6.96f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v3, v5

    iget-object v5, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->countRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    float-to-int v5, v5

    const v6, 0x41a9eb85    # 21.24f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v5, v6

    iget-object v6, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->countRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    float-to-int v6, v6

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v6, v4

    invoke-virtual {v1, v2, v3, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->counterIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_4
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->counterStr:Ljava/lang/String;

    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->countRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-boolean v3, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->isStars:Z

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

    iget-object v3, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->countRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    const/high16 v4, 0x40800000    # 4.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v4, v5

    add-float/2addr v3, v4

    iget-boolean v4, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->isStars:Z

    if-eqz v4, :cond_6

    iget-object v4, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->counterStarsTextPaint:Landroid/text/TextPaint;

    goto :goto_3

    :cond_6
    iget-object v4, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->counterTextPaint:Landroid/text/TextPaint;

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

    add-int/2addr v1, v9

    iget v2, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->titleHeight:I

    add-int/2addr v2, v1

    iput v2, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->subTitleMarginTop:I

    iget v2, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->diffTextWidth:I

    int-to-float v2, v2

    div-float/2addr v2, v14

    add-float/2addr v13, v2

    float-to-int v2, v13

    iput v2, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->subTitleMarginLeft:I

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v2, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->diffTextWidth:I

    int-to-float v2, v2

    div-float/2addr v2, v14

    invoke-virtual {v8, v2, v11}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->titleLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v8}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    iget v2, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->titleHeight:I

    int-to-float v2, v2

    invoke-virtual {v8, v11, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->topLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v8}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    iget v2, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->topHeight:I

    const/high16 v9, 0x40c00000    # 6.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v8, v11, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget v2, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->topHeight:I

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    const/4 v2, 0x0

    move v13, v1

    const/4 v1, 0x0

    :goto_4
    iget-object v3, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->avatarVisible:[Z

    array-length v4, v3

    const/4 v5, 0x1

    if-ge v2, v4, :cond_d

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_c

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move v4, v2

    const/4 v3, 0x0

    :cond_7
    iget-object v6, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->userTitleWidths:[F

    aget v6, v6, v4

    const/high16 v17, 0x42200000    # 40.0f

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    add-float/2addr v3, v6

    add-int/2addr v4, v5

    iget-object v6, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->avatarVisible:[Z

    array-length v7, v6

    if-ge v4, v7, :cond_8

    iget-object v7, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->needNewRow:[Z

    aget-boolean v7, v7, v4

    if-nez v7, :cond_8

    aget-boolean v6, v6, v4

    if-nez v6, :cond_7

    :cond_8
    div-float/2addr v3, v14

    sub-float v3, v15, v3

    invoke-virtual {v8, v3, v11}, Landroid/graphics/Canvas;->translate(FF)V

    float-to-int v3, v3

    add-int/2addr v3, v12

    move v7, v2

    move v6, v3

    :goto_5
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->users:[Lorg/telegram/tgnet/TLRPC$User;

    aget-object v2, v2, v7

    invoke-direct {v0, v2, v10}, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->getUserColor(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    iget v3, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->pressedPos:I

    if-ltz v3, :cond_9

    if-ne v3, v7, :cond_9

    move/from16 v18, v2

    goto :goto_6

    :cond_9
    move/from16 v18, v1

    :goto_6
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->chatTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->chatBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->chatBgPaint:Landroid/graphics/Paint;

    const/16 v2, 0x19

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->avatarImageReceivers:[Lorg/telegram/messenger/ImageReceiver;

    aget-object v1, v1, v7

    invoke-virtual {v1, v8}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->userTitles:[Ljava/lang/CharSequence;

    aget-object v2, v1, v7

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/high16 v19, 0x41f00000    # 30.0f

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v5, v1

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v3, v1

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->chatTextPaint:Landroid/text/TextPaint;

    const/16 v20, 0x0

    move-object/from16 v21, v1

    move-object/from16 v1, p1

    move/from16 v22, v3

    move/from16 v3, v20

    move v14, v6

    move/from16 v6, v22

    move/from16 v20, v7

    move-object/from16 v7, v21

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->chatRect:Landroid/graphics/RectF;

    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->userTitleWidths:[F

    aget v2, v2, v20

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    const/high16 v3, 0x41c00000    # 24.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, v11, v11, v2, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->chatRect:Landroid/graphics/RectF;

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->chatBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v1, v2, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->clickRect:[Landroid/graphics/Rect;

    aget-object v1, v1, v20

    int-to-float v2, v14

    iget-object v4, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->chatRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    add-float/2addr v4, v2

    float-to-int v4, v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v3, v13

    invoke-virtual {v1, v14, v13, v4, v3}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->chatRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    invoke-virtual {v8, v1, v11}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->chatRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    add-float/2addr v2, v1

    float-to-int v6, v2

    add-int/lit8 v7, v20, 0x1

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->avatarVisible:[Z

    array-length v2, v1

    if-ge v7, v2, :cond_b

    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->needNewRow:[Z

    aget-boolean v2, v2, v7

    if-nez v2, :cond_b

    aget-boolean v1, v1, v7

    if-nez v1, :cond_a

    goto :goto_7

    :cond_a
    move/from16 v1, v18

    const/high16 v14, 0x40000000    # 2.0f

    goto/16 :goto_5

    :cond_b
    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v8, v11, v1}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v13, v1

    move v2, v7

    move/from16 v1, v18

    :goto_8
    const/high16 v14, 0x40000000    # 2.0f

    goto/16 :goto_4

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_d
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->countriesLayout:Landroid/text/StaticLayout;

    if-eqz v2, :cond_e

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v2, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->measuredWidth:I

    iget-object v3, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->countriesLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/Layout;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v8, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->countriesLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v8}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    iget v2, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->countriesHeight:I

    int-to-float v2, v2

    invoke-virtual {v8, v11, v2}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_e
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v8, v11, v2}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v2, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->diffTextWidth:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {v8, v2, v11}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->bottomLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v8}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    iget v2, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->pressedPos:I

    if-ltz v2, :cond_11

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v2

    if-eqz v2, :cond_f

    const v2, 0x3df5c28f    # 0.12f

    goto :goto_9

    :cond_f
    const v2, 0x3dcccccd    # 0.1f

    :goto_9
    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v1

    iget v2, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->selectorColor:I

    if-eq v2, v1, :cond_10

    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    iput v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->selectorColor:I

    invoke-static {v2, v1, v5}, Lorg/telegram/ui/ActionBar/Theme;->setSelectorDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    :cond_10
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->clickRect:[Landroid/graphics/Rect;

    iget v3, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->pressedPos:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->parentView:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_11
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    if-eqz v1, :cond_12

    invoke-virtual {v1, v8}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->draw(Landroid/graphics/Canvas;)Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->parentView:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->invalidate()V

    :cond_12
    :goto_a
    return-void
.end method

.method public getMeasuredHeight()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->measuredHeight:I

    return v0
.end method

.method public getMeasuredWidth()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->measuredWidth:I

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->giftReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->avatarImageReceivers:[Lorg/telegram/messenger/ImageReceiver;

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

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->giftReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->avatarImageReceivers:[Lorg/telegram/messenger/ImageReceiver;

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

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->messageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isGiveawayResults()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->clear()V

    :cond_1
    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell$1;-><init>(Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;)V

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->pressedState:[I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->parentView:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->invalidate()V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v0, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public setMessageContent(Lorg/telegram/messenger/MessageObject;II)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    iput-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->messageObject:Lorg/telegram/messenger/MessageObject;

    iput-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->titleLayout:Landroid/text/StaticLayout;

    iput-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->topLayout:Landroid/text/StaticLayout;

    iput-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->bottomLayout:Landroid/text/StaticLayout;

    iput-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->countriesLayout:Landroid/text/StaticLayout;

    const/4 v3, 0x0

    iput v3, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->measuredHeight:I

    iput v3, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->measuredWidth:I

    iput-boolean v3, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->isStars:Z

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isGiveawayResults()Z

    move-result v4

    if-nez v4, :cond_0

    return-void

    :cond_0
    iput-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->init()V

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->createImages()V

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->setGiftImage()V

    iget-object v4, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGiveawayResults;

    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGiveawayResults;->winners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-direct {v0, v5}, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->checkArraysLimits(I)V

    const/high16 v5, 0x42b40000    # 90.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/high16 v6, 0x43660000    # 230.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sget v7, Lorg/telegram/messenger/R$string;->BoostingGiveawayResultsMsgWinnersSelected:I

    const-string v8, "BoostingGiveawayResultsMsgWinnersSelected"

    invoke-static {v8, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v7

    new-instance v8, Landroid/text/SpannableStringBuilder;

    invoke-direct {v8, v7}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v9, Landroid/text/style/RelativeSizeSpan;

    const v10, 0x3f866666    # 1.05f

    invoke-direct {v9, v10}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    const/16 v11, 0x21

    invoke-virtual {v8, v9, v3, v7, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    new-instance v7, Landroid/text/SpannableStringBuilder;

    invoke-direct {v7}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v7, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->topStringBuilder:Landroid/text/SpannableStringBuilder;

    iget v7, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGiveawayResults;->winners_count:I

    const-string v9, "BoostingGiveawayResultsMsgWinnersTitle"

    invoke-static {v9, v7}, Lorg/telegram/messenger/LocaleController;->getPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageLinkIn:I

    new-instance v12, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell$$ExternalSyntheticLambda0;

    invoke-direct {v12, v0, v1, v4}, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$TL_messageMediaGiveawayResults;)V

    invoke-static {v7, v9, v3, v12}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;IILjava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    iget-object v7, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->topStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "**"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGiveawayResults;->winners_count:I

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v9

    const-string v12, "%1$d"

    invoke-static {v12, v1, v9}, Lorg/telegram/messenger/AndroidUtilities;->replaceCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-object v7, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->topStringBuilder:Landroid/text/SpannableStringBuilder;

    const-string v9, "\n\n"

    invoke-virtual {v7, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-object v7, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->topStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v9, Landroid/text/style/RelativeSizeSpan;

    const v12, 0x3ecccccd    # 0.4f

    invoke-direct {v9, v12}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    iget-object v12, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->topStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v12}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v12

    const/16 v17, 0x1

    add-int/lit8 v12, v12, -0x1

    iget-object v13, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->topStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v13}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v13

    invoke-virtual {v7, v9, v12, v13, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iget v7, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGiveawayResults;->winners_count:I

    const-string v9, "BoostingGiveawayResultsMsgWinners"

    invoke-static {v9, v7}, Lorg/telegram/messenger/LocaleController;->getPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v7

    iget-object v9, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->topStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v9, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-object v9, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->topStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v12, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v12, v10}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v13

    add-int/lit8 v13, v13, 0x2

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    add-int/2addr v1, v7

    invoke-virtual {v9, v12, v13, v1, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    iget v7, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGiveawayResults;->winners_count:I

    iget-object v9, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGiveawayResults;->winners:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-eq v7, v9, :cond_1

    iget v7, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGiveawayResults;->winners_count:I

    iget-object v9, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGiveawayResults;->winners:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v7, v9

    new-array v9, v3, [Ljava/lang/Object;

    const-string v12, "BoostingGiveawayResultsMsgAllAndMoreWinners"

    invoke-static {v12, v7, v9}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v7, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v7, v10}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    invoke-virtual {v1, v7, v3, v9, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    const-string v7, "\n"

    invoke-virtual {v1, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_1
    iget v7, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    and-int/lit8 v7, v7, 0x20

    if-eqz v7, :cond_2

    const/4 v7, 0x1

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    :goto_0
    iput-boolean v7, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->isStars:Z

    if-eqz v7, :cond_3

    iget-wide v9, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGiveawayResults;->stars:J

    long-to-int v7, v9

    const-string v9, "BoostingStarsGiveawayResultsMsgAllWinnersReceivedLinks"

    invoke-static {v9, v7}, Lorg/telegram/messenger/LocaleController;->formatPluralStringSpaced(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    :goto_1
    invoke-virtual {v1, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_2

    :cond_3
    sget v7, Lorg/telegram/messenger/R$string;->BoostingGiveawayResultsMsgAllWinnersReceivedLinks:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :goto_2
    iget-object v9, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->textPaint:Landroid/text/TextPaint;

    sget-object v18, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v19, 0x40000000    # 2.0f

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v12, v7

    sget-object v20, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    const/4 v13, 0x0

    const/16 v16, 0xa

    const/high16 v11, 0x3f800000    # 1.0f

    move-object v7, v8

    move-object v8, v9

    move v9, v6

    move-object/from16 v10, v18

    move-object/from16 v14, v20

    move v15, v6

    invoke-static/range {v7 .. v16}, Lorg/telegram/ui/Components/StaticLayoutEx;->createStaticLayout(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;II)Landroid/text/StaticLayout;

    move-result-object v7

    iput-object v7, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->titleLayout:Landroid/text/StaticLayout;

    iget-object v7, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->topStringBuilder:Landroid/text/SpannableStringBuilder;

    iget-object v8, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->textPaint:Landroid/text/TextPaint;

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v12, v9

    move v9, v6

    invoke-static/range {v7 .. v16}, Lorg/telegram/ui/Components/StaticLayoutEx;->createStaticLayout(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;II)Landroid/text/StaticLayout;

    move-result-object v7

    iput-object v7, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->topLayout:Landroid/text/StaticLayout;

    iget-object v8, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->textPaint:Landroid/text/TextPaint;

    const/high16 v7, 0x40400000    # 3.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v12, v7

    move-object v7, v1

    invoke-static/range {v7 .. v16}, Lorg/telegram/ui/Components/StaticLayoutEx;->createStaticLayout(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;II)Landroid/text/StaticLayout;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->bottomLayout:Landroid/text/StaticLayout;

    move/from16 v1, p3

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    sub-int v6, v1, v6

    iput v6, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->diffTextWidth:I

    iget-object v6, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->giftReceiver:Lorg/telegram/messenger/ImageReceiver;

    int-to-float v7, v1

    div-float v8, v7, v19

    int-to-float v5, v5

    div-float v9, v5, v19

    sub-float/2addr v8, v9

    const/high16 v10, 0x428c0000    # 70.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v10, v9

    invoke-virtual {v6, v8, v10, v5, v5}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    iget-object v5, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->titleLayout:Landroid/text/StaticLayout;

    invoke-virtual {v5}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v5

    const/high16 v6, 0x40a00000    # 5.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->titleHeight:I

    iget-object v6, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->topLayout:Landroid/text/StaticLayout;

    invoke-virtual {v6}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v6, v8}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->topHeight:I

    iget-object v5, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->bottomLayout:Landroid/text/StaticLayout;

    invoke-virtual {v5}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v5

    iput v5, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->bottomHeight:I

    iget-object v5, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->countriesLayout:Landroid/text/StaticLayout;

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v5

    const/high16 v6, 0x41400000    # 12.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v5, v6

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    :goto_3
    iput v5, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->countriesHeight:I

    iget v6, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->measuredHeight:I

    iget v8, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->topHeight:I

    add-int/2addr v6, v8

    add-int/2addr v6, v5

    iget v5, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->bottomHeight:I

    add-int/2addr v6, v5

    iput v6, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->measuredHeight:I

    const/high16 v5, 0x43000000    # 128.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v6, v5

    iput v6, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->measuredHeight:I

    iput v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->measuredWidth:I

    iget-boolean v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->isStars:Z

    if-eqz v1, :cond_6

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->counterIcon:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_5

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v5, Lorg/telegram/messenger/R$drawable;->filled_giveaway_stars:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->counterIcon:Landroid/graphics/drawable/Drawable;

    :cond_5
    iget-wide v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGiveawayResults;->stars:J

    long-to-int v1, v5

    int-to-long v5, v1

    const/16 v1, 0x2c

    invoke-static {v5, v6, v1}, Lorg/telegram/messenger/LocaleController;->formatNumber(JC)Ljava/lang/String;

    move-result-object v1

    :goto_4
    iput-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->counterStr:Ljava/lang/String;

    goto :goto_5

    :cond_6
    iput-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->counterIcon:Landroid/graphics/drawable/Drawable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "x"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGiveawayResults;->winners_count:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :goto_5
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->counterTextPaint:Landroid/text/TextPaint;

    iget-object v5, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->counterStr:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    iget-object v8, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->counterTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v5, v3, v6, v8}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-boolean v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->isStars:Z

    const/high16 v5, 0x41a00000    # 20.0f

    if-eqz v1, :cond_7

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->counterTextBounds:Landroid/graphics/Rect;

    iget v6, v1, Landroid/graphics/Rect;->right:I

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    add-int/2addr v6, v8

    iput v6, v1, Landroid/graphics/Rect;->right:I

    :cond_7
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->avatarVisible:[Z

    invoke-static {v1, v3}, Ljava/util/Arrays;->fill([ZZ)V

    iget v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->measuredHeight:I

    const/high16 v6, 0x41f00000    # 30.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    add-int/2addr v1, v8

    iput v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->measuredHeight:I

    new-instance v1, Ljava/util/ArrayList;

    iget-object v8, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGiveawayResults;->winners:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-direct {v1, v8}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGiveawayResults;->winners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_8
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    sget v9, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v9}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    invoke-virtual {v9, v8}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v9

    if-eqz v9, :cond_8

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_9
    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_7
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    if-ge v8, v10, :cond_e

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    sget v13, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v13}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v13

    invoke-virtual {v13, v10}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v10

    if-eqz v10, :cond_d

    iget-object v11, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->avatarVisible:[Z

    aput-boolean v17, v11, v8

    iget-object v11, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->users:[Lorg/telegram/tgnet/TLRPC$User;

    aput-object v10, v11, v8

    invoke-static {v10}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v11

    iget-object v12, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->chatTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v12}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v12

    invoke-static {v11, v12, v3}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v11

    iget-object v12, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->userTitles:[Ljava/lang/CharSequence;

    iget-object v13, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->chatTextPaint:Landroid/text/TextPaint;

    const v14, 0x3f4ccccd    # 0.8f

    mul-float v14, v14, v7

    sget-object v15, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v11, v13, v14, v15}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v11

    aput-object v11, v12, v8

    iget-object v11, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->userTitleWidths:[F

    iget-object v12, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->chatTextPaint:Landroid/text/TextPaint;

    iget-object v13, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->userTitles:[Ljava/lang/CharSequence;

    aget-object v13, v13, v8

    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v14

    invoke-virtual {v12, v13, v3, v14}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v12

    aput v12, v11, v8

    iget-object v11, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->userTitleWidths:[F

    aget v11, v11, v8

    const/high16 v12, 0x42200000    # 40.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    int-to-float v12, v12

    add-float/2addr v11, v12

    add-float/2addr v9, v11

    if-lez v8, :cond_b

    iget-object v12, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->needNewRow:[Z

    const v13, 0x3f666666    # 0.9f

    mul-float v13, v13, v7

    cmpl-float v13, v9, v13

    if-lez v13, :cond_a

    const/4 v13, 0x1

    goto :goto_8

    :cond_a
    const/4 v13, 0x0

    :goto_8
    aput-boolean v13, v12, v8

    if-eqz v13, :cond_c

    iget v9, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->measuredHeight:I

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    add-int/2addr v9, v12

    iput v9, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->measuredHeight:I

    move v9, v11

    goto :goto_9

    :cond_b
    iget-object v11, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->needNewRow:[Z

    aput-boolean v3, v11, v8

    :cond_c
    :goto_9
    iget-object v11, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->avatarDrawables:[Lorg/telegram/ui/Components/AvatarDrawable;

    aget-object v11, v11, v8

    invoke-virtual {v11, v10}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    iget-object v11, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->avatarImageReceivers:[Lorg/telegram/messenger/ImageReceiver;

    aget-object v11, v11, v8

    iget-object v12, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->avatarDrawables:[Lorg/telegram/ui/Components/AvatarDrawable;

    aget-object v12, v12, v8

    invoke-virtual {v11, v10, v12}, Lorg/telegram/messenger/ImageReceiver;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Landroid/graphics/drawable/Drawable;)V

    iget-object v10, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->avatarImageReceivers:[Lorg/telegram/messenger/ImageReceiver;

    aget-object v10, v10, v8

    const/high16 v11, 0x41c00000    # 24.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    int-to-float v12, v12

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v10, v4, v4, v12, v11}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    goto :goto_a

    :cond_d
    iget-object v10, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->users:[Lorg/telegram/tgnet/TLRPC$User;

    aput-object v2, v10, v8

    iget-object v10, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->avatarVisible:[Z

    aput-boolean v3, v10, v8

    iget-object v10, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->userTitles:[Ljava/lang/CharSequence;

    const-string v13, ""

    aput-object v13, v10, v8

    iget-object v10, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->needNewRow:[Z

    aput-boolean v3, v10, v8

    iget-object v10, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->userTitleWidths:[F

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    int-to-float v14, v14

    aput v14, v10, v8

    iget-object v10, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/msg/GiveawayResultsMessageCell;->avatarDrawables:[Lorg/telegram/ui/Components/AvatarDrawable;

    aget-object v10, v10, v8

    invoke-virtual {v10, v11, v12, v13, v13}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(JLjava/lang/String;Ljava/lang/String;)V

    :goto_a
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_7

    :cond_e
    return-void
.end method
