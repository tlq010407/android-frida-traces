.class public final synthetic Lorg/telegram/ui/ChatActivity$13$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/Utilities$Callback;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ChatActivity$13;

.field public final synthetic f$1:Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ChatActivity$13;Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$13$$ExternalSyntheticLambda3;->f$0:Lorg/telegram/ui/ChatActivity$13;

    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$13$$ExternalSyntheticLambda3;->f$1:Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$13$$ExternalSyntheticLambda3;->f$0:Lorg/telegram/ui/ChatActivity$13;

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$13$$ExternalSyntheticLambda3;->f$1:Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lorg/telegram/ui/ChatActivity$13;->$r8$lambda$qkbo0nHFReFSEQF7sYxOyMTah2I(Lorg/telegram/ui/ChatActivity$13;Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;Ljava/lang/String;)V

    return-void
.end method
