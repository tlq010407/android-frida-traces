.class abstract Lorg/telegram/ui/Components/Paint/ShapeInput$Point;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/Paint/ShapeInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Point"
.end annotation


# instance fields
.field draw:Z

.field green:Z

.field rotate:Z

.field final synthetic this$0:Lorg/telegram/ui/Components/Paint/ShapeInput;

.field x:F

.field y:F


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/Paint/ShapeInput;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/ShapeInput$Point;->this$0:Lorg/telegram/ui/Components/Paint/ShapeInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/ShapeInput$Point;->rotate:Z

    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/ShapeInput$Point;->draw:Z

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/ShapeInput$Point;->set()V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/Paint/ShapeInput;Z)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/ShapeInput$Point;->this$0:Lorg/telegram/ui/Components/Paint/ShapeInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/ShapeInput$Point;->rotate:Z

    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/ShapeInput$Point;->draw:Z

    iput-boolean p2, p0, Lorg/telegram/ui/Components/Paint/ShapeInput$Point;->green:Z

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/ShapeInput$Point;->set()V

    return-void
.end method


# virtual methods
.method abstract set()V
.end method

.method set(FF)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/Paint/ShapeInput$Point;->x:F

    iput p2, p0, Lorg/telegram/ui/Components/Paint/ShapeInput$Point;->y:F

    return-void
.end method

.method protected update(FF)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/Paint/ShapeInput$Point;->x:F

    iput p2, p0, Lorg/telegram/ui/Components/Paint/ShapeInput$Point;->y:F

    return-void
.end method
