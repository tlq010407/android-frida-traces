.class Lorg/telegram/ui/Components/FireworksEffect$Particle;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/FireworksEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Particle"
.end annotation


# instance fields
.field alpha:F

.field color:I

.field currentTime:F

.field lifeTime:F

.field scale:F

.field final synthetic this$0:Lorg/telegram/ui/Components/FireworksEffect;

.field type:I

.field velocity:F

.field vx:F

.field vy:F

.field x:F

.field y:F


# direct methods
.method private constructor <init>(Lorg/telegram/ui/Components/FireworksEffect;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/FireworksEffect$Particle;->this$0:Lorg/telegram/ui/Components/FireworksEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/Components/FireworksEffect;Lorg/telegram/ui/Components/FireworksEffect$1;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/FireworksEffect$Particle;-><init>(Lorg/telegram/ui/Components/FireworksEffect;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    iget v0, p0, Lorg/telegram/ui/Components/FireworksEffect$Particle;->type:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/FireworksEffect$Particle;->this$0:Lorg/telegram/ui/Components/FireworksEffect;

    invoke-static {v0}, Lorg/telegram/ui/Components/FireworksEffect;->access$000(Lorg/telegram/ui/Components/FireworksEffect;)Landroid/graphics/Paint;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Components/FireworksEffect$Particle;->color:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/FireworksEffect$Particle;->this$0:Lorg/telegram/ui/Components/FireworksEffect;

    invoke-static {v0}, Lorg/telegram/ui/Components/FireworksEffect;->access$000(Lorg/telegram/ui/Components/FireworksEffect;)Landroid/graphics/Paint;

    move-result-object v0

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Components/FireworksEffect$Particle;->scale:F

    mul-float v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/FireworksEffect$Particle;->this$0:Lorg/telegram/ui/Components/FireworksEffect;

    invoke-static {v0}, Lorg/telegram/ui/Components/FireworksEffect;->access$000(Lorg/telegram/ui/Components/FireworksEffect;)Landroid/graphics/Paint;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Components/FireworksEffect$Particle;->alpha:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v0, p0, Lorg/telegram/ui/Components/FireworksEffect$Particle;->x:F

    iget v1, p0, Lorg/telegram/ui/Components/FireworksEffect$Particle;->y:F

    iget-object v2, p0, Lorg/telegram/ui/Components/FireworksEffect$Particle;->this$0:Lorg/telegram/ui/Components/FireworksEffect;

    invoke-static {v2}, Lorg/telegram/ui/Components/FireworksEffect;->access$000(Lorg/telegram/ui/Components/FireworksEffect;)Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method
