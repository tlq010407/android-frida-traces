.class Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;->onMediaImport(Ljava/lang/String;JLorg/telegram/tgnet/TLRPC$InputFile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$N5ITgPyswIIXGVyQalmEpVRgNUc(Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory$2;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory$2;->lambda$run$0(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory$2;->this$1:Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;

    iput-object p2, p0, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory$2;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$run$0(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory$2;->this$1:Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;->uploadSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory$2;->this$1:Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;

    iget-object p1, p1, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;->this$0:Lorg/telegram/messenger/SendMessagesHelper;

    invoke-virtual {p1}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->historyImportProgressChanged:I

    iget-object v1, p0, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory$2;->this$1:Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;

    iget-wide v1, v1, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;->dialogId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {p1, v0, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory$2;->this$1:Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;

    iget-object p1, p1, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;->uploadSet:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory$2;->this$1:Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;

    invoke-static {p1}, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;->access$000(Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory$2;->val$path:Ljava/lang/String;

    new-instance p2, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory$2$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p1}, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory$2$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory$2;Ljava/lang/String;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method
