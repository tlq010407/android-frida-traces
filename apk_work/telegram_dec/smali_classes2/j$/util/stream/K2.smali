.class final Lj$/util/stream/K2;
.super Lj$/util/stream/M2;
.source "SourceFile"

# interfaces
.implements Lj$/util/J;


# instance fields
.field final synthetic g:Lj$/util/stream/L2;


# direct methods
.method constructor <init>(Lj$/util/stream/L2;IIII)V
    .locals 0

    iput-object p1, p0, Lj$/util/stream/K2;->g:Lj$/util/stream/L2;

    invoke-direct/range {p0 .. p5}, Lj$/util/stream/M2;-><init>(Lj$/util/stream/N2;IIII)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lj$/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/A;->h(Lj$/util/J;Lj$/util/function/Consumer;)V

    return-void
.end method

.method final b(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, [J

    check-cast p3, Lj$/util/function/T;

    .line 0
    aget-wide p1, p2, p1

    invoke-interface {p3, p1, p2}, Lj$/util/function/T;->accept(J)V

    return-void
.end method

.method final f(Ljava/lang/Object;II)Lj$/util/M;
    .locals 0

    check-cast p1, [J

    add-int/2addr p3, p2

    .line 0
    invoke-static {p1, p2, p3}, Lj$/util/Spliterators;->l([JII)Lj$/util/J;

    move-result-object p1

    return-object p1
.end method

.method final h(IIII)Lj$/util/M;
    .locals 7

    .line 0
    new-instance v6, Lj$/util/stream/K2;

    iget-object v1, p0, Lj$/util/stream/K2;->g:Lj$/util/stream/L2;

    move-object v0, v6

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/K2;-><init>(Lj$/util/stream/L2;IIII)V

    return-object v6
.end method

.method public final synthetic s(Lj$/util/function/Consumer;)Z
    .locals 0

    invoke-static {p0, p1}, Lj$/util/A;->n(Lj$/util/J;Lj$/util/function/Consumer;)Z

    move-result p1

    return p1
.end method
