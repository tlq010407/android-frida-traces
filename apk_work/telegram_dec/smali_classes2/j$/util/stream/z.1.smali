.class final Lj$/util/stream/z;
.super Lj$/util/stream/B;
.source "SourceFile"


# direct methods
.method constructor <init>(Lj$/util/Spliterator;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lj$/util/stream/B;-><init>(Lj$/util/Spliterator;I)V

    return-void
.end method


# virtual methods
.method public final c0(Lj$/util/function/m;)V
    .locals 1

    invoke-virtual {p0}, Lj$/util/stream/b;->isParallel()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lj$/util/stream/b;->y0()Lj$/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Lj$/util/stream/B;->D0(Lj$/util/Spliterator;)Lj$/util/D;

    move-result-object v0

    invoke-interface {v0, p1}, Lj$/util/D;->e(Lj$/util/function/m;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lj$/util/stream/B;->c0(Lj$/util/function/m;)V

    :goto_0
    return-void
.end method

.method public final i(Lj$/util/function/m;)V
    .locals 1

    invoke-virtual {p0}, Lj$/util/stream/b;->isParallel()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lj$/util/stream/b;->y0()Lj$/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Lj$/util/stream/B;->D0(Lj$/util/Spliterator;)Lj$/util/D;

    move-result-object v0

    invoke-interface {v0, p1}, Lj$/util/D;->e(Lj$/util/function/m;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lj$/util/stream/B;->i(Lj$/util/function/m;)V

    :goto_0
    return-void
.end method

.method public final bridge synthetic parallel()Lj$/util/stream/E;
    .locals 0

    invoke-virtual {p0}, Lj$/util/stream/b;->parallel()Lj$/util/stream/BaseStream;

    return-object p0
.end method

.method public final bridge synthetic sequential()Lj$/util/stream/E;
    .locals 1

    invoke-virtual {p0}, Lj$/util/stream/b;->sequential()Lj$/util/stream/BaseStream;

    move-object v0, p0

    check-cast v0, Lj$/util/stream/E;

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
