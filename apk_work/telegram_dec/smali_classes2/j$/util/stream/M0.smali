.class Lj$/util/stream/M0;
.super Lj$/util/stream/e;
.source "SourceFile"


# instance fields
.field protected final h:Lj$/util/stream/b;

.field protected final i:Lj$/util/function/LongFunction;

.field protected final j:Lj$/util/function/f;


# direct methods
.method constructor <init>(Lj$/util/stream/M0;Lj$/util/Spliterator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lj$/util/stream/e;-><init>(Lj$/util/stream/e;Lj$/util/Spliterator;)V

    iget-object p2, p1, Lj$/util/stream/M0;->h:Lj$/util/stream/b;

    iput-object p2, p0, Lj$/util/stream/M0;->h:Lj$/util/stream/b;

    iget-object p2, p1, Lj$/util/stream/M0;->i:Lj$/util/function/LongFunction;

    iput-object p2, p0, Lj$/util/stream/M0;->i:Lj$/util/function/LongFunction;

    iget-object p1, p1, Lj$/util/stream/M0;->j:Lj$/util/function/f;

    iput-object p1, p0, Lj$/util/stream/M0;->j:Lj$/util/function/f;

    return-void
.end method

.method constructor <init>(Lj$/util/stream/b;Lj$/util/Spliterator;Lj$/util/function/LongFunction;Lj$/util/function/f;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lj$/util/stream/e;-><init>(Lj$/util/stream/b;Lj$/util/Spliterator;)V

    iput-object p1, p0, Lj$/util/stream/M0;->h:Lj$/util/stream/b;

    iput-object p3, p0, Lj$/util/stream/M0;->i:Lj$/util/function/LongFunction;

    iput-object p4, p0, Lj$/util/stream/M0;->j:Lj$/util/function/f;

    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lj$/util/stream/M0;->i:Lj$/util/function/LongFunction;

    iget-object v1, p0, Lj$/util/stream/M0;->h:Lj$/util/stream/b;

    iget-object v2, p0, Lj$/util/stream/e;->b:Lj$/util/Spliterator;

    invoke-virtual {v1, v2}, Lj$/util/stream/b;->l0(Lj$/util/Spliterator;)J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lj$/util/function/LongFunction;->apply(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/stream/y0;

    iget-object v1, p0, Lj$/util/stream/M0;->h:Lj$/util/stream/b;

    iget-object v2, p0, Lj$/util/stream/e;->b:Lj$/util/Spliterator;

    invoke-virtual {v1, v2, v0}, Lj$/util/stream/b;->A0(Lj$/util/Spliterator;Lj$/util/stream/e2;)Lj$/util/stream/e2;

    invoke-interface {v0}, Lj$/util/stream/y0;->b()Lj$/util/stream/G0;

    move-result-object v0

    return-object v0
.end method

.method protected final d(Lj$/util/Spliterator;)Lj$/util/stream/e;
    .locals 1

    .line 0
    new-instance v0, Lj$/util/stream/M0;

    invoke-direct {v0, p0, p1}, Lj$/util/stream/M0;-><init>(Lj$/util/stream/M0;Lj$/util/Spliterator;)V

    return-object v0
.end method

.method public final onCompletion(Ljava/util/concurrent/CountedCompleter;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lj$/util/stream/e;->d:Lj$/util/stream/e;

    if-nez v0, :cond_0

    goto :goto_0

    .line 0
    :cond_0
    iget-object v1, p0, Lj$/util/stream/M0;->j:Lj$/util/function/f;

    check-cast v0, Lj$/util/stream/M0;

    invoke-virtual {v0}, Lj$/util/stream/e;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/stream/G0;

    iget-object v2, p0, Lj$/util/stream/e;->e:Lj$/util/stream/e;

    check-cast v2, Lj$/util/stream/M0;

    invoke-virtual {v2}, Lj$/util/stream/e;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj$/util/stream/G0;

    invoke-interface {v1, v0, v2}, Lj$/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/stream/G0;

    invoke-virtual {p0, v0}, Lj$/util/stream/e;->e(Ljava/lang/Object;)V

    :goto_0
    invoke-super {p0, p1}, Lj$/util/stream/e;->onCompletion(Ljava/util/concurrent/CountedCompleter;)V

    return-void
.end method
