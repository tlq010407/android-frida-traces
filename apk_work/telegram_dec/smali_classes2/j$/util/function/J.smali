.class public final synthetic Lj$/util/function/J;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntToLongFunction;


# instance fields
.field public final synthetic a:Lj$/util/function/K;


# direct methods
.method private synthetic constructor <init>(Lj$/util/function/K;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/util/function/J;->a:Lj$/util/function/K;

    return-void
.end method

.method public static synthetic a(Lj$/util/function/K;)Ljava/util/function/IntToLongFunction;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lj$/util/function/I;

    if-eqz v0, :cond_1

    check-cast p0, Lj$/util/function/I;

    iget-object p0, p0, Lj$/util/function/I;->a:Ljava/util/function/IntToLongFunction;

    return-object p0

    :cond_1
    new-instance v0, Lj$/util/function/J;

    invoke-direct {v0, p0}, Lj$/util/function/J;-><init>(Lj$/util/function/K;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic applyAsLong(I)J
    .locals 2

    iget-object v0, p0, Lj$/util/function/J;->a:Lj$/util/function/K;

    invoke-interface {v0, p1}, Lj$/util/function/K;->applyAsLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final synthetic equals(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lj$/util/function/J;->a:Lj$/util/function/K;

    instance-of v1, p1, Lj$/util/function/J;

    if-eqz v1, :cond_0

    check-cast p1, Lj$/util/function/J;

    iget-object p1, p1, Lj$/util/function/J;->a:Lj$/util/function/K;

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic hashCode()I
    .locals 1

    iget-object v0, p0, Lj$/util/function/J;->a:Lj$/util/function/K;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
