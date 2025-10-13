.class public final synthetic Lj$/time/temporal/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/time/temporal/n;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lj$/time/temporal/m;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lj$/time/temporal/k;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lj$/time/temporal/m;->a:I

    packed-switch v0, :pswitch_data_0

    .line 0
    sget-object v0, Lj$/time/temporal/a;->NANO_OF_DAY:Lj$/time/temporal/a;

    invoke-interface {p1, v0}, Lj$/time/temporal/k;->k(Lj$/time/temporal/l;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1, v0}, Lj$/time/temporal/k;->h(Lj$/time/temporal/l;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lj$/time/h;->r(J)Lj$/time/h;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1

    .line 0
    :pswitch_0
    sget-object v0, Lj$/time/temporal/a;->EPOCH_DAY:Lj$/time/temporal/a;

    invoke-interface {p1, v0}, Lj$/time/temporal/k;->k(Lj$/time/temporal/l;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1, v0}, Lj$/time/temporal/k;->h(Lj$/time/temporal/l;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lj$/time/LocalDate;->v(J)Lj$/time/LocalDate;

    move-result-object p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return-object p1

    .line 0
    :pswitch_1
    sget-object v0, Lj$/time/temporal/a;->OFFSET_SECONDS:Lj$/time/temporal/a;

    invoke-interface {p1, v0}, Lj$/time/temporal/k;->k(Lj$/time/temporal/l;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1, v0}, Lj$/time/temporal/k;->j(Lj$/time/temporal/a;)I

    move-result p1

    invoke-static {p1}, Lj$/time/ZoneOffset;->q(I)Lj$/time/ZoneOffset;

    move-result-object p1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    return-object p1

    .line 0
    :pswitch_2
    sget-object v0, Lj$/time/temporal/j;->a:Lj$/time/temporal/m;

    invoke-interface {p1, v0}, Lj$/time/temporal/k;->i(Lj$/time/temporal/n;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/time/ZoneId;

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    sget-object v0, Lj$/time/temporal/j;->d:Lj$/time/temporal/m;

    invoke-interface {p1, v0}, Lj$/time/temporal/k;->i(Lj$/time/temporal/n;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lj$/time/ZoneId;

    :goto_3
    return-object v0

    .line 0
    :pswitch_3
    sget-object v0, Lj$/time/temporal/j;->c:Lj$/time/temporal/m;

    invoke-interface {p1, v0}, Lj$/time/temporal/k;->i(Lj$/time/temporal/n;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/time/temporal/o;

    return-object p1

    .line 0
    :pswitch_4
    sget-object v0, Lj$/time/temporal/j;->b:Lj$/time/temporal/m;

    invoke-interface {p1, v0}, Lj$/time/temporal/k;->i(Lj$/time/temporal/n;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/time/chrono/e;

    return-object p1

    .line 0
    :pswitch_5
    sget-object v0, Lj$/time/temporal/j;->a:Lj$/time/temporal/m;

    invoke-interface {p1, v0}, Lj$/time/temporal/k;->i(Lj$/time/temporal/n;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/time/ZoneId;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
