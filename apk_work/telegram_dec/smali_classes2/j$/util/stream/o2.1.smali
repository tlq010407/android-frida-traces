.class final Lj$/util/stream/o2;
.super Lj$/util/stream/c;
.source "SourceFile"


# instance fields
.field private final j:Lj$/util/stream/b;

.field private final k:Lj$/util/function/IntFunction;

.field private final l:J

.field private final m:J

.field private n:J

.field private volatile o:Z


# direct methods
.method constructor <init>(Lj$/util/stream/b;Lj$/util/stream/b;Lj$/util/Spliterator;Lj$/util/function/IntFunction;JJ)V
    .locals 0

    .line 0
    invoke-direct {p0, p2, p3}, Lj$/util/stream/c;-><init>(Lj$/util/stream/b;Lj$/util/Spliterator;)V

    iput-object p1, p0, Lj$/util/stream/o2;->j:Lj$/util/stream/b;

    iput-object p4, p0, Lj$/util/stream/o2;->k:Lj$/util/function/IntFunction;

    iput-wide p5, p0, Lj$/util/stream/o2;->l:J

    iput-wide p7, p0, Lj$/util/stream/o2;->m:J

    return-void
.end method

.method constructor <init>(Lj$/util/stream/o2;Lj$/util/Spliterator;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lj$/util/stream/c;-><init>(Lj$/util/stream/c;Lj$/util/Spliterator;)V

    iget-object p2, p1, Lj$/util/stream/o2;->j:Lj$/util/stream/b;

    iput-object p2, p0, Lj$/util/stream/o2;->j:Lj$/util/stream/b;

    iget-object p2, p1, Lj$/util/stream/o2;->k:Lj$/util/function/IntFunction;

    iput-object p2, p0, Lj$/util/stream/o2;->k:Lj$/util/function/IntFunction;

    iget-wide v0, p1, Lj$/util/stream/o2;->l:J

    iput-wide v0, p0, Lj$/util/stream/o2;->l:J

    iget-wide p1, p1, Lj$/util/stream/o2;->m:J

    iput-wide p1, p0, Lj$/util/stream/o2;->m:J

    return-void
.end method

.method private j(J)J
    .locals 4

    iget-boolean v0, p0, Lj$/util/stream/o2;->o:Z

    if-eqz v0, :cond_0

    iget-wide p1, p0, Lj$/util/stream/o2;->n:J

    return-wide p1

    :cond_0
    iget-object v0, p0, Lj$/util/stream/e;->d:Lj$/util/stream/e;

    check-cast v0, Lj$/util/stream/o2;

    iget-object v1, p0, Lj$/util/stream/e;->e:Lj$/util/stream/e;

    check-cast v1, Lj$/util/stream/o2;

    if-eqz v0, :cond_3

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {v0, p1, p2}, Lj$/util/stream/o2;->j(J)J

    move-result-wide v2

    cmp-long v0, v2, p1

    if-ltz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {v1, p1, p2}, Lj$/util/stream/o2;->j(J)J

    move-result-wide p1

    add-long/2addr v2, p1

    :goto_0
    return-wide v2

    :cond_3
    :goto_1
    iget-wide p1, p0, Lj$/util/stream/o2;->n:J

    return-wide p1
.end method


# virtual methods
.method protected final a()Ljava/lang/Object;
    .locals 4

    .line 0
    invoke-virtual {p0}, Lj$/util/stream/e;->c()Z

    move-result v0

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_1

    sget-object v0, Lj$/util/stream/R2;->SIZED:Lj$/util/stream/R2;

    iget-object v3, p0, Lj$/util/stream/o2;->j:Lj$/util/stream/b;

    iget v3, v3, Lj$/util/stream/b;->c:I

    invoke-virtual {v0, v3}, Lj$/util/stream/R2;->k(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj$/util/stream/o2;->j:Lj$/util/stream/b;

    iget-object v1, p0, Lj$/util/stream/e;->b:Lj$/util/Spliterator;

    invoke-virtual {v0, v1}, Lj$/util/stream/b;->l0(Lj$/util/Spliterator;)J

    move-result-wide v1

    :cond_0
    iget-object v0, p0, Lj$/util/stream/o2;->j:Lj$/util/stream/b;

    iget-object v3, p0, Lj$/util/stream/o2;->k:Lj$/util/function/IntFunction;

    invoke-virtual {v0, v1, v2, v3}, Lj$/util/stream/b;->s0(JLj$/util/function/IntFunction;)Lj$/util/stream/y0;

    move-result-object v0

    iget-object v1, p0, Lj$/util/stream/o2;->j:Lj$/util/stream/b;

    iget-object v2, p0, Lj$/util/stream/e;->a:Lj$/util/stream/b;

    invoke-virtual {v2}, Lj$/util/stream/b;->p0()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lj$/util/stream/b;->w0(ILj$/util/stream/e2;)Lj$/util/stream/e2;

    move-result-object v1

    iget-object v2, p0, Lj$/util/stream/e;->a:Lj$/util/stream/b;

    invoke-virtual {v2, v1}, Lj$/util/stream/b;->B0(Lj$/util/stream/e2;)Lj$/util/stream/e2;

    move-result-object v1

    iget-object v3, p0, Lj$/util/stream/e;->b:Lj$/util/Spliterator;

    invoke-virtual {v2, v3, v1}, Lj$/util/stream/b;->g0(Lj$/util/Spliterator;Lj$/util/stream/e2;)V

    invoke-interface {v0}, Lj$/util/stream/y0;->b()Lj$/util/stream/G0;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lj$/util/stream/e;->a:Lj$/util/stream/b;

    iget-object v3, p0, Lj$/util/stream/o2;->k:Lj$/util/function/IntFunction;

    invoke-virtual {v0, v1, v2, v3}, Lj$/util/stream/b;->s0(JLj$/util/function/IntFunction;)Lj$/util/stream/y0;

    move-result-object v1

    iget-object v2, p0, Lj$/util/stream/e;->b:Lj$/util/Spliterator;

    invoke-virtual {v0, v2, v1}, Lj$/util/stream/b;->A0(Lj$/util/Spliterator;Lj$/util/stream/e2;)Lj$/util/stream/e2;

    invoke-interface {v1}, Lj$/util/stream/y0;->b()Lj$/util/stream/G0;

    move-result-object v0

    invoke-interface {v0}, Lj$/util/stream/G0;->count()J

    move-result-wide v1

    iput-wide v1, p0, Lj$/util/stream/o2;->n:J

    const/4 v1, 0x1

    iput-boolean v1, p0, Lj$/util/stream/o2;->o:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lj$/util/stream/e;->b:Lj$/util/Spliterator;

    :goto_0
    return-object v0
.end method

.method protected final d(Lj$/util/Spliterator;)Lj$/util/stream/e;
    .locals 1

    .line 0
    new-instance v0, Lj$/util/stream/o2;

    invoke-direct {v0, p0, p1}, Lj$/util/stream/o2;-><init>(Lj$/util/stream/o2;Lj$/util/Spliterator;)V

    return-object v0
.end method

.method protected final g()V
    .locals 1

    const/4 v0, 0x1

    .line 0
    iput-boolean v0, p0, Lj$/util/stream/c;->i:Z

    .line 0
    iget-boolean v0, p0, Lj$/util/stream/o2;->o:Z

    if-eqz v0, :cond_0

    .line 0
    iget-object v0, p0, Lj$/util/stream/o2;->j:Lj$/util/stream/b;

    invoke-virtual {v0}, Lj$/util/stream/b;->n0()Lj$/util/stream/S2;

    move-result-object v0

    invoke-static {v0}, Lj$/util/stream/u0;->L(Lj$/util/stream/S2;)Lj$/util/stream/Z0;

    move-result-object v0

    .line 0
    invoke-virtual {p0, v0}, Lj$/util/stream/c;->e(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected final i()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lj$/util/stream/o2;->j:Lj$/util/stream/b;

    invoke-virtual {v0}, Lj$/util/stream/b;->n0()Lj$/util/stream/S2;

    move-result-object v0

    invoke-static {v0}, Lj$/util/stream/u0;->L(Lj$/util/stream/S2;)Lj$/util/stream/Z0;

    move-result-object v0

    return-object v0
.end method

.method public final onCompletion(Ljava/util/concurrent/CountedCompleter;)V
    .locals 13

    .line 0
    iget-object v0, p0, Lj$/util/stream/e;->d:Lj$/util/stream/e;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-wide/16 v3, 0x0

    if-nez v2, :cond_6

    .line 0
    check-cast v0, Lj$/util/stream/o2;

    iget-wide v5, v0, Lj$/util/stream/o2;->n:J

    iget-object v0, p0, Lj$/util/stream/e;->e:Lj$/util/stream/e;

    check-cast v0, Lj$/util/stream/o2;

    iget-wide v7, v0, Lj$/util/stream/o2;->n:J

    add-long/2addr v5, v7

    iput-wide v5, p0, Lj$/util/stream/o2;->n:J

    iget-boolean v0, p0, Lj$/util/stream/c;->i:Z

    if-eqz v0, :cond_1

    iput-wide v3, p0, Lj$/util/stream/o2;->n:J

    .line 0
    :goto_1
    iget-object v0, p0, Lj$/util/stream/o2;->j:Lj$/util/stream/b;

    invoke-virtual {v0}, Lj$/util/stream/b;->n0()Lj$/util/stream/S2;

    move-result-object v0

    invoke-static {v0}, Lj$/util/stream/u0;->L(Lj$/util/stream/S2;)Lj$/util/stream/Z0;

    move-result-object v0

    :goto_2
    move-object v5, v0

    goto :goto_3

    .line 0
    :cond_1
    iget-wide v5, p0, Lj$/util/stream/o2;->n:J

    cmp-long v0, v5, v3

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lj$/util/stream/e;->d:Lj$/util/stream/e;

    check-cast v0, Lj$/util/stream/o2;

    iget-wide v5, v0, Lj$/util/stream/o2;->n:J

    cmp-long v0, v5, v3

    if-nez v0, :cond_3

    iget-object v0, p0, Lj$/util/stream/e;->e:Lj$/util/stream/e;

    check-cast v0, Lj$/util/stream/o2;

    invoke-virtual {v0}, Lj$/util/stream/c;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/stream/G0;

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lj$/util/stream/o2;->j:Lj$/util/stream/b;

    invoke-virtual {v0}, Lj$/util/stream/b;->n0()Lj$/util/stream/S2;

    move-result-object v0

    iget-object v2, p0, Lj$/util/stream/e;->d:Lj$/util/stream/e;

    check-cast v2, Lj$/util/stream/o2;

    invoke-virtual {v2}, Lj$/util/stream/c;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj$/util/stream/G0;

    iget-object v5, p0, Lj$/util/stream/e;->e:Lj$/util/stream/e;

    check-cast v5, Lj$/util/stream/o2;

    invoke-virtual {v5}, Lj$/util/stream/c;->b()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lj$/util/stream/G0;

    invoke-static {v0, v2, v5}, Lj$/util/stream/u0;->I(Lj$/util/stream/S2;Lj$/util/stream/G0;Lj$/util/stream/G0;)Lj$/util/stream/I0;

    move-result-object v0

    goto :goto_2

    :goto_3
    invoke-virtual {p0}, Lj$/util/stream/e;->c()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 0
    iget-wide v6, p0, Lj$/util/stream/o2;->m:J

    cmp-long v0, v6, v3

    if-ltz v0, :cond_4

    invoke-interface {v5}, Lj$/util/stream/G0;->count()J

    move-result-wide v6

    iget-wide v8, p0, Lj$/util/stream/o2;->l:J

    iget-wide v10, p0, Lj$/util/stream/o2;->m:J

    add-long/2addr v8, v10

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    :goto_4
    move-wide v8, v6

    goto :goto_5

    :cond_4
    iget-wide v6, p0, Lj$/util/stream/o2;->n:J

    goto :goto_4

    :goto_5
    iget-wide v6, p0, Lj$/util/stream/o2;->l:J

    iget-object v10, p0, Lj$/util/stream/o2;->k:Lj$/util/function/IntFunction;

    invoke-interface/range {v5 .. v10}, Lj$/util/stream/G0;->t(JJLj$/util/function/IntFunction;)Lj$/util/stream/G0;

    move-result-object v5

    .line 0
    :cond_5
    invoke-virtual {p0, v5}, Lj$/util/stream/c;->e(Ljava/lang/Object;)V

    iput-boolean v1, p0, Lj$/util/stream/o2;->o:Z

    :cond_6
    iget-wide v0, p0, Lj$/util/stream/o2;->m:J

    cmp-long v2, v0, v3

    if-ltz v2, :cond_b

    invoke-virtual {p0}, Lj$/util/stream/e;->c()Z

    move-result v0

    if-nez v0, :cond_b

    iget-wide v0, p0, Lj$/util/stream/o2;->l:J

    iget-wide v2, p0, Lj$/util/stream/o2;->m:J

    add-long/2addr v0, v2

    .line 0
    iget-boolean v2, p0, Lj$/util/stream/o2;->o:Z

    if-eqz v2, :cond_7

    iget-wide v2, p0, Lj$/util/stream/o2;->n:J

    goto :goto_6

    :cond_7
    invoke-direct {p0, v0, v1}, Lj$/util/stream/o2;->j(J)J

    move-result-wide v2

    :goto_6
    cmp-long v4, v2, v0

    if-ltz v4, :cond_8

    goto :goto_8

    .line 0
    :cond_8
    invoke-virtual {p0}, Ljava/util/concurrent/CountedCompleter;->getCompleter()Ljava/util/concurrent/CountedCompleter;

    move-result-object v4

    check-cast v4, Lj$/util/stream/e;

    .line 0
    check-cast v4, Lj$/util/stream/o2;

    move-object v5, p0

    :goto_7
    if-eqz v4, :cond_a

    iget-object v6, v4, Lj$/util/stream/e;->e:Lj$/util/stream/e;

    if-ne v5, v6, :cond_9

    iget-object v5, v4, Lj$/util/stream/e;->d:Lj$/util/stream/e;

    check-cast v5, Lj$/util/stream/o2;

    if-eqz v5, :cond_9

    invoke-direct {v5, v0, v1}, Lj$/util/stream/o2;->j(J)J

    move-result-wide v5

    add-long/2addr v2, v5

    cmp-long v5, v2, v0

    if-ltz v5, :cond_9

    goto :goto_8

    .line 0
    :cond_9
    invoke-virtual {v4}, Ljava/util/concurrent/CountedCompleter;->getCompleter()Ljava/util/concurrent/CountedCompleter;

    move-result-object v5

    check-cast v5, Lj$/util/stream/e;

    .line 0
    check-cast v5, Lj$/util/stream/o2;

    move-object v12, v5

    move-object v5, v4

    move-object v4, v12

    goto :goto_7

    :cond_a
    cmp-long v4, v2, v0

    if-ltz v4, :cond_b

    .line 0
    :goto_8
    invoke-virtual {p0}, Lj$/util/stream/c;->h()V

    :cond_b
    invoke-super {p0, p1}, Lj$/util/stream/e;->onCompletion(Ljava/util/concurrent/CountedCompleter;)V

    return-void
.end method
