.class public Lcom/huawei/riemann/gnsslocation/core/bean/DeviceInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/riemann/gnsslocation/core/bean/DeviceInfo$Builder;
    }
.end annotation


# instance fields
.field public mChipName:Ljava/lang/String;

.field public mManufacturer:Ljava/lang/String;

.field public mSdkLevel:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$002(Lcom/huawei/riemann/gnsslocation/core/bean/DeviceInfo;I)I
    .locals 0

    iput p1, p0, Lcom/huawei/riemann/gnsslocation/core/bean/DeviceInfo;->mSdkLevel:I

    return p1
.end method

.method public static synthetic access$102(Lcom/huawei/riemann/gnsslocation/core/bean/DeviceInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/huawei/riemann/gnsslocation/core/bean/DeviceInfo;->mManufacturer:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$202(Lcom/huawei/riemann/gnsslocation/core/bean/DeviceInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/huawei/riemann/gnsslocation/core/bean/DeviceInfo;->mChipName:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public getChipName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/riemann/gnsslocation/core/bean/DeviceInfo;->mChipName:Ljava/lang/String;

    return-object v0
.end method

.method public getManufacturer()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/riemann/gnsslocation/core/bean/DeviceInfo;->mManufacturer:Ljava/lang/String;

    return-object v0
.end method

.method public getSdkLevel()I
    .locals 1

    iget v0, p0, Lcom/huawei/riemann/gnsslocation/core/bean/DeviceInfo;->mSdkLevel:I

    return v0
.end method
