.class final Lj$/util/stream/t;
.super Lj$/util/stream/X1;
.source "SourceFile"


# instance fields
.field public final synthetic b:I

.field final synthetic c:Lj$/util/stream/b;


# direct methods
.method public synthetic constructor <init>(Lj$/util/stream/b;Lj$/util/stream/e2;I)V
    .locals 0

    iput p3, p0, Lj$/util/stream/t;->b:I

    iput-object p1, p0, Lj$/util/stream/t;->c:Lj$/util/stream/b;

    invoke-direct {p0, p2}, Lj$/util/stream/X1;-><init>(Lj$/util/stream/e2;)V

    return-void
.end method


# virtual methods
.method public final accept(D)V
    .locals 2

    iget v0, p0, Lj$/util/stream/t;->b:I

    packed-switch v0, :pswitch_data_0

    .line 0
    iget-object v0, p0, Lj$/util/stream/t;->c:Lj$/util/stream/b;

    check-cast v0, Lj$/util/stream/u;

    iget-object v0, v0, Lj$/util/stream/u;->n:Ljava/lang/Object;

    check-cast v0, Lj$/util/function/m;

    invoke-interface {v0, p1, p2}, Lj$/util/function/m;->accept(D)V

    iget-object v0, p0, Lj$/util/stream/X1;->a:Lj$/util/stream/e2;

    invoke-interface {v0, p1, p2}, Lj$/util/stream/e2;->accept(D)V

    return-void

    .line 0
    :pswitch_0
    iget-object v0, p0, Lj$/util/stream/t;->c:Lj$/util/stream/b;

    check-cast v0, Lj$/util/stream/u;

    iget-object v0, v0, Lj$/util/stream/u;->n:Ljava/lang/Object;

    check-cast v0, Lj$/util/function/q;

    .line 0
    iget-object v0, v0, Lj$/util/function/q;->a:Ljava/util/function/DoublePredicate;

    .line 0
    invoke-interface {v0, p1, p2}, Ljava/util/function/DoublePredicate;->test(D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 0
    iget-object v0, p0, Lj$/util/stream/X1;->a:Lj$/util/stream/e2;

    invoke-interface {v0, p1, p2}, Lj$/util/stream/e2;->accept(D)V

    :cond_0
    return-void

    .line 0
    :pswitch_1
    iget-object v0, p0, Lj$/util/stream/t;->c:Lj$/util/stream/b;

    check-cast v0, Lj$/util/stream/u;

    iget-object v0, v0, Lj$/util/stream/u;->n:Ljava/lang/Object;

    check-cast v0, Lj$/util/function/p;

    invoke-interface {v0, p1, p2}, Lj$/util/function/p;->apply(D)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/util/stream/E;

    if-eqz p1, :cond_1

    :try_start_0
    invoke-interface {p1}, Lj$/util/stream/E;->sequential()Lj$/util/stream/E;

    move-result-object p2

    new-instance v0, Lj$/util/stream/q;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lj$/util/stream/q;-><init>(ILj$/util/stream/e2;)V

    invoke-interface {p2, v0}, Lj$/util/stream/E;->i(Lj$/util/function/m;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p2

    :try_start_1
    invoke-interface {p1}, Lj$/util/stream/BaseStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p2

    :cond_1
    :goto_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Lj$/util/stream/BaseStream;->close()V

    :cond_2
    return-void

    .line 0
    :pswitch_2
    iget-object v0, p0, Lj$/util/stream/t;->c:Lj$/util/stream/b;

    check-cast v0, Lj$/util/stream/x;

    iget-object v0, v0, Lj$/util/stream/x;->n:Ljava/lang/Object;

    check-cast v0, Lj$/util/function/u;

    invoke-interface {v0, p1, p2}, Lj$/util/function/u;->applyAsLong(D)J

    move-result-wide p1

    iget-object v0, p0, Lj$/util/stream/X1;->a:Lj$/util/stream/e2;

    invoke-interface {v0, p1, p2}, Lj$/util/stream/e2;->accept(J)V

    return-void

    .line 0
    :pswitch_3
    iget-object v0, p0, Lj$/util/stream/t;->c:Lj$/util/stream/b;

    check-cast v0, Lj$/util/stream/w;

    iget-object v0, v0, Lj$/util/stream/w;->n:Ljava/lang/Object;

    check-cast v0, Lj$/util/function/r;

    .line 0
    iget-object v0, v0, Lj$/util/function/r;->a:Ljava/util/function/DoubleToIntFunction;

    .line 0
    invoke-interface {v0, p1, p2}, Ljava/util/function/DoubleToIntFunction;->applyAsInt(D)I

    move-result p1

    .line 0
    iget-object p2, p0, Lj$/util/stream/X1;->a:Lj$/util/stream/e2;

    invoke-interface {p2, p1}, Lj$/util/stream/e2;->accept(I)V

    return-void

    .line 0
    :pswitch_4
    iget-object v0, p0, Lj$/util/stream/t;->c:Lj$/util/stream/b;

    check-cast v0, Lj$/util/stream/v;

    iget-object v0, v0, Lj$/util/stream/v;->n:Ljava/lang/Object;

    check-cast v0, Lj$/util/function/p;

    invoke-interface {v0, p1, p2}, Lj$/util/function/p;->apply(D)Ljava/lang/Object;

    move-result-object p1

    iget-object p2, p0, Lj$/util/stream/X1;->a:Lj$/util/stream/e2;

    invoke-interface {p2, p1}, Lj$/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    .line 0
    :pswitch_5
    iget-object v0, p0, Lj$/util/stream/t;->c:Lj$/util/stream/b;

    check-cast v0, Lj$/util/stream/u;

    iget-object v0, v0, Lj$/util/stream/u;->n:Ljava/lang/Object;

    check-cast v0, Lj$/util/function/v;

    .line 0
    iget-object v0, v0, Lj$/util/function/v;->a:Ljava/util/function/DoubleUnaryOperator;

    .line 0
    invoke-interface {v0, p1, p2}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide p1

    .line 0
    iget-object v0, p0, Lj$/util/stream/X1;->a:Lj$/util/stream/e2;

    invoke-interface {v0, p1, p2}, Lj$/util/stream/e2;->accept(D)V

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

    iget v0, p0, Lj$/util/stream/t;->b:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2}, Lj$/util/stream/X1;->n(J)V

    return-void

    .line 0
    :pswitch_0
    iget-object p1, p0, Lj$/util/stream/X1;->a:Lj$/util/stream/e2;

    const-wide/16 v0, -0x1

    invoke-interface {p1, v0, v1}, Lj$/util/stream/e2;->n(J)V

    return-void

    .line 0
    :pswitch_1
    iget-object p1, p0, Lj$/util/stream/X1;->a:Lj$/util/stream/e2;

    const-wide/16 v0, -0x1

    invoke-interface {p1, v0, v1}, Lj$/util/stream/e2;->n(J)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
