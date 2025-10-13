.class public Lorg/telegram/ui/Business/BusinessRecipientsHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final alwaysShow:Ljava/util/ArrayList;

.field public bot:Z

.field private currentValue:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;

.field private doNotExcludeNewChats:Z

.field public exclude:Z

.field public excludeExpanded:Z

.field public excludeFlags:I

.field public final fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field public includeExpanded:Z

.field public includeFlags:I

.field public final neverShow:Ljava/util/ArrayList;

.field private shiftDp:I

.field public final update:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$O5IoouW_6i6to5fkYNRYKjbKIPo(Lorg/telegram/ui/Business/BusinessRecipientsHelper;ZLjava/util/ArrayList;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->lambda$selectChatsFor$1(ZLjava/util/ArrayList;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$oaoTiip308WGZj95xjSa6pES1Rc(Lorg/telegram/ui/Business/BusinessRecipientsHelper;IZLorg/telegram/ui/Components/UItem;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->lambda$onClick$0(IZLorg/telegram/ui/Components/UItem;Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/Runnable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->alwaysShow:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->neverShow:Ljava/util/ArrayList;

    const/4 v0, -0x4

    iput v0, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->shiftDp:I

    iput-object p1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iput-object p2, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->update:Ljava/lang/Runnable;

    return-void
.end method

.method private getFlag(Ljava/lang/String;)I
    .locals 5

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "existing_chats"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x3

    goto :goto_0

    :sswitch_1
    const-string v0, "new_chats"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_2
    const-string v0, "contacts"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x1

    goto :goto_0

    :sswitch_3
    const-string v0, "non_contacts"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :goto_0
    packed-switch v4, :pswitch_data_0

    return v3

    :pswitch_0
    return v2

    :pswitch_1
    return v1

    :pswitch_2
    const/4 p1, 0x4

    return p1

    :pswitch_3
    const/16 p1, 0x8

    return p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4760427b -> :sswitch_3
        -0x21d29fad -> :sswitch_2
        -0xffbd344 -> :sswitch_1
        0x900dc67 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getFlagName(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    sget p1, Lorg/telegram/messenger/R$string;->FilterNonContacts:I

    :goto_0
    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    sget p1, Lorg/telegram/messenger/R$string;->FilterContacts:I

    goto :goto_0

    :cond_1
    sget p1, Lorg/telegram/messenger/R$string;->FilterNewChats:I

    goto :goto_0

    :cond_2
    sget p1, Lorg/telegram/messenger/R$string;->FilterExistingChats:I

    goto :goto_0
.end method

.method private synthetic lambda$onClick$0(IZLorg/telegram/ui/Components/UItem;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    iget p2, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->excludeFlags:I

    xor-int/lit8 p1, p1, -0x1

    and-int/2addr p1, p2

    iput p1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->excludeFlags:I

    goto :goto_1

    :cond_0
    iget p2, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->includeFlags:I

    xor-int/lit8 p1, p1, -0x1

    and-int/2addr p1, p2

    iput p1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->includeFlags:I

    goto :goto_1

    :cond_1
    if-nez p2, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->neverShow:Ljava/util/ArrayList;

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->alwaysShow:Ljava/util/ArrayList;

    :goto_0
    iget-wide p2, p3, Lorg/telegram/ui/Components/UItem;->dialogId:J

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->update:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$selectChatsFor$1(ZLjava/util/ArrayList;I)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iput p3, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->includeFlags:I

    iget-object p1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->alwaysShow:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->alwaysShow:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->alwaysShow:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->neverShow:Ljava/util/ArrayList;

    iget-object p2, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->alwaysShow:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput p3, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->excludeFlags:I

    iget-object p1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->neverShow:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->neverShow:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->neverShow:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->alwaysShow:Ljava/util/ArrayList;

    iget-object p2, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->neverShow:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->update:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private selectChatsFor(Z)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->alwaysShow:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->neverShow:Ljava/util/ArrayList;

    :goto_0
    new-instance v1, Lorg/telegram/ui/UsersSelectActivity;

    invoke-virtual {p0}, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->getFlags()I

    move-result v2

    invoke-direct {v1, p1, v0, v2}, Lorg/telegram/ui/UsersSelectActivity;-><init>(ZLjava/util/ArrayList;I)V

    invoke-virtual {v1}, Lorg/telegram/ui/UsersSelectActivity;->asPrivateChats()Lorg/telegram/ui/UsersSelectActivity;

    move-result-object v0

    iget-boolean v1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->bot:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->exclude:Z

    if-nez v1, :cond_1

    if-nez p1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, v0, Lorg/telegram/ui/UsersSelectActivity;->noChatTypes:Z

    iput-boolean v3, v0, Lorg/telegram/ui/UsersSelectActivity;->allowSelf:Z

    if-nez p1, :cond_2

    iget-boolean v1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->doNotExcludeNewChats:Z

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    iput-boolean v2, v0, Lorg/telegram/ui/UsersSelectActivity;->doNotNewChats:Z

    new-instance v1, Lorg/telegram/ui/Business/BusinessRecipientsHelper$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Business/BusinessRecipientsHelper$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Business/BusinessRecipientsHelper;Z)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/UsersSelectActivity;->setDelegate(Lorg/telegram/ui/UsersSelectActivity$FilterUsersActivityDelegate;)V

    iget-object p1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method


# virtual methods
.method public doNotExcludeNewChats()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->doNotExcludeNewChats:Z

    return-void
.end method

.method public fillItems(Ljava/util/ArrayList;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->getFlags()I

    move-result v2

    iget-boolean v3, v0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->exclude:Z

    const-string v4, "FilterShowMoreChats"

    const-string v5, "non_contacts"

    const-string v6, "contacts"

    const-string v7, "new_chats"

    const-string v8, "existing_chats"

    const/4 v9, 0x5

    const/4 v10, 0x4

    const/4 v11, 0x2

    const/16 v12, 0x8

    const/4 v14, 0x1

    if-nez v3, :cond_7

    sget v3, Lorg/telegram/messenger/R$string;->BusinessChatsIncluded:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/ui/Components/UItem;->asHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget v3, Lorg/telegram/messenger/R$drawable;->msg2_chats_add:I

    sget v15, Lorg/telegram/messenger/R$string;->BusinessChatsIncludedAdd:I

    invoke-static {v15}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v13, 0x65

    invoke-static {v13, v3, v15}, Lorg/telegram/ui/Components/UItem;->asButton(IILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/UItem;->accent()Lorg/telegram/ui/Components/UItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_0

    sget v3, Lorg/telegram/messenger/R$string;->FilterExistingChats:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3, v8, v14}, Lorg/telegram/ui/Components/UItem;->asFilterChat(ZLjava/lang/CharSequence;Ljava/lang/String;I)Lorg/telegram/ui/Components/UItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    and-int/lit8 v3, v2, 0x2

    if-eqz v3, :cond_1

    sget v3, Lorg/telegram/messenger/R$string;->FilterNewChats:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3, v7, v11}, Lorg/telegram/ui/Components/UItem;->asFilterChat(ZLjava/lang/CharSequence;Ljava/lang/String;I)Lorg/telegram/ui/Components/UItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    and-int/lit8 v3, v2, 0x4

    if-eqz v3, :cond_2

    sget v3, Lorg/telegram/messenger/R$string;->FilterContacts:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3, v6, v10}, Lorg/telegram/ui/Components/UItem;->asFilterChat(ZLjava/lang/CharSequence;Ljava/lang/String;I)Lorg/telegram/ui/Components/UItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    and-int/lit8 v3, v2, 0x8

    if-eqz v3, :cond_3

    sget v3, Lorg/telegram/messenger/R$string;->FilterNonContacts:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3, v5, v12}, Lorg/telegram/ui/Components/UItem;->asFilterChat(ZLjava/lang/CharSequence;Ljava/lang/String;I)Lorg/telegram/ui/Components/UItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v3, v0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->alwaysShow:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    iget-boolean v3, v0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->includeExpanded:Z

    if-nez v3, :cond_5

    iget-object v3, v0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->alwaysShow:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v3, v12, :cond_4

    goto :goto_0

    :cond_4
    iget-object v3, v0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->alwaysShow:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v9, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_1

    :cond_5
    :goto_0
    iget-object v3, v0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->alwaysShow:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_1
    const/4 v13, 0x0

    :goto_2
    if-ge v13, v3, :cond_6

    iget-object v15, v0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->alwaysShow:Ljava/util/ArrayList;

    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v14, v10, v11}, Lorg/telegram/ui/Components/UItem;->asFilterChat(ZJ)Lorg/telegram/ui/Components/UItem;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    const/4 v10, 0x4

    const/4 v11, 0x2

    goto :goto_2

    :cond_6
    iget-object v10, v0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->alwaysShow:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-eq v3, v10, :cond_7

    sget v3, Lorg/telegram/messenger/R$drawable;->arrow_more:I

    iget-object v10, v0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->alwaysShow:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    sub-int/2addr v10, v9

    const/4 v11, 0x0

    new-array v13, v11, [Ljava/lang/Object;

    invoke-static {v4, v10, v13}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x66

    invoke-static {v11, v3, v10}, Lorg/telegram/ui/Components/UItem;->asButton(IILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/UItem;->accent()Lorg/telegram/ui/Components/UItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    iget-boolean v3, v0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->bot:Z

    if-nez v3, :cond_8

    iget-boolean v10, v0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->exclude:Z

    if-eqz v10, :cond_12

    :cond_8
    if-eqz v3, :cond_9

    const/4 v3, 0x0

    invoke-static {v3}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    sget v3, Lorg/telegram/messenger/R$string;->BusinessChatsExcluded:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/ui/Components/UItem;->asHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget v3, Lorg/telegram/messenger/R$drawable;->msg2_chats_add:I

    sget v10, Lorg/telegram/messenger/R$string;->BusinessChatsExcludedAdd:I

    invoke-static {v10}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x67

    invoke-static {v11, v3, v10}, Lorg/telegram/ui/Components/UItem;->asButton(IILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/UItem;->accent()Lorg/telegram/ui/Components/UItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v3, v0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->bot:Z

    if-eqz v3, :cond_a

    iget-boolean v3, v0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->exclude:Z

    if-eqz v3, :cond_e

    :cond_a
    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_b

    sget v3, Lorg/telegram/messenger/R$string;->FilterExistingChats:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v10, 0x0

    invoke-static {v10, v3, v8, v14}, Lorg/telegram/ui/Components/UItem;->asFilterChat(ZLjava/lang/CharSequence;Ljava/lang/String;I)Lorg/telegram/ui/Components/UItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_b
    const/4 v10, 0x0

    :goto_3
    and-int/lit8 v3, v2, 0x2

    if-eqz v3, :cond_c

    sget v3, Lorg/telegram/messenger/R$string;->FilterNewChats:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x2

    invoke-static {v10, v3, v7, v8}, Lorg/telegram/ui/Components/UItem;->asFilterChat(ZLjava/lang/CharSequence;Ljava/lang/String;I)Lorg/telegram/ui/Components/UItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    and-int/lit8 v3, v2, 0x4

    if-eqz v3, :cond_d

    sget v3, Lorg/telegram/messenger/R$string;->FilterContacts:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x4

    invoke-static {v10, v3, v6, v7}, Lorg/telegram/ui/Components/UItem;->asFilterChat(ZLjava/lang/CharSequence;Ljava/lang/String;I)Lorg/telegram/ui/Components/UItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    and-int/2addr v2, v12

    if-eqz v2, :cond_e

    sget v2, Lorg/telegram/messenger/R$string;->FilterNonContacts:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2, v5, v12}, Lorg/telegram/ui/Components/UItem;->asFilterChat(ZLjava/lang/CharSequence;Ljava/lang/String;I)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    iget-object v2, v0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->neverShow:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_12

    iget-boolean v2, v0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->excludeExpanded:Z

    if-nez v2, :cond_10

    iget-object v2, v0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->neverShow:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v2, v12, :cond_f

    goto :goto_4

    :cond_f
    iget-object v2, v0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->neverShow:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v9, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_5

    :cond_10
    :goto_4
    iget-object v2, v0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->neverShow:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_5
    const/4 v11, 0x0

    :goto_6
    iget-object v3, v0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->neverShow:Ljava/util/ArrayList;

    if-ge v11, v2, :cond_11

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const/4 v3, 0x0

    invoke-static {v3, v5, v6}, Lorg/telegram/ui/Components/UItem;->asFilterChat(ZJ)Lorg/telegram/ui/Components/UItem;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    :cond_11
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v2, v3, :cond_12

    sget v2, Lorg/telegram/messenger/R$drawable;->arrow_more:I

    iget-object v3, v0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->neverShow:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v9

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v3, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x68

    invoke-static {v4, v2, v3}, Lorg/telegram/ui/Components/UItem;->asButton(IILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/UItem;->accent()Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    return-void
.end method

.method public getBotInputValue()Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessBotRecipients;
    .locals 8

    new-instance v0, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessBotRecipients;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessBotRecipients;-><init>()V

    invoke-virtual {p0}, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->getFlags()I

    move-result v1

    and-int/lit8 v2, v1, -0x31

    iput v2, v0, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessBotRecipients;->flags:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, v0, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessBotRecipients;->existing_chats:Z

    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, v0, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessBotRecipients;->new_chats:Z

    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    iput-boolean v2, v0, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessBotRecipients;->contacts:Z

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    :goto_3
    iput-boolean v4, v0, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessBotRecipients;->non_contacts:Z

    iget-boolean v1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->exclude:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessBotRecipients;->exclude_selected:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->neverShow:Ljava/util/ArrayList;

    goto :goto_4

    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->alwaysShow:Ljava/util/ArrayList;

    :goto_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    const-string v4, "businessRecipientsHelper: user not found "

    if-nez v2, :cond_6

    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget v5, v0, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessBotRecipients;->flags:I

    or-int/lit8 v5, v5, 0x10

    iput v5, v0, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessBotRecipients;->flags:I

    const/4 v5, 0x0

    :goto_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_6

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v6

    if-nez v6, :cond_5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    goto :goto_6

    :cond_5
    iget-object v7, v0, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessBotRecipients;->users:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_6
    iget-boolean v1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->exclude:Z

    if-nez v1, :cond_8

    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget v2, v0, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessBotRecipients;->flags:I

    or-int/lit8 v2, v2, 0x40

    iput v2, v0, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessBotRecipients;->flags:I

    :goto_7
    iget-object v2, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->neverShow:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_8

    iget-object v2, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->neverShow:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v2

    if-nez v2, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->neverShow:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    goto :goto_8

    :cond_7
    iget-object v5, v0, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessBotRecipients;->exclude_users:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_8
    return-object v0
.end method

.method public getBotValue()Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;
    .locals 8

    new-instance v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;-><init>()V

    invoke-virtual {p0}, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->getFlags()I

    move-result v1

    and-int/lit8 v2, v1, -0x31

    iput v2, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;->flags:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;->existing_chats:Z

    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;->new_chats:Z

    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    iput-boolean v2, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;->contacts:Z

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    :goto_3
    iput-boolean v4, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;->non_contacts:Z

    iget-boolean v1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->exclude:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;->exclude_selected:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->neverShow:Ljava/util/ArrayList;

    goto :goto_4

    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->alwaysShow:Ljava/util/ArrayList;

    :goto_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    const-string v4, "businessRecipientsHelper: user not found "

    if-nez v2, :cond_6

    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget v5, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;->flags:I

    or-int/lit8 v5, v5, 0x10

    iput v5, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;->flags:I

    const/4 v5, 0x0

    :goto_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_6

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v6

    if-nez v6, :cond_5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    goto :goto_6

    :cond_5
    iget-object v6, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;->users:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_6
    iget-boolean v1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->exclude:Z

    if-nez v1, :cond_8

    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget v2, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;->flags:I

    or-int/lit8 v2, v2, 0x40

    iput v2, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;->flags:I

    :goto_7
    iget-object v2, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->neverShow:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_8

    iget-object v2, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->neverShow:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v2

    if-nez v2, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->neverShow:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    goto :goto_8

    :cond_7
    iget-object v2, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;->users:Ljava/util/ArrayList;

    iget-object v5, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->neverShow:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_8
    return-object v0
.end method

.method public getFlags()I
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->exclude:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->excludeFlags:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->includeFlags:I

    :goto_0
    return v0
.end method

.method public getInputValue()Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessRecipients;
    .locals 6

    new-instance v0, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessRecipients;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessRecipients;-><init>()V

    invoke-virtual {p0}, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->getFlags()I

    move-result v1

    and-int/lit8 v2, v1, -0x31

    iput v2, v0, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessRecipients;->flags:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, v0, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessRecipients;->existing_chats:Z

    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, v0, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessRecipients;->new_chats:Z

    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    iput-boolean v2, v0, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessRecipients;->contacts:Z

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    :goto_3
    iput-boolean v4, v0, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessRecipients;->non_contacts:Z

    iget-boolean v1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->exclude:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessRecipients;->exclude_selected:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->neverShow:Ljava/util/ArrayList;

    goto :goto_4

    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->alwaysShow:Ljava/util/ArrayList;

    :goto_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget v4, v0, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessRecipients;->flags:I

    or-int/lit8 v4, v4, 0x10

    iput v4, v0, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessRecipients;->flags:I

    :goto_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v4

    if-nez v4, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "businessRecipientsHelper: user not found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    goto :goto_6

    :cond_5
    iget-object v5, v0, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessRecipients;->users:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_6
    return-object v0
.end method

.method public getValue()Lorg/telegram/tgnet/tl/TL_account$TL_businessRecipients;
    .locals 6

    new-instance v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessRecipients;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_account$TL_businessRecipients;-><init>()V

    invoke-virtual {p0}, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->getFlags()I

    move-result v1

    and-int/lit8 v2, v1, -0x31

    iput v2, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessRecipients;->flags:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessRecipients;->existing_chats:Z

    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessRecipients;->new_chats:Z

    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    iput-boolean v2, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessRecipients;->contacts:Z

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    :goto_3
    iput-boolean v4, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessRecipients;->non_contacts:Z

    iget-boolean v1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->exclude:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessRecipients;->exclude_selected:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->neverShow:Ljava/util/ArrayList;

    goto :goto_4

    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->alwaysShow:Ljava/util/ArrayList;

    :goto_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget v4, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessRecipients;->flags:I

    or-int/lit8 v4, v4, 0x10

    iput v4, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessRecipients;->flags:I

    :goto_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v4

    if-nez v4, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "businessRecipientsHelper: user not found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    goto :goto_6

    :cond_5
    iget-object v4, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessRecipients;->users:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_6
    return-object v0
.end method

.method public hasChanges()Z
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->currentValue:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v2, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;->exclude_selected:Z

    iget-boolean v3, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->exclude:Z

    if-eq v2, v3, :cond_1

    return v1

    :cond_1
    iget v0, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;->flags:I

    and-int/lit8 v0, v0, -0x31

    invoke-virtual {p0}, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->getFlags()I

    move-result v2

    if-eq v0, v2, :cond_2

    return v1

    :cond_2
    iget-boolean v0, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->exclude:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->neverShow:Ljava/util/ArrayList;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->alwaysShow:Ljava/util/ArrayList;

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->currentValue:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;

    iget-object v3, v3, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;->users:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v2, v3, :cond_4

    return v1

    :cond_4
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    iget-object v4, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->currentValue:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;

    iget-object v4, v4, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;->users:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    return v1

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    iget-boolean v0, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->bot:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->exclude:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->neverShow:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v3, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->currentValue:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;

    iget-object v3, v3, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;->users:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v0, v3, :cond_7

    return v1

    :cond_7
    const/4 v0, 0x0

    :goto_2
    iget-object v3, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->neverShow:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_9

    iget-object v3, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->currentValue:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;

    iget-object v3, v3, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;->users:Ljava/util/ArrayList;

    iget-object v4, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->neverShow:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    return v1

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_9
    return v2
.end method

.method public onClick(Lorg/telegram/ui/Components/UItem;)Z
    .locals 9

    iget v0, p1, Lorg/telegram/ui/Components/UItem;->id:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x65

    if-eq v0, v3, :cond_9

    const/16 v4, 0x67

    if-ne v0, v4, :cond_0

    goto/16 :goto_4

    :cond_0
    const/16 v3, 0x66

    if-ne v0, v3, :cond_1

    iput-boolean v2, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->includeExpanded:Z

    iget-object p1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->update:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return v2

    :cond_1
    const/16 v3, 0x68

    if-ne v0, v3, :cond_2

    iput-boolean v2, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->excludeExpanded:Z

    iget-object p1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->update:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return v2

    :cond_2
    iget v0, p1, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    const/16 v3, 0xb

    if-ne v0, v3, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-nez v0, :cond_3

    return v1

    :cond_3
    iget-boolean v0, p1, Lorg/telegram/ui/Components/UItem;->include:Z

    iget-object v3, p1, Lorg/telegram/ui/Components/UItem;->chatType:Ljava/lang/String;

    if-nez v3, :cond_4

    const/4 v3, 0x0

    goto :goto_0

    :cond_4
    invoke-direct {p0, v3}, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->getFlag(Ljava/lang/String;)I

    move-result v3

    :goto_0
    if-nez v3, :cond_5

    iget-object v4, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-wide v5, p1, Lorg/telegram/ui/Components/UItem;->dialogId:J

    invoke-virtual {v4, v5, v6}, Lorg/telegram/messenger/MessagesController;->getPeerName(J)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_5
    invoke-direct {p0, v3}, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->getFlagName(I)Ljava/lang/String;

    move-result-object v4

    :goto_1
    iget-object v5, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    new-instance v6, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v8}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    if-nez v0, :cond_6

    sget v7, Lorg/telegram/messenger/R$string;->BusinessRecipientsRemoveExcludeTitle:I

    goto :goto_2

    :cond_6
    sget v7, Lorg/telegram/messenger/R$string;->BusinessRecipientsRemoveIncludeTitle:I

    :goto_2
    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v6

    if-nez v0, :cond_7

    sget v7, Lorg/telegram/messenger/R$string;->BusinessRecipientsRemoveExcludeMessage:I

    goto :goto_3

    :cond_7
    sget v7, Lorg/telegram/messenger/R$string;->BusinessRecipientsRemoveIncludeMessage:I

    :goto_3
    new-array v8, v2, [Ljava/lang/Object;

    aput-object v4, v8, v1

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    sget v4, Lorg/telegram/messenger/R$string;->Remove:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lorg/telegram/ui/Business/BusinessRecipientsHelper$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0, v3, v0, p1}, Lorg/telegram/ui/Business/BusinessRecipientsHelper$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Business/BusinessRecipientsHelper;IZLorg/telegram/ui/Components/UItem;)V

    invoke-virtual {v1, v4, v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {v5, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return v2

    :cond_8
    return v1

    :cond_9
    :goto_4
    if-ne v0, v3, :cond_a

    const/4 v1, 0x1

    :cond_a
    invoke-direct {p0, v1}, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->selectChatsFor(Z)V

    return v2
.end method

.method public setExclude(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->exclude:Z

    return-void
.end method

.method public setValue(Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;)V
    .locals 2

    .line 0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->bot:Z

    iput-object p1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->currentValue:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;

    const/4 v1, 0x0

    if-nez p1, :cond_0

    iput-boolean v0, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->exclude:Z

    iput v1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->excludeFlags:I

    iput v1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->includeFlags:I

    iget-object p1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->alwaysShow:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->neverShow:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    :cond_0
    iget-boolean v0, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;->exclude_selected:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->exclude:Z

    if-eqz v0, :cond_1

    iput v1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->includeFlags:I

    iget p1, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;->flags:I

    and-int/lit8 p1, p1, -0x31

    iput p1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->excludeFlags:I

    iget-object p1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->alwaysShow:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->neverShow:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->neverShow:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->currentValue:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;

    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;->users:Ljava/util/ArrayList;

    :goto_0
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_1
    iget p1, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;->flags:I

    and-int/lit8 p1, p1, -0x31

    iput p1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->includeFlags:I

    iput v1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->excludeFlags:I

    iget-object p1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->alwaysShow:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->neverShow:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->alwaysShow:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->currentValue:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;

    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;->users:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->neverShow:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->currentValue:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;

    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;->exclude_users:Ljava/util/ArrayList;

    goto :goto_0

    :goto_1
    return-void
.end method

.method public setValue(Lorg/telegram/tgnet/tl/TL_account$TL_businessRecipients;)V
    .locals 3

    .line 0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->bot:Z

    if-eqz p1, :cond_0

    new-instance v1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;

    invoke-direct {v1}, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->currentValue:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;

    iget v2, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessRecipients;->flags:I

    iput v2, v1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;->flags:I

    iget-boolean v2, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessRecipients;->existing_chats:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;->existing_chats:Z

    iget-boolean v2, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessRecipients;->new_chats:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;->new_chats:Z

    iget-boolean v2, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessRecipients;->contacts:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;->contacts:Z

    iget-boolean v2, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessRecipients;->non_contacts:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;->non_contacts:Z

    iget-boolean v2, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessRecipients;->exclude_selected:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;->exclude_selected:Z

    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessRecipients;->users:Ljava/util/ArrayList;

    iput-object p1, v1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;->users:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->currentValue:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;

    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->currentValue:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;

    if-nez p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->exclude:Z

    iput v0, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->excludeFlags:I

    iput v0, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->includeFlags:I

    iget-object p1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->alwaysShow:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->neverShow:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    goto :goto_2

    :cond_1
    iget-boolean v1, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;->exclude_selected:Z

    iput-boolean v1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->exclude:Z

    if-eqz v1, :cond_2

    iput v0, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->includeFlags:I

    iget p1, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;->flags:I

    and-int/lit8 p1, p1, -0x31

    iput p1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->excludeFlags:I

    iget-object p1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->alwaysShow:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->neverShow:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->neverShow:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->currentValue:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;

    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;->users:Ljava/util/ArrayList;

    :goto_1
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_2
    iget p1, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;->flags:I

    and-int/lit8 p1, p1, -0x31

    iput p1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->includeFlags:I

    iput v0, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->excludeFlags:I

    iget-object p1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->alwaysShow:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->neverShow:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->alwaysShow:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->currentValue:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;

    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;->users:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->neverShow:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->currentValue:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;

    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;->exclude_users:Ljava/util/ArrayList;

    goto :goto_1

    :goto_2
    return-void
.end method

.method public validate(Lorg/telegram/ui/Components/UniversalRecyclerView;)Z
    .locals 3

    iget-boolean v0, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->exclude:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->alwaysShow:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->includeFlags:I

    if-nez v0, :cond_0

    sget-object v0, Lorg/telegram/messenger/BotWebViewVibrationEffect;->APP_ERROR:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    invoke-virtual {v0}, Lorg/telegram/messenger/BotWebViewVibrationEffect;->vibrate()V

    const/16 v0, 0x65

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/UniversalRecyclerView;->findViewByItemId(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->shiftDp:I

    neg-int v2, v2

    iput v2, p0, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->shiftDp:I

    int-to-float v2, v2

    invoke-static {v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;F)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/UniversalRecyclerView;->findPositionByItemId(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
