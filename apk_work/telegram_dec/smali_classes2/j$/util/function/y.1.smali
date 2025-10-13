.class public final synthetic Lj$/util/function/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/util/function/A;


# instance fields
.field public final synthetic a:Ljava/util/function/IntBinaryOperator;


# direct methods
.method private synthetic constructor <init>(Ljava/util/function/IntBinaryOperator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/util/function/y;->a:Ljava/util/function/IntBinaryOperator;

    return-void
.end method

.method public static synthetic a(Ljava/util/function/IntBinaryOperator;)Lj$/util/function/A;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lj$/util/function/z;

    if-eqz v0, :cond_1

    check-cast p0, Lj$/util/function/z;

    iget-object p0, p0, Lj$/util/function/z;->a:Lj$/util/function/A;

    return-object p0

    :cond_1
    new-instance v0, Lj$/util/function/y;

    invoke-direct {v0, p0}, Lj$/util/function/y;-><init>(Ljava/util/function/IntBinaryOperator;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic applyAsInt(II)I
    .locals 1

    iget-object v0, p0, Lj$/util/function/y;->a:Ljava/util/function/IntBinaryOperator;

    invoke-interface {v0, p1, p2}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result p1

    return p1
.end method

.method public final synthetic equals(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lj$/util/function/y;->a:Ljava/util/function/IntBinaryOperator;

    instance-of v1, p1, Lj$/util/function/y;

    if-eqz v1, :cond_0

    check-cast p1, Lj$/util/function/y;

    iget-object p1, p1, Lj$/util/function/y;->a:Ljava/util/function/IntBinaryOperator;

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic hashCode()I
    .locals 1

    iget-object v0, p0, Lj$/util/function/y;->a:Ljava/util/function/IntBinaryOperator;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
