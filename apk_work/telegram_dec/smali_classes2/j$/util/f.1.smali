.class public final Lj$/util/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/util/function/m;


# instance fields
.field private a:D

.field private b:D

.field private count:J

.field private max:D

.field private min:D

.field private sum:D


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    iput-wide v0, p0, Lj$/util/f;->min:D

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    iput-wide v0, p0, Lj$/util/f;->max:D

    return-void
.end method

.method private c(D)V
    .locals 4

    iget-wide v0, p0, Lj$/util/f;->a:D

    sub-double/2addr p1, v0

    iget-wide v0, p0, Lj$/util/f;->sum:D

    add-double v2, v0, p1

    sub-double v0, v2, v0

    sub-double/2addr v0, p1

    iput-wide v0, p0, Lj$/util/f;->a:D

    iput-wide v2, p0, Lj$/util/f;->sum:D

    return-void
.end method


# virtual methods
.method public final a(Lj$/util/f;)V
    .locals 4

    iget-wide v0, p0, Lj$/util/f;->count:J

    iget-wide v2, p1, Lj$/util/f;->count:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lj$/util/f;->count:J

    iget-wide v0, p0, Lj$/util/f;->b:D

    iget-wide v2, p1, Lj$/util/f;->b:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lj$/util/f;->b:D

    iget-wide v0, p1, Lj$/util/f;->sum:D

    invoke-direct {p0, v0, v1}, Lj$/util/f;->c(D)V

    iget-wide v0, p1, Lj$/util/f;->a:D

    invoke-direct {p0, v0, v1}, Lj$/util/f;->c(D)V

    iget-wide v0, p0, Lj$/util/f;->min:D

    iget-wide v2, p1, Lj$/util/f;->min:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lj$/util/f;->min:D

    iget-wide v0, p0, Lj$/util/f;->max:D

    iget-wide v2, p1, Lj$/util/f;->max:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lj$/util/f;->max:D

    return-void
.end method

.method public final accept(D)V
    .locals 4

    iget-wide v0, p0, Lj$/util/f;->count:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lj$/util/f;->count:J

    iget-wide v0, p0, Lj$/util/f;->b:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lj$/util/f;->b:D

    invoke-direct {p0, p1, p2}, Lj$/util/f;->c(D)V

    iget-wide v0, p0, Lj$/util/f;->min:D

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lj$/util/f;->min:D

    iget-wide v0, p0, Lj$/util/f;->max:D

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(DD)D

    move-result-wide p1

    iput-wide p1, p0, Lj$/util/f;->max:D

    return-void
.end method

.method public final synthetic k(Lj$/util/function/m;)Lj$/util/function/m;
    .locals 0

    invoke-static {p0, p1}, Lj$/com/android/tools/r8/a;->b(Lj$/util/function/m;Lj$/util/function/m;)Lj$/util/function/j;

    move-result-object p1

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 9

    const-class v0, Lj$/util/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 0
    iget-wide v1, p0, Lj$/util/f;->count:J

    .line 0
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 0
    iget-wide v2, p0, Lj$/util/f;->sum:D

    iget-wide v4, p0, Lj$/util/f;->a:D

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-wide v4, p0, Lj$/util/f;->b:D

    invoke-static {v4, v5}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-wide v2, p0, Lj$/util/f;->b:D

    .line 0
    :cond_0
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 0
    iget-wide v3, p0, Lj$/util/f;->min:D

    .line 0
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    .line 0
    iget-wide v4, p0, Lj$/util/f;->count:J

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_2

    .line 0
    iget-wide v4, p0, Lj$/util/f;->sum:D

    iget-wide v6, p0, Lj$/util/f;->a:D

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-wide v6, p0, Lj$/util/f;->b:D

    invoke-static {v6, v7}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-wide v4, p0, Lj$/util/f;->b:D

    .line 0
    :cond_1
    iget-wide v6, p0, Lj$/util/f;->count:J

    long-to-double v6, v6

    .line 0
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v4, v6

    goto :goto_0

    :cond_2
    const-wide/16 v4, 0x0

    .line 0
    :goto_0
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    .line 0
    iget-wide v5, p0, Lj$/util/f;->max:D

    .line 0
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v2, v6, v0

    const/4 v0, 0x3

    aput-object v3, v6, v0

    const/4 v0, 0x4

    aput-object v4, v6, v0

    const/4 v0, 0x5

    aput-object v5, v6, v0

    const-string v0, "%s{count=%d, sum=%f, min=%f, average=%f, max=%f}"

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
