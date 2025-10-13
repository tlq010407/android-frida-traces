.class public final enum Lj$/time/j;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lj$/time/temporal/k;


# static fields
.field public static final enum APRIL:Lj$/time/j;

.field public static final enum AUGUST:Lj$/time/j;

.field public static final enum DECEMBER:Lj$/time/j;

.field public static final enum FEBRUARY:Lj$/time/j;

.field public static final enum JANUARY:Lj$/time/j;

.field public static final enum JULY:Lj$/time/j;

.field public static final enum JUNE:Lj$/time/j;

.field public static final enum MARCH:Lj$/time/j;

.field public static final enum MAY:Lj$/time/j;

.field public static final enum NOVEMBER:Lj$/time/j;

.field public static final enum OCTOBER:Lj$/time/j;

.field public static final enum SEPTEMBER:Lj$/time/j;

.field private static final a:[Lj$/time/j;

.field private static final synthetic b:[Lj$/time/j;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lj$/time/j;

    const-string v1, "JANUARY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lj$/time/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj$/time/j;->JANUARY:Lj$/time/j;

    new-instance v1, Lj$/time/j;

    const-string v3, "FEBRUARY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lj$/time/j;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lj$/time/j;->FEBRUARY:Lj$/time/j;

    new-instance v3, Lj$/time/j;

    const-string v5, "MARCH"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lj$/time/j;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lj$/time/j;->MARCH:Lj$/time/j;

    new-instance v5, Lj$/time/j;

    const-string v7, "APRIL"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lj$/time/j;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lj$/time/j;->APRIL:Lj$/time/j;

    new-instance v7, Lj$/time/j;

    const-string v9, "MAY"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lj$/time/j;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lj$/time/j;->MAY:Lj$/time/j;

    new-instance v9, Lj$/time/j;

    const-string v11, "JUNE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lj$/time/j;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lj$/time/j;->JUNE:Lj$/time/j;

    new-instance v11, Lj$/time/j;

    const-string v13, "JULY"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lj$/time/j;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lj$/time/j;->JULY:Lj$/time/j;

    new-instance v13, Lj$/time/j;

    const-string v15, "AUGUST"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lj$/time/j;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lj$/time/j;->AUGUST:Lj$/time/j;

    new-instance v15, Lj$/time/j;

    const-string v14, "SEPTEMBER"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lj$/time/j;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lj$/time/j;->SEPTEMBER:Lj$/time/j;

    new-instance v14, Lj$/time/j;

    const-string v12, "OCTOBER"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lj$/time/j;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lj$/time/j;->OCTOBER:Lj$/time/j;

    new-instance v12, Lj$/time/j;

    const-string v10, "NOVEMBER"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lj$/time/j;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lj$/time/j;->NOVEMBER:Lj$/time/j;

    new-instance v10, Lj$/time/j;

    const-string v8, "DECEMBER"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lj$/time/j;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lj$/time/j;->DECEMBER:Lj$/time/j;

    const/16 v8, 0xc

    new-array v8, v8, [Lj$/time/j;

    aput-object v0, v8, v2

    aput-object v1, v8, v4

    const/4 v0, 0x2

    aput-object v3, v8, v0

    const/4 v0, 0x3

    aput-object v5, v8, v0

    const/4 v0, 0x4

    aput-object v7, v8, v0

    const/4 v0, 0x5

    aput-object v9, v8, v0

    const/4 v0, 0x6

    aput-object v11, v8, v0

    const/4 v0, 0x7

    aput-object v13, v8, v0

    const/16 v0, 0x8

    aput-object v15, v8, v0

    const/16 v0, 0x9

    aput-object v14, v8, v0

    const/16 v0, 0xa

    aput-object v12, v8, v0

    aput-object v10, v8, v6

    sput-object v8, Lj$/time/j;->b:[Lj$/time/j;

    invoke-static {}, Lj$/time/j;->values()[Lj$/time/j;

    move-result-object v0

    sput-object v0, Lj$/time/j;->a:[Lj$/time/j;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static o(I)Lj$/time/j;
    .locals 3

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/16 v1, 0xc

    if-gt p0, v1, :cond_0

    sget-object v1, Lj$/time/j;->a:[Lj$/time/j;

    sub-int/2addr p0, v0

    aget-object p0, v1, p0

    return-object p0

    :cond_0
    new-instance v0, Lj$/time/c;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid value for MonthOfYear: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lj$/time/c;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lj$/time/j;
    .locals 1

    const-class v0, Lj$/time/j;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lj$/time/j;

    return-object p0
.end method

.method public static values()[Lj$/time/j;
    .locals 1

    sget-object v0, Lj$/time/j;->b:[Lj$/time/j;

    invoke-virtual {v0}, [Lj$/time/j;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj$/time/j;

    return-object v0
.end method


# virtual methods
.method public final f(Lj$/time/temporal/l;)Lj$/time/temporal/q;
    .locals 1

    sget-object v0, Lj$/time/temporal/a;->MONTH_OF_YEAR:Lj$/time/temporal/a;

    if-ne p1, v0, :cond_0

    invoke-interface {p1}, Lj$/time/temporal/l;->f()Lj$/time/temporal/q;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p0, p1}, Lj$/time/temporal/j;->c(Lj$/time/temporal/k;Lj$/time/temporal/l;)Lj$/time/temporal/q;

    move-result-object p1

    return-object p1
.end method

.method public final h(Lj$/time/temporal/l;)J
    .locals 3

    sget-object v0, Lj$/time/temporal/a;->MONTH_OF_YEAR:Lj$/time/temporal/a;

    if-ne p1, v0, :cond_0

    .line 0
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    int-to-long v0, p1

    return-wide v0

    .line 0
    :cond_0
    instance-of v0, p1, Lj$/time/temporal/a;

    if-nez v0, :cond_1

    invoke-interface {p1, p0}, Lj$/time/temporal/l;->h(Lj$/time/temporal/k;)J

    move-result-wide v0

    return-wide v0

    :cond_1
    new-instance v0, Lj$/time/temporal/p;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported field: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lj$/time/temporal/p;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final i(Lj$/time/temporal/n;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lj$/time/temporal/j;->d()Lj$/time/temporal/m;

    move-result-object v0

    if-ne p1, v0, :cond_0

    sget-object p1, Lj$/time/chrono/f;->a:Lj$/time/chrono/f;

    return-object p1

    :cond_0
    invoke-static {}, Lj$/time/temporal/j;->h()Lj$/time/temporal/m;

    move-result-object v0

    if-ne p1, v0, :cond_1

    sget-object p1, Lj$/time/temporal/b;->MONTHS:Lj$/time/temporal/b;

    return-object p1

    :cond_1
    invoke-static {p0, p1}, Lj$/time/temporal/j;->b(Lj$/time/temporal/k;Lj$/time/temporal/n;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final j(Lj$/time/temporal/a;)I
    .locals 1

    .line 0
    sget-object v0, Lj$/time/temporal/a;->MONTH_OF_YEAR:Lj$/time/temporal/a;

    if-ne p1, v0, :cond_0

    .line 0
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    return p1

    .line 0
    :cond_0
    invoke-static {p0, p1}, Lj$/time/temporal/j;->a(Lj$/time/temporal/k;Lj$/time/temporal/a;)I

    move-result p1

    return p1
.end method

.method public final k(Lj$/time/temporal/l;)Z
    .locals 3

    instance-of v0, p1, Lj$/time/temporal/a;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    sget-object v0, Lj$/time/temporal/a;->MONTH_OF_YEAR:Lj$/time/temporal/a;

    if-ne p1, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1, p0}, Lj$/time/temporal/l;->i(Lj$/time/temporal/k;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public final m(Z)I
    .locals 2

    sget-object v0, Lj$/time/i;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    add-int/lit16 p1, p1, 0x14f

    return p1

    :pswitch_0
    add-int/lit16 p1, p1, 0x112

    return p1

    :pswitch_1
    add-int/lit16 p1, p1, 0xd5

    return p1

    :pswitch_2
    add-int/lit16 p1, p1, 0xb6

    return p1

    :pswitch_3
    add-int/lit8 p1, p1, 0x79

    return p1

    :pswitch_4
    add-int/lit8 p1, p1, 0x3c

    return p1

    :pswitch_5
    const/4 p1, 0x1

    return p1

    :pswitch_6
    add-int/lit16 p1, p1, 0x131

    return p1

    :pswitch_7
    add-int/lit16 p1, p1, 0xf4

    return p1

    :pswitch_8
    add-int/lit16 p1, p1, 0x98

    return p1

    :pswitch_9
    add-int/lit8 p1, p1, 0x5b

    return p1

    :pswitch_a
    const/16 p1, 0x20

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final n(Z)I
    .locals 2

    sget-object v0, Lj$/time/i;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 p1, 0x2

    if-eq v0, p1, :cond_0

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    const/4 p1, 0x4

    if-eq v0, p1, :cond_0

    const/4 p1, 0x5

    if-eq v0, p1, :cond_0

    const/16 p1, 0x1f

    return p1

    :cond_0
    const/16 p1, 0x1e

    return p1

    :cond_1
    if-eqz p1, :cond_2

    const/16 p1, 0x1d

    goto :goto_0

    :cond_2
    const/16 p1, 0x1c

    :goto_0
    return p1
.end method

.method public final p()Lj$/time/j;
    .locals 2

    const-wide/16 v0, 0x1

    long-to-int v1, v0

    .line 0
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    add-int/lit8 v1, v1, 0xc

    add-int/2addr v1, v0

    rem-int/lit8 v1, v1, 0xc

    sget-object v0, Lj$/time/j;->a:[Lj$/time/j;

    aget-object v0, v0, v1

    return-object v0
.end method
