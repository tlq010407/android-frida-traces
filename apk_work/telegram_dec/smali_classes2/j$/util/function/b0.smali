.class public final synthetic Lj$/util/function/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/LongUnaryOperator;


# instance fields
.field public final synthetic a:Lj$/util/function/c0;


# direct methods
.method private synthetic constructor <init>(Lj$/util/function/c0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/util/function/b0;->a:Lj$/util/function/c0;

    return-void
.end method

.method public static synthetic a(Lj$/util/function/c0;)Ljava/util/function/LongUnaryOperator;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lj$/util/function/a0;

    if-eqz v0, :cond_1

    check-cast p0, Lj$/util/function/a0;

    iget-object p0, p0, Lj$/util/function/a0;->a:Ljava/util/function/LongUnaryOperator;

    return-object p0

    :cond_1
    new-instance v0, Lj$/util/function/b0;

    invoke-direct {v0, p0}, Lj$/util/function/b0;-><init>(Lj$/util/function/c0;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic andThen(Ljava/util/function/LongUnaryOperator;)Ljava/util/function/LongUnaryOperator;
    .locals 1

    iget-object v0, p0, Lj$/util/function/b0;->a:Lj$/util/function/c0;

    invoke-static {p1}, Lj$/util/function/a0;->b(Ljava/util/function/LongUnaryOperator;)Lj$/util/function/c0;

    move-result-object p1

    invoke-interface {v0, p1}, Lj$/util/function/c0;->a(Lj$/util/function/c0;)Lj$/util/function/c0;

    move-result-object p1

    invoke-static {p1}, Lj$/util/function/b0;->a(Lj$/util/function/c0;)Ljava/util/function/LongUnaryOperator;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic applyAsLong(J)J
    .locals 1

    iget-object v0, p0, Lj$/util/function/b0;->a:Lj$/util/function/c0;

    invoke-interface {v0, p1, p2}, Lj$/util/function/c0;->applyAsLong(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public final synthetic compose(Ljava/util/function/LongUnaryOperator;)Ljava/util/function/LongUnaryOperator;
    .locals 1

    iget-object v0, p0, Lj$/util/function/b0;->a:Lj$/util/function/c0;

    invoke-static {p1}, Lj$/util/function/a0;->b(Ljava/util/function/LongUnaryOperator;)Lj$/util/function/c0;

    move-result-object p1

    invoke-interface {v0, p1}, Lj$/util/function/c0;->c(Lj$/util/function/c0;)Lj$/util/function/c0;

    move-result-object p1

    invoke-static {p1}, Lj$/util/function/b0;->a(Lj$/util/function/c0;)Ljava/util/function/LongUnaryOperator;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic equals(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lj$/util/function/b0;->a:Lj$/util/function/c0;

    instance-of v1, p1, Lj$/util/function/b0;

    if-eqz v1, :cond_0

    check-cast p1, Lj$/util/function/b0;

    iget-object p1, p1, Lj$/util/function/b0;->a:Lj$/util/function/c0;

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic hashCode()I
    .locals 1

    iget-object v0, p0, Lj$/util/function/b0;->a:Lj$/util/function/c0;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
