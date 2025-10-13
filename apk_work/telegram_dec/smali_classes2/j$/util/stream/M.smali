.class final Lj$/util/stream/M;
.super Lj$/util/stream/Q;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/b2;


# instance fields
.field final b:Lj$/util/function/m;


# direct methods
.method constructor <init>(Lj$/util/function/m;Z)V
    .locals 0

    invoke-direct {p0, p2}, Lj$/util/stream/Q;-><init>(Z)V

    iput-object p1, p0, Lj$/util/stream/M;->b:Lj$/util/function/m;

    return-void
.end method


# virtual methods
.method public final accept(D)V
    .locals 1

    iget-object v0, p0, Lj$/util/stream/M;->b:Lj$/util/function/m;

    invoke-interface {v0, p1, p2}, Lj$/util/function/m;->accept(D)V

    return-void
.end method

.method public final bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/u0;->f(Lj$/util/stream/b2;Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic k(Lj$/util/function/m;)Lj$/util/function/m;
    .locals 0

    invoke-static {p0, p1}, Lj$/com/android/tools/r8/a;->b(Lj$/util/function/m;Lj$/util/function/m;)Lj$/util/function/j;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic r(Ljava/lang/Double;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/u0;->e(Lj$/util/stream/b2;Ljava/lang/Double;)V

    return-void
.end method
