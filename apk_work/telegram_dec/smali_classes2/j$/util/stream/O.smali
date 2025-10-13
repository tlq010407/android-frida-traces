.class final Lj$/util/stream/O;
.super Lj$/util/stream/Q;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/d2;


# instance fields
.field final b:Lj$/util/function/T;


# direct methods
.method constructor <init>(Lj$/util/function/T;Z)V
    .locals 0

    invoke-direct {p0, p2}, Lj$/util/stream/Q;-><init>(Z)V

    iput-object p1, p0, Lj$/util/stream/O;->b:Lj$/util/function/T;

    return-void
.end method


# virtual methods
.method public final accept(J)V
    .locals 1

    iget-object v0, p0, Lj$/util/stream/O;->b:Lj$/util/function/T;

    invoke-interface {v0, p1, p2}, Lj$/util/function/T;->accept(J)V

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
