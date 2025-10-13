.class public abstract Lcom/huawei/location/lite/common/chain/Result;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/location/lite/common/chain/Result$Failure;,
        Lcom/huawei/location/lite/common/chain/Result$Success;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static failure(Lcom/huawei/location/lite/common/chain/Data;)Lcom/huawei/location/lite/common/chain/Result;
    .locals 1

    new-instance v0, Lcom/huawei/location/lite/common/chain/Result$Failure;

    invoke-direct {v0, p0}, Lcom/huawei/location/lite/common/chain/Result$Failure;-><init>(Lcom/huawei/location/lite/common/chain/Data;)V

    return-object v0
.end method

.method public static success(Lcom/huawei/location/lite/common/chain/Data;)Lcom/huawei/location/lite/common/chain/Result;
    .locals 1

    new-instance v0, Lcom/huawei/location/lite/common/chain/Result$Success;

    invoke-direct {v0, p0}, Lcom/huawei/location/lite/common/chain/Result$Success;-><init>(Lcom/huawei/location/lite/common/chain/Data;)V

    return-object v0
.end method
