.class final Lj$/util/stream/o0;
.super Lj$/util/stream/q0;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/d2;


# instance fields
.field final synthetic c:Lj$/util/stream/r0;

.field final synthetic d:Lj$/util/function/W;


# direct methods
.method constructor <init>(Lj$/util/function/W;Lj$/util/stream/r0;)V
    .locals 0

    .line 0
    iput-object p2, p0, Lj$/util/stream/o0;->c:Lj$/util/stream/r0;

    iput-object p1, p0, Lj$/util/stream/o0;->d:Lj$/util/function/W;

    invoke-direct {p0, p2}, Lj$/util/stream/q0;-><init>(Lj$/util/stream/r0;)V

    return-void
.end method


# virtual methods
.method public final accept(J)V
    .locals 1

    iget-boolean v0, p0, Lj$/util/stream/q0;->a:Z

    if-nez v0, :cond_0

    .line 0
    iget-object v0, p0, Lj$/util/stream/o0;->d:Lj$/util/function/W;

    iget-object v0, v0, Lj$/util/function/W;->a:Ljava/util/function/LongPredicate;

    .line 0
    invoke-interface {v0, p1, p2}, Ljava/util/function/LongPredicate;->test(J)Z

    move-result p1

    .line 0
    iget-object p2, p0, Lj$/util/stream/o0;->c:Lj$/util/stream/r0;

    invoke-static {p2}, Lj$/util/stream/r0;->f(Lj$/util/stream/r0;)Z

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lj$/util/stream/q0;->a:Z

    invoke-static {p2}, Lj$/util/stream/r0;->h(Lj$/util/stream/r0;)Z

    move-result p1

    iput-boolean p1, p0, Lj$/util/stream/q0;->b:Z

    :cond_0
    return-void
.end method

.method public final bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/u0;->j(Lj$/util/stream/d2;Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic f(Lj$/util/function/T;)Lj$/util/function/T;
    .locals 0

    invoke-static {p0, p1}, Lj$/com/android/tools/r8/a;->d(Lj$/util/function/T;Lj$/util/function/T;)Lj$/util/function/P;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic j(Ljava/lang/Long;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/u0;->i(Lj$/util/stream/d2;Ljava/lang/Long;)V

    return-void
.end method
