.class Lorg/telegram/ui/bots/BotSensors$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/bots/BotSensors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private geomagnetic:[F

.field private gravity:[F

.field private lastTime:J

.field final synthetic this$0:Lorg/telegram/ui/bots/BotSensors;


# direct methods
.method constructor <init>(Lorg/telegram/ui/bots/BotSensors;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/bots/BotSensors$3;->this$0:Lorg/telegram/ui/bots/BotSensors;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/bots/BotSensors$3;->this$0:Lorg/telegram/ui/bots/BotSensors;

    invoke-static {v0}, Lorg/telegram/ui/bots/BotSensors;->access$600(Lorg/telegram/ui/bots/BotSensors;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/bots/BotSensors$3;->this$0:Lorg/telegram/ui/bots/BotSensors;

    invoke-static {v0}, Lorg/telegram/ui/bots/BotSensors;->access$600(Lorg/telegram/ui/bots/BotSensors;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lorg/telegram/ui/bots/BotSensors$3;->this$0:Lorg/telegram/ui/bots/BotSensors;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/bots/BotSensors;->access$602(Lorg/telegram/ui/bots/BotSensors;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/bots/BotSensors$3;->this$0:Lorg/telegram/ui/bots/BotSensors;

    invoke-static {v0}, Lorg/telegram/ui/bots/BotSensors;->access$100(Lorg/telegram/ui/bots/BotSensors;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/bots/BotSensors$3;->this$0:Lorg/telegram/ui/bots/BotSensors;

    invoke-static {v0}, Lorg/telegram/ui/bots/BotSensors;->access$200(Lorg/telegram/ui/bots/BotSensors;)Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/ui/bots/BotSensors$3;->lastTime:J

    sub-long/2addr v0, v2

    iget-object v2, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    iput-object v2, p0, Lorg/telegram/ui/bots/BotSensors$3;->gravity:[F

    :cond_2
    iget-object v2, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    iput-object p1, p0, Lorg/telegram/ui/bots/BotSensors$3;->geomagnetic:[F

    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/bots/BotSensors$3;->this$0:Lorg/telegram/ui/bots/BotSensors;

    invoke-static {p1}, Lorg/telegram/ui/bots/BotSensors;->access$700(Lorg/telegram/ui/bots/BotSensors;)J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-gez p1, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/bots/BotSensors$3;->this$0:Lorg/telegram/ui/bots/BotSensors;

    new-instance v2, Lorg/telegram/ui/bots/BotSensors$3$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/telegram/ui/bots/BotSensors$3$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/bots/BotSensors$3;)V

    invoke-static {p1, v2}, Lorg/telegram/ui/bots/BotSensors;->access$602(Lorg/telegram/ui/bots/BotSensors;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    iget-object v2, p0, Lorg/telegram/ui/bots/BotSensors$3;->this$0:Lorg/telegram/ui/bots/BotSensors;

    invoke-static {v2}, Lorg/telegram/ui/bots/BotSensors;->access$700(Lorg/telegram/ui/bots/BotSensors;)J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-static {p1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void

    :cond_4
    invoke-virtual {p0}, Lorg/telegram/ui/bots/BotSensors$3;->post()V

    :cond_5
    :goto_0
    return-void
.end method

.method public post()V
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/bots/BotSensors$3;->gravity:[F

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/bots/BotSensors$3;->geomagnetic:[F

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/bots/BotSensors$3;->this$0:Lorg/telegram/ui/bots/BotSensors;

    invoke-static {v0}, Lorg/telegram/ui/bots/BotSensors;->access$200(Lorg/telegram/ui/bots/BotSensors;)Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/bots/BotSensors$3;->lastTime:J

    const/16 v0, 0x9

    new-array v1, v0, [F

    new-array v0, v0, [F

    iget-object v2, p0, Lorg/telegram/ui/bots/BotSensors$3;->gravity:[F

    iget-object v3, p0, Lorg/telegram/ui/bots/BotSensors$3;->geomagnetic:[F

    invoke-static {v1, v0, v2, v3}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    new-array v0, v0, [F

    invoke-static {v1, v0}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "absolute"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "alpha"

    const/4 v4, 0x0

    aget v4, v0, v4

    neg-float v4, v4

    float-to-double v4, v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v2, "beta"

    aget v3, v0, v3

    neg-float v3, v3

    float-to-double v3, v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v2, "gamma"

    const/4 v3, 0x2

    aget v0, v0, v3

    float-to-double v3, v0

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    iget-object v0, p0, Lorg/telegram/ui/bots/BotSensors$3;->this$0:Lorg/telegram/ui/bots/BotSensors;

    invoke-static {v0}, Lorg/telegram/ui/bots/BotSensors;->access$200(Lorg/telegram/ui/bots/BotSensors;)Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "window.Telegram.WebView.receiveEvent(\'device_orientation_changed\', "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ");"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->evaluateJS(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_0
    return-void
.end method
