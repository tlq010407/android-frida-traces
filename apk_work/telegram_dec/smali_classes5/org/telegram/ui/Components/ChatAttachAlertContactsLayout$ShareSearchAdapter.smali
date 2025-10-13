.class public Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareSearchAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShareSearchAdapter"
.end annotation


# instance fields
.field private lastSearchId:I

.field private mContext:Landroid/content/Context;

.field private searchResult:Ljava/util/ArrayList;

.field private searchResultNames:Ljava/util/ArrayList;

.field private searchRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;


# direct methods
.method public static synthetic $r8$lambda$UsKdsXu_RNqNGlaI1rvzoDtIVWE(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/CharSequence;
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareSearchAdapter;->lambda$onBindViewHolder$5(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Z5bW9m8vz7hl2reMoLrAS-Bs7iY(Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareSearchAdapter;ILjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareSearchAdapter;->lambda$updateSearchResults$3(ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cjfAfMTT8TS2D7pcoo1NIveGhTk(Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareSearchAdapter;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareSearchAdapter;->lambda$processSearch$1(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    return-void
.end method

.method public static synthetic $r8$lambda$iELJddDiGDBWaXJaj1kL0ttSeec(Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareSearchAdapter;Ljava/lang/String;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareSearchAdapter;->lambda$search$0(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$ohVs6ue6ETDwcw3OZ9SHGpDXFzI(Lorg/telegram/messenger/ContactsController$Contact;)Ljava/lang/CharSequence;
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareSearchAdapter;->lambda$onBindViewHolder$4(Lorg/telegram/messenger/ContactsController$Contact;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$v2YTD-GtRV7nrKvFD16WqCdupow(Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareSearchAdapter;Ljava/lang/String;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareSearchAdapter;->lambda$processSearch$2(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareSearchAdapter;->searchResult:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareSearchAdapter;->searchResultNames:Ljava/util/ArrayList;

    iput-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareSearchAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method private static synthetic lambda$onBindViewHolder$4(Lorg/telegram/messenger/ContactsController$Contact;)Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/ContactsController$Contact;->phones:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/telegram/PhoneFormat/PhoneFormat;->getInstance()Lorg/telegram/PhoneFormat/PhoneFormat;

    move-result-object v0

    iget-object p0, p0, Lorg/telegram/messenger/ContactsController$Contact;->phones:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Lorg/telegram/PhoneFormat/PhoneFormat;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static synthetic lambda$onBindViewHolder$5(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/CharSequence;
    .locals 3

    invoke-static {}, Lorg/telegram/PhoneFormat/PhoneFormat;->getInstance()Lorg/telegram/PhoneFormat/PhoneFormat;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/telegram/PhoneFormat/PhoneFormat;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$processSearch$1(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, -0x1

    iput v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareSearchAdapter;->lastSearchId:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget v4, v0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareSearchAdapter;->lastSearchId:I

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareSearchAdapter;->updateSearchResults(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    return-void

    :cond_0
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/telegram/messenger/LocaleController;->getTranslitString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    const/4 v3, 0x0

    :cond_2
    const/4 v4, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_3

    const/4 v7, 0x1

    goto :goto_0

    :cond_3
    const/4 v7, 0x0

    :goto_0
    add-int/2addr v7, v6

    new-array v8, v7, [Ljava/lang/String;

    aput-object v2, v8, v4

    if-eqz v3, :cond_4

    aput-object v3, v8, v6

    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Lorg/telegram/messenger/support/LongSparseIntArray;

    invoke-direct {v9}, Lorg/telegram/messenger/support/LongSparseIntArray;-><init>()V

    const/4 v10, 0x0

    :goto_1
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v11

    const-string v13, "@"

    const-string v14, " "

    if-ge v10, v11, :cond_13

    move-object/from16 v11, p2

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/telegram/messenger/ContactsController$Contact;

    iget-object v4, v15, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    iget-object v12, v15, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    invoke-static {v4, v12}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v12

    invoke-virtual {v12, v4}, Lorg/telegram/messenger/LocaleController;->getTranslitString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iget-object v5, v15, Lorg/telegram/messenger/ContactsController$Contact;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v5, :cond_5

    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v6, v5}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v6

    invoke-virtual {v6, v4}, Lorg/telegram/messenger/LocaleController;->getTranslitString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_2
    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_6

    const/4 v12, 0x0

    :cond_6
    const/4 v11, 0x0

    const/16 v16, 0x0

    :goto_3
    if-ge v11, v7, :cond_12

    aget-object v0, v8, v11

    if-eqz v5, :cond_7

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    :cond_7
    if-eqz v6, :cond_9

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_8
    const/4 v1, 0x1

    goto :goto_5

    :cond_9
    iget-object v1, v15, Lorg/telegram/messenger/ContactsController$Contact;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v1, :cond_a

    invoke-static {v1}, Lorg/telegram/messenger/UserObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x2

    goto :goto_5

    :cond_a
    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    if-eqz v12, :cond_b

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_4

    :cond_b
    move/from16 v1, v16

    goto :goto_5

    :cond_c
    :goto_4
    const/4 v1, 0x3

    :goto_5
    move-object/from16 v16, v4

    if-eqz v1, :cond_11

    iget-object v4, v15, Lorg/telegram/messenger/ContactsController$Contact;->phones:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_d

    iget-object v4, v15, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_11

    :cond_d
    const/4 v4, 0x3

    if-ne v1, v4, :cond_e

    iget-object v1, v15, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    iget-object v4, v15, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    :goto_6
    invoke-static {v1, v4, v0}, Lorg/telegram/messenger/AndroidUtilities;->generateSearchName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_7
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_e
    const/4 v4, 0x1

    if-ne v1, v4, :cond_f

    iget-object v1, v15, Lorg/telegram/messenger/ContactsController$Contact;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v4, v1, v0}, Lorg/telegram/messenger/AndroidUtilities;->generateSearchName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_7

    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v15, Lorg/telegram/messenger/ContactsController$Contact;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v4}, Lorg/telegram/messenger/UserObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    goto :goto_6

    :goto_8
    iget-object v0, v15, Lorg/telegram/messenger/ContactsController$Contact;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_10

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    const/4 v4, 0x1

    invoke-virtual {v9, v0, v1, v4}, Lorg/telegram/messenger/support/LongSparseIntArray;->put(JI)V

    :cond_10
    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_11
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    move-object/from16 v4, v16

    move/from16 v16, v1

    move-object/from16 v1, p1

    goto/16 :goto_3

    :cond_12
    :goto_9
    add-int/lit8 v10, v10, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto/16 :goto_1

    :cond_13
    const/4 v0, 0x0

    :goto_a
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1c

    move-object/from16 v1, p3

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_contact;

    iget-wide v5, v4, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:J

    invoke-virtual {v9, v5, v6}, Lorg/telegram/messenger/support/LongSparseIntArray;->indexOfKey(J)I

    move-result v5

    if-ltz v5, :cond_15

    :cond_14
    const/4 v12, 0x0

    const/4 v15, 0x1

    goto/16 :goto_f

    :cond_15
    invoke-static/range {p4 .. p4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-wide v10, v4, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v5, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v5, v6}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v6

    invoke-virtual {v6, v5}, Lorg/telegram/messenger/LocaleController;->getTranslitString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_16

    const/4 v6, 0x0

    :cond_16
    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_b
    if-ge v11, v7, :cond_14

    aget-object v12, v8, v11

    invoke-virtual {v5, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_18

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_18

    if-eqz v6, :cond_17

    invoke-virtual {v6, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_18

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_17

    goto :goto_c

    :cond_17
    invoke-static {v4}, Lorg/telegram/messenger/UserObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_19

    invoke-virtual {v15, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_19

    const/4 v10, 0x2

    goto :goto_d

    :cond_18
    :goto_c
    const/4 v10, 0x1

    :cond_19
    :goto_d
    if-eqz v10, :cond_1b

    iget-object v15, v4, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    if-eqz v15, :cond_1b

    const/4 v15, 0x1

    if-ne v10, v15, :cond_1a

    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v5, v6, v12}, Lorg/telegram/messenger/AndroidUtilities;->generateSearchName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v12, 0x0

    goto :goto_e

    :cond_1a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lorg/telegram/messenger/UserObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v12, 0x0

    invoke-static {v5, v12, v6}, Lorg/telegram/messenger/AndroidUtilities;->generateSearchName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_e
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_1b
    const/4 v12, 0x0

    const/4 v15, 0x1

    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_b

    :goto_f
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_a

    :cond_1c
    move-object/from16 v0, p0

    move-object/from16 v4, p1

    move/from16 v5, p5

    invoke-direct {v0, v4, v2, v3, v5}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareSearchAdapter;->updateSearchResults(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    return-void
.end method

.method private synthetic lambda$processSearch$2(Ljava/lang/String;I)V
    .locals 9

    sget v5, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v5}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController;->contactsBook:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v5}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController;->contacts:Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v7, Lorg/telegram/messenger/Utilities;->searchQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v8, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareSearchAdapter$$ExternalSyntheticLambda4;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareSearchAdapter$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareSearchAdapter;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$search$0(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareSearchAdapter;->processSearch(Ljava/lang/String;I)V

    return-void
.end method

.method private synthetic lambda$updateSearchResults$3(ILjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareSearchAdapter;->lastSearchId:I

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;->access$100(Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;->access$500(Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;)Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareSearchAdapter;

    move-result-object v0

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;->access$100(Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;->access$500(Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;)Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareSearchAdapter;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_1
    iput-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareSearchAdapter;->searchResult:Ljava/util/ArrayList;

    iput-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareSearchAdapter;->searchResultNames:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareSearchAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private processSearch(Ljava/lang/String;I)V
    .locals 1

    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareSearchAdapter$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareSearchAdapter$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareSearchAdapter;Ljava/lang/String;I)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateSearchResults(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .locals 0

    new-instance p1, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareSearchAdapter$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0, p4, p2, p3}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareSearchAdapter$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareSearchAdapter;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public getItem(I)Ljava/lang/Object;
    .locals 1

    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareSearchAdapter;->getItemCount()I

    move-result v1

    sub-int/2addr v1, v0

    if-ne p1, v1, :cond_1

    const/4 p1, 0x2

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public notifyDataSetChanged()V
    .locals 1

    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;->access$1000(Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 7

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    if-nez v0, :cond_4

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareSearchAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p2}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareSearchAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lorg/telegram/messenger/ContactsController$Contact;

    if-eqz v4, :cond_2

    move-object v4, v3

    check-cast v4, Lorg/telegram/messenger/ContactsController$Contact;

    iget-object v5, v4, Lorg/telegram/messenger/ContactsController$Contact;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    iget v5, v4, Lorg/telegram/messenger/ContactsController$Contact;->contact_id:I

    invoke-virtual {p1, v5}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->setCurrentId(I)V

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareSearchAdapter;->searchResultNames:Ljava/util/ArrayList;

    add-int/lit8 v6, p2, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    new-instance v6, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareSearchAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v6, v4}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareSearchAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/ContactsController$Contact;)V

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v5, v6, v0}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->setData(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/CharSequence;Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell$CharSequenceCallback;Z)V

    move-object v5, v4

    goto :goto_1

    :cond_2
    move-object v5, v3

    check-cast v5, Lorg/telegram/tgnet/TLRPC$User;

    :goto_1
    if-eqz v5, :cond_3

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareSearchAdapter;->searchResultNames:Ljava/util/ArrayList;

    sub-int/2addr p2, v2

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareSearchAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v2, v5}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareSearchAdapter$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/tgnet/TLRPC$User;)V

    invoke-virtual {p1, v5, p2, v2, v0}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->setData(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/CharSequence;Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell$CharSequenceCallback;Z)V

    :cond_3
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;->access$900(Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;)Ljava/util/HashMap;

    move-result-object p2

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ListItemID;->of(Ljava/lang/Object;)Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ListItemID;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {p1, p2, v1}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->setChecked(ZZ)V

    :cond_4
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    if-eqz p2, :cond_1

    const/4 p1, 0x1

    if-eq p2, p1, :cond_0

    new-instance p1, Landroid/view/View;

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareSearchAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/view/View;

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareSearchAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/high16 v0, 0x42600000    # 56.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    const/4 v1, -0x1

    invoke-direct {p2, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_1
    new-instance p1, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareSearchAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    :goto_0
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public search(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareSearchAdapter;->searchRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/telegram/messenger/Utilities;->searchQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareSearchAdapter;->searchRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareSearchAdapter;->searchRunnable:Ljava/lang/Runnable;

    :cond_0
    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareSearchAdapter;->searchResultNames:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareSearchAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareSearchAdapter;->lastSearchId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareSearchAdapter;->lastSearchId:I

    sget-object v1, Lorg/telegram/messenger/Utilities;->searchQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareSearchAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1, v0}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareSearchAdapter$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareSearchAdapter;Ljava/lang/String;I)V

    iput-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareSearchAdapter;->searchRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x12c

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method
