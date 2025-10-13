.class public interface abstract Lj$/util/stream/IntStream;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/BaseStream;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lj$/util/stream/BaseStream<",
        "Ljava/lang/Integer;",
        "Lj$/util/stream/IntStream;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract A(Lj$/util/function/E;)V
.end method

.method public abstract B(Lj$/util/function/IntFunction;)Lj$/util/stream/Stream;
.end method

.method public abstract F(Lj$/util/function/L;)Lj$/util/stream/IntStream;
.end method

.method public abstract H(ILj$/util/function/A;)I
.end method

.method public abstract I(Lj$/util/function/IntFunction;)Lj$/util/stream/IntStream;
.end method

.method public abstract J(Lj$/util/function/E;)V
.end method

.method public abstract O(Lj$/util/function/G;)Lj$/util/stream/IntStream;
.end method

.method public abstract R(Lj$/util/function/G;)Z
.end method

.method public abstract U(Lj$/util/function/A;)Lj$/util/k;
.end method

.method public abstract V(Lj$/util/function/E;)Lj$/util/stream/IntStream;
.end method

.method public abstract X(Lj$/util/function/G;)Z
.end method

.method public abstract Y(Lj$/util/function/G;)Z
.end method

.method public abstract asDoubleStream()Lj$/util/stream/E;
.end method

.method public abstract asLongStream()Lj$/util/stream/LongStream;
.end method

.method public abstract average()Lj$/util/j;
.end method

.method public abstract b0(Lj$/util/function/Supplier;Lj$/util/function/i0;Lj$/util/function/BiConsumer;)Ljava/lang/Object;
.end method

.method public abstract boxed()Lj$/util/stream/Stream;
.end method

.method public abstract count()J
.end method

.method public abstract d(Lj$/util/function/H;)Lj$/util/stream/E;
.end method

.method public abstract distinct()Lj$/util/stream/IntStream;
.end method

.method public abstract f(Lj$/util/function/K;)Lj$/util/stream/LongStream;
.end method

.method public abstract findAny()Lj$/util/k;
.end method

.method public abstract findFirst()Lj$/util/k;
.end method

.method public abstract iterator()Lj$/util/t;
.end method

.method public abstract limit(J)Lj$/util/stream/IntStream;
.end method

.method public abstract max()Lj$/util/k;
.end method

.method public abstract min()Lj$/util/k;
.end method

.method public abstract parallel()Lj$/util/stream/IntStream;
.end method

.method public abstract sequential()Lj$/util/stream/IntStream;
.end method

.method public abstract skip(J)Lj$/util/stream/IntStream;
.end method

.method public abstract sorted()Lj$/util/stream/IntStream;
.end method

.method public abstract spliterator()Lj$/util/G;
.end method

.method public abstract sum()I
.end method

.method public abstract summaryStatistics()Lj$/util/g;
.end method

.method public abstract toArray()[I
.end method
