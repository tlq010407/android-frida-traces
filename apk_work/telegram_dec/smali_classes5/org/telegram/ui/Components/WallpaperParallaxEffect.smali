.class public Lorg/telegram/ui/Components/WallpaperParallaxEffect;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/WallpaperParallaxEffect$Callback;
    }
.end annotation


# instance fields
.field private accelerometer:Landroid/hardware/Sensor;

.field private bufferOffset:I

.field private callback:Lorg/telegram/ui/Components/WallpaperParallaxEffect$Callback;

.field private enabled:Z

.field private pitchBuffer:[F

.field private rollBuffer:[F

.field private sensorManager:Landroid/hardware/SensorManager;

.field private wm:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v1, v0, [F

    iput-object v1, p0, Lorg/telegram/ui/Components/WallpaperParallaxEffect;->rollBuffer:[F

    new-array v0, v0, [F

    iput-object v0, p0, Lorg/telegram/ui/Components/WallpaperParallaxEffect;->pitchBuffer:[F

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lorg/telegram/ui/Components/WallpaperParallaxEffect;->wm:Landroid/view/WindowManager;

    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lorg/telegram/ui/Components/WallpaperParallaxEffect;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/WallpaperParallaxEffect;->accelerometer:Landroid/hardware/Sensor;

    return-void
.end method


# virtual methods
.method public getScale(II)F
    .locals 2

    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float p1, p1

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    add-float v1, p1, v0

    div-float/2addr v1, p1

    int-to-float p1, p2

    add-float/2addr v0, p1

    div-float/2addr v0, p1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    return p1
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Components/WallpaperParallaxEffect;->wm:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    move-object/from16 v2, p1

    iget-object v2, v2, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x0

    aget v4, v2, v3

    const v5, 0x411ce80a

    div-float/2addr v4, v5

    const/4 v6, 0x1

    aget v7, v2, v6

    div-float/2addr v7, v5

    const/4 v8, 0x2

    aget v2, v2, v8

    div-float/2addr v2, v5

    float-to-double v9, v4

    mul-float v5, v7, v7

    mul-float v2, v2, v2

    add-float/2addr v5, v2

    float-to-double v11, v5

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v9

    const-wide v11, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v9, v11

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    mul-double v9, v9, v13

    double-to-float v5, v9

    float-to-double v9, v7

    mul-float v4, v4, v4

    add-float/2addr v4, v2

    float-to-double v3, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    invoke-static {v9, v10, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    div-double/2addr v2, v11

    mul-double v2, v2, v13

    double-to-float v2, v2

    if-eq v1, v6, :cond_2

    if-eq v1, v8, :cond_1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_0

    move v15, v5

    move v5, v2

    move v2, v15

    goto :goto_0

    :cond_0
    neg-float v5, v5

    goto :goto_0

    :cond_1
    neg-float v1, v2

    neg-float v5, v5

    move v2, v5

    move v5, v1

    :cond_2
    :goto_0
    iget-object v1, v0, Lorg/telegram/ui/Components/WallpaperParallaxEffect;->rollBuffer:[F

    iget v3, v0, Lorg/telegram/ui/Components/WallpaperParallaxEffect;->bufferOffset:I

    aput v5, v1, v3

    iget-object v4, v0, Lorg/telegram/ui/Components/WallpaperParallaxEffect;->pitchBuffer:[F

    aput v2, v4, v3

    add-int/2addr v3, v6

    array-length v1, v1

    rem-int/2addr v3, v1

    iput v3, v0, Lorg/telegram/ui/Components/WallpaperParallaxEffect;->bufferOffset:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    iget-object v5, v0, Lorg/telegram/ui/Components/WallpaperParallaxEffect;->rollBuffer:[F

    array-length v6, v5

    if-ge v3, v6, :cond_3

    aget v5, v5, v3

    add-float/2addr v2, v5

    iget-object v5, v0, Lorg/telegram/ui/Components/WallpaperParallaxEffect;->pitchBuffer:[F

    aget v5, v5, v3

    add-float/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    array-length v3, v5

    int-to-float v3, v3

    div-float/2addr v2, v3

    array-length v3, v5

    int-to-float v3, v3

    div-float/2addr v4, v3

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v5, -0x40800000    # -1.0f

    cmpl-float v6, v2, v3

    if-lez v6, :cond_4

    const/high16 v6, 0x40000000    # 2.0f

    :goto_2
    sub-float v2, v6, v2

    goto :goto_3

    :cond_4
    cmpg-float v6, v2, v5

    if-gez v6, :cond_5

    const/high16 v6, -0x40000000    # -2.0f

    goto :goto_2

    :cond_5
    :goto_3
    const/high16 v6, 0x41800000    # 16.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v7

    mul-float v7, v7, v4

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v6

    mul-float v6, v6, v2

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    neg-float v4, v4

    const v8, 0x3ee66666    # 0.45f

    div-float/2addr v4, v8

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    neg-float v2, v2

    div-float/2addr v2, v8

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    mul-float v3, v4, v4

    mul-float v8, v2, v2

    add-float/2addr v3, v8

    float-to-double v8, v3

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v3, v8

    div-float/2addr v4, v3

    div-float/2addr v2, v3

    mul-float v3, v4, v5

    mul-float v8, v2, v1

    sub-float/2addr v3, v8

    float-to-double v8, v3

    mul-float v4, v4, v1

    mul-float v2, v2, v5

    add-float/2addr v4, v2

    float-to-double v2, v4

    invoke-static {v8, v9, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    const-wide v4, 0x3f91df46a2529d39L    # 0.017453292519943295

    div-double/2addr v2, v4

    double-to-float v2, v2

    cmpg-float v1, v2, v1

    if-gez v1, :cond_6

    const/high16 v1, 0x43b40000    # 360.0f

    add-float/2addr v2, v1

    :cond_6
    iget-object v1, v0, Lorg/telegram/ui/Components/WallpaperParallaxEffect;->callback:Lorg/telegram/ui/Components/WallpaperParallaxEffect$Callback;

    if-eqz v1, :cond_7

    invoke-interface {v1, v7, v6, v2}, Lorg/telegram/ui/Components/WallpaperParallaxEffect$Callback;->onOffsetsChanged(IIF)V

    :cond_7
    return-void
.end method

.method public setCallback(Lorg/telegram/ui/Components/WallpaperParallaxEffect$Callback;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/WallpaperParallaxEffect;->callback:Lorg/telegram/ui/Components/WallpaperParallaxEffect$Callback;

    return-void
.end method

.method public setEnabled(Z)V
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/WallpaperParallaxEffect;->enabled:Z

    if-eq v0, p1, :cond_2

    iput-boolean p1, p0, Lorg/telegram/ui/Components/WallpaperParallaxEffect;->enabled:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/WallpaperParallaxEffect;->accelerometer:Landroid/hardware/Sensor;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/WallpaperParallaxEffect;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    invoke-virtual {p1, p0, v0, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/WallpaperParallaxEffect;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {p1, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_2
    :goto_0
    return-void
.end method
