.class public final synthetic Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda237;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MessagesStorage;

.field public final synthetic f$1:J

.field public final synthetic f$2:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MessagesStorage;JLorg/telegram/tgnet/TLRPC$TL_forumTopic;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda237;->f$0:Lorg/telegram/messenger/MessagesStorage;

    iput-wide p2, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda237;->f$1:J

    iput-object p4, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda237;->f$2:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    iput p5, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda237;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda237;->f$0:Lorg/telegram/messenger/MessagesStorage;

    iget-wide v1, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda237;->f$1:J

    iget-object v3, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda237;->f$2:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    iget v4, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda237;->f$3:I

    invoke-static {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/MessagesStorage;->$r8$lambda$aovtwBCSArbdEnvYiD1PmtCx-eM(Lorg/telegram/messenger/MessagesStorage;JLorg/telegram/tgnet/TLRPC$TL_forumTopic;I)V

    return-void
.end method
