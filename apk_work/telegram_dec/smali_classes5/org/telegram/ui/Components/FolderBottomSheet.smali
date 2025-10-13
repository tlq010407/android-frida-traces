.class public Lorg/telegram/ui/Components/FolderBottomSheet;
.super Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/FolderBottomSheet$HeaderCell;,
        Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell;,
        Lorg/telegram/ui/Components/FolderBottomSheet$Button;
    }
.end annotation


# instance fields
.field private alreadyHeaderRow:I

.field private alreadyJoined:Ljava/util/ArrayList;

.field private alreadyPeers:Ljava/util/ArrayList;

.field private alreadySectionRow:I

.field private alreadyUsersEndRow:I

.field private alreadyUsersStartRow:I

.field private bulletinContainer:Landroid/widget/FrameLayout;

.field private button:Lorg/telegram/ui/Components/FolderBottomSheet$Button;

.field private buttonShadow:Landroid/view/View;

.field private deleting:Z

.field private escapedTitle:Ljava/lang/CharSequence;

.field private filterId:I

.field private headerCell:Lorg/telegram/ui/Components/FolderBottomSheet$HeaderCell;

.field private headerRow:I

.field private invite:Lorg/telegram/tgnet/tl/TL_chatlists$chatlist_ChatlistInvite;

.field private lastClicked:J

.field private lastClickedDialogId:J

.field private onDone:Lorg/telegram/messenger/Utilities$Callback;

.field private peers:Ljava/util/ArrayList;

.field private reqId:I

.field private rowsCount:I

.field private sectionRow:I

.field private selectedPeers:Ljava/util/ArrayList;

.field private shiftDp:I

.field private slug:Ljava/lang/String;

.field private success:Z

.field private title:Ljava/lang/CharSequence;

.field private titleCell:Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell;

.field private titleEntities:Ljava/util/ArrayList;

.field private titleNoanimate:Z

.field private titleRow:I

.field private updates:Lorg/telegram/tgnet/tl/TL_chatlists$TL_chatlists_chatlistUpdates;

.field private usersEndRow:I

.field private usersSectionRow:I

.field private usersStartRow:I


# direct methods
.method public static synthetic $r8$lambda$1_ERLReE5BvqDaxOcXz3mT6_ta0(Lorg/telegram/ui/Components/FolderBottomSheet;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/FolderBottomSheet;->lambda$onJoinButtonClicked$18(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$45WVmfmmiV3z48SBmeLX_PbA_U0(Lorg/telegram/ui/Components/FolderBottomSheet;Landroid/util/Pair;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/FolderBottomSheet;->lambda$onJoinButtonClicked$8(Landroid/util/Pair;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9JxFwf3jckGVRUOp9bth4TFA8Io(Lorg/telegram/ui/DialogsActivity;Ljava/lang/Integer;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/telegram/ui/Components/FolderBottomSheet;->lambda$onJoinButtonClicked$14(Lorg/telegram/ui/DialogsActivity;Ljava/lang/Integer;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AYJaWO1SRvB5ql8EKVAVXMzIxV0(Lorg/telegram/ui/Components/FolderBottomSheet;Landroid/view/View;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/FolderBottomSheet;->lambda$onViewCreated$19(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$HtA3OyG9wcyTTRlB4d4aUgtzc5k(Lorg/telegram/ui/Components/FolderBottomSheet;Landroid/util/Pair;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/FolderBottomSheet;->lambda$onJoinButtonClicked$9(Landroid/util/Pair;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KaG3pXwz2s8TZthiiaFBkPN11GI(Lorg/telegram/ui/Components/FolderBottomSheet;Lorg/telegram/tgnet/TLObject;Landroid/util/Pair;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/FolderBottomSheet;->lambda$onJoinButtonClicked$10(Lorg/telegram/tgnet/TLObject;Landroid/util/Pair;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LnLGAcIF3RNRFVPwgtxe-wCpCVw(Lorg/telegram/ui/ActionBar/INavigationLayout;Lorg/telegram/messenger/Utilities$Callback;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Components/FolderBottomSheet;->lambda$onJoinButtonClicked$15(Lorg/telegram/ui/ActionBar/INavigationLayout;Lorg/telegram/messenger/Utilities$Callback;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PDbAH9s4f_byhnw3HdDxWrL8S-I(Lorg/telegram/ui/ActionBar/BaseFragment;ILorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/FolderBottomSheet;->lambda$showForDeletion$1(Lorg/telegram/ui/ActionBar/BaseFragment;ILorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZlAbTkmUsTcUGY5d30-0i_1Fqjg(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/FolderBottomSheet;->lambda$onJoinButtonClicked$13(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cCDM0O0ir7WgxsrczN4I5-ZeImM(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLObject;ILorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/telegram/ui/Components/FolderBottomSheet;->lambda$showForDeletion$0(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLObject;ILorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dgm2Dv15Gp1J2-C0YYh1-6c94oY(Lorg/telegram/ui/Components/FolderBottomSheet;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/FolderBottomSheet;->lambda$updateHeaderCell$20(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$djBw8L_Ru60gZ5QQm1icJdKvnVU(Lorg/telegram/ui/Components/FolderBottomSheet;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/FolderBottomSheet;->lambda$onJoinButtonClicked$17(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fcCW5cdS2nWLxX4moseZ6sdGGN8(Lorg/telegram/ui/Components/FolderBottomSheet;Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/FolderBottomSheet;->lambda$onJoinButtonClicked$6(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ghEr4FSQkfj5jUZmnT84c9ENi6U(ILorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Components/FolderBottomSheet;->lambda$showForDeletion$2(ILorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gwNJNuDj2GaR6lmlciBFAZ7v1ms(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/ui/ActionBar/INavigationLayout;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Components/FolderBottomSheet;->lambda$onJoinButtonClicked$12(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/ui/ActionBar/INavigationLayout;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iQZ72J6wbYJSb3ODslEWw0k184s(Lorg/telegram/ui/Components/FolderBottomSheet;Lorg/telegram/messenger/Utilities$Callback;ILjava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/FolderBottomSheet;->lambda$onJoinButtonClicked$16(Lorg/telegram/messenger/Utilities$Callback;ILjava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$k9LUPzBUZSsLpfQfy_Mf2ZoJtjo(Lorg/telegram/ui/Components/FolderBottomSheet;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/FolderBottomSheet;->lambda$init$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lp5dkVKpHmrmggBQ9OG-JZjkB5o(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Components/FolderBottomSheet;->lambda$showForDeletion$3(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$notM9K6nSLvJRSei0wwJl1RgUss(Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Components/FolderBottomSheet;->lambda$showForDeletion$4(Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$nsp0GYdreQXHz0WT2mHFsb3nlmc(Lorg/telegram/ui/Components/FolderBottomSheet;Lorg/telegram/ui/Components/FolderBottomSheet$HeaderCell;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/FolderBottomSheet;->lambda$deselectAll$21(Lorg/telegram/ui/Components/FolderBottomSheet$HeaderCell;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$ujZO0Ci9twdL2YQiw8GuB7jvJkY(Lorg/telegram/ui/Components/FolderBottomSheet;Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/FolderBottomSheet;->lambda$onJoinButtonClicked$7(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$w-EnCJ760kZ5fg6O8Mjl7ycU2rg(Lorg/telegram/ui/Components/FolderBottomSheet;Ljava/util/ArrayList;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/FolderBottomSheet;->lambda$onJoinButtonClicked$11(Ljava/util/ArrayList;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;ILjava/util/List;)V
    .locals 4

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;ZZ)V

    const/4 v1, -0x1

    iput v1, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->filterId:I

    const-string v2, ""

    iput-object v2, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->title:Ljava/lang/CharSequence;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->titleEntities:Ljava/util/ArrayList;

    iput-object v2, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->escapedTitle:Ljava/lang/CharSequence;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->alreadyJoined:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->selectedPeers:Ljava/util/ArrayList;

    iput v1, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->reqId:I

    const/4 v1, -0x5

    iput v1, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->shiftDp:I

    iput p2, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->filterId:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->deleting:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->peers:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->selectedPeers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    if-eqz p3, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->selectedPeers:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    iget-object p3, p3, Lorg/telegram/messenger/MessagesController;->dialogFilters:Ljava/util/ArrayList;

    if-eqz p3, :cond_2

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessagesController$DialogFilter;

    iget v2, v2, Lorg/telegram/messenger/MessagesController$DialogFilter;->id:I

    if-ne v2, p2, :cond_1

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/messenger/MessagesController$DialogFilter;

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_1
    if-eqz p2, :cond_a

    iget-object p3, p2, Lorg/telegram/messenger/MessagesController$DialogFilter;->name:Ljava/lang/String;

    iput-object p3, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->title:Ljava/lang/CharSequence;

    iget-object p3, p2, Lorg/telegram/messenger/MessagesController$DialogFilter;->entities:Ljava/util/ArrayList;

    iput-object p3, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->titleEntities:Ljava/util/ArrayList;

    iget-boolean p3, p2, Lorg/telegram/messenger/MessagesController$DialogFilter;->title_noanimate:Z

    iput-boolean p3, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->titleNoanimate:Z

    const/4 p3, 0x0

    :goto_2
    iget-object v1, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->selectedPeers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p3, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->selectedPeers:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lorg/telegram/messenger/MessagesController;->getPeer(J)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v1

    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$TL_peerChat;

    if-nez v2, :cond_3

    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    if-eqz v2, :cond_4

    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->peers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    iget-object p3, p2, Lorg/telegram/messenger/MessagesController$DialogFilter;->alwaysShow:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge v0, p3, :cond_a

    iget-object p3, p2, Lorg/telegram/messenger/MessagesController$DialogFilter;->alwaysShow:Ljava/util/ArrayList;

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v3, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->selectedPeers:Ljava/util/ArrayList;

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    invoke-virtual {p3, v1, v2}, Lorg/telegram/messenger/MessagesController;->getPeer(J)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object p3

    instance-of v3, p3, Lorg/telegram/tgnet/TLRPC$TL_peerChat;

    if-nez v3, :cond_7

    instance-of v3, p3, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    if-eqz v3, :cond_9

    :cond_7
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    neg-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isNotInChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-nez v1, :cond_9

    :cond_8
    iget-object v1, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->peers:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_a
    invoke-direct {p0}, Lorg/telegram/ui/Components/FolderBottomSheet;->init()V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;ILorg/telegram/tgnet/tl/TL_chatlists$TL_chatlists_chatlistUpdates;)V
    .locals 4

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;ZZ)V

    const/4 v1, -0x1

    iput v1, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->filterId:I

    const-string v2, ""

    iput-object v2, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->title:Ljava/lang/CharSequence;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->titleEntities:Ljava/util/ArrayList;

    iput-object v2, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->escapedTitle:Ljava/lang/CharSequence;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->alreadyJoined:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->selectedPeers:Ljava/util/ArrayList;

    iput v1, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->reqId:I

    const/4 v1, -0x5

    iput v1, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->shiftDp:I

    iput p2, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->filterId:I

    iput-object p3, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->updates:Lorg/telegram/tgnet/tl/TL_chatlists$TL_chatlists_chatlistUpdates;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object p3, p3, Lorg/telegram/tgnet/tl/TL_chatlists$TL_chatlists_chatlistUpdates;->missing_peers:Ljava/util/ArrayList;

    iput-object p3, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->peers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/MessagesController;->dialogFilters:Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge v0, p3, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/telegram/messenger/MessagesController$DialogFilter;

    iget p3, p3, Lorg/telegram/messenger/MessagesController$DialogFilter;->id:I

    if-ne p3, p2, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessagesController$DialogFilter;

    iget-object p1, p1, Lorg/telegram/messenger/MessagesController$DialogFilter;->name:Ljava/lang/String;

    iput-object p1, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->title:Ljava/lang/CharSequence;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-direct {p0}, Lorg/telegram/ui/Components/FolderBottomSheet;->init()V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;Lorg/telegram/tgnet/tl/TL_chatlists$chatlist_ChatlistInvite;)V
    .locals 4

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;ZZ)V

    const/4 v1, -0x1

    iput v1, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->filterId:I

    const-string v2, ""

    iput-object v2, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->title:Ljava/lang/CharSequence;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->titleEntities:Ljava/util/ArrayList;

    iput-object v2, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->escapedTitle:Ljava/lang/CharSequence;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->alreadyJoined:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->selectedPeers:Ljava/util/ArrayList;

    iput v1, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->reqId:I

    const/4 v1, -0x5

    iput v1, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->shiftDp:I

    iput-object p2, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->slug:Ljava/lang/String;

    iput-object p3, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->invite:Lorg/telegram/tgnet/tl/TL_chatlists$chatlist_ChatlistInvite;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    instance-of p2, p3, Lorg/telegram/tgnet/tl/TL_chatlists$TL_chatlists_chatlistInvite;

    if-eqz p2, :cond_0

    check-cast p3, Lorg/telegram/tgnet/tl/TL_chatlists$TL_chatlists_chatlistInvite;

    iget-object p1, p3, Lorg/telegram/tgnet/tl/TL_chatlists$TL_chatlists_chatlistInvite;->title:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->text:Ljava/lang/String;

    iput-object p2, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->title:Ljava/lang/CharSequence;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->entities:Ljava/util/ArrayList;

    iput-object p1, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->titleEntities:Ljava/util/ArrayList;

    iget-boolean p1, p3, Lorg/telegram/tgnet/tl/TL_chatlists$TL_chatlists_chatlistInvite;->title_noanimate:Z

    iput-boolean p1, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->titleNoanimate:Z

    iget-object p1, p3, Lorg/telegram/tgnet/tl/TL_chatlists$TL_chatlists_chatlistInvite;->peers:Ljava/util/ArrayList;

    iput-object p1, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->peers:Ljava/util/ArrayList;

    goto :goto_1

    :cond_0
    instance-of p2, p3, Lorg/telegram/tgnet/tl/TL_chatlists$TL_chatlists_chatlistInviteAlready;

    if-eqz p2, :cond_2

    check-cast p3, Lorg/telegram/tgnet/tl/TL_chatlists$TL_chatlists_chatlistInviteAlready;

    iget-object p2, p3, Lorg/telegram/tgnet/tl/TL_chatlists$TL_chatlists_chatlistInviteAlready;->missing_peers:Ljava/util/ArrayList;

    iput-object p2, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->peers:Ljava/util/ArrayList;

    iget-object p2, p3, Lorg/telegram/tgnet/tl/TL_chatlists$TL_chatlists_chatlistInviteAlready;->already_peers:Ljava/util/ArrayList;

    iput-object p2, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->alreadyPeers:Ljava/util/ArrayList;

    iget p2, p3, Lorg/telegram/tgnet/tl/TL_chatlists$TL_chatlists_chatlistInviteAlready;->filter_id:I

    iput p2, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->filterId:I

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/MessagesController;->dialogFilters:Ljava/util/ArrayList;

    if-eqz p1, :cond_2

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge v0, p2, :cond_2

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/messenger/MessagesController$DialogFilter;

    iget p3, p2, Lorg/telegram/messenger/MessagesController$DialogFilter;->id:I

    iget v1, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->filterId:I

    if-ne p3, v1, :cond_1

    iget-object p1, p2, Lorg/telegram/messenger/MessagesController$DialogFilter;->name:Ljava/lang/String;

    iput-object p1, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->title:Ljava/lang/CharSequence;

    iget-object p1, p2, Lorg/telegram/messenger/MessagesController$DialogFilter;->entities:Ljava/util/ArrayList;

    iput-object p1, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->titleEntities:Ljava/util/ArrayList;

    iget-boolean p1, p2, Lorg/telegram/messenger/MessagesController$DialogFilter;->title_noanimate:Z

    iput-boolean p1, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->titleNoanimate:Z

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-direct {p0}, Lorg/telegram/ui/Components/FolderBottomSheet;->init()V

    return-void
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/FolderBottomSheet;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->peers:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/FolderBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->alreadyUsersStartRow:I

    return p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/FolderBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->alreadyUsersEndRow:I

    return p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/FolderBottomSheet;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->alreadyPeers:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/FolderBottomSheet;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->alreadyJoined:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/FolderBottomSheet;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->selectedPeers:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/FolderBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->alreadyHeaderRow:I

    return p0
.end method

.method static synthetic access$1702(Lorg/telegram/ui/Components/FolderBottomSheet;Lorg/telegram/ui/Components/FolderBottomSheet$HeaderCell;)Lorg/telegram/ui/Components/FolderBottomSheet$HeaderCell;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->headerCell:Lorg/telegram/ui/Components/FolderBottomSheet$HeaderCell;

    return-object p1
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Components/FolderBottomSheet;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/FolderBottomSheet;->updateHeaderCell(Z)V

    return-void
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Components/FolderBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->alreadySectionRow:I

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/FolderBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->usersStartRow:I

    return p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Components/FolderBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->sectionRow:I

    return p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Components/FolderBottomSheet;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->deleting:Z

    return p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Components/FolderBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->titleRow:I

    return p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/Components/FolderBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->usersSectionRow:I

    return p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/Components/FolderBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->headerRow:I

    return p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/Components/FolderBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->rowsCount:I

    return p0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/Components/FolderBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/FolderBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->usersEndRow:I

    return p0
.end method

.method static synthetic access$402(Lorg/telegram/ui/Components/FolderBottomSheet;Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell;)Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->titleCell:Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell;

    return-object p1
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/FolderBottomSheet;)Lorg/telegram/tgnet/tl/TL_chatlists$chatlist_ChatlistInvite;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->invite:Lorg/telegram/tgnet/tl/TL_chatlists$chatlist_ChatlistInvite;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/FolderBottomSheet;)Lorg/telegram/tgnet/tl/TL_chatlists$TL_chatlists_chatlistUpdates;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->updates:Lorg/telegram/tgnet/tl/TL_chatlists$TL_chatlists_chatlistUpdates;

    return-object p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/FolderBottomSheet;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->escapedTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/FolderBottomSheet;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->titleEntities:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/FolderBottomSheet;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->titleNoanimate:Z

    return p0
.end method

.method private announceSelection(Z)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->selectedPeers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "FilterInviteHeaderChats"

    invoke-static {v3, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->headerCell:Lorg/telegram/ui/Components/FolderBottomSheet$HeaderCell;

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->headerCell:Lorg/telegram/ui/Components/FolderBottomSheet$HeaderCell;

    iget-object v1, v1, Lorg/telegram/ui/Components/FolderBottomSheet$HeaderCell;->actionTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->makeAccessibilityAnnouncement(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private deselectAll(Lorg/telegram/ui/Components/FolderBottomSheet$HeaderCell;Z)V
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->selectedPeers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->selectedPeers:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->alreadyJoined:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x0

    if-nez p2, :cond_1

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->peers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->peers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v2}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v2

    iget-object v4, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->selectedPeers:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->selectedPeers:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/FolderBottomSheet;->updateCount(Z)V

    if-eqz p2, :cond_2

    sget v2, Lorg/telegram/messenger/R$string;->SelectAll:I

    :goto_1
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_2
    sget v2, Lorg/telegram/messenger/R$string;->DeselectAll:I

    goto :goto_1

    :goto_2
    new-instance v3, Lorg/telegram/ui/Components/FolderBottomSheet$$ExternalSyntheticLambda9;

    invoke-direct {v3, p0, p1, p2}, Lorg/telegram/ui/Components/FolderBottomSheet$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Components/FolderBottomSheet;Lorg/telegram/ui/Components/FolderBottomSheet$HeaderCell;Z)V

    invoke-virtual {p1, v2, v3}, Lorg/telegram/ui/Components/FolderBottomSheet$HeaderCell;->setAction(Ljava/lang/CharSequence;Ljava/lang/Runnable;)V

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/FolderBottomSheet;->announceSelection(Z)V

    :goto_3
    iget-object p1, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-ge v0, p1, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    instance-of p2, p1, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    instance-of v2, p2, Ljava/lang/Long;

    if-eqz v2, :cond_3

    check-cast p1, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    iget-object v2, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->selectedPeers:Ljava/util/ArrayList;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {p1, p2, v1}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->setChecked(ZZ)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    return-void
.end method

.method private init()V
    .locals 12

    iget-object v0, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->title:Ljava/lang/CharSequence;

    const-string v1, "*"

    const-string v2, "\u2731"

    invoke-static {v1, v0, v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->escapedTitle:Ljava/lang/CharSequence;

    iget-object v0, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->peers:Ljava/util/ArrayList;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->peers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_6

    iget-object v3, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->peers:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Peer;

    if-nez v3, :cond_0

    goto :goto_5

    :cond_0
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    const-wide/16 v5, 0x0

    if-eqz v4, :cond_1

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    :goto_1
    const/4 v7, 0x0

    goto :goto_4

    :cond_1
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_peerChat;

    if-eqz v4, :cond_2

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:J

    :goto_2
    neg-long v3, v3

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    neg-long v8, v3

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v7

    invoke-static {v7}, Lorg/telegram/messenger/ChatObject;->isNotInChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v7

    goto :goto_3

    :cond_2
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    if-eqz v4, :cond_3

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    goto :goto_2

    :goto_3
    xor-int/2addr v7, v2

    goto :goto_4

    :cond_3
    move-wide v3, v5

    goto :goto_1

    :goto_4
    cmp-long v8, v3, v5

    if-eqz v8, :cond_5

    iget-boolean v5, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->deleting:Z

    if-nez v5, :cond_5

    if-eqz v7, :cond_4

    iget-object v5, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->alreadyJoined:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object v5, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->selectedPeers:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    iput v2, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->rowsCount:I

    iput v1, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->titleRow:I

    iget-object v0, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->peers:Ljava/util/ArrayList;

    const/4 v2, -0x1

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    iget v0, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->rowsCount:I

    add-int/lit8 v3, v0, 0x1

    iput v0, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->sectionRow:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->rowsCount:I

    iput v3, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->headerRow:I

    iput v0, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->usersStartRow:I

    iget-object v3, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->peers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v0, v3

    iput v0, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->rowsCount:I

    iput v0, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->usersEndRow:I

    goto :goto_6

    :cond_7
    iput v2, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->sectionRow:I

    iput v2, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->headerRow:I

    iput v2, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->usersStartRow:I

    iput v2, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->usersEndRow:I

    :goto_6
    iget v0, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->rowsCount:I

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->rowsCount:I

    iput v0, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->usersSectionRow:I

    iget-object v0, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->alreadyPeers:Ljava/util/ArrayList;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    iget v0, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->rowsCount:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->rowsCount:I

    iput v0, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->alreadyHeaderRow:I

    iput v2, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->alreadyUsersStartRow:I

    iget-object v0, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->alreadyPeers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v2, v0

    iput v2, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->alreadyUsersEndRow:I

    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->rowsCount:I

    :goto_7
    iput v2, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->alreadySectionRow:I

    goto :goto_8

    :cond_8
    iput v2, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->alreadyHeaderRow:I

    iput v2, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->alreadyUsersStartRow:I

    iput v2, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->alreadyUsersEndRow:I

    goto :goto_7

    :goto_8
    new-instance v0, Lorg/telegram/ui/Components/FolderBottomSheet$Button;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, ""

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/Components/FolderBottomSheet$Button;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->button:Lorg/telegram/ui/Components/FolderBottomSheet$Button;

    new-instance v2, Lorg/telegram/ui/Components/FolderBottomSheet$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/FolderBottomSheet$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/FolderBottomSheet;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->button:Lorg/telegram/ui/Components/FolderBottomSheet$Button;

    const/high16 v8, 0x41800000    # 16.0f

    const/high16 v9, 0x41200000    # 10.0f

    const/4 v3, -0x1

    const/high16 v4, 0x42400000    # 48.0f

    const/16 v5, 0x57

    const/high16 v6, 0x41800000    # 16.0f

    const/high16 v7, 0x41200000    # 10.0f

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->buttonShadow:Landroid/view/View;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->buttonShadow:Landroid/view/View;

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->density:F

    const/high16 v4, 0x3f800000    # 1.0f

    div-float v6, v4, v3

    const/high16 v10, 0x40c00000    # 6.0f

    const/high16 v11, 0x42880000    # 68.0f

    const/4 v5, -0x1

    const/16 v7, 0x57

    const/high16 v8, 0x40c00000    # 6.0f

    const/4 v9, 0x0

    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iget-object v4, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->button:Lorg/telegram/ui/Components/FolderBottomSheet$Button;

    if-eqz v4, :cond_9

    const/high16 v4, 0x42880000    # 68.0f

    goto :goto_9

    :cond_9
    const/4 v4, 0x0

    :goto_9
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/view/View;->setPadding(IIII)V

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->bulletinContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    const/high16 v8, 0x40c00000    # 6.0f

    const/high16 v9, 0x42880000    # 68.0f

    const/4 v3, -0x1

    const/high16 v4, 0x42c80000    # 100.0f

    const/16 v5, 0x57

    const/high16 v6, 0x40c00000    # 6.0f

    const/4 v7, 0x0

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar(I)V

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/FolderBottomSheet;->updateCount(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/FolderBottomSheet;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$deselectAll$21(Lorg/telegram/ui/Components/FolderBottomSheet$HeaderCell;Z)V
    .locals 0

    xor-int/lit8 p2, p2, 0x1

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/FolderBottomSheet;->deselectAll(Lorg/telegram/ui/Components/FolderBottomSheet$HeaderCell;Z)V

    return-void
.end method

.method private synthetic lambda$init$5(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/FolderBottomSheet;->onJoinButtonClicked()V

    return-void
.end method

.method private synthetic lambda$onJoinButtonClicked$10(Lorg/telegram/tgnet/TLObject;Landroid/util/Pair;)V
    .locals 2

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/FolderBottomSheet$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p2}, Lorg/telegram/ui/Components/FolderBottomSheet$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Components/FolderBottomSheet;Landroid/util/Pair;)V

    invoke-virtual {v0, p1, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->reqId:I

    return-void
.end method

.method private synthetic lambda$onJoinButtonClicked$11(Ljava/util/ArrayList;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 6

    const/4 v0, 0x1

    iget-object v1, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->updates:Lorg/telegram/tgnet/tl/TL_chatlists$TL_chatlists_chatlistUpdates;

    const/16 v2, 0x1388

    const/4 v3, 0x0

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->invite:Lorg/telegram/tgnet/tl/TL_chatlists$chatlist_ChatlistInvite;

    instance-of v1, v1, Lorg/telegram/tgnet/tl/TL_chatlists$TL_chatlists_chatlistInviteAlready;

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p2}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p2

    sget v1, Lorg/telegram/messenger/R$raw;->contact_check:I

    sget v4, Lorg/telegram/messenger/R$string;->FolderLinkAddedTitle:I

    iget-object v5, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->escapedTitle:Ljava/lang/CharSequence;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v5, v0, v3

    invoke-static {v4, v0}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "FolderLinkAddedSubtitle"

    invoke-static {v4, p1, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p2, v1, v0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/Bulletin;->setDuration(I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    goto :goto_2

    :cond_1
    :goto_1
    invoke-static {p2}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p2

    sget v1, Lorg/telegram/messenger/R$raw;->folder_in:I

    sget v4, Lorg/telegram/messenger/R$string;->FolderLinkUpdatedTitle:I

    iget-object v5, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->escapedTitle:Ljava/lang/CharSequence;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v5, v0, v3

    invoke-static {v4, v0}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->alreadyJoined:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "FolderLinkUpdatedSubtitle"

    invoke-static {v4, p1, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "FolderLinkUpdatedJoinedSubtitle"

    invoke-static {v4, p1, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :goto_2
    return-void
.end method

.method private static synthetic lambda$onJoinButtonClicked$12(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/ui/ActionBar/INavigationLayout;Ljava/lang/Integer;)V
    .locals 0

    invoke-interface {p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$onJoinButtonClicked$13(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 0

    invoke-interface {p0, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$onJoinButtonClicked$14(Lorg/telegram/ui/DialogsActivity;Ljava/lang/Integer;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/DialogsActivity;->scrollToFolder(I)V

    new-instance p0, Lorg/telegram/ui/Components/FolderBottomSheet$$ExternalSyntheticLambda18;

    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/Components/FolderBottomSheet$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const-wide/16 p1, 0xc8

    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private static synthetic lambda$onJoinButtonClicked$15(Lorg/telegram/ui/ActionBar/INavigationLayout;Lorg/telegram/messenger/Utilities$Callback;Ljava/lang/Integer;)V
    .locals 4

    invoke-interface {p0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_0
    if-ltz v0, :cond_2

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v3, v2, Lorg/telegram/ui/DialogsActivity;

    if-eqz v3, :cond_0

    goto :goto_2

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->removeSelfFromStack()V

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    :goto_2
    instance-of p0, v2, Lorg/telegram/ui/DialogsActivity;

    if-eqz p0, :cond_3

    move-object p0, v2

    check-cast p0, Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p0}, Lorg/telegram/ui/DialogsActivity;->closeSearching()V

    new-instance v0, Lorg/telegram/ui/Components/FolderBottomSheet$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0, p2, p1, v2}, Lorg/telegram/ui/Components/FolderBottomSheet$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/DialogsActivity;Ljava/lang/Integer;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const-wide/16 p0, 0x50

    invoke-static {v0, p0, p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_3

    :cond_3
    invoke-interface {p1, v2}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    :goto_3
    return-void
.end method

.method private synthetic lambda$onJoinButtonClicked$16(Lorg/telegram/messenger/Utilities$Callback;ILjava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    iput-boolean p3, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->success:Z

    invoke-virtual {p0}, Lorg/telegram/ui/Components/FolderBottomSheet;->dismiss()V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$onJoinButtonClicked$17(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 3

    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->reqId:I

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lorg/telegram/ui/FilterCreateActivity;->processErrors(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/BulletinFactory;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    instance-of p1, p2, Lorg/telegram/tgnet/TLRPC$Updates;

    if-eqz p1, :cond_2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$Updates;

    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge v1, p2, :cond_2

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    instance-of p2, p2, Lorg/telegram/tgnet/TLRPC$TL_updateDialogFilter;

    if-eqz p2, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_1
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_updateDialogFilter;

    iget v0, p1, Lorg/telegram/tgnet/TLRPC$TL_updateDialogFilter;->id:I

    goto :goto_2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$Updates;->update:Lorg/telegram/tgnet/TLRPC$Update;

    instance-of p2, p1, Lorg/telegram/tgnet/TLRPC$TL_updateDialogFilter;

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->invite:Lorg/telegram/tgnet/tl/TL_chatlists$chatlist_ChatlistInvite;

    instance-of p1, p1, Lorg/telegram/tgnet/tl/TL_chatlists$TL_chatlists_chatlistInvite;

    const/4 p2, 0x1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    new-instance v1, Lorg/telegram/ui/Components/FolderBottomSheet$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0, p3, v0}, Lorg/telegram/ui/Components/FolderBottomSheet$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/Components/FolderBottomSheet;Lorg/telegram/messenger/Utilities$Callback;I)V

    invoke-virtual {p1, p2, v1}, Lorg/telegram/messenger/MessagesController;->loadRemoteFilters(ZLorg/telegram/messenger/Utilities$Callback;)V

    goto :goto_3

    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->updates:Lorg/telegram/tgnet/tl/TL_chatlists$TL_chatlists_chatlistUpdates;

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget v1, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->filterId:I

    invoke-virtual {p1, v1, p2}, Lorg/telegram/messenger/MessagesController;->checkChatlistFolderUpdate(IZ)V

    :cond_4
    iput-boolean p2, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->success:Z

    invoke-virtual {p0}, Lorg/telegram/ui/Components/FolderBottomSheet;->dismiss()V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p3, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    goto :goto_3

    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->button:Lorg/telegram/ui/Components/FolderBottomSheet$Button;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/FolderBottomSheet$Button;->setLoading(Z)V

    :goto_3
    return-void
.end method

.method private synthetic lambda$onJoinButtonClicked$18(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    new-instance v0, Lorg/telegram/ui/Components/FolderBottomSheet$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0, p3, p2, p1}, Lorg/telegram/ui/Components/FolderBottomSheet$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Components/FolderBottomSheet;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onJoinButtonClicked$6(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/util/ArrayList;)V
    .locals 6

    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->reqId:I

    invoke-static {p1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$raw;->ic_delete:I

    sget v1, Lorg/telegram/messenger/R$string;->FolderLinkDeletedTitle:I

    iget-object v2, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->title:Ljava/lang/CharSequence;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-static {v1, v4}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array v2, v5, [Ljava/lang/Object;

    const-string v4, "FolderLinkDeletedSubtitle"

    invoke-static {v4, p2, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, v1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    const/16 p2, 0x1388

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Bulletin;->setDuration(I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    iput-boolean v3, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->success:Z

    invoke-virtual {p0}, Lorg/telegram/ui/Components/FolderBottomSheet;->dismiss()V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget p2, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->filterId:I

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/MessagesController;->invalidateChatlistFolderUpdate(I)V

    return-void
.end method

.method private synthetic lambda$onJoinButtonClicked$7(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    new-instance p3, Lorg/telegram/ui/Components/FolderBottomSheet$$ExternalSyntheticLambda15;

    invoke-direct {p3, p0, p1, p2}, Lorg/telegram/ui/Components/FolderBottomSheet$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/Components/FolderBottomSheet;Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/util/ArrayList;)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onJoinButtonClicked$8(Landroid/util/Pair;)V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->reqId:I

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$onJoinButtonClicked$9(Landroid/util/Pair;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    new-instance p2, Lorg/telegram/ui/Components/FolderBottomSheet$$ExternalSyntheticLambda17;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Components/FolderBottomSheet$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/Components/FolderBottomSheet;Landroid/util/Pair;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onViewCreated$19(Landroid/view/View;I)V
    .locals 7

    instance-of v0, p1, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    sub-int/2addr p2, v0

    iget v1, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->usersStartRow:I

    sub-int/2addr p2, v1

    if-ltz p2, :cond_7

    iget-object v1, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->peers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p2, v1, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->peers:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {p2}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v1

    iget-object p2, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->selectedPeers:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    const/4 v3, 0x0

    if-eqz p2, :cond_6

    iget-object p2, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->alreadyJoined:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    iget p2, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->shiftDp:I

    neg-int p2, p2

    iput p2, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->shiftDp:I

    int-to-float p2, p2

    invoke-static {p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;F)V

    sget-object p1, Lorg/telegram/messenger/BotWebViewVibrationEffect;->APP_ERROR:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    invoke-virtual {p1}, Lorg/telegram/messenger/BotWebViewVibrationEffect;->vibrate()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v3, 0x0

    cmp-long p2, v1, v3

    if-ltz p2, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p2, "beep boop."

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    neg-long v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lorg/telegram/messenger/R$string;->FolderLinkAlreadySubscribed:I

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    sget v0, Lorg/telegram/messenger/R$string;->FolderLinkAlreadyJoined:I

    goto :goto_0

    :goto_1
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object p2, v0

    :goto_2
    iget-wide v3, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->lastClickedDialogId:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->lastClicked:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x5dc

    cmp-long v0, v3, v5

    if-lez v0, :cond_4

    :cond_3
    iput-wide v1, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->lastClickedDialogId:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->lastClicked:J

    iget-object v0, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->bulletinContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2, v1}, Lorg/telegram/ui/Components/BulletinFactory;->createChatsBulletin(Ljava/util/List;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    const/16 p2, 0x5dc

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Bulletin;->setDuration(I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :cond_4
    return-void

    :cond_5
    iget-object p2, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->selectedPeers:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    check-cast p1, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    invoke-virtual {p1, v3, v0}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->setChecked(ZZ)V

    goto :goto_3

    :cond_6
    iget-object p2, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->selectedPeers:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    check-cast p1, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    invoke-virtual {p1, v0, v0}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->setChecked(ZZ)V

    :goto_3
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/FolderBottomSheet;->updateCount(Z)V

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/FolderBottomSheet;->updateHeaderCell(Z)V

    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/FolderBottomSheet;->announceSelection(Z)V

    nop

    :cond_7
    :goto_4
    return-void
.end method

.method private static synthetic lambda$showForDeletion$0(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLObject;ILorg/telegram/messenger/Utilities$Callback;)V
    .locals 4

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Lorg/telegram/tgnet/Vector;

    if-eqz v0, :cond_2

    check-cast p1, Lorg/telegram/tgnet/Vector;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p1, Lorg/telegram/tgnet/Vector;->objects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p1, Lorg/telegram/tgnet/Vector;->objects:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v2}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    :cond_1
    new-instance p1, Lorg/telegram/ui/Components/FolderBottomSheet;

    invoke-direct {p1, p0, p2, v0}, Lorg/telegram/ui/Components/FolderBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;ILjava/util/List;)V

    goto :goto_1

    :cond_2
    new-instance p1, Lorg/telegram/ui/Components/FolderBottomSheet;

    const/4 v0, 0x0

    invoke-direct {p1, p0, p2, v0}, Lorg/telegram/ui/Components/FolderBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;ILjava/util/List;)V

    :goto_1
    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/FolderBottomSheet;->setOnDone(Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private static synthetic lambda$showForDeletion$1(Lorg/telegram/ui/ActionBar/BaseFragment;ILorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    new-instance p4, Lorg/telegram/ui/Components/FolderBottomSheet$$ExternalSyntheticLambda21;

    invoke-direct {p4, p0, p3, p1, p2}, Lorg/telegram/ui/Components/FolderBottomSheet$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLObject;ILorg/telegram/messenger/Utilities$Callback;)V

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$showForDeletion$2(ILorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 3

    new-instance v0, Lorg/telegram/tgnet/tl/TL_chatlists$TL_chatlists_getLeaveChatlistSuggestions;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_chatlists$TL_chatlists_getLeaveChatlistSuggestions;-><init>()V

    new-instance v1, Lorg/telegram/tgnet/tl/TL_chatlists$TL_inputChatlistDialogFilter;

    invoke-direct {v1}, Lorg/telegram/tgnet/tl/TL_chatlists$TL_inputChatlistDialogFilter;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_chatlists$TL_chatlists_getLeaveChatlistSuggestions;->chatlist:Lorg/telegram/tgnet/tl/TL_chatlists$TL_inputChatlistDialogFilter;

    iput p0, v1, Lorg/telegram/tgnet/tl/TL_chatlists$TL_inputChatlistDialogFilter;->filter_id:I

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/FolderBottomSheet$$ExternalSyntheticLambda20;

    invoke-direct {v2, p1, p0, p2}, Lorg/telegram/ui/Components/FolderBottomSheet$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;ILorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private static synthetic lambda$showForDeletion$3(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    if-eqz p0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$showForDeletion$4(Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$updateHeaderCell$20(Z)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->headerCell:Lorg/telegram/ui/Components/FolderBottomSheet$HeaderCell;

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/Components/FolderBottomSheet;->deselectAll(Lorg/telegram/ui/Components/FolderBottomSheet$HeaderCell;Z)V

    return-void
.end method

.method private onJoinButtonClicked()V
    .locals 15

    iget-object v0, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->button:Lorg/telegram/ui/Components/FolderBottomSheet$Button;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/FolderBottomSheet$Button;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->peers:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/FolderBottomSheet;->dismiss()V

    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->deleting:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/telegram/ui/Components/FolderBottomSheet;->dismiss()V

    return-void

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->selectedPeers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->invite:Lorg/telegram/tgnet/tl/TL_chatlists$chatlist_ChatlistInvite;

    instance-of v0, v0, Lorg/telegram/tgnet/tl/TL_chatlists$TL_chatlists_chatlistInvite;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->button:Lorg/telegram/ui/Components/FolderBottomSheet$Button;

    iget v1, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->shiftDp:I

    neg-int v1, v1

    iput v1, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->shiftDp:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;F)V

    sget-object v0, Lorg/telegram/messenger/BotWebViewVibrationEffect;->APP_ERROR:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    invoke-virtual {v0}, Lorg/telegram/messenger/BotWebViewVibrationEffect;->vibrate()V

    return-void

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->peers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    iget-object v3, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->peers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v3}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v3

    iget-object v5, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->selectedPeers:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    iget-boolean v2, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->deleting:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    new-instance v2, Lorg/telegram/tgnet/tl/TL_chatlists$TL_chatlists_leaveChatlist;

    invoke-direct {v2}, Lorg/telegram/tgnet/tl/TL_chatlists$TL_chatlists_leaveChatlist;-><init>()V

    new-instance v4, Lorg/telegram/tgnet/tl/TL_chatlists$TL_inputChatlistDialogFilter;

    invoke-direct {v4}, Lorg/telegram/tgnet/tl/TL_chatlists$TL_inputChatlistDialogFilter;-><init>()V

    iput-object v4, v2, Lorg/telegram/tgnet/tl/TL_chatlists$TL_chatlists_leaveChatlist;->chatlist:Lorg/telegram/tgnet/tl/TL_chatlists$TL_inputChatlistDialogFilter;

    iget v5, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->filterId:I

    iput v5, v4, Lorg/telegram/tgnet/tl/TL_chatlists$TL_inputChatlistDialogFilter;->filter_id:I

    iget-object v4, v2, Lorg/telegram/tgnet/tl/TL_chatlists$TL_chatlists_leaveChatlist;->peers:Ljava/util/ArrayList;

    :goto_1
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_6
    iget-object v2, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->updates:Lorg/telegram/tgnet/tl/TL_chatlists$TL_chatlists_chatlistUpdates;

    if-eqz v2, :cond_8

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v0, Lorg/telegram/tgnet/tl/TL_chatlists$TL_chatlists_hideChatlistUpdates;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_chatlists$TL_chatlists_hideChatlistUpdates;-><init>()V

    new-instance v1, Lorg/telegram/tgnet/tl/TL_chatlists$TL_inputChatlistDialogFilter;

    invoke-direct {v1}, Lorg/telegram/tgnet/tl/TL_chatlists$TL_inputChatlistDialogFilter;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_chatlists$TL_chatlists_hideChatlistUpdates;->chatlist:Lorg/telegram/tgnet/tl/TL_chatlists$TL_inputChatlistDialogFilter;

    iget v2, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->filterId:I

    iput v2, v1, Lorg/telegram/tgnet/tl/TL_chatlists$TL_inputChatlistDialogFilter;->filter_id:I

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->filterId:I

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->invalidateChatlistFolderUpdate(I)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/FolderBottomSheet;->dismiss()V

    return-void

    :cond_7
    new-instance v2, Lorg/telegram/tgnet/tl/TL_chatlists$TL_chatlists_joinChatlistUpdates;

    invoke-direct {v2}, Lorg/telegram/tgnet/tl/TL_chatlists$TL_chatlists_joinChatlistUpdates;-><init>()V

    new-instance v4, Lorg/telegram/tgnet/tl/TL_chatlists$TL_inputChatlistDialogFilter;

    invoke-direct {v4}, Lorg/telegram/tgnet/tl/TL_chatlists$TL_inputChatlistDialogFilter;-><init>()V

    iput-object v4, v2, Lorg/telegram/tgnet/tl/TL_chatlists$TL_chatlists_joinChatlistUpdates;->chatlist:Lorg/telegram/tgnet/tl/TL_chatlists$TL_inputChatlistDialogFilter;

    iget v5, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->filterId:I

    iput v5, v4, Lorg/telegram/tgnet/tl/TL_chatlists$TL_inputChatlistDialogFilter;->filter_id:I

    iget-object v4, v2, Lorg/telegram/tgnet/tl/TL_chatlists$TL_chatlists_joinChatlistUpdates;->peers:Ljava/util/ArrayList;

    goto :goto_1

    :cond_8
    iget-object v2, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->invite:Lorg/telegram/tgnet/tl/TL_chatlists$chatlist_ChatlistInvite;

    instance-of v2, v2, Lorg/telegram/tgnet/tl/TL_chatlists$TL_chatlists_chatlistInviteAlready;

    if-eqz v2, :cond_9

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {p0}, Lorg/telegram/ui/Components/FolderBottomSheet;->dismiss()V

    return-void

    :cond_9
    new-instance v2, Lorg/telegram/tgnet/tl/TL_chatlists$TL_chatlists_joinChatlistInvite;

    invoke-direct {v2}, Lorg/telegram/tgnet/tl/TL_chatlists$TL_chatlists_joinChatlistInvite;-><init>()V

    iget-object v4, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->slug:Ljava/lang/String;

    iput-object v4, v2, Lorg/telegram/tgnet/tl/TL_chatlists$TL_chatlists_joinChatlistInvite;->slug:Ljava/lang/String;

    iget-object v4, v2, Lorg/telegram/tgnet/tl/TL_chatlists$TL_chatlists_joinChatlistInvite;->peers:Ljava/util/ArrayList;

    goto :goto_1

    :goto_2
    invoke-virtual {p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v4

    iget-boolean v5, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->deleting:Z

    const/4 v6, 0x1

    if-eqz v5, :cond_10

    if-eqz v4, :cond_14

    invoke-interface {v4}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v5

    instance-of v7, v5, Lorg/telegram/ui/ChatActivity;

    if-eqz v7, :cond_b

    move-object v3, v5

    check-cast v3, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ChatActivity;->getUndoView()Lorg/telegram/ui/Components/UndoView;

    move-result-object v3

    :cond_a
    :goto_3
    move-object v7, v3

    goto :goto_5

    :cond_b
    instance-of v7, v5, Lorg/telegram/ui/DialogsActivity;

    if-eqz v7, :cond_c

    move-object v3, v5

    check-cast v3, Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/DialogsActivity;->getUndoView()Lorg/telegram/ui/Components/UndoView;

    move-result-object v3

    goto :goto_3

    :cond_c
    instance-of v7, v5, Lorg/telegram/ui/FiltersSetupActivity;

    if-eqz v7, :cond_d

    move-object v3, v5

    check-cast v3, Lorg/telegram/ui/FiltersSetupActivity;

    :goto_4
    invoke-virtual {v3}, Lorg/telegram/ui/FiltersSetupActivity;->getUndoView()Lorg/telegram/ui/Components/UndoView;

    move-result-object v3

    goto :goto_3

    :cond_d
    instance-of v7, v5, Lorg/telegram/ui/FilterCreateActivity;

    if-eqz v7, :cond_a

    invoke-interface {v4}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x2

    if-lt v7, v8, :cond_a

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v8

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Lorg/telegram/ui/FiltersSetupActivity;

    if-eqz v7, :cond_a

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v8

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/FiltersSetupActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    goto :goto_4

    :goto_5
    if-nez v7, :cond_e

    iget-object v1, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->button:Lorg/telegram/ui/Components/FolderBottomSheet$Button;

    invoke-virtual {v1, v6}, Lorg/telegram/ui/Components/FolderBottomSheet$Button;->setLoading(Z)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v3, Lorg/telegram/ui/Components/FolderBottomSheet$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, v5, v0}, Lorg/telegram/ui/Components/FolderBottomSheet$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/FolderBottomSheet;Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->reqId:I

    return-void

    :cond_e
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :goto_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_f

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-static {v4}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$InputPeer;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_f
    invoke-virtual {p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget v4, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->filterId:I

    invoke-virtual {v1, v4, v3}, Lorg/telegram/messenger/MessagesController;->removeFolderTemporarily(ILjava/util/ArrayList;)Landroid/util/Pair;

    move-result-object v1

    iget-object v11, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    new-instance v13, Lorg/telegram/ui/Components/FolderBottomSheet$$ExternalSyntheticLambda4;

    invoke-direct {v13, p0, v2, v1}, Lorg/telegram/ui/Components/FolderBottomSheet$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/FolderBottomSheet;Lorg/telegram/tgnet/TLObject;Landroid/util/Pair;)V

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v14, v0

    check-cast v14, Ljava/lang/Runnable;

    const-wide/16 v8, 0x0

    const/16 v10, 0x58

    invoke-virtual/range {v7 .. v14}, Lorg/telegram/ui/Components/UndoView;->showWithAction(JILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    iput-boolean v6, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->success:Z

    invoke-virtual {p0}, Lorg/telegram/ui/Components/FolderBottomSheet;->dismiss()V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->filterId:I

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->invalidateChatlistFolderUpdate(I)V

    goto :goto_a

    :cond_10
    if-eqz v4, :cond_14

    new-instance v3, Lorg/telegram/ui/Components/FolderBottomSheet$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0, v0}, Lorg/telegram/ui/Components/FolderBottomSheet$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/FolderBottomSheet;Ljava/util/ArrayList;)V

    iget-object v5, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->updates:Lorg/telegram/tgnet/tl/TL_chatlists$TL_chatlists_chatlistUpdates;

    if-eqz v5, :cond_11

    new-instance v5, Lorg/telegram/ui/Components/FolderBottomSheet$$ExternalSyntheticLambda6;

    invoke-direct {v5, v3, v4}, Lorg/telegram/ui/Components/FolderBottomSheet$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/ui/ActionBar/INavigationLayout;)V

    goto :goto_7

    :cond_11
    new-instance v5, Lorg/telegram/ui/Components/FolderBottomSheet$$ExternalSyntheticLambda7;

    invoke-direct {v5, v4, v3}, Lorg/telegram/ui/Components/FolderBottomSheet$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/ActionBar/INavigationLayout;Lorg/telegram/messenger/Utilities$Callback;)V

    :goto_7
    const/4 v3, 0x0

    :goto_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_13

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-static {v4}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$InputPeer;)J

    move-result-wide v7

    iget-object v4, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->alreadyJoined:Ljava/util/ArrayList;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    new-array v0, v6, [Z

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-virtual {v3, v6, v0}, Lorg/telegram/messenger/MessagesController;->ensureFolderDialogExists(I[Z)Lorg/telegram/tgnet/TLRPC$TL_dialogFolder;

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_9

    :cond_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_13
    :goto_9
    iget-object v0, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->button:Lorg/telegram/ui/Components/FolderBottomSheet$Button;

    invoke-virtual {v0, v6}, Lorg/telegram/ui/Components/FolderBottomSheet$Button;->setLoading(Z)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/FolderBottomSheet$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, v5}, Lorg/telegram/ui/Components/FolderBottomSheet$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Components/FolderBottomSheet;Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {v0, v2, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->reqId:I

    :cond_14
    :goto_a
    return-void
.end method

.method public static showForDeletion(Lorg/telegram/ui/ActionBar/BaseFragment;ILorg/telegram/messenger/Utilities$Callback;)V
    .locals 3

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogFilters:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessagesController$DialogFilter;

    iget v2, v2, Lorg/telegram/messenger/MessagesController$DialogFilter;->id:I

    if-ne v2, p1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessagesController$DialogFilter;

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    new-instance v1, Lorg/telegram/ui/Components/FolderBottomSheet$$ExternalSyntheticLambda12;

    invoke-direct {v1, p1, p0, p2}, Lorg/telegram/ui/Components/FolderBottomSheet$$ExternalSyntheticLambda12;-><init>(ILorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/Utilities$Callback;)V

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController$DialogFilter;->isMyChatlist()Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v0, Lorg/telegram/messenger/R$string;->FilterDelete:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->FilterDeleteAlertLinks:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/Components/FolderBottomSheet$$ExternalSyntheticLambda13;

    invoke-direct {v2, p2}, Lorg/telegram/ui/Components/FolderBottomSheet$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {p1, v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->Delete:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/Components/FolderBottomSheet$$ExternalSyntheticLambda14;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/FolderBottomSheet$$ExternalSyntheticLambda14;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    const/4 p0, -0x1

    invoke-virtual {p1, p0}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-eqz p0, :cond_3

    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    :cond_2
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_3
    :goto_2
    return-void
.end method

.method private updateHeaderCell(Z)V
    .locals 4

    iget-object p1, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->headerCell:Lorg/telegram/ui/Components/FolderBottomSheet$HeaderCell;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->deleting:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->peers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "FolderLinkHeaderChatsQuit"

    invoke-static {v3, v0, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/FolderBottomSheet$HeaderCell;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->peers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "FolderLinkHeaderChatsJoin"

    invoke-static {v3, v0, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->peers:Ljava/util/ArrayList;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->alreadyJoined:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr p1, v0

    const/4 v0, 0x1

    if-le p1, v0, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->selectedPeers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget-object v2, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->peers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->alreadyJoined:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v2, v3

    if-lt p1, v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->headerCell:Lorg/telegram/ui/Components/FolderBottomSheet$HeaderCell;

    if-eqz v1, :cond_3

    sget v0, Lorg/telegram/messenger/R$string;->DeselectAll:I

    :goto_2
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_3
    sget v0, Lorg/telegram/messenger/R$string;->SelectAll:I

    goto :goto_2

    :goto_3
    new-instance v2, Lorg/telegram/ui/Components/FolderBottomSheet$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v1}, Lorg/telegram/ui/Components/FolderBottomSheet$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/FolderBottomSheet;Z)V

    invoke-virtual {p1, v0, v2}, Lorg/telegram/ui/Components/FolderBottomSheet$HeaderCell;->setAction(Ljava/lang/CharSequence;Ljava/lang/Runnable;)V

    goto :goto_4

    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->headerCell:Lorg/telegram/ui/Components/FolderBottomSheet$HeaderCell;

    const-string v0, ""

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/FolderBottomSheet$HeaderCell;->setAction(Ljava/lang/CharSequence;Ljava/lang/Runnable;)V

    :goto_4
    return-void
.end method


# virtual methods
.method protected createAdapter(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
    .locals 0

    new-instance p1, Lorg/telegram/ui/Components/FolderBottomSheet$1;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/FolderBottomSheet$1;-><init>(Lorg/telegram/ui/Components/FolderBottomSheet;)V

    return-object p1
.end method

.method public dismiss()V
    .locals 3

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    iget v0, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->reqId:I

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->reqId:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->onDone:Lorg/telegram/messenger/Utilities$Callback;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->success:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->onDone:Lorg/telegram/messenger/Utilities$Callback;

    :cond_1
    return-void
.end method

.method protected getTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->deleting:Z

    if-eqz v0, :cond_0

    sget v0, Lorg/telegram/messenger/R$string;->FolderLinkTitleRemove:I

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->invite:Lorg/telegram/tgnet/tl/TL_chatlists$chatlist_ChatlistInvite;

    instance-of v0, v0, Lorg/telegram/tgnet/tl/TL_chatlists$TL_chatlists_chatlistInvite;

    if-eqz v0, :cond_1

    sget v0, Lorg/telegram/messenger/R$string;->FolderLinkTitleAdd:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->peers:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    sget v0, Lorg/telegram/messenger/R$string;->FolderLinkTitleAddChats:I

    goto :goto_0

    :cond_3
    :goto_1
    sget v0, Lorg/telegram/messenger/R$string;->FolderLinkTitleAlready:I

    goto :goto_0
.end method

.method public onViewCreated(Landroid/widget/FrameLayout;)V
    .locals 4

    invoke-super {p0, p1}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->onViewCreated(Landroid/widget/FrameLayout;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/view/View;->setOverScrollMode(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/high16 v0, 0x40c00000    # 6.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->button:Lorg/telegram/ui/Components/FolderBottomSheet$Button;

    if-eqz v2, :cond_0

    const/high16 v2, 0x42880000    # 68.0f

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v0, v2}, Landroid/view/View;->setPadding(IIII)V

    iget-object p1, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v0, Lorg/telegram/ui/Components/FolderBottomSheet$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/FolderBottomSheet$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/FolderBottomSheet;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    return-void
.end method

.method public setOnDone(Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->onDone:Lorg/telegram/messenger/Utilities$Callback;

    return-void
.end method

.method public updateCount(Z)V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->selectedPeers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->button:Lorg/telegram/ui/Components/FolderBottomSheet$Button;

    if-eqz v3, :cond_7

    iget-boolean v4, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->deleting:Z

    if-eqz v4, :cond_1

    if-lez v2, :cond_0

    sget v1, Lorg/telegram/messenger/R$string;->FolderLinkButtonRemoveChats:I

    :goto_0
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_0
    sget v1, Lorg/telegram/messenger/R$string;->FolderLinkButtonRemove:I

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->peers:Ljava/util/ArrayList;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->invite:Lorg/telegram/tgnet/tl/TL_chatlists$chatlist_ChatlistInvite;

    instance-of v3, v3, Lorg/telegram/tgnet/tl/TL_chatlists$TL_chatlists_chatlistInvite;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->title:Ljava/lang/CharSequence;

    iget-object v4, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->button:Lorg/telegram/ui/Components/FolderBottomSheet$Button;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/FolderBottomSheet$Button;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->titleEntities:Ljava/util/ArrayList;

    iget-object v5, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->button:Lorg/telegram/ui/Components/FolderBottomSheet$Button;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/FolderBottomSheet$Button;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/MessageObject;->replaceAnimatedEmoji(Ljava/lang/CharSequence;Ljava/util/ArrayList;Landroid/graphics/Paint$FontMetricsInt;)Landroid/text/Spannable;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->button:Lorg/telegram/ui/Components/FolderBottomSheet$Button;

    sget v5, Lorg/telegram/messenger/R$string;->FolderLinkButtonAdd:I

    new-array v6, v0, [Ljava/lang/Object;

    aput-object v3, v6, v1

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->formatSpannable(I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v4, v3, p1}, Lorg/telegram/ui/Components/FolderBottomSheet$Button;->setText(Ljava/lang/CharSequence;Z)V

    iget-object v3, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->button:Lorg/telegram/ui/Components/FolderBottomSheet$Button;

    iget-boolean v4, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->titleNoanimate:Z

    if-eqz v4, :cond_3

    const/16 v1, 0x1a

    :cond_3
    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/FolderBottomSheet$Button;->setEmojiCacheType(I)V

    goto :goto_3

    :cond_4
    iget-object v3, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->button:Lorg/telegram/ui/Components/FolderBottomSheet$Button;

    if-lez v2, :cond_5

    new-array v1, v1, [Ljava/lang/Object;

    const-string v4, "FolderLinkButtonJoinPlural"

    invoke-static {v4, v2, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_5
    sget v1, Lorg/telegram/messenger/R$string;->FolderLinkButtonNone:I

    goto :goto_0

    :goto_1
    invoke-virtual {v3, v1, p1}, Lorg/telegram/ui/Components/FolderBottomSheet$Button;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_3

    :cond_6
    :goto_2
    iget-object v1, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->button:Lorg/telegram/ui/Components/FolderBottomSheet$Button;

    sget v3, Lorg/telegram/messenger/R$string;->OK:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, p1}, Lorg/telegram/ui/Components/FolderBottomSheet$Button;->setText(Ljava/lang/CharSequence;Z)V

    :goto_3
    iget-object v1, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->button:Lorg/telegram/ui/Components/FolderBottomSheet$Button;

    invoke-virtual {v1, v2, p1}, Lorg/telegram/ui/Components/FolderBottomSheet$Button;->setCount(IZ)V

    iget-object v1, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->invite:Lorg/telegram/tgnet/tl/TL_chatlists$chatlist_ChatlistInvite;

    instance-of v1, v1, Lorg/telegram/tgnet/tl/TL_chatlists$TL_chatlists_chatlistInvite;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->button:Lorg/telegram/ui/Components/FolderBottomSheet$Button;

    iget-object v3, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->selectedPeers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    xor-int/2addr v0, v3

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/FolderBottomSheet$Button;->setEnabled(Z)V

    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Components/FolderBottomSheet;->titleCell:Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell;

    if-eqz v0, :cond_8

    invoke-virtual {v0, v2, p1}, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell;->setSelectedCount(IZ)V

    :cond_8
    return-void
.end method
