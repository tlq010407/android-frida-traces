.class abstract Lcom/huawei/location/lite/common/http/FB$Vw;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/location/lite/common/http/FB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Vw"
.end annotation


# static fields
.field private static final yn:Lcom/huawei/location/lite/common/http/FB;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/huawei/location/lite/common/http/FB;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/huawei/location/lite/common/http/FB;-><init>(Lcom/huawei/location/lite/common/http/FB$yn;)V

    sput-object v0, Lcom/huawei/location/lite/common/http/FB$Vw;->yn:Lcom/huawei/location/lite/common/http/FB;

    return-void
.end method

.method static synthetic yn()Lcom/huawei/location/lite/common/http/FB;
    .locals 1

    sget-object v0, Lcom/huawei/location/lite/common/http/FB$Vw;->yn:Lcom/huawei/location/lite/common/http/FB;

    return-object v0
.end method
