.class Lcom/huawei/location/vdr/data/yn$yn;
.super Landroid/location/GnssMeasurementsEvent$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/location/vdr/data/yn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic yn:Lcom/huawei/location/vdr/data/yn;


# direct methods
.method constructor <init>(Lcom/huawei/location/vdr/data/yn;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/location/vdr/data/yn$yn;->yn:Lcom/huawei/location/vdr/data/yn;

    invoke-direct {p0}, Landroid/location/GnssMeasurementsEvent$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onGnssMeasurementsReceived(Landroid/location/GnssMeasurementsEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/huawei/location/vdr/data/yn$yn;->yn:Lcom/huawei/location/vdr/data/yn;

    invoke-static {v0, p1}, Lcom/huawei/location/vdr/data/yn;->yn(Lcom/huawei/location/vdr/data/yn;Landroid/location/GnssMeasurementsEvent;)V

    return-void
.end method

.method public onStatusChanged(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GnssMeasurementsEvent onStatusChanged :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GnssMeasurementsProvider"

    invoke-static {v1, v0}, Lcom/huawei/location/lite/common/log/LogConsole;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/location/GnssMeasurementsEvent$Callback;->onStatusChanged(I)V

    return-void
.end method
