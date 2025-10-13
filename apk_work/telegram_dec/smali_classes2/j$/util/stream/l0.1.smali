.class public final synthetic Lj$/util/stream/l0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/util/function/Supplier;
.implements Lj$/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lj$/util/stream/l0;->a:I

    iput-object p2, p0, Lj$/util/stream/l0;->b:Ljava/lang/Object;

    iput-object p3, p0, Lj$/util/stream/l0;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lj$/util/stream/l0;->a:I

    packed-switch v0, :pswitch_data_0

    .line 0
    iget-object v0, p0, Lj$/util/stream/l0;->b:Ljava/lang/Object;

    check-cast v0, Lj$/util/function/BiConsumer;

    iget-object v1, p0, Lj$/util/stream/l0;->c:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lj$/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :pswitch_0
    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 0
    iget-object v0, p0, Lj$/util/stream/l0;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lj$/util/stream/l0;->c:Ljava/lang/Object;

    check-cast v1, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Lj$/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    .line 0
    :pswitch_1
    iget-object v0, p0, Lj$/util/stream/l0;->b:Ljava/lang/Object;

    check-cast v0, Lj$/util/stream/a3;

    iget-object v1, p0, Lj$/util/stream/l0;->c:Ljava/lang/Object;

    check-cast v1, Lj$/util/function/Consumer;

    invoke-virtual {v0, v1, p1}, Lj$/util/stream/a3;->f(Lj$/util/function/Consumer;Ljava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic andThen(Lj$/util/function/Consumer;)Lj$/util/function/Consumer;
    .locals 1

    iget v0, p0, Lj$/util/stream/l0;->a:I

    packed-switch v0, :pswitch_data_0

    .line 0
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Lj$/util/function/Consumer;Lj$/util/function/Consumer;)Lj$/util/function/Consumer;

    move-result-object p1

    return-object p1

    .line 0
    :pswitch_0
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Lj$/util/function/Consumer;Lj$/util/function/Consumer;)Lj$/util/function/Consumer;

    move-result-object p1

    return-object p1

    .line 0
    :pswitch_1
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Lj$/util/function/Consumer;Lj$/util/function/Consumer;)Lj$/util/function/Consumer;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public get()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lj$/util/stream/l0;->a:I

    packed-switch v0, :pswitch_data_0

    .line 0
    new-instance v0, Lj$/util/stream/m0;

    iget-object v1, p0, Lj$/util/stream/l0;->b:Ljava/lang/Object;

    check-cast v1, Lj$/util/stream/r0;

    iget-object v2, p0, Lj$/util/stream/l0;->c:Ljava/lang/Object;

    check-cast v2, Lj$/util/function/Predicate;

    invoke-direct {v0, v2, v1}, Lj$/util/stream/m0;-><init>(Lj$/util/function/Predicate;Lj$/util/stream/r0;)V

    return-object v0

    .line 0
    :pswitch_0
    new-instance v0, Lj$/util/stream/p0;

    iget-object v1, p0, Lj$/util/stream/l0;->b:Ljava/lang/Object;

    check-cast v1, Lj$/util/stream/r0;

    iget-object v2, p0, Lj$/util/stream/l0;->c:Ljava/lang/Object;

    check-cast v2, Lj$/util/function/q;

    invoke-direct {v0, v2, v1}, Lj$/util/stream/p0;-><init>(Lj$/util/function/q;Lj$/util/stream/r0;)V

    return-object v0

    .line 0
    :pswitch_1
    new-instance v0, Lj$/util/stream/n0;

    iget-object v1, p0, Lj$/util/stream/l0;->b:Ljava/lang/Object;

    check-cast v1, Lj$/util/stream/r0;

    iget-object v2, p0, Lj$/util/stream/l0;->c:Ljava/lang/Object;

    check-cast v2, Lj$/util/function/G;

    invoke-direct {v0, v2, v1}, Lj$/util/stream/n0;-><init>(Lj$/util/function/G;Lj$/util/stream/r0;)V

    return-object v0

    .line 0
    :pswitch_2
    new-instance v0, Lj$/util/stream/o0;

    iget-object v1, p0, Lj$/util/stream/l0;->b:Ljava/lang/Object;

    check-cast v1, Lj$/util/stream/r0;

    iget-object v2, p0, Lj$/util/stream/l0;->c:Ljava/lang/Object;

    check-cast v2, Lj$/util/function/W;

    invoke-direct {v0, v2, v1}, Lj$/util/stream/o0;-><init>(Lj$/util/function/W;Lj$/util/stream/r0;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
