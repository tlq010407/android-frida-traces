.class public final synthetic Lorg/telegram/ui/ChatActivity$13$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/MessagesStorage$IntCallback;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ChatActivity$13$1;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ChatActivity$13$1;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$13$1$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/ChatActivity$13$1;

    iput-boolean p2, p0, Lorg/telegram/ui/ChatActivity$13$1$$ExternalSyntheticLambda0;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run(I)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$13$1$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/ChatActivity$13$1;

    iget-boolean v1, p0, Lorg/telegram/ui/ChatActivity$13$1$$ExternalSyntheticLambda0;->f$1:Z

    invoke-static {v0, v1, p1}, Lorg/telegram/ui/ChatActivity$13$1;->$r8$lambda$ifRSfhF2Cxa72Jv8eLj3Ool94oc(Lorg/telegram/ui/ChatActivity$13$1;ZI)V

    return-void
.end method
