.class Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/MessagesController$MessagesLoadedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;

.field final synthetic val$dialog_id:J


# direct methods
.method public static synthetic $r8$lambda$lIxGtYbP75zb3axIpMmfMtBzTWM(Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader$1;ZJ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader$1;->lambda$onMessagesLoaded$0(ZJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$zsc_Q0hRPGW5_dPNiUYLT2uOgIw(Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader$1;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader$1;->lambda$onError$1(J)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;J)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader$1;->this$0:Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;

    iput-wide p2, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader$1;->val$dialog_id:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onError$1(J)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader$1;->this$0:Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;

    iget-object v0, v0, Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;->loadingDialogs:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader$1;->this$0:Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;

    iget-object v0, v0, Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;->preloadedErrorMap:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader$1;->this$0:Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;

    iget p2, p1, Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;->currentRequestCount:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p1, Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;->currentRequestCount:I

    invoke-static {p1}, Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;->access$400(Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onMessagesLoaded$0(ZJ)V
    .locals 2

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader$1;->this$0:Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;

    iget v0, p1, Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;->networkRequestCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;->networkRequestCount:I

    const/4 v1, 0x6

    if-lt v0, v1, :cond_0

    iget-object p1, p1, Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;->clearNetworkRequestCount:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader$1;->this$0:Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;

    iget-object p1, p1, Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;->clearNetworkRequestCount:Ljava/lang/Runnable;

    const-wide/32 v0, 0xea60

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader$1;->this$0:Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;

    iget-object p1, p1, Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;->loadingDialogs:Ljava/util/HashSet;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader$1;->this$0:Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;

    iget-object p1, p1, Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;->dialogsReadyMap:Ljava/util/HashSet;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader$1;->this$0:Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;

    invoke-virtual {p1}, Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;->updateList()V

    iget-object p1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader$1;->this$0:Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;

    iget p2, p1, Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;->currentRequestCount:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p1, Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;->currentRequestCount:I

    invoke-static {p1}, Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;->access$400(Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onError()V
    .locals 3

    iget-wide v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader$1;->val$dialog_id:J

    new-instance v2, Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0, v1}, Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader$1$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader$1;J)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onMessagesLoaded(Z)V
    .locals 3

    iget-wide v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader$1;->val$dialog_id:J

    new-instance v2, Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader$1$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1, v0, v1}, Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader$1$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader$1;ZJ)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method
