.class final Lj$/util/stream/x1;
.super Lj$/util/stream/u0;
.source "SourceFile"


# instance fields
.field final synthetic h:Lj$/util/function/i;

.field final synthetic i:D


# direct methods
.method constructor <init>(Lj$/util/stream/S2;Lj$/util/function/i;D)V
    .locals 0

    iput-object p2, p0, Lj$/util/stream/x1;->h:Lj$/util/function/i;

    iput-wide p3, p0, Lj$/util/stream/x1;->i:D

    invoke-direct {p0, p1}, Lj$/util/stream/u0;-><init>(Lj$/util/stream/S2;)V

    return-void
.end method


# virtual methods
.method public final d0()Lj$/util/stream/O1;
    .locals 4

    .line 0
    new-instance v0, Lj$/util/stream/y1;

    iget-wide v1, p0, Lj$/util/stream/x1;->i:D

    iget-object v3, p0, Lj$/util/stream/x1;->h:Lj$/util/function/i;

    invoke-direct {v0, v1, v2, v3}, Lj$/util/stream/y1;-><init>(DLj$/util/function/i;)V

    return-object v0
.end method
