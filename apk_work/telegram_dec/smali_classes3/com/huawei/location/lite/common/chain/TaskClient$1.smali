.class Lcom/huawei/location/lite/common/chain/TaskClient$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/location/lite/common/chain/TaskClient;->execute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/location/lite/common/chain/TaskClient;


# direct methods
.method constructor <init>(Lcom/huawei/location/lite/common/chain/TaskClient;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/location/lite/common/chain/TaskClient$1;->this$0:Lcom/huawei/location/lite/common/chain/TaskClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/huawei/location/lite/common/chain/Result;
    .locals 3

    .line 0
    new-instance v0, Lcom/huawei/location/lite/common/chain/TaskChain;

    iget-object v1, p0, Lcom/huawei/location/lite/common/chain/TaskClient$1;->this$0:Lcom/huawei/location/lite/common/chain/TaskClient;

    invoke-static {v1}, Lcom/huawei/location/lite/common/chain/TaskClient;->access$300(Lcom/huawei/location/lite/common/chain/TaskClient;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/location/lite/common/chain/TaskClient$1;->this$0:Lcom/huawei/location/lite/common/chain/TaskClient;

    invoke-static {v2}, Lcom/huawei/location/lite/common/chain/TaskClient;->access$400(Lcom/huawei/location/lite/common/chain/TaskClient;)Lcom/huawei/location/lite/common/chain/TaskRequest;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/huawei/location/lite/common/chain/TaskChain;-><init>(Ljava/util/List;Lcom/huawei/location/lite/common/chain/TaskRequest;)V

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/huawei/location/lite/common/chain/Task$Chain;->runTask(Z)Lcom/huawei/location/lite/common/chain/Result;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 0
    invoke-virtual {p0}, Lcom/huawei/location/lite/common/chain/TaskClient$1;->call()Lcom/huawei/location/lite/common/chain/Result;

    move-result-object v0

    return-object v0
.end method
