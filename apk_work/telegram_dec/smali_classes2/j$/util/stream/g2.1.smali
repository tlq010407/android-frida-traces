.class final Lj$/util/stream/g2;
.super Lj$/util/stream/V1;
.source "SourceFile"


# instance fields
.field final synthetic m:J

.field final synthetic n:J


# direct methods
.method constructor <init>(Lj$/util/stream/b;IJJ)V
    .locals 0

    .line 0
    iput-wide p3, p0, Lj$/util/stream/g2;->m:J

    iput-wide p5, p0, Lj$/util/stream/g2;->n:J

    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3}, Lj$/util/stream/V1;-><init>(Lj$/util/stream/b;II)V

    return-void
.end method


# virtual methods
.method final t0(Lj$/util/Spliterator;Lj$/util/function/IntFunction;Lj$/util/stream/b;)Lj$/util/stream/G0;
    .locals 12

    .line 0
    invoke-virtual {p3, p1}, Lj$/util/stream/b;->l0(Lj$/util/Spliterator;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    cmp-long v5, v0, v2

    if-lez v5, :cond_0

    const/16 v5, 0x4000

    invoke-interface {p1, v5}, Lj$/util/Spliterator;->hasCharacteristics(I)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p3}, Lj$/util/stream/b;->o0()Lj$/util/stream/S2;

    move-result-object v6

    iget-wide v8, p0, Lj$/util/stream/g2;->m:J

    iget-wide v10, p0, Lj$/util/stream/g2;->n:J

    move-object v7, p1

    invoke-static/range {v6 .. v11}, Lj$/util/stream/u0;->y(Lj$/util/stream/S2;Lj$/util/Spliterator;JJ)Lj$/util/Spliterator;

    move-result-object p1

    invoke-static {p3, p1, v4, p2}, Lj$/util/stream/u0;->E(Lj$/util/stream/b;Lj$/util/Spliterator;ZLj$/util/function/IntFunction;)Lj$/util/stream/G0;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object v5, Lj$/util/stream/R2;->ORDERED:Lj$/util/stream/R2;

    invoke-virtual {p3}, Lj$/util/stream/b;->p0()I

    move-result v6

    invoke-virtual {v5, v6}, Lj$/util/stream/R2;->j(I)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {p3, p1}, Lj$/util/stream/b;->C0(Lj$/util/Spliterator;)Lj$/util/Spliterator;

    move-result-object v7

    .line 0
    iget-wide v5, p0, Lj$/util/stream/g2;->m:J

    iget-wide v8, p0, Lj$/util/stream/g2;->n:J

    cmp-long p1, v5, v0

    if-gtz p1, :cond_2

    cmp-long p1, v8, v2

    sub-long/2addr v0, v5

    if-ltz p1, :cond_1

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :cond_1
    move-wide v10, v0

    move-wide v8, v2

    goto :goto_0

    :cond_2
    move-wide v10, v8

    move-wide v8, v5

    :goto_0
    new-instance p1, Lj$/util/stream/r3;

    move-object v6, p1

    invoke-direct/range {v6 .. v11}, Lj$/util/stream/r3;-><init>(Lj$/util/Spliterator;JJ)V

    .line 0
    invoke-static {p0, p1, v4, p2}, Lj$/util/stream/u0;->E(Lj$/util/stream/b;Lj$/util/Spliterator;ZLj$/util/function/IntFunction;)Lj$/util/stream/G0;

    move-result-object p1

    return-object p1

    :cond_3
    new-instance v9, Lj$/util/stream/o2;

    iget-wide v5, p0, Lj$/util/stream/g2;->m:J

    iget-wide v7, p0, Lj$/util/stream/g2;->n:J

    move-object v0, v9

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v8}, Lj$/util/stream/o2;-><init>(Lj$/util/stream/b;Lj$/util/stream/b;Lj$/util/Spliterator;Lj$/util/function/IntFunction;JJ)V

    invoke-virtual {v9}, Ljava/util/concurrent/CountedCompleter;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/util/stream/G0;

    return-object p1
.end method

.method final u0(Lj$/util/stream/b;Lj$/util/Spliterator;)Lj$/util/Spliterator;
    .locals 16

    move-object/from16 v9, p0

    invoke-virtual/range {p1 .. p2}, Lj$/util/stream/b;->l0(Lj$/util/Spliterator;)J

    move-result-wide v0

    iget-wide v2, v9, Lj$/util/stream/g2;->n:J

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-lez v6, :cond_0

    const/16 v6, 0x4000

    move-object/from16 v7, p2

    invoke-interface {v7, v6}, Lj$/util/Spliterator;->hasCharacteristics(I)Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v0, Lj$/util/stream/l3;

    invoke-virtual/range {p1 .. p2}, Lj$/util/stream/b;->C0(Lj$/util/Spliterator;)Lj$/util/Spliterator;

    move-result-object v11

    iget-wide v12, v9, Lj$/util/stream/g2;->m:J

    invoke-static {v12, v13, v2, v3}, Lj$/util/stream/u0;->x(JJ)J

    move-result-wide v14

    move-object v10, v0

    invoke-direct/range {v10 .. v15}, Lj$/util/stream/l3;-><init>(Lj$/util/Spliterator;JJ)V

    return-object v0

    :cond_0
    move-object/from16 v7, p2

    :cond_1
    sget-object v6, Lj$/util/stream/R2;->ORDERED:Lj$/util/stream/R2;

    invoke-virtual/range {p1 .. p1}, Lj$/util/stream/b;->p0()I

    move-result v8

    invoke-virtual {v6, v8}, Lj$/util/stream/R2;->j(I)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual/range {p1 .. p2}, Lj$/util/stream/b;->C0(Lj$/util/Spliterator;)Lj$/util/Spliterator;

    move-result-object v11

    .line 0
    iget-wide v6, v9, Lj$/util/stream/g2;->m:J

    cmp-long v8, v6, v0

    if-gtz v8, :cond_3

    cmp-long v8, v2, v4

    sub-long/2addr v0, v6

    if-ltz v8, :cond_2

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :cond_2
    move-wide v2, v0

    move-wide v14, v2

    move-wide v12, v4

    goto :goto_0

    :cond_3
    move-wide v14, v2

    move-wide v12, v6

    :goto_0
    new-instance v0, Lj$/util/stream/r3;

    move-object v10, v0

    invoke-direct/range {v10 .. v15}, Lj$/util/stream/r3;-><init>(Lj$/util/Spliterator;JJ)V

    return-object v0

    .line 0
    :cond_4
    new-instance v10, Lj$/util/stream/o2;

    .line 0
    new-instance v4, Lj$/util/stream/d0;

    const/16 v0, 0x8

    invoke-direct {v4, v0}, Lj$/util/stream/d0;-><init>(I)V

    .line 0
    iget-wide v5, v9, Lj$/util/stream/g2;->m:J

    iget-wide v11, v9, Lj$/util/stream/g2;->n:J

    move-object v0, v10

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide v7, v11

    invoke-direct/range {v0 .. v8}, Lj$/util/stream/o2;-><init>(Lj$/util/stream/b;Lj$/util/stream/b;Lj$/util/Spliterator;Lj$/util/function/IntFunction;JJ)V

    invoke-virtual {v10}, Ljava/util/concurrent/CountedCompleter;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/stream/G0;

    invoke-interface {v0}, Lj$/util/stream/G0;->spliterator()Lj$/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method final w0(ILj$/util/stream/e2;)Lj$/util/stream/e2;
    .locals 0

    new-instance p1, Lj$/util/stream/f2;

    invoke-direct {p1, p0, p2}, Lj$/util/stream/f2;-><init>(Lj$/util/stream/g2;Lj$/util/stream/e2;)V

    return-object p1
.end method
