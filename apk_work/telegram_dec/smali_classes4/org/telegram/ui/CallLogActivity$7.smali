.class Lorg/telegram/ui/CallLogActivity$7;
.super Lorg/telegram/ui/Components/ShareAlert;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/CallLogActivity;->showCallLinkSheet(Landroid/content/Context;ILorg/telegram/tgnet/TLRPC$InputGroupCall;Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$sheet:Lorg/telegram/ui/ActionBar/BottomSheet;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;ZLjava/lang/String;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/ActionBar/BottomSheet;)V
    .locals 0

    iput-object p8, p0, Lorg/telegram/ui/CallLogActivity$7;->val$sheet:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-direct/range {p0 .. p7}, Lorg/telegram/ui/Components/ShareAlert;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;ZLjava/lang/String;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method protected onSend(Landroidx/collection/LongSparseArray;ILorg/telegram/tgnet/TLRPC$TL_forumTopic;Z)V
    .locals 4

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-nez p4, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroidx/collection/LongSparseArray;->size()I

    move-result p4

    if-ne p4, p2, :cond_3

    invoke-virtual {p1, p3}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Dialog;

    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_2

    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    sget p1, Lorg/telegram/messenger/R$string;->InvLinkToUser:I

    iget p4, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p4

    invoke-virtual {p4, v0, v1, p2}, Lorg/telegram/messenger/MessagesController;->getPeerName(JZ)Ljava/lang/String;

    move-result-object p4

    new-array p2, p2, [Ljava/lang/Object;

    aput-object p4, p2, p3

    invoke-static {p1, p2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_2
    :goto_0
    sget p1, Lorg/telegram/messenger/R$string;->InvLinkToSavedMessages:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_3
    sget p4, Lorg/telegram/messenger/R$string;->InvLinkToChats:I

    if-nez p1, :cond_4

    const/4 p1, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Landroidx/collection/LongSparseArray;->size()I

    move-result p1

    :goto_1
    new-array v0, p3, [Ljava/lang/Object;

    const-string v1, "Chats"

    invoke-static {v1, p1, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array p2, p2, [Ljava/lang/Object;

    aput-object p1, p2, p3

    invoke-static {p4, p2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_2
    iget-object p2, p0, Lorg/telegram/ui/CallLogActivity$7;->val$sheet:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object p2, p2, Lorg/telegram/ui/ActionBar/BottomSheet;->topBulletinContainer:Landroid/widget/FrameLayout;

    iget-object p4, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p2, p4}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p2

    sget p4, Lorg/telegram/messenger/R$raw;->forward:I

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {p2, p4, p1}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    iput-boolean p3, p1, Lorg/telegram/ui/Components/Bulletin;->hideAfterBottomSheet:Z

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method
