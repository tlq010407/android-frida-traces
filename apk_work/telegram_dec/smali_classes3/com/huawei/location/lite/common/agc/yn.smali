.class public Lcom/huawei/location/lite/common/agc/yn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private Vw:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "token"
    .end annotation
.end field

.field private yn:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "expireTime"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Vw()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/location/lite/common/agc/yn;->Vw:Ljava/lang/String;

    return-object v0
.end method

.method public yn()J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/huawei/location/lite/common/agc/yn;->yn:J

    return-wide v0
.end method

.method public yn(J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/huawei/location/lite/common/agc/yn;->yn:J

    return-void
.end method

.method public yn(Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/huawei/location/lite/common/agc/yn;->Vw:Ljava/lang/String;

    return-void
.end method
