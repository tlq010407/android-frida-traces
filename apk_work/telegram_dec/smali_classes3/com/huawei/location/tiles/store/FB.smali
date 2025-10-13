.class public Lcom/huawei/location/tiles/store/FB;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private FB:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "signature"
    .end annotation
.end field

.field private LW:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fileId"
    .end annotation
.end field

.field private Vw:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ver"
    .end annotation
.end field

.field private yn:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "downloadUrl"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public FB()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/location/tiles/store/FB;->Vw:Ljava/lang/String;

    return-object v0
.end method

.method public Vw()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/location/tiles/store/FB;->FB:Ljava/lang/String;

    return-object v0
.end method

.method public yn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/location/tiles/store/FB;->yn:Ljava/lang/String;

    return-object v0
.end method
