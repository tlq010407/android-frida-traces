.class public final synthetic Lorg/telegram/ui/DialogsActivity$29$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/MessagesController$ErrorDelegate;


# instance fields
.field public final synthetic f$0:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$29$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLRPC$TL_error;)Z
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$29$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Runnable;

    invoke-static {v0, p1}, Lorg/telegram/ui/DialogsActivity$29;->$r8$lambda$9xADncRMvbmKf4-DND3iYyGk-Gc(Ljava/lang/Runnable;Lorg/telegram/tgnet/TLRPC$TL_error;)Z

    move-result p1

    return p1
.end method
