.class Lorg/telegram/ui/Components/TableLayout$Axis$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/TableLayout$Axis;->topologicalSort([Lorg/telegram/ui/Components/TableLayout$Arc;)[Lorg/telegram/ui/Components/TableLayout$Arc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field arcsByVertex:[[Lorg/telegram/ui/Components/TableLayout$Arc;

.field cursor:I

.field result:[Lorg/telegram/ui/Components/TableLayout$Arc;

.field final synthetic this$1:Lorg/telegram/ui/Components/TableLayout$Axis;

.field final synthetic val$arcs:[Lorg/telegram/ui/Components/TableLayout$Arc;

.field visited:[I


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/TableLayout$Axis;[Lorg/telegram/ui/Components/TableLayout$Arc;)V
    .locals 2

    iput-object p1, p0, Lorg/telegram/ui/Components/TableLayout$Axis$1;->this$1:Lorg/telegram/ui/Components/TableLayout$Axis;

    iput-object p2, p0, Lorg/telegram/ui/Components/TableLayout$Axis$1;->val$arcs:[Lorg/telegram/ui/Components/TableLayout$Arc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p2

    new-array v1, v0, [Lorg/telegram/ui/Components/TableLayout$Arc;

    iput-object v1, p0, Lorg/telegram/ui/Components/TableLayout$Axis$1;->result:[Lorg/telegram/ui/Components/TableLayout$Arc;

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/telegram/ui/Components/TableLayout$Axis$1;->cursor:I

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/TableLayout$Axis;->groupArcsByFirstVertex([Lorg/telegram/ui/Components/TableLayout$Arc;)[[Lorg/telegram/ui/Components/TableLayout$Arc;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/Components/TableLayout$Axis$1;->arcsByVertex:[[Lorg/telegram/ui/Components/TableLayout$Arc;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/TableLayout$Axis;->getCount()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    new-array p1, p1, [I

    iput-object p1, p0, Lorg/telegram/ui/Components/TableLayout$Axis$1;->visited:[I

    return-void
.end method


# virtual methods
.method sort()[Lorg/telegram/ui/Components/TableLayout$Arc;
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/TableLayout$Axis$1;->arcsByVertex:[[Lorg/telegram/ui/Components/TableLayout$Arc;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/TableLayout$Axis$1;->walk(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/TableLayout$Axis$1;->result:[Lorg/telegram/ui/Components/TableLayout$Arc;

    return-object v0
.end method

.method walk(I)V
    .locals 7

    iget-object v0, p0, Lorg/telegram/ui/Components/TableLayout$Axis$1;->visited:[I

    aget v1, v0, p1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    aput v1, v0, p1

    iget-object v0, p0, Lorg/telegram/ui/Components/TableLayout$Axis$1;->arcsByVertex:[[Lorg/telegram/ui/Components/TableLayout$Arc;

    aget-object v0, v0, p1

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, v3, Lorg/telegram/ui/Components/TableLayout$Arc;->span:Lorg/telegram/ui/Components/TableLayout$Interval;

    iget v4, v4, Lorg/telegram/ui/Components/TableLayout$Interval;->max:I

    invoke-virtual {p0, v4}, Lorg/telegram/ui/Components/TableLayout$Axis$1;->walk(I)V

    iget-object v4, p0, Lorg/telegram/ui/Components/TableLayout$Axis$1;->result:[Lorg/telegram/ui/Components/TableLayout$Arc;

    iget v5, p0, Lorg/telegram/ui/Components/TableLayout$Axis$1;->cursor:I

    add-int/lit8 v6, v5, -0x1

    iput v6, p0, Lorg/telegram/ui/Components/TableLayout$Axis$1;->cursor:I

    aput-object v3, v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/TableLayout$Axis$1;->visited:[I

    const/4 v1, 0x2

    aput v1, v0, p1

    :goto_1
    return-void
.end method
