.class final Lj$/util/stream/N;
.super Lj$/util/stream/Q;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/c2;


# instance fields
.field final b:Lj$/util/function/E;


# direct methods
.method constructor <init>(Lj$/util/function/E;Z)V
    .locals 0

    invoke-direct {p0, p2}, Lj$/util/stream/Q;-><init>(Z)V

    iput-object p1, p0, Lj$/util/stream/N;->b:Lj$/util/function/E;

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 1

    iget-object v0, p0, Lj$/util/stream/N;->b:Lj$/util/function/E;

    invoke-interface {v0, p1}, Lj$/util/function/E;->accept(I)V

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
