.class public final synthetic Lorg/telegram/ui/ChatLinkActivity$ListAdapter$1$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/MessagesStorage$LongCallback;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ChatLinkActivity$ListAdapter$1;

.field public final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ChatLinkActivity$ListAdapter$1;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatLinkActivity$ListAdapter$1$$ExternalSyntheticLambda2;->f$0:Lorg/telegram/ui/ChatLinkActivity$ListAdapter$1;

    iput-object p2, p0, Lorg/telegram/ui/ChatLinkActivity$ListAdapter$1$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run(J)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ChatLinkActivity$ListAdapter$1$$ExternalSyntheticLambda2;->f$0:Lorg/telegram/ui/ChatLinkActivity$ListAdapter$1;

    iget-object v1, p0, Lorg/telegram/ui/ChatLinkActivity$ListAdapter$1$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Runnable;

    invoke-static {v0, v1, p1, p2}, Lorg/telegram/ui/ChatLinkActivity$ListAdapter$1;->$r8$lambda$11vV_-bNlf2IWHN3BUOVXo_wsLM(Lorg/telegram/ui/ChatLinkActivity$ListAdapter$1;Ljava/lang/Runnable;J)V

    return-void
.end method
