.class public Lcom/huawei/location/lite/common/http/HttpConfigInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/location/lite/common/http/HttpConfigInfo$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/huawei/location/lite/common/http/HttpConfigInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private isBinderProcess:Z

.field private isNeedCheckAGC:Z

.field private isNeedCheckTssAuth:Z

.field private isNeedCheckUcsAuth:Z

.field private isNeedInterceptor:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/huawei/location/lite/common/http/HttpConfigInfo$1;

    invoke-direct {v0}, Lcom/huawei/location/lite/common/http/HttpConfigInfo$1;-><init>()V

    sput-object v0, Lcom/huawei/location/lite/common/http/HttpConfigInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/huawei/location/lite/common/http/HttpConfigInfo;->isNeedInterceptor:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/huawei/location/lite/common/http/HttpConfigInfo;->isNeedCheckAGC:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p0, Lcom/huawei/location/lite/common/http/HttpConfigInfo;->isNeedCheckUcsAuth:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    iput-boolean v0, p0, Lcom/huawei/location/lite/common/http/HttpConfigInfo;->isNeedCheckTssAuth:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    :cond_4
    iput-boolean v1, p0, Lcom/huawei/location/lite/common/http/HttpConfigInfo;->isBinderProcess:Z

    return-void
.end method

.method public constructor <init>(Lcom/huawei/location/lite/common/http/HttpConfigInfo$Builder;)V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/huawei/location/lite/common/http/HttpConfigInfo$Builder;->access$000(Lcom/huawei/location/lite/common/http/HttpConfigInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/location/lite/common/http/HttpConfigInfo;->isNeedInterceptor:Z

    invoke-static {p1}, Lcom/huawei/location/lite/common/http/HttpConfigInfo$Builder;->access$100(Lcom/huawei/location/lite/common/http/HttpConfigInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/location/lite/common/http/HttpConfigInfo;->isNeedCheckAGC:Z

    invoke-static {p1}, Lcom/huawei/location/lite/common/http/HttpConfigInfo$Builder;->access$200(Lcom/huawei/location/lite/common/http/HttpConfigInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/location/lite/common/http/HttpConfigInfo;->isNeedCheckTssAuth:Z

    invoke-static {p1}, Lcom/huawei/location/lite/common/http/HttpConfigInfo$Builder;->access$300(Lcom/huawei/location/lite/common/http/HttpConfigInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/location/lite/common/http/HttpConfigInfo;->isNeedCheckUcsAuth:Z

    invoke-static {p1}, Lcom/huawei/location/lite/common/http/HttpConfigInfo$Builder;->access$400(Lcom/huawei/location/lite/common/http/HttpConfigInfo$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/huawei/location/lite/common/http/HttpConfigInfo;->isBinderProcess:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isBinderProcess()Z
    .locals 1

    iget-boolean v0, p0, Lcom/huawei/location/lite/common/http/HttpConfigInfo;->isBinderProcess:Z

    return v0
.end method

.method public isNeedCheckAGC()Z
    .locals 1

    iget-boolean v0, p0, Lcom/huawei/location/lite/common/http/HttpConfigInfo;->isNeedCheckAGC:Z

    return v0
.end method

.method public isNeedCheckTssAuth()Z
    .locals 1

    iget-boolean v0, p0, Lcom/huawei/location/lite/common/http/HttpConfigInfo;->isNeedCheckTssAuth:Z

    return v0
.end method

.method public isNeedCheckUcsAuth()Z
    .locals 1

    iget-boolean v0, p0, Lcom/huawei/location/lite/common/http/HttpConfigInfo;->isNeedCheckUcsAuth:Z

    return v0
.end method

.method public isNeedInterceptor()Z
    .locals 1

    iget-boolean v0, p0, Lcom/huawei/location/lite/common/http/HttpConfigInfo;->isNeedInterceptor:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-boolean p2, p0, Lcom/huawei/location/lite/common/http/HttpConfigInfo;->isNeedInterceptor:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p2, p0, Lcom/huawei/location/lite/common/http/HttpConfigInfo;->isNeedCheckAGC:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p2, p0, Lcom/huawei/location/lite/common/http/HttpConfigInfo;->isNeedCheckUcsAuth:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p2, p0, Lcom/huawei/location/lite/common/http/HttpConfigInfo;->isNeedCheckTssAuth:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p2, p0, Lcom/huawei/location/lite/common/http/HttpConfigInfo;->isBinderProcess:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
