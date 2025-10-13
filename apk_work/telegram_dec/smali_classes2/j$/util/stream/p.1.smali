.class final Lj$/util/stream/p;
.super Lj$/util/stream/V1;
.source "SourceFile"


# direct methods
.method constructor <init>(Lj$/util/stream/b;I)V
    .locals 1

    const/4 v0, 0x0

    .line 0
    invoke-direct {p0, p1, p2, v0}, Lj$/util/stream/V1;-><init>(Lj$/util/stream/b;II)V

    return-void
.end method

.method static D0(Lj$/util/stream/b;Lj$/util/Spliterator;)Lj$/util/stream/K0;
    .locals 7

    new-instance v4, Lj$/util/stream/l;

    const/16 v0, 0x17

    invoke-direct {v4, v0}, Lj$/util/stream/l;-><init>(I)V

    new-instance v3, Lj$/util/stream/l;

    const/16 v0, 0x18

    invoke-direct {v3, v0}, Lj$/util/stream/l;-><init>(I)V

    new-instance v2, Lj$/util/stream/l;

    const/16 v0, 0x19

    invoke-direct {v2, v0}, Lj$/util/stream/l;-><init>(I)V

    .line 0
    new-instance v6, Lj$/util/stream/v1;

    sget-object v1, Lj$/util/stream/S2;->REFERENCE:Lj$/util/stream/S2;

    const/4 v5, 0x3

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/v1;-><init>(Lj$/util/stream/S2;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 0
    invoke-virtual {v6, p0, p1}, Lj$/util/stream/u0;->c(Lj$/util/stream/b;Lj$/util/Spliterator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    .line 0
    new-instance p1, Lj$/util/stream/K0;

    invoke-direct {p1, p0}, Lj$/util/stream/K0;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method


# virtual methods
.method final t0(Lj$/util/Spliterator;Lj$/util/function/IntFunction;Lj$/util/stream/b;)Lj$/util/stream/G0;
    .locals 4

    sget-object v0, Lj$/util/stream/R2;->DISTINCT:Lj$/util/stream/R2;

    invoke-virtual {p3}, Lj$/util/stream/b;->p0()I

    move-result v1

    invoke-virtual {v0, v1}, Lj$/util/stream/R2;->j(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p3, p1, v1, p2}, Lj$/util/stream/b;->h0(Lj$/util/Spliterator;ZLj$/util/function/IntFunction;)Lj$/util/stream/G0;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object p2, Lj$/util/stream/R2;->ORDERED:Lj$/util/stream/R2;

    invoke-virtual {p3}, Lj$/util/stream/b;->p0()I

    move-result v0

    invoke-virtual {p2, v0}, Lj$/util/stream/R2;->j(I)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {p3, p1}, Lj$/util/stream/p;->D0(Lj$/util/stream/b;Lj$/util/Spliterator;)Lj$/util/stream/K0;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    new-instance v2, Lj$/util/stream/l0;

    const/4 v3, 0x5

    invoke-direct {v2, v3, p2, v0}, Lj$/util/stream/l0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 0
    new-instance v3, Lj$/util/stream/P;

    invoke-direct {v3, v2, v1}, Lj$/util/stream/P;-><init>(Lj$/util/function/Consumer;Z)V

    .line 0
    invoke-virtual {v3, p3, p1}, Lj$/util/stream/Q;->c(Lj$/util/stream/b;Lj$/util/Spliterator;)Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-eqz p2, :cond_2

    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object p1, p2

    .line 0
    :cond_2
    new-instance p2, Lj$/util/stream/K0;

    invoke-direct {p2, p1}, Lj$/util/stream/K0;-><init>(Ljava/util/Collection;)V

    return-object p2
.end method

.method final u0(Lj$/util/stream/b;Lj$/util/Spliterator;)Lj$/util/Spliterator;
    .locals 2

    .line 0
    sget-object v0, Lj$/util/stream/R2;->DISTINCT:Lj$/util/stream/R2;

    invoke-virtual {p1}, Lj$/util/stream/b;->p0()I

    move-result v1

    invoke-virtual {v0, v1}, Lj$/util/stream/R2;->j(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Lj$/util/stream/b;->C0(Lj$/util/Spliterator;)Lj$/util/Spliterator;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object v0, Lj$/util/stream/R2;->ORDERED:Lj$/util/stream/R2;

    invoke-virtual {p1}, Lj$/util/stream/b;->p0()I

    move-result v1

    invoke-virtual {v0, v1}, Lj$/util/stream/R2;->j(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1, p2}, Lj$/util/stream/p;->D0(Lj$/util/stream/b;Lj$/util/Spliterator;)Lj$/util/stream/K0;

    move-result-object p1

    invoke-virtual {p1}, Lj$/util/stream/K0;->spliterator()Lj$/util/Spliterator;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v0, Lj$/util/stream/a3;

    invoke-virtual {p1, p2}, Lj$/util/stream/b;->C0(Lj$/util/Spliterator;)Lj$/util/Spliterator;

    move-result-object p1

    invoke-direct {v0, p1}, Lj$/util/stream/a3;-><init>(Lj$/util/Spliterator;)V

    return-object v0
.end method

.method final w0(ILj$/util/stream/e2;)Lj$/util/stream/e2;
    .locals 1

    .line 0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 0
    sget-object v0, Lj$/util/stream/R2;->DISTINCT:Lj$/util/stream/R2;

    invoke-virtual {v0, p1}, Lj$/util/stream/R2;->j(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    :cond_0
    sget-object v0, Lj$/util/stream/R2;->SORTED:Lj$/util/stream/R2;

    invoke-virtual {v0, p1}, Lj$/util/stream/R2;->j(I)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lj$/util/stream/n;

    invoke-direct {p1, p2}, Lj$/util/stream/n;-><init>(Lj$/util/stream/e2;)V

    return-object p1

    :cond_1
    new-instance p1, Lj$/util/stream/o;

    invoke-direct {p1, p2}, Lj$/util/stream/o;-><init>(Lj$/util/stream/e2;)V

    return-object p1
.end method
