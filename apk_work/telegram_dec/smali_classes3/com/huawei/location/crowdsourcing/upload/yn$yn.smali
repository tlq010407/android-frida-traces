.class Lcom/huawei/location/crowdsourcing/upload/yn$yn;
.super Lcom/huawei/location/crowdsourcing/upload/http/yn;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/location/crowdsourcing/upload/yn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "yn"
.end annotation


# instance fields
.field private FB:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "serverDomain"
    .end annotation
.end field

.field private LW:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "accessToken"
    .end annotation
.end field

.field private Vw:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "resCode"
    .end annotation
.end field

.field private yn:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "reason"
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/huawei/location/crowdsourcing/upload/http/yn;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/huawei/location/crowdsourcing/upload/yn$yn;->Vw:I

    return-void
.end method


# virtual methods
.method public FB()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/location/crowdsourcing/upload/yn$yn;->LW:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public LW()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/location/crowdsourcing/upload/yn$yn;->FB:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method protected Vw()Z
    .locals 1

    iget v0, p0, Lcom/huawei/location/crowdsourcing/upload/yn$yn;->Vw:I

    invoke-static {v0}, Lcom/huawei/location/FB;->Vw(I)Z

    move-result v0

    return v0
.end method

.method protected yn()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/huawei/location/crowdsourcing/upload/yn$yn;->Vw:I

    invoke-static {v0}, Lcom/huawei/location/FB;->yn(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
