.class public final synthetic Lj$/util/function/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/DoubleToLongFunction;


# instance fields
.field public final synthetic a:Lj$/util/function/u;


# direct methods
.method private synthetic constructor <init>(Lj$/util/function/u;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/util/function/t;->a:Lj$/util/function/u;

    return-void
.end method

.method public static synthetic a(Lj$/util/function/u;)Ljava/util/function/DoubleToLongFunction;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lj$/util/function/s;

    if-eqz v0, :cond_1

    check-cast p0, Lj$/util/function/s;

    iget-object p0, p0, Lj$/util/function/s;->a:Ljava/util/function/DoubleToLongFunction;

    return-object p0

    :cond_1
    new-instance v0, Lj$/util/function/t;

    invoke-direct {v0, p0}, Lj$/util/function/t;-><init>(Lj$/util/function/u;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic applyAsLong(D)J
    .locals 1

    iget-object v0, p0, Lj$/util/function/t;->a:Lj$/util/function/u;

    invoke-interface {v0, p1, p2}, Lj$/util/function/u;->applyAsLong(D)J

    move-result-wide p1

    return-wide p1
.end method

.method public final synthetic equals(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lj$/util/function/t;->a:Lj$/util/function/u;

    instance-of v1, p1, Lj$/util/function/t;

    if-eqz v1, :cond_0

    check-cast p1, Lj$/util/function/t;

    iget-object p1, p1, Lj$/util/function/t;->a:Lj$/util/function/u;

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic hashCode()I
    .locals 1

    iget-object v0, p0, Lj$/util/function/t;->a:Lj$/util/function/u;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
