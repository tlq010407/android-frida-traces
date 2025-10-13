.class Lorg/telegram/ui/bots/BotSensors$4;
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
.field private lastTime:J

.field private mDeviceRotationMatrix:[F

.field private mTruncatedRotationVector:[F

.field final synthetic this$0:Lorg/telegram/ui/bots/BotSensors;

.field private values:[F


# direct methods
.method constructor <init>(Lorg/telegram/ui/bots/BotSensors;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/bots/BotSensors$4;->this$0:Lorg/telegram/ui/bots/BotSensors;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/bots/BotSensors$4;->this$0:Lorg/telegram/ui/bots/BotSensors;

    invoke-static {v0}, Lorg/telegram/ui/bots/BotSensors;->access$800(Lorg/telegram/ui/bots/BotSensors;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/bots/BotSensors$4;->this$0:Lorg/telegram/ui/bots/BotSensors;

    invoke-static {v0}, Lorg/telegram/ui/bots/BotSensors;->access$800(Lorg/telegram/ui/bots/BotSensors;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lorg/telegram/ui/bots/BotSensors$4;->this$0:Lorg/telegram/ui/bots/BotSensors;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/bots/BotSensors;->access$802(Lorg/telegram/ui/bots/BotSensors;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/bots/BotSensors$4;->this$0:Lorg/telegram/ui/bots/BotSensors;

    invoke-static {v0}, Lorg/telegram/ui/bots/BotSensors;->access$100(Lorg/telegram/ui/bots/BotSensors;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/bots/BotSensors$4;->this$0:Lorg/telegram/ui/bots/BotSensors;

    invoke-static {v0}, Lorg/telegram/ui/bots/BotSensors;->access$200(Lorg/telegram/ui/bots/BotSensors;)Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/ui/bots/BotSensors$4;->lastTime:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lorg/telegram/ui/bots/BotSensors$4;->this$0:Lorg/telegram/ui/bots/BotSensors;

    invoke-static {v2}, Lorg/telegram/ui/bots/BotSensors;->access$900(Lorg/telegram/ui/bots/BotSensors;)J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/bots/BotSensors$4;->this$0:Lorg/telegram/ui/bots/BotSensors;

    new-instance v2, Lorg/telegram/ui/bots/BotSensors$4$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/telegram/ui/bots/BotSensors$4$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/bots/BotSensors$4;)V

    invoke-static {p1, v2}, Lorg/telegram/ui/bots/BotSensors;->access$802(Lorg/telegram/ui/bots/BotSensors;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    iget-object v2, p0, Lorg/telegram/ui/bots/BotSensors$4;->this$0:Lorg/telegram/ui/bots/BotSensors;

    invoke-static {v2}, Lorg/telegram/ui/bots/BotSensors;->access$900(Lorg/telegram/ui/bots/BotSensors;)J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-static {p1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void

    :cond_2
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_3

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    iput-object p1, p0, Lorg/telegram/ui/bots/BotSensors$4;->values:[F

    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/bots/BotSensors$4;->post()V

    :cond_4
    :goto_0
    return-void
.end method

.method public post()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/bots/BotSensors$4;->values:[F

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/bots/BotSensors$4;->this$0:Lorg/telegram/ui/bots/BotSensors;

    invoke-static {v0}, Lorg/telegram/ui/bots/BotSensors;->access$200(Lorg/telegram/ui/bots/BotSensors;)Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/bots/BotSensors$4;->lastTime:J

    iget-object v0, p0, Lorg/telegram/ui/bots/BotSensors$4;->mDeviceRotationMatrix:[F

    if-nez v0, :cond_2

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lorg/telegram/ui/bots/BotSensors$4;->mDeviceRotationMatrix:[F

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/bots/BotSensors$4;->mTruncatedRotationVector:[F

    const/4 v1, 0x4

    if-nez v0, :cond_3

    new-array v0, v1, [F

    iput-object v0, p0, Lorg/telegram/ui/bots/BotSensors$4;->mTruncatedRotationVector:[F

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/bots/BotSensors$4;->values:[F

    array-length v2, v0

    const/4 v3, 0x0

    if-le v2, v1, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/bots/BotSensors$4;->mTruncatedRotationVector:[F

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/telegram/ui/bots/BotSensors$4;->mDeviceRotationMatrix:[F

    iget-object v1, p0, Lorg/telegram/ui/bots/BotSensors$4;->mTruncatedRotationVector:[F

    invoke-static {v0, v1}, Landroid/hardware/SensorManager;->getRotationMatrixFromVector([F[F)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/bots/BotSensors$4;->mDeviceRotationMatrix:[F

    invoke-static {v1, v0}, Landroid/hardware/SensorManager;->getRotationMatrixFromVector([F[F)V

    :goto_0
    const/4 v0, 0x3

    new-array v0, v0, [F

    iget-object v1, p0, Lorg/telegram/ui/bots/BotSensors$4;->mDeviceRotationMatrix:[F

    invoke-static {v1, v0}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "absolute"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "alpha"

    aget v3, v0, v3

    neg-float v3, v3

    float-to-double v3, v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v2, "beta"

    const/4 v3, 0x1

    aget v3, v0, v3

    neg-float v3, v3

    float-to-double v3, v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v2, "gamma"

    const/4 v3, 0x2

    aget v0, v0, v3

    float-to-double v3, v0

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    iget-object v0, p0, Lorg/telegram/ui/bots/BotSensors$4;->this$0:Lorg/telegram/ui/bots/BotSensors;

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
    return-void
.end method
