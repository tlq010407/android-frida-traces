.class public final synthetic Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda58;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MessagesStorage;

.field public final synthetic f$1:J

.field public final synthetic f$2:Lorg/telegram/tgnet/NativeByteBuffer;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MessagesStorage;JLorg/telegram/tgnet/NativeByteBuffer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda58;->f$0:Lorg/telegram/messenger/MessagesStorage;

    iput-wide p2, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda58;->f$1:J

    iput-object p4, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda58;->f$2:Lorg/telegram/tgnet/NativeByteBuffer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda58;->f$0:Lorg/telegram/messenger/MessagesStorage;

    iget-wide v1, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda58;->f$1:J

    iget-object v3, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda58;->f$2:Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/messenger/MessagesStorage;->$r8$lambda$IqPacnkBb17BhEhRFFtUC-Yj4To(Lorg/telegram/messenger/MessagesStorage;JLorg/telegram/tgnet/NativeByteBuffer;)V

    return-void
.end method
