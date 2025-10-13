.class public final synthetic Lj$/util/function/U;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/util/function/LongFunction;


# instance fields
.field public final synthetic a:Ljava/util/function/LongFunction;


# direct methods
.method private synthetic constructor <init>(Ljava/util/function/LongFunction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/util/function/U;->a:Ljava/util/function/LongFunction;

    return-void
.end method

.method public static synthetic a(Ljava/util/function/LongFunction;)Lj$/util/function/LongFunction;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lj$/util/function/V;

    if-eqz v0, :cond_1

    check-cast p0, Lj$/util/function/V;

    iget-object p0, p0, Lj$/util/function/V;->a:Lj$/util/function/LongFunction;

    return-object p0

    :cond_1
    new-instance v0, Lj$/util/function/U;

    invoke-direct {v0, p0}, Lj$/util/function/U;-><init>(Ljava/util/function/LongFunction;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic apply(J)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lj$/util/function/U;->a:Ljava/util/function/LongFunction;

    invoke-interface {v0, p1, p2}, Ljava/util/function/LongFunction;->apply(J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic equals(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lj$/util/function/U;->a:Ljava/util/function/LongFunction;

    instance-of v1, p1, Lj$/util/function/U;

    if-eqz v1, :cond_0

    check-cast p1, Lj$/util/function/U;

    iget-object p1, p1, Lj$/util/function/U;->a:Ljava/util/function/LongFunction;

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic hashCode()I
    .locals 1

    iget-object v0, p0, Lj$/util/function/U;->a:Ljava/util/function/LongFunction;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
