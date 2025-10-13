.class final Lj$/util/stream/X;
.super Lj$/util/stream/h0;
.source "SourceFile"


# instance fields
.field public final synthetic m:I


# direct methods
.method public synthetic constructor <init>(Lj$/util/stream/b;II)V
    .locals 0

    iput p3, p0, Lj$/util/stream/X;->m:I

    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Lj$/util/stream/h0;-><init>(Lj$/util/stream/b;II)V

    return-void
.end method


# virtual methods
.method final w0(ILj$/util/stream/e2;)Lj$/util/stream/e2;
    .locals 1

    iget p1, p0, Lj$/util/stream/X;->m:I

    packed-switch p1, :pswitch_data_0

    return-object p2

    .line 0
    :pswitch_0
    new-instance p1, Lj$/util/stream/V;

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2}, Lj$/util/stream/V;-><init>(ILj$/util/stream/e2;)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
