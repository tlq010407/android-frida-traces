.class Lorg/telegram/ui/ChatUsersActivity$14;
.super Lorg/telegram/ui/ChatRightsEditActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatUsersActivity;->openRightsEdit2(JILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Ljava/lang/String;ZIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatUsersActivity;

.field final synthetic val$needShowBulletin:[Z

.field final synthetic val$peerId:J


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatUsersActivity;JJLorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Ljava/lang/String;IZZLjava/lang/String;[ZJ)V
    .locals 14

    move-object v13, p0

    move-object v0, p1

    iput-object v0, v13, Lorg/telegram/ui/ChatUsersActivity$14;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    move-object/from16 v0, p14

    iput-object v0, v13, Lorg/telegram/ui/ChatUsersActivity$14;->val$needShowBulletin:[Z

    move-wide/from16 v0, p15

    iput-wide v0, v13, Lorg/telegram/ui/ChatUsersActivity$14;->val$peerId:J

    move-object v0, p0

    move-wide/from16 v1, p2

    move-wide/from16 v3, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move/from16 v9, p10

    move/from16 v10, p11

    move/from16 v11, p12

    move-object/from16 v12, p13

    invoke-direct/range {v0 .. v12}, Lorg/telegram/ui/ChatRightsEditActivity;-><init>(JJLorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Ljava/lang/String;IZZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onTransitionAnimationEnd(ZZ)V
    .locals 3

    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity$14;->val$needShowBulletin:[Z

    const/4 p2, 0x0

    aget-boolean p1, p1, p2

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity$14;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {p1}, Lorg/telegram/ui/Components/BulletinFactory;->canShowBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-wide p1, p0, Lorg/telegram/ui/ChatUsersActivity$14;->val$peerId:J

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-wide v0, p0, Lorg/telegram/ui/ChatUsersActivity$14;->val$peerId:J

    if-lez v2, :cond_0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p2, p0, Lorg/telegram/ui/ChatUsersActivity$14;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    :goto_0
    invoke-static {p2, p1}, Lorg/telegram/ui/Components/BulletinFactory;->createPromoteToAdminBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    goto :goto_1

    :cond_0
    neg-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p2, p0, Lorg/telegram/ui/ChatUsersActivity$14;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
