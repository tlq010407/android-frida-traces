.class public final synthetic Lj$/util/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/util/t;
.implements Lj$/util/h;


# instance fields
.field public final synthetic a:Ljava/util/PrimitiveIterator$OfInt;


# direct methods
.method private synthetic constructor <init>(Ljava/util/PrimitiveIterator$OfInt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/util/r;->a:Ljava/util/PrimitiveIterator$OfInt;

    return-void
.end method

.method public static synthetic b(Ljava/util/PrimitiveIterator$OfInt;)Lj$/util/t;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lj$/util/s;

    if-eqz v0, :cond_1

    check-cast p0, Lj$/util/s;

    iget-object p0, p0, Lj$/util/s;->a:Lj$/util/t;

    return-object p0

    :cond_1
    new-instance v0, Lj$/util/r;

    invoke-direct {v0, p0}, Lj$/util/r;-><init>(Ljava/util/PrimitiveIterator$OfInt;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a(Lj$/util/function/Consumer;)V
    .locals 1

    iget-object v0, p0, Lj$/util/r;->a:Ljava/util/PrimitiveIterator$OfInt;

    invoke-static {p1}, Lj$/util/function/Consumer$Wrapper;->convert(Lj$/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/PrimitiveIterator$OfInt;->forEachRemaining(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final synthetic c(Lj$/util/function/E;)V
    .locals 1

    iget-object v0, p0, Lj$/util/r;->a:Ljava/util/PrimitiveIterator$OfInt;

    invoke-static {p1}, Lj$/util/function/D;->a(Lj$/util/function/E;)Ljava/util/function/IntConsumer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/PrimitiveIterator$OfInt;->forEachRemaining(Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method public final synthetic equals(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lj$/util/r;->a:Ljava/util/PrimitiveIterator$OfInt;

    instance-of v1, p1, Lj$/util/r;

    if-eqz v1, :cond_0

    check-cast p1, Lj$/util/r;

    iget-object p1, p1, Lj$/util/r;->a:Ljava/util/PrimitiveIterator$OfInt;

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lj$/util/r;->a:Ljava/util/PrimitiveIterator$OfInt;

    invoke-interface {v0, p1}, Ljava/util/PrimitiveIterator$OfInt;->forEachRemaining(Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic hasNext()Z
    .locals 1

    iget-object v0, p0, Lj$/util/r;->a:Ljava/util/PrimitiveIterator$OfInt;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final synthetic hashCode()I
    .locals 1

    iget-object v0, p0, Lj$/util/r;->a:Ljava/util/PrimitiveIterator$OfInt;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final synthetic next()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lj$/util/r;->a:Ljava/util/PrimitiveIterator$OfInt;

    invoke-interface {v0}, Ljava/util/PrimitiveIterator$OfInt;->next()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lj$/util/r;->a:Ljava/util/PrimitiveIterator$OfInt;

    invoke-interface {v0}, Ljava/util/PrimitiveIterator$OfInt;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic nextInt()I
    .locals 1

    iget-object v0, p0, Lj$/util/r;->a:Ljava/util/PrimitiveIterator$OfInt;

    invoke-interface {v0}, Ljava/util/PrimitiveIterator$OfInt;->nextInt()I

    move-result v0

    return v0
.end method

.method public final synthetic remove()V
    .locals 1

    iget-object v0, p0, Lj$/util/r;->a:Ljava/util/PrimitiveIterator$OfInt;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void
.end method
