.class public final synthetic Lj$/util/function/Z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/util/function/c0;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lj$/util/function/c0;

.field public final synthetic c:Lj$/util/function/c0;


# direct methods
.method public synthetic constructor <init>(Lj$/util/function/c0;Lj$/util/function/c0;I)V
    .locals 0

    iput p3, p0, Lj$/util/function/Z;->a:I

    iput-object p1, p0, Lj$/util/function/Z;->b:Lj$/util/function/c0;

    iput-object p2, p0, Lj$/util/function/Z;->c:Lj$/util/function/c0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lj$/util/function/c0;)Lj$/util/function/c0;
    .locals 2

    iget v0, p0, Lj$/util/function/Z;->a:I

    packed-switch v0, :pswitch_data_0

    .line 0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 0
    new-instance v0, Lj$/util/function/Z;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lj$/util/function/Z;-><init>(Lj$/util/function/c0;Lj$/util/function/c0;I)V

    return-object v0

    .line 0
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 0
    new-instance v0, Lj$/util/function/Z;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lj$/util/function/Z;-><init>(Lj$/util/function/c0;Lj$/util/function/c0;I)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final applyAsLong(J)J
    .locals 1

    iget v0, p0, Lj$/util/function/Z;->a:I

    packed-switch v0, :pswitch_data_0

    .line 0
    iget-object v0, p0, Lj$/util/function/Z;->c:Lj$/util/function/c0;

    invoke-interface {v0, p1, p2}, Lj$/util/function/c0;->applyAsLong(J)J

    move-result-wide p1

    iget-object v0, p0, Lj$/util/function/Z;->b:Lj$/util/function/c0;

    invoke-interface {v0, p1, p2}, Lj$/util/function/c0;->applyAsLong(J)J

    move-result-wide p1

    return-wide p1

    .line 0
    :pswitch_0
    iget-object v0, p0, Lj$/util/function/Z;->b:Lj$/util/function/c0;

    invoke-interface {v0, p1, p2}, Lj$/util/function/c0;->applyAsLong(J)J

    move-result-wide p1

    iget-object v0, p0, Lj$/util/function/Z;->c:Lj$/util/function/c0;

    invoke-interface {v0, p1, p2}, Lj$/util/function/c0;->applyAsLong(J)J

    move-result-wide p1

    return-wide p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Lj$/util/function/c0;)Lj$/util/function/c0;
    .locals 2

    iget v0, p0, Lj$/util/function/Z;->a:I

    packed-switch v0, :pswitch_data_0

    .line 0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 0
    new-instance v0, Lj$/util/function/Z;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lj$/util/function/Z;-><init>(Lj$/util/function/c0;Lj$/util/function/c0;I)V

    return-object v0

    .line 0
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 0
    new-instance v0, Lj$/util/function/Z;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lj$/util/function/Z;-><init>(Lj$/util/function/c0;Lj$/util/function/c0;I)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
