.class final Lj$/util/stream/L1;
.super Lj$/util/stream/u0;
.source "SourceFile"


# instance fields
.field final synthetic h:Lj$/util/function/O;

.field final synthetic i:J


# direct methods
.method constructor <init>(Lj$/util/stream/S2;Lj$/util/function/O;J)V
    .locals 0

    iput-object p2, p0, Lj$/util/stream/L1;->h:Lj$/util/function/O;

    iput-wide p3, p0, Lj$/util/stream/L1;->i:J

    invoke-direct {p0, p1}, Lj$/util/stream/u0;-><init>(Lj$/util/stream/S2;)V

    return-void
.end method


# virtual methods
.method public final d0()Lj$/util/stream/O1;
    .locals 4

    .line 0
    new-instance v0, Lj$/util/stream/M1;

    iget-wide v1, p0, Lj$/util/stream/L1;->i:J

    iget-object v3, p0, Lj$/util/stream/L1;->h:Lj$/util/function/O;

    invoke-direct {v0, v1, v2, v3}, Lj$/util/stream/M1;-><init>(JLj$/util/function/O;)V

    return-object v0
.end method
