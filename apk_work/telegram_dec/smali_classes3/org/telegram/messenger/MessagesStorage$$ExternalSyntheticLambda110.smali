.class public final synthetic Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda110;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MessagesStorage;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MessagesStorage;IIII)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda110;->f$0:Lorg/telegram/messenger/MessagesStorage;

    iput p2, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda110;->f$1:I

    iput p3, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda110;->f$2:I

    iput p4, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda110;->f$3:I

    iput p5, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda110;->f$4:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda110;->f$0:Lorg/telegram/messenger/MessagesStorage;

    iget v1, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda110;->f$1:I

    iget v2, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda110;->f$2:I

    iget v3, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda110;->f$3:I

    iget v4, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda110;->f$4:I

    invoke-static {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/MessagesStorage;->$r8$lambda$6rq-3Tpqiwy-hTG9r9Sgm7RtMEs(Lorg/telegram/messenger/MessagesStorage;IIII)V

    return-void
.end method
