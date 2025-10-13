.class public Lorg/telegram/ui/Components/Paint/Path;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private baseWeight:F

.field private brush:Lorg/telegram/ui/Components/Paint/Brush;

.field private color:I

.field private points:Ljava/util/Vector;

.field public remainder:D


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/Paint/Point;)V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Path;->points:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>([Lorg/telegram/ui/Components/Paint/Point;)V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Path;->points:Ljava/util/Vector;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public getBaseWeight()F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/Paint/Path;->baseWeight:F

    return v0
.end method

.method public getBrush()Lorg/telegram/ui/Components/Paint/Brush;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Path;->brush:Lorg/telegram/ui/Components/Paint/Brush;

    return-object v0
.end method

.method public getColor()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/Paint/Path;->color:I

    return v0
.end method

.method public getLength()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Path;->points:Ljava/util/Vector;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getPoints()[Lorg/telegram/ui/Components/Paint/Point;
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Path;->points:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Lorg/telegram/ui/Components/Paint/Point;

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Path;->points:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v0
.end method

.method public setup(IFLorg/telegram/ui/Components/Paint/Brush;)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/Paint/Path;->color:I

    iput p2, p0, Lorg/telegram/ui/Components/Paint/Path;->baseWeight:F

    iput-object p3, p0, Lorg/telegram/ui/Components/Paint/Path;->brush:Lorg/telegram/ui/Components/Paint/Brush;

    return-void
.end method
