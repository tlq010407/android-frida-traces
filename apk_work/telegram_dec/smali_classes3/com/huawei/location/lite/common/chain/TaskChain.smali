.class public Lcom/huawei/location/lite/common/chain/TaskChain;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/huawei/location/lite/common/chain/Task$Chain;


# instance fields
.field private index:I

.field private request:Lcom/huawei/location/lite/common/chain/TaskRequest;

.field private taskList:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/huawei/location/lite/common/chain/TaskRequest;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/huawei/location/lite/common/chain/TaskChain;->index:I

    iput-object p1, p0, Lcom/huawei/location/lite/common/chain/TaskChain;->taskList:Ljava/util/List;

    iput-object p2, p0, Lcom/huawei/location/lite/common/chain/TaskChain;->request:Lcom/huawei/location/lite/common/chain/TaskRequest;

    return-void
.end method


# virtual methods
.method public getRequest()Lcom/huawei/location/lite/common/chain/TaskRequest;
    .locals 1

    iget-object v0, p0, Lcom/huawei/location/lite/common/chain/TaskChain;->request:Lcom/huawei/location/lite/common/chain/TaskRequest;

    return-object v0
.end method

.method public proceed()I
    .locals 2

    iget-object v0, p0, Lcom/huawei/location/lite/common/chain/TaskChain;->request:Lcom/huawei/location/lite/common/chain/TaskRequest;

    invoke-virtual {v0}, Lcom/huawei/location/lite/common/chain/TaskRequest;->getResult()Lcom/huawei/location/lite/common/chain/Result;

    move-result-object v0

    instance-of v0, v0, Lcom/huawei/location/lite/common/chain/Result$Failure;

    if-eqz v0, :cond_0

    const/16 v0, 0x65

    return v0

    :cond_0
    iget v0, p0, Lcom/huawei/location/lite/common/chain/TaskChain;->index:I

    iget-object v1, p0, Lcom/huawei/location/lite/common/chain/TaskChain;->taskList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    const/16 v0, 0x64

    return v0

    :cond_1
    const/16 v0, 0x67

    return v0
.end method

.method public runTask(Z)Lcom/huawei/location/lite/common/chain/Result;
    .locals 1

    if-nez p1, :cond_0

    iget p1, p0, Lcom/huawei/location/lite/common/chain/TaskChain;->index:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/huawei/location/lite/common/chain/TaskChain;->index:I

    :cond_0
    iget-object p1, p0, Lcom/huawei/location/lite/common/chain/TaskChain;->taskList:Ljava/util/List;

    iget v0, p0, Lcom/huawei/location/lite/common/chain/TaskChain;->index:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/huawei/location/lite/common/chain/Task;

    invoke-interface {p1, p0}, Lcom/huawei/location/lite/common/chain/Task;->runTask(Lcom/huawei/location/lite/common/chain/Task$Chain;)V

    invoke-virtual {p0}, Lcom/huawei/location/lite/common/chain/TaskChain;->getRequest()Lcom/huawei/location/lite/common/chain/TaskRequest;

    move-result-object p1

    invoke-virtual {p1}, Lcom/huawei/location/lite/common/chain/TaskRequest;->getResult()Lcom/huawei/location/lite/common/chain/Result;

    move-result-object p1

    return-object p1
.end method
