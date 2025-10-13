.class final Lj$/util/stream/t0;
.super Lj$/util/stream/c;
.source "SourceFile"


# instance fields
.field private final j:Lj$/util/stream/s0;


# direct methods
.method constructor <init>(Lj$/util/stream/s0;Lj$/util/stream/b;Lj$/util/Spliterator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p2, p3}, Lj$/util/stream/c;-><init>(Lj$/util/stream/b;Lj$/util/Spliterator;)V

    iput-object p1, p0, Lj$/util/stream/t0;->j:Lj$/util/stream/s0;

    return-void
.end method

.method constructor <init>(Lj$/util/stream/t0;Lj$/util/Spliterator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lj$/util/stream/c;-><init>(Lj$/util/stream/c;Lj$/util/Spliterator;)V

    iget-object p1, p1, Lj$/util/stream/t0;->j:Lj$/util/stream/s0;

    iput-object p1, p0, Lj$/util/stream/t0;->j:Lj$/util/stream/s0;

    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/Object;
    .locals 4

    .line 0
    iget-object v0, p0, Lj$/util/stream/e;->a:Lj$/util/stream/b;

    iget-object v1, p0, Lj$/util/stream/t0;->j:Lj$/util/stream/s0;

    iget-object v1, v1, Lj$/util/stream/s0;->b:Lj$/util/function/Supplier;

    invoke-interface {v1}, Lj$/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj$/util/stream/q0;

    iget-object v2, p0, Lj$/util/stream/e;->b:Lj$/util/Spliterator;

    invoke-virtual {v0, v2, v1}, Lj$/util/stream/b;->A0(Lj$/util/Spliterator;Lj$/util/stream/e2;)Lj$/util/stream/e2;

    .line 0
    iget-boolean v0, v1, Lj$/util/stream/q0;->b:Z

    .line 0
    iget-object v1, p0, Lj$/util/stream/t0;->j:Lj$/util/stream/s0;

    iget-object v1, v1, Lj$/util/stream/s0;->a:Lj$/util/stream/r0;

    invoke-static {v1}, Lj$/util/stream/r0;->h(Lj$/util/stream/r0;)Z

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 0
    iget-object v1, p0, Lj$/util/stream/c;->h:Ljava/util/concurrent/atomic/AtomicReference;

    .line 0
    :cond_0
    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    :cond_2
    :goto_0
    return-object v2
.end method

.method protected final d(Lj$/util/Spliterator;)Lj$/util/stream/e;
    .locals 1

    .line 0
    new-instance v0, Lj$/util/stream/t0;

    invoke-direct {v0, p0, p1}, Lj$/util/stream/t0;-><init>(Lj$/util/stream/t0;Lj$/util/Spliterator;)V

    return-object v0
.end method

.method protected final i()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lj$/util/stream/t0;->j:Lj$/util/stream/s0;

    iget-object v0, v0, Lj$/util/stream/s0;->a:Lj$/util/stream/r0;

    invoke-static {v0}, Lj$/util/stream/r0;->h(Lj$/util/stream/r0;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
