.class Lcom/huawei/location/vdr/data/Vw$yn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/location/vdr/data/Vw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic yn:Lcom/huawei/location/vdr/data/Vw;


# direct methods
.method constructor <init>(Lcom/huawei/location/vdr/data/Vw;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/location/vdr/data/Vw$yn;->yn:Lcom/huawei/location/vdr/data/Vw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/huawei/location/vdr/data/Vw$yn;->yn:Lcom/huawei/location/vdr/data/Vw;

    invoke-virtual {v0, p1}, Lcom/huawei/location/vdr/data/Vw;->yn(Landroid/hardware/SensorEvent;)V

    return-void
.end method
