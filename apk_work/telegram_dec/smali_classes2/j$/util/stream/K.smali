.class abstract Lj$/util/stream/K;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/x3;


# instance fields
.field a:Z

.field b:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic accept(D)V
    .locals 0

    invoke-static {}, Lj$/util/stream/u0;->b()V

    const/4 p1, 0x0

    throw p1
.end method

.method public synthetic accept(I)V
    .locals 0

    invoke-static {}, Lj$/util/stream/u0;->k()V

    const/4 p1, 0x0

    throw p1
.end method

.method public synthetic accept(J)V
    .locals 0

    invoke-static {}, Lj$/util/stream/u0;->l()V

    const/4 p1, 0x0

    throw p1
.end method

.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-boolean v0, p0, Lj$/util/stream/K;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lj$/util/stream/K;->a:Z

    iput-object p1, p0, Lj$/util/stream/K;->b:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final synthetic andThen(Lj$/util/function/Consumer;)Lj$/util/function/Consumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Lj$/util/function/Consumer;Lj$/util/function/Consumer;)Lj$/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic j(Ljava/lang/Long;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lj$/util/stream/K;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic m()V
    .locals 0

    return-void
.end method

.method public final synthetic n(J)V
    .locals 0

    return-void
.end method

.method public bridge synthetic o(Ljava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lj$/util/stream/K;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final q()Z
    .locals 1

    iget-boolean v0, p0, Lj$/util/stream/K;->a:Z

    return v0
.end method

.method public bridge synthetic r(Ljava/lang/Double;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lj$/util/stream/K;->accept(Ljava/lang/Object;)V

    return-void
.end method
