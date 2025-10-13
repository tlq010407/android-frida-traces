.class Lcom/huawei/hms/maps/internal/IDistanceCalculatorDelegate$Stub$Proxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/huawei/hms/maps/internal/IDistanceCalculatorDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/maps/internal/IDistanceCalculatorDelegate$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private a:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/huawei/hms/maps/internal/IDistanceCalculatorDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/maps/internal/IDistanceCalculatorDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    return-object v0
.end method

.method public computeDistanceBetween(Lcom/huawei/hms/maps/model/LatLng;Lcom/huawei/hms/maps/model/LatLng;)D
    .locals 4

    iget-object v0, p0, Lcom/huawei/hms/maps/internal/IDistanceCalculatorDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const/4 v1, 0x2

    new-array v2, v1, [Landroid/os/Parcelable;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    const-string p2, "com.huawei.hms.maps.internal.IDistanceCalculatorDelegate"

    invoke-static {v0, p2, p1, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->a(Landroid/os/IBinder;Ljava/lang/String;II[Landroid/os/Parcelable;)Ljava/lang/Number;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    return-wide p1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.huawei.hms.maps.internal.IDistanceCalculatorDelegate"

    return-object v0
.end method
