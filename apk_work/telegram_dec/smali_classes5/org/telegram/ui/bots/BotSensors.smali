.class public Lorg/telegram/ui/bots/BotSensors;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private absoluteOrientationDesiredRefreshRate:J

.field private final absoluteOrientationListener:Landroid/hardware/SensorEventListener;

.field private absoluteOrientationListenerPostponed:Ljava/lang/Runnable;

.field private accelerometer:Landroid/hardware/Sensor;

.field private accelerometerDesiredRefreshRate:J

.field private final accelerometerListener:Landroid/hardware/SensorEventListener;

.field private accelerometerListenerPostponed:Ljava/lang/Runnable;

.field private gyroscope:Landroid/hardware/Sensor;

.field private gyroscopeDesiredRefreshRate:J

.field private final gyroscopeListener:Landroid/hardware/SensorEventListener;

.field private gyroscopeListenerPostponed:Ljava/lang/Runnable;

.field private orientationAccelerometer:Landroid/hardware/Sensor;

.field private orientationMagnetometer:Landroid/hardware/Sensor;

.field private paused:Z

.field private relativeOrientationDesiredRefreshRate:J

.field private final relativeOrientationListener:Landroid/hardware/SensorEventListener;

.field private relativeOrientationListenerPostponed:Ljava/lang/Runnable;

.field private rotation:Landroid/hardware/Sensor;

.field private final sensorManager:Landroid/hardware/SensorManager;

.field private webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Lorg/telegram/ui/bots/BotSensors$1;

    invoke-direct {p2, p0}, Lorg/telegram/ui/bots/BotSensors$1;-><init>(Lorg/telegram/ui/bots/BotSensors;)V

    iput-object p2, p0, Lorg/telegram/ui/bots/BotSensors;->accelerometerListener:Landroid/hardware/SensorEventListener;

    new-instance p2, Lorg/telegram/ui/bots/BotSensors$2;

    invoke-direct {p2, p0}, Lorg/telegram/ui/bots/BotSensors$2;-><init>(Lorg/telegram/ui/bots/BotSensors;)V

    iput-object p2, p0, Lorg/telegram/ui/bots/BotSensors;->gyroscopeListener:Landroid/hardware/SensorEventListener;

    new-instance p2, Lorg/telegram/ui/bots/BotSensors$3;

    invoke-direct {p2, p0}, Lorg/telegram/ui/bots/BotSensors$3;-><init>(Lorg/telegram/ui/bots/BotSensors;)V

    iput-object p2, p0, Lorg/telegram/ui/bots/BotSensors;->absoluteOrientationListener:Landroid/hardware/SensorEventListener;

    new-instance p2, Lorg/telegram/ui/bots/BotSensors$4;

    invoke-direct {p2, p0}, Lorg/telegram/ui/bots/BotSensors$4;-><init>(Lorg/telegram/ui/bots/BotSensors;)V

    iput-object p2, p0, Lorg/telegram/ui/bots/BotSensors;->relativeOrientationListener:Landroid/hardware/SensorEventListener;

    const-string p2, "sensor"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lorg/telegram/ui/bots/BotSensors;->sensorManager:Landroid/hardware/SensorManager;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/bots/BotSensors;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/bots/BotSensors;->accelerometerListenerPostponed:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$002(Lorg/telegram/ui/bots/BotSensors;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/bots/BotSensors;->accelerometerListenerPostponed:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/bots/BotSensors;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/bots/BotSensors;->paused:Z

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/bots/BotSensors;)Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/bots/BotSensors;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/bots/BotSensors;)J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/ui/bots/BotSensors;->accelerometerDesiredRefreshRate:J

    return-wide v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/bots/BotSensors;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/bots/BotSensors;->gyroscopeListenerPostponed:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$402(Lorg/telegram/ui/bots/BotSensors;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/bots/BotSensors;->gyroscopeListenerPostponed:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$500(Lorg/telegram/ui/bots/BotSensors;)J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/ui/bots/BotSensors;->gyroscopeDesiredRefreshRate:J

    return-wide v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/bots/BotSensors;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/bots/BotSensors;->absoluteOrientationListenerPostponed:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$602(Lorg/telegram/ui/bots/BotSensors;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/bots/BotSensors;->absoluteOrientationListenerPostponed:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$700(Lorg/telegram/ui/bots/BotSensors;)J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/ui/bots/BotSensors;->absoluteOrientationDesiredRefreshRate:J

    return-wide v0
.end method

.method static synthetic access$800(Lorg/telegram/ui/bots/BotSensors;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/bots/BotSensors;->relativeOrientationListenerPostponed:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$802(Lorg/telegram/ui/bots/BotSensors;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/bots/BotSensors;->relativeOrientationListenerPostponed:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$900(Lorg/telegram/ui/bots/BotSensors;)J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/ui/bots/BotSensors;->relativeOrientationDesiredRefreshRate:J

    return-wide v0
.end method

.method private static getSensorDelay(J)I
    .locals 3

    const-wide/16 v0, 0xa0

    cmp-long v2, p0, v0

    if-ltz v2, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_0
    const-wide/16 v0, 0x3c

    cmp-long v2, p0, v0

    if-ltz v2, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public attachWebView(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/bots/BotSensors;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    return-void
.end method

.method public detachWebView(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/bots/BotSensors;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/bots/BotSensors;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-virtual {p0}, Lorg/telegram/ui/bots/BotSensors;->pause()V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 4

    iget-boolean v0, p0, Lorg/telegram/ui/bots/BotSensors;->paused:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/bots/BotSensors;->paused:Z

    iget-object v0, p0, Lorg/telegram/ui/bots/BotSensors;->sensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_9

    iget-object v1, p0, Lorg/telegram/ui/bots/BotSensors;->accelerometer:Landroid/hardware/Sensor;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/bots/BotSensors;->accelerometerListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v2, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/bots/BotSensors;->accelerometerListenerPostponed:Ljava/lang/Runnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lorg/telegram/ui/bots/BotSensors;->accelerometerListenerPostponed:Ljava/lang/Runnable;

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/bots/BotSensors;->gyroscope:Landroid/hardware/Sensor;

    if-eqz v0, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/bots/BotSensors;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lorg/telegram/ui/bots/BotSensors;->gyroscopeListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v2, v3, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/bots/BotSensors;->gyroscopeListenerPostponed:Ljava/lang/Runnable;

    if-eqz v0, :cond_4

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lorg/telegram/ui/bots/BotSensors;->gyroscopeListenerPostponed:Ljava/lang/Runnable;

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/bots/BotSensors;->orientationAccelerometer:Landroid/hardware/Sensor;

    if-eqz v0, :cond_5

    iget-object v2, p0, Lorg/telegram/ui/bots/BotSensors;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lorg/telegram/ui/bots/BotSensors;->absoluteOrientationListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v2, v3, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/bots/BotSensors;->orientationMagnetometer:Landroid/hardware/Sensor;

    if-eqz v0, :cond_6

    iget-object v2, p0, Lorg/telegram/ui/bots/BotSensors;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lorg/telegram/ui/bots/BotSensors;->absoluteOrientationListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v2, v3, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/bots/BotSensors;->absoluteOrientationListenerPostponed:Ljava/lang/Runnable;

    if-eqz v0, :cond_7

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lorg/telegram/ui/bots/BotSensors;->absoluteOrientationListenerPostponed:Ljava/lang/Runnable;

    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/bots/BotSensors;->rotation:Landroid/hardware/Sensor;

    if-eqz v0, :cond_8

    iget-object v2, p0, Lorg/telegram/ui/bots/BotSensors;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lorg/telegram/ui/bots/BotSensors;->relativeOrientationListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v2, v3, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/bots/BotSensors;->relativeOrientationListenerPostponed:Ljava/lang/Runnable;

    if-eqz v0, :cond_9

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lorg/telegram/ui/bots/BotSensors;->relativeOrientationListenerPostponed:Ljava/lang/Runnable;

    :cond_9
    return-void
.end method

.method public resume()V
    .locals 5

    iget-boolean v0, p0, Lorg/telegram/ui/bots/BotSensors;->paused:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/bots/BotSensors;->paused:Z

    iget-object v0, p0, Lorg/telegram/ui/bots/BotSensors;->sensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/bots/BotSensors;->accelerometer:Landroid/hardware/Sensor;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/bots/BotSensors;->accelerometerListener:Landroid/hardware/SensorEventListener;

    iget-wide v3, p0, Lorg/telegram/ui/bots/BotSensors;->accelerometerDesiredRefreshRate:J

    invoke-static {v3, v4}, Lorg/telegram/ui/bots/BotSensors;->getSensorDelay(J)I

    move-result v3

    invoke-virtual {v0, v2, v1, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/bots/BotSensors;->gyroscope:Landroid/hardware/Sensor;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/bots/BotSensors;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lorg/telegram/ui/bots/BotSensors;->gyroscopeListener:Landroid/hardware/SensorEventListener;

    iget-wide v3, p0, Lorg/telegram/ui/bots/BotSensors;->gyroscopeDesiredRefreshRate:J

    invoke-static {v3, v4}, Lorg/telegram/ui/bots/BotSensors;->getSensorDelay(J)I

    move-result v3

    invoke-virtual {v1, v2, v0, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/bots/BotSensors;->orientationAccelerometer:Landroid/hardware/Sensor;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/bots/BotSensors;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lorg/telegram/ui/bots/BotSensors;->absoluteOrientationListener:Landroid/hardware/SensorEventListener;

    iget-wide v3, p0, Lorg/telegram/ui/bots/BotSensors;->absoluteOrientationDesiredRefreshRate:J

    invoke-static {v3, v4}, Lorg/telegram/ui/bots/BotSensors;->getSensorDelay(J)I

    move-result v3

    invoke-virtual {v1, v2, v0, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/bots/BotSensors;->orientationMagnetometer:Landroid/hardware/Sensor;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/bots/BotSensors;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lorg/telegram/ui/bots/BotSensors;->absoluteOrientationListener:Landroid/hardware/SensorEventListener;

    iget-wide v3, p0, Lorg/telegram/ui/bots/BotSensors;->absoluteOrientationDesiredRefreshRate:J

    invoke-static {v3, v4}, Lorg/telegram/ui/bots/BotSensors;->getSensorDelay(J)I

    move-result v3

    invoke-virtual {v1, v2, v0, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/bots/BotSensors;->rotation:Landroid/hardware/Sensor;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/bots/BotSensors;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lorg/telegram/ui/bots/BotSensors;->relativeOrientationListener:Landroid/hardware/SensorEventListener;

    iget-wide v3, p0, Lorg/telegram/ui/bots/BotSensors;->relativeOrientationDesiredRefreshRate:J

    invoke-static {v3, v4}, Lorg/telegram/ui/bots/BotSensors;->getSensorDelay(J)I

    move-result v3

    invoke-virtual {v1, v2, v0, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_5
    return-void
.end method

.method public startAccelerometer(J)Z
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/bots/BotSensors;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/bots/BotSensors;->accelerometer:Landroid/hardware/Sensor;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    return v3

    :cond_1
    invoke-virtual {v0, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/bots/BotSensors;->accelerometer:Landroid/hardware/Sensor;

    if-nez v0, :cond_2

    return v1

    :cond_2
    iput-wide p1, p0, Lorg/telegram/ui/bots/BotSensors;->accelerometerDesiredRefreshRate:J

    iget-boolean v1, p0, Lorg/telegram/ui/bots/BotSensors;->paused:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/bots/BotSensors;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lorg/telegram/ui/bots/BotSensors;->accelerometerListener:Landroid/hardware/SensorEventListener;

    invoke-static {p1, p2}, Lorg/telegram/ui/bots/BotSensors;->getSensorDelay(J)I

    move-result p1

    invoke-virtual {v1, v2, v0, p1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_3
    return v3
.end method

.method public startGyroscope(J)Z
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/bots/BotSensors;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/bots/BotSensors;->gyroscope:Landroid/hardware/Sensor;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    return v3

    :cond_1
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/bots/BotSensors;->gyroscope:Landroid/hardware/Sensor;

    if-nez v0, :cond_2

    return v1

    :cond_2
    iput-wide p1, p0, Lorg/telegram/ui/bots/BotSensors;->gyroscopeDesiredRefreshRate:J

    iget-boolean v1, p0, Lorg/telegram/ui/bots/BotSensors;->paused:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/bots/BotSensors;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lorg/telegram/ui/bots/BotSensors;->gyroscopeListener:Landroid/hardware/SensorEventListener;

    invoke-static {p1, p2}, Lorg/telegram/ui/bots/BotSensors;->getSensorDelay(J)I

    move-result p1

    invoke-virtual {v1, v2, v0, p1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_3
    return v3
.end method

.method public startOrientation(ZJ)Z
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/bots/BotSensors;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_7

    iget-object p1, p0, Lorg/telegram/ui/bots/BotSensors;->rotation:Landroid/hardware/Sensor;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/bots/BotSensors;->relativeOrientationListenerPostponed:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iput-object v2, p0, Lorg/telegram/ui/bots/BotSensors;->relativeOrientationListenerPostponed:Ljava/lang/Runnable;

    :cond_1
    iget-boolean p1, p0, Lorg/telegram/ui/bots/BotSensors;->paused:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/bots/BotSensors;->rotation:Landroid/hardware/Sensor;

    if-eqz p1, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/bots/BotSensors;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lorg/telegram/ui/bots/BotSensors;->relativeOrientationListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v3, v4, p1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    :cond_2
    iput-object v2, p0, Lorg/telegram/ui/bots/BotSensors;->rotation:Landroid/hardware/Sensor;

    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/bots/BotSensors;->orientationMagnetometer:Landroid/hardware/Sensor;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/bots/BotSensors;->orientationAccelerometer:Landroid/hardware/Sensor;

    if-eqz p1, :cond_4

    return v0

    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/bots/BotSensors;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/bots/BotSensors;->orientationAccelerometer:Landroid/hardware/Sensor;

    iget-object p1, p0, Lorg/telegram/ui/bots/BotSensors;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/bots/BotSensors;->orientationMagnetometer:Landroid/hardware/Sensor;

    iget-object v2, p0, Lorg/telegram/ui/bots/BotSensors;->orientationAccelerometer:Landroid/hardware/Sensor;

    if-eqz v2, :cond_6

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    iput-wide p2, p0, Lorg/telegram/ui/bots/BotSensors;->absoluteOrientationDesiredRefreshRate:J

    iget-boolean p1, p0, Lorg/telegram/ui/bots/BotSensors;->paused:Z

    if-nez p1, :cond_f

    iget-object p1, p0, Lorg/telegram/ui/bots/BotSensors;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lorg/telegram/ui/bots/BotSensors;->absoluteOrientationListener:Landroid/hardware/SensorEventListener;

    invoke-static {p2, p3}, Lorg/telegram/ui/bots/BotSensors;->getSensorDelay(J)I

    move-result v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    iget-object p1, p0, Lorg/telegram/ui/bots/BotSensors;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lorg/telegram/ui/bots/BotSensors;->absoluteOrientationListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lorg/telegram/ui/bots/BotSensors;->orientationMagnetometer:Landroid/hardware/Sensor;

    invoke-static {p2, p3}, Lorg/telegram/ui/bots/BotSensors;->getSensorDelay(J)I

    move-result p2

    invoke-virtual {p1, v1, v2, p2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_1

    :cond_6
    :goto_0
    return v1

    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/bots/BotSensors;->orientationMagnetometer:Landroid/hardware/Sensor;

    if-nez p1, :cond_8

    iget-object p1, p0, Lorg/telegram/ui/bots/BotSensors;->orientationAccelerometer:Landroid/hardware/Sensor;

    if-eqz p1, :cond_c

    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/bots/BotSensors;->absoluteOrientationListenerPostponed:Ljava/lang/Runnable;

    if-eqz p1, :cond_9

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iput-object v2, p0, Lorg/telegram/ui/bots/BotSensors;->absoluteOrientationListenerPostponed:Ljava/lang/Runnable;

    :cond_9
    iget-boolean p1, p0, Lorg/telegram/ui/bots/BotSensors;->paused:Z

    if-nez p1, :cond_b

    iget-object p1, p0, Lorg/telegram/ui/bots/BotSensors;->orientationAccelerometer:Landroid/hardware/Sensor;

    if-eqz p1, :cond_a

    iget-object v3, p0, Lorg/telegram/ui/bots/BotSensors;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lorg/telegram/ui/bots/BotSensors;->absoluteOrientationListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v3, v4, p1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    :cond_a
    iget-object p1, p0, Lorg/telegram/ui/bots/BotSensors;->orientationMagnetometer:Landroid/hardware/Sensor;

    if-eqz p1, :cond_b

    iget-object v3, p0, Lorg/telegram/ui/bots/BotSensors;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lorg/telegram/ui/bots/BotSensors;->absoluteOrientationListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v3, v4, p1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    :cond_b
    iput-object v2, p0, Lorg/telegram/ui/bots/BotSensors;->orientationAccelerometer:Landroid/hardware/Sensor;

    iput-object v2, p0, Lorg/telegram/ui/bots/BotSensors;->orientationMagnetometer:Landroid/hardware/Sensor;

    :cond_c
    iget-object p1, p0, Lorg/telegram/ui/bots/BotSensors;->rotation:Landroid/hardware/Sensor;

    if-eqz p1, :cond_d

    return v0

    :cond_d
    iget-object p1, p0, Lorg/telegram/ui/bots/BotSensors;->sensorManager:Landroid/hardware/SensorManager;

    const/16 v2, 0xf

    invoke-virtual {p1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/bots/BotSensors;->rotation:Landroid/hardware/Sensor;

    if-nez p1, :cond_e

    return v1

    :cond_e
    iput-wide p2, p0, Lorg/telegram/ui/bots/BotSensors;->relativeOrientationDesiredRefreshRate:J

    iget-boolean v1, p0, Lorg/telegram/ui/bots/BotSensors;->paused:Z

    if-nez v1, :cond_f

    iget-object v1, p0, Lorg/telegram/ui/bots/BotSensors;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lorg/telegram/ui/bots/BotSensors;->relativeOrientationListener:Landroid/hardware/SensorEventListener;

    invoke-static {p2, p3}, Lorg/telegram/ui/bots/BotSensors;->getSensorDelay(J)I

    move-result p2

    invoke-virtual {v1, v2, p1, p2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_f
    :goto_1
    return v0
.end method

.method public stopAccelerometer()Z
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/bots/BotSensors;->sensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/bots/BotSensors;->accelerometer:Landroid/hardware/Sensor;

    const/4 v2, 0x1

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget-boolean v3, p0, Lorg/telegram/ui/bots/BotSensors;->paused:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/bots/BotSensors;->accelerometerListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v3, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/bots/BotSensors;->accelerometerListenerPostponed:Ljava/lang/Runnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lorg/telegram/ui/bots/BotSensors;->accelerometerListenerPostponed:Ljava/lang/Runnable;

    :cond_3
    iput-object v1, p0, Lorg/telegram/ui/bots/BotSensors;->accelerometer:Landroid/hardware/Sensor;

    return v2
.end method

.method public stopAll()V
    .locals 0

    invoke-virtual {p0}, Lorg/telegram/ui/bots/BotSensors;->stopOrientation()Z

    invoke-virtual {p0}, Lorg/telegram/ui/bots/BotSensors;->stopGyroscope()Z

    invoke-virtual {p0}, Lorg/telegram/ui/bots/BotSensors;->stopAccelerometer()Z

    return-void
.end method

.method public stopGyroscope()Z
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/bots/BotSensors;->sensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/bots/BotSensors;->gyroscope:Landroid/hardware/Sensor;

    const/4 v2, 0x1

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget-boolean v3, p0, Lorg/telegram/ui/bots/BotSensors;->paused:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/bots/BotSensors;->gyroscopeListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v3, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/bots/BotSensors;->gyroscopeListenerPostponed:Ljava/lang/Runnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lorg/telegram/ui/bots/BotSensors;->gyroscopeListenerPostponed:Ljava/lang/Runnable;

    :cond_3
    iput-object v1, p0, Lorg/telegram/ui/bots/BotSensors;->gyroscope:Landroid/hardware/Sensor;

    return v2
.end method

.method public stopOrientation()Z
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/bots/BotSensors;->sensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/bots/BotSensors;->orientationAccelerometer:Landroid/hardware/Sensor;

    const/4 v2, 0x1

    if-nez v1, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/bots/BotSensors;->orientationMagnetometer:Landroid/hardware/Sensor;

    if-nez v3, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/bots/BotSensors;->rotation:Landroid/hardware/Sensor;

    if-nez v3, :cond_1

    return v2

    :cond_1
    iget-boolean v3, p0, Lorg/telegram/ui/bots/BotSensors;->paused:Z

    if-nez v3, :cond_4

    if-eqz v1, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/bots/BotSensors;->absoluteOrientationListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v3, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/bots/BotSensors;->orientationMagnetometer:Landroid/hardware/Sensor;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/bots/BotSensors;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lorg/telegram/ui/bots/BotSensors;->absoluteOrientationListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v1, v3, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/bots/BotSensors;->rotation:Landroid/hardware/Sensor;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/bots/BotSensors;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lorg/telegram/ui/bots/BotSensors;->relativeOrientationListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v1, v3, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/bots/BotSensors;->absoluteOrientationListenerPostponed:Ljava/lang/Runnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lorg/telegram/ui/bots/BotSensors;->absoluteOrientationListenerPostponed:Ljava/lang/Runnable;

    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/bots/BotSensors;->relativeOrientationListenerPostponed:Ljava/lang/Runnable;

    if-eqz v0, :cond_6

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lorg/telegram/ui/bots/BotSensors;->relativeOrientationListenerPostponed:Ljava/lang/Runnable;

    :cond_6
    iput-object v1, p0, Lorg/telegram/ui/bots/BotSensors;->orientationAccelerometer:Landroid/hardware/Sensor;

    iput-object v1, p0, Lorg/telegram/ui/bots/BotSensors;->orientationMagnetometer:Landroid/hardware/Sensor;

    iput-object v1, p0, Lorg/telegram/ui/bots/BotSensors;->rotation:Landroid/hardware/Sensor;

    return v2
.end method
