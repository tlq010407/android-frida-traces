.class public final Lcom/huawei/hms/maps/CameraUpdate;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/huawei/hms/maps/model/CameraUpdateParam;


# direct methods
.method public constructor <init>(Lcom/huawei/hms/maps/model/CameraUpdateParam;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/huawei/hms/maps/CameraUpdate;->a:Lcom/huawei/hms/maps/model/CameraUpdateParam;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Object is null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getCameraUpdate()Lcom/huawei/hms/maps/model/CameraUpdateParam;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/huawei/hms/maps/CameraUpdate;->a:Lcom/huawei/hms/maps/model/CameraUpdateParam;

    return-object v0
.end method

.method public getCameraUpdateParam()Lcom/huawei/hms/maps/model/CameraUpdateParam;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/maps/CameraUpdate;->a:Lcom/huawei/hms/maps/model/CameraUpdateParam;

    return-object v0
.end method
