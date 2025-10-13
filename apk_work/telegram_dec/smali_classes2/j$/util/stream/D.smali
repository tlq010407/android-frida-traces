.class public final synthetic Lj$/util/stream/D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/stream/DoubleStream;


# instance fields
.field public final synthetic a:Lj$/util/stream/E;


# direct methods
.method private synthetic constructor <init>(Lj$/util/stream/E;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/util/stream/D;->a:Lj$/util/stream/E;

    return-void
.end method

.method public static synthetic f0(Lj$/util/stream/E;)Ljava/util/stream/DoubleStream;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lj$/util/stream/C;

    if-eqz v0, :cond_1

    check-cast p0, Lj$/util/stream/C;

    iget-object p0, p0, Lj$/util/stream/C;->a:Ljava/util/stream/DoubleStream;

    return-object p0

    :cond_1
    new-instance v0, Lj$/util/stream/D;

    invoke-direct {v0, p0}, Lj$/util/stream/D;-><init>(Lj$/util/stream/E;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic allMatch(Ljava/util/function/DoublePredicate;)Z
    .locals 1

    iget-object v0, p0, Lj$/util/stream/D;->a:Lj$/util/stream/E;

    invoke-static {p1}, Lj$/util/function/q;->a(Ljava/util/function/DoublePredicate;)Lj$/util/function/q;

    move-result-object p1

    invoke-interface {v0, p1}, Lj$/util/stream/E;->d0(Lj$/util/function/q;)Z

    move-result p1

    return p1
.end method

.method public final synthetic anyMatch(Ljava/util/function/DoublePredicate;)Z
    .locals 1

    iget-object v0, p0, Lj$/util/stream/D;->a:Lj$/util/stream/E;

    invoke-static {p1}, Lj$/util/function/q;->a(Ljava/util/function/DoublePredicate;)Lj$/util/function/q;

    move-result-object p1

    invoke-interface {v0, p1}, Lj$/util/stream/E;->a0(Lj$/util/function/q;)Z

    move-result p1

    return p1
.end method

.method public final synthetic average()Ljava/util/OptionalDouble;
    .locals 1

    iget-object v0, p0, Lj$/util/stream/D;->a:Lj$/util/stream/E;

    invoke-interface {v0}, Lj$/util/stream/E;->average()Lj$/util/j;

    move-result-object v0

    invoke-static {v0}, Lj$/util/A;->v(Lj$/util/j;)Ljava/util/OptionalDouble;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic boxed()Ljava/util/stream/Stream;
    .locals 1

    iget-object v0, p0, Lj$/util/stream/D;->a:Lj$/util/stream/E;

    invoke-interface {v0}, Lj$/util/stream/E;->boxed()Lj$/util/stream/Stream;

    move-result-object v0

    invoke-static {v0}, Lj$/util/stream/Stream$Wrapper;->convert(Lj$/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic close()V
    .locals 1

    iget-object v0, p0, Lj$/util/stream/D;->a:Lj$/util/stream/E;

    invoke-interface {v0}, Lj$/util/stream/BaseStream;->close()V

    return-void
.end method

.method public final synthetic collect(Ljava/util/function/Supplier;Ljava/util/function/ObjDoubleConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lj$/util/stream/D;->a:Lj$/util/stream/E;

    invoke-static {p1}, Lj$/util/function/p0;->a(Ljava/util/function/Supplier;)Lj$/util/function/Supplier;

    move-result-object p1

    invoke-static {p2}, Lj$/util/function/d0;->a(Ljava/util/function/ObjDoubleConsumer;)Lj$/util/function/f0;

    move-result-object p2

    invoke-static {p3}, Lj$/util/function/BiConsumer$VivifiedWrapper;->convert(Ljava/util/function/BiConsumer;)Lj$/util/function/BiConsumer;

    move-result-object p3

    invoke-interface {v0, p1, p2, p3}, Lj$/util/stream/E;->z(Lj$/util/function/Supplier;Lj$/util/function/f0;Lj$/util/function/BiConsumer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic count()J
    .locals 2

    iget-object v0, p0, Lj$/util/stream/D;->a:Lj$/util/stream/E;

    invoke-interface {v0}, Lj$/util/stream/E;->count()J

    move-result-wide v0

    return-wide v0
.end method

.method public final synthetic distinct()Ljava/util/stream/DoubleStream;
    .locals 1

    iget-object v0, p0, Lj$/util/stream/D;->a:Lj$/util/stream/E;

    invoke-interface {v0}, Lj$/util/stream/E;->distinct()Lj$/util/stream/E;

    move-result-object v0

    invoke-static {v0}, Lj$/util/stream/D;->f0(Lj$/util/stream/E;)Ljava/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic equals(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lj$/util/stream/D;->a:Lj$/util/stream/E;

    instance-of v1, p1, Lj$/util/stream/D;

    if-eqz v1, :cond_0

    check-cast p1, Lj$/util/stream/D;

    iget-object p1, p1, Lj$/util/stream/D;->a:Lj$/util/stream/E;

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic filter(Ljava/util/function/DoublePredicate;)Ljava/util/stream/DoubleStream;
    .locals 1

    iget-object v0, p0, Lj$/util/stream/D;->a:Lj$/util/stream/E;

    invoke-static {p1}, Lj$/util/function/q;->a(Ljava/util/function/DoublePredicate;)Lj$/util/function/q;

    move-result-object p1

    invoke-interface {v0, p1}, Lj$/util/stream/E;->S(Lj$/util/function/q;)Lj$/util/stream/E;

    move-result-object p1

    invoke-static {p1}, Lj$/util/stream/D;->f0(Lj$/util/stream/E;)Ljava/util/stream/DoubleStream;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic findAny()Ljava/util/OptionalDouble;
    .locals 1

    iget-object v0, p0, Lj$/util/stream/D;->a:Lj$/util/stream/E;

    invoke-interface {v0}, Lj$/util/stream/E;->findAny()Lj$/util/j;

    move-result-object v0

    invoke-static {v0}, Lj$/util/A;->v(Lj$/util/j;)Ljava/util/OptionalDouble;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic findFirst()Ljava/util/OptionalDouble;
    .locals 1

    iget-object v0, p0, Lj$/util/stream/D;->a:Lj$/util/stream/E;

    invoke-interface {v0}, Lj$/util/stream/E;->findFirst()Lj$/util/j;

    move-result-object v0

    invoke-static {v0}, Lj$/util/A;->v(Lj$/util/j;)Ljava/util/OptionalDouble;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic flatMap(Ljava/util/function/DoubleFunction;)Ljava/util/stream/DoubleStream;
    .locals 1

    iget-object v0, p0, Lj$/util/stream/D;->a:Lj$/util/stream/E;

    invoke-static {p1}, Lj$/util/function/n;->a(Ljava/util/function/DoubleFunction;)Lj$/util/function/p;

    move-result-object p1

    invoke-interface {v0, p1}, Lj$/util/stream/E;->q(Lj$/util/function/p;)Lj$/util/stream/E;

    move-result-object p1

    invoke-static {p1}, Lj$/util/stream/D;->f0(Lj$/util/stream/E;)Ljava/util/stream/DoubleStream;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic forEach(Ljava/util/function/DoubleConsumer;)V
    .locals 1

    iget-object v0, p0, Lj$/util/stream/D;->a:Lj$/util/stream/E;

    invoke-static {p1}, Lj$/util/function/k;->a(Ljava/util/function/DoubleConsumer;)Lj$/util/function/m;

    move-result-object p1

    invoke-interface {v0, p1}, Lj$/util/stream/E;->i(Lj$/util/function/m;)V

    return-void
.end method

.method public final synthetic forEachOrdered(Ljava/util/function/DoubleConsumer;)V
    .locals 1

    iget-object v0, p0, Lj$/util/stream/D;->a:Lj$/util/stream/E;

    invoke-static {p1}, Lj$/util/function/k;->a(Ljava/util/function/DoubleConsumer;)Lj$/util/function/m;

    move-result-object p1

    invoke-interface {v0, p1}, Lj$/util/stream/E;->c0(Lj$/util/function/m;)V

    return-void
.end method

.method public final synthetic hashCode()I
    .locals 1

    iget-object v0, p0, Lj$/util/stream/D;->a:Lj$/util/stream/E;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final synthetic isParallel()Z
    .locals 1

    iget-object v0, p0, Lj$/util/stream/D;->a:Lj$/util/stream/E;

    invoke-interface {v0}, Lj$/util/stream/BaseStream;->isParallel()Z

    move-result v0

    return v0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lj$/util/stream/D;->a:Lj$/util/stream/E;

    invoke-interface {v0}, Lj$/util/stream/BaseStream;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic iterator()Ljava/util/PrimitiveIterator$OfDouble;
    .locals 1

    iget-object v0, p0, Lj$/util/stream/D;->a:Lj$/util/stream/E;

    invoke-interface {v0}, Lj$/util/stream/E;->iterator()Lj$/util/p;

    move-result-object v0

    invoke-static {v0}, Lj$/util/o;->b(Lj$/util/p;)Ljava/util/PrimitiveIterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic limit(J)Ljava/util/stream/DoubleStream;
    .locals 1

    iget-object v0, p0, Lj$/util/stream/D;->a:Lj$/util/stream/E;

    invoke-interface {v0, p1, p2}, Lj$/util/stream/E;->limit(J)Lj$/util/stream/E;

    move-result-object p1

    invoke-static {p1}, Lj$/util/stream/D;->f0(Lj$/util/stream/E;)Ljava/util/stream/DoubleStream;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic map(Ljava/util/function/DoubleUnaryOperator;)Ljava/util/stream/DoubleStream;
    .locals 1

    iget-object v0, p0, Lj$/util/stream/D;->a:Lj$/util/stream/E;

    invoke-static {p1}, Lj$/util/function/v;->a(Ljava/util/function/DoubleUnaryOperator;)Lj$/util/function/v;

    move-result-object p1

    invoke-interface {v0, p1}, Lj$/util/stream/E;->L(Lj$/util/function/v;)Lj$/util/stream/E;

    move-result-object p1

    invoke-static {p1}, Lj$/util/stream/D;->f0(Lj$/util/stream/E;)Ljava/util/stream/DoubleStream;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic mapToInt(Ljava/util/function/DoubleToIntFunction;)Ljava/util/stream/IntStream;
    .locals 1

    iget-object v0, p0, Lj$/util/stream/D;->a:Lj$/util/stream/E;

    invoke-static {p1}, Lj$/util/function/r;->a(Ljava/util/function/DoubleToIntFunction;)Lj$/util/function/r;

    move-result-object p1

    invoke-interface {v0, p1}, Lj$/util/stream/E;->Q(Lj$/util/function/r;)Lj$/util/stream/IntStream;

    move-result-object p1

    invoke-static {p1}, Lj$/util/stream/IntStream$Wrapper;->convert(Lj$/util/stream/IntStream;)Ljava/util/stream/IntStream;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic mapToLong(Ljava/util/function/DoubleToLongFunction;)Ljava/util/stream/LongStream;
    .locals 1

    iget-object v0, p0, Lj$/util/stream/D;->a:Lj$/util/stream/E;

    invoke-static {p1}, Lj$/util/function/s;->a(Ljava/util/function/DoubleToLongFunction;)Lj$/util/function/u;

    move-result-object p1

    invoke-interface {v0, p1}, Lj$/util/stream/E;->r(Lj$/util/function/u;)Lj$/util/stream/LongStream;

    move-result-object p1

    invoke-static {p1}, Lj$/util/stream/k0;->f0(Lj$/util/stream/LongStream;)Ljava/util/stream/LongStream;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic mapToObj(Ljava/util/function/DoubleFunction;)Ljava/util/stream/Stream;
    .locals 1

    iget-object v0, p0, Lj$/util/stream/D;->a:Lj$/util/stream/E;

    invoke-static {p1}, Lj$/util/function/n;->a(Ljava/util/function/DoubleFunction;)Lj$/util/function/p;

    move-result-object p1

    invoke-interface {v0, p1}, Lj$/util/stream/E;->G(Lj$/util/function/p;)Lj$/util/stream/Stream;

    move-result-object p1

    invoke-static {p1}, Lj$/util/stream/Stream$Wrapper;->convert(Lj$/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic max()Ljava/util/OptionalDouble;
    .locals 1

    iget-object v0, p0, Lj$/util/stream/D;->a:Lj$/util/stream/E;

    invoke-interface {v0}, Lj$/util/stream/E;->max()Lj$/util/j;

    move-result-object v0

    invoke-static {v0}, Lj$/util/A;->v(Lj$/util/j;)Ljava/util/OptionalDouble;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic min()Ljava/util/OptionalDouble;
    .locals 1

    iget-object v0, p0, Lj$/util/stream/D;->a:Lj$/util/stream/E;

    invoke-interface {v0}, Lj$/util/stream/E;->min()Lj$/util/j;

    move-result-object v0

    invoke-static {v0}, Lj$/util/A;->v(Lj$/util/j;)Ljava/util/OptionalDouble;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic noneMatch(Ljava/util/function/DoublePredicate;)Z
    .locals 1

    iget-object v0, p0, Lj$/util/stream/D;->a:Lj$/util/stream/E;

    invoke-static {p1}, Lj$/util/function/q;->a(Ljava/util/function/DoublePredicate;)Lj$/util/function/q;

    move-result-object p1

    invoke-interface {v0, p1}, Lj$/util/stream/E;->j(Lj$/util/function/q;)Z

    move-result p1

    return p1
.end method

.method public final synthetic onClose(Ljava/lang/Runnable;)Ljava/util/stream/BaseStream;
    .locals 1

    iget-object v0, p0, Lj$/util/stream/D;->a:Lj$/util/stream/E;

    invoke-interface {v0, p1}, Lj$/util/stream/BaseStream;->onClose(Ljava/lang/Runnable;)Lj$/util/stream/BaseStream;

    move-result-object p1

    invoke-static {p1}, Lj$/util/stream/g;->f0(Lj$/util/stream/BaseStream;)Ljava/util/stream/BaseStream;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic parallel()Ljava/util/stream/BaseStream;
    .locals 1

    iget-object v0, p0, Lj$/util/stream/D;->a:Lj$/util/stream/E;

    invoke-interface {v0}, Lj$/util/stream/BaseStream;->parallel()Lj$/util/stream/BaseStream;

    move-result-object v0

    invoke-static {v0}, Lj$/util/stream/g;->f0(Lj$/util/stream/BaseStream;)Ljava/util/stream/BaseStream;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic parallel()Ljava/util/stream/DoubleStream;
    .locals 1

    iget-object v0, p0, Lj$/util/stream/D;->a:Lj$/util/stream/E;

    invoke-interface {v0}, Lj$/util/stream/E;->parallel()Lj$/util/stream/E;

    move-result-object v0

    invoke-static {v0}, Lj$/util/stream/D;->f0(Lj$/util/stream/E;)Ljava/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic peek(Ljava/util/function/DoubleConsumer;)Ljava/util/stream/DoubleStream;
    .locals 1

    iget-object v0, p0, Lj$/util/stream/D;->a:Lj$/util/stream/E;

    invoke-static {p1}, Lj$/util/function/k;->a(Ljava/util/function/DoubleConsumer;)Lj$/util/function/m;

    move-result-object p1

    invoke-interface {v0, p1}, Lj$/util/stream/E;->a(Lj$/util/function/m;)Lj$/util/stream/E;

    move-result-object p1

    invoke-static {p1}, Lj$/util/stream/D;->f0(Lj$/util/stream/E;)Ljava/util/stream/DoubleStream;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic reduce(DLjava/util/function/DoubleBinaryOperator;)D
    .locals 1

    iget-object v0, p0, Lj$/util/stream/D;->a:Lj$/util/stream/E;

    invoke-static {p3}, Lj$/util/function/g;->a(Ljava/util/function/DoubleBinaryOperator;)Lj$/util/function/i;

    move-result-object p3

    invoke-interface {v0, p1, p2, p3}, Lj$/util/stream/E;->D(DLj$/util/function/i;)D

    move-result-wide p1

    return-wide p1
.end method

.method public final synthetic reduce(Ljava/util/function/DoubleBinaryOperator;)Ljava/util/OptionalDouble;
    .locals 1

    iget-object v0, p0, Lj$/util/stream/D;->a:Lj$/util/stream/E;

    invoke-static {p1}, Lj$/util/function/g;->a(Ljava/util/function/DoubleBinaryOperator;)Lj$/util/function/i;

    move-result-object p1

    invoke-interface {v0, p1}, Lj$/util/stream/E;->x(Lj$/util/function/i;)Lj$/util/j;

    move-result-object p1

    invoke-static {p1}, Lj$/util/A;->v(Lj$/util/j;)Ljava/util/OptionalDouble;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic sequential()Ljava/util/stream/BaseStream;
    .locals 1

    iget-object v0, p0, Lj$/util/stream/D;->a:Lj$/util/stream/E;

    invoke-interface {v0}, Lj$/util/stream/BaseStream;->sequential()Lj$/util/stream/BaseStream;

    move-result-object v0

    invoke-static {v0}, Lj$/util/stream/g;->f0(Lj$/util/stream/BaseStream;)Ljava/util/stream/BaseStream;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic sequential()Ljava/util/stream/DoubleStream;
    .locals 1

    iget-object v0, p0, Lj$/util/stream/D;->a:Lj$/util/stream/E;

    invoke-interface {v0}, Lj$/util/stream/E;->sequential()Lj$/util/stream/E;

    move-result-object v0

    invoke-static {v0}, Lj$/util/stream/D;->f0(Lj$/util/stream/E;)Ljava/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic skip(J)Ljava/util/stream/DoubleStream;
    .locals 1

    iget-object v0, p0, Lj$/util/stream/D;->a:Lj$/util/stream/E;

    invoke-interface {v0, p1, p2}, Lj$/util/stream/E;->skip(J)Lj$/util/stream/E;

    move-result-object p1

    invoke-static {p1}, Lj$/util/stream/D;->f0(Lj$/util/stream/E;)Ljava/util/stream/DoubleStream;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic sorted()Ljava/util/stream/DoubleStream;
    .locals 1

    iget-object v0, p0, Lj$/util/stream/D;->a:Lj$/util/stream/E;

    invoke-interface {v0}, Lj$/util/stream/E;->sorted()Lj$/util/stream/E;

    move-result-object v0

    invoke-static {v0}, Lj$/util/stream/D;->f0(Lj$/util/stream/E;)Ljava/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic spliterator()Ljava/util/Spliterator$OfDouble;
    .locals 1

    iget-object v0, p0, Lj$/util/stream/D;->a:Lj$/util/stream/E;

    invoke-interface {v0}, Lj$/util/stream/E;->spliterator()Lj$/util/D;

    move-result-object v0

    invoke-static {v0}, Lj$/util/C;->a(Lj$/util/D;)Ljava/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic spliterator()Ljava/util/Spliterator;
    .locals 1

    iget-object v0, p0, Lj$/util/stream/D;->a:Lj$/util/stream/E;

    invoke-interface {v0}, Lj$/util/stream/BaseStream;->spliterator()Lj$/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Spliterator$Wrapper;->convert(Lj$/util/Spliterator;)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic sum()D
    .locals 2

    iget-object v0, p0, Lj$/util/stream/D;->a:Lj$/util/stream/E;

    invoke-interface {v0}, Lj$/util/stream/E;->sum()D

    move-result-wide v0

    return-wide v0
.end method

.method public final summaryStatistics()Ljava/util/DoubleSummaryStatistics;
    .locals 2

    iget-object v0, p0, Lj$/util/stream/D;->a:Lj$/util/stream/E;

    invoke-interface {v0}, Lj$/util/stream/E;->summaryStatistics()Lj$/util/f;

    .line 0
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Java 8+ API desugaring (library desugaring) cannot convert to java.util.DoubleSummaryStatistics"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final synthetic toArray()[D
    .locals 1

    iget-object v0, p0, Lj$/util/stream/D;->a:Lj$/util/stream/E;

    invoke-interface {v0}, Lj$/util/stream/E;->toArray()[D

    move-result-object v0

    return-object v0
.end method

.method public final synthetic unordered()Ljava/util/stream/BaseStream;
    .locals 1

    iget-object v0, p0, Lj$/util/stream/D;->a:Lj$/util/stream/E;

    invoke-interface {v0}, Lj$/util/stream/BaseStream;->unordered()Lj$/util/stream/BaseStream;

    move-result-object v0

    invoke-static {v0}, Lj$/util/stream/g;->f0(Lj$/util/stream/BaseStream;)Ljava/util/stream/BaseStream;

    move-result-object v0

    return-object v0
.end method
