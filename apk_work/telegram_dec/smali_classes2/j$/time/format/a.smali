.class public final Lj$/time/format/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final f:Lj$/time/format/a;


# instance fields
.field private final a:Lj$/time/format/f;

.field private final b:Ljava/util/Locale;

.field private final c:Lj$/time/format/w;

.field private final d:Lj$/time/chrono/e;

.field private final e:Lj$/time/ZoneId;


# direct methods
.method static constructor <clinit>()V
    .locals 20

    new-instance v0, Lj$/time/format/q;

    invoke-direct {v0}, Lj$/time/format/q;-><init>()V

    sget-object v1, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    sget-object v2, Lj$/time/format/y;->EXCEEDS_PAD:Lj$/time/format/y;

    const/4 v3, 0x4

    const/16 v4, 0xa

    invoke-virtual {v0, v1, v3, v4, v2}, Lj$/time/format/q;->m(Lj$/time/temporal/l;IILj$/time/format/y;)V

    const/16 v5, 0x2d

    invoke-virtual {v0, v5}, Lj$/time/format/q;->e(C)V

    sget-object v6, Lj$/time/temporal/a;->MONTH_OF_YEAR:Lj$/time/temporal/a;

    const/4 v7, 0x2

    invoke-virtual {v0, v6, v7}, Lj$/time/format/q;->l(Lj$/time/temporal/l;I)V

    invoke-virtual {v0, v5}, Lj$/time/format/q;->e(C)V

    sget-object v8, Lj$/time/temporal/a;->DAY_OF_MONTH:Lj$/time/temporal/a;

    invoke-virtual {v0, v8, v7}, Lj$/time/format/q;->l(Lj$/time/temporal/l;I)V

    sget-object v9, Lj$/time/format/x;->STRICT:Lj$/time/format/x;

    sget-object v10, Lj$/time/chrono/f;->a:Lj$/time/chrono/f;

    invoke-virtual {v0, v9, v10}, Lj$/time/format/q;->u(Lj$/time/format/x;Lj$/time/chrono/f;)Lj$/time/format/a;

    move-result-object v0

    new-instance v11, Lj$/time/format/q;

    invoke-direct {v11}, Lj$/time/format/q;-><init>()V

    invoke-virtual {v11}, Lj$/time/format/q;->r()V

    invoke-virtual {v11, v0}, Lj$/time/format/q;->a(Lj$/time/format/a;)V

    invoke-virtual {v11}, Lj$/time/format/q;->h()V

    invoke-virtual {v11, v9, v10}, Lj$/time/format/q;->u(Lj$/time/format/x;Lj$/time/chrono/f;)Lj$/time/format/a;

    new-instance v11, Lj$/time/format/q;

    invoke-direct {v11}, Lj$/time/format/q;-><init>()V

    invoke-virtual {v11}, Lj$/time/format/q;->r()V

    invoke-virtual {v11, v0}, Lj$/time/format/q;->a(Lj$/time/format/a;)V

    invoke-virtual {v11}, Lj$/time/format/q;->q()V

    invoke-virtual {v11}, Lj$/time/format/q;->h()V

    invoke-virtual {v11, v9, v10}, Lj$/time/format/q;->u(Lj$/time/format/x;Lj$/time/chrono/f;)Lj$/time/format/a;

    new-instance v11, Lj$/time/format/q;

    invoke-direct {v11}, Lj$/time/format/q;-><init>()V

    sget-object v12, Lj$/time/temporal/a;->HOUR_OF_DAY:Lj$/time/temporal/a;

    invoke-virtual {v11, v12, v7}, Lj$/time/format/q;->l(Lj$/time/temporal/l;I)V

    const/16 v13, 0x3a

    invoke-virtual {v11, v13}, Lj$/time/format/q;->e(C)V

    sget-object v14, Lj$/time/temporal/a;->MINUTE_OF_HOUR:Lj$/time/temporal/a;

    invoke-virtual {v11, v14, v7}, Lj$/time/format/q;->l(Lj$/time/temporal/l;I)V

    invoke-virtual {v11}, Lj$/time/format/q;->q()V

    invoke-virtual {v11, v13}, Lj$/time/format/q;->e(C)V

    sget-object v15, Lj$/time/temporal/a;->SECOND_OF_MINUTE:Lj$/time/temporal/a;

    invoke-virtual {v11, v15, v7}, Lj$/time/format/q;->l(Lj$/time/temporal/l;I)V

    invoke-virtual {v11}, Lj$/time/format/q;->q()V

    sget-object v13, Lj$/time/temporal/a;->NANO_OF_SECOND:Lj$/time/temporal/a;

    invoke-virtual {v11, v13}, Lj$/time/format/q;->b(Lj$/time/temporal/a;)V

    const/4 v13, 0x0

    invoke-virtual {v11, v9, v13}, Lj$/time/format/q;->u(Lj$/time/format/x;Lj$/time/chrono/f;)Lj$/time/format/a;

    move-result-object v11

    new-instance v7, Lj$/time/format/q;

    invoke-direct {v7}, Lj$/time/format/q;-><init>()V

    invoke-virtual {v7}, Lj$/time/format/q;->r()V

    invoke-virtual {v7, v11}, Lj$/time/format/q;->a(Lj$/time/format/a;)V

    invoke-virtual {v7}, Lj$/time/format/q;->h()V

    invoke-virtual {v7, v9, v13}, Lj$/time/format/q;->u(Lj$/time/format/x;Lj$/time/chrono/f;)Lj$/time/format/a;

    new-instance v7, Lj$/time/format/q;

    invoke-direct {v7}, Lj$/time/format/q;-><init>()V

    invoke-virtual {v7}, Lj$/time/format/q;->r()V

    invoke-virtual {v7, v11}, Lj$/time/format/q;->a(Lj$/time/format/a;)V

    invoke-virtual {v7}, Lj$/time/format/q;->q()V

    invoke-virtual {v7}, Lj$/time/format/q;->h()V

    invoke-virtual {v7, v9, v13}, Lj$/time/format/q;->u(Lj$/time/format/x;Lj$/time/chrono/f;)Lj$/time/format/a;

    new-instance v7, Lj$/time/format/q;

    invoke-direct {v7}, Lj$/time/format/q;-><init>()V

    invoke-virtual {v7}, Lj$/time/format/q;->r()V

    invoke-virtual {v7, v0}, Lj$/time/format/q;->a(Lj$/time/format/a;)V

    const/16 v0, 0x54

    invoke-virtual {v7, v0}, Lj$/time/format/q;->e(C)V

    invoke-virtual {v7, v11}, Lj$/time/format/q;->a(Lj$/time/format/a;)V

    invoke-virtual {v7, v9, v10}, Lj$/time/format/q;->u(Lj$/time/format/x;Lj$/time/chrono/f;)Lj$/time/format/a;

    move-result-object v0

    new-instance v7, Lj$/time/format/q;

    invoke-direct {v7}, Lj$/time/format/q;-><init>()V

    invoke-virtual {v7}, Lj$/time/format/q;->r()V

    invoke-virtual {v7, v0}, Lj$/time/format/q;->a(Lj$/time/format/a;)V

    invoke-virtual {v7}, Lj$/time/format/q;->h()V

    invoke-virtual {v7, v9, v10}, Lj$/time/format/q;->u(Lj$/time/format/x;Lj$/time/chrono/f;)Lj$/time/format/a;

    move-result-object v7

    new-instance v11, Lj$/time/format/q;

    invoke-direct {v11}, Lj$/time/format/q;-><init>()V

    invoke-virtual {v11, v7}, Lj$/time/format/q;->a(Lj$/time/format/a;)V

    invoke-virtual {v11}, Lj$/time/format/q;->q()V

    const/16 v7, 0x5b

    invoke-virtual {v11, v7}, Lj$/time/format/q;->e(C)V

    invoke-virtual {v11}, Lj$/time/format/q;->s()V

    invoke-virtual {v11}, Lj$/time/format/q;->n()V

    const/16 v13, 0x5d

    invoke-virtual {v11, v13}, Lj$/time/format/q;->e(C)V

    invoke-virtual {v11, v9, v10}, Lj$/time/format/q;->u(Lj$/time/format/x;Lj$/time/chrono/f;)Lj$/time/format/a;

    new-instance v11, Lj$/time/format/q;

    invoke-direct {v11}, Lj$/time/format/q;-><init>()V

    invoke-virtual {v11, v0}, Lj$/time/format/q;->a(Lj$/time/format/a;)V

    invoke-virtual {v11}, Lj$/time/format/q;->q()V

    invoke-virtual {v11}, Lj$/time/format/q;->h()V

    invoke-virtual {v11}, Lj$/time/format/q;->q()V

    invoke-virtual {v11, v7}, Lj$/time/format/q;->e(C)V

    invoke-virtual {v11}, Lj$/time/format/q;->s()V

    invoke-virtual {v11}, Lj$/time/format/q;->n()V

    invoke-virtual {v11, v13}, Lj$/time/format/q;->e(C)V

    invoke-virtual {v11, v9, v10}, Lj$/time/format/q;->u(Lj$/time/format/x;Lj$/time/chrono/f;)Lj$/time/format/a;

    new-instance v0, Lj$/time/format/q;

    invoke-direct {v0}, Lj$/time/format/q;-><init>()V

    invoke-virtual {v0}, Lj$/time/format/q;->r()V

    invoke-virtual {v0, v1, v3, v4, v2}, Lj$/time/format/q;->m(Lj$/time/temporal/l;IILj$/time/format/y;)V

    invoke-virtual {v0, v5}, Lj$/time/format/q;->e(C)V

    sget-object v7, Lj$/time/temporal/a;->DAY_OF_YEAR:Lj$/time/temporal/a;

    const/4 v11, 0x3

    invoke-virtual {v0, v7, v11}, Lj$/time/format/q;->l(Lj$/time/temporal/l;I)V

    invoke-virtual {v0}, Lj$/time/format/q;->q()V

    invoke-virtual {v0}, Lj$/time/format/q;->h()V

    invoke-virtual {v0, v9, v10}, Lj$/time/format/q;->u(Lj$/time/format/x;Lj$/time/chrono/f;)Lj$/time/format/a;

    new-instance v0, Lj$/time/format/q;

    invoke-direct {v0}, Lj$/time/format/q;-><init>()V

    invoke-virtual {v0}, Lj$/time/format/q;->r()V

    sget-object v7, Lj$/time/temporal/i;->c:Lj$/time/temporal/l;

    invoke-virtual {v0, v7, v3, v4, v2}, Lj$/time/format/q;->m(Lj$/time/temporal/l;IILj$/time/format/y;)V

    const-string v2, "-W"

    invoke-virtual {v0, v2}, Lj$/time/format/q;->f(Ljava/lang/String;)V

    sget-object v2, Lj$/time/temporal/i;->b:Lj$/time/temporal/l;

    const/4 v4, 0x2

    invoke-virtual {v0, v2, v4}, Lj$/time/format/q;->l(Lj$/time/temporal/l;I)V

    invoke-virtual {v0, v5}, Lj$/time/format/q;->e(C)V

    sget-object v2, Lj$/time/temporal/a;->DAY_OF_WEEK:Lj$/time/temporal/a;

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v4}, Lj$/time/format/q;->l(Lj$/time/temporal/l;I)V

    invoke-virtual {v0}, Lj$/time/format/q;->q()V

    invoke-virtual {v0}, Lj$/time/format/q;->h()V

    invoke-virtual {v0, v9, v10}, Lj$/time/format/q;->u(Lj$/time/format/x;Lj$/time/chrono/f;)Lj$/time/format/a;

    new-instance v0, Lj$/time/format/q;

    invoke-direct {v0}, Lj$/time/format/q;-><init>()V

    invoke-virtual {v0}, Lj$/time/format/q;->r()V

    invoke-virtual {v0}, Lj$/time/format/q;->c()V

    const/4 v5, 0x0

    invoke-virtual {v0, v9, v5}, Lj$/time/format/q;->u(Lj$/time/format/x;Lj$/time/chrono/f;)Lj$/time/format/a;

    move-result-object v0

    sput-object v0, Lj$/time/format/a;->f:Lj$/time/format/a;

    new-instance v0, Lj$/time/format/q;

    invoke-direct {v0}, Lj$/time/format/q;-><init>()V

    invoke-virtual {v0}, Lj$/time/format/q;->r()V

    invoke-virtual {v0, v1, v3}, Lj$/time/format/q;->l(Lj$/time/temporal/l;I)V

    const/4 v5, 0x2

    invoke-virtual {v0, v6, v5}, Lj$/time/format/q;->l(Lj$/time/temporal/l;I)V

    invoke-virtual {v0, v8, v5}, Lj$/time/format/q;->l(Lj$/time/temporal/l;I)V

    invoke-virtual {v0}, Lj$/time/format/q;->q()V

    const-string v5, "+HHMMss"

    const-string v7, "Z"

    invoke-virtual {v0, v5, v7}, Lj$/time/format/q;->g(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v9, v10}, Lj$/time/format/q;->u(Lj$/time/format/x;Lj$/time/chrono/f;)Lj$/time/format/a;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-wide/16 v16, 0x1

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v7, "Mon"

    invoke-virtual {v0, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v16, 0x2

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v9, "Tue"

    invoke-virtual {v0, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v16, 0x3

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const-string v11, "Wed"

    invoke-virtual {v0, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v16, 0x4

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const-string v13, "Thu"

    invoke-virtual {v0, v11, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v16, 0x5

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    const-string v3, "Fri"

    invoke-virtual {v0, v13, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v17, 0x6

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "Sat"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v18, 0x7

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v18, v10

    const-string v10, "Sun"

    invoke-virtual {v0, v4, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v19, v15

    const-string v15, "Jan"

    invoke-virtual {v10, v5, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "Feb"

    invoke-virtual {v10, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "Mar"

    invoke-virtual {v10, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "Apr"

    invoke-virtual {v10, v11, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "May"

    invoke-virtual {v10, v13, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "Jun"

    invoke-virtual {v10, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "Jul"

    invoke-virtual {v10, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v3, 0x8

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "Aug"

    invoke-virtual {v10, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v3, 0x9

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "Sep"

    invoke-virtual {v10, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v3, 0xa

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "Oct"

    invoke-virtual {v10, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v3, 0xb

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "Nov"

    invoke-virtual {v10, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v3, 0xc

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "Dec"

    invoke-virtual {v10, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lj$/time/format/q;

    invoke-direct {v3}, Lj$/time/format/q;-><init>()V

    invoke-virtual {v3}, Lj$/time/format/q;->r()V

    invoke-virtual {v3}, Lj$/time/format/q;->t()V

    invoke-virtual {v3}, Lj$/time/format/q;->q()V

    invoke-virtual {v3, v2, v0}, Lj$/time/format/q;->j(Lj$/time/temporal/a;Ljava/util/HashMap;)V

    const-string v0, ", "

    invoke-virtual {v3, v0}, Lj$/time/format/q;->f(Ljava/lang/String;)V

    invoke-virtual {v3}, Lj$/time/format/q;->p()V

    sget-object v0, Lj$/time/format/y;->NOT_NEGATIVE:Lj$/time/format/y;

    const/4 v2, 0x2

    const/4 v4, 0x1

    invoke-virtual {v3, v8, v4, v2, v0}, Lj$/time/format/q;->m(Lj$/time/temporal/l;IILj$/time/format/y;)V

    const/16 v0, 0x20

    invoke-virtual {v3, v0}, Lj$/time/format/q;->e(C)V

    invoke-virtual {v3, v6, v10}, Lj$/time/format/q;->j(Lj$/time/temporal/a;Ljava/util/HashMap;)V

    invoke-virtual {v3, v0}, Lj$/time/format/q;->e(C)V

    const/4 v4, 0x4

    invoke-virtual {v3, v1, v4}, Lj$/time/format/q;->l(Lj$/time/temporal/l;I)V

    invoke-virtual {v3, v0}, Lj$/time/format/q;->e(C)V

    invoke-virtual {v3, v12, v2}, Lj$/time/format/q;->l(Lj$/time/temporal/l;I)V

    const/16 v1, 0x3a

    invoke-virtual {v3, v1}, Lj$/time/format/q;->e(C)V

    invoke-virtual {v3, v14, v2}, Lj$/time/format/q;->l(Lj$/time/temporal/l;I)V

    invoke-virtual {v3}, Lj$/time/format/q;->q()V

    invoke-virtual {v3, v1}, Lj$/time/format/q;->e(C)V

    move-object/from16 v1, v19

    invoke-virtual {v3, v1, v2}, Lj$/time/format/q;->l(Lj$/time/temporal/l;I)V

    invoke-virtual {v3}, Lj$/time/format/q;->p()V

    invoke-virtual {v3, v0}, Lj$/time/format/q;->e(C)V

    const-string v0, "+HHMM"

    const-string v1, "GMT"

    invoke-virtual {v3, v0, v1}, Lj$/time/format/q;->g(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lj$/time/format/x;->SMART:Lj$/time/format/x;

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Lj$/time/format/q;->u(Lj$/time/format/x;Lj$/time/chrono/f;)Lj$/time/format/a;

    return-void
.end method

.method constructor <init>(Lj$/time/format/f;Ljava/util/Locale;Lj$/time/format/x;Lj$/time/chrono/f;)V
    .locals 1

    sget-object v0, Lj$/time/format/w;->a:Lj$/time/format/w;

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/time/format/a;->a:Lj$/time/format/f;

    const-string p1, "locale"

    invoke-static {p2, p1}, Lj$/util/A;->z(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lj$/time/format/a;->b:Ljava/util/Locale;

    iput-object v0, p0, Lj$/time/format/a;->c:Lj$/time/format/w;

    const-string p1, "resolverStyle"

    invoke-static {p3, p1}, Lj$/util/A;->z(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p4, p0, Lj$/time/format/a;->d:Lj$/time/chrono/e;

    const/4 p1, 0x0

    iput-object p1, p0, Lj$/time/format/a;->e:Lj$/time/ZoneId;

    return-void
.end method


# virtual methods
.method public final a(Lj$/time/temporal/k;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 0
    const-string v1, "temporal"

    invoke-static {p1, v1}, Lj$/util/A;->z(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Lj$/time/format/s;

    invoke-direct {v1, p1, p0}, Lj$/time/format/s;-><init>(Lj$/time/temporal/k;Lj$/time/format/a;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p1, p0, Lj$/time/format/a;->a:Lj$/time/format/f;

    :try_start_1
    invoke-virtual {p1, v1, v0}, Lj$/time/format/f;->f(Lj$/time/format/s;Ljava/lang/StringBuilder;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 0
    new-instance v0, Lj$/time/c;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lj$/time/c;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method public final b()Lj$/time/chrono/e;
    .locals 1

    iget-object v0, p0, Lj$/time/format/a;->d:Lj$/time/chrono/e;

    return-object v0
.end method

.method public final c()Lj$/time/format/w;
    .locals 1

    iget-object v0, p0, Lj$/time/format/a;->c:Lj$/time/format/w;

    return-object v0
.end method

.method public final d()Ljava/util/Locale;
    .locals 1

    iget-object v0, p0, Lj$/time/format/a;->b:Ljava/util/Locale;

    return-object v0
.end method

.method public final e()Lj$/time/ZoneId;
    .locals 1

    iget-object v0, p0, Lj$/time/format/a;->e:Lj$/time/ZoneId;

    return-object v0
.end method

.method final f()Lj$/time/format/f;
    .locals 1

    .line 0
    iget-object v0, p0, Lj$/time/format/a;->a:Lj$/time/format/f;

    invoke-virtual {v0}, Lj$/time/format/f;->a()Lj$/time/format/f;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lj$/time/format/a;->a:Lj$/time/format/f;

    invoke-virtual {v0}, Lj$/time/format/f;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
