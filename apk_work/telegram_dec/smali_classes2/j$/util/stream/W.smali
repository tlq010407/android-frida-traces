.class final Lj$/util/stream/W;
.super Lj$/util/stream/Y1;
.source "SourceFile"


# instance fields
.field public final synthetic b:I

.field final synthetic c:Lj$/util/stream/b;


# direct methods
.method public synthetic constructor <init>(Lj$/util/stream/b;Lj$/util/stream/e2;I)V
    .locals 0

    iput p3, p0, Lj$/util/stream/W;->b:I

    iput-object p1, p0, Lj$/util/stream/W;->c:Lj$/util/stream/b;

    invoke-direct {p0, p2}, Lj$/util/stream/Y1;-><init>(Lj$/util/stream/e2;)V

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 3

    iget v0, p0, Lj$/util/stream/W;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lj$/util/stream/W;->c:Lj$/util/stream/b;

    check-cast v0, Lj$/util/stream/w;

    iget-object v0, v0, Lj$/util/stream/w;->n:Ljava/lang/Object;

    check-cast v0, Lj$/util/function/G;

    .line 0
    iget-object v0, v0, Lj$/util/function/G;->a:Ljava/util/function/IntPredicate;

    .line 0
    invoke-interface {v0, p1}, Ljava/util/function/IntPredicate;->test(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 0
    iget-object v0, p0, Lj$/util/stream/Y1;->a:Lj$/util/stream/e2;

    invoke-interface {v0, p1}, Lj$/util/stream/e2;->accept(I)V

    :cond_0
    return-void

    .line 0
    :pswitch_0
    iget-object v0, p0, Lj$/util/stream/W;->c:Lj$/util/stream/b;

    check-cast v0, Lj$/util/stream/w;

    iget-object v0, v0, Lj$/util/stream/w;->n:Ljava/lang/Object;

    check-cast v0, Lj$/util/function/IntFunction;

    invoke-interface {v0, p1}, Lj$/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/util/stream/IntStream;

    if-eqz p1, :cond_1

    :try_start_0
    invoke-interface {p1}, Lj$/util/stream/IntStream;->sequential()Lj$/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Lj$/util/stream/U;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Lj$/util/stream/U;-><init>(ILj$/util/stream/e2;)V

    invoke-interface {v0, v1}, Lj$/util/stream/IntStream;->J(Lj$/util/function/E;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_1
    invoke-interface {p1}, Lj$/util/stream/BaseStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v0

    :cond_1
    :goto_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Lj$/util/stream/BaseStream;->close()V

    :cond_2
    return-void

    .line 0
    :pswitch_1
    iget-object v0, p0, Lj$/util/stream/W;->c:Lj$/util/stream/b;

    check-cast v0, Lj$/util/stream/u;

    iget-object v0, v0, Lj$/util/stream/u;->n:Ljava/lang/Object;

    check-cast v0, Lj$/util/function/H;

    .line 0
    iget-object v0, v0, Lj$/util/function/H;->a:Ljava/util/function/IntToDoubleFunction;

    .line 0
    invoke-interface {v0, p1}, Ljava/util/function/IntToDoubleFunction;->applyAsDouble(I)D

    move-result-wide v0

    .line 0
    iget-object p1, p0, Lj$/util/stream/Y1;->a:Lj$/util/stream/e2;

    invoke-interface {p1, v0, v1}, Lj$/util/stream/e2;->accept(D)V

    return-void

    .line 0
    :pswitch_2
    iget-object v0, p0, Lj$/util/stream/W;->c:Lj$/util/stream/b;

    check-cast v0, Lj$/util/stream/x;

    iget-object v0, v0, Lj$/util/stream/x;->n:Ljava/lang/Object;

    check-cast v0, Lj$/util/function/K;

    invoke-interface {v0, p1}, Lj$/util/function/K;->applyAsLong(I)J

    move-result-wide v0

    iget-object p1, p0, Lj$/util/stream/Y1;->a:Lj$/util/stream/e2;

    invoke-interface {p1, v0, v1}, Lj$/util/stream/e2;->accept(J)V

    return-void

    .line 0
    :pswitch_3
    iget-object v0, p0, Lj$/util/stream/W;->c:Lj$/util/stream/b;

    check-cast v0, Lj$/util/stream/v;

    iget-object v0, v0, Lj$/util/stream/v;->n:Ljava/lang/Object;

    check-cast v0, Lj$/util/function/IntFunction;

    invoke-interface {v0, p1}, Lj$/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lj$/util/stream/Y1;->a:Lj$/util/stream/e2;

    invoke-interface {v0, p1}, Lj$/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    .line 0
    :pswitch_4
    iget-object v0, p0, Lj$/util/stream/W;->c:Lj$/util/stream/b;

    check-cast v0, Lj$/util/stream/w;

    iget-object v0, v0, Lj$/util/stream/w;->n:Ljava/lang/Object;

    check-cast v0, Lj$/util/function/L;

    .line 0
    iget-object v0, v0, Lj$/util/function/L;->a:Ljava/util/function/IntUnaryOperator;

    .line 0
    invoke-interface {v0, p1}, Ljava/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result p1

    .line 0
    iget-object v0, p0, Lj$/util/stream/Y1;->a:Lj$/util/stream/e2;

    invoke-interface {v0, p1}, Lj$/util/stream/e2;->accept(I)V

    return-void

    .line 0
    :pswitch_5
    iget-object v0, p0, Lj$/util/stream/W;->c:Lj$/util/stream/b;

    check-cast v0, Lj$/util/stream/w;

    iget-object v0, v0, Lj$/util/stream/w;->n:Ljava/lang/Object;

    check-cast v0, Lj$/util/function/E;

    invoke-interface {v0, p1}, Lj$/util/function/E;->accept(I)V

    iget-object v0, p0, Lj$/util/stream/Y1;->a:Lj$/util/stream/e2;

    invoke-interface {v0, p1}, Lj$/util/stream/e2;->accept(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public n(J)V
    .locals 2

    iget v0, p0, Lj$/util/stream/W;->b:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2}, Lj$/util/stream/Y1;->n(J)V

    return-void

    .line 0
    :pswitch_0
    iget-object p1, p0, Lj$/util/stream/Y1;->a:Lj$/util/stream/e2;

    const-wide/16 v0, -0x1

    invoke-interface {p1, v0, v1}, Lj$/util/stream/e2;->n(J)V

    return-void

    .line 0
    :pswitch_1
    iget-object p1, p0, Lj$/util/stream/Y1;->a:Lj$/util/stream/e2;

    const-wide/16 v0, -0x1

    invoke-interface {p1, v0, v1}, Lj$/util/stream/e2;->n(J)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
