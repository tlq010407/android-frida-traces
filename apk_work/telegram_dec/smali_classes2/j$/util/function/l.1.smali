.class public final synthetic Lj$/util/function/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/DoubleConsumer;


# instance fields
.field public final synthetic a:Lj$/util/function/m;


# direct methods
.method private synthetic constructor <init>(Lj$/util/function/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/util/function/l;->a:Lj$/util/function/m;

    return-void
.end method

.method public static synthetic a(Lj$/util/function/m;)Ljava/util/function/DoubleConsumer;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lj$/util/function/k;

    if-eqz v0, :cond_1

    check-cast p0, Lj$/util/function/k;

    iget-object p0, p0, Lj$/util/function/k;->a:Ljava/util/function/DoubleConsumer;

    return-object p0

    :cond_1
    new-instance v0, Lj$/util/function/l;

    invoke-direct {v0, p0}, Lj$/util/function/l;-><init>(Lj$/util/function/m;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic accept(D)V
    .locals 1

    iget-object v0, p0, Lj$/util/function/l;->a:Lj$/util/function/m;

    invoke-interface {v0, p1, p2}, Lj$/util/function/m;->accept(D)V

    return-void
.end method

.method public final synthetic andThen(Ljava/util/function/DoubleConsumer;)Ljava/util/function/DoubleConsumer;
    .locals 1

    iget-object v0, p0, Lj$/util/function/l;->a:Lj$/util/function/m;

    invoke-static {p1}, Lj$/util/function/k;->a(Ljava/util/function/DoubleConsumer;)Lj$/util/function/m;

    move-result-object p1

    invoke-interface {v0, p1}, Lj$/util/function/m;->k(Lj$/util/function/m;)Lj$/util/function/m;

    move-result-object p1

    invoke-static {p1}, Lj$/util/function/l;->a(Lj$/util/function/m;)Ljava/util/function/DoubleConsumer;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic equals(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lj$/util/function/l;->a:Lj$/util/function/m;

    instance-of v1, p1, Lj$/util/function/l;

    if-eqz v1, :cond_0

    check-cast p1, Lj$/util/function/l;

    iget-object p1, p1, Lj$/util/function/l;->a:Lj$/util/function/m;

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic hashCode()I
    .locals 1

    iget-object v0, p0, Lj$/util/function/l;->a:Lj$/util/function/m;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
