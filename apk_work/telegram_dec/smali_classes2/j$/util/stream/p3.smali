.class final Lj$/util/stream/p3;
.super Lj$/util/stream/q3;
.source "SourceFile"

# interfaces
.implements Lj$/util/J;
.implements Lj$/util/function/T;


# instance fields
.field e:J


# direct methods
.method constructor <init>(Lj$/util/J;JJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lj$/util/stream/q3;-><init>(Lj$/util/M;JJ)V

    return-void
.end method

.method constructor <init>(Lj$/util/J;Lj$/util/stream/p3;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lj$/util/stream/q3;-><init>(Lj$/util/M;Lj$/util/stream/q3;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lj$/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/A;->h(Lj$/util/J;Lj$/util/function/Consumer;)V

    return-void
.end method

.method public final accept(J)V
    .locals 0

    iput-wide p1, p0, Lj$/util/stream/p3;->e:J

    return-void
.end method

.method public final synthetic f(Lj$/util/function/T;)Lj$/util/function/T;
    .locals 0

    invoke-static {p0, p1}, Lj$/com/android/tools/r8/a;->d(Lj$/util/function/T;Lj$/util/function/T;)Lj$/util/function/P;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic s(Lj$/util/function/Consumer;)Z
    .locals 0

    invoke-static {p0, p1}, Lj$/util/A;->n(Lj$/util/J;Lj$/util/function/Consumer;)Z

    move-result p1

    return p1
.end method

.method protected final u(Lj$/util/Spliterator;)Lj$/util/Spliterator;
    .locals 1

    check-cast p1, Lj$/util/J;

    .line 0
    new-instance v0, Lj$/util/stream/p3;

    invoke-direct {v0, p1, p0}, Lj$/util/stream/p3;-><init>(Lj$/util/J;Lj$/util/stream/p3;)V

    return-object v0
.end method

.method protected final w(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lj$/util/function/T;

    .line 0
    iget-wide v0, p0, Lj$/util/stream/p3;->e:J

    invoke-interface {p1, v0, v1}, Lj$/util/function/T;->accept(J)V

    return-void
.end method

.method protected final x()Lj$/util/stream/X2;
    .locals 1

    .line 0
    new-instance v0, Lj$/util/stream/W2;

    invoke-direct {v0}, Lj$/util/stream/W2;-><init>()V

    return-object v0
.end method
