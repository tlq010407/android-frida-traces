.class final Lj$/util/stream/n0;
.super Lj$/util/stream/q0;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/c2;


# instance fields
.field final synthetic c:Lj$/util/stream/r0;

.field final synthetic d:Lj$/util/function/G;


# direct methods
.method constructor <init>(Lj$/util/function/G;Lj$/util/stream/r0;)V
    .locals 0

    .line 0
    iput-object p2, p0, Lj$/util/stream/n0;->c:Lj$/util/stream/r0;

    iput-object p1, p0, Lj$/util/stream/n0;->d:Lj$/util/function/G;

    invoke-direct {p0, p2}, Lj$/util/stream/q0;-><init>(Lj$/util/stream/r0;)V

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 2

    iget-boolean v0, p0, Lj$/util/stream/q0;->a:Z

    if-nez v0, :cond_0

    .line 0
    iget-object v0, p0, Lj$/util/stream/n0;->d:Lj$/util/function/G;

    iget-object v0, v0, Lj$/util/function/G;->a:Ljava/util/function/IntPredicate;

    .line 0
    invoke-interface {v0, p1}, Ljava/util/function/IntPredicate;->test(I)Z

    move-result p1

    .line 0
    iget-object v0, p0, Lj$/util/stream/n0;->c:Lj$/util/stream/r0;

    invoke-static {v0}, Lj$/util/stream/r0;->f(Lj$/util/stream/r0;)Z

    move-result v1

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lj$/util/stream/q0;->a:Z

    invoke-static {v0}, Lj$/util/stream/r0;->h(Lj$/util/stream/r0;)Z

    move-result p1

    iput-boolean p1, p0, Lj$/util/stream/q0;->b:Z

    :cond_0
    return-void
.end method

.method public final bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/u0;->h(Lj$/util/stream/c2;Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic l(Lj$/util/function/E;)Lj$/util/function/E;
    .locals 0

    invoke-static {p0, p1}, Lj$/com/android/tools/r8/a;->c(Lj$/util/function/E;Lj$/util/function/E;)Lj$/util/function/B;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic o(Ljava/lang/Integer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/u0;->g(Lj$/util/stream/c2;Ljava/lang/Integer;)V

    return-void
.end method
