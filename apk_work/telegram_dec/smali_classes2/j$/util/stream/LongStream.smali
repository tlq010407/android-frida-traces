.class public interface abstract Lj$/util/stream/LongStream;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/BaseStream;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lj$/util/stream/BaseStream<",
        "Ljava/lang/Long;",
        "Lj$/util/stream/LongStream;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract C(Lj$/util/function/W;)Z
.end method

.method public abstract E(Lj$/util/function/W;)Z
.end method

.method public abstract K(Lj$/util/function/W;)Lj$/util/stream/LongStream;
.end method

.method public abstract T(Lj$/util/function/T;)V
.end method

.method public abstract W(Lj$/util/function/Supplier;Lj$/util/function/l0;Lj$/util/function/BiConsumer;)Ljava/lang/Object;
.end method

.method public abstract asDoubleStream()Lj$/util/stream/E;
.end method

.method public abstract average()Lj$/util/j;
.end method

.method public abstract boxed()Lj$/util/stream/Stream;
.end method

.method public abstract c(Lj$/util/function/T;)V
.end method

.method public abstract count()J
.end method

.method public abstract distinct()Lj$/util/stream/LongStream;
.end method

.method public abstract findAny()Lj$/util/l;
.end method

.method public abstract findFirst()Lj$/util/l;
.end method

.method public abstract g(Lj$/util/function/O;)Lj$/util/l;
.end method

.method public abstract iterator()Lj$/util/x;
.end method

.method public abstract limit(J)Lj$/util/stream/LongStream;
.end method

.method public abstract m(Lj$/util/function/T;)Lj$/util/stream/LongStream;
.end method

.method public abstract mapToObj(Lj$/util/function/LongFunction;)Lj$/util/stream/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/function/LongFunction<",
            "+TU;>;)",
            "Lj$/util/stream/Stream<",
            "TU;>;"
        }
    .end annotation
.end method

.method public abstract max()Lj$/util/l;
.end method

.method public abstract min()Lj$/util/l;
.end method

.method public abstract n(Lj$/util/function/LongFunction;)Lj$/util/stream/LongStream;
.end method

.method public abstract p(Lj$/util/function/X;)Lj$/util/stream/E;
.end method

.method public abstract parallel()Lj$/util/stream/LongStream;
.end method

.method public abstract s(Lj$/util/function/W;)Z
.end method

.method public abstract sequential()Lj$/util/stream/LongStream;
.end method

.method public abstract skip(J)Lj$/util/stream/LongStream;
.end method

.method public abstract sorted()Lj$/util/stream/LongStream;
.end method

.method public abstract spliterator()Lj$/util/J;
.end method

.method public abstract sum()J
.end method

.method public abstract summaryStatistics()Lj$/util/i;
.end method

.method public abstract t(Lj$/util/function/c0;)Lj$/util/stream/LongStream;
.end method

.method public abstract toArray()[J
.end method

.method public abstract v(JLj$/util/function/O;)J
.end method

.method public abstract y(Lj$/util/function/Y;)Lj$/util/stream/IntStream;
.end method
