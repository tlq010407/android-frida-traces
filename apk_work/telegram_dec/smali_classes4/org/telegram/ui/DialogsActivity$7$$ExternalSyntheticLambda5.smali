.class public final synthetic Lorg/telegram/ui/DialogsActivity$7$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/DialogsActivity$7;

.field public final synthetic f$1:Lorg/telegram/messenger/MessagesController$DialogFilter;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/DialogsActivity$7;Lorg/telegram/messenger/MessagesController$DialogFilter;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$7$$ExternalSyntheticLambda5;->f$0:Lorg/telegram/ui/DialogsActivity$7;

    iput-object p2, p0, Lorg/telegram/ui/DialogsActivity$7$$ExternalSyntheticLambda5;->f$1:Lorg/telegram/messenger/MessagesController$DialogFilter;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$7$$ExternalSyntheticLambda5;->f$0:Lorg/telegram/ui/DialogsActivity$7;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$7$$ExternalSyntheticLambda5;->f$1:Lorg/telegram/messenger/MessagesController$DialogFilter;

    invoke-static {v0, v1}, Lorg/telegram/ui/DialogsActivity$7;->$r8$lambda$Zd7bZB3dc-A1gYNwS3qwjtR03o8(Lorg/telegram/ui/DialogsActivity$7;Lorg/telegram/messenger/MessagesController$DialogFilter;)V

    return-void
.end method
