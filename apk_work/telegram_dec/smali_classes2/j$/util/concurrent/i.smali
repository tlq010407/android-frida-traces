.class final Lj$/util/concurrent/i;
.super Lj$/util/concurrent/o;
.source "SourceFile"

# interfaces
.implements Lj$/util/Spliterator;


# instance fields
.field public final synthetic i:I

.field j:J


# direct methods
.method public synthetic constructor <init>([Lj$/util/concurrent/k;IIIJI)V
    .locals 0

    iput p7, p0, Lj$/util/concurrent/i;->i:I

    invoke-direct {p0, p1, p2, p3, p4}, Lj$/util/concurrent/o;-><init>([Lj$/util/concurrent/k;III)V

    iput-wide p5, p0, Lj$/util/concurrent/i;->j:J

    return-void
.end method


# virtual methods
.method public final a(Lj$/util/function/Consumer;)V
    .locals 1

    iget v0, p0, Lj$/util/concurrent/i;->i:I

    packed-switch v0, :pswitch_data_0

    .line 0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    invoke-virtual {p0}, Lj$/util/concurrent/o;->b()Lj$/util/concurrent/k;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lj$/util/concurrent/k;->c:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lj$/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void

    .line 0
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_1
    invoke-virtual {p0}, Lj$/util/concurrent/o;->b()Lj$/util/concurrent/k;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lj$/util/concurrent/k;->b:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lj$/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final characteristics()I
    .locals 1

    iget v0, p0, Lj$/util/concurrent/i;->i:I

    packed-switch v0, :pswitch_data_0

    const/16 v0, 0x1100

    return v0

    :pswitch_0
    const/16 v0, 0x1101

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final estimateSize()J
    .locals 2

    iget v0, p0, Lj$/util/concurrent/i;->i:I

    packed-switch v0, :pswitch_data_0

    .line 0
    iget-wide v0, p0, Lj$/util/concurrent/i;->j:J

    return-wide v0

    .line 0
    :pswitch_0
    iget-wide v0, p0, Lj$/util/concurrent/i;->j:J

    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final getComparator()Ljava/util/Comparator;
    .locals 1

    iget v0, p0, Lj$/util/concurrent/i;->i:I

    packed-switch v0, :pswitch_data_0

    .line 0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 0
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic getExactSizeIfKnown()J
    .locals 2

    iget v0, p0, Lj$/util/concurrent/i;->i:I

    packed-switch v0, :pswitch_data_0

    .line 0
    invoke-static {p0}, Lj$/util/A;->j(Lj$/util/Spliterator;)J

    move-result-wide v0

    return-wide v0

    .line 0
    :pswitch_0
    invoke-static {p0}, Lj$/util/A;->j(Lj$/util/Spliterator;)J

    move-result-wide v0

    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic hasCharacteristics(I)Z
    .locals 1

    iget v0, p0, Lj$/util/concurrent/i;->i:I

    packed-switch v0, :pswitch_data_0

    .line 0
    invoke-static {p0, p1}, Lj$/util/A;->k(Lj$/util/Spliterator;I)Z

    move-result p1

    return p1

    .line 0
    :pswitch_0
    invoke-static {p0, p1}, Lj$/util/A;->k(Lj$/util/Spliterator;I)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final s(Lj$/util/function/Consumer;)Z
    .locals 1

    iget v0, p0, Lj$/util/concurrent/i;->i:I

    packed-switch v0, :pswitch_data_0

    .line 0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lj$/util/concurrent/o;->b()Lj$/util/concurrent/k;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lj$/util/concurrent/k;->c:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lj$/util/function/Consumer;->accept(Ljava/lang/Object;)V

    const/4 p1, 0x1

    :goto_0
    return p1

    .line 0
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lj$/util/concurrent/o;->b()Lj$/util/concurrent/k;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    iget-object v0, v0, Lj$/util/concurrent/k;->b:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lj$/util/function/Consumer;->accept(Ljava/lang/Object;)V

    const/4 p1, 0x1

    :goto_1
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final trySplit()Lj$/util/Spliterator;
    .locals 10

    iget v0, p0, Lj$/util/concurrent/i;->i:I

    packed-switch v0, :pswitch_data_0

    .line 0
    iget v0, p0, Lj$/util/concurrent/o;->f:I

    iget v5, p0, Lj$/util/concurrent/o;->g:I

    add-int v1, v0, v5

    const/4 v2, 0x1

    ushr-int/lit8 v4, v1, 0x1

    if-gt v4, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lj$/util/concurrent/i;

    iget-object v3, p0, Lj$/util/concurrent/o;->a:[Lj$/util/concurrent/k;

    iput v4, p0, Lj$/util/concurrent/o;->g:I

    iget-wide v6, p0, Lj$/util/concurrent/i;->j:J

    ushr-long/2addr v6, v2

    iput-wide v6, p0, Lj$/util/concurrent/i;->j:J

    iget v8, p0, Lj$/util/concurrent/o;->h:I

    const/4 v9, 0x1

    move-object v1, v0

    move-object v2, v3

    move v3, v8

    move v8, v9

    invoke-direct/range {v1 .. v8}, Lj$/util/concurrent/i;-><init>([Lj$/util/concurrent/k;IIIJI)V

    :goto_0
    return-object v0

    .line 0
    :pswitch_0
    iget v0, p0, Lj$/util/concurrent/o;->f:I

    iget v5, p0, Lj$/util/concurrent/o;->g:I

    add-int v1, v0, v5

    const/4 v2, 0x1

    ushr-int/lit8 v4, v1, 0x1

    if-gt v4, v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    new-instance v0, Lj$/util/concurrent/i;

    iget-object v3, p0, Lj$/util/concurrent/o;->a:[Lj$/util/concurrent/k;

    iput v4, p0, Lj$/util/concurrent/o;->g:I

    iget-wide v6, p0, Lj$/util/concurrent/i;->j:J

    ushr-long/2addr v6, v2

    iput-wide v6, p0, Lj$/util/concurrent/i;->j:J

    iget v8, p0, Lj$/util/concurrent/o;->h:I

    const/4 v9, 0x0

    move-object v1, v0

    move-object v2, v3

    move v3, v8

    move v8, v9

    invoke-direct/range {v1 .. v8}, Lj$/util/concurrent/i;-><init>([Lj$/util/concurrent/k;IIIJI)V

    :goto_1
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
