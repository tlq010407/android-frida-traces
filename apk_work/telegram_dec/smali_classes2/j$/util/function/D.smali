.class public final synthetic Lj$/util/function/D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic a:Lj$/util/function/E;


# direct methods
.method private synthetic constructor <init>(Lj$/util/function/E;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/util/function/D;->a:Lj$/util/function/E;

    return-void
.end method

.method public static synthetic a(Lj$/util/function/E;)Ljava/util/function/IntConsumer;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lj$/util/function/C;

    if-eqz v0, :cond_1

    check-cast p0, Lj$/util/function/C;

    iget-object p0, p0, Lj$/util/function/C;->a:Ljava/util/function/IntConsumer;

    return-object p0

    :cond_1
    new-instance v0, Lj$/util/function/D;

    invoke-direct {v0, p0}, Lj$/util/function/D;-><init>(Lj$/util/function/E;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic accept(I)V
    .locals 1

    iget-object v0, p0, Lj$/util/function/D;->a:Lj$/util/function/E;

    invoke-interface {v0, p1}, Lj$/util/function/E;->accept(I)V

    return-void
.end method

.method public final synthetic andThen(Ljava/util/function/IntConsumer;)Ljava/util/function/IntConsumer;
    .locals 1

    iget-object v0, p0, Lj$/util/function/D;->a:Lj$/util/function/E;

    invoke-static {p1}, Lj$/util/function/C;->a(Ljava/util/function/IntConsumer;)Lj$/util/function/E;

    move-result-object p1

    invoke-interface {v0, p1}, Lj$/util/function/E;->l(Lj$/util/function/E;)Lj$/util/function/E;

    move-result-object p1

    invoke-static {p1}, Lj$/util/function/D;->a(Lj$/util/function/E;)Ljava/util/function/IntConsumer;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic equals(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lj$/util/function/D;->a:Lj$/util/function/E;

    instance-of v1, p1, Lj$/util/function/D;

    if-eqz v1, :cond_0

    check-cast p1, Lj$/util/function/D;

    iget-object p1, p1, Lj$/util/function/D;->a:Lj$/util/function/E;

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic hashCode()I
    .locals 1

    iget-object v0, p0, Lj$/util/function/D;->a:Lj$/util/function/E;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
