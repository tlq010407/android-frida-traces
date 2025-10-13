.class final Lj$/util/stream/n3;
.super Lj$/util/stream/q3;
.source "SourceFile"

# interfaces
.implements Lj$/util/D;
.implements Lj$/util/function/m;


# instance fields
.field e:D


# direct methods
.method constructor <init>(Lj$/util/D;JJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lj$/util/stream/q3;-><init>(Lj$/util/M;JJ)V

    return-void
.end method

.method constructor <init>(Lj$/util/D;Lj$/util/stream/n3;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lj$/util/stream/q3;-><init>(Lj$/util/M;Lj$/util/stream/q3;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lj$/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/A;->b(Lj$/util/D;Lj$/util/function/Consumer;)V

    return-void
.end method

.method public final accept(D)V
    .locals 0

    iput-wide p1, p0, Lj$/util/stream/n3;->e:D

    return-void
.end method

.method public final synthetic k(Lj$/util/function/m;)Lj$/util/function/m;
    .locals 0

    invoke-static {p0, p1}, Lj$/com/android/tools/r8/a;->b(Lj$/util/function/m;Lj$/util/function/m;)Lj$/util/function/j;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic s(Lj$/util/function/Consumer;)Z
    .locals 0

    invoke-static {p0, p1}, Lj$/util/A;->l(Lj$/util/D;Lj$/util/function/Consumer;)Z

    move-result p1

    return p1
.end method

.method protected final u(Lj$/util/Spliterator;)Lj$/util/Spliterator;
    .locals 1

    check-cast p1, Lj$/util/D;

    .line 0
    new-instance v0, Lj$/util/stream/n3;

    invoke-direct {v0, p1, p0}, Lj$/util/stream/n3;-><init>(Lj$/util/D;Lj$/util/stream/n3;)V

    return-object v0
.end method

.method protected final w(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lj$/util/function/m;

    .line 0
    iget-wide v0, p0, Lj$/util/stream/n3;->e:D

    invoke-interface {p1, v0, v1}, Lj$/util/function/m;->accept(D)V

    return-void
.end method

.method protected final x()Lj$/util/stream/X2;
    .locals 1

    .line 0
    new-instance v0, Lj$/util/stream/U2;

    invoke-direct {v0}, Lj$/util/stream/U2;-><init>()V

    return-object v0
.end method
