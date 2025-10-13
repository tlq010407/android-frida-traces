.class public Lorg/telegram/ui/Components/GroupVoipInviteAlert;
.super Lorg/telegram/ui/Components/UsersAlertBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter;,
        Lorg/telegram/ui/Components/GroupVoipInviteAlert$ListAdapter;,
        Lorg/telegram/ui/Components/GroupVoipInviteAlert$GroupVoipInviteAlertDelegate;
    }
.end annotation


# instance fields
.field private addNewRow:I

.field private contacts:Ljava/util/ArrayList;

.field private contactsEndReached:Z

.field private contactsEndRow:I

.field private contactsHeaderRow:I

.field private contactsMap:Landroidx/collection/LongSparseArray;

.field private contactsStartRow:I

.field private currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

.field private delayResults:I

.field private delegate:Lorg/telegram/ui/Components/GroupVoipInviteAlert$GroupVoipInviteAlertDelegate;

.field private emptyRow:I

.field private firstLoaded:Z

.field private flickerProgressRow:I

.field private ignoredUsers:Landroidx/collection/LongSparseArray;

.field private info:Lorg/telegram/tgnet/TLRPC$ChatFull;

.field private invitedUsers:Ljava/util/HashSet;

.field private lastRow:I

.field private loadingUsers:Z

.field private membersHeaderRow:I

.field private participants:Ljava/util/ArrayList;

.field private participantsEndRow:I

.field private participantsMap:Landroidx/collection/LongSparseArray;

.field private participantsStartRow:I

.field private rowCount:I

.field private final searchAdapter:Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter;

.field private showContacts:Z


# direct methods
.method public static synthetic $r8$lambda$97A0f2JrnYbpQIQJPkp6QdfE7Ak(Lorg/telegram/ui/Components/GroupVoipInviteAlert;ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLObject;)I
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->lambda$loadChatParticipants$2(ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLObject;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$I1wLTd3lRAmy0vtOuCPKH3MV6S8(Lorg/telegram/ui/Components/GroupVoipInviteAlert;Landroid/view/View;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->lambda$new$0(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Jxjb1g4dHVPktfHUABWJR3wxpuE(Lorg/telegram/messenger/MessagesController;ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLObject;)I
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->lambda$fillContacts$1(Lorg/telegram/messenger/MessagesController;ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLObject;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$cPIqJgkEo7rTWw9FQIdCbYaRLRo(Lorg/telegram/ui/Components/GroupVoipInviteAlert;Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->lambda$loadChatParticipants$4(Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$o2gVJELpXbrziXY2ZSFK1p_PfDE(Lorg/telegram/ui/Components/GroupVoipInviteAlert;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->lambda$loadChatParticipants$3(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$ChatFull;Landroidx/collection/LongSparseArray;Ljava/util/HashSet;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, p2, v0}, Lorg/telegram/ui/Components/UsersAlertBase;-><init>(Landroid/content/Context;ZILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->participants:Ljava/util/ArrayList;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->contacts:Ljava/util/ArrayList;

    new-instance p2, Landroidx/collection/LongSparseArray;

    invoke-direct {p2}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->participantsMap:Landroidx/collection/LongSparseArray;

    new-instance p2, Landroidx/collection/LongSparseArray;

    invoke-direct {p2}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->contactsMap:Landroidx/collection/LongSparseArray;

    const/16 p2, 0x4b

    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/BottomSheet;->setDimBehindAlpha(I)V

    iput-object p3, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iput-object p4, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iput-object p5, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->ignoredUsers:Landroidx/collection/LongSparseArray;

    iput-object p6, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->invitedUsers:Ljava/util/HashSet;

    iget-object p2, p0, Lorg/telegram/ui/Components/UsersAlertBase;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance p3, Lorg/telegram/ui/Components/GroupVoipInviteAlert$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lorg/telegram/ui/Components/GroupVoipInviteAlert$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/GroupVoipInviteAlert;)V

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    new-instance p2, Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter;-><init>(Lorg/telegram/ui/Components/GroupVoipInviteAlert;Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->searchAdapter:Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter;

    iput-object p2, p0, Lorg/telegram/ui/Components/UsersAlertBase;->searchListViewAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    iget-object p2, p0, Lorg/telegram/ui/Components/UsersAlertBase;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance p3, Lorg/telegram/ui/Components/GroupVoipInviteAlert$ListAdapter;

    invoke-direct {p3, p0, p1}, Lorg/telegram/ui/Components/GroupVoipInviteAlert$ListAdapter;-><init>(Lorg/telegram/ui/Components/GroupVoipInviteAlert;Landroid/content/Context;)V

    iput-object p3, p0, Lorg/telegram/ui/Components/UsersAlertBase;->listViewAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const/16 p1, 0xc8

    invoke-direct {p0, v1, p1}, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->loadChatParticipants(II)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->updateRows()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/UsersAlertBase;->setColorProgress(F)V

    return-void
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/GroupVoipInviteAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->rowCount:I

    return p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/GroupVoipInviteAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->participantsStartRow:I

    return p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/GroupVoipInviteAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->participantsEndRow:I

    return p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/GroupVoipInviteAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->contactsEndRow:I

    return p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/GroupVoipInviteAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/GroupVoipInviteAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->addNewRow:I

    return p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/GroupVoipInviteAlert;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->loadingUsers:Z

    return p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Components/GroupVoipInviteAlert;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->firstLoaded:Z

    return p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Components/GroupVoipInviteAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->membersHeaderRow:I

    return p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Components/GroupVoipInviteAlert;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->participants:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Components/GroupVoipInviteAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->contactsHeaderRow:I

    return p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Components/GroupVoipInviteAlert;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->showContacts:Z

    return p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Components/GroupVoipInviteAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->contactsStartRow:I

    return p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/Components/GroupVoipInviteAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->emptyRow:I

    return p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/Components/GroupVoipInviteAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->lastRow:I

    return p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/Components/GroupVoipInviteAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->flickerProgressRow:I

    return p0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/Components/GroupVoipInviteAlert;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->contacts:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/GroupVoipInviteAlert;)Landroidx/collection/LongSparseArray;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->ignoredUsers:Landroidx/collection/LongSparseArray;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/GroupVoipInviteAlert;)Lorg/telegram/tgnet/TLRPC$Chat;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/GroupVoipInviteAlert;)Ljava/util/HashSet;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->invitedUsers:Ljava/util/HashSet;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/GroupVoipInviteAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/GroupVoipInviteAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/GroupVoipInviteAlert;)Lorg/telegram/tgnet/TLRPC$ChatFull;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    return-object p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/GroupVoipInviteAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method private fillContacts()V
    .locals 7

    iget-boolean v0, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->showContacts:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->contacts:Ljava/util/ArrayList;

    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/ContactsController;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    iget-wide v0, v0, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    iget-object v2, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    iget-object v4, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLObject;

    instance-of v5, v4, Lorg/telegram/tgnet/TLRPC$TL_contact;

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_contact;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:J

    cmp-long v6, v4, v0

    if-eqz v6, :cond_2

    iget-object v6, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->ignoredUsers:Landroidx/collection/LongSparseArray;

    invoke-virtual {v6, v4, v5}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result v6

    if-gez v6, :cond_2

    iget-object v6, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->invitedUsers:Ljava/util/HashSet;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    iget-object v4, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v2, v2, -0x1

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->contacts:Ljava/util/ArrayList;

    new-instance v3, Lorg/telegram/ui/Components/GroupVoipInviteAlert$$ExternalSyntheticLambda2;

    invoke-direct {v3, v1, v0}, Lorg/telegram/ui/Components/GroupVoipInviteAlert$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/messenger/MessagesController;I)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private static synthetic lambda$fillContacts$1(Lorg/telegram/messenger/MessagesController;ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLObject;)I
    .locals 4

    instance-of v0, p3, Lorg/telegram/tgnet/TLRPC$TL_contact;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p3, Lorg/telegram/tgnet/TLRPC$TL_contact;

    iget-wide v2, p3, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p0, p3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p3

    goto :goto_0

    :cond_0
    move-object p3, v1

    :goto_0
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_contact;

    if-eqz v0, :cond_1

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_contact;

    iget-wide v0, p2, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    :cond_1
    const p0, 0xc350

    const/4 p2, 0x0

    if-eqz p3, :cond_3

    iget-boolean v0, p3, Lorg/telegram/tgnet/TLRPC$User;->self:Z

    if-eqz v0, :cond_2

    add-int p3, p1, p0

    goto :goto_1

    :cond_2
    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz p3, :cond_3

    iget p3, p3, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    goto :goto_1

    :cond_3
    const/4 p3, 0x0

    :goto_1
    if-eqz v1, :cond_5

    iget-boolean v0, v1, Lorg/telegram/tgnet/TLRPC$User;->self:Z

    if-eqz v0, :cond_4

    add-int/2addr p1, p0

    goto :goto_2

    :cond_4
    iget-object p0, v1, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz p0, :cond_5

    iget p1, p0, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    :goto_2
    const/4 p0, -0x1

    const/4 v0, 0x1

    if-lez p3, :cond_8

    if-lez p1, :cond_8

    if-le p3, p1, :cond_6

    return v0

    :cond_6
    if-ge p3, p1, :cond_7

    return p0

    :cond_7
    return p2

    :cond_8
    if-gez p3, :cond_b

    if-gez p1, :cond_b

    if-le p3, p1, :cond_9

    return v0

    :cond_9
    if-ge p3, p1, :cond_a

    return p0

    :cond_a
    return p2

    :cond_b
    if-gez p3, :cond_c

    if-gtz p1, :cond_d

    :cond_c
    if-nez p3, :cond_e

    if-eqz p1, :cond_e

    :cond_d
    return p0

    :cond_e
    if-ltz p1, :cond_10

    if-eqz p3, :cond_f

    goto :goto_3

    :cond_f
    return p2

    :cond_10
    :goto_3
    return v0
.end method

.method private synthetic lambda$loadChatParticipants$2(ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLObject;)I
    .locals 3

    check-cast p2, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    check-cast p3, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {p2}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p2

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {p3}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {v0, p3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p3

    const v0, 0xc350

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    iget-object v2, p2, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v2, :cond_1

    iget-boolean p2, p2, Lorg/telegram/tgnet/TLRPC$User;->self:Z

    if-eqz p2, :cond_0

    add-int p2, p1, v0

    goto :goto_0

    :cond_0
    iget p2, v2, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    if-eqz p3, :cond_3

    iget-object v2, p3, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v2, :cond_3

    iget-boolean p3, p3, Lorg/telegram/tgnet/TLRPC$User;->self:Z

    if-eqz p3, :cond_2

    add-int/2addr p1, v0

    goto :goto_1

    :cond_2
    iget p1, v2, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    const/4 p3, -0x1

    const/4 v0, 0x1

    if-lez p2, :cond_6

    if-lez p1, :cond_6

    if-le p2, p1, :cond_4

    return v0

    :cond_4
    if-ge p2, p1, :cond_5

    return p3

    :cond_5
    return v1

    :cond_6
    if-gez p2, :cond_9

    if-gez p1, :cond_9

    if-le p2, p1, :cond_7

    return v0

    :cond_7
    if-ge p2, p1, :cond_8

    return p3

    :cond_8
    return v1

    :cond_9
    if-gez p2, :cond_a

    if-gtz p1, :cond_b

    :cond_a
    if-nez p2, :cond_c

    if-eqz p1, :cond_c

    :cond_b
    return p3

    :cond_c
    if-gez p1, :cond_d

    if-gtz p2, :cond_e

    :cond_d
    if-nez p1, :cond_f

    if-eqz p2, :cond_f

    :cond_e
    return v0

    :cond_f
    return v1
.end method

.method private synthetic lambda$loadChatParticipants$3(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_b

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;

    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object v2, p2, Lorg/telegram/tgnet/TLRPC$channels_ChannelParticipants;->users:Ljava/util/ArrayList;

    invoke-virtual {p1, v2, v0}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object v2, p2, Lorg/telegram/tgnet/TLRPC$channels_ChannelParticipants;->chats:Ljava/util/ArrayList;

    invoke-virtual {p1, v2, v0}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v2

    const/4 p1, 0x0

    :goto_0
    iget-object v4, p2, Lorg/telegram/tgnet/TLRPC$channels_ChannelParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge p1, v4, :cond_1

    iget-object v4, p2, Lorg/telegram/tgnet/TLRPC$channels_ChannelParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v4}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-nez v6, :cond_0

    iget-object v2, p2, Lorg/telegram/tgnet/TLRPC$channels_ChannelParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget p1, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->delayResults:I

    sub-int/2addr p1, v1

    iput p1, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->delayResults:I

    iget-object p1, p3, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->filter:Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;

    instance-of p1, p1, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsContacts;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->contacts:Ljava/util/ArrayList;

    iget-object p3, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->contactsMap:Landroidx/collection/LongSparseArray;

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->participants:Ljava/util/ArrayList;

    iget-object p3, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->participantsMap:Landroidx/collection/LongSparseArray;

    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p2, Lorg/telegram/tgnet/TLRPC$channels_ChannelParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v2, p2, Lorg/telegram/tgnet/TLRPC$channels_ChannelParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v2, :cond_3

    iget-object v4, p2, Lorg/telegram/tgnet/TLRPC$channels_ChannelParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v5}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v5

    invoke-virtual {p3, v5, v6, v4}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    iget-object p2, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->participants:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 p3, 0x0

    :goto_4
    if-ge p3, p2, :cond_a

    iget-object v2, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->participants:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v2}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v2

    iget-object v4, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->contactsMap:Landroidx/collection/LongSparseArray;

    invoke-virtual {v4, v2, v3}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_4

    goto :goto_5

    :cond_4
    iget-object v4, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->ignoredUsers:Landroidx/collection/LongSparseArray;

    if-eqz v4, :cond_5

    invoke-virtual {v4, v2, v3}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result v4

    if-ltz v4, :cond_5

    :goto_5
    const/4 v4, 0x1

    goto :goto_6

    :cond_5
    const/4 v4, 0x0

    :goto_6
    iget v5, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v5

    if-eqz v5, :cond_6

    iget-boolean v6, v5, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-nez v6, :cond_7

    :cond_6
    invoke-static {v5}, Lorg/telegram/messenger/UserObject;->isDeleted(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v5

    if-eqz v5, :cond_8

    :cond_7
    const/4 v4, 0x1

    :cond_8
    if-eqz v4, :cond_9

    iget-object v4, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->participants:Ljava/util/ArrayList;

    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v4, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->participantsMap:Landroidx/collection/LongSparseArray;

    invoke-virtual {v4, v2, v3}, Landroidx/collection/LongSparseArray;->remove(J)V

    add-int/lit8 p3, p3, -0x1

    add-int/lit8 p2, p2, -0x1

    :cond_9
    add-int/2addr p3, v1

    goto :goto_4

    :cond_a
    :try_start_0
    iget-object p2, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    const/16 p3, 0xc8

    if-gt p2, p3, :cond_b

    iget p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result p2

    new-instance p3, Lorg/telegram/ui/Components/GroupVoipInviteAlert$$ExternalSyntheticLambda4;

    invoke-direct {p3, p0, p2}, Lorg/telegram/ui/Components/GroupVoipInviteAlert$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/GroupVoipInviteAlert;I)V

    invoke-static {p1, p3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    move-exception p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_b
    :goto_7
    iget p1, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->delayResults:I

    if-gtz p1, :cond_e

    iput-boolean v0, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->loadingUsers:Z

    iput-boolean v1, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->firstLoaded:Z

    iget p1, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->flickerProgressRow:I

    if-ne p1, v1, :cond_c

    const/4 p1, 0x1

    goto :goto_8

    :cond_c
    iget-object p1, p0, Lorg/telegram/ui/Components/UsersAlertBase;->listViewAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p1

    sub-int/2addr p1, v1

    goto :goto_8

    :cond_d
    const/4 p1, 0x0

    :goto_8
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/UsersAlertBase;->showItemsAnimated(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->participants:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_e

    iput-boolean v1, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->showContacts:Z

    invoke-direct {p0}, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->fillContacts()V

    :cond_e
    invoke-direct {p0}, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->updateRows()V

    iget-object p1, p0, Lorg/telegram/ui/Components/UsersAlertBase;->listViewAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-object p1, p0, Lorg/telegram/ui/Components/UsersAlertBase;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    if-eqz p1, :cond_f

    iget-object p1, p0, Lorg/telegram/ui/Components/UsersAlertBase;->listViewAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p1

    if-nez p1, :cond_f

    iget-boolean p1, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->firstLoaded:Z

    if-eqz p1, :cond_f

    iget-object p1, p0, Lorg/telegram/ui/Components/UsersAlertBase;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(ZZ)V

    :cond_f
    return-void
.end method

.method private synthetic lambda$loadChatParticipants$4(Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    new-instance v0, Lorg/telegram/ui/Components/GroupVoipInviteAlert$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p3, p2, p1}, Lorg/telegram/ui/Components/GroupVoipInviteAlert$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/GroupVoipInviteAlert;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;I)V
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->addNewRow:I

    if-ne p2, v0, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->delegate:Lorg/telegram/ui/Components/GroupVoipInviteAlert$GroupVoipInviteAlertDelegate;

    invoke-interface {p1}, Lorg/telegram/ui/Components/GroupVoipInviteAlert$GroupVoipInviteAlertDelegate;->copyInviteLink()V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/UsersAlertBase;->dismiss()V

    goto :goto_0

    :cond_0
    instance-of p2, p1, Lorg/telegram/ui/Cells/ManageChatUserCell;

    if-eqz p2, :cond_2

    check-cast p1, Lorg/telegram/ui/Cells/ManageChatUserCell;

    iget-object p2, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->invitedUsers:Ljava/util/HashSet;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ManageChatUserCell;->getUserId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->delegate:Lorg/telegram/ui/Components/GroupVoipInviteAlert$GroupVoipInviteAlertDelegate;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ManageChatUserCell;->getUserId()J

    move-result-wide v0

    invoke-interface {p2, v0, v1}, Lorg/telegram/ui/Components/GroupVoipInviteAlert$GroupVoipInviteAlertDelegate;->inviteUser(J)V

    :cond_2
    :goto_0
    return-void
.end method

.method private loadChatParticipants(II)V
    .locals 1

    .line 0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->loadingUsers:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->contactsEndReached:Z

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->loadChatParticipants(IIZ)V

    return-void
.end method

.method private updateRows()V
    .locals 4

    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->addNewRow:I

    iput v0, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->participantsStartRow:I

    iput v0, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->participantsEndRow:I

    iput v0, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->contactsHeaderRow:I

    iput v0, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->contactsStartRow:I

    iput v0, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->contactsEndRow:I

    iput v0, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->membersHeaderRow:I

    iput v0, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->lastRow:I

    const/4 v0, 0x1

    iput v0, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->rowCount:I

    const/4 v1, 0x0

    iput v1, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->emptyRow:I

    iget-object v2, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isPublic(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lorg/telegram/messenger/ChatObject;->canUserDoAdminAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget v2, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->addNewRow:I

    :cond_1
    iget-boolean v2, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->loadingUsers:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->firstLoaded:Z

    if-eqz v2, :cond_5

    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    iget v1, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->contactsHeaderRow:I

    iput v2, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->contactsStartRow:I

    iget-object v1, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v2, v1

    iput v2, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->contactsEndRow:I

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->participants:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    if-eqz v0, :cond_4

    iget v0, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->membersHeaderRow:I

    :cond_4
    iget v0, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->participantsStartRow:I

    iget-object v1, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->participants:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->participantsEndRow:I

    :cond_5
    iget-boolean v0, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->loadingUsers:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->flickerProgressRow:I

    :cond_6
    iget v0, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->lastRow:I

    return-void
.end method


# virtual methods
.method protected loadChatParticipants(IIZ)V
    .locals 6

    .line 0
    iget-object p3, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {p3}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p3, :cond_6

    iput-boolean v1, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->loadingUsers:Z

    iget-object p1, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->participants:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->contacts:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->participantsMap:Landroidx/collection/LongSparseArray;

    invoke-virtual {p1}, Landroidx/collection/LongSparseArray;->clear()V

    iget-object p1, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->contactsMap:Landroidx/collection/LongSparseArray;

    invoke-virtual {p1}, Landroidx/collection/LongSparseArray;->clear()V

    iget-object p1, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz p1, :cond_5

    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    iget-wide p1, p1, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    iget-object p3, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    :goto_0
    if-ge v1, p3, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    iget-wide v3, v2, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:J

    cmp-long v5, v3, p1

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    iget-object v5, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->ignoredUsers:Landroidx/collection/LongSparseArray;

    if-eqz v5, :cond_1

    invoke-virtual {v5, v3, v4}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result v3

    if-ltz v3, :cond_1

    goto :goto_1

    :cond_1
    iget v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/UserObject;->isDeleted(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->participants:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->participantsMap:Landroidx/collection/LongSparseArray;

    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:J

    invoke-virtual {v3, v4, v5, v2}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->participants:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    iput-boolean v0, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->showContacts:Z

    invoke-direct {p0}, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->fillContacts()V

    :cond_5
    invoke-direct {p0}, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->updateRows()V

    iget-object p1, p0, Lorg/telegram/ui/Components/UsersAlertBase;->listViewAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_4

    :cond_6
    iput-boolean v0, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->loadingUsers:Z

    iget-object p3, p0, Lorg/telegram/ui/Components/UsersAlertBase;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    if-eqz p3, :cond_7

    invoke-virtual {p3, v0, v1}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(ZZ)V

    :cond_7
    iget-object p3, p0, Lorg/telegram/ui/Components/UsersAlertBase;->listViewAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz p3, :cond_8

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_8
    new-instance p3, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;

    invoke-direct {p3}, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;-><init>()V

    iget-object v2, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInputChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v2

    iput-object v2, p3, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    iget-object v2, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    const/16 v3, 0xc8

    if-eqz v2, :cond_9

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    if-gt v2, v3, :cond_9

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsRecent;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsRecent;-><init>()V

    :goto_2
    iput-object v0, p3, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->filter:Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;

    goto :goto_3

    :cond_9
    iget-boolean v2, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->contactsEndReached:Z

    if-nez v2, :cond_a

    const/4 v2, 0x2

    iput v2, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->delayResults:I

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsContacts;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsContacts;-><init>()V

    iput-object v2, p3, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->filter:Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;

    iput-boolean v0, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->contactsEndReached:Z

    invoke-virtual {p0, v1, v3, v1}, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->loadChatParticipants(IIZ)V

    goto :goto_3

    :cond_a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsRecent;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsRecent;-><init>()V

    goto :goto_2

    :goto_3
    iget-object v0, p3, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->filter:Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;

    const-string v1, ""

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;->q:Ljava/lang/String;

    iput p1, p3, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->offset:I

    iput p2, p3, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->limit:I

    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/Components/GroupVoipInviteAlert$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, p3}, Lorg/telegram/ui/Components/GroupVoipInviteAlert$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/GroupVoipInviteAlert;Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;)V

    invoke-virtual {p1, p3, p2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_b
    :goto_4
    return-void
.end method

.method protected onSearchViewTouched(Landroid/view/MotionEvent;Lorg/telegram/ui/Components/EditTextBoldCursor;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->delegate:Lorg/telegram/ui/Components/GroupVoipInviteAlert$GroupVoipInviteAlertDelegate;

    invoke-interface {v0, p1, p2}, Lorg/telegram/ui/Components/GroupVoipInviteAlert$GroupVoipInviteAlertDelegate;->needOpenSearch(Landroid/view/MotionEvent;Lorg/telegram/ui/Components/EditTextBoldCursor;)V

    return-void
.end method

.method protected search(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->searchAdapter:Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter;->searchUsers(Ljava/lang/String;)V

    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Components/GroupVoipInviteAlert$GroupVoipInviteAlertDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->delegate:Lorg/telegram/ui/Components/GroupVoipInviteAlert$GroupVoipInviteAlertDelegate;

    return-void
.end method

.method protected updateColorKeys()V
    .locals 1

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_scrollUp:I

    iput v0, p0, Lorg/telegram/ui/Components/UsersAlertBase;->keyScrollUp:I

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_listSelector:I

    iput v0, p0, Lorg/telegram/ui/Components/UsersAlertBase;->keyListSelector:I

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_searchBackground:I

    iput v0, p0, Lorg/telegram/ui/Components/UsersAlertBase;->keySearchBackground:I

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_inviteMembersBackground:I

    iput v0, p0, Lorg/telegram/ui/Components/UsersAlertBase;->keyInviteMembersBackground:I

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_listViewBackground:I

    iput v0, p0, Lorg/telegram/ui/Components/UsersAlertBase;->keyListViewBackground:I

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_actionBarUnscrolled:I

    iput v0, p0, Lorg/telegram/ui/Components/UsersAlertBase;->keyActionBarUnscrolled:I

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_nameText:I

    iput v0, p0, Lorg/telegram/ui/Components/UsersAlertBase;->keyNameText:I

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_lastSeenText:I

    iput v0, p0, Lorg/telegram/ui/Components/UsersAlertBase;->keyLastSeenText:I

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_lastSeenTextUnscrolled:I

    iput v0, p0, Lorg/telegram/ui/Components/UsersAlertBase;->keyLastSeenTextUnscrolled:I

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_searchPlaceholder:I

    iput v0, p0, Lorg/telegram/ui/Components/UsersAlertBase;->keySearchPlaceholder:I

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_searchText:I

    iput v0, p0, Lorg/telegram/ui/Components/UsersAlertBase;->keySearchText:I

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_mutedIcon:I

    iput v0, p0, Lorg/telegram/ui/Components/UsersAlertBase;->keySearchIcon:I

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_mutedIconUnscrolled:I

    iput v0, p0, Lorg/telegram/ui/Components/UsersAlertBase;->keySearchIconUnscrolled:I

    return-void
.end method
