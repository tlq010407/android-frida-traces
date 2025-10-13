.class public final Lcom/huawei/location/lite/common/chain/Result$Failure;
.super Lcom/huawei/location/lite/common/chain/Result;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/location/lite/common/chain/Result;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Failure"
.end annotation


# instance fields
.field private final mOutputData:Lcom/huawei/location/lite/common/chain/Data;


# direct methods
.method public constructor <init>(Lcom/huawei/location/lite/common/chain/Data;)V
    .locals 0

    invoke-direct {p0}, Lcom/huawei/location/lite/common/chain/Result;-><init>()V

    iput-object p1, p0, Lcom/huawei/location/lite/common/chain/Result$Failure;->mOutputData:Lcom/huawei/location/lite/common/chain/Data;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/huawei/location/lite/common/chain/Result$Failure;

    if-eq v2, v1, :cond_1

    goto :goto_0

    :cond_1
    instance-of v1, p1, Lcom/huawei/location/lite/common/chain/Result$Failure;

    if-eqz v1, :cond_2

    check-cast p1, Lcom/huawei/location/lite/common/chain/Result$Failure;

    iget-object v0, p0, Lcom/huawei/location/lite/common/chain/Result$Failure;->mOutputData:Lcom/huawei/location/lite/common/chain/Data;

    iget-object p1, p1, Lcom/huawei/location/lite/common/chain/Result$Failure;->mOutputData:Lcom/huawei/location/lite/common/chain/Data;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method public getOutputData()Lcom/huawei/location/lite/common/chain/Data;
    .locals 1

    iget-object v0, p0, Lcom/huawei/location/lite/common/chain/Result$Failure;->mOutputData:Lcom/huawei/location/lite/common/chain/Data;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/huawei/location/lite/common/chain/Result$Failure;->mOutputData:Lcom/huawei/location/lite/common/chain/Data;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, -0x40d40412

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failure {mOutputData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/location/lite/common/chain/Result$Failure;->mOutputData:Lcom/huawei/location/lite/common/chain/Data;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
