.class public final synthetic Lj$/util/function/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/util/function/u;


# instance fields
.field public final synthetic a:Ljava/util/function/DoubleToLongFunction;


# direct methods
.method private synthetic constructor <init>(Ljava/util/function/DoubleToLongFunction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/util/function/s;->a:Ljava/util/function/DoubleToLongFunction;

    return-void
.end method

.method public static synthetic a(Ljava/util/function/DoubleToLongFunction;)Lj$/util/function/u;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lj$/util/function/t;

    if-eqz v0, :cond_1

    check-cast p0, Lj$/util/function/t;

    iget-object p0, p0, Lj$/util/function/t;->a:Lj$/util/function/u;

    return-object p0

    :cond_1
    new-instance v0, Lj$/util/function/s;

    invoke-direct {v0, p0}, Lj$/util/function/s;-><init>(Ljava/util/function/DoubleToLongFunction;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic applyAsLong(D)J
    .locals 1

    iget-object v0, p0, Lj$/util/function/s;->a:Ljava/util/function/DoubleToLongFunction;

    invoke-interface {v0, p1, p2}, Ljava/util/function/DoubleToLongFunction;->applyAsLong(D)J

    move-result-wide p1

    return-wide p1
.end method

.method public final synthetic equals(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lj$/util/function/s;->a:Ljava/util/function/DoubleToLongFunction;

    instance-of v1, p1, Lj$/util/function/s;

    if-eqz v1, :cond_0

    check-cast p1, Lj$/util/function/s;

    iget-object p1, p1, Lj$/util/function/s;->a:Ljava/util/function/DoubleToLongFunction;

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic hashCode()I
    .locals 1

    iget-object v0, p0, Lj$/util/function/s;->a:Ljava/util/function/DoubleToLongFunction;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
