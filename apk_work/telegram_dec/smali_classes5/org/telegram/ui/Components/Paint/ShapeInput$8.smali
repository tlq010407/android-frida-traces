.class Lorg/telegram/ui/Components/Paint/ShapeInput$8;
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

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/ShapeInput$8;->this$0:Lorg/telegram/ui/Components/Paint/ShapeInput;

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Paint/ShapeInput$Point;-><init>(Lorg/telegram/ui/Components/Paint/ShapeInput;Z)V

    return-void
.end method


# virtual methods
.method set()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/ShapeInput$8;->this$0:Lorg/telegram/ui/Components/Paint/ShapeInput;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/ShapeInput;->access$000(Lorg/telegram/ui/Components/Paint/ShapeInput;)Lorg/telegram/ui/Components/Paint/Shape;

    move-result-object v0

    iget v0, v0, Lorg/telegram/ui/Components/Paint/Shape;->centerX:F

    iput v0, p0, Lorg/telegram/ui/Components/Paint/ShapeInput$Point;->x:F

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/ShapeInput$8;->this$0:Lorg/telegram/ui/Components/Paint/ShapeInput;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/ShapeInput;->access$000(Lorg/telegram/ui/Components/Paint/ShapeInput;)Lorg/telegram/ui/Components/Paint/Shape;

    move-result-object v0

    iget v0, v0, Lorg/telegram/ui/Components/Paint/Shape;->centerY:F

    iput v0, p0, Lorg/telegram/ui/Components/Paint/ShapeInput$Point;->y:F

    return-void
.end method

.method protected update(FF)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/ShapeInput$8;->this$0:Lorg/telegram/ui/Components/Paint/ShapeInput;

    invoke-static {v1}, Lorg/telegram/ui/Components/Paint/ShapeInput;->access$200(Lorg/telegram/ui/Components/Paint/ShapeInput;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/ShapeInput$8;->this$0:Lorg/telegram/ui/Components/Paint/ShapeInput;

    invoke-static {v1}, Lorg/telegram/ui/Components/Paint/ShapeInput;->access$200(Lorg/telegram/ui/Components/Paint/ShapeInput;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/Paint/ShapeInput$Point;

    if-eq v1, p0, :cond_0

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/ShapeInput$Point;->set()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/ShapeInput$8;->this$0:Lorg/telegram/ui/Components/Paint/ShapeInput;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/ShapeInput;->access$000(Lorg/telegram/ui/Components/Paint/ShapeInput;)Lorg/telegram/ui/Components/Paint/Shape;

    move-result-object v0

    iput p1, v0, Lorg/telegram/ui/Components/Paint/Shape;->centerX:F

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/ShapeInput$8;->this$0:Lorg/telegram/ui/Components/Paint/ShapeInput;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/ShapeInput;->access$000(Lorg/telegram/ui/Components/Paint/ShapeInput;)Lorg/telegram/ui/Components/Paint/Shape;

    move-result-object v0

    iput p2, v0, Lorg/telegram/ui/Components/Paint/Shape;->centerY:F

    invoke-super {p0, p1, p2}, Lorg/telegram/ui/Components/Paint/ShapeInput$Point;->update(FF)V

    return-void
.end method
