.class public Lorg/telegram/ui/Components/EarListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field private accelerometerSensor:Landroid/hardware/Sensor;

.field private accelerometerVertical:Z

.field private attached:Z

.field private final audioManager:Landroid/media/AudioManager;

.field private final context:Landroid/content/Context;

.field private countLess:I

.field private currentPlayer:Lorg/telegram/ui/Components/VideoPlayer;

.field private gravity:[F

.field private gravityFast:[F

.field private gravitySensor:Landroid/hardware/Sensor;

.field private lastAccelerometerDetected:J

.field private lastProximityValue:F

.field private lastTimestamp:J

.field private linearAcceleration:[F

.field private linearSensor:Landroid/hardware/Sensor;

.field private final powerManager:Landroid/os/PowerManager;

.field private previousAccValue:F

.field private proximityHasDifferentValues:Z

.field private proximitySensor:Landroid/hardware/Sensor;

.field private proximityTouched:Z

.field private proximityWakeLock:Landroid/os/PowerManager$WakeLock;

.field private raised:Z

.field private raisedToBack:I

.field private raisedToTop:I

.field private raisedToTopSign:I

.field private final sensorManager:Landroid/hardware/SensorManager;

.field private timeSinceRaise:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/ui/Components/EarListener;->lastTimestamp:J

    const/high16 v0, -0x3d380000    # -100.0f

    iput v0, p0, Lorg/telegram/ui/Components/EarListener;->lastProximityValue:F

    const/4 v0, 0x3

    new-array v1, v0, [F

    iput-object v1, p0, Lorg/telegram/ui/Components/EarListener;->gravity:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lorg/telegram/ui/Components/EarListener;->gravityFast:[F

    new-array v0, v0, [F

    iput-object v0, p0, Lorg/telegram/ui/Components/EarListener;->linearAcceleration:[F

    iput-object p1, p0, Lorg/telegram/ui/Components/EarListener;->context:Landroid/content/Context;

    sget-object p1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lorg/telegram/ui/Components/EarListener;->sensorManager:Landroid/hardware/SensorManager;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/EarListener;->proximitySensor:Landroid/hardware/Sensor;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/EarListener;->linearSensor:Landroid/hardware/Sensor;

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/EarListener;->gravitySensor:Landroid/hardware/Sensor;

    iget-object v1, p0, Lorg/telegram/ui/Components/EarListener;->linearSensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_0

    if-nez v0, :cond_2

    :cond_0
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_1

    const-string v0, "gravity or linear sensor not found"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/EarListener;->accelerometerSensor:Landroid/hardware/Sensor;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/Components/EarListener;->linearSensor:Landroid/hardware/Sensor;

    iput-object p1, p0, Lorg/telegram/ui/Components/EarListener;->gravitySensor:Landroid/hardware/Sensor;

    :cond_2
    sget-object p1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lorg/telegram/ui/Components/EarListener;->powerManager:Landroid/os/PowerManager;

    const/16 v0, 0x20

    const-string v1, "telegram:proximity_lock2"

    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/EarListener;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    sget-object p1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lorg/telegram/ui/Components/EarListener;->audioManager:Landroid/media/AudioManager;

    return-void
.end method

.method private disableWakeLockWhenNotUsed()Z
    .locals 2

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "samsung"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private isNearToSensor(F)Z
    .locals 1

    const/high16 v0, 0x40a00000    # 5.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/EarListener;->proximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v0

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public attach()V
    .locals 3

    iget-boolean v0, p0, Lorg/telegram/ui/Components/EarListener;->attached:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/EarListener;->gravitySensor:Landroid/hardware/Sensor;

    const/16 v1, 0x7530

    if-eqz v0, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/EarListener;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v2, p0, v0, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EarListener;->linearSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Components/EarListener;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v2, p0, v0, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/EarListener;->accelerometerSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Components/EarListener;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v2, p0, v0, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/EarListener;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lorg/telegram/ui/Components/EarListener;->proximitySensor:Landroid/hardware/Sensor;

    const/4 v2, 0x3

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/EarListener;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lorg/telegram/ui/Components/EarListener;->disableWakeLockWhenNotUsed()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/EarListener;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/EarListener;->attached:Z

    :cond_4
    return-void
.end method

.method public attachPlayer(Lorg/telegram/ui/Components/VideoPlayer;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/EarListener;->currentPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/EarListener;->updateRaised()V

    return-void
.end method

.method public detach()V
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/EarListener;->attached:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/EarListener;->gravitySensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/EarListener;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, p0, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EarListener;->linearSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/EarListener;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, p0, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/EarListener;->accelerometerSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Components/EarListener;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, p0, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/EarListener;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lorg/telegram/ui/Components/EarListener;->proximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/EarListener;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/EarListener;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/EarListener;->attached:Z

    :cond_4
    return-void
.end method

.method protected forbidRaiseToListen()Z
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    const/4 v3, 0x1

    if-lt v1, v2, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/Components/EarListener;->audioManager:Landroid/media/AudioManager;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lorg/telegram/messenger/MediaController$$ExternalSyntheticApiModelOutline1;->m(Landroid/media/AudioManager;I)[Landroid/media/AudioDeviceInfo;

    move-result-object v1

    array-length v2, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    invoke-static {v5}, Lorg/telegram/messenger/MediaController$$ExternalSyntheticApiModelOutline2;->m(Landroid/media/AudioDeviceInfo;)I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_0

    const/4 v7, 0x7

    if-eq v6, v7, :cond_0

    const/16 v7, 0x1a

    if-eq v6, v7, :cond_0

    const/16 v7, 0x1b

    if-eq v6, v7, :cond_0

    const/4 v7, 0x4

    if-eq v6, v7, :cond_0

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    :cond_0
    invoke-static {v5}, Lorg/telegram/messenger/MediaController$$ExternalSyntheticApiModelOutline3;->m(Landroid/media/AudioDeviceInfo;)Z

    move-result v5

    if-eqz v5, :cond_1

    return v3

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_2
    return v0

    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Components/EarListener;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/Components/EarListener;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/Components/EarListener;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_5

    :cond_4
    const/4 v0, 0x1

    :cond_5
    return v0

    :goto_1
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, Lorg/telegram/ui/Components/EarListener;->attached:Z

    if-eqz v2, :cond_26

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v2

    if-eqz v2, :cond_0

    goto/16 :goto_c

    :cond_0
    iget-object v2, v1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    const/16 v3, 0x8

    const-wide/16 v4, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-ne v2, v3, :cond_3

    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "proximity changed to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " max value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_1
    iget v2, v0, Lorg/telegram/ui/Components/EarListener;->lastProximityValue:F

    iget-object v3, v1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v8

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_2

    iput-boolean v7, v0, Lorg/telegram/ui/Components/EarListener;->proximityHasDifferentValues:Z

    :cond_2
    iput v3, v0, Lorg/telegram/ui/Components/EarListener;->lastProximityValue:F

    iget-boolean v2, v0, Lorg/telegram/ui/Components/EarListener;->proximityHasDifferentValues:Z

    if-eqz v2, :cond_7

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/EarListener;->isNearToSensor(F)Z

    move-result v2

    iput-boolean v2, v0, Lorg/telegram/ui/Components/EarListener;->proximityTouched:Z

    goto/16 :goto_1

    :cond_3
    iget-object v2, v1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    iget-object v3, v0, Lorg/telegram/ui/Components/EarListener;->accelerometerSensor:Landroid/hardware/Sensor;

    if-ne v2, v3, :cond_5

    iget-wide v2, v0, Lorg/telegram/ui/Components/EarListener;->lastTimestamp:J

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    cmp-long v11, v2, v4

    if-nez v11, :cond_4

    const-wide v2, 0x3fef5c2900000000L    # 0.9800000190734863

    goto :goto_0

    :cond_4
    iget-wide v11, v1, Landroid/hardware/SensorEvent;->timestamp:J

    sub-long/2addr v11, v2

    long-to-double v2, v11

    const-wide v11, 0x41cdcd6500000000L    # 1.0E9

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v11

    add-double/2addr v2, v9

    div-double v2, v9, v2

    :goto_0
    iget-wide v11, v1, Landroid/hardware/SensorEvent;->timestamp:J

    iput-wide v11, v0, Lorg/telegram/ui/Components/EarListener;->lastTimestamp:J

    iget-object v11, v0, Lorg/telegram/ui/Components/EarListener;->gravity:[F

    aget v12, v11, v8

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v12, v12, v2

    sub-double/2addr v9, v2

    iget-object v14, v1, Landroid/hardware/SensorEvent;->values:[F

    aget v15, v14, v8

    float-to-double v4, v15

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v9

    add-double/2addr v12, v4

    double-to-float v4, v12

    aput v4, v11, v8

    aget v5, v11, v7

    float-to-double v12, v5

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v12, v12, v2

    aget v5, v14, v7

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v9

    add-double/2addr v12, v6

    double-to-float v5, v12

    const/4 v6, 0x1

    aput v5, v11, v6

    const/4 v6, 0x2

    aget v7, v11, v6

    float-to-double v12, v7

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v12

    aget v7, v14, v6

    float-to-double v12, v7

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v9, v9, v12

    add-double/2addr v2, v9

    double-to-float v2, v2

    aput v2, v11, v6

    iget-object v3, v0, Lorg/telegram/ui/Components/EarListener;->gravityFast:[F

    const v6, 0x3f4ccccd    # 0.8f

    mul-float v4, v4, v6

    aget v7, v14, v8

    const v9, 0x3e4ccccc    # 0.19999999f

    mul-float v7, v7, v9

    add-float/2addr v4, v7

    aput v4, v3, v8

    mul-float v5, v5, v6

    const/4 v4, 0x1

    aget v7, v14, v4

    mul-float v7, v7, v9

    add-float/2addr v5, v7

    aput v5, v3, v4

    mul-float v2, v2, v6

    const/4 v5, 0x2

    aget v6, v14, v5

    mul-float v6, v6, v9

    add-float/2addr v2, v6

    aput v2, v3, v5

    iget-object v2, v0, Lorg/telegram/ui/Components/EarListener;->linearAcceleration:[F

    aget v3, v14, v8

    aget v6, v11, v8

    sub-float/2addr v3, v6

    aput v3, v2, v8

    aget v3, v14, v4

    aget v6, v11, v4

    sub-float/2addr v3, v6

    aput v3, v2, v4

    aget v3, v14, v5

    aget v4, v11, v5

    sub-float/2addr v3, v4

    aput v3, v2, v5

    goto :goto_1

    :cond_5
    const/4 v5, 0x2

    iget-object v3, v0, Lorg/telegram/ui/Components/EarListener;->linearSensor:Landroid/hardware/Sensor;

    if-ne v2, v3, :cond_6

    iget-object v2, v0, Lorg/telegram/ui/Components/EarListener;->linearAcceleration:[F

    iget-object v3, v1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v3, v8

    aput v4, v2, v8

    const/4 v4, 0x1

    aget v6, v3, v4

    aput v6, v2, v4

    aget v3, v3, v5

    aput v3, v2, v5

    goto :goto_1

    :cond_6
    iget-object v3, v0, Lorg/telegram/ui/Components/EarListener;->gravitySensor:Landroid/hardware/Sensor;

    if-ne v2, v3, :cond_7

    iget-object v2, v0, Lorg/telegram/ui/Components/EarListener;->gravityFast:[F

    iget-object v3, v0, Lorg/telegram/ui/Components/EarListener;->gravity:[F

    iget-object v4, v1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v4, v8

    aput v5, v3, v8

    aput v5, v2, v8

    const/4 v5, 0x1

    aget v6, v4, v5

    aput v6, v3, v5

    aput v6, v2, v5

    const/4 v5, 0x2

    aget v4, v4, v5

    aput v4, v3, v5

    aput v4, v2, v5

    :cond_7
    :goto_1
    iget-object v1, v1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    iget-object v2, v0, Lorg/telegram/ui/Components/EarListener;->linearSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x6

    if-eq v1, v2, :cond_8

    iget-object v2, v0, Lorg/telegram/ui/Components/EarListener;->gravitySensor:Landroid/hardware/Sensor;

    if-eq v1, v2, :cond_8

    iget-object v2, v0, Lorg/telegram/ui/Components/EarListener;->accelerometerSensor:Landroid/hardware/Sensor;

    if-ne v1, v2, :cond_18

    :cond_8
    iget-object v1, v0, Lorg/telegram/ui/Components/EarListener;->gravity:[F

    aget v2, v1, v8

    iget-object v4, v0, Lorg/telegram/ui/Components/EarListener;->linearAcceleration:[F

    aget v5, v4, v8

    mul-float v2, v2, v5

    const/4 v5, 0x1

    aget v6, v1, v5

    aget v7, v4, v5

    mul-float v6, v6, v7

    add-float/2addr v2, v6

    const/4 v5, 0x2

    aget v1, v1, v5

    aget v4, v4, v5

    mul-float v1, v1, v4

    add-float/2addr v2, v1

    iget v1, v0, Lorg/telegram/ui/Components/EarListener;->raisedToBack:I

    if-eq v1, v3, :cond_16

    const/4 v4, 0x0

    cmpl-float v5, v2, v4

    if-lez v5, :cond_9

    iget v5, v0, Lorg/telegram/ui/Components/EarListener;->previousAccValue:F

    cmpl-float v5, v5, v4

    if-gtz v5, :cond_a

    :cond_9
    cmpg-float v5, v2, v4

    if-gez v5, :cond_16

    iget v5, v0, Lorg/telegram/ui/Components/EarListener;->previousAccValue:F

    cmpg-float v5, v5, v4

    if-gez v5, :cond_16

    :cond_a
    cmpl-float v4, v2, v4

    if-lez v4, :cond_c

    const/high16 v4, 0x41700000    # 15.0f

    cmpl-float v4, v2, v4

    if-lez v4, :cond_b

    const/4 v4, 0x1

    goto :goto_2

    :cond_b
    const/4 v4, 0x0

    :goto_2
    const/4 v5, 0x1

    goto :goto_4

    :cond_c
    const/high16 v4, -0x3e900000    # -15.0f

    cmpg-float v4, v2, v4

    if-gez v4, :cond_d

    const/4 v4, 0x1

    goto :goto_3

    :cond_d
    const/4 v4, 0x0

    :goto_3
    const/4 v5, 0x2

    :goto_4
    iget v6, v0, Lorg/telegram/ui/Components/EarListener;->raisedToTopSign:I

    const/16 v7, 0xa

    if-eqz v6, :cond_11

    if-eq v6, v5, :cond_11

    iget v5, v0, Lorg/telegram/ui/Components/EarListener;->raisedToTop:I

    if-ne v5, v3, :cond_e

    if-eqz v4, :cond_e

    if-ge v1, v3, :cond_16

    const/4 v4, 0x1

    add-int/2addr v1, v4

    iput v1, v0, Lorg/telegram/ui/Components/EarListener;->raisedToBack:I

    if-ne v1, v3, :cond_16

    iput v8, v0, Lorg/telegram/ui/Components/EarListener;->raisedToTop:I

    iput v8, v0, Lorg/telegram/ui/Components/EarListener;->raisedToTopSign:I

    iput v8, v0, Lorg/telegram/ui/Components/EarListener;->countLess:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lorg/telegram/ui/Components/EarListener;->timeSinceRaise:J

    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_16

    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-eqz v1, :cond_16

    const-string v1, "motion detected"

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    goto :goto_6

    :cond_e
    if-nez v4, :cond_f

    iget v4, v0, Lorg/telegram/ui/Components/EarListener;->countLess:I

    const/4 v6, 0x1

    add-int/2addr v4, v6

    iput v4, v0, Lorg/telegram/ui/Components/EarListener;->countLess:I

    :cond_f
    iget v4, v0, Lorg/telegram/ui/Components/EarListener;->countLess:I

    if-eq v4, v7, :cond_10

    if-ne v5, v3, :cond_10

    if-eqz v1, :cond_16

    :cond_10
    iput v8, v0, Lorg/telegram/ui/Components/EarListener;->raisedToTop:I

    iput v8, v0, Lorg/telegram/ui/Components/EarListener;->raisedToTopSign:I

    iput v8, v0, Lorg/telegram/ui/Components/EarListener;->raisedToBack:I

    :goto_5
    iput v8, v0, Lorg/telegram/ui/Components/EarListener;->countLess:I

    goto :goto_6

    :cond_11
    if-eqz v4, :cond_13

    if-nez v1, :cond_13

    if-eqz v6, :cond_12

    if-ne v6, v5, :cond_13

    :cond_12
    iget v1, v0, Lorg/telegram/ui/Components/EarListener;->raisedToTop:I

    if-ge v1, v3, :cond_16

    iget-boolean v4, v0, Lorg/telegram/ui/Components/EarListener;->proximityTouched:Z

    if-nez v4, :cond_16

    iput v5, v0, Lorg/telegram/ui/Components/EarListener;->raisedToTopSign:I

    const/4 v4, 0x1

    add-int/2addr v1, v4

    iput v1, v0, Lorg/telegram/ui/Components/EarListener;->raisedToTop:I

    if-ne v1, v3, :cond_16

    goto :goto_5

    :cond_13
    if-nez v4, :cond_14

    iget v4, v0, Lorg/telegram/ui/Components/EarListener;->countLess:I

    const/4 v9, 0x1

    add-int/2addr v4, v9

    iput v4, v0, Lorg/telegram/ui/Components/EarListener;->countLess:I

    :cond_14
    if-ne v6, v5, :cond_15

    iget v4, v0, Lorg/telegram/ui/Components/EarListener;->countLess:I

    if-eq v4, v7, :cond_15

    iget v4, v0, Lorg/telegram/ui/Components/EarListener;->raisedToTop:I

    if-ne v4, v3, :cond_15

    if-eqz v1, :cond_16

    :cond_15
    iput v8, v0, Lorg/telegram/ui/Components/EarListener;->raisedToBack:I

    iput v8, v0, Lorg/telegram/ui/Components/EarListener;->raisedToTop:I

    iput v8, v0, Lorg/telegram/ui/Components/EarListener;->raisedToTopSign:I

    goto :goto_5

    :cond_16
    :goto_6
    iput v2, v0, Lorg/telegram/ui/Components/EarListener;->previousAccValue:F

    iget-object v1, v0, Lorg/telegram/ui/Components/EarListener;->gravityFast:[F

    const/4 v2, 0x1

    aget v4, v1, v2

    const/high16 v2, 0x40200000    # 2.5f

    cmpl-float v2, v4, v2

    if-lez v2, :cond_17

    const/4 v2, 0x2

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x40800000    # 4.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_17

    iget-object v1, v0, Lorg/telegram/ui/Components/EarListener;->gravityFast:[F

    aget v1, v1, v8

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x3fc00000    # 1.5f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_17

    const/4 v1, 0x1

    goto :goto_7

    :cond_17
    const/4 v1, 0x0

    :goto_7
    iput-boolean v1, v0, Lorg/telegram/ui/Components/EarListener;->accelerometerVertical:Z

    :cond_18
    iget v1, v0, Lorg/telegram/ui/Components/EarListener;->raisedToBack:I

    if-eq v1, v3, :cond_19

    iget-boolean v1, v0, Lorg/telegram/ui/Components/EarListener;->accelerometerVertical:Z

    if-eqz v1, :cond_1a

    :cond_19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lorg/telegram/ui/Components/EarListener;->lastAccelerometerDetected:J

    :cond_1a
    iget v1, v0, Lorg/telegram/ui/Components/EarListener;->raisedToBack:I

    if-eq v1, v3, :cond_1b

    iget-boolean v1, v0, Lorg/telegram/ui/Components/EarListener;->accelerometerVertical:Z

    if-nez v1, :cond_1b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v4, v0, Lorg/telegram/ui/Components/EarListener;->lastAccelerometerDetected:J

    sub-long/2addr v1, v4

    const-wide/16 v4, 0x3c

    cmp-long v6, v1, v4

    if-gez v6, :cond_1c

    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/EarListener;->forbidRaiseToListen()Z

    move-result v1

    if-nez v1, :cond_1c

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->isAnyKindOfCallActive()Z

    move-result v1

    if-nez v1, :cond_1c

    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/PhotoViewer;->isVisible()Z

    move-result v1

    if-nez v1, :cond_1c

    const/4 v1, 0x1

    goto :goto_8

    :cond_1c
    const/4 v1, 0x0

    :goto_8
    iget-object v2, v0, Lorg/telegram/ui/Components/EarListener;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_20

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/EarListener;->disableWakeLockWhenNotUsed()Z

    move-result v2

    if-eqz v2, :cond_20

    iget-object v2, v0, Lorg/telegram/ui/Components/EarListener;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_1e

    if-nez v1, :cond_1e

    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v2, :cond_1d

    const-string v2, "wake lock releasing"

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_1d
    iget-object v2, v0, Lorg/telegram/ui/Components/EarListener;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_9

    :cond_1e
    if-nez v2, :cond_20

    if-eqz v1, :cond_20

    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v2, :cond_1f

    const-string v2, "wake lock acquiring"

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_1f
    iget-object v2, v0, Lorg/telegram/ui/Components/EarListener;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_20
    :goto_9
    iget-boolean v2, v0, Lorg/telegram/ui/Components/EarListener;->proximityTouched:Z

    if-eqz v2, :cond_22

    if-eqz v1, :cond_22

    iget-boolean v1, v0, Lorg/telegram/ui/Components/EarListener;->raised:Z

    if-nez v1, :cond_21

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/ui/Components/EarListener;->raised:Z

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/EarListener;->updateRaised()V

    :cond_21
    iput v8, v0, Lorg/telegram/ui/Components/EarListener;->raisedToBack:I

    iput v8, v0, Lorg/telegram/ui/Components/EarListener;->raisedToTop:I

    iput v8, v0, Lorg/telegram/ui/Components/EarListener;->raisedToTopSign:I

    iput v8, v0, Lorg/telegram/ui/Components/EarListener;->countLess:I

    goto :goto_b

    :cond_22
    if-eqz v2, :cond_24

    iget-object v1, v0, Lorg/telegram/ui/Components/EarListener;->accelerometerSensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_23

    iget-object v1, v0, Lorg/telegram/ui/Components/EarListener;->linearSensor:Landroid/hardware/Sensor;

    if-nez v1, :cond_24

    :cond_23
    iget-object v1, v0, Lorg/telegram/ui/Components/EarListener;->gravitySensor:Landroid/hardware/Sensor;

    if-nez v1, :cond_24

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->isAnyKindOfCallActive()Z

    move-result v1

    if-nez v1, :cond_24

    iget-boolean v1, v0, Lorg/telegram/ui/Components/EarListener;->raised:Z

    if-nez v1, :cond_25

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/ui/Components/EarListener;->raised:Z

    :goto_a
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/EarListener;->updateRaised()V

    goto :goto_b

    :cond_24
    iget-boolean v1, v0, Lorg/telegram/ui/Components/EarListener;->proximityTouched:Z

    if-nez v1, :cond_25

    iget-boolean v1, v0, Lorg/telegram/ui/Components/EarListener;->raised:Z

    if-eqz v1, :cond_25

    iput-boolean v8, v0, Lorg/telegram/ui/Components/EarListener;->raised:Z

    goto :goto_a

    :cond_25
    :goto_b
    iget-wide v1, v0, Lorg/telegram/ui/Components/EarListener;->timeSinceRaise:J

    const-wide/16 v4, 0x0

    cmp-long v6, v1, v4

    if-eqz v6, :cond_26

    iget v1, v0, Lorg/telegram/ui/Components/EarListener;->raisedToBack:I

    if-ne v1, v3, :cond_26

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Lorg/telegram/ui/Components/EarListener;->timeSinceRaise:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    cmp-long v5, v1, v3

    if-lez v5, :cond_26

    iput v8, v0, Lorg/telegram/ui/Components/EarListener;->raisedToBack:I

    iput v8, v0, Lorg/telegram/ui/Components/EarListener;->raisedToTop:I

    iput v8, v0, Lorg/telegram/ui/Components/EarListener;->raisedToTopSign:I

    iput v8, v0, Lorg/telegram/ui/Components/EarListener;->countLess:I

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lorg/telegram/ui/Components/EarListener;->timeSinceRaise:J

    :cond_26
    :goto_c
    return-void
.end method

.method protected updateRaised()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/EarListener;->currentPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lorg/telegram/ui/Components/EarListener;->raised:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    :goto_0
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoPlayer;->setStreamType(I)V

    return-void
.end method
