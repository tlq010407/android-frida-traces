.class public final synthetic Lorg/telegram/ui/ChatActivity$13$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/Utilities$Callback;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ChatActivity$13;

.field public final synthetic f$1:J

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ChatActivity$13;JJ)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$13$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/ChatActivity$13;

    iput-wide p2, p0, Lorg/telegram/ui/ChatActivity$13$$ExternalSyntheticLambda1;->f$1:J

    iput-wide p4, p0, Lorg/telegram/ui/ChatActivity$13$$ExternalSyntheticLambda1;->f$2:J

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)V
    .locals 6

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$13$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/ChatActivity$13;

    iget-wide v1, p0, Lorg/telegram/ui/ChatActivity$13$$ExternalSyntheticLambda1;->f$1:J

    iget-wide v3, p0, Lorg/telegram/ui/ChatActivity$13$$ExternalSyntheticLambda1;->f$2:J

    move-object v5, p1

    check-cast v5, Ljava/lang/Long;

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/ChatActivity$13;->$r8$lambda$QM9V8Ssjk69Paz47kxwSrnzILj0(Lorg/telegram/ui/ChatActivity$13;JJLjava/lang/Long;)V

    return-void
.end method
