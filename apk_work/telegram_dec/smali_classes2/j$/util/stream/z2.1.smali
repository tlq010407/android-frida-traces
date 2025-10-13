.class final Lj$/util/stream/z2;
.super Lj$/util/stream/V1;
.source "SourceFile"


# instance fields
.field private final m:Z

.field private final n:Ljava/util/Comparator;


# direct methods
.method constructor <init>(Lj$/util/stream/b;)V
    .locals 2

    sget v0, Lj$/util/stream/R2;->q:I

    sget v1, Lj$/util/stream/R2;->o:I

    or-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lj$/util/stream/V1;-><init>(Lj$/util/stream/b;II)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lj$/util/stream/z2;->m:Z

    invoke-static {}, Lj$/util/Comparator$-CC;->a()Ljava/util/Comparator;

    move-result-object p1

    iput-object p1, p0, Lj$/util/stream/z2;->n:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>(Lj$/util/stream/b;Ljava/util/Comparator;)V
    .locals 2

    sget v0, Lj$/util/stream/R2;->q:I

    sget v1, Lj$/util/stream/R2;->p:I

    or-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lj$/util/stream/V1;-><init>(Lj$/util/stream/b;II)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lj$/util/stream/z2;->m:Z

    .line 0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 0
    iput-object p2, p0, Lj$/util/stream/z2;->n:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public final t0(Lj$/util/Spliterator;Lj$/util/function/IntFunction;Lj$/util/stream/b;)Lj$/util/stream/G0;
    .locals 2

    sget-object v0, Lj$/util/stream/R2;->SORTED:Lj$/util/stream/R2;

    invoke-virtual {p3}, Lj$/util/stream/b;->p0()I

    move-result v1

    invoke-virtual {v0, v1}, Lj$/util/stream/R2;->j(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lj$/util/stream/z2;->m:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p3, p1, v0, p2}, Lj$/util/stream/b;->h0(Lj$/util/Spliterator;ZLj$/util/function/IntFunction;)Lj$/util/stream/G0;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p3, p1, v0, p2}, Lj$/util/stream/b;->h0(Lj$/util/Spliterator;ZLj$/util/function/IntFunction;)Lj$/util/stream/G0;

    move-result-object p1

    invoke-interface {p1, p2}, Lj$/util/stream/G0;->s(Lj$/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    iget-object p2, p0, Lj$/util/stream/z2;->n:Ljava/util/Comparator;

    invoke-static {p1, p2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 0
    new-instance p2, Lj$/util/stream/J0;

    invoke-direct {p2, p1}, Lj$/util/stream/J0;-><init>([Ljava/lang/Object;)V

    return-object p2
.end method

.method public final w0(ILj$/util/stream/e2;)Lj$/util/stream/e2;
    .locals 1

    .line 0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 0
    sget-object v0, Lj$/util/stream/R2;->SORTED:Lj$/util/stream/R2;

    invoke-virtual {v0, p1}, Lj$/util/stream/R2;->j(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lj$/util/stream/z2;->m:Z

    if-eqz v0, :cond_0

    return-object p2

    :cond_0
    sget-object v0, Lj$/util/stream/R2;->SIZED:Lj$/util/stream/R2;

    invoke-virtual {v0, p1}, Lj$/util/stream/R2;->j(I)Z

    move-result p1

    iget-object v0, p0, Lj$/util/stream/z2;->n:Ljava/util/Comparator;

    if-eqz p1, :cond_1

    new-instance p1, Lj$/util/stream/E2;

    invoke-direct {p1, p2, v0}, Lj$/util/stream/E2;-><init>(Lj$/util/stream/e2;Ljava/util/Comparator;)V

    return-object p1

    :cond_1
    new-instance p1, Lj$/util/stream/A2;

    invoke-direct {p1, p2, v0}, Lj$/util/stream/A2;-><init>(Lj$/util/stream/e2;Ljava/util/Comparator;)V

    return-object p1
.end method
