.class public final synthetic Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda62;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MessagesStorage;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/util/ArrayList;

.field public final synthetic f$3:I

.field public final synthetic f$4:I

.field public final synthetic f$5:I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MessagesStorage;ILjava/util/ArrayList;III)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda62;->f$0:Lorg/telegram/messenger/MessagesStorage;

    iput p2, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda62;->f$1:I

    iput-object p3, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda62;->f$2:Ljava/util/ArrayList;

    iput p4, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda62;->f$3:I

    iput p5, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda62;->f$4:I

    iput p6, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda62;->f$5:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda62;->f$0:Lorg/telegram/messenger/MessagesStorage;

    iget v1, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda62;->f$1:I

    iget-object v2, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda62;->f$2:Ljava/util/ArrayList;

    iget v3, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda62;->f$3:I

    iget v4, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda62;->f$4:I

    iget v5, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda62;->f$5:I

    invoke-static/range {v0 .. v5}, Lorg/telegram/messenger/MessagesStorage;->$r8$lambda$Utgw1uSy0KhVrmmwo02CD0uAjBQ(Lorg/telegram/messenger/MessagesStorage;ILjava/util/ArrayList;III)V

    return-void
.end method
