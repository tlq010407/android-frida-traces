.class public final synthetic Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda320;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ChatActivity;

.field public final synthetic f$1:J

.field public final synthetic f$2:Lorg/telegram/messenger/MessageObject;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ChatActivity;JLorg/telegram/messenger/MessageObject;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda320;->f$0:Lorg/telegram/ui/ChatActivity;

    iput-wide p2, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda320;->f$1:J

    iput-object p4, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda320;->f$2:Lorg/telegram/messenger/MessageObject;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda320;->f$0:Lorg/telegram/ui/ChatActivity;

    iget-wide v1, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda320;->f$1:J

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda320;->f$2:Lorg/telegram/messenger/MessageObject;

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/ui/ChatActivity;->$r8$lambda$MYjAnNzN_ARBdtu3dQBZiBvXTy0(Lorg/telegram/ui/ChatActivity;JLorg/telegram/messenger/MessageObject;)V

    return-void
.end method
