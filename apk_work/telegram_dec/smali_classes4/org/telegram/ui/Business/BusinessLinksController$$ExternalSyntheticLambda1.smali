.class public final synthetic Lorg/telegram/ui/Business/BusinessLinksController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Business/BusinessLinksController;

.field public final synthetic f$1:Lorg/telegram/messenger/MessagesStorage;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Business/BusinessLinksController;Lorg/telegram/messenger/MessagesStorage;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Business/BusinessLinksController$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/Business/BusinessLinksController;

    iput-object p2, p0, Lorg/telegram/ui/Business/BusinessLinksController$$ExternalSyntheticLambda1;->f$1:Lorg/telegram/messenger/MessagesStorage;

    iput-boolean p3, p0, Lorg/telegram/ui/Business/BusinessLinksController$$ExternalSyntheticLambda1;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Business/BusinessLinksController$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/Business/BusinessLinksController;

    iget-object v1, p0, Lorg/telegram/ui/Business/BusinessLinksController$$ExternalSyntheticLambda1;->f$1:Lorg/telegram/messenger/MessagesStorage;

    iget-boolean v2, p0, Lorg/telegram/ui/Business/BusinessLinksController$$ExternalSyntheticLambda1;->f$2:Z

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Business/BusinessLinksController;->$r8$lambda$j7UYbLhU__0KPLLviNomhzQlpEI(Lorg/telegram/ui/Business/BusinessLinksController;Lorg/telegram/messenger/MessagesStorage;Z)V

    return-void
.end method
