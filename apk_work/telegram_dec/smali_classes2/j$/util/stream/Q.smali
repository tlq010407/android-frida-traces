.class abstract Lj$/util/stream/Q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/w3;
.implements Lj$/util/stream/x3;


# instance fields
.field private final a:Z


# direct methods
.method protected constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lj$/util/stream/Q;->a:Z

    return-void
.end method


# virtual methods
.method public final a(Lj$/util/stream/b;Lj$/util/Spliterator;)Ljava/lang/Object;
    .locals 1

    .line 0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 0
    invoke-virtual {p1, p0}, Lj$/util/stream/b;->B0(Lj$/util/stream/e2;)Lj$/util/stream/e2;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lj$/util/stream/b;->f0(Lj$/util/Spliterator;Lj$/util/stream/e2;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public synthetic accept(D)V
    .locals 0

    invoke-static {}, Lj$/util/stream/u0;->b()V

    const/4 p1, 0x0

    throw p1
.end method

.method public synthetic accept(I)V
    .locals 0

    invoke-static {}, Lj$/util/stream/u0;->k()V

    const/4 p1, 0x0

    throw p1
.end method

.method public synthetic accept(J)V
    .locals 0

    invoke-static {}, Lj$/util/stream/u0;->l()V

    const/4 p1, 0x0

    throw p1
.end method

.method public final synthetic andThen(Lj$/util/function/Consumer;)Lj$/util/function/Consumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Lj$/util/function/Consumer;Lj$/util/function/Consumer;)Lj$/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method

.method public final c(Lj$/util/stream/b;Lj$/util/Spliterator;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-boolean v0, p0, Lj$/util/stream/Q;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Lj$/util/stream/S;

    invoke-direct {v0, p1, p2, p0}, Lj$/util/stream/S;-><init>(Lj$/util/stream/b;Lj$/util/Spliterator;Lj$/util/stream/e2;)V

    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountedCompleter;->invoke()Ljava/lang/Object;

    goto :goto_1

    :cond_0
    new-instance v0, Lj$/util/stream/T;

    invoke-virtual {p1, p0}, Lj$/util/stream/b;->B0(Lj$/util/stream/e2;)Lj$/util/stream/e2;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lj$/util/stream/T;-><init>(Lj$/util/stream/b;Lj$/util/Spliterator;Lj$/util/stream/e2;)V

    goto :goto_0

    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final d()I
    .locals 1

    iget-boolean v0, p0, Lj$/util/stream/Q;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    sget v0, Lj$/util/stream/R2;->r:I

    :goto_0
    return v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final synthetic m()V
    .locals 0

    return-void
.end method

.method public final synthetic n(J)V
    .locals 0

    return-void
.end method

.method public final synthetic q()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
