.class Lcom/huawei/hms/maps/mae$1;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hms/maps/mae;->a(Landroid/view/View;)Landroid/graphics/drawable/Drawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/huawei/hms/maps/mae;

.field private final c:Landroid/graphics/Paint;


# direct methods
.method constructor <init>(Lcom/huawei/hms/maps/mae;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hms/maps/mae$1;->b:Lcom/huawei/hms/maps/mae;

    iput-object p2, p0, Lcom/huawei/hms/maps/mae$1;->a:Landroid/view/View;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/huawei/hms/maps/mae$1;->c:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object p2, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    sget-object p2, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    const p2, -0x424344

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/huawei/hms/maps/mae$1;->b:Lcom/huawei/hms/maps/mae;

    invoke-static {v1}, Lcom/huawei/hms/maps/mae;->a(Lcom/huawei/hms/maps/mae;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lcom/huawei/hms/maps/mae$1;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v2, v0, Lcom/huawei/hms/maps/mae$1;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "drawBackground: h = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "; w = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MapBackground"

    invoke-static {v4, v3}, Lcom/huawei/hms/maps/utils/LogM;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x60

    int-to-double v4, v3

    const-wide v6, 0x3fcd70a3d70a3d71L    # 0.23

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v4

    double-to-float v6, v6

    const-wide v7, 0x3fec7ae147ae147bL    # 0.89

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v7

    double-to-float v4, v4

    int-to-float v2, v2

    sub-float v5, v2, v6

    int-to-float v3, v3

    div-float/2addr v5, v3

    float-to-int v5, v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    if-gt v8, v5, :cond_1

    mul-int/lit8 v9, v8, 0x60

    int-to-float v9, v9

    add-float v14, v9, v6

    int-to-float v13, v1

    iget-object v15, v0, Lcom/huawei/hms/maps/mae$1;->c:Landroid/graphics/Paint;

    const/4 v11, 0x0

    move-object/from16 v10, p1

    move v12, v14

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    int-to-float v1, v1

    sub-float/2addr v1, v4

    div-float/2addr v1, v3

    float-to-int v1, v1

    const/4 v3, 0x0

    :goto_1
    if-gt v3, v1, :cond_2

    mul-int/lit8 v5, v3, 0x60

    int-to-float v5, v5

    add-float v10, v5, v4

    const/4 v9, 0x0

    iget-object v12, v0, Lcom/huawei/hms/maps/mae$1;->c:Landroid/graphics/Paint;

    move-object/from16 v7, p1

    move v8, v10

    move v11, v2

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    iget-object v1, v0, Lcom/huawei/hms/maps/mae$1;->b:Lcom/huawei/hms/maps/mae;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/huawei/hms/maps/mae;->a(Lcom/huawei/hms/maps/mae;Z)Z

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
