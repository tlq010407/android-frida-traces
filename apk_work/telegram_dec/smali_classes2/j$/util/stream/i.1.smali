.class public final synthetic Lj$/util/stream/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/Collector;


# instance fields
.field public final synthetic a:Ljava/util/stream/Collector;


# direct methods
.method private synthetic constructor <init>(Ljava/util/stream/Collector;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/util/stream/i;->a:Ljava/util/stream/Collector;

    return-void
.end method

.method public static synthetic a(Ljava/util/stream/Collector;)Lj$/util/stream/Collector;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lj$/util/stream/j;

    if-eqz v0, :cond_1

    check-cast p0, Lj$/util/stream/j;

    iget-object p0, p0, Lj$/util/stream/j;->a:Lj$/util/stream/Collector;

    return-object p0

    :cond_1
    new-instance v0, Lj$/util/stream/i;

    invoke-direct {v0, p0}, Lj$/util/stream/i;-><init>(Ljava/util/stream/Collector;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic accumulator()Lj$/util/function/BiConsumer;
    .locals 1

    iget-object v0, p0, Lj$/util/stream/i;->a:Ljava/util/stream/Collector;

    invoke-interface {v0}, Ljava/util/stream/Collector;->accumulator()Ljava/util/function/BiConsumer;

    move-result-object v0

    invoke-static {v0}, Lj$/util/function/BiConsumer$VivifiedWrapper;->convert(Ljava/util/function/BiConsumer;)Lj$/util/function/BiConsumer;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic characteristics()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lj$/util/stream/i;->a:Ljava/util/stream/Collector;

    invoke-interface {v0}, Ljava/util/stream/Collector;->characteristics()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic combiner()Lj$/util/function/f;
    .locals 1

    iget-object v0, p0, Lj$/util/stream/i;->a:Ljava/util/stream/Collector;

    invoke-interface {v0}, Ljava/util/stream/Collector;->combiner()Ljava/util/function/BinaryOperator;

    move-result-object v0

    invoke-static {v0}, Lj$/util/function/d;->a(Ljava/util/function/BinaryOperator;)Lj$/util/function/f;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic equals(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lj$/util/stream/i;->a:Ljava/util/stream/Collector;

    instance-of v1, p1, Lj$/util/stream/i;

    if-eqz v1, :cond_0

    check-cast p1, Lj$/util/stream/i;

    iget-object p1, p1, Lj$/util/stream/i;->a:Ljava/util/stream/Collector;

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic finisher()Lj$/util/function/Function;
    .locals 1

    iget-object v0, p0, Lj$/util/stream/i;->a:Ljava/util/stream/Collector;

    invoke-interface {v0}, Ljava/util/stream/Collector;->finisher()Ljava/util/function/Function;

    move-result-object v0

    invoke-static {v0}, Lj$/util/function/Function$VivifiedWrapper;->convert(Ljava/util/function/Function;)Lj$/util/function/Function;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic hashCode()I
    .locals 1

    iget-object v0, p0, Lj$/util/stream/i;->a:Ljava/util/stream/Collector;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final synthetic supplier()Lj$/util/function/Supplier;
    .locals 1

    iget-object v0, p0, Lj$/util/stream/i;->a:Ljava/util/stream/Collector;

    invoke-interface {v0}, Ljava/util/stream/Collector;->supplier()Ljava/util/function/Supplier;

    move-result-object v0

    invoke-static {v0}, Lj$/util/function/p0;->a(Ljava/util/function/Supplier;)Lj$/util/function/Supplier;

    move-result-object v0

    return-object v0
.end method
