.class public final synthetic Lj$/util/concurrent/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/util/function/BiConsumer;
.implements Lj$/util/function/BiFunction;
.implements Lj$/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lj$/util/concurrent/s;->a:I

    iput-object p2, p0, Lj$/util/concurrent/s;->b:Ljava/lang/Object;

    iput-object p3, p0, Lj$/util/concurrent/s;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lj$/util/function/BiFunction;Lj$/util/function/Function;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lj$/util/concurrent/s;->a:I

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/util/concurrent/s;->c:Ljava/lang/Object;

    iput-object p2, p0, Lj$/util/concurrent/s;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lj$/util/concurrent/s;->b:Ljava/lang/Object;

    check-cast v0, Lj$/util/function/Consumer;

    invoke-interface {v0, p1}, Lj$/util/function/Consumer;->accept(Ljava/lang/Object;)V

    iget-object v0, p0, Lj$/util/concurrent/s;->c:Ljava/lang/Object;

    check-cast v0, Lj$/util/function/Consumer;

    invoke-interface {v0, p1}, Lj$/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lj$/util/concurrent/s;->a:I

    packed-switch v0, :pswitch_data_0

    .line 0
    iget-object v0, p0, Lj$/util/concurrent/s;->b:Ljava/lang/Object;

    check-cast v0, Lj$/util/function/BiConsumer;

    invoke-interface {v0, p1, p2}, Lj$/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lj$/util/concurrent/s;->c:Ljava/lang/Object;

    check-cast v0, Lj$/util/function/BiConsumer;

    invoke-interface {v0, p1, p2}, Lj$/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 0
    :cond_0
    :pswitch_0
    iget-object v0, p0, Lj$/util/concurrent/s;->c:Ljava/lang/Object;

    check-cast v0, Lj$/util/function/BiFunction;

    invoke-interface {v0, p1, p2}, Lj$/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lj$/util/concurrent/s;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1, p2, v0}, Ljava/util/concurrent/ConcurrentMap;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic andThen(Lj$/util/function/BiConsumer;)Lj$/util/function/BiConsumer;
    .locals 1

    iget v0, p0, Lj$/util/concurrent/s;->a:I

    packed-switch v0, :pswitch_data_0

    .line 0
    invoke-static {p0, p1}, Lj$/util/function/BiConsumer$-CC;->$default$andThen(Lj$/util/function/BiConsumer;Lj$/util/function/BiConsumer;)Lj$/util/function/BiConsumer;

    move-result-object p1

    return-object p1

    .line 0
    :pswitch_0
    invoke-static {p0, p1}, Lj$/util/function/BiConsumer$-CC;->$default$andThen(Lj$/util/function/BiConsumer;Lj$/util/function/BiConsumer;)Lj$/util/function/BiConsumer;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic andThen(Lj$/util/function/Function;)Lj$/util/function/BiFunction;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lj$/com/android/tools/r8/a;->a(Lj$/util/function/BiFunction;Lj$/util/function/Function;)Lj$/util/concurrent/s;

    move-result-object p1

    return-object p1
.end method

.method public synthetic andThen(Lj$/util/function/Consumer;)Lj$/util/function/Consumer;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Lj$/util/function/Consumer;Lj$/util/function/Consumer;)Lj$/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method

.method public apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lj$/util/concurrent/s;->c:Ljava/lang/Object;

    check-cast v0, Lj$/util/function/BiFunction;

    invoke-interface {v0, p1, p2}, Lj$/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object p2, p0, Lj$/util/concurrent/s;->b:Ljava/lang/Object;

    check-cast p2, Lj$/util/function/Function;

    invoke-interface {p2, p1}, Lj$/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
