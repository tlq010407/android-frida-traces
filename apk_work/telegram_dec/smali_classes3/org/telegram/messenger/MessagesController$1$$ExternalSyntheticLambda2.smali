.class public final synthetic Lorg/telegram/messenger/MessagesController$1$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Lorg/telegram/messenger/Utilities$Callback2;


# direct methods
.method public synthetic constructor <init>(ILorg/telegram/messenger/Utilities$Callback2;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/telegram/messenger/MessagesController$1$$ExternalSyntheticLambda2;->f$0:I

    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$1$$ExternalSyntheticLambda2;->f$1:Lorg/telegram/messenger/Utilities$Callback2;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget v0, p0, Lorg/telegram/messenger/MessagesController$1$$ExternalSyntheticLambda2;->f$0:I

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$1$$ExternalSyntheticLambda2;->f$1:Lorg/telegram/messenger/Utilities$Callback2;

    invoke-static {v0, v1}, Lorg/telegram/messenger/MessagesController$1;->$r8$lambda$q4QNTPDmaRs1G40x3Kcs5sNxkv8(ILorg/telegram/messenger/Utilities$Callback2;)V

    return-void
.end method
