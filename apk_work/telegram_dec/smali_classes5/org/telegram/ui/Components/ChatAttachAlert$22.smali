.class Lorg/telegram/ui/Components/ChatAttachAlert$22;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$PhonebookShareAlertDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatAttachAlert;->openContactsLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatAttachAlert;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$22;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didSelectContact(Lorg/telegram/tgnet/TLRPC$User;ZIJZJ)V
    .locals 11

    move-object v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert$22;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    move-object v2, v1

    check-cast v2, Lorg/telegram/ui/ChatActivity;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-wide v6, p4

    move/from16 v8, p6

    move-wide/from16 v9, p7

    invoke-virtual/range {v2 .. v10}, Lorg/telegram/ui/ChatActivity;->sendContact(Lorg/telegram/tgnet/TLRPC$User;ZIJZJ)V

    return-void
.end method

.method public didSelectContacts(Ljava/util/ArrayList;Ljava/lang/String;ZIJZJ)V
    .locals 12

    move-object v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert$22;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    move-object v2, v1

    check-cast v2, Lorg/telegram/ui/ChatActivity;

    const-wide/16 v10, 0x0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move/from16 v6, p4

    move-wide/from16 v7, p5

    move/from16 v9, p7

    invoke-virtual/range {v2 .. v11}, Lorg/telegram/ui/ChatActivity;->sendContacts(Ljava/util/ArrayList;Ljava/lang/String;ZIJZJ)V

    return-void
.end method
