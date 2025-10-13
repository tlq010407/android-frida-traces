.class Lcom/huawei/location/crowdsourcing/upload/FB$yn;
.super Lcom/huawei/location/crowdsourcing/upload/http/yn;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/location/crowdsourcing/upload/FB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "yn"
.end annotation


# instance fields
.field private yn:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "resCode"
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/huawei/location/crowdsourcing/upload/http/yn;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/huawei/location/crowdsourcing/upload/FB$yn;->yn:I

    return-void
.end method


# virtual methods
.method public Vw()Z
    .locals 1

    iget v0, p0, Lcom/huawei/location/crowdsourcing/upload/FB$yn;->yn:I

    invoke-static {v0}, Lcom/huawei/location/FB;->Vw(I)Z

    move-result v0

    return v0
.end method

.method protected yn()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/huawei/location/crowdsourcing/upload/FB$yn;->yn:I

    invoke-static {v0}, Lcom/huawei/location/FB;->yn(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
