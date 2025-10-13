.class final Lj$/util/stream/R1;
.super Lj$/util/stream/a2;
.source "SourceFile"


# instance fields
.field public final synthetic b:I

.field c:Ljava/lang/Object;

.field final synthetic d:Lj$/util/stream/b;


# direct methods
.method public constructor <init>(Lj$/util/stream/u;Lj$/util/stream/e2;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lj$/util/stream/R1;->b:I

    .line 0
    iput-object p1, p0, Lj$/util/stream/R1;->d:Lj$/util/stream/b;

    invoke-direct {p0, p2}, Lj$/util/stream/a2;-><init>(Lj$/util/stream/e2;)V

    new-instance p1, Lj$/util/stream/q;

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2}, Lj$/util/stream/q;-><init>(ILj$/util/stream/e2;)V

    iput-object p1, p0, Lj$/util/stream/R1;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lj$/util/stream/w;Lj$/util/stream/e2;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lj$/util/stream/R1;->b:I

    .line 0
    iput-object p1, p0, Lj$/util/stream/R1;->d:Lj$/util/stream/b;

    invoke-direct {p0, p2}, Lj$/util/stream/a2;-><init>(Lj$/util/stream/e2;)V

    new-instance p1, Lj$/util/stream/U;

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2}, Lj$/util/stream/U;-><init>(ILj$/util/stream/e2;)V

    iput-object p1, p0, Lj$/util/stream/R1;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lj$/util/stream/x;Lj$/util/stream/e2;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lj$/util/stream/R1;->b:I

    .line 0
    iput-object p1, p0, Lj$/util/stream/R1;->d:Lj$/util/stream/b;

    invoke-direct {p0, p2}, Lj$/util/stream/a2;-><init>(Lj$/util/stream/e2;)V

    new-instance p1, Lj$/util/stream/c0;

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2}, Lj$/util/stream/c0;-><init>(ILj$/util/stream/e2;)V

    iput-object p1, p0, Lj$/util/stream/R1;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lj$/util/stream/R1;->b:I

    packed-switch v0, :pswitch_data_0

    .line 0
    iget-object v0, p0, Lj$/util/stream/R1;->d:Lj$/util/stream/b;

    check-cast v0, Lj$/util/stream/u;

    iget-object v0, v0, Lj$/util/stream/u;->n:Ljava/lang/Object;

    check-cast v0, Lj$/util/function/Function;

    invoke-interface {v0, p1}, Lj$/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/util/stream/E;

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Lj$/util/stream/E;->sequential()Lj$/util/stream/E;

    move-result-object v0

    iget-object v1, p0, Lj$/util/stream/R1;->c:Ljava/lang/Object;

    check-cast v1, Lj$/util/stream/q;

    invoke-interface {v0, v1}, Lj$/util/stream/E;->i(Lj$/util/function/m;)V
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

    :cond_0
    :goto_1
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lj$/util/stream/BaseStream;->close()V

    :cond_1
    return-void

    .line 0
    :pswitch_0
    iget-object v0, p0, Lj$/util/stream/R1;->d:Lj$/util/stream/b;

    check-cast v0, Lj$/util/stream/w;

    iget-object v0, v0, Lj$/util/stream/w;->n:Ljava/lang/Object;

    check-cast v0, Lj$/util/function/Function;

    invoke-interface {v0, p1}, Lj$/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/util/stream/IntStream;

    if-eqz p1, :cond_2

    :try_start_2
    invoke-interface {p1}, Lj$/util/stream/IntStream;->sequential()Lj$/util/stream/IntStream;

    move-result-object v0

    iget-object v1, p0, Lj$/util/stream/R1;->c:Ljava/lang/Object;

    check-cast v1, Lj$/util/stream/U;

    invoke-interface {v0, v1}, Lj$/util/stream/IntStream;->J(Lj$/util/function/E;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v0

    :try_start_3
    invoke-interface {p1}, Lj$/util/stream/BaseStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p1

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v0

    :cond_2
    :goto_3
    if-eqz p1, :cond_3

    invoke-interface {p1}, Lj$/util/stream/BaseStream;->close()V

    :cond_3
    return-void

    .line 0
    :pswitch_1
    iget-object v0, p0, Lj$/util/stream/R1;->d:Lj$/util/stream/b;

    check-cast v0, Lj$/util/stream/x;

    iget-object v0, v0, Lj$/util/stream/x;->n:Ljava/lang/Object;

    check-cast v0, Lj$/util/function/Function;

    invoke-interface {v0, p1}, Lj$/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/util/stream/LongStream;

    if-eqz p1, :cond_4

    :try_start_4
    invoke-interface {p1}, Lj$/util/stream/LongStream;->sequential()Lj$/util/stream/LongStream;

    move-result-object v0

    iget-object v1, p0, Lj$/util/stream/R1;->c:Ljava/lang/Object;

    check-cast v1, Lj$/util/stream/c0;

    invoke-interface {v0, v1}, Lj$/util/stream/LongStream;->c(Lj$/util/function/T;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_5

    :catchall_4
    move-exception v0

    :try_start_5
    invoke-interface {p1}, Lj$/util/stream/BaseStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_4

    :catchall_5
    move-exception p1

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw v0

    :cond_4
    :goto_5
    if-eqz p1, :cond_5

    invoke-interface {p1}, Lj$/util/stream/BaseStream;->close()V

    :cond_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final n(J)V
    .locals 2

    iget p1, p0, Lj$/util/stream/R1;->b:I

    packed-switch p1, :pswitch_data_0

    .line 0
    iget-object p1, p0, Lj$/util/stream/a2;->a:Lj$/util/stream/e2;

    const-wide/16 v0, -0x1

    invoke-interface {p1, v0, v1}, Lj$/util/stream/e2;->n(J)V

    return-void

    .line 0
    :pswitch_0
    iget-object p1, p0, Lj$/util/stream/a2;->a:Lj$/util/stream/e2;

    const-wide/16 v0, -0x1

    invoke-interface {p1, v0, v1}, Lj$/util/stream/e2;->n(J)V

    return-void

    .line 0
    :pswitch_1
    iget-object p1, p0, Lj$/util/stream/a2;->a:Lj$/util/stream/e2;

    const-wide/16 v0, -0x1

    invoke-interface {p1, v0, v1}, Lj$/util/stream/e2;->n(J)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
