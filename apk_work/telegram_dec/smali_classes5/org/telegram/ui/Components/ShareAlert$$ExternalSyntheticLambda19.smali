.class public final synthetic Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/ShareAlert;

.field public final synthetic f$1:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic f$2:Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;

.field public final synthetic f$3:Lorg/telegram/tgnet/TLRPC$Dialog;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/ShareAlert;Ljava/util/concurrent/atomic/AtomicReference;Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;Lorg/telegram/tgnet/TLRPC$Dialog;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda19;->f$0:Lorg/telegram/ui/Components/ShareAlert;

    iput-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda19;->f$1:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda19;->f$2:Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;

    iput-object p4, p0, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda19;->f$3:Lorg/telegram/tgnet/TLRPC$Dialog;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda19;->f$0:Lorg/telegram/ui/Components/ShareAlert;

    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda19;->f$1:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda19;->f$2:Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;

    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda19;->f$3:Lorg/telegram/tgnet/TLRPC$Dialog;

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/ui/Components/ShareAlert;->$r8$lambda$TpBursM50c8B_9sqpmbEr34glzk(Lorg/telegram/ui/Components/ShareAlert;Ljava/util/concurrent/atomic/AtomicReference;Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;Lorg/telegram/tgnet/TLRPC$Dialog;)V

    return-void
.end method
