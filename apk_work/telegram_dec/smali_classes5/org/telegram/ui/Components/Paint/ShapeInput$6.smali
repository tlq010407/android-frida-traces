.class Lorg/telegram/ui/Components/Paint/ShapeInput$6;
.super Lorg/telegram/ui/Components/Paint/ShapeInput$Point;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Paint/ShapeInput;->start(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/Paint/ShapeInput;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Paint/ShapeInput;Z)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/ShapeInput$6;->this$0:Lorg/telegram/ui/Components/Paint/ShapeInput;

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Paint/ShapeInput$Point;-><init>(Lorg/telegram/ui/Components/Paint/ShapeInput;Z)V

    return-void
.end method


# virtual methods
.method set()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/ShapeInput$6;->this$0:Lorg/telegram/ui/Components/Paint/ShapeInput;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/ShapeInput;->access$000(Lorg/telegram/ui/Components/Paint/ShapeInput;)Lorg/telegram/ui/Components/Paint/Shape;

    move-result-object v0

    iget v0, v0, Lorg/telegram/ui/Components/Paint/Shape;->centerX:F

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/ShapeInput$6;->this$0:Lorg/telegram/ui/Components/Paint/ShapeInput;

    invoke-static {v1}, Lorg/telegram/ui/Components/Paint/ShapeInput;->access$000(Lorg/telegram/ui/Components/Paint/ShapeInput;)Lorg/telegram/ui/Components/Paint/Shape;

    move-result-object v1

    iget v1, v1, Lorg/telegram/ui/Components/Paint/Shape;->centerY:F

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/ShapeInput$6;->this$0:Lorg/telegram/ui/Components/Paint/ShapeInput;

    invoke-static {v2}, Lorg/telegram/ui/Components/Paint/ShapeInput;->access$000(Lorg/telegram/ui/Components/Paint/ShapeInput;)Lorg/telegram/ui/Components/Paint/Shape;

    move-result-object v2

    iget v2, v2, Lorg/telegram/ui/Components/Paint/Shape;->radiusY:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/Paint/ShapeInput$Point;->set(FF)V

    return-void
.end method

.method protected update(FF)V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/ShapeInput$6;->this$0:Lorg/telegram/ui/Components/Paint/ShapeInput;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/ShapeInput;->access$000(Lorg/telegram/ui/Components/Paint/ShapeInput;)Lorg/telegram/ui/Components/Paint/Shape;

    move-result-object v0

    iget v1, v0, Lorg/telegram/ui/Components/Paint/Shape;->rotation:F

    float-to-double v1, v1

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/ShapeInput$6;->this$0:Lorg/telegram/ui/Components/Paint/ShapeInput;

    invoke-static {v3}, Lorg/telegram/ui/Components/Paint/ShapeInput;->access$000(Lorg/telegram/ui/Components/Paint/ShapeInput;)Lorg/telegram/ui/Components/Paint/Shape;

    move-result-object v3

    iget v3, v3, Lorg/telegram/ui/Components/Paint/Shape;->centerY:F

    sub-float/2addr v3, p2

    float-to-double v3, v3

    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/ShapeInput$6;->this$0:Lorg/telegram/ui/Components/Paint/ShapeInput;

    invoke-static {p2}, Lorg/telegram/ui/Components/Paint/ShapeInput;->access$000(Lorg/telegram/ui/Components/Paint/ShapeInput;)Lorg/telegram/ui/Components/Paint/Shape;

    move-result-object p2

    iget p2, p2, Lorg/telegram/ui/Components/Paint/Shape;->centerX:F

    sub-float/2addr p1, p2

    float-to-double p1, p1

    invoke-static {v3, v4, p1, p2}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p1

    double-to-float p1, p1

    float-to-double p1, p1

    const-wide v3, 0x3ff921fb54442d18L    # 1.5707963267948966

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr p1, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v1, p1

    double-to-float p1, v1

    iput p1, v0, Lorg/telegram/ui/Components/Paint/Shape;->rotation:F

    const/4 p1, 0x0

    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/ShapeInput$6;->this$0:Lorg/telegram/ui/Components/Paint/ShapeInput;

    invoke-static {p2}, Lorg/telegram/ui/Components/Paint/ShapeInput;->access$200(Lorg/telegram/ui/Components/Paint/ShapeInput;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_1

    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/ShapeInput$6;->this$0:Lorg/telegram/ui/Components/Paint/ShapeInput;

    invoke-static {p2}, Lorg/telegram/ui/Components/Paint/ShapeInput;->access$200(Lorg/telegram/ui/Components/Paint/ShapeInput;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/Components/Paint/ShapeInput$Point;

    instance-of v0, p2, Lorg/telegram/ui/Components/Paint/ShapeInput$CornerPoint;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lorg/telegram/ui/Components/Paint/ShapeInput$Point;->set()V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
