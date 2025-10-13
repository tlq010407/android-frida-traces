.class public final synthetic Lj$/util/function/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntBinaryOperator;


# instance fields
.field public final synthetic a:Lj$/util/function/A;


# direct methods
.method private synthetic constructor <init>(Lj$/util/function/A;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/util/function/z;->a:Lj$/util/function/A;

    return-void
.end method

.method public static synthetic a(Lj$/util/function/A;)Ljava/util/function/IntBinaryOperator;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lj$/util/function/y;

    if-eqz v0, :cond_1

    check-cast p0, Lj$/util/function/y;

    iget-object p0, p0, Lj$/util/function/y;->a:Ljava/util/function/IntBinaryOperator;

    return-object p0

    :cond_1
    new-instance v0, Lj$/util/function/z;

    invoke-direct {v0, p0}, Lj$/util/function/z;-><init>(Lj$/util/function/A;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic applyAsInt(II)I
    .locals 1

    iget-object v0, p0, Lj$/util/function/z;->a:Lj$/util/function/A;

    invoke-interface {v0, p1, p2}, Lj$/util/function/A;->applyAsInt(II)I

    move-result p1

    return p1
.end method

.method public final synthetic equals(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lj$/util/function/z;->a:Lj$/util/function/A;

    instance-of v1, p1, Lj$/util/function/z;

    if-eqz v1, :cond_0

    check-cast p1, Lj$/util/function/z;

    iget-object p1, p1, Lj$/util/function/z;->a:Lj$/util/function/A;

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic hashCode()I
    .locals 1

    iget-object v0, p0, Lj$/util/function/z;->a:Lj$/util/function/A;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
