.class public final synthetic Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda101;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ChatActivity;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lorg/telegram/messenger/MessageObject;

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ChatActivity;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda101;->f$0:Lorg/telegram/ui/ChatActivity;

    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda101;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda101;->f$2:Lorg/telegram/messenger/MessageObject;

    iput-boolean p4, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda101;->f$3:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda101;->f$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda101;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda101;->f$2:Lorg/telegram/messenger/MessageObject;

    iget-boolean v3, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda101;->f$3:Z

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/ui/ChatActivity;->$r8$lambda$FS7Pba1A3Dv5Nq1hbsB7489A6J8(Lorg/telegram/ui/ChatActivity;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;Z)V

    return-void
.end method
