.class final Lj$/util/stream/L0;
.super Lj$/util/stream/M0;
.source "SourceFile"


# direct methods
.method public constructor <init>(ILj$/util/Spliterator;Lj$/util/stream/b;)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    .line 0
    new-instance p1, Lj$/util/stream/l;

    const/16 v0, 0xb

    invoke-direct {p1, v0}, Lj$/util/stream/l;-><init>(I)V

    new-instance v0, Lj$/util/stream/k;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lj$/util/stream/k;-><init>(I)V

    invoke-direct {p0, p3, p2, p1, v0}, Lj$/util/stream/M0;-><init>(Lj$/util/stream/b;Lj$/util/Spliterator;Lj$/util/function/LongFunction;Lj$/util/function/f;)V

    return-void

    .line 0
    :pswitch_0
    new-instance p1, Lj$/util/stream/l;

    const/16 v0, 0xd

    invoke-direct {p1, v0}, Lj$/util/stream/l;-><init>(I)V

    new-instance v0, Lj$/util/stream/k;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lj$/util/stream/k;-><init>(I)V

    invoke-direct {p0, p3, p2, p1, v0}, Lj$/util/stream/M0;-><init>(Lj$/util/stream/b;Lj$/util/Spliterator;Lj$/util/function/LongFunction;Lj$/util/function/f;)V

    return-void

    .line 0
    :pswitch_1
    new-instance p1, Lj$/util/stream/l;

    const/16 v0, 0xc

    invoke-direct {p1, v0}, Lj$/util/stream/l;-><init>(I)V

    new-instance v0, Lj$/util/stream/k;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lj$/util/stream/k;-><init>(I)V

    invoke-direct {p0, p3, p2, p1, v0}, Lj$/util/stream/M0;-><init>(Lj$/util/stream/b;Lj$/util/Spliterator;Lj$/util/function/LongFunction;Lj$/util/function/f;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method constructor <init>(Lj$/util/Spliterator;Lj$/util/function/IntFunction;Lj$/util/stream/b;)V
    .locals 2

    .line 0
    new-instance v0, Lj$/util/stream/a;

    const/4 v1, 0x2

    invoke-direct {v0, p2, v1}, Lj$/util/stream/a;-><init>(Ljava/lang/Object;I)V

    new-instance p2, Lj$/util/stream/k;

    const/4 v1, 0x7

    invoke-direct {p2, v1}, Lj$/util/stream/k;-><init>(I)V

    invoke-direct {p0, p3, p1, v0, p2}, Lj$/util/stream/M0;-><init>(Lj$/util/stream/b;Lj$/util/Spliterator;Lj$/util/function/LongFunction;Lj$/util/function/f;)V

    return-void
.end method
