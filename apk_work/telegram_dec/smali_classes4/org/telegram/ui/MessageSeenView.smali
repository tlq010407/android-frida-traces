.class public Lorg/telegram/ui/MessageSeenView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/MessageSeenView$UserCell;
    }
.end annotation


# instance fields
.field avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

.field currentAccount:I

.field dates:Ljava/util/ArrayList;

.field flickerLoadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

.field iconView:Landroid/widget/ImageView;

.field ignoreLayout:Z

.field isVoice:Z

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field peerIds:Ljava/util/ArrayList;

.field titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field public users:Ljava/util/ArrayList;


# direct methods
.method public static synthetic $r8$lambda$KRiDezFtaLuZPL8Pe5MZwNjFHXs(Lorg/telegram/ui/MessageSeenView;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;JILorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/MessageSeenView;->lambda$new$4(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;JILorg/telegram/tgnet/TLRPC$Chat;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KwN4onZ6YhnPecXXW3cYcwCjaxs(Lorg/telegram/ui/MessageSeenView;JILorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/MessageSeenView;->lambda$new$5(JILorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MMPrkE5_B5s9RUrciIIYFiGBT9Y(Lorg/telegram/ui/MessageSeenView;Lorg/telegram/tgnet/TLObject;ILjava/util/HashMap;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/MessageSeenView;->lambda$new$2(Lorg/telegram/tgnet/TLObject;ILjava/util/HashMap;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$O4__tDWeqgV2K25LBXOEypPInbw(Lorg/telegram/ui/MessageSeenView;Lorg/telegram/tgnet/TLObject;ILjava/util/HashMap;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/MessageSeenView;->lambda$new$0(Lorg/telegram/tgnet/TLObject;ILjava/util/HashMap;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Yba_PCIMq_OzWkFXHB_qibuThEg(Lorg/telegram/ui/MessageSeenView;ILjava/util/HashMap;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/MessageSeenView;->lambda$new$3(ILjava/util/HashMap;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pGw7Zq6BcQF8YdeibVcxae3Ubpo(Lorg/telegram/ui/MessageSeenView;ILjava/util/HashMap;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/MessageSeenView;->lambda$new$1(ILjava/util/HashMap;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 11

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/MessageSeenView;->peerIds:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/MessageSeenView;->dates:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/MessageSeenView;->users:Ljava/util/ArrayList;

    iput p2, p0, Lorg/telegram/ui/MessageSeenView;->currentAccount:I

    invoke-virtual {p3}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p3}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lorg/telegram/ui/MessageSeenView;->isVoice:Z

    new-instance v0, Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/FlickerLoadingView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/MessageSeenView;->flickerLoadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuBackground:I

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    const/4 v5, -0x1

    invoke-virtual {v0, v3, v4, v5}, Lorg/telegram/ui/Components/FlickerLoadingView;->setColors(III)V

    iget-object v0, p0, Lorg/telegram/ui/MessageSeenView;->flickerLoadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/FlickerLoadingView;->setViewType(I)V

    iget-object v0, p0, Lorg/telegram/ui/MessageSeenView;->flickerLoadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->setIsSingleCell(Z)V

    iget-object v0, p0, Lorg/telegram/ui/MessageSeenView;->flickerLoadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    const/4 v3, -0x2

    const/high16 v4, -0x40800000    # -1.0f

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/MessageSeenView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    iget-object v0, p0, Lorg/telegram/ui/MessageSeenView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setEllipsizeByGradient(Z)V

    iget-object v0, p0, Lorg/telegram/ui/MessageSeenView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/high16 v1, 0x42780000    # 62.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightPadding(I)V

    iget-object v0, p0, Lorg/telegram/ui/MessageSeenView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/high16 v4, -0x40000000    # -2.0f

    const/16 v5, 0x13

    const/high16 v6, 0x42200000    # 40.0f

    const/4 v7, 0x0

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/Components/AvatarsImageView;

    invoke-direct {v0, p1, v2}, Lorg/telegram/ui/Components/AvatarsImageView;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lorg/telegram/ui/MessageSeenView;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AvatarsImageView;->setStyle(I)V

    iget-object v0, p0, Lorg/telegram/ui/MessageSeenView;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    const/high16 v1, 0x41b00000    # 22.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AvatarsImageView;->setAvatarsTextSize(I)V

    iget-object v0, p0, Lorg/telegram/ui/MessageSeenView;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    const/16 v3, 0x38

    const/high16 v4, -0x40800000    # -1.0f

    const/16 v5, 0x15

    const/4 v6, 0x0

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/telegram/ui/MessageSeenView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessageReadParticipants;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessageReadParticipants;-><init>()V

    invoke-virtual {p3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessageReadParticipants;->msg_id:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {p3}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessageReadParticipants;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/MessageSeenView;->iconView:Landroid/widget/ImageView;

    const/16 v3, 0x18

    const/high16 v4, 0x41c00000    # 24.0f

    const/16 v5, 0x13

    const/high16 v6, 0x41300000    # 11.0f

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v1, p0, Lorg/telegram/ui/MessageSeenView;->isVoice:Z

    if-eqz v1, :cond_2

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_played:I

    goto :goto_2

    :cond_2
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_seen:I

    :goto_2
    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItemIcon:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v1, p0, Lorg/telegram/ui/MessageSeenView;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lorg/telegram/ui/MessageSeenView;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lorg/telegram/ui/MessageSeenView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz p1, :cond_3

    iget-wide v3, p1, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    :goto_3
    move-wide v7, v3

    goto :goto_4

    :cond_3
    const-wide/16 v3, 0x0

    goto :goto_3

    :goto_4
    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance p3, Lorg/telegram/ui/MessageSeenView$$ExternalSyntheticLambda0;

    move-object v5, p3

    move-object v6, p0

    move v9, p2

    move-object v10, p4

    invoke-direct/range {v5 .. v10}, Lorg/telegram/ui/MessageSeenView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/MessageSeenView;JILorg/telegram/tgnet/TLRPC$Chat;)V

    invoke-virtual {p1, v0, p3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogButtonSelector:I

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    const/4 p2, 0x6

    invoke-static {p1, p2, v2}, Lorg/telegram/ui/ActionBar/Theme;->createRadSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v2}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method private synthetic lambda$new$0(Lorg/telegram/tgnet/TLObject;ILjava/util/HashMap;Ljava/util/ArrayList;)V
    .locals 5

    if-eqz p1, :cond_1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$channels_ChannelParticipants;->users:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$channels_ChannelParticipants;->users:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    iget-wide v3, v2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p3, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    iget-object p2, p0, Lorg/telegram/ui/MessageSeenView;->peerIds:Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lorg/telegram/ui/MessageSeenView;->dates:Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lorg/telegram/ui/MessageSeenView;->users:Ljava/util/ArrayList;

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLObject;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/MessageSeenView;->updateView()V

    return-void
.end method

.method private synthetic lambda$new$1(ILjava/util/HashMap;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    new-instance p5, Lorg/telegram/ui/MessageSeenView$$ExternalSyntheticLambda4;

    move-object v0, p5

    move-object v1, p0

    move-object v2, p4

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/MessageSeenView$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/MessageSeenView;Lorg/telegram/tgnet/TLObject;ILjava/util/HashMap;Ljava/util/ArrayList;)V

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$2(Lorg/telegram/tgnet/TLObject;ILjava/util/HashMap;Ljava/util/ArrayList;)V
    .locals 5

    if-eqz p1, :cond_1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_messages_chatFull;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_chatFull;->users:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_chatFull;->users:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    iget-wide v3, v2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p3, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    iget-object p2, p0, Lorg/telegram/ui/MessageSeenView;->peerIds:Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lorg/telegram/ui/MessageSeenView;->dates:Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lorg/telegram/ui/MessageSeenView;->users:Ljava/util/ArrayList;

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLObject;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/MessageSeenView;->updateView()V

    return-void
.end method

.method private synthetic lambda$new$3(ILjava/util/HashMap;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    new-instance p5, Lorg/telegram/ui/MessageSeenView$$ExternalSyntheticLambda5;

    move-object v0, p5

    move-object v1, p0

    move-object v2, p4

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/MessageSeenView$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/MessageSeenView;Lorg/telegram/tgnet/TLObject;ILjava/util/HashMap;Ljava/util/ArrayList;)V

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$4(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;JILorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p5

    move-object/from16 v3, p6

    if-nez p1, :cond_8

    instance-of v4, v1, Lorg/telegram/tgnet/Vector;

    if-eqz v4, :cond_8

    check-cast v1, Lorg/telegram/tgnet/Vector;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget-object v8, v1, Lorg/telegram/tgnet/Vector;->objects:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v8, :cond_5

    iget-object v11, v1, Lorg/telegram/tgnet/Vector;->objects:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    instance-of v12, v11, Lorg/telegram/tgnet/TLRPC$TL_readParticipantDate;

    if-eqz v12, :cond_1

    check-cast v11, Lorg/telegram/tgnet/TLRPC$TL_readParticipantDate;

    iget v12, v11, Lorg/telegram/tgnet/TLRPC$TL_readParticipantDate;->date:I

    iget-wide v13, v11, Lorg/telegram/tgnet/TLRPC$TL_readParticipantDate;->user_id:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    cmp-long v15, p3, v13

    if-nez v15, :cond_0

    goto :goto_2

    :cond_0
    invoke-static/range {p5 .. p5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v13

    invoke-virtual {v13, v11}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    new-instance v13, Landroid/util/Pair;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-direct {v13, v11, v12}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    instance-of v12, v11, Ljava/lang/Long;

    if-eqz v12, :cond_4

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    cmp-long v14, p3, v12

    if-nez v14, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v16, v12, v14

    invoke-static/range {p5 .. p5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v12

    if-lez v16, :cond_3

    invoke-virtual {v12, v11}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    new-instance v12, Landroid/util/Pair;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-direct {v12, v11, v13}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    neg-long v13, v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    new-instance v12, Landroid/util/Pair;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-direct {v12, v11, v13}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_3
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v9, v1, :cond_8

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v2, v0, Lorg/telegram/ui/MessageSeenView;->peerIds:Ljava/util/ArrayList;

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lorg/telegram/ui/MessageSeenView;->dates:Ljava/util/ArrayList;

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lorg/telegram/ui/MessageSeenView;->users:Ljava/util/ArrayList;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLObject;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_6
    invoke-static/range {p6 .. p6}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;-><init>()V

    invoke-static/range {p5 .. p5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget v4, v4, Lorg/telegram/messenger/MessagesController;->chatReadMarkSizeThreshold:I

    iput v4, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->limit:I

    iput v9, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->offset:I

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsRecent;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsRecent;-><init>()V

    iput-object v4, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->filter:Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;

    invoke-static/range {p5 .. p5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-wide v8, v3, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {v4, v8, v9}, Lorg/telegram/messenger/MessagesController;->getInputChannel(J)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v3

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    invoke-static/range {p5 .. p5}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/MessageSeenView$$ExternalSyntheticLambda2;

    invoke-direct {v4, v0, v2, v6, v7}, Lorg/telegram/ui/MessageSeenView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/MessageSeenView;ILjava/util/HashMap;Ljava/util/ArrayList;)V

    :goto_4
    invoke-virtual {v3, v1, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_5

    :cond_7
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getFullChat;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messages_getFullChat;-><init>()V

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    iput-wide v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getFullChat;->chat_id:J

    invoke-static/range {p5 .. p5}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/MessageSeenView$$ExternalSyntheticLambda3;

    invoke-direct {v4, v0, v2, v6, v7}, Lorg/telegram/ui/MessageSeenView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/MessageSeenView;ILjava/util/HashMap;Ljava/util/ArrayList;)V

    goto :goto_4

    :cond_8
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/MessageSeenView;->updateView()V

    :goto_5
    return-void
.end method

.method private synthetic lambda$new$5(JILorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 9

    new-instance v8, Lorg/telegram/ui/MessageSeenView$$ExternalSyntheticLambda1;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p6

    move-object v3, p5

    move-wide v4, p1

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/MessageSeenView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/MessageSeenView;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;JILorg/telegram/tgnet/TLRPC$Chat;)V

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateView()V
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/MessageSeenView;->users:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    const/4 v0, 0x0

    :goto_1
    const/4 v3, 0x3

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/MessageSeenView;->users:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/MessageSeenView;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    iget v4, p0, Lorg/telegram/ui/MessageSeenView;->currentAccount:I

    iget-object v5, p0, Lorg/telegram/ui/MessageSeenView;->users:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLObject;

    :goto_2
    invoke-virtual {v3, v0, v4, v5}, Lorg/telegram/ui/Components/AvatarsImageView;->setObject(IILorg/telegram/tgnet/TLObject;)V

    goto :goto_3

    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/MessageSeenView;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    iget v4, p0, Lorg/telegram/ui/MessageSeenView;->currentAccount:I

    const/4 v5, 0x0

    goto :goto_2

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/MessageSeenView;->users:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/MessageSeenView;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    const/high16 v5, 0x41c00000    # 24.0f

    :goto_4
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v0, v5}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_5

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/MessageSeenView;->users:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v4, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/MessageSeenView;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    const/high16 v5, 0x41400000    # 12.0f

    goto :goto_4

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/MessageSeenView;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationX(F)V

    :goto_5
    iget-object v0, p0, Lorg/telegram/ui/MessageSeenView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v5, p0, Lorg/telegram/ui/MessageSeenView;->users:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    mul-int/lit8 v4, v4, 0xc

    add-int/lit8 v4, v4, 0x26

    int-to-float v4, v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightPadding(I)V

    iget-object v0, p0, Lorg/telegram/ui/MessageSeenView;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/AvatarsImageView;->commitTransition(Z)V

    iget-object v0, p0, Lorg/telegram/ui/MessageSeenView;->peerIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/MessageSeenView;->users:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/MessageSeenView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v1, p0, Lorg/telegram/ui/MessageSeenView;->users:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLObject;

    invoke-static {v1}, Lorg/telegram/messenger/ContactsController;->formatName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v1

    :goto_6
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    goto :goto_8

    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/MessageSeenView;->peerIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/MessageSeenView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v1, Lorg/telegram/messenger/R$string;->NobodyViewed:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/MessageSeenView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-boolean v1, p0, Lorg/telegram/ui/MessageSeenView;->isVoice:Z

    if-eqz v1, :cond_7

    const-string v1, "MessagePlayed"

    goto :goto_7

    :cond_7
    const-string v1, "MessageSeen"

    :goto_7
    iget-object v4, p0, Lorg/telegram/ui/MessageSeenView;->peerIds:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v4, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :goto_8
    iget-object v0, p0, Lorg/telegram/ui/MessageSeenView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v4, 0xdc

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lorg/telegram/ui/MessageSeenView;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lorg/telegram/ui/MessageSeenView;->flickerLoadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/HideViewAfterAnimation;

    iget-object v2, p0, Lorg/telegram/ui/MessageSeenView;->flickerLoadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/HideViewAfterAnimation;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lorg/telegram/ui/MessageSeenView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    :cond_8
    return-void
.end method


# virtual methods
.method public createListView()Lorg/telegram/ui/Components/RecyclerListView;
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/MessageSeenView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lorg/telegram/ui/MessageSeenView$1;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/MessageSeenView$1;-><init>(Lorg/telegram/ui/MessageSeenView;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/MessageSeenView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lorg/telegram/ui/MessageSeenView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/MessageSeenView$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/MessageSeenView$2;-><init>(Lorg/telegram/ui/MessageSeenView;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    iget-object v0, p0, Lorg/telegram/ui/MessageSeenView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/MessageSeenView$3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/MessageSeenView$3;-><init>(Lorg/telegram/ui/MessageSeenView;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lorg/telegram/ui/MessageSeenView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 4

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

    iput-boolean v0, p0, Lorg/telegram/ui/MessageSeenView;->ignoreLayout:Z

    iget-object v1, p0, Lorg/telegram/ui/MessageSeenView;->flickerLoadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/MessageSeenView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    if-eqz v0, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/MessageSeenView;->flickerLoadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/MessageSeenView;->flickerLoadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lorg/telegram/ui/MessageSeenView;->flickerLoadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/MessageSeenView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/MessageSeenView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    const/high16 v3, 0x42200000    # 40.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v1, v3

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput-boolean v2, p0, Lorg/telegram/ui/MessageSeenView;->ignoreLayout:Z

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public requestLayout()V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/MessageSeenView;->ignoreLayout:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method
