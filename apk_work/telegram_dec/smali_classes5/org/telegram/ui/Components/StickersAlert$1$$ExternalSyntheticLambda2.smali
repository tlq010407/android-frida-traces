.class public final synthetic Lorg/telegram/ui/Components/StickersAlert$1$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/StickersAlert$1;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$Document;

.field public final synthetic f$2:Lorg/telegram/ui/ChatActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/StickersAlert$1;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/ui/ChatActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/StickersAlert$1$$ExternalSyntheticLambda2;->f$0:Lorg/telegram/ui/Components/StickersAlert$1;

    iput-object p2, p0, Lorg/telegram/ui/Components/StickersAlert$1$$ExternalSyntheticLambda2;->f$1:Lorg/telegram/tgnet/TLRPC$Document;

    iput-object p3, p0, Lorg/telegram/ui/Components/StickersAlert$1$$ExternalSyntheticLambda2;->f$2:Lorg/telegram/ui/ChatActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$1$$ExternalSyntheticLambda2;->f$0:Lorg/telegram/ui/Components/StickersAlert$1;

    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert$1$$ExternalSyntheticLambda2;->f$1:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v2, p0, Lorg/telegram/ui/Components/StickersAlert$1$$ExternalSyntheticLambda2;->f$2:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Components/StickersAlert$1;->$r8$lambda$cwgUyo33N2RrQMHt9WU7mpAEuRA(Lorg/telegram/ui/Components/StickersAlert$1;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/ui/ChatActivity;)V

    return-void
.end method
