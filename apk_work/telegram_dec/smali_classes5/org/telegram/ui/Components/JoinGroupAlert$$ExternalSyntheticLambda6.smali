.class public final synthetic Lorg/telegram/ui/Components/JoinGroupAlert$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/MessagesController$ErrorDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/JoinGroupAlert;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/JoinGroupAlert;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/JoinGroupAlert$$ExternalSyntheticLambda6;->f$0:Lorg/telegram/ui/Components/JoinGroupAlert;

    iput-boolean p2, p0, Lorg/telegram/ui/Components/JoinGroupAlert$$ExternalSyntheticLambda6;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLRPC$TL_error;)Z
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/JoinGroupAlert$$ExternalSyntheticLambda6;->f$0:Lorg/telegram/ui/Components/JoinGroupAlert;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/JoinGroupAlert$$ExternalSyntheticLambda6;->f$1:Z

    invoke-static {v0, v1, p1}, Lorg/telegram/ui/Components/JoinGroupAlert;->$r8$lambda$h-wb40nhsS3HSXAD8YJHeRE0PoA(Lorg/telegram/ui/Components/JoinGroupAlert;ZLorg/telegram/tgnet/TLRPC$TL_error;)Z

    move-result p1

    return p1
.end method
