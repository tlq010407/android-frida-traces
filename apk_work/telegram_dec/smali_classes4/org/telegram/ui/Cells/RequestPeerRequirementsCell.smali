.class public Lorg/telegram/ui/Cells/RequestPeerRequirementsCell;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Cells/RequestPeerRequirementsCell$RequirementCell;
    }
.end annotation


# instance fields
.field private requestPeerType:Lorg/telegram/tgnet/TLRPC$RequestPeerType;

.field private requirements:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Cells/RequestPeerRequirementsCell;->requirements:Ljava/util/ArrayList;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method private checkAdminRights(Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;ZII)V
    .locals 0

    .line 0
    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p3

    invoke-static {p4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p4

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Cells/RequestPeerRequirementsCell;->checkAdminRights(Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method private checkAdminRights(Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 4

    .line 0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v3, p1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->change_info:Z

    if-eqz v3, :cond_2

    if-eqz p2, :cond_1

    sget v3, Lorg/telegram/messenger/R$string;->EditAdminChangeChannelInfo:I

    :goto_0
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    sget v3, Lorg/telegram/messenger/R$string;->EditAdminChangeGroupInfo:I

    goto :goto_0

    :goto_1
    invoke-static {v1, v3}, Lorg/telegram/ui/Cells/Requirement;->make(ILjava/lang/CharSequence;)Lorg/telegram/ui/Cells/Requirement;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-boolean v3, p1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->post_messages:Z

    if-eqz v3, :cond_3

    if-eqz p2, :cond_3

    sget v3, Lorg/telegram/messenger/R$string;->EditAdminPostMessages:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/telegram/ui/Cells/Requirement;->make(ILjava/lang/CharSequence;)Lorg/telegram/ui/Cells/Requirement;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-boolean v3, p1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->edit_messages:Z

    if-eqz v3, :cond_4

    if-eqz p2, :cond_4

    sget v3, Lorg/telegram/messenger/R$string;->EditAdminEditMessages:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/telegram/ui/Cells/Requirement;->make(ILjava/lang/CharSequence;)Lorg/telegram/ui/Cells/Requirement;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-boolean v3, p1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->delete_messages:Z

    if-eqz v3, :cond_6

    if-eqz p2, :cond_5

    sget v3, Lorg/telegram/messenger/R$string;->EditAdminDeleteMessages:I

    :goto_2
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_5
    sget v3, Lorg/telegram/messenger/R$string;->EditAdminGroupDeleteMessages:I

    goto :goto_2

    :goto_3
    invoke-static {v1, v3}, Lorg/telegram/ui/Cells/Requirement;->make(ILjava/lang/CharSequence;)Lorg/telegram/ui/Cells/Requirement;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    iget-boolean v3, p1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->ban_users:Z

    if-eqz v3, :cond_7

    if-nez p2, :cond_7

    sget v3, Lorg/telegram/messenger/R$string;->EditAdminBanUsers:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/telegram/ui/Cells/Requirement;->make(ILjava/lang/CharSequence;)Lorg/telegram/ui/Cells/Requirement;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    iget-boolean v3, p1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->invite_users:Z

    if-eqz v3, :cond_8

    sget v3, Lorg/telegram/messenger/R$string;->EditAdminAddUsers:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/telegram/ui/Cells/Requirement;->make(ILjava/lang/CharSequence;)Lorg/telegram/ui/Cells/Requirement;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    iget-boolean v3, p1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->pin_messages:Z

    if-eqz v3, :cond_9

    if-nez p2, :cond_9

    sget v3, Lorg/telegram/messenger/R$string;->EditAdminPinMessages:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/telegram/ui/Cells/Requirement;->make(ILjava/lang/CharSequence;)Lorg/telegram/ui/Cells/Requirement;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    iget-boolean v3, p1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->add_admins:Z

    if-eqz v3, :cond_a

    sget v3, Lorg/telegram/messenger/R$string;->EditAdminAddAdmins:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/telegram/ui/Cells/Requirement;->make(ILjava/lang/CharSequence;)Lorg/telegram/ui/Cells/Requirement;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    iget-boolean v3, p1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->anonymous:Z

    if-eqz v3, :cond_b

    if-nez p2, :cond_b

    sget v3, Lorg/telegram/messenger/R$string;->EditAdminSendAnonymously:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/telegram/ui/Cells/Requirement;->make(ILjava/lang/CharSequence;)Lorg/telegram/ui/Cells/Requirement;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    iget-boolean v3, p1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_call:Z

    if-eqz v3, :cond_c

    sget v3, Lorg/telegram/messenger/R$string;->StartVoipChatPermission:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/telegram/ui/Cells/Requirement;->make(ILjava/lang/CharSequence;)Lorg/telegram/ui/Cells/Requirement;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_topics:Z

    if-eqz p1, :cond_d

    if-nez p2, :cond_d

    sget p1, Lorg/telegram/messenger/R$string;->ManageTopicsPermission:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/telegram/ui/Cells/Requirement;->make(ILjava/lang/CharSequence;)Lorg/telegram/ui/Cells/Requirement;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    const-string p2, " "

    if-ne p1, v1, :cond_e

    iget-object p1, p0, Lorg/telegram/ui/Cells/RequestPeerRequirementsCell;->requirements:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/telegram/ui/Cells/Requirement;

    iget-object p3, p3, Lorg/telegram/ui/Cells/Requirement;->text:Ljava/lang/CharSequence;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/CharSequence;

    aput-object p4, v2, v0

    aput-object p2, v2, v1

    const/4 p2, 0x2

    aput-object p3, v2, p2

    invoke-static {v2}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Cells/Requirement;->make(Ljava/lang/CharSequence;)Lorg/telegram/ui/Cells/Requirement;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_e
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_11

    invoke-static {p3}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :goto_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge v0, p2, :cond_10

    if-lez v0, :cond_f

    const-string p2, ", "

    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_f
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/Cells/Requirement;

    iget-object p2, p2, Lorg/telegram/ui/Cells/Requirement;->text:Ljava/lang/CharSequence;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    add-int/2addr v0, v1

    goto :goto_4

    :cond_10
    const-string p2, "."

    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-object p2, p0, Lorg/telegram/ui/Cells/RequestPeerRequirementsCell;->requirements:Ljava/util/ArrayList;

    invoke-static {p1}, Lorg/telegram/ui/Cells/Requirement;->make(Ljava/lang/CharSequence;)Lorg/telegram/ui/Cells/Requirement;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11
    :goto_5
    return-void
.end method

.method private checkRequirement(Ljava/lang/Boolean;II)V
    .locals 0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Cells/RequestPeerRequirementsCell;->requirements:Ljava/util/ArrayList;

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Cells/Requirement;->make(Ljava/lang/CharSequence;)Lorg/telegram/ui/Cells/Requirement;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Cells/RequestPeerRequirementsCell;->requirements:Ljava/util/ArrayList;

    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private emptyView(II)Landroid/view/View;
    .locals 1

    .line 0
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Cells/RequestPeerRequirementsCell;->emptyView(ILandroid/graphics/drawable/Drawable;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private emptyView(ILandroid/graphics/drawable/Drawable;)Landroid/view/View;
    .locals 2

    .line 0
    new-instance v0, Lorg/telegram/ui/Cells/RequestPeerRequirementsCell$1;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lorg/telegram/ui/Cells/RequestPeerRequirementsCell$1;-><init>(Lorg/telegram/ui/Cells/RequestPeerRequirementsCell;Landroid/content/Context;I)V

    invoke-virtual {v0, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method public static rightsToString(Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Z)Ljava/lang/CharSequence;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->change_info:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    sget v1, Lorg/telegram/messenger/R$string;->EditAdminChangeChannelInfo:I

    :goto_0
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_0
    sget v1, Lorg/telegram/messenger/R$string;->EditAdminChangeGroupInfo:I

    goto :goto_0

    :goto_1
    invoke-static {v2, v1}, Lorg/telegram/ui/Cells/Requirement;->make(ILjava/lang/CharSequence;)Lorg/telegram/ui/Cells/Requirement;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->post_messages:Z

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    sget v1, Lorg/telegram/messenger/R$string;->EditAdminPostMessages:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lorg/telegram/ui/Cells/Requirement;->make(ILjava/lang/CharSequence;)Lorg/telegram/ui/Cells/Requirement;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->edit_messages:Z

    if-eqz v1, :cond_3

    if-eqz p1, :cond_3

    sget v1, Lorg/telegram/messenger/R$string;->EditAdminEditMessages:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lorg/telegram/ui/Cells/Requirement;->make(ILjava/lang/CharSequence;)Lorg/telegram/ui/Cells/Requirement;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->delete_messages:Z

    if-eqz v1, :cond_5

    if-eqz p1, :cond_4

    sget v1, Lorg/telegram/messenger/R$string;->EditAdminDeleteMessages:I

    :goto_2
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_4
    sget v1, Lorg/telegram/messenger/R$string;->EditAdminGroupDeleteMessages:I

    goto :goto_2

    :goto_3
    invoke-static {v2, v1}, Lorg/telegram/ui/Cells/Requirement;->make(ILjava/lang/CharSequence;)Lorg/telegram/ui/Cells/Requirement;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->ban_users:Z

    if-eqz v1, :cond_6

    if-nez p1, :cond_6

    sget v1, Lorg/telegram/messenger/R$string;->EditAdminBanUsers:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lorg/telegram/ui/Cells/Requirement;->make(ILjava/lang/CharSequence;)Lorg/telegram/ui/Cells/Requirement;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->invite_users:Z

    if-eqz v1, :cond_7

    sget v1, Lorg/telegram/messenger/R$string;->EditAdminAddUsers:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lorg/telegram/ui/Cells/Requirement;->make(ILjava/lang/CharSequence;)Lorg/telegram/ui/Cells/Requirement;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->pin_messages:Z

    if-eqz v1, :cond_8

    if-nez p1, :cond_8

    sget v1, Lorg/telegram/messenger/R$string;->EditAdminPinMessages:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lorg/telegram/ui/Cells/Requirement;->make(ILjava/lang/CharSequence;)Lorg/telegram/ui/Cells/Requirement;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->add_admins:Z

    if-eqz v1, :cond_9

    sget v1, Lorg/telegram/messenger/R$string;->EditAdminAddAdmins:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lorg/telegram/ui/Cells/Requirement;->make(ILjava/lang/CharSequence;)Lorg/telegram/ui/Cells/Requirement;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->anonymous:Z

    if-eqz v1, :cond_a

    if-nez p1, :cond_a

    sget v1, Lorg/telegram/messenger/R$string;->EditAdminSendAnonymously:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lorg/telegram/ui/Cells/Requirement;->make(ILjava/lang/CharSequence;)Lorg/telegram/ui/Cells/Requirement;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_call:Z

    if-eqz v1, :cond_b

    sget v1, Lorg/telegram/messenger/R$string;->StartVoipChatPermission:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lorg/telegram/ui/Cells/Requirement;->make(ILjava/lang/CharSequence;)Lorg/telegram/ui/Cells/Requirement;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_topics:Z

    if-eqz p0, :cond_c

    if-nez p1, :cond_c

    sget p0, Lorg/telegram/messenger/R$string;->ManageTopicsPermission:I

    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lorg/telegram/ui/Cells/Requirement;->make(ILjava/lang/CharSequence;)Lorg/telegram/ui/Cells/Requirement;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 p1, 0x0

    if-ne p0, v2, :cond_d

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/telegram/ui/Cells/Requirement;

    iget-object p0, p0, Lorg/telegram/ui/Cells/Requirement;->text:Ljava/lang/CharSequence;

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_10

    new-instance p0, Landroid/text/SpannableStringBuilder;

    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;-><init>()V

    :goto_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_f

    if-lez p1, :cond_e

    const-string v1, ", "

    invoke-virtual {p0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_e
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Cells/Requirement;

    iget-object v1, v1, Lorg/telegram/ui/Cells/Requirement;->text:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_f
    return-object p0

    :cond_10
    const-string p0, ""

    return-object p0
.end method


# virtual methods
.method public set(Lorg/telegram/tgnet/TLRPC$RequestPeerType;)V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Cells/RequestPeerRequirementsCell;->requestPeerType:Lorg/telegram/tgnet/TLRPC$RequestPeerType;

    if-eq v0, p1, :cond_8

    iput-object p1, p0, Lorg/telegram/ui/Cells/RequestPeerRequirementsCell;->requestPeerType:Lorg/telegram/tgnet/TLRPC$RequestPeerType;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lorg/telegram/ui/Cells/RequestPeerRequirementsCell;->requirements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_requestPeerTypeUser;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_requestPeerTypeUser;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_requestPeerTypeUser;->premium:Ljava/lang/Boolean;

    sget v0, Lorg/telegram/messenger/R$string;->PeerRequirementPremiumTrue:I

    sget v1, Lorg/telegram/messenger/R$string;->PeerRequirementPremiumFalse:I

    invoke-direct {p0, p1, v0, v1}, Lorg/telegram/ui/Cells/RequestPeerRequirementsCell;->checkRequirement(Ljava/lang/Boolean;II)V

    goto/16 :goto_2

    :cond_0
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_requestPeerTypeBroadcast;

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$RequestPeerType;->has_username:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    sget v2, Lorg/telegram/messenger/R$string;->PeerRequirementChannelPublicTrue:I

    sget v3, Lorg/telegram/messenger/R$string;->PeerRequirementChannelPublicFalse:I

    invoke-direct {p0, v1, v2, v3}, Lorg/telegram/ui/Cells/RequestPeerRequirementsCell;->checkRequirement(Ljava/lang/Boolean;II)V

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$RequestPeerType;->bot_participant:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Cells/RequestPeerRequirementsCell;->requirements:Ljava/util/ArrayList;

    sget v2, Lorg/telegram/messenger/R$string;->PeerRequirementChannelBotParticipant:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/ui/Cells/Requirement;->make(Ljava/lang/CharSequence;)Lorg/telegram/ui/Cells/Requirement;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$RequestPeerType;->creator:Ljava/lang/Boolean;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/Cells/RequestPeerRequirementsCell;->requirements:Ljava/util/ArrayList;

    sget v2, Lorg/telegram/messenger/R$string;->PeerRequirementChannelCreatorTrue:I

    :goto_0
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/ui/Cells/Requirement;->make(Ljava/lang/CharSequence;)Lorg/telegram/ui/Cells/Requirement;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    sget v2, Lorg/telegram/messenger/R$string;->PeerRequirementGroupPublicTrue:I

    sget v3, Lorg/telegram/messenger/R$string;->PeerRequirementGroupPublicFalse:I

    invoke-direct {p0, v1, v2, v3}, Lorg/telegram/ui/Cells/RequestPeerRequirementsCell;->checkRequirement(Ljava/lang/Boolean;II)V

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$RequestPeerType;->forum:Ljava/lang/Boolean;

    sget v2, Lorg/telegram/messenger/R$string;->PeerRequirementForumTrue:I

    sget v3, Lorg/telegram/messenger/R$string;->PeerRequirementForumFalse:I

    invoke-direct {p0, v1, v2, v3}, Lorg/telegram/ui/Cells/RequestPeerRequirementsCell;->checkRequirement(Ljava/lang/Boolean;II)V

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$RequestPeerType;->bot_participant:Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/Cells/RequestPeerRequirementsCell;->requirements:Ljava/util/ArrayList;

    sget v2, Lorg/telegram/messenger/R$string;->PeerRequirementGroupBotParticipant:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/ui/Cells/Requirement;->make(Ljava/lang/CharSequence;)Lorg/telegram/ui/Cells/Requirement;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$RequestPeerType;->creator:Ljava/lang/Boolean;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/Cells/RequestPeerRequirementsCell;->requirements:Ljava/util/ArrayList;

    sget v2, Lorg/telegram/messenger/R$string;->PeerRequirementGroupCreatorTrue:I

    goto :goto_0

    :cond_4
    :goto_1
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$RequestPeerType;->creator:Ljava/lang/Boolean;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_6

    :cond_5
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$RequestPeerType;->user_admin_rights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    sget v1, Lorg/telegram/messenger/R$string;->PeerRequirementUserRights:I

    sget v2, Lorg/telegram/messenger/R$string;->PeerRequirementUserRight:I

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/telegram/ui/Cells/RequestPeerRequirementsCell;->checkAdminRights(Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;ZII)V

    :cond_6
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/Cells/RequestPeerRequirementsCell;->requirements:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_8

    new-instance p1, Lorg/telegram/ui/Cells/HeaderCell;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x14

    invoke-direct {p1, v0, v1}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;I)V

    sget v0, Lorg/telegram/messenger/R$string;->PeerRequirements:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundColor(I)V

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    const/16 v0, 0x9

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/Cells/RequestPeerRequirementsCell;->emptyView(II)Landroid/view/View;

    move-result-object p1

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lorg/telegram/ui/Cells/RequestPeerRequirementsCell;->requirements:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Cells/Requirement;

    new-instance v3, Lorg/telegram/ui/Cells/RequestPeerRequirementsCell$RequirementCell;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, p0, v4, v0}, Lorg/telegram/ui/Cells/RequestPeerRequirementsCell$RequirementCell;-><init>(Lorg/telegram/ui/Cells/RequestPeerRequirementsCell;Landroid/content/Context;Lorg/telegram/ui/Cells/Requirement;)V

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    :cond_7
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/Cells/RequestPeerRequirementsCell;->emptyView(II)Landroid/view/View;

    move-result-object p1

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v3, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {p1, v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/Cells/RequestPeerRequirementsCell;->emptyView(ILandroid/graphics/drawable/Drawable;)Landroid/view/View;

    move-result-object p1

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_8
    return-void
.end method
