.class Lorg/telegram/ui/Components/SnowflakesEffect$Particle;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/SnowflakesEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Particle"
.end annotation


# instance fields
.field alpha:F

.field currentTime:F

.field lifeTime:F

.field scale:F

.field final synthetic this$0:Lorg/telegram/ui/Components/SnowflakesEffect;

.field type:I

.field velocity:F

.field vx:F

.field vy:F

.field x:F

.field y:F


# direct methods
.method private constructor <init>(Lorg/telegram/ui/Components/SnowflakesEffect;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/SnowflakesEffect$Particle;->this$0:Lorg/telegram/ui/Components/SnowflakesEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/Components/SnowflakesEffect;Lorg/telegram/ui/Components/SnowflakesEffect$1;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SnowflakesEffect$Particle;-><init>(Lorg/telegram/ui/Components/SnowflakesEffect;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lorg/telegram/ui/Components/SnowflakesEffect$Particle;->type:I

    if-eqz v2, :cond_1

    iget-object v2, v0, Lorg/telegram/ui/Components/SnowflakesEffect$Particle;->this$0:Lorg/telegram/ui/Components/SnowflakesEffect;

    iget-object v4, v2, Lorg/telegram/ui/Components/SnowflakesEffect;->particleBitmap:Landroid/graphics/Bitmap;

    if-nez v4, :cond_0

    invoke-static {v2}, Lorg/telegram/ui/Components/SnowflakesEffect;->access$100(Lorg/telegram/ui/Components/SnowflakesEffect;)Landroid/graphics/Paint;

    move-result-object v2

    const/16 v4, 0xff

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, v0, Lorg/telegram/ui/Components/SnowflakesEffect$Particle;->this$0:Lorg/telegram/ui/Components/SnowflakesEffect;

    const/high16 v4, 0x41800000    # 16.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v4, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v2, Lorg/telegram/ui/Components/SnowflakesEffect;->particleBitmap:Landroid/graphics/Bitmap;

    new-instance v2, Landroid/graphics/Canvas;

    iget-object v4, v0, Lorg/telegram/ui/Components/SnowflakesEffect$Particle;->this$0:Lorg/telegram/ui/Components/SnowflakesEffect;

    iget-object v4, v4, Lorg/telegram/ui/Components/SnowflakesEffect;->particleBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v2, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v5

    mul-float v11, v5, v4

    const v5, 0x3f11eb85    # 0.57f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v5

    neg-float v5, v5

    mul-float v12, v5, v4

    const v5, 0x3fc66666    # 1.55f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v5

    mul-float v4, v4, v5

    const v5, -0x4036f025

    const/4 v6, 0x0

    const v13, -0x4036f025

    const/4 v14, 0x0

    :goto_0
    const/4 v5, 0x6

    if-ge v14, v5, :cond_0

    const/high16 v5, 0x41000000    # 8.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v15, v6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v10, v5

    float-to-double v8, v13

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    double-to-float v5, v5

    mul-float v5, v5, v11

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v6, v6

    mul-float v6, v6, v11

    const v7, 0x3f28f5c3    # 0.66f

    mul-float v16, v5, v7

    mul-float v17, v6, v7

    add-float v18, v15, v5

    add-float v19, v10, v6

    iget-object v5, v0, Lorg/telegram/ui/Components/SnowflakesEffect$Particle;->this$0:Lorg/telegram/ui/Components/SnowflakesEffect;

    invoke-static {v5}, Lorg/telegram/ui/Components/SnowflakesEffect;->access$100(Lorg/telegram/ui/Components/SnowflakesEffect;)Landroid/graphics/Paint;

    move-result-object v20

    move-object v5, v2

    move v6, v15

    move v7, v10

    move-wide/from16 v21, v8

    move/from16 v8, v18

    move/from16 v9, v19

    move/from16 v18, v10

    move-object/from16 v10, v20

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const-wide v5, 0x3ff921fb54442d18L    # 1.5707963267948966

    invoke-static/range {v21 .. v22}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v8, v21, v5

    double-to-float v5, v8

    float-to-double v9, v5

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    float-to-double v7, v12

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v7

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v19

    move/from16 v21, v11

    move/from16 v22, v12

    float-to-double v11, v4

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v19, v19, v11

    sub-double v5, v5, v19

    double-to-float v5, v5

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v19

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v19, v19, v7

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v23

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v23, v23, v11

    move/from16 v25, v4

    add-double v3, v19, v23

    double-to-float v3, v3

    add-float v4, v15, v16

    add-float v16, v18, v17

    add-float v17, v15, v5

    add-float v3, v18, v3

    iget-object v5, v0, Lorg/telegram/ui/Components/SnowflakesEffect$Particle;->this$0:Lorg/telegram/ui/Components/SnowflakesEffect;

    invoke-static {v5}, Lorg/telegram/ui/Components/SnowflakesEffect;->access$100(Lorg/telegram/ui/Components/SnowflakesEffect;)Landroid/graphics/Paint;

    move-result-object v19

    move-object v5, v2

    move v6, v4

    move-wide/from16 v23, v7

    move/from16 v7, v16

    move/from16 v8, v17

    move-wide/from16 v26, v9

    move v9, v3

    move-object/from16 v10, v19

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    neg-double v5, v5

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v23

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v11

    sub-double/2addr v5, v7

    double-to-float v3, v5

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    neg-double v5, v5

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v23

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v11

    add-double/2addr v5, v7

    double-to-float v5, v5

    add-float v8, v15, v3

    add-float v9, v18, v5

    iget-object v3, v0, Lorg/telegram/ui/Components/SnowflakesEffect$Particle;->this$0:Lorg/telegram/ui/Components/SnowflakesEffect;

    invoke-static {v3}, Lorg/telegram/ui/Components/SnowflakesEffect;->access$100(Lorg/telegram/ui/Components/SnowflakesEffect;)Landroid/graphics/Paint;

    move-result-object v10

    move-object v5, v2

    move v6, v4

    move/from16 v7, v16

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const v3, 0x3f860a92

    add-float/2addr v13, v3

    add-int/lit8 v14, v14, 0x1

    move/from16 v11, v21

    move/from16 v12, v22

    move/from16 v4, v25

    goto/16 :goto_0

    :cond_0
    iget-object v2, v0, Lorg/telegram/ui/Components/SnowflakesEffect$Particle;->this$0:Lorg/telegram/ui/Components/SnowflakesEffect;

    invoke-static {v2}, Lorg/telegram/ui/Components/SnowflakesEffect;->access$200(Lorg/telegram/ui/Components/SnowflakesEffect;)Landroid/graphics/Paint;

    move-result-object v2

    iget v3, v0, Lorg/telegram/ui/Components/SnowflakesEffect$Particle;->alpha:F

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float v3, v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v2, v0, Lorg/telegram/ui/Components/SnowflakesEffect$Particle;->scale:F

    iget v3, v0, Lorg/telegram/ui/Components/SnowflakesEffect$Particle;->x:F

    iget v4, v0, Lorg/telegram/ui/Components/SnowflakesEffect$Particle;->y:F

    invoke-virtual {v1, v2, v2, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v2, v0, Lorg/telegram/ui/Components/SnowflakesEffect$Particle;->this$0:Lorg/telegram/ui/Components/SnowflakesEffect;

    iget-object v3, v2, Lorg/telegram/ui/Components/SnowflakesEffect;->particleBitmap:Landroid/graphics/Bitmap;

    iget v4, v0, Lorg/telegram/ui/Components/SnowflakesEffect$Particle;->x:F

    iget v5, v0, Lorg/telegram/ui/Components/SnowflakesEffect$Particle;->y:F

    invoke-static {v2}, Lorg/telegram/ui/Components/SnowflakesEffect;->access$200(Lorg/telegram/ui/Components/SnowflakesEffect;)Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1

    :cond_1
    iget-object v2, v0, Lorg/telegram/ui/Components/SnowflakesEffect$Particle;->this$0:Lorg/telegram/ui/Components/SnowflakesEffect;

    invoke-static {v2}, Lorg/telegram/ui/Components/SnowflakesEffect;->access$000(Lorg/telegram/ui/Components/SnowflakesEffect;)Landroid/graphics/Paint;

    move-result-object v2

    iget v3, v0, Lorg/telegram/ui/Components/SnowflakesEffect$Particle;->alpha:F

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float v3, v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v2, v0, Lorg/telegram/ui/Components/SnowflakesEffect$Particle;->x:F

    iget v3, v0, Lorg/telegram/ui/Components/SnowflakesEffect$Particle;->y:F

    iget-object v4, v0, Lorg/telegram/ui/Components/SnowflakesEffect$Particle;->this$0:Lorg/telegram/ui/Components/SnowflakesEffect;

    invoke-static {v4}, Lorg/telegram/ui/Components/SnowflakesEffect;->access$000(Lorg/telegram/ui/Components/SnowflakesEffect;)Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    :goto_1
    return-void
.end method
