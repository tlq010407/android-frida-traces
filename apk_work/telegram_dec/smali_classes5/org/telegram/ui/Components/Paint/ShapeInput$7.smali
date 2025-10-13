.class Lorg/telegram/ui/Components/Paint/ShapeInput$7;
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
.method constructor <init>(Lorg/telegram/ui/Components/Paint/ShapeInput;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/ShapeInput$7;->this$0:Lorg/telegram/ui/Components/Paint/ShapeInput;

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/ShapeInput$Point;-><init>(Lorg/telegram/ui/Components/Paint/ShapeInput;)V

    return-void
.end method

.method private limit()V
    .locals 3

    iget v0, p0, Lorg/telegram/ui/Components/Paint/ShapeInput$Point;->y:F

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/ShapeInput$7;->this$0:Lorg/telegram/ui/Components/Paint/ShapeInput;

    invoke-static {v1}, Lorg/telegram/ui/Components/Paint/ShapeInput;->access$000(Lorg/telegram/ui/Components/Paint/ShapeInput;)Lorg/telegram/ui/Components/Paint/Shape;

    move-result-object v1

    iget v1, v1, Lorg/telegram/ui/Components/Paint/Shape;->centerY:F

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/ShapeInput$7;->this$0:Lorg/telegram/ui/Components/Paint/ShapeInput;

    invoke-static {v2}, Lorg/telegram/ui/Components/Paint/ShapeInput;->access$000(Lorg/telegram/ui/Components/Paint/ShapeInput;)Lorg/telegram/ui/Components/Paint/Shape;

    move-result-object v2

    iget v2, v2, Lorg/telegram/ui/Components/Paint/Shape;->radiusY:F

    sub-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/Components/Paint/ShapeInput$Point;->y:F

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/ShapeInput$7;->this$0:Lorg/telegram/ui/Components/Paint/ShapeInput;

    invoke-static {v1}, Lorg/telegram/ui/Components/Paint/ShapeInput;->access$000(Lorg/telegram/ui/Components/Paint/ShapeInput;)Lorg/telegram/ui/Components/Paint/Shape;

    move-result-object v1

    iget v1, v1, Lorg/telegram/ui/Components/Paint/Shape;->centerY:F

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/ShapeInput$7;->this$0:Lorg/telegram/ui/Components/Paint/ShapeInput;

    invoke-static {v2}, Lorg/telegram/ui/Components/Paint/ShapeInput;->access$000(Lorg/telegram/ui/Components/Paint/ShapeInput;)Lorg/telegram/ui/Components/Paint/Shape;

    move-result-object v2

    iget v2, v2, Lorg/telegram/ui/Components/Paint/Shape;->radiusY:F

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/Components/Paint/ShapeInput$Point;->x:F

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/ShapeInput$7;->this$0:Lorg/telegram/ui/Components/Paint/ShapeInput;

    invoke-static {v1}, Lorg/telegram/ui/Components/Paint/ShapeInput;->access$000(Lorg/telegram/ui/Components/Paint/ShapeInput;)Lorg/telegram/ui/Components/Paint/Shape;

    move-result-object v1

    iget v1, v1, Lorg/telegram/ui/Components/Paint/Shape;->centerX:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/Paint/ShapeInput$Point;->x:F

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/ShapeInput$7;->this$0:Lorg/telegram/ui/Components/Paint/ShapeInput;

    invoke-static {v1}, Lorg/telegram/ui/Components/Paint/ShapeInput;->access$000(Lorg/telegram/ui/Components/Paint/ShapeInput;)Lorg/telegram/ui/Components/Paint/Shape;

    move-result-object v1

    iget v1, v1, Lorg/telegram/ui/Components/Paint/Shape;->centerX:F

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/ShapeInput$7;->this$0:Lorg/telegram/ui/Components/Paint/ShapeInput;

    invoke-static {v2}, Lorg/telegram/ui/Components/Paint/ShapeInput;->access$000(Lorg/telegram/ui/Components/Paint/ShapeInput;)Lorg/telegram/ui/Components/Paint/Shape;

    move-result-object v2

    iget v2, v2, Lorg/telegram/ui/Components/Paint/Shape;->radiusX:F

    sub-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/ShapeInput$7;->this$0:Lorg/telegram/ui/Components/Paint/ShapeInput;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/ShapeInput;->access$000(Lorg/telegram/ui/Components/Paint/ShapeInput;)Lorg/telegram/ui/Components/Paint/Shape;

    move-result-object v0

    iget v0, v0, Lorg/telegram/ui/Components/Paint/Shape;->centerX:F

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/ShapeInput$7;->this$0:Lorg/telegram/ui/Components/Paint/ShapeInput;

    invoke-static {v1}, Lorg/telegram/ui/Components/Paint/ShapeInput;->access$000(Lorg/telegram/ui/Components/Paint/ShapeInput;)Lorg/telegram/ui/Components/Paint/Shape;

    move-result-object v1

    iget v1, v1, Lorg/telegram/ui/Components/Paint/Shape;->radiusX:F

    sub-float/2addr v0, v1

    :goto_0
    iput v0, p0, Lorg/telegram/ui/Components/Paint/ShapeInput$Point;->x:F

    goto :goto_1

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/Paint/ShapeInput$Point;->x:F

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/ShapeInput$7;->this$0:Lorg/telegram/ui/Components/Paint/ShapeInput;

    invoke-static {v1}, Lorg/telegram/ui/Components/Paint/ShapeInput;->access$000(Lorg/telegram/ui/Components/Paint/ShapeInput;)Lorg/telegram/ui/Components/Paint/Shape;

    move-result-object v1

    iget v1, v1, Lorg/telegram/ui/Components/Paint/Shape;->centerY:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/Components/Paint/ShapeInput$Point;->x:F

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/ShapeInput$7;->this$0:Lorg/telegram/ui/Components/Paint/ShapeInput;

    invoke-static {v1}, Lorg/telegram/ui/Components/Paint/ShapeInput;->access$000(Lorg/telegram/ui/Components/Paint/ShapeInput;)Lorg/telegram/ui/Components/Paint/Shape;

    move-result-object v1

    iget v1, v1, Lorg/telegram/ui/Components/Paint/Shape;->centerX:F

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/ShapeInput$7;->this$0:Lorg/telegram/ui/Components/Paint/ShapeInput;

    invoke-static {v2}, Lorg/telegram/ui/Components/Paint/ShapeInput;->access$000(Lorg/telegram/ui/Components/Paint/ShapeInput;)Lorg/telegram/ui/Components/Paint/Shape;

    move-result-object v2

    iget v2, v2, Lorg/telegram/ui/Components/Paint/Shape;->radiusX:F

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/ShapeInput$7;->this$0:Lorg/telegram/ui/Components/Paint/ShapeInput;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/ShapeInput;->access$000(Lorg/telegram/ui/Components/Paint/ShapeInput;)Lorg/telegram/ui/Components/Paint/Shape;

    move-result-object v0

    iget v0, v0, Lorg/telegram/ui/Components/Paint/Shape;->centerX:F

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/ShapeInput$7;->this$0:Lorg/telegram/ui/Components/Paint/ShapeInput;

    invoke-static {v1}, Lorg/telegram/ui/Components/Paint/ShapeInput;->access$000(Lorg/telegram/ui/Components/Paint/ShapeInput;)Lorg/telegram/ui/Components/Paint/Shape;

    move-result-object v1

    iget v1, v1, Lorg/telegram/ui/Components/Paint/Shape;->radiusX:F

    add-float/2addr v0, v1

    goto :goto_0

    :cond_1
    :goto_1
    iget v0, p0, Lorg/telegram/ui/Components/Paint/ShapeInput$Point;->x:F

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/ShapeInput$7;->this$0:Lorg/telegram/ui/Components/Paint/ShapeInput;

    invoke-static {v1}, Lorg/telegram/ui/Components/Paint/ShapeInput;->access$000(Lorg/telegram/ui/Components/Paint/ShapeInput;)Lorg/telegram/ui/Components/Paint/Shape;

    move-result-object v1

    iget v1, v1, Lorg/telegram/ui/Components/Paint/Shape;->centerX:F

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/ShapeInput$7;->this$0:Lorg/telegram/ui/Components/Paint/ShapeInput;

    invoke-static {v2}, Lorg/telegram/ui/Components/Paint/ShapeInput;->access$000(Lorg/telegram/ui/Components/Paint/ShapeInput;)Lorg/telegram/ui/Components/Paint/Shape;

    move-result-object v2

    iget v2, v2, Lorg/telegram/ui/Components/Paint/Shape;->radiusX:F

    sub-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    iget v0, p0, Lorg/telegram/ui/Components/Paint/ShapeInput$Point;->x:F

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/ShapeInput$7;->this$0:Lorg/telegram/ui/Components/Paint/ShapeInput;

    invoke-static {v1}, Lorg/telegram/ui/Components/Paint/ShapeInput;->access$000(Lorg/telegram/ui/Components/Paint/ShapeInput;)Lorg/telegram/ui/Components/Paint/Shape;

    move-result-object v1

    iget v1, v1, Lorg/telegram/ui/Components/Paint/Shape;->centerX:F

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/ShapeInput$7;->this$0:Lorg/telegram/ui/Components/Paint/ShapeInput;

    invoke-static {v2}, Lorg/telegram/ui/Components/Paint/ShapeInput;->access$000(Lorg/telegram/ui/Components/Paint/ShapeInput;)Lorg/telegram/ui/Components/Paint/Shape;

    move-result-object v2

    iget v2, v2, Lorg/telegram/ui/Components/Paint/Shape;->radiusX:F

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    iget v0, p0, Lorg/telegram/ui/Components/Paint/ShapeInput$Point;->y:F

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/ShapeInput$7;->this$0:Lorg/telegram/ui/Components/Paint/ShapeInput;

    invoke-static {v1}, Lorg/telegram/ui/Components/Paint/ShapeInput;->access$000(Lorg/telegram/ui/Components/Paint/ShapeInput;)Lorg/telegram/ui/Components/Paint/Shape;

    move-result-object v1

    iget v1, v1, Lorg/telegram/ui/Components/Paint/Shape;->centerY:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_2

    iget v0, p0, Lorg/telegram/ui/Components/Paint/ShapeInput$Point;->y:F

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/ShapeInput$7;->this$0:Lorg/telegram/ui/Components/Paint/ShapeInput;

    invoke-static {v1}, Lorg/telegram/ui/Components/Paint/ShapeInput;->access$000(Lorg/telegram/ui/Components/Paint/ShapeInput;)Lorg/telegram/ui/Components/Paint/Shape;

    move-result-object v1

    iget v1, v1, Lorg/telegram/ui/Components/Paint/Shape;->centerY:F

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/ShapeInput$7;->this$0:Lorg/telegram/ui/Components/Paint/ShapeInput;

    invoke-static {v2}, Lorg/telegram/ui/Components/Paint/ShapeInput;->access$000(Lorg/telegram/ui/Components/Paint/ShapeInput;)Lorg/telegram/ui/Components/Paint/Shape;

    move-result-object v2

    iget v2, v2, Lorg/telegram/ui/Components/Paint/Shape;->radiusY:F

    sub-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/ShapeInput$7;->this$0:Lorg/telegram/ui/Components/Paint/ShapeInput;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/ShapeInput;->access$000(Lorg/telegram/ui/Components/Paint/ShapeInput;)Lorg/telegram/ui/Components/Paint/Shape;

    move-result-object v0

    iget v0, v0, Lorg/telegram/ui/Components/Paint/Shape;->centerY:F

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/ShapeInput$7;->this$0:Lorg/telegram/ui/Components/Paint/ShapeInput;

    invoke-static {v1}, Lorg/telegram/ui/Components/Paint/ShapeInput;->access$000(Lorg/telegram/ui/Components/Paint/ShapeInput;)Lorg/telegram/ui/Components/Paint/Shape;

    move-result-object v1

    iget v1, v1, Lorg/telegram/ui/Components/Paint/Shape;->radiusY:F

    sub-float/2addr v0, v1

    :goto_2
    iput v0, p0, Lorg/telegram/ui/Components/Paint/ShapeInput$Point;->y:F

    goto :goto_3

    :cond_2
    iget v0, p0, Lorg/telegram/ui/Components/Paint/ShapeInput$Point;->y:F

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/ShapeInput$7;->this$0:Lorg/telegram/ui/Components/Paint/ShapeInput;

    invoke-static {v1}, Lorg/telegram/ui/Components/Paint/ShapeInput;->access$000(Lorg/telegram/ui/Components/Paint/ShapeInput;)Lorg/telegram/ui/Components/Paint/Shape;

    move-result-object v1

    iget v1, v1, Lorg/telegram/ui/Components/Paint/Shape;->centerY:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    iget v0, p0, Lorg/telegram/ui/Components/Paint/ShapeInput$Point;->y:F

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/ShapeInput$7;->this$0:Lorg/telegram/ui/Components/Paint/ShapeInput;

    invoke-static {v1}, Lorg/telegram/ui/Components/Paint/ShapeInput;->access$000(Lorg/telegram/ui/Components/Paint/ShapeInput;)Lorg/telegram/ui/Components/Paint/Shape;

    move-result-object v1

    iget v1, v1, Lorg/telegram/ui/Components/Paint/Shape;->centerY:F

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/ShapeInput$7;->this$0:Lorg/telegram/ui/Components/Paint/ShapeInput;

    invoke-static {v2}, Lorg/telegram/ui/Components/Paint/ShapeInput;->access$000(Lorg/telegram/ui/Components/Paint/ShapeInput;)Lorg/telegram/ui/Components/Paint/Shape;

    move-result-object v2

    iget v2, v2, Lorg/telegram/ui/Components/Paint/Shape;->radiusY:F

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/ShapeInput$7;->this$0:Lorg/telegram/ui/Components/Paint/ShapeInput;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/ShapeInput;->access$000(Lorg/telegram/ui/Components/Paint/ShapeInput;)Lorg/telegram/ui/Components/Paint/Shape;

    move-result-object v0

    iget v0, v0, Lorg/telegram/ui/Components/Paint/Shape;->centerY:F

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/ShapeInput$7;->this$0:Lorg/telegram/ui/Components/Paint/ShapeInput;

    invoke-static {v1}, Lorg/telegram/ui/Components/Paint/ShapeInput;->access$000(Lorg/telegram/ui/Components/Paint/ShapeInput;)Lorg/telegram/ui/Components/Paint/Shape;

    move-result-object v1

    iget v1, v1, Lorg/telegram/ui/Components/Paint/Shape;->radiusY:F

    add-float/2addr v0, v1

    goto :goto_2

    :cond_3
    :goto_3
    return-void
.end method


# virtual methods
.method set()V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/ShapeInput$7;->this$0:Lorg/telegram/ui/Components/Paint/ShapeInput;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/ShapeInput;->access$000(Lorg/telegram/ui/Components/Paint/ShapeInput;)Lorg/telegram/ui/Components/Paint/Shape;

    move-result-object v0

    iget v0, v0, Lorg/telegram/ui/Components/Paint/Shape;->middleX:F

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/ShapeInput$7;->this$0:Lorg/telegram/ui/Components/Paint/ShapeInput;

    invoke-static {v1}, Lorg/telegram/ui/Components/Paint/ShapeInput;->access$000(Lorg/telegram/ui/Components/Paint/ShapeInput;)Lorg/telegram/ui/Components/Paint/Shape;

    move-result-object v1

    iget v1, v1, Lorg/telegram/ui/Components/Paint/Shape;->middleY:F

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/Paint/ShapeInput$7;->set(FF)V

    return-void
.end method

.method set(FF)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/ShapeInput$7;->this$0:Lorg/telegram/ui/Components/Paint/ShapeInput;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/ShapeInput;->access$000(Lorg/telegram/ui/Components/Paint/ShapeInput;)Lorg/telegram/ui/Components/Paint/Shape;

    move-result-object v0

    iput p1, v0, Lorg/telegram/ui/Components/Paint/Shape;->middleX:F

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/ShapeInput$7;->this$0:Lorg/telegram/ui/Components/Paint/ShapeInput;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/ShapeInput;->access$000(Lorg/telegram/ui/Components/Paint/ShapeInput;)Lorg/telegram/ui/Components/Paint/Shape;

    move-result-object v0

    iput p2, v0, Lorg/telegram/ui/Components/Paint/Shape;->middleY:F

    invoke-super {p0, p1, p2}, Lorg/telegram/ui/Components/Paint/ShapeInput$Point;->set(FF)V

    return-void
.end method

.method protected update(FF)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Components/Paint/ShapeInput$7;->set(FF)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/ShapeInput$7;->limit()V

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/ShapeInput$7;->this$0:Lorg/telegram/ui/Components/Paint/ShapeInput;

    invoke-static {p1}, Lorg/telegram/ui/Components/Paint/ShapeInput;->access$000(Lorg/telegram/ui/Components/Paint/ShapeInput;)Lorg/telegram/ui/Components/Paint/Shape;

    move-result-object p1

    iget p2, p0, Lorg/telegram/ui/Components/Paint/ShapeInput$Point;->x:F

    iput p2, p1, Lorg/telegram/ui/Components/Paint/Shape;->middleX:F

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/ShapeInput$7;->this$0:Lorg/telegram/ui/Components/Paint/ShapeInput;

    invoke-static {p1}, Lorg/telegram/ui/Components/Paint/ShapeInput;->access$000(Lorg/telegram/ui/Components/Paint/ShapeInput;)Lorg/telegram/ui/Components/Paint/Shape;

    move-result-object p1

    iget p2, p0, Lorg/telegram/ui/Components/Paint/ShapeInput$Point;->y:F

    iput p2, p1, Lorg/telegram/ui/Components/Paint/Shape;->middleY:F

    return-void
.end method
