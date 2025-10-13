.class Lorg/telegram/ui/Components/Premium/MatrixParticlesDrawable$MatrixTextParticle;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/Premium/MatrixParticlesDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MatrixTextParticle"
.end annotation


# instance fields
.field index:I

.field lastUpdateTime:J

.field nextIndex:I

.field nextUpdateTime:J

.field final synthetic this$0:Lorg/telegram/ui/Components/Premium/MatrixParticlesDrawable;


# direct methods
.method private constructor <init>(Lorg/telegram/ui/Components/Premium/MatrixParticlesDrawable;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/MatrixParticlesDrawable$MatrixTextParticle;->this$0:Lorg/telegram/ui/Components/Premium/MatrixParticlesDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/Components/Premium/MatrixParticlesDrawable;Lorg/telegram/ui/Components/Premium/MatrixParticlesDrawable$1;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/MatrixParticlesDrawable$MatrixTextParticle;-><init>(Lorg/telegram/ui/Components/Premium/MatrixParticlesDrawable;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;FFJF)V
    .locals 8

    iget-wide v0, p0, Lorg/telegram/ui/Components/Premium/MatrixParticlesDrawable$MatrixTextParticle;->nextUpdateTime:J

    sub-long/2addr v0, p4

    const/high16 v2, 0x437f0000    # 255.0f

    const-wide/16 v3, 0x96

    cmp-long v5, v0, v3

    if-gez v5, :cond_0

    long-to-float v0, v0

    const/high16 v1, 0x43160000    # 150.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    const/4 v5, 0x0

    invoke-static {v0, v1, v5}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v0

    iget-object v5, p0, Lorg/telegram/ui/Components/Premium/MatrixParticlesDrawable$MatrixTextParticle;->this$0:Lorg/telegram/ui/Components/Premium/MatrixParticlesDrawable;

    iget-object v5, v5, Lorg/telegram/ui/Components/Premium/MatrixParticlesDrawable;->paint:Landroid/graphics/Paint;

    sub-float v6, v1, v0

    mul-float v6, v6, p6

    mul-float v6, v6, v2

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v5, p0, Lorg/telegram/ui/Components/Premium/MatrixParticlesDrawable$MatrixTextParticle;->this$0:Lorg/telegram/ui/Components/Premium/MatrixParticlesDrawable;

    iget-object v6, v5, Lorg/telegram/ui/Components/Premium/MatrixParticlesDrawable;->bitmaps:[Landroid/graphics/Bitmap;

    iget v7, p0, Lorg/telegram/ui/Components/Premium/MatrixParticlesDrawable$MatrixTextParticle;->index:I

    aget-object v6, v6, v7

    iget-object v5, v5, Lorg/telegram/ui/Components/Premium/MatrixParticlesDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, p2, p3, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v5, p0, Lorg/telegram/ui/Components/Premium/MatrixParticlesDrawable$MatrixTextParticle;->this$0:Lorg/telegram/ui/Components/Premium/MatrixParticlesDrawable;

    iget-object v5, v5, Lorg/telegram/ui/Components/Premium/MatrixParticlesDrawable;->paint:Landroid/graphics/Paint;

    mul-float p6, p6, v0

    mul-float p6, p6, v2

    float-to-int p6, p6

    invoke-virtual {v5, p6}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p6, p0, Lorg/telegram/ui/Components/Premium/MatrixParticlesDrawable$MatrixTextParticle;->this$0:Lorg/telegram/ui/Components/Premium/MatrixParticlesDrawable;

    iget-object v2, p6, Lorg/telegram/ui/Components/Premium/MatrixParticlesDrawable;->bitmaps:[Landroid/graphics/Bitmap;

    iget v5, p0, Lorg/telegram/ui/Components/Premium/MatrixParticlesDrawable$MatrixTextParticle;->nextIndex:I

    aget-object v2, v2, v5

    iget-object p6, p6, Lorg/telegram/ui/Components/Premium/MatrixParticlesDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, p2, p3, p6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/MatrixParticlesDrawable$MatrixTextParticle;->this$0:Lorg/telegram/ui/Components/Premium/MatrixParticlesDrawable;

    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/MatrixParticlesDrawable;->paint:Landroid/graphics/Paint;

    const/16 p2, 0xff

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    cmpl-float p1, v0, v1

    if-ltz p1, :cond_1

    iget p1, p0, Lorg/telegram/ui/Components/Premium/MatrixParticlesDrawable$MatrixTextParticle;->nextIndex:I

    iput p1, p0, Lorg/telegram/ui/Components/Premium/MatrixParticlesDrawable$MatrixTextParticle;->index:I

    iput-wide p4, p0, Lorg/telegram/ui/Components/Premium/MatrixParticlesDrawable$MatrixTextParticle;->lastUpdateTime:J

    sget-object p1, Lorg/telegram/messenger/Utilities;->fastRandom:Ljava/util/Random;

    invoke-virtual {p1}, Ljava/util/Random;->nextInt()I

    move-result p1

    rem-int/lit8 p1, p1, 0x10

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/Premium/MatrixParticlesDrawable$MatrixTextParticle;->nextIndex:I

    sget-object p1, Lorg/telegram/messenger/Utilities;->fastRandom:Ljava/util/Random;

    invoke-virtual {p1}, Ljava/util/Random;->nextInt()I

    move-result p1

    rem-int/lit16 p1, p1, 0x12c

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-long p1, p1

    add-long/2addr p4, p1

    add-long/2addr p4, v3

    iput-wide p4, p0, Lorg/telegram/ui/Components/Premium/MatrixParticlesDrawable$MatrixTextParticle;->nextUpdateTime:J

    goto :goto_0

    :cond_0
    iget-object p4, p0, Lorg/telegram/ui/Components/Premium/MatrixParticlesDrawable$MatrixTextParticle;->this$0:Lorg/telegram/ui/Components/Premium/MatrixParticlesDrawable;

    iget-object p4, p4, Lorg/telegram/ui/Components/Premium/MatrixParticlesDrawable;->paint:Landroid/graphics/Paint;

    mul-float p6, p6, v2

    float-to-int p5, p6

    invoke-virtual {p4, p5}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p4, p0, Lorg/telegram/ui/Components/Premium/MatrixParticlesDrawable$MatrixTextParticle;->this$0:Lorg/telegram/ui/Components/Premium/MatrixParticlesDrawable;

    iget-object p5, p4, Lorg/telegram/ui/Components/Premium/MatrixParticlesDrawable;->bitmaps:[Landroid/graphics/Bitmap;

    iget p6, p0, Lorg/telegram/ui/Components/Premium/MatrixParticlesDrawable$MatrixTextParticle;->index:I

    aget-object p5, p5, p6

    iget-object p4, p4, Lorg/telegram/ui/Components/Premium/MatrixParticlesDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p5, p2, p3, p4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public init(J)V
    .locals 2

    sget-object v0, Lorg/telegram/messenger/Utilities;->fastRandom:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    rem-int/lit8 v0, v0, 0x10

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/Premium/MatrixParticlesDrawable$MatrixTextParticle;->index:I

    sget-object v0, Lorg/telegram/messenger/Utilities;->fastRandom:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    rem-int/lit8 v0, v0, 0x10

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/Premium/MatrixParticlesDrawable$MatrixTextParticle;->nextIndex:I

    iput-wide p1, p0, Lorg/telegram/ui/Components/Premium/MatrixParticlesDrawable$MatrixTextParticle;->lastUpdateTime:J

    sget-object v0, Lorg/telegram/messenger/Utilities;->fastRandom:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    rem-int/lit16 v0, v0, 0x12c

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-long v0, v0

    add-long/2addr p1, v0

    const-wide/16 v0, 0x96

    add-long/2addr p1, v0

    iput-wide p1, p0, Lorg/telegram/ui/Components/Premium/MatrixParticlesDrawable$MatrixTextParticle;->nextUpdateTime:J

    return-void
.end method
