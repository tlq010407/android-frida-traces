.class final Lj$/util/S;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/util/p;
.implements Lj$/util/function/m;
.implements Lj$/util/h;


# instance fields
.field a:Z

.field b:D

.field final synthetic c:Lj$/util/D;


# direct methods
.method constructor <init>(Lj$/util/D;)V
    .locals 0

    iput-object p1, p0, Lj$/util/S;->c:Lj$/util/D;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lj$/util/S;->a:Z

    return-void
.end method


# virtual methods
.method public final a(Lj$/util/function/Consumer;)V
    .locals 1

    .line 0
    instance-of v0, p1, Lj$/util/function/m;

    if-eqz v0, :cond_0

    check-cast p1, Lj$/util/function/m;

    invoke-virtual {p0, p1}, Lj$/util/S;->e(Lj$/util/function/m;)V

    goto :goto_0

    .line 0
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 0
    sget-boolean v0, Lj$/util/d0;->a:Z

    if-nez v0, :cond_1

    new-instance v0, Lj$/util/m;

    invoke-direct {v0, p1}, Lj$/util/m;-><init>(Lj$/util/function/Consumer;)V

    invoke-virtual {p0, v0}, Lj$/util/S;->e(Lj$/util/function/m;)V

    :goto_0
    return-void

    :cond_1
    const-class p1, Lj$/util/S;

    const-string v0, "{0} calling PrimitiveIterator.OfDouble.forEachRemainingDouble(action::accept)"

    invoke-static {p1, v0}, Lj$/util/d0;->a(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final accept(D)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lj$/util/S;->a:Z

    iput-wide p1, p0, Lj$/util/S;->b:D

    return-void
.end method

.method public final e(Lj$/util/function/m;)V
    .locals 2

    .line 0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 0
    :goto_0
    invoke-virtual {p0}, Lj$/util/S;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lj$/util/S;->nextDouble()D

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lj$/util/function/m;->accept(D)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0

    .line 0
    check-cast p1, Lj$/util/function/m;

    invoke-virtual {p0, p1}, Lj$/util/S;->e(Lj$/util/function/m;)V

    return-void
.end method

.method public final hasNext()Z
    .locals 1

    iget-boolean v0, p0, Lj$/util/S;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lj$/util/S;->c:Lj$/util/D;

    invoke-interface {v0, p0}, Lj$/util/D;->p(Lj$/util/function/m;)Z

    :cond_0
    iget-boolean v0, p0, Lj$/util/S;->a:Z

    return v0
.end method

.method public final synthetic k(Lj$/util/function/m;)Lj$/util/function/m;
    .locals 0

    invoke-static {p0, p1}, Lj$/com/android/tools/r8/a;->b(Lj$/util/function/m;Lj$/util/function/m;)Lj$/util/function/j;

    move-result-object p1

    return-object p1
.end method

.method public final next()Ljava/lang/Double;
    .locals 2

    .line 0
    sget-boolean v0, Lj$/util/d0;->a:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lj$/util/S;->nextDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_0
    const-class v0, Lj$/util/S;

    const-string v1, "{0} calling PrimitiveIterator.OfDouble.nextLong()"

    invoke-static {v0, v1}, Lj$/util/d0;->a(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 0
    invoke-virtual {p0}, Lj$/util/S;->next()Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public final nextDouble()D
    .locals 2

    iget-boolean v0, p0, Lj$/util/S;->a:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lj$/util/S;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lj$/util/S;->a:Z

    iget-wide v0, p0, Lj$/util/S;->b:D

    return-wide v0
.end method
