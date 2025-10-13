.class final Lj$/util/stream/o;
.super Lj$/util/stream/a2;
.source "SourceFile"


# instance fields
.field public final synthetic b:I

.field c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lj$/util/stream/b;Lj$/util/stream/e2;I)V
    .locals 0

    iput p3, p0, Lj$/util/stream/o;->b:I

    iput-object p1, p0, Lj$/util/stream/o;->c:Ljava/lang/Object;

    invoke-direct {p0, p2}, Lj$/util/stream/a2;-><init>(Lj$/util/stream/e2;)V

    return-void
.end method

.method public constructor <init>(Lj$/util/stream/e2;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lj$/util/stream/o;->b:I

    .line 0
    invoke-direct {p0, p1}, Lj$/util/stream/a2;-><init>(Lj$/util/stream/e2;)V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lj$/util/stream/o;->b:I

    packed-switch v0, :pswitch_data_0

    .line 0
    iget-object v0, p0, Lj$/util/stream/o;->c:Ljava/lang/Object;

    check-cast v0, Lj$/util/stream/T1;

    iget-object v0, v0, Lj$/util/stream/T1;->n:Lj$/util/function/Function;

    invoke-interface {v0, p1}, Lj$/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/util/stream/Stream;

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Lj$/util/stream/BaseStream;->sequential()Lj$/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Lj$/util/stream/Stream;

    iget-object v1, p0, Lj$/util/stream/a2;->a:Lj$/util/stream/e2;

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->forEach(Lj$/util/function/Consumer;)V
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
    iget-object v0, p0, Lj$/util/stream/o;->c:Ljava/lang/Object;

    check-cast v0, Lj$/util/stream/u;

    iget-object v0, v0, Lj$/util/stream/u;->n:Ljava/lang/Object;

    check-cast v0, Lj$/util/function/ToDoubleFunction;

    invoke-interface {v0, p1}, Lj$/util/function/ToDoubleFunction;->applyAsDouble(Ljava/lang/Object;)D

    move-result-wide v0

    iget-object p1, p0, Lj$/util/stream/a2;->a:Lj$/util/stream/e2;

    invoke-interface {p1, v0, v1}, Lj$/util/stream/e2;->accept(D)V

    return-void

    .line 0
    :pswitch_1
    iget-object v0, p0, Lj$/util/stream/o;->c:Ljava/lang/Object;

    check-cast v0, Lj$/util/stream/x;

    iget-object v0, v0, Lj$/util/stream/x;->n:Ljava/lang/Object;

    check-cast v0, Lj$/util/function/ToLongFunction;

    invoke-interface {v0, p1}, Lj$/util/function/ToLongFunction;->applyAsLong(Ljava/lang/Object;)J

    move-result-wide v0

    iget-object p1, p0, Lj$/util/stream/a2;->a:Lj$/util/stream/e2;

    invoke-interface {p1, v0, v1}, Lj$/util/stream/e2;->accept(J)V

    return-void

    .line 0
    :pswitch_2
    iget-object v0, p0, Lj$/util/stream/o;->c:Ljava/lang/Object;

    check-cast v0, Lj$/util/stream/w;

    iget-object v0, v0, Lj$/util/stream/w;->n:Ljava/lang/Object;

    check-cast v0, Lj$/util/function/ToIntFunction;

    invoke-interface {v0, p1}, Lj$/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result p1

    iget-object v0, p0, Lj$/util/stream/a2;->a:Lj$/util/stream/e2;

    invoke-interface {v0, p1}, Lj$/util/stream/e2;->accept(I)V

    return-void

    .line 0
    :pswitch_3
    iget-object v0, p0, Lj$/util/stream/o;->c:Ljava/lang/Object;

    check-cast v0, Lj$/util/stream/T1;

    iget-object v0, v0, Lj$/util/stream/T1;->n:Lj$/util/function/Function;

    invoke-interface {v0, p1}, Lj$/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lj$/util/stream/a2;->a:Lj$/util/stream/e2;

    invoke-interface {v0, p1}, Lj$/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    .line 0
    :pswitch_4
    iget-object v0, p0, Lj$/util/stream/o;->c:Ljava/lang/Object;

    check-cast v0, Lj$/util/stream/v;

    iget-object v0, v0, Lj$/util/stream/v;->n:Ljava/lang/Object;

    check-cast v0, Lj$/util/function/Predicate;

    invoke-interface {v0, p1}, Lj$/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lj$/util/stream/a2;->a:Lj$/util/stream/e2;

    invoke-interface {v0, p1}, Lj$/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_2
    return-void

    .line 0
    :pswitch_5
    iget-object v0, p0, Lj$/util/stream/o;->c:Ljava/lang/Object;

    check-cast v0, Lj$/util/stream/v;

    iget-object v0, v0, Lj$/util/stream/v;->n:Ljava/lang/Object;

    check-cast v0, Lj$/util/function/Consumer;

    invoke-interface {v0, p1}, Lj$/util/function/Consumer;->accept(Ljava/lang/Object;)V

    iget-object v0, p0, Lj$/util/stream/a2;->a:Lj$/util/stream/e2;

    invoke-interface {v0, p1}, Lj$/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    .line 0
    :pswitch_6
    iget-object v0, p0, Lj$/util/stream/o;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lj$/util/stream/o;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lj$/util/stream/a2;->a:Lj$/util/stream/e2;

    invoke-interface {v0, p1}, Lj$/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public m()V
    .locals 1

    iget v0, p0, Lj$/util/stream/o;->b:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Lj$/util/stream/a2;->m()V

    return-void

    :pswitch_0
    const/4 v0, 0x0

    .line 0
    iput-object v0, p0, Lj$/util/stream/o;->c:Ljava/lang/Object;

    iget-object v0, p0, Lj$/util/stream/a2;->a:Lj$/util/stream/e2;

    invoke-interface {v0}, Lj$/util/stream/e2;->m()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public n(J)V
    .locals 2

    iget v0, p0, Lj$/util/stream/o;->b:I

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1, p2}, Lj$/util/stream/a2;->n(J)V

    return-void

    .line 0
    :sswitch_0
    iget-object p1, p0, Lj$/util/stream/a2;->a:Lj$/util/stream/e2;

    const-wide/16 v0, -0x1

    invoke-interface {p1, v0, v1}, Lj$/util/stream/e2;->n(J)V

    return-void

    .line 0
    :sswitch_1
    iget-object p1, p0, Lj$/util/stream/a2;->a:Lj$/util/stream/e2;

    const-wide/16 v0, -0x1

    invoke-interface {p1, v0, v1}, Lj$/util/stream/e2;->n(J)V

    return-void

    .line 0
    :sswitch_2
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lj$/util/stream/o;->c:Ljava/lang/Object;

    iget-object p1, p0, Lj$/util/stream/a2;->a:Lj$/util/stream/e2;

    const-wide/16 v0, -0x1

    invoke-interface {p1, v0, v1}, Lj$/util/stream/e2;->n(J)V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x2 -> :sswitch_1
        0x7 -> :sswitch_0
    .end sparse-switch
.end method
