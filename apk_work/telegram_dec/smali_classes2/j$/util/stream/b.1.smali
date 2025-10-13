.class abstract Lj$/util/stream/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/BaseStream;


# instance fields
.field private final a:Lj$/util/stream/b;

.field private final b:Lj$/util/stream/b;

.field protected final c:I

.field private d:Lj$/util/stream/b;

.field private e:I

.field private f:I

.field private g:Lj$/util/Spliterator;

.field private h:Z

.field private i:Z

.field private j:Ljava/lang/Runnable;

.field private k:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Lj$/util/Spliterator;IZ)V
    .locals 1

    invoke-direct {p0}, Lj$/util/stream/b;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lj$/util/stream/b;->b:Lj$/util/stream/b;

    iput-object p1, p0, Lj$/util/stream/b;->g:Lj$/util/Spliterator;

    iput-object p0, p0, Lj$/util/stream/b;->a:Lj$/util/stream/b;

    sget p1, Lj$/util/stream/R2;->g:I

    and-int/2addr p1, p2

    iput p1, p0, Lj$/util/stream/b;->c:I

    shl-int/lit8 p1, p1, 0x1

    xor-int/lit8 p1, p1, -0x1

    sget p2, Lj$/util/stream/R2;->l:I

    and-int/2addr p1, p2

    iput p1, p0, Lj$/util/stream/b;->f:I

    const/4 p1, 0x0

    iput p1, p0, Lj$/util/stream/b;->e:I

    iput-boolean p3, p0, Lj$/util/stream/b;->k:Z

    return-void
.end method

.method constructor <init>(Lj$/util/stream/b;I)V
    .locals 2

    invoke-direct {p0}, Lj$/util/stream/b;-><init>()V

    iget-boolean v0, p1, Lj$/util/stream/b;->h:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p1, Lj$/util/stream/b;->h:Z

    iput-object p0, p1, Lj$/util/stream/b;->d:Lj$/util/stream/b;

    iput-object p1, p0, Lj$/util/stream/b;->b:Lj$/util/stream/b;

    sget v1, Lj$/util/stream/R2;->h:I

    and-int/2addr v1, p2

    iput v1, p0, Lj$/util/stream/b;->c:I

    iget v1, p1, Lj$/util/stream/b;->f:I

    invoke-static {p2, v1}, Lj$/util/stream/R2;->f(II)I

    move-result p2

    iput p2, p0, Lj$/util/stream/b;->f:I

    iget-object p2, p1, Lj$/util/stream/b;->a:Lj$/util/stream/b;

    iput-object p2, p0, Lj$/util/stream/b;->a:Lj$/util/stream/b;

    invoke-virtual {p0}, Lj$/util/stream/b;->v0()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-boolean v0, p2, Lj$/util/stream/b;->i:Z

    :cond_0
    iget p1, p1, Lj$/util/stream/b;->e:I

    add-int/2addr p1, v0

    iput p1, p0, Lj$/util/stream/b;->e:I

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "stream has already been operated upon or closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private x0(I)Lj$/util/Spliterator;
    .locals 7

    iget-object v0, p0, Lj$/util/stream/b;->a:Lj$/util/stream/b;

    iget-object v1, v0, Lj$/util/stream/b;->g:Lj$/util/Spliterator;

    if-eqz v1, :cond_5

    const/4 v2, 0x0

    iput-object v2, v0, Lj$/util/stream/b;->g:Lj$/util/Spliterator;

    .line 0
    iget-boolean v2, v0, Lj$/util/stream/b;->k:Z

    if-eqz v2, :cond_3

    .line 0
    iget-boolean v2, v0, Lj$/util/stream/b;->i:Z

    if-eqz v2, :cond_3

    iget-object v2, v0, Lj$/util/stream/b;->d:Lj$/util/stream/b;

    const/4 v3, 0x1

    :goto_0
    if-eq v0, p0, :cond_3

    iget v4, v2, Lj$/util/stream/b;->c:I

    invoke-virtual {v2}, Lj$/util/stream/b;->v0()Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object v3, Lj$/util/stream/R2;->SHORT_CIRCUIT:Lj$/util/stream/R2;

    invoke-virtual {v3, v4}, Lj$/util/stream/R2;->j(I)Z

    move-result v3

    if-eqz v3, :cond_0

    sget v3, Lj$/util/stream/R2;->u:I

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v4, v3

    :cond_0
    invoke-virtual {v2, v0, v1}, Lj$/util/stream/b;->u0(Lj$/util/stream/b;Lj$/util/Spliterator;)Lj$/util/Spliterator;

    move-result-object v1

    const/16 v3, 0x40

    invoke-interface {v1, v3}, Lj$/util/Spliterator;->hasCharacteristics(I)Z

    move-result v3

    if-eqz v3, :cond_1

    sget v3, Lj$/util/stream/R2;->t:I

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v3, v4

    sget v4, Lj$/util/stream/R2;->s:I

    :goto_1
    or-int/2addr v3, v4

    move v4, v3

    goto :goto_2

    :cond_1
    sget v3, Lj$/util/stream/R2;->s:I

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v3, v4

    sget v4, Lj$/util/stream/R2;->t:I

    goto :goto_1

    :goto_2
    const/4 v3, 0x0

    :cond_2
    add-int/lit8 v5, v3, 0x1

    iput v3, v2, Lj$/util/stream/b;->e:I

    iget v0, v0, Lj$/util/stream/b;->f:I

    invoke-static {v4, v0}, Lj$/util/stream/R2;->f(II)I

    move-result v0

    iput v0, v2, Lj$/util/stream/b;->f:I

    iget-object v0, v2, Lj$/util/stream/b;->d:Lj$/util/stream/b;

    move v3, v5

    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    iget v0, p0, Lj$/util/stream/b;->f:I

    invoke-static {p1, v0}, Lj$/util/stream/R2;->f(II)I

    move-result p1

    iput p1, p0, Lj$/util/stream/b;->f:I

    :cond_4
    return-object v1

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "source already consumed or closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method


# virtual methods
.method final A0(Lj$/util/Spliterator;Lj$/util/stream/e2;)Lj$/util/stream/e2;
    .locals 1

    .line 0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 0
    invoke-virtual {p0, p2}, Lj$/util/stream/b;->B0(Lj$/util/stream/e2;)Lj$/util/stream/e2;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lj$/util/stream/b;->f0(Lj$/util/Spliterator;Lj$/util/stream/e2;)V

    return-object p2
.end method

.method final B0(Lj$/util/stream/e2;)Lj$/util/stream/e2;
    .locals 3

    .line 0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, p0

    .line 0
    :goto_0
    iget v1, v0, Lj$/util/stream/b;->e:I

    if-lez v1, :cond_0

    iget-object v1, v0, Lj$/util/stream/b;->b:Lj$/util/stream/b;

    iget v2, v1, Lj$/util/stream/b;->f:I

    invoke-virtual {v0, v2, p1}, Lj$/util/stream/b;->w0(ILj$/util/stream/e2;)Lj$/util/stream/e2;

    move-result-object p1

    move-object v0, v1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method final C0(Lj$/util/Spliterator;)Lj$/util/Spliterator;
    .locals 2

    iget v0, p0, Lj$/util/stream/b;->e:I

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    new-instance v0, Lj$/util/stream/a;

    const/16 v1, 0xa

    invoke-direct {v0, p1, v1}, Lj$/util/stream/a;-><init>(Ljava/lang/Object;I)V

    .line 0
    iget-object p1, p0, Lj$/util/stream/b;->a:Lj$/util/stream/b;

    iget-boolean p1, p1, Lj$/util/stream/b;->k:Z

    .line 0
    invoke-virtual {p0, p0, v0, p1}, Lj$/util/stream/b;->z0(Lj$/util/stream/b;Lj$/util/function/Supplier;Z)Lj$/util/Spliterator;

    move-result-object p1

    return-object p1
.end method

.method public final close()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lj$/util/stream/b;->h:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lj$/util/stream/b;->g:Lj$/util/Spliterator;

    iget-object v1, p0, Lj$/util/stream/b;->a:Lj$/util/stream/b;

    iget-object v2, v1, Lj$/util/stream/b;->j:Ljava/lang/Runnable;

    if-eqz v2, :cond_0

    iput-object v0, v1, Lj$/util/stream/b;->j:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method final f0(Lj$/util/Spliterator;Lj$/util/stream/e2;)V
    .locals 2

    .line 0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 0
    sget-object v0, Lj$/util/stream/R2;->SHORT_CIRCUIT:Lj$/util/stream/R2;

    .line 0
    iget v1, p0, Lj$/util/stream/b;->f:I

    .line 0
    invoke-virtual {v0, v1}, Lj$/util/stream/R2;->j(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lj$/util/Spliterator;->getExactSizeIfKnown()J

    move-result-wide v0

    invoke-interface {p2, v0, v1}, Lj$/util/stream/e2;->n(J)V

    invoke-interface {p1, p2}, Lj$/util/Spliterator;->a(Lj$/util/function/Consumer;)V

    invoke-interface {p2}, Lj$/util/stream/e2;->m()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lj$/util/stream/b;->g0(Lj$/util/Spliterator;Lj$/util/stream/e2;)V

    :goto_0
    return-void
.end method

.method final g0(Lj$/util/Spliterator;Lj$/util/stream/e2;)V
    .locals 3

    move-object v0, p0

    .line 0
    :goto_0
    iget v1, v0, Lj$/util/stream/b;->e:I

    if-lez v1, :cond_0

    iget-object v0, v0, Lj$/util/stream/b;->b:Lj$/util/stream/b;

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lj$/util/Spliterator;->getExactSizeIfKnown()J

    move-result-wide v1

    invoke-interface {p2, v1, v2}, Lj$/util/stream/e2;->n(J)V

    invoke-virtual {v0, p1, p2}, Lj$/util/stream/b;->m0(Lj$/util/Spliterator;Lj$/util/stream/e2;)V

    invoke-interface {p2}, Lj$/util/stream/e2;->m()V

    return-void
.end method

.method final h0(Lj$/util/Spliterator;ZLj$/util/function/IntFunction;)Lj$/util/stream/G0;
    .locals 2

    .line 0
    iget-object v0, p0, Lj$/util/stream/b;->a:Lj$/util/stream/b;

    iget-boolean v0, v0, Lj$/util/stream/b;->k:Z

    if-eqz v0, :cond_0

    .line 0
    invoke-virtual {p0, p0, p1, p2, p3}, Lj$/util/stream/b;->k0(Lj$/util/stream/b;Lj$/util/Spliterator;ZLj$/util/function/IntFunction;)Lj$/util/stream/G0;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lj$/util/stream/b;->l0(Lj$/util/Spliterator;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p3}, Lj$/util/stream/b;->s0(JLj$/util/function/IntFunction;)Lj$/util/stream/y0;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lj$/util/stream/b;->A0(Lj$/util/Spliterator;Lj$/util/stream/e2;)Lj$/util/stream/e2;

    invoke-interface {p2}, Lj$/util/stream/y0;->b()Lj$/util/stream/G0;

    move-result-object p1

    return-object p1
.end method

.method final i0(Lj$/util/stream/w3;)Ljava/lang/Object;
    .locals 1

    iget-boolean v0, p0, Lj$/util/stream/b;->h:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lj$/util/stream/b;->h:Z

    .line 0
    iget-object v0, p0, Lj$/util/stream/b;->a:Lj$/util/stream/b;

    iget-boolean v0, v0, Lj$/util/stream/b;->k:Z

    if-eqz v0, :cond_0

    .line 0
    invoke-interface {p1}, Lj$/util/stream/w3;->d()I

    move-result v0

    invoke-direct {p0, v0}, Lj$/util/stream/b;->x0(I)Lj$/util/Spliterator;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Lj$/util/stream/w3;->c(Lj$/util/stream/b;Lj$/util/Spliterator;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lj$/util/stream/w3;->d()I

    move-result v0

    invoke-direct {p0, v0}, Lj$/util/stream/b;->x0(I)Lj$/util/Spliterator;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Lj$/util/stream/w3;->a(Lj$/util/stream/b;Lj$/util/Spliterator;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "stream has already been operated upon or closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final isParallel()Z
    .locals 1

    iget-object v0, p0, Lj$/util/stream/b;->a:Lj$/util/stream/b;

    iget-boolean v0, v0, Lj$/util/stream/b;->k:Z

    return v0
.end method

.method final j0(Lj$/util/function/IntFunction;)Lj$/util/stream/G0;
    .locals 4

    iget-boolean v0, p0, Lj$/util/stream/b;->h:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lj$/util/stream/b;->h:Z

    .line 0
    iget-object v1, p0, Lj$/util/stream/b;->a:Lj$/util/stream/b;

    iget-boolean v1, v1, Lj$/util/stream/b;->k:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 0
    iget-object v1, p0, Lj$/util/stream/b;->b:Lj$/util/stream/b;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lj$/util/stream/b;->v0()Z

    move-result v3

    if-eqz v3, :cond_0

    iput v2, p0, Lj$/util/stream/b;->e:I

    invoke-direct {v1, v2}, Lj$/util/stream/b;->x0(I)Lj$/util/Spliterator;

    move-result-object v0

    invoke-virtual {p0, v0, p1, v1}, Lj$/util/stream/b;->t0(Lj$/util/Spliterator;Lj$/util/function/IntFunction;Lj$/util/stream/b;)Lj$/util/stream/G0;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-direct {p0, v2}, Lj$/util/stream/b;->x0(I)Lj$/util/Spliterator;

    move-result-object v1

    invoke-virtual {p0, v1, v0, p1}, Lj$/util/stream/b;->h0(Lj$/util/Spliterator;ZLj$/util/function/IntFunction;)Lj$/util/stream/G0;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "stream has already been operated upon or closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method abstract k0(Lj$/util/stream/b;Lj$/util/Spliterator;ZLj$/util/function/IntFunction;)Lj$/util/stream/G0;
.end method

.method final l0(Lj$/util/Spliterator;)J
    .locals 2

    sget-object v0, Lj$/util/stream/R2;->SIZED:Lj$/util/stream/R2;

    .line 0
    iget v1, p0, Lj$/util/stream/b;->f:I

    .line 0
    invoke-virtual {v0, v1}, Lj$/util/stream/R2;->j(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lj$/util/Spliterator;->getExactSizeIfKnown()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method abstract m0(Lj$/util/Spliterator;Lj$/util/stream/e2;)V
.end method

.method abstract n0()Lj$/util/stream/S2;
.end method

.method final o0()Lj$/util/stream/S2;
    .locals 2

    move-object v0, p0

    :goto_0
    iget v1, v0, Lj$/util/stream/b;->e:I

    if-lez v1, :cond_0

    iget-object v0, v0, Lj$/util/stream/b;->b:Lj$/util/stream/b;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lj$/util/stream/b;->n0()Lj$/util/stream/S2;

    move-result-object v0

    return-object v0
.end method

.method public final onClose(Ljava/lang/Runnable;)Lj$/util/stream/BaseStream;
    .locals 3

    iget-object v0, p0, Lj$/util/stream/b;->a:Lj$/util/stream/b;

    iget-object v1, v0, Lj$/util/stream/b;->j:Ljava/lang/Runnable;

    if-nez v1, :cond_0

    goto :goto_0

    .line 0
    :cond_0
    new-instance v2, Lj$/util/stream/v3;

    invoke-direct {v2, v1, p1}, Lj$/util/stream/v3;-><init>(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    move-object p1, v2

    .line 0
    :goto_0
    iput-object p1, v0, Lj$/util/stream/b;->j:Ljava/lang/Runnable;

    return-object p0
.end method

.method final p0()I
    .locals 1

    iget v0, p0, Lj$/util/stream/b;->f:I

    return v0
.end method

.method public final parallel()Lj$/util/stream/BaseStream;
    .locals 2

    iget-object v0, p0, Lj$/util/stream/b;->a:Lj$/util/stream/b;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lj$/util/stream/b;->k:Z

    return-object p0
.end method

.method final q0()Z
    .locals 2

    sget-object v0, Lj$/util/stream/R2;->ORDERED:Lj$/util/stream/R2;

    iget v1, p0, Lj$/util/stream/b;->f:I

    invoke-virtual {v0, v1}, Lj$/util/stream/R2;->j(I)Z

    move-result v0

    return v0
.end method

.method final synthetic r0()Lj$/util/Spliterator;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lj$/util/stream/b;->x0(I)Lj$/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method abstract s0(JLj$/util/function/IntFunction;)Lj$/util/stream/y0;
.end method

.method public final sequential()Lj$/util/stream/BaseStream;
    .locals 2

    iget-object v0, p0, Lj$/util/stream/b;->a:Lj$/util/stream/b;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lj$/util/stream/b;->k:Z

    return-object p0
.end method

.method public spliterator()Lj$/util/Spliterator;
    .locals 3

    iget-boolean v0, p0, Lj$/util/stream/b;->h:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lj$/util/stream/b;->h:Z

    iget-object v0, p0, Lj$/util/stream/b;->a:Lj$/util/stream/b;

    if-ne p0, v0, :cond_1

    iget-object v1, v0, Lj$/util/stream/b;->g:Lj$/util/Spliterator;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    iput-object v2, v0, Lj$/util/stream/b;->g:Lj$/util/Spliterator;

    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "source already consumed or closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v1, Lj$/util/stream/a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lj$/util/stream/a;-><init>(Ljava/lang/Object;I)V

    .line 0
    iget-boolean v0, v0, Lj$/util/stream/b;->k:Z

    .line 0
    invoke-virtual {p0, p0, v1, v0}, Lj$/util/stream/b;->z0(Lj$/util/stream/b;Lj$/util/function/Supplier;Z)Lj$/util/Spliterator;

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "stream has already been operated upon or closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method t0(Lj$/util/Spliterator;Lj$/util/function/IntFunction;Lj$/util/stream/b;)Lj$/util/stream/G0;
    .locals 0

    .line 0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Parallel evaluation is not supported"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method u0(Lj$/util/stream/b;Lj$/util/Spliterator;)Lj$/util/Spliterator;
    .locals 2

    .line 0
    new-instance v0, Lj$/util/stream/l;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Lj$/util/stream/l;-><init>(I)V

    invoke-virtual {p0, p2, v0, p1}, Lj$/util/stream/b;->t0(Lj$/util/Spliterator;Lj$/util/function/IntFunction;Lj$/util/stream/b;)Lj$/util/stream/G0;

    move-result-object p1

    invoke-interface {p1}, Lj$/util/stream/G0;->spliterator()Lj$/util/Spliterator;

    move-result-object p1

    return-object p1
.end method

.method abstract v0()Z
.end method

.method abstract w0(ILj$/util/stream/e2;)Lj$/util/stream/e2;
.end method

.method final y0()Lj$/util/Spliterator;
    .locals 3

    iget-object v0, p0, Lj$/util/stream/b;->a:Lj$/util/stream/b;

    if-ne p0, v0, :cond_2

    iget-boolean v1, p0, Lj$/util/stream/b;->h:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lj$/util/stream/b;->h:Z

    iget-object v1, v0, Lj$/util/stream/b;->g:Lj$/util/Spliterator;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    iput-object v2, v0, Lj$/util/stream/b;->g:Lj$/util/Spliterator;

    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "source already consumed or closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "stream has already been operated upon or closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method abstract z0(Lj$/util/stream/b;Lj$/util/function/Supplier;Z)Lj$/util/Spliterator;
.end method
