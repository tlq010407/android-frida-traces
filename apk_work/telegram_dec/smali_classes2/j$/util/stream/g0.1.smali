.class final Lj$/util/stream/g0;
.super Lj$/util/stream/i0;
.source "SourceFile"


# direct methods
.method constructor <init>(Lj$/util/Spliterator;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lj$/util/stream/i0;-><init>(Lj$/util/Spliterator;I)V

    return-void
.end method


# virtual methods
.method public final T(Lj$/util/function/T;)V
    .locals 1

    invoke-virtual {p0}, Lj$/util/stream/b;->isParallel()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lj$/util/stream/b;->y0()Lj$/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Lj$/util/stream/i0;->D0(Lj$/util/Spliterator;)Lj$/util/J;

    move-result-object v0

    invoke-interface {v0, p1}, Lj$/util/J;->d(Lj$/util/function/T;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lj$/util/stream/i0;->T(Lj$/util/function/T;)V

    :goto_0
    return-void
.end method

.method public final c(Lj$/util/function/T;)V
    .locals 1

    invoke-virtual {p0}, Lj$/util/stream/b;->isParallel()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lj$/util/stream/b;->y0()Lj$/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Lj$/util/stream/i0;->D0(Lj$/util/Spliterator;)Lj$/util/J;

    move-result-object v0

    invoke-interface {v0, p1}, Lj$/util/J;->d(Lj$/util/function/T;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lj$/util/stream/i0;->c(Lj$/util/function/T;)V

    :goto_0
    return-void
.end method

.method public final bridge synthetic parallel()Lj$/util/stream/LongStream;
    .locals 0

    invoke-virtual {p0}, Lj$/util/stream/b;->parallel()Lj$/util/stream/BaseStream;

    return-object p0
.end method

.method public final bridge synthetic sequential()Lj$/util/stream/LongStream;
    .locals 1

    invoke-virtual {p0}, Lj$/util/stream/b;->sequential()Lj$/util/stream/BaseStream;

    move-object v0, p0

    check-cast v0, Lj$/util/stream/LongStream;

    return-object v0
.end method

.method final v0()Z
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method final w0(ILj$/util/stream/e2;)Lj$/util/stream/e2;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
