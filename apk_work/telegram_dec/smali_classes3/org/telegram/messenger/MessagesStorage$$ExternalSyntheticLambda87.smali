.class public final synthetic Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda87;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MessagesStorage;

.field public final synthetic f$1:J

.field public final synthetic f$2:I

.field public final synthetic f$3:J

.field public final synthetic f$4:I

.field public final synthetic f$5:Z

.field public final synthetic f$6:I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MessagesStorage;JIJIZI)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda87;->f$0:Lorg/telegram/messenger/MessagesStorage;

    iput-wide p2, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda87;->f$1:J

    iput p4, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda87;->f$2:I

    iput-wide p5, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda87;->f$3:J

    iput p7, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda87;->f$4:I

    iput-boolean p8, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda87;->f$5:Z

    iput p9, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda87;->f$6:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda87;->f$0:Lorg/telegram/messenger/MessagesStorage;

    iget-wide v1, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda87;->f$1:J

    iget v3, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda87;->f$2:I

    iget-wide v4, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda87;->f$3:J

    iget v6, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda87;->f$4:I

    iget-boolean v7, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda87;->f$5:Z

    iget v8, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda87;->f$6:I

    invoke-static/range {v0 .. v8}, Lorg/telegram/messenger/MessagesStorage;->$r8$lambda$VYTQfsZhWxw5_QpmeYbXsBFDQNc(Lorg/telegram/messenger/MessagesStorage;JIJIZI)V

    return-void
.end method
