.class final Lj$/util/stream/c3;
.super Lj$/util/stream/T2;
.source "SourceFile"

# interfaces
.implements Lj$/util/D;


# direct methods
.method constructor <init>(Lj$/util/stream/b;Lj$/util/Spliterator;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lj$/util/stream/T2;-><init>(Lj$/util/stream/b;Lj$/util/Spliterator;Z)V

    return-void
.end method

.method constructor <init>(Lj$/util/stream/b;Lj$/util/function/Supplier;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lj$/util/stream/T2;-><init>(Lj$/util/stream/b;Lj$/util/function/Supplier;Z)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lj$/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/A;->b(Lj$/util/D;Lj$/util/function/Consumer;)V

    return-void
.end method

.method public final e(Lj$/util/function/m;)V
    .locals 2

    iget-object v0, p0, Lj$/util/stream/T2;->h:Lj$/util/stream/d;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lj$/util/stream/T2;->i:Z

    if-nez v0, :cond_0

    .line 0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 0
    invoke-virtual {p0}, Lj$/util/stream/T2;->h()V

    new-instance v0, Lj$/util/stream/b3;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lj$/util/stream/b3;-><init>(Lj$/util/function/m;I)V

    iget-object p1, p0, Lj$/util/stream/T2;->d:Lj$/util/Spliterator;

    iget-object v1, p0, Lj$/util/stream/T2;->b:Lj$/util/stream/b;

    invoke-virtual {v1, p1, v0}, Lj$/util/stream/b;->A0(Lj$/util/Spliterator;Lj$/util/stream/e2;)Lj$/util/stream/e2;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lj$/util/stream/T2;->i:Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lj$/util/stream/c3;->p(Lj$/util/function/m;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void
.end method

.method public final bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lj$/util/function/m;

    invoke-virtual {p0, p1}, Lj$/util/stream/c3;->e(Lj$/util/function/m;)V

    return-void
.end method

.method final j()V
    .locals 3

    new-instance v0, Lj$/util/stream/H2;

    invoke-direct {v0}, Lj$/util/stream/H2;-><init>()V

    iput-object v0, p0, Lj$/util/stream/T2;->h:Lj$/util/stream/d;

    new-instance v1, Lj$/util/stream/b3;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lj$/util/stream/b3;-><init>(Lj$/util/function/m;I)V

    iget-object v0, p0, Lj$/util/stream/T2;->b:Lj$/util/stream/b;

    invoke-virtual {v0, v1}, Lj$/util/stream/b;->B0(Lj$/util/stream/e2;)Lj$/util/stream/e2;

    move-result-object v0

    iput-object v0, p0, Lj$/util/stream/T2;->e:Lj$/util/stream/e2;

    new-instance v0, Lj$/util/stream/a;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lj$/util/stream/a;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lj$/util/stream/T2;->f:Lj$/util/stream/a;

    return-void
.end method

.method final k(Lj$/util/Spliterator;)Lj$/util/stream/T2;
    .locals 3

    new-instance v0, Lj$/util/stream/c3;

    iget-object v1, p0, Lj$/util/stream/T2;->b:Lj$/util/stream/b;

    iget-boolean v2, p0, Lj$/util/stream/T2;->a:Z

    invoke-direct {v0, v1, p1, v2}, Lj$/util/stream/c3;-><init>(Lj$/util/stream/b;Lj$/util/Spliterator;Z)V

    return-object v0
.end method

.method public final p(Lj$/util/function/m;)Z
    .locals 8

    .line 0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 0
    invoke-virtual {p0}, Lj$/util/stream/T2;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lj$/util/stream/T2;->h:Lj$/util/stream/d;

    check-cast v1, Lj$/util/stream/H2;

    iget-wide v2, p0, Lj$/util/stream/T2;->g:J

    .line 0
    invoke-virtual {v1, v2, v3}, Lj$/util/stream/N2;->w(J)I

    move-result v4

    .line 0
    iget v5, v1, Lj$/util/stream/d;->c:I

    if-nez v5, :cond_0

    if-nez v4, :cond_0

    iget-object v1, v1, Lj$/util/stream/N2;->e:Ljava/lang/Object;

    check-cast v1, [D

    long-to-int v3, v2

    aget-wide v2, v1, v3

    goto :goto_0

    :cond_0
    iget-object v5, v1, Lj$/util/stream/N2;->f:[Ljava/lang/Object;

    check-cast v5, [[D

    aget-object v5, v5, v4

    iget-object v1, v1, Lj$/util/stream/d;->d:[J

    aget-wide v6, v1, v4

    sub-long/2addr v2, v6

    long-to-int v1, v2

    aget-wide v2, v5, v1

    .line 0
    :goto_0
    invoke-interface {p1, v2, v3}, Lj$/util/function/m;->accept(D)V

    :cond_1
    return v0
.end method

.method public final synthetic s(Lj$/util/function/Consumer;)Z
    .locals 0

    invoke-static {p0, p1}, Lj$/util/A;->l(Lj$/util/D;Lj$/util/function/Consumer;)Z

    move-result p1

    return p1
.end method

.method public final bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lj$/util/function/m;

    invoke-virtual {p0, p1}, Lj$/util/stream/c3;->p(Lj$/util/function/m;)Z

    move-result p1

    return p1
.end method

.method public final trySplit()Lj$/util/D;
    .locals 1

    invoke-super {p0}, Lj$/util/stream/T2;->trySplit()Lj$/util/Spliterator;

    move-result-object v0

    check-cast v0, Lj$/util/D;

    return-object v0
.end method

.method public final trySplit()Lj$/util/M;
    .locals 1

    .line 0
    invoke-super {p0}, Lj$/util/stream/T2;->trySplit()Lj$/util/Spliterator;

    move-result-object v0

    check-cast v0, Lj$/util/D;

    return-object v0
.end method

.method public final trySplit()Lj$/util/Spliterator;
    .locals 1

    .line 0
    invoke-super {p0}, Lj$/util/stream/T2;->trySplit()Lj$/util/Spliterator;

    move-result-object v0

    check-cast v0, Lj$/util/D;

    return-object v0
.end method
