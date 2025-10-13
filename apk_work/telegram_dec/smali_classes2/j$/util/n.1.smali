.class public final synthetic Lj$/util/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/util/p;
.implements Lj$/util/h;


# instance fields
.field public final synthetic a:Ljava/util/PrimitiveIterator$OfDouble;


# direct methods
.method private synthetic constructor <init>(Ljava/util/PrimitiveIterator$OfDouble;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/util/n;->a:Ljava/util/PrimitiveIterator$OfDouble;

    return-void
.end method

.method public static synthetic b(Ljava/util/PrimitiveIterator$OfDouble;)Lj$/util/p;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lj$/util/o;

    if-eqz v0, :cond_1

    check-cast p0, Lj$/util/o;

    iget-object p0, p0, Lj$/util/o;->a:Lj$/util/p;

    return-object p0

    :cond_1
    new-instance v0, Lj$/util/n;

    invoke-direct {v0, p0}, Lj$/util/n;-><init>(Ljava/util/PrimitiveIterator$OfDouble;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a(Lj$/util/function/Consumer;)V
    .locals 1

    iget-object v0, p0, Lj$/util/n;->a:Ljava/util/PrimitiveIterator$OfDouble;

    invoke-static {p1}, Lj$/util/function/Consumer$Wrapper;->convert(Lj$/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/PrimitiveIterator$OfDouble;->forEachRemaining(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final synthetic e(Lj$/util/function/m;)V
    .locals 1

    iget-object v0, p0, Lj$/util/n;->a:Ljava/util/PrimitiveIterator$OfDouble;

    invoke-static {p1}, Lj$/util/function/l;->a(Lj$/util/function/m;)Ljava/util/function/DoubleConsumer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/PrimitiveIterator$OfDouble;->forEachRemaining(Ljava/util/function/DoubleConsumer;)V

    return-void
.end method

.method public final synthetic equals(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lj$/util/n;->a:Ljava/util/PrimitiveIterator$OfDouble;

    instance-of v1, p1, Lj$/util/n;

    if-eqz v1, :cond_0

    check-cast p1, Lj$/util/n;

    iget-object p1, p1, Lj$/util/n;->a:Ljava/util/PrimitiveIterator$OfDouble;

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lj$/util/n;->a:Ljava/util/PrimitiveIterator$OfDouble;

    invoke-interface {v0, p1}, Ljava/util/PrimitiveIterator$OfDouble;->forEachRemaining(Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic hasNext()Z
    .locals 1

    iget-object v0, p0, Lj$/util/n;->a:Ljava/util/PrimitiveIterator$OfDouble;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final synthetic hashCode()I
    .locals 1

    iget-object v0, p0, Lj$/util/n;->a:Ljava/util/PrimitiveIterator$OfDouble;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final synthetic next()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lj$/util/n;->a:Ljava/util/PrimitiveIterator$OfDouble;

    invoke-interface {v0}, Ljava/util/PrimitiveIterator$OfDouble;->next()Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lj$/util/n;->a:Ljava/util/PrimitiveIterator$OfDouble;

    invoke-interface {v0}, Ljava/util/PrimitiveIterator$OfDouble;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic nextDouble()D
    .locals 2

    iget-object v0, p0, Lj$/util/n;->a:Ljava/util/PrimitiveIterator$OfDouble;

    invoke-interface {v0}, Ljava/util/PrimitiveIterator$OfDouble;->nextDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public final synthetic remove()V
    .locals 1

    iget-object v0, p0, Lj$/util/n;->a:Ljava/util/PrimitiveIterator$OfDouble;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void
.end method
