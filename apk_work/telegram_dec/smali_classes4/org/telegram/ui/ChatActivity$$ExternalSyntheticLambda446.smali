.class public final synthetic Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda446;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ChatActivity;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lorg/telegram/tgnet/TLObject;

.field public final synthetic f$3:Lorg/telegram/tgnet/TLRPC$TL_error;

.field public final synthetic f$4:I

.field public final synthetic f$5:Lorg/telegram/messenger/MessageObject;

.field public final synthetic f$6:Lorg/telegram/tgnet/TLRPC$TL_messages_getDiscussionMessage;

.field public final synthetic f$7:Lorg/telegram/tgnet/TLRPC$Chat;

.field public final synthetic f$8:I

.field public final synthetic f$9:Lorg/telegram/messenger/MessageObject;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ChatActivity;ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;ILorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$TL_messages_getDiscussionMessage;Lorg/telegram/tgnet/TLRPC$Chat;ILorg/telegram/messenger/MessageObject;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda446;->f$0:Lorg/telegram/ui/ChatActivity;

    iput p2, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda446;->f$1:I

    iput-object p3, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda446;->f$2:Lorg/telegram/tgnet/TLObject;

    iput-object p4, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda446;->f$3:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput p5, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda446;->f$4:I

    iput-object p6, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda446;->f$5:Lorg/telegram/messenger/MessageObject;

    iput-object p7, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda446;->f$6:Lorg/telegram/tgnet/TLRPC$TL_messages_getDiscussionMessage;

    iput-object p8, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda446;->f$7:Lorg/telegram/tgnet/TLRPC$Chat;

    iput p9, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda446;->f$8:I

    iput-object p10, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda446;->f$9:Lorg/telegram/messenger/MessageObject;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda446;->f$0:Lorg/telegram/ui/ChatActivity;

    iget v1, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda446;->f$1:I

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda446;->f$2:Lorg/telegram/tgnet/TLObject;

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda446;->f$3:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget v4, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda446;->f$4:I

    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda446;->f$5:Lorg/telegram/messenger/MessageObject;

    iget-object v6, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda446;->f$6:Lorg/telegram/tgnet/TLRPC$TL_messages_getDiscussionMessage;

    iget-object v7, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda446;->f$7:Lorg/telegram/tgnet/TLRPC$Chat;

    iget v8, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda446;->f$8:I

    iget-object v9, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda446;->f$9:Lorg/telegram/messenger/MessageObject;

    invoke-static/range {v0 .. v9}, Lorg/telegram/ui/ChatActivity;->$r8$lambda$WWdl2neYD4cD717lLxeBSOzsCGU(Lorg/telegram/ui/ChatActivity;ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;ILorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$TL_messages_getDiscussionMessage;Lorg/telegram/tgnet/TLRPC$Chat;ILorg/telegram/messenger/MessageObject;)V

    return-void
.end method
