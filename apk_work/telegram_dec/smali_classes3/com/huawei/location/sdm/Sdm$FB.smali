.class Lcom/huawei/location/sdm/Sdm$FB;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/location/sdm/Sdm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FB"
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field final synthetic Vw:Lcom/huawei/location/sdm/Sdm;


# direct methods
.method constructor <init>(Lcom/huawei/location/sdm/Sdm;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/location/sdm/Sdm$FB;->Vw:Lcom/huawei/location/sdm/Sdm;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "Sdm"

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const-string v0, "handleMessage: LOCATION_CHANGED"

    invoke-static {v1, v0}, Lcom/huawei/location/lite/common/log/LogConsole;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, p1, Landroid/location/Location;

    if-nez v0, :cond_0

    const-string p1, "handleMessage not location obj"

    :goto_0
    invoke-static {v1, p1}, Lcom/huawei/location/lite/common/log/LogConsole;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/huawei/location/sdm/Sdm$FB;->Vw:Lcom/huawei/location/sdm/Sdm;

    check-cast p1, Landroid/location/Location;

    invoke-static {v0, p1}, Lcom/huawei/location/sdm/Sdm;->yn(Lcom/huawei/location/sdm/Sdm;Landroid/location/Location;)V

    goto/16 :goto_4

    :cond_1
    const/4 v3, 0x3

    if-ne v0, v3, :cond_3

    const-string v0, "handleMessage: LOCATION_PROCESS"

    invoke-static {v1, v0}, Lcom/huawei/location/lite/common/log/LogConsole;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {p1}, Lcom/huawei/location/sdm/Sdm$FB$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string p1, "handleMessage not GnssMeasurementsEvent obj"

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/huawei/location/sdm/Sdm$FB;->Vw:Lcom/huawei/location/sdm/Sdm;

    invoke-static {p1}, Lcom/huawei/location/sdm/Sdm$FB$$ExternalSyntheticApiModelOutline1;->m(Ljava/lang/Object;)Landroid/location/GnssMeasurementsEvent;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/huawei/location/sdm/Sdm;->yn(Lcom/huawei/location/sdm/Sdm;Landroid/location/GnssMeasurementsEvent;)V

    goto/16 :goto_4

    :cond_3
    const/4 v3, 0x2

    const/4 v4, 0x0

    const-string v5, "handleMessage not SdmListener obj"

    if-ne v0, v3, :cond_8

    const-string v0, "stop begin"

    invoke-static {v1, v0}, Lcom/huawei/location/lite/common/log/LogConsole;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, p1, Lcom/huawei/location/sdm/yn;

    if-nez v0, :cond_4

    invoke-static {v1, v5}, Lcom/huawei/location/lite/common/log/LogConsole;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    check-cast p1, Lcom/huawei/location/sdm/yn;

    iget-object v0, p0, Lcom/huawei/location/sdm/Sdm$FB;->Vw:Lcom/huawei/location/sdm/Sdm;

    invoke-static {v0}, Lcom/huawei/location/sdm/Sdm;->d2(Lcom/huawei/location/sdm/Sdm;)Lcom/huawei/location/sdm/yn;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/huawei/location/sdm/Sdm$FB;->Vw:Lcom/huawei/location/sdm/Sdm;

    invoke-static {p1, v4}, Lcom/huawei/location/sdm/Sdm;->yn(Lcom/huawei/location/sdm/Sdm;Lcom/huawei/location/sdm/yn;)Lcom/huawei/location/sdm/yn;

    iget-object p1, p0, Lcom/huawei/location/sdm/Sdm$FB;->Vw:Lcom/huawei/location/sdm/Sdm;

    invoke-static {p1}, Lcom/huawei/location/sdm/Sdm;->zp(Lcom/huawei/location/sdm/Sdm;)Lcom/huawei/location/support/yn;

    move-result-object p1

    invoke-virtual {p1}, Lcom/huawei/location/support/yn;->Vw()V

    iget-object p1, p0, Lcom/huawei/location/sdm/Sdm$FB;->Vw:Lcom/huawei/location/sdm/Sdm;

    invoke-static {p1}, Lcom/huawei/location/sdm/Sdm;->ut(Lcom/huawei/location/sdm/Sdm;)Lcom/huawei/riemann/common/api/location/SdmLocationClient;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/huawei/location/sdm/Sdm$FB;->Vw:Lcom/huawei/location/sdm/Sdm;

    invoke-static {p1}, Lcom/huawei/location/sdm/Sdm;->ut(Lcom/huawei/location/sdm/Sdm;)Lcom/huawei/riemann/common/api/location/SdmLocationClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/huawei/riemann/common/api/location/SdmLocationClient;->stopLocation()V

    :cond_5
    const-string p1, "The algorithm is disabled"

    invoke-static {v1, p1}, Lcom/huawei/location/lite/common/log/LogConsole;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/huawei/location/sdm/Sdm$FB;->Vw:Lcom/huawei/location/sdm/Sdm;

    invoke-static {p1}, Lcom/huawei/location/sdm/Sdm;->oc(Lcom/huawei/location/sdm/Sdm;)Lcom/huawei/location/sdm/Sdm$Vw;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/huawei/location/sdm/Sdm$FB;->Vw:Lcom/huawei/location/sdm/Sdm;

    invoke-static {p1}, Lcom/huawei/location/sdm/Sdm;->oc(Lcom/huawei/location/sdm/Sdm;)Lcom/huawei/location/sdm/Sdm$Vw;

    move-result-object p1

    iget-object v0, p1, Lcom/huawei/location/sdm/Sdm$Vw;->yn:Lcom/huawei/location/sdm/Sdm;

    invoke-static {v0}, Lcom/huawei/location/sdm/Sdm;->LW(Lcom/huawei/location/sdm/Sdm;)Landroid/location/LocationManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    :cond_6
    iget-object p1, p0, Lcom/huawei/location/sdm/Sdm$FB;->Vw:Lcom/huawei/location/sdm/Sdm;

    invoke-static {p1}, Lcom/huawei/location/sdm/Sdm;->Vw(Lcom/huawei/location/sdm/Sdm;)V

    iget-object p1, p0, Lcom/huawei/location/sdm/Sdm$FB;->Vw:Lcom/huawei/location/sdm/Sdm;

    invoke-static {p1, v2}, Lcom/huawei/location/sdm/Sdm;->yn(Lcom/huawei/location/sdm/Sdm;I)I

    iget-object p1, p0, Lcom/huawei/location/sdm/Sdm$FB;->Vw:Lcom/huawei/location/sdm/Sdm;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lcom/huawei/location/sdm/Sdm;->yn(Lcom/huawei/location/sdm/Sdm;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    iget-object p1, p0, Lcom/huawei/location/sdm/Sdm$FB;->Vw:Lcom/huawei/location/sdm/Sdm;

    const-wide/16 v2, 0x0

    invoke-static {p1, v2, v3}, Lcom/huawei/location/sdm/Sdm;->Vw(Lcom/huawei/location/sdm/Sdm;J)J

    iget-object p1, p0, Lcom/huawei/location/sdm/Sdm$FB;->Vw:Lcom/huawei/location/sdm/Sdm;

    invoke-static {p1, v2, v3}, Lcom/huawei/location/sdm/Sdm;->FB(Lcom/huawei/location/sdm/Sdm;J)J

    :cond_7
    const-string p1, "stop end"

    :goto_1
    invoke-static {v1, p1}, Lcom/huawei/location/lite/common/log/LogConsole;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_8
    const/4 v2, 0x4

    if-ne v0, v2, :cond_a

    const-string v0, "add listener"

    invoke-static {v1, v0}, Lcom/huawei/location/lite/common/log/LogConsole;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, p1, Lcom/huawei/location/sdm/yn;

    if-nez v0, :cond_9

    invoke-static {v1, v5}, Lcom/huawei/location/lite/common/log/LogConsole;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_9
    check-cast p1, Lcom/huawei/location/sdm/yn;

    iget-object v0, p0, Lcom/huawei/location/sdm/Sdm$FB;->Vw:Lcom/huawei/location/sdm/Sdm;

    invoke-static {v0}, Lcom/huawei/location/sdm/Sdm;->d2(Lcom/huawei/location/sdm/Sdm;)Lcom/huawei/location/sdm/yn;

    move-result-object v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/huawei/location/sdm/Sdm$FB;->Vw:Lcom/huawei/location/sdm/Sdm;

    new-instance v2, Lcom/huawei/location/sdm/Sdm$Vw;

    invoke-direct {v2, v0, v4}, Lcom/huawei/location/sdm/Sdm$Vw;-><init>(Lcom/huawei/location/sdm/Sdm;Lcom/huawei/location/sdm/Sdm$yn;)V

    invoke-static {v0, v2}, Lcom/huawei/location/sdm/Sdm;->yn(Lcom/huawei/location/sdm/Sdm;Lcom/huawei/location/sdm/Sdm$Vw;)Lcom/huawei/location/sdm/Sdm$Vw;

    iget-object v0, p0, Lcom/huawei/location/sdm/Sdm$FB;->Vw:Lcom/huawei/location/sdm/Sdm;

    invoke-static {v0}, Lcom/huawei/location/sdm/Sdm;->oc(Lcom/huawei/location/sdm/Sdm;)Lcom/huawei/location/sdm/Sdm$Vw;

    move-result-object v7

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v0, v7, Lcom/huawei/location/sdm/Sdm$Vw;->yn:Lcom/huawei/location/sdm/Sdm;

    invoke-static {v0}, Lcom/huawei/location/sdm/Sdm;->LW(Lcom/huawei/location/sdm/Sdm;)Landroid/location/LocationManager;

    move-result-object v2

    const-string v3, "gps"

    const-wide/16 v4, 0x3e8

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v8}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "location listener register success"

    invoke-static {v1, v0}, Lcom/huawei/location/lite/common/log/LogConsole;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catch_0
    const-string v0, "LocationManager requestLocationUpdates throw other exception"

    :goto_2
    invoke-static {v1, v0}, Lcom/huawei/location/lite/common/log/LogConsole;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catch_1
    const-string v0, "LocationManager requestLocationUpdates throw IllegalArgumentException"

    goto :goto_2

    :catch_2
    const-string v0, "LocationManager requestLocationUpdates throw SecurityException"

    goto :goto_2

    :goto_3
    iget-object v0, p0, Lcom/huawei/location/sdm/Sdm$FB;->Vw:Lcom/huawei/location/sdm/Sdm;

    invoke-static {v0}, Lcom/huawei/location/sdm/Sdm;->FB(Lcom/huawei/location/sdm/Sdm;)V

    iget-object v0, p0, Lcom/huawei/location/sdm/Sdm$FB;->Vw:Lcom/huawei/location/sdm/Sdm;

    invoke-static {v0, p1}, Lcom/huawei/location/sdm/Sdm;->yn(Lcom/huawei/location/sdm/Sdm;Lcom/huawei/location/sdm/yn;)Lcom/huawei/location/sdm/yn;

    const-string p1, "add listener success"

    goto :goto_1

    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown msg:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/huawei/location/lite/common/log/LogConsole;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    :goto_4
    return-void
.end method
