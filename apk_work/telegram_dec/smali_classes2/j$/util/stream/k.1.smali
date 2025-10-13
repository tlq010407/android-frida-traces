.class public final synthetic Lj$/util/stream/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/util/function/f;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lj$/util/stream/k;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic andThen(Lj$/util/function/Function;)Lj$/util/function/BiFunction;
    .locals 1

    iget v0, p0, Lj$/util/stream/k;->a:I

    packed-switch v0, :pswitch_data_0

    .line 0
    invoke-static {p0, p1}, Lj$/com/android/tools/r8/a;->a(Lj$/util/function/BiFunction;Lj$/util/function/Function;)Lj$/util/concurrent/s;

    move-result-object p1

    return-object p1

    .line 0
    :pswitch_0
    invoke-static {p0, p1}, Lj$/com/android/tools/r8/a;->a(Lj$/util/function/BiFunction;Lj$/util/function/Function;)Lj$/util/concurrent/s;

    move-result-object p1

    return-object p1

    .line 0
    :pswitch_1
    invoke-static {p0, p1}, Lj$/com/android/tools/r8/a;->a(Lj$/util/function/BiFunction;Lj$/util/function/Function;)Lj$/util/concurrent/s;

    move-result-object p1

    return-object p1

    .line 0
    :pswitch_2
    invoke-static {p0, p1}, Lj$/com/android/tools/r8/a;->a(Lj$/util/function/BiFunction;Lj$/util/function/Function;)Lj$/util/concurrent/s;

    move-result-object p1

    return-object p1

    .line 0
    :pswitch_3
    invoke-static {p0, p1}, Lj$/com/android/tools/r8/a;->a(Lj$/util/function/BiFunction;Lj$/util/function/Function;)Lj$/util/concurrent/s;

    move-result-object p1

    return-object p1

    .line 0
    :pswitch_4
    invoke-static {p0, p1}, Lj$/com/android/tools/r8/a;->a(Lj$/util/function/BiFunction;Lj$/util/function/Function;)Lj$/util/concurrent/s;

    move-result-object p1

    return-object p1

    .line 0
    :pswitch_5
    invoke-static {p0, p1}, Lj$/com/android/tools/r8/a;->a(Lj$/util/function/BiFunction;Lj$/util/function/Function;)Lj$/util/concurrent/s;

    move-result-object p1

    return-object p1

    .line 0
    :pswitch_6
    invoke-static {p0, p1}, Lj$/com/android/tools/r8/a;->a(Lj$/util/function/BiFunction;Lj$/util/function/Function;)Lj$/util/concurrent/s;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget v0, p0, Lj$/util/stream/k;->a:I

    packed-switch v0, :pswitch_data_0

    .line 0
    new-instance v0, Lj$/util/stream/R0;

    check-cast p1, Lj$/util/stream/G0;

    check-cast p2, Lj$/util/stream/G0;

    invoke-direct {v0, p1, p2}, Lj$/util/stream/R0;-><init>(Lj$/util/stream/G0;Lj$/util/stream/G0;)V

    return-object v0

    .line 0
    :pswitch_0
    new-instance v0, Lj$/util/stream/P0;

    check-cast p1, Lj$/util/stream/E0;

    check-cast p2, Lj$/util/stream/E0;

    invoke-direct {v0, p1, p2}, Lj$/util/stream/P0;-><init>(Lj$/util/stream/E0;Lj$/util/stream/E0;)V

    return-object v0

    .line 0
    :pswitch_1
    new-instance v0, Lj$/util/stream/O0;

    check-cast p1, Lj$/util/stream/C0;

    check-cast p2, Lj$/util/stream/C0;

    invoke-direct {v0, p1, p2}, Lj$/util/stream/O0;-><init>(Lj$/util/stream/C0;Lj$/util/stream/C0;)V

    return-object v0

    .line 0
    :pswitch_2
    new-instance v0, Lj$/util/stream/N0;

    check-cast p1, Lj$/util/stream/A0;

    check-cast p2, Lj$/util/stream/A0;

    invoke-direct {v0, p1, p2}, Lj$/util/stream/N0;-><init>(Lj$/util/stream/A0;Lj$/util/stream/A0;)V

    return-object v0

    .line 0
    :pswitch_3
    check-cast p1, [J

    check-cast p2, [J

    sget-object v0, Lj$/util/stream/Collectors;->a:Ljava/util/Set;

    const/4 v0, 0x0

    .line 0
    aget-wide v1, p1, v0

    aget-wide v3, p2, v0

    add-long/2addr v1, v3

    aput-wide v1, p1, v0

    return-object p1

    .line 0
    :pswitch_4
    check-cast p1, Ljava/util/Set;

    check-cast p2, Ljava/util/Set;

    sget-object v0, Lj$/util/stream/Collectors;->a:Ljava/util/Set;

    .line 0
    invoke-interface {p1, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p1

    .line 0
    :pswitch_5
    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/util/List;

    sget-object v0, Lj$/util/stream/Collectors;->a:Ljava/util/Set;

    .line 0
    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p1

    .line 0
    :pswitch_6
    check-cast p1, Ljava/util/Collection;

    check-cast p2, Ljava/util/Collection;

    sget-object v0, Lj$/util/stream/Collectors;->a:Ljava/util/Set;

    .line 0
    invoke-interface {p1, p2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
