.class Lorg/telegram/ui/bots/BotSensors$1;
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

.field final synthetic this$0:Lorg/telegram/ui/bots/BotSensors;

.field private xyz:[F


# direct methods
.method constructor <init>(Lorg/telegram/ui/bots/BotSensors;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/bots/BotSensors$1;->this$0:Lorg/telegram/ui/bots/BotSensors;

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

    iget-object v0, p0, Lorg/telegram/ui/bots/BotSensors$1;->this$0:Lorg/telegram/ui/bots/BotSensors;

    invoke-static {v0}, Lorg/telegram/ui/bots/BotSensors;->access$000(Lorg/telegram/ui/bots/BotSensors;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/bots/BotSensors$1;->this$0:Lorg/telegram/ui/bots/BotSensors;

    invoke-static {v0}, Lorg/telegram/ui/bots/BotSensors;->access$000(Lorg/telegram/ui/bots/BotSensors;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lorg/telegram/ui/bots/BotSensors$1;->this$0:Lorg/telegram/ui/bots/BotSensors;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/bots/BotSensors;->access$002(Lorg/telegram/ui/bots/BotSensors;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/bots/BotSensors$1;->this$0:Lorg/telegram/ui/bots/BotSensors;

    invoke-static {v0}, Lorg/telegram/ui/bots/BotSensors;->access$100(Lorg/telegram/ui/bots/BotSensors;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/bots/BotSensors$1;->this$0:Lorg/telegram/ui/bots/BotSensors;

    invoke-static {v0}, Lorg/telegram/ui/bots/BotSensors;->access$200(Lorg/telegram/ui/bots/BotSensors;)Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/ui/bots/BotSensors$1;->lastTime:J

    sub-long/2addr v0, v2

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    iput-object p1, p0, Lorg/telegram/ui/bots/BotSensors$1;->xyz:[F

    iget-object p1, p0, Lorg/telegram/ui/bots/BotSensors$1;->this$0:Lorg/telegram/ui/bots/BotSensors;

    invoke-static {p1}, Lorg/telegram/ui/bots/BotSensors;->access$300(Lorg/telegram/ui/bots/BotSensors;)J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-gez p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/bots/BotSensors$1;->this$0:Lorg/telegram/ui/bots/BotSensors;

    new-instance v2, Lorg/telegram/ui/bots/BotSensors$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/telegram/ui/bots/BotSensors$1$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/bots/BotSensors$1;)V

    invoke-static {p1, v2}, Lorg/telegram/ui/bots/BotSensors;->access$002(Lorg/telegram/ui/bots/BotSensors;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    iget-object v2, p0, Lorg/telegram/ui/bots/BotSensors$1;->this$0:Lorg/telegram/ui/bots/BotSensors;

    invoke-static {v2}, Lorg/telegram/ui/bots/BotSensors;->access$300(Lorg/telegram/ui/bots/BotSensors;)J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-static {p1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/bots/BotSensors$1;->post()V

    :cond_3
    :goto_0
    return-void
.end method

.method public post()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/bots/BotSensors$1;->this$0:Lorg/telegram/ui/bots/BotSensors;

    invoke-static {v0}, Lorg/telegram/ui/bots/BotSensors;->access$200(Lorg/telegram/ui/bots/BotSensors;)Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/bots/BotSensors$1;->xyz:[F

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/bots/BotSensors$1;->lastTime:J

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "x"

    iget-object v2, p0, Lorg/telegram/ui/bots/BotSensors$1;->xyz:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    neg-float v2, v2

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "y"

    iget-object v2, p0, Lorg/telegram/ui/bots/BotSensors$1;->xyz:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    neg-float v2, v2

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "z"

    iget-object v2, p0, Lorg/telegram/ui/bots/BotSensors$1;->xyz:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    neg-float v2, v2

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    iget-object v1, p0, Lorg/telegram/ui/bots/BotSensors$1;->this$0:Lorg/telegram/ui/bots/BotSensors;

    invoke-static {v1}, Lorg/telegram/ui/bots/BotSensors;->access$200(Lorg/telegram/ui/bots/BotSensors;)Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "window.Telegram.WebView.receiveEvent(\'accelerometer_changed\', "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ");"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->evaluateJS(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
