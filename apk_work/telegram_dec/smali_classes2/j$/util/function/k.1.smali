.class public final synthetic Lj$/util/function/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/util/function/m;


# instance fields
.field public final synthetic a:Ljava/util/function/DoubleConsumer;


# direct methods
.method private synthetic constructor <init>(Ljava/util/function/DoubleConsumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/util/function/k;->a:Ljava/util/function/DoubleConsumer;

    return-void
.end method

.method public static synthetic a(Ljava/util/function/DoubleConsumer;)Lj$/util/function/m;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lj$/util/function/l;

    if-eqz v0, :cond_1

    check-cast p0, Lj$/util/function/l;

    iget-object p0, p0, Lj$/util/function/l;->a:Lj$/util/function/m;

    return-object p0

    :cond_1
    new-instance v0, Lj$/util/function/k;

    invoke-direct {v0, p0}, Lj$/util/function/k;-><init>(Ljava/util/function/DoubleConsumer;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic accept(D)V
    .locals 1

    iget-object v0, p0, Lj$/util/function/k;->a:Ljava/util/function/DoubleConsumer;

    invoke-interface {v0, p1, p2}, Ljava/util/function/DoubleConsumer;->accept(D)V

    return-void
.end method

.method public final synthetic equals(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lj$/util/function/k;->a:Ljava/util/function/DoubleConsumer;

    instance-of v1, p1, Lj$/util/function/k;

    if-eqz v1, :cond_0

    check-cast p1, Lj$/util/function/k;

    iget-object p1, p1, Lj$/util/function/k;->a:Ljava/util/function/DoubleConsumer;

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic hashCode()I
    .locals 1

    iget-object v0, p0, Lj$/util/function/k;->a:Ljava/util/function/DoubleConsumer;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final synthetic k(Lj$/util/function/m;)Lj$/util/function/m;
    .locals 1

    iget-object v0, p0, Lj$/util/function/k;->a:Ljava/util/function/DoubleConsumer;

    invoke-static {p1}, Lj$/util/function/l;->a(Lj$/util/function/m;)Ljava/util/function/DoubleConsumer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/function/DoubleConsumer;->andThen(Ljava/util/function/DoubleConsumer;)Ljava/util/function/DoubleConsumer;

    move-result-object p1

    invoke-static {p1}, Lj$/util/function/k;->a(Ljava/util/function/DoubleConsumer;)Lj$/util/function/m;

    move-result-object p1

    return-object p1
.end method
