.class final Lj$/util/stream/o3;
.super Lj$/util/stream/q3;
.source "SourceFile"

# interfaces
.implements Lj$/util/G;
.implements Lj$/util/function/E;


# instance fields
.field e:I


# direct methods
.method constructor <init>(Lj$/util/G;JJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lj$/util/stream/q3;-><init>(Lj$/util/M;JJ)V

    return-void
.end method

.method constructor <init>(Lj$/util/G;Lj$/util/stream/o3;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lj$/util/stream/q3;-><init>(Lj$/util/M;Lj$/util/stream/q3;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lj$/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/A;->f(Lj$/util/G;Lj$/util/function/Consumer;)V

    return-void
.end method

.method public final accept(I)V
    .locals 0

    iput p1, p0, Lj$/util/stream/o3;->e:I

    return-void
.end method

.method public final synthetic l(Lj$/util/function/E;)Lj$/util/function/E;
    .locals 0

    invoke-static {p0, p1}, Lj$/com/android/tools/r8/a;->c(Lj$/util/function/E;Lj$/util/function/E;)Lj$/util/function/B;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic s(Lj$/util/function/Consumer;)Z
    .locals 0

    invoke-static {p0, p1}, Lj$/util/A;->m(Lj$/util/G;Lj$/util/function/Consumer;)Z

    move-result p1

    return p1
.end method

.method protected final u(Lj$/util/Spliterator;)Lj$/util/Spliterator;
    .locals 1

    check-cast p1, Lj$/util/G;

    .line 0
    new-instance v0, Lj$/util/stream/o3;

    invoke-direct {v0, p1, p0}, Lj$/util/stream/o3;-><init>(Lj$/util/G;Lj$/util/stream/o3;)V

    return-object v0
.end method

.method protected final w(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lj$/util/function/E;

    .line 0
    iget v0, p0, Lj$/util/stream/o3;->e:I

    invoke-interface {p1, v0}, Lj$/util/function/E;->accept(I)V

    return-void
.end method

.method protected final x()Lj$/util/stream/X2;
    .locals 1

    .line 0
    new-instance v0, Lj$/util/stream/V2;

    invoke-direct {v0}, Lj$/util/stream/V2;-><init>()V

    return-object v0
.end method
