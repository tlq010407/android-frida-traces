.class Lj$/util/stream/O2;
.super Lj$/util/stream/d;
.source "SourceFile"

# interfaces
.implements Lj$/util/function/Consumer;
.implements Ljava/lang/Iterable;


# instance fields
.field protected e:[Ljava/lang/Object;

.field protected f:[[Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lj$/util/stream/d;-><init>()V

    const/4 v0, 0x1

    shl-int/lit8 v0, v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lj$/util/stream/O2;->e:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 7

    iget v0, p0, Lj$/util/stream/d;->b:I

    iget-object v1, p0, Lj$/util/stream/O2;->e:[Ljava/lang/Object;

    array-length v2, v1

    if-ne v0, v2, :cond_4

    .line 0
    iget-object v0, p0, Lj$/util/stream/O2;->f:[[Ljava/lang/Object;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/16 v0, 0x8

    new-array v3, v0, [[Ljava/lang/Object;

    iput-object v3, p0, Lj$/util/stream/O2;->f:[[Ljava/lang/Object;

    new-array v0, v0, [J

    iput-object v0, p0, Lj$/util/stream/d;->d:[J

    aput-object v1, v3, v2

    .line 0
    :cond_0
    iget v0, p0, Lj$/util/stream/d;->c:I

    add-int/lit8 v3, v0, 0x1

    iget-object v4, p0, Lj$/util/stream/O2;->f:[[Ljava/lang/Object;

    array-length v5, v4

    if-ge v3, v5, :cond_1

    aget-object v3, v4, v3

    if-nez v3, :cond_3

    :cond_1
    if-nez v0, :cond_2

    .line 0
    array-length v0, v1

    int-to-long v0, v0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lj$/util/stream/d;->d:[J

    aget-wide v5, v1, v0

    aget-object v0, v4, v0

    array-length v0, v0

    int-to-long v0, v0

    add-long/2addr v0, v5

    :goto_0
    const-wide/16 v3, 0x1

    add-long/2addr v0, v3

    .line 0
    invoke-virtual {p0, v0, v1}, Lj$/util/stream/O2;->u(J)V

    .line 0
    :cond_3
    iput v2, p0, Lj$/util/stream/d;->b:I

    iget v0, p0, Lj$/util/stream/d;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lj$/util/stream/d;->c:I

    iget-object v1, p0, Lj$/util/stream/O2;->f:[[Ljava/lang/Object;

    aget-object v0, v1, v0

    iput-object v0, p0, Lj$/util/stream/O2;->e:[Ljava/lang/Object;

    :cond_4
    iget-object v0, p0, Lj$/util/stream/O2;->e:[Ljava/lang/Object;

    iget v1, p0, Lj$/util/stream/d;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lj$/util/stream/d;->b:I

    aput-object p1, v0, v1

    return-void
.end method

.method public final synthetic andThen(Lj$/util/function/Consumer;)Lj$/util/function/Consumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Lj$/util/function/Consumer;Lj$/util/function/Consumer;)Lj$/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method

.method public final clear()V
    .locals 5

    iget-object v0, p0, Lj$/util/stream/O2;->f:[[Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    aget-object v0, v0, v2

    iput-object v0, p0, Lj$/util/stream/O2;->e:[Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lj$/util/stream/O2;->e:[Ljava/lang/Object;

    array-length v4, v3

    if-ge v0, v4, :cond_0

    aput-object v1, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lj$/util/stream/O2;->f:[[Ljava/lang/Object;

    iput-object v1, p0, Lj$/util/stream/d;->d:[J

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget v3, p0, Lj$/util/stream/d;->b:I

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Lj$/util/stream/O2;->e:[Ljava/lang/Object;

    aput-object v1, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    iput v2, p0, Lj$/util/stream/d;->b:I

    iput v2, p0, Lj$/util/stream/d;->c:I

    return-void
.end method

.method public forEach(Lj$/util/function/Consumer;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lj$/util/stream/d;->c:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lj$/util/stream/O2;->f:[[Ljava/lang/Object;

    aget-object v2, v2, v1

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    invoke-interface {p1, v5}, Lj$/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_2
    iget v1, p0, Lj$/util/stream/d;->b:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lj$/util/stream/O2;->e:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-interface {p1, v1}, Lj$/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final synthetic forEach(Ljava/util/function/Consumer;)V
    .locals 0

    invoke-static {p1}, Lj$/util/function/Consumer$VivifiedWrapper;->convert(Ljava/util/function/Consumer;)Lj$/util/function/Consumer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj$/util/stream/O2;->forEach(Lj$/util/function/Consumer;)V

    return-void
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lj$/util/stream/O2;->spliterator()Lj$/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Spliterators;->i(Lj$/util/Spliterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public spliterator()Lj$/util/Spliterator;
    .locals 7

    new-instance v6, Lj$/util/stream/F2;

    iget v3, p0, Lj$/util/stream/d;->c:I

    const/4 v4, 0x0

    iget v5, p0, Lj$/util/stream/d;->b:I

    const/4 v2, 0x0

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/F2;-><init>(Lj$/util/stream/O2;IIII)V

    return-object v6
.end method

.method public final synthetic spliterator()Ljava/util/Spliterator;
    .locals 1

    invoke-virtual {p0}, Lj$/util/stream/O2;->spliterator()Lj$/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Spliterator$Wrapper;->convert(Lj$/util/Spliterator;)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lj$/util/stream/a;

    const/16 v2, 0xb

    invoke-direct {v1, v0, v2}, Lj$/util/stream/a;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, v1}, Lj$/util/stream/O2;->forEach(Lj$/util/function/Consumer;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SpinedBuffer:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final u(J)V
    .locals 12

    .line 0
    iget v0, p0, Lj$/util/stream/d;->c:I

    if-nez v0, :cond_0

    iget-object v1, p0, Lj$/util/stream/O2;->e:[Ljava/lang/Object;

    array-length v1, v1

    int-to-long v1, v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lj$/util/stream/d;->d:[J

    aget-wide v2, v1, v0

    iget-object v1, p0, Lj$/util/stream/O2;->f:[[Ljava/lang/Object;

    aget-object v1, v1, v0

    array-length v1, v1

    int-to-long v4, v1

    add-long/2addr v2, v4

    move-wide v1, v2

    :goto_0
    cmp-long v3, p1, v1

    if-lez v3, :cond_5

    .line 0
    iget-object v3, p0, Lj$/util/stream/O2;->f:[[Ljava/lang/Object;

    if-nez v3, :cond_1

    const/16 v3, 0x8

    new-array v4, v3, [[Ljava/lang/Object;

    iput-object v4, p0, Lj$/util/stream/O2;->f:[[Ljava/lang/Object;

    new-array v3, v3, [J

    iput-object v3, p0, Lj$/util/stream/d;->d:[J

    const/4 v3, 0x0

    iget-object v5, p0, Lj$/util/stream/O2;->e:[Ljava/lang/Object;

    aput-object v5, v4, v3

    :cond_1
    const/4 v3, 0x1

    add-int/2addr v0, v3

    :goto_1
    cmp-long v4, p1, v1

    if-lez v4, :cond_5

    .line 0
    iget-object v4, p0, Lj$/util/stream/O2;->f:[[Ljava/lang/Object;

    array-length v5, v4

    if-lt v0, v5, :cond_2

    array-length v5, v4

    mul-int/lit8 v5, v5, 0x2

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[Ljava/lang/Object;

    iput-object v4, p0, Lj$/util/stream/O2;->f:[[Ljava/lang/Object;

    iget-object v4, p0, Lj$/util/stream/d;->d:[J

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v4

    iput-object v4, p0, Lj$/util/stream/d;->d:[J

    .line 0
    :cond_2
    iget v4, p0, Lj$/util/stream/d;->a:I

    if-eqz v0, :cond_4

    if-ne v0, v3, :cond_3

    goto :goto_2

    :cond_3
    add-int/2addr v4, v0

    sub-int/2addr v4, v3

    const/16 v5, 0x1e

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    :cond_4
    :goto_2
    shl-int v4, v3, v4

    .line 0
    iget-object v5, p0, Lj$/util/stream/O2;->f:[[Ljava/lang/Object;

    new-array v6, v4, [Ljava/lang/Object;

    aput-object v6, v5, v0

    iget-object v6, p0, Lj$/util/stream/d;->d:[J

    add-int/lit8 v7, v0, -0x1

    aget-wide v8, v6, v7

    aget-object v5, v5, v7

    array-length v5, v5

    int-to-long v10, v5

    add-long/2addr v8, v10

    aput-wide v8, v6, v0

    int-to-long v4, v4

    add-long/2addr v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method
