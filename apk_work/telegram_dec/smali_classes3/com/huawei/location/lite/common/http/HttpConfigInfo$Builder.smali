.class public final Lcom/huawei/location/lite/common/http/HttpConfigInfo$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/location/lite/common/http/HttpConfigInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private isNeedInterceptor:Z

.field private mNeedBinderProcess:Z

.field private mNeedCheckAGC:Z

.field private mNeedCheckTssAuth:Z

.field private mNeedCheckUcsAuth:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/location/lite/common/http/HttpConfigInfo$Builder;->isNeedInterceptor:Z

    iput-boolean v0, p0, Lcom/huawei/location/lite/common/http/HttpConfigInfo$Builder;->mNeedCheckAGC:Z

    iput-boolean v0, p0, Lcom/huawei/location/lite/common/http/HttpConfigInfo$Builder;->mNeedCheckUcsAuth:Z

    iput-boolean v0, p0, Lcom/huawei/location/lite/common/http/HttpConfigInfo$Builder;->mNeedCheckTssAuth:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/location/lite/common/http/HttpConfigInfo$Builder;->mNeedBinderProcess:Z

    return-void
.end method

.method static synthetic access$000(Lcom/huawei/location/lite/common/http/HttpConfigInfo$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/huawei/location/lite/common/http/HttpConfigInfo$Builder;->isNeedInterceptor:Z

    return p0
.end method

.method static synthetic access$100(Lcom/huawei/location/lite/common/http/HttpConfigInfo$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/huawei/location/lite/common/http/HttpConfigInfo$Builder;->mNeedCheckAGC:Z

    return p0
.end method

.method static synthetic access$200(Lcom/huawei/location/lite/common/http/HttpConfigInfo$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/huawei/location/lite/common/http/HttpConfigInfo$Builder;->mNeedCheckTssAuth:Z

    return p0
.end method

.method static synthetic access$300(Lcom/huawei/location/lite/common/http/HttpConfigInfo$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/huawei/location/lite/common/http/HttpConfigInfo$Builder;->mNeedCheckUcsAuth:Z

    return p0
.end method

.method static synthetic access$400(Lcom/huawei/location/lite/common/http/HttpConfigInfo$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/huawei/location/lite/common/http/HttpConfigInfo$Builder;->mNeedBinderProcess:Z

    return p0
.end method


# virtual methods
.method public build()Lcom/huawei/location/lite/common/http/HttpConfigInfo;
    .locals 1

    new-instance v0, Lcom/huawei/location/lite/common/http/HttpConfigInfo;

    invoke-direct {v0, p0}, Lcom/huawei/location/lite/common/http/HttpConfigInfo;-><init>(Lcom/huawei/location/lite/common/http/HttpConfigInfo$Builder;)V

    return-object v0
.end method

.method public setNeedCheckAGC(Z)Lcom/huawei/location/lite/common/http/HttpConfigInfo$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/huawei/location/lite/common/http/HttpConfigInfo$Builder;->mNeedCheckAGC:Z

    return-object p0
.end method

.method public setNeedCheckTssAuth(Z)Lcom/huawei/location/lite/common/http/HttpConfigInfo$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/huawei/location/lite/common/http/HttpConfigInfo$Builder;->mNeedCheckTssAuth:Z

    return-object p0
.end method

.method public setNeedCheckUcsAuth(Z)Lcom/huawei/location/lite/common/http/HttpConfigInfo$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/huawei/location/lite/common/http/HttpConfigInfo$Builder;->mNeedCheckUcsAuth:Z

    return-object p0
.end method
