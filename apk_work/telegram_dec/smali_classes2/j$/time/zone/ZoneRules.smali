.class public final Lj$/time/zone/ZoneRules;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final i:[J

.field private static final j:[Lj$/time/zone/b;

.field private static final k:[Lj$/time/LocalDateTime;

.field private static final l:[Lj$/time/zone/a;


# instance fields
.field private final a:[J

.field private final b:[Lj$/time/ZoneOffset;

.field private final c:[J

.field private final d:[Lj$/time/LocalDateTime;

.field private final e:[Lj$/time/ZoneOffset;

.field private final f:[Lj$/time/zone/b;

.field private final g:Ljava/util/TimeZone;

.field private final transient h:Lj$/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [J

    sput-object v1, Lj$/time/zone/ZoneRules;->i:[J

    new-array v1, v0, [Lj$/time/zone/b;

    sput-object v1, Lj$/time/zone/ZoneRules;->j:[Lj$/time/zone/b;

    new-array v1, v0, [Lj$/time/LocalDateTime;

    sput-object v1, Lj$/time/zone/ZoneRules;->k:[Lj$/time/LocalDateTime;

    new-array v0, v0, [Lj$/time/zone/a;

    sput-object v0, Lj$/time/zone/ZoneRules;->l:[Lj$/time/zone/a;

    return-void
.end method

.method private constructor <init>(Lj$/time/ZoneOffset;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lj$/time/zone/ZoneRules;->h:Lj$/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x1

    new-array v0, v0, [Lj$/time/ZoneOffset;

    iput-object v0, p0, Lj$/time/zone/ZoneRules;->b:[Lj$/time/ZoneOffset;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object p1, Lj$/time/zone/ZoneRules;->i:[J

    iput-object p1, p0, Lj$/time/zone/ZoneRules;->a:[J

    iput-object p1, p0, Lj$/time/zone/ZoneRules;->c:[J

    sget-object p1, Lj$/time/zone/ZoneRules;->k:[Lj$/time/LocalDateTime;

    iput-object p1, p0, Lj$/time/zone/ZoneRules;->d:[Lj$/time/LocalDateTime;

    iput-object v0, p0, Lj$/time/zone/ZoneRules;->e:[Lj$/time/ZoneOffset;

    sget-object p1, Lj$/time/zone/ZoneRules;->j:[Lj$/time/zone/b;

    iput-object p1, p0, Lj$/time/zone/ZoneRules;->f:[Lj$/time/zone/b;

    const/4 p1, 0x0

    iput-object p1, p0, Lj$/time/zone/ZoneRules;->g:Ljava/util/TimeZone;

    return-void
.end method

.method constructor <init>(Ljava/util/TimeZone;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lj$/time/zone/ZoneRules;->h:Lj$/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x1

    new-array v0, v0, [Lj$/time/ZoneOffset;

    iput-object v0, p0, Lj$/time/zone/ZoneRules;->b:[Lj$/time/ZoneOffset;

    invoke-virtual {p1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v1

    invoke-static {v1}, Lj$/time/zone/ZoneRules;->j(I)Lj$/time/ZoneOffset;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lj$/time/zone/ZoneRules;->i:[J

    iput-object v1, p0, Lj$/time/zone/ZoneRules;->a:[J

    iput-object v1, p0, Lj$/time/zone/ZoneRules;->c:[J

    sget-object v1, Lj$/time/zone/ZoneRules;->k:[Lj$/time/LocalDateTime;

    iput-object v1, p0, Lj$/time/zone/ZoneRules;->d:[Lj$/time/LocalDateTime;

    iput-object v0, p0, Lj$/time/zone/ZoneRules;->e:[Lj$/time/ZoneOffset;

    sget-object v0, Lj$/time/zone/ZoneRules;->j:[Lj$/time/zone/b;

    iput-object v0, p0, Lj$/time/zone/ZoneRules;->f:[Lj$/time/zone/b;

    iput-object p1, p0, Lj$/time/zone/ZoneRules;->g:Ljava/util/TimeZone;

    return-void
.end method

.method private static a(Lj$/time/LocalDateTime;Lj$/time/zone/a;)Ljava/lang/Object;
    .locals 2

    .line 0
    invoke-virtual {p1}, Lj$/time/zone/a;->h()Lj$/time/LocalDateTime;

    move-result-object v0

    invoke-virtual {p1}, Lj$/time/zone/a;->n()Z

    move-result v1

    invoke-virtual {p0, v0}, Lj$/time/LocalDateTime;->r(Lj$/time/LocalDateTime;)Z

    move-result v0

    if-eqz v1, :cond_2

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lj$/time/zone/a;->k()Lj$/time/ZoneOffset;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lj$/time/zone/a;->f()Lj$/time/LocalDateTime;

    move-result-object v0

    invoke-virtual {p0, v0}, Lj$/time/LocalDateTime;->r(Lj$/time/LocalDateTime;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-object p1

    :cond_1
    invoke-virtual {p1}, Lj$/time/zone/a;->j()Lj$/time/ZoneOffset;

    move-result-object p0

    return-object p0

    :cond_2
    if-nez v0, :cond_3

    invoke-virtual {p1}, Lj$/time/zone/a;->j()Lj$/time/ZoneOffset;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {p1}, Lj$/time/zone/a;->f()Lj$/time/LocalDateTime;

    move-result-object v0

    invoke-virtual {p0, v0}, Lj$/time/LocalDateTime;->r(Lj$/time/LocalDateTime;)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-virtual {p1}, Lj$/time/zone/a;->k()Lj$/time/ZoneOffset;

    move-result-object p0

    return-object p0

    :cond_4
    return-object p1
.end method

.method private b(I)[Lj$/time/zone/a;
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, v0, Lj$/time/zone/ZoneRules;->h:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lj$/time/zone/a;

    if-eqz v4, :cond_0

    return-object v4

    :cond_0
    const/4 v5, 0x0

    iget-object v6, v0, Lj$/time/zone/ZoneRules;->g:Ljava/util/TimeZone;

    if-eqz v6, :cond_9

    sget-object v7, Lj$/time/zone/ZoneRules;->l:[Lj$/time/zone/a;

    const/16 v8, 0x708

    if-ge v1, v8, :cond_1

    return-object v7

    :cond_1
    add-int/lit8 v8, v1, -0x1

    invoke-static {v8}, Lj$/time/LocalDateTime;->s(I)Lj$/time/LocalDateTime;

    move-result-object v8

    iget-object v9, v0, Lj$/time/zone/ZoneRules;->b:[Lj$/time/ZoneOffset;

    aget-object v5, v9, v5

    invoke-virtual {v8, v5}, Lj$/time/LocalDateTime;->w(Lj$/time/ZoneOffset;)J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    mul-long v12, v8, v10

    invoke-virtual {v6, v12, v13}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v5

    const-wide/32 v12, 0x1e7cb00

    add-long/2addr v12, v8

    :goto_0
    cmp-long v14, v8, v12

    if-gez v14, :cond_7

    const-wide/32 v14, 0x76a700

    add-long/2addr v14, v8

    move-wide/from16 v16, v8

    mul-long v8, v14, v10

    invoke-virtual {v6, v8, v9}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v8

    if-eq v5, v8, :cond_5

    move-wide/from16 v8, v16

    :goto_1
    sub-long v16, v14, v8

    const-wide/16 v18, 0x1

    cmp-long v20, v16, v18

    if-lez v20, :cond_3

    move/from16 v17, v5

    add-long v4, v14, v8

    move-wide/from16 v18, v12

    const-wide/16 v12, 0x2

    invoke-static {v4, v5, v12, v13}, Lj$/com/android/tools/r8/a;->j(JJ)J

    move-result-wide v4

    mul-long v12, v4, v10

    invoke-virtual {v6, v12, v13}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v12

    move/from16 v13, v17

    if-ne v12, v13, :cond_2

    move-wide v8, v4

    goto :goto_2

    :cond_2
    move-wide v14, v4

    :goto_2
    move v5, v13

    move-wide/from16 v12, v18

    goto :goto_1

    :cond_3
    move-wide/from16 v18, v12

    move v13, v5

    mul-long v4, v8, v10

    invoke-virtual {v6, v4, v5}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v4

    if-eq v4, v13, :cond_4

    goto :goto_3

    :cond_4
    move-wide v8, v14

    :goto_3
    invoke-static {v13}, Lj$/time/zone/ZoneRules;->j(I)Lj$/time/ZoneOffset;

    move-result-object v4

    mul-long v12, v8, v10

    invoke-virtual {v6, v12, v13}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v5

    invoke-static {v5}, Lj$/time/zone/ZoneRules;->j(I)Lj$/time/ZoneOffset;

    move-result-object v12

    invoke-static {v8, v9, v12}, Lj$/time/zone/ZoneRules;->c(JLj$/time/ZoneOffset;)I

    move-result v13

    if-ne v13, v1, :cond_6

    array-length v13, v7

    add-int/lit8 v13, v13, 0x1

    invoke-static {v7, v13}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lj$/time/zone/a;

    array-length v13, v7

    add-int/lit8 v13, v13, -0x1

    new-instance v14, Lj$/time/zone/a;

    invoke-direct {v14, v8, v9, v4, v12}, Lj$/time/zone/a;-><init>(JLj$/time/ZoneOffset;Lj$/time/ZoneOffset;)V

    aput-object v14, v7, v13

    goto :goto_4

    :cond_5
    move-wide/from16 v18, v12

    move v13, v5

    move-wide v8, v14

    :cond_6
    :goto_4
    move-wide/from16 v12, v18

    goto :goto_0

    :cond_7
    const/16 v4, 0x77c

    if-gt v4, v1, :cond_8

    const/16 v4, 0x834

    if-ge v1, v4, :cond_8

    invoke-interface {v3, v2, v7}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    return-object v7

    :cond_9
    iget-object v4, v0, Lj$/time/zone/ZoneRules;->f:[Lj$/time/zone/b;

    array-length v6, v4

    new-array v6, v6, [Lj$/time/zone/a;

    array-length v7, v4

    if-gtz v7, :cond_b

    const/16 v7, 0x834

    if-ge v1, v7, :cond_a

    invoke-interface {v3, v2, v6}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    return-object v6

    :cond_b
    aget-object v1, v4, v5

    const/4 v1, 0x0

    goto :goto_6

    :goto_5
    throw v1

    :goto_6
    goto :goto_5
.end method

.method private static c(JLj$/time/ZoneOffset;)I
    .locals 2

    .line 0
    invoke-virtual {p2}, Lj$/time/ZoneOffset;->getTotalSeconds()I

    move-result p2

    int-to-long v0, p2

    add-long/2addr p0, v0

    const-wide/32 v0, 0x15180

    invoke-static {p0, p1, v0, v1}, Lj$/com/android/tools/r8/a;->j(JJ)J

    move-result-wide p0

    invoke-static {p0, p1}, Lj$/time/LocalDate;->v(J)Lj$/time/LocalDate;

    move-result-object p0

    invoke-virtual {p0}, Lj$/time/LocalDate;->getYear()I

    move-result p0

    return p0
.end method

.method private d(Lj$/time/LocalDateTime;)Ljava/lang/Object;
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lj$/time/zone/ZoneRules;->b:[Lj$/time/ZoneOffset;

    const/4 v2, 0x0

    iget-object v3, p0, Lj$/time/zone/ZoneRules;->g:Ljava/util/TimeZone;

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Lj$/time/LocalDateTime;->p()I

    move-result v4

    invoke-direct {p0, v4}, Lj$/time/zone/ZoneRules;->b(I)[Lj$/time/zone/a;

    move-result-object v4

    array-length v5, v4

    if-nez v5, :cond_0

    aget-object v0, v1, v2

    invoke-virtual {p1, v0}, Lj$/time/LocalDateTime;->w(Lj$/time/ZoneOffset;)J

    move-result-wide v0

    const-wide/16 v4, 0x3e8

    mul-long v0, v0, v4

    invoke-virtual {v3, v0, v1}, Ljava/util/TimeZone;->getOffset(J)I

    move-result p1

    invoke-static {p1}, Lj$/time/zone/ZoneRules;->j(I)Lj$/time/ZoneOffset;

    move-result-object p1

    return-object p1

    :cond_0
    array-length v1, v4

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v0, v4, v2

    invoke-static {p1, v0}, Lj$/time/zone/ZoneRules;->a(Lj$/time/LocalDateTime;Lj$/time/zone/a;)Ljava/lang/Object;

    move-result-object v3

    instance-of v5, v3, Lj$/time/zone/a;

    if-nez v5, :cond_2

    invoke-virtual {v0}, Lj$/time/zone/a;->k()Lj$/time/ZoneOffset;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    move-object v0, v3

    goto :goto_0

    :cond_2
    :goto_1
    return-object v3

    :cond_3
    return-object v0

    :cond_4
    iget-object v3, p0, Lj$/time/zone/ZoneRules;->c:[J

    array-length v3, v3

    if-nez v3, :cond_5

    aget-object p1, v1, v2

    return-object p1

    :cond_5
    iget-object v1, p0, Lj$/time/zone/ZoneRules;->f:[Lj$/time/zone/b;

    array-length v1, v1

    iget-object v3, p0, Lj$/time/zone/ZoneRules;->d:[Lj$/time/LocalDateTime;

    if-lez v1, :cond_9

    array-length v1, v3

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v3, v1

    invoke-virtual {p1, v1}, Lj$/time/LocalDateTime;->q(Lj$/time/LocalDateTime;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p1}, Lj$/time/LocalDateTime;->p()I

    move-result v1

    invoke-direct {p0, v1}, Lj$/time/zone/ZoneRules;->b(I)[Lj$/time/zone/a;

    move-result-object v1

    array-length v3, v1

    :goto_2
    if-ge v2, v3, :cond_8

    aget-object v0, v1, v2

    invoke-static {p1, v0}, Lj$/time/zone/ZoneRules;->a(Lj$/time/LocalDateTime;Lj$/time/zone/a;)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lj$/time/zone/a;

    if-nez v5, :cond_7

    invoke-virtual {v0}, Lj$/time/zone/a;->k()Lj$/time/ZoneOffset;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_3

    :cond_6
    add-int/lit8 v2, v2, 0x1

    move-object v0, v4

    goto :goto_2

    :cond_7
    :goto_3
    return-object v4

    :cond_8
    return-object v0

    :cond_9
    invoke-static {v3, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    iget-object v1, p0, Lj$/time/zone/ZoneRules;->e:[Lj$/time/ZoneOffset;

    if-ne p1, v0, :cond_a

    aget-object p1, v1, v2

    return-object p1

    :cond_a
    if-gez p1, :cond_b

    neg-int p1, p1

    add-int/lit8 p1, p1, -0x2

    goto :goto_4

    :cond_b
    array-length v0, v3

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_c

    aget-object v0, v3, p1

    add-int/lit8 v2, p1, 0x1

    aget-object v4, v3, v2

    invoke-virtual {v0, v4}, Lj$/time/LocalDateTime;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    move p1, v2

    :cond_c
    :goto_4
    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_e

    aget-object v0, v3, p1

    add-int/lit8 v2, p1, 0x1

    aget-object v2, v3, v2

    div-int/lit8 p1, p1, 0x2

    aget-object v3, v1, p1

    add-int/lit8 p1, p1, 0x1

    aget-object p1, v1, p1

    invoke-virtual {p1}, Lj$/time/ZoneOffset;->getTotalSeconds()I

    move-result v1

    invoke-virtual {v3}, Lj$/time/ZoneOffset;->getTotalSeconds()I

    move-result v4

    if-le v1, v4, :cond_d

    new-instance v1, Lj$/time/zone/a;

    invoke-direct {v1, v0, v3, p1}, Lj$/time/zone/a;-><init>(Lj$/time/LocalDateTime;Lj$/time/ZoneOffset;Lj$/time/ZoneOffset;)V

    return-object v1

    :cond_d
    new-instance v0, Lj$/time/zone/a;

    invoke-direct {v0, v2, v3, p1}, Lj$/time/zone/a;-><init>(Lj$/time/LocalDateTime;Lj$/time/ZoneOffset;Lj$/time/ZoneOffset;)V

    return-object v0

    :cond_e
    div-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    aget-object p1, v1, p1

    return-object p1
.end method

.method public static i(Lj$/time/ZoneOffset;)Lj$/time/zone/ZoneRules;
    .locals 1

    const-string v0, "offset"

    invoke-static {p0, v0}, Lj$/util/A;->z(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lj$/time/zone/ZoneRules;

    invoke-direct {v0, p0}, Lj$/time/zone/ZoneRules;-><init>(Lj$/time/ZoneOffset;)V

    return-object v0
.end method

.method private static j(I)Lj$/time/ZoneOffset;
    .locals 0

    div-int/lit16 p0, p0, 0x3e8

    invoke-static {p0}, Lj$/time/ZoneOffset;->q(I)Lj$/time/ZoneOffset;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final e(Lj$/time/LocalDateTime;)Lj$/time/zone/a;
    .locals 1

    invoke-direct {p0, p1}, Lj$/time/zone/ZoneRules;->d(Lj$/time/LocalDateTime;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lj$/time/zone/a;

    if-eqz v0, :cond_0

    check-cast p1, Lj$/time/zone/a;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lj$/time/zone/ZoneRules;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lj$/time/zone/ZoneRules;

    iget-object v1, p1, Lj$/time/zone/ZoneRules;->g:Ljava/util/TimeZone;

    iget-object v3, p0, Lj$/time/zone/ZoneRules;->g:Ljava/util/TimeZone;

    invoke-static {v3, v1}, Lj$/util/A;->y(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lj$/time/zone/ZoneRules;->a:[J

    iget-object v3, p1, Lj$/time/zone/ZoneRules;->a:[J

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lj$/time/zone/ZoneRules;->b:[Lj$/time/ZoneOffset;

    iget-object v3, p1, Lj$/time/zone/ZoneRules;->b:[Lj$/time/ZoneOffset;

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lj$/time/zone/ZoneRules;->c:[J

    iget-object v3, p1, Lj$/time/zone/ZoneRules;->c:[J

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lj$/time/zone/ZoneRules;->e:[Lj$/time/ZoneOffset;

    iget-object v3, p1, Lj$/time/zone/ZoneRules;->e:[Lj$/time/ZoneOffset;

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lj$/time/zone/ZoneRules;->f:[Lj$/time/zone/b;

    iget-object p1, p1, Lj$/time/zone/ZoneRules;->f:[Lj$/time/zone/b;

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public final f(Lj$/time/LocalDateTime;)Ljava/util/List;
    .locals 1

    invoke-direct {p0, p1}, Lj$/time/zone/ZoneRules;->d(Lj$/time/LocalDateTime;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lj$/time/zone/a;

    if-eqz v0, :cond_0

    check-cast p1, Lj$/time/zone/a;

    invoke-virtual {p1}, Lj$/time/zone/a;->m()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    check-cast p1, Lj$/time/ZoneOffset;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final g(Lj$/time/Instant;)Z
    .locals 4

    .line 0
    iget-object v0, p0, Lj$/time/zone/ZoneRules;->g:Ljava/util/TimeZone;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    invoke-static {v0}, Lj$/time/zone/ZoneRules;->j(I)Lj$/time/ZoneOffset;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lj$/time/zone/ZoneRules;->c:[J

    array-length v0, v0

    iget-object v1, p0, Lj$/time/zone/ZoneRules;->b:[Lj$/time/ZoneOffset;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    aget-object v0, v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lj$/time/Instant;->p()J

    move-result-wide v2

    iget-object v0, p0, Lj$/time/zone/ZoneRules;->a:[J

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v0

    if-gez v0, :cond_2

    neg-int v0, v0

    add-int/lit8 v0, v0, -0x2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    aget-object v0, v1, v0

    .line 0
    :goto_0
    invoke-virtual {p0, p1}, Lj$/time/zone/ZoneRules;->getOffset(Lj$/time/Instant;)Lj$/time/ZoneOffset;

    move-result-object p1

    invoke-virtual {v0, p1}, Lj$/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public getOffset(Lj$/time/Instant;)Lj$/time/ZoneOffset;
    .locals 7

    iget-object v0, p0, Lj$/time/zone/ZoneRules;->g:Ljava/util/TimeZone;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lj$/time/Instant;->toEpochMilli()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result p1

    invoke-static {p1}, Lj$/time/zone/ZoneRules;->j(I)Lj$/time/ZoneOffset;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lj$/time/zone/ZoneRules;->c:[J

    array-length v1, v0

    const/4 v2, 0x0

    if-nez v1, :cond_1

    iget-object p1, p0, Lj$/time/zone/ZoneRules;->b:[Lj$/time/ZoneOffset;

    aget-object p1, p1, v2

    return-object p1

    :cond_1
    invoke-virtual {p1}, Lj$/time/Instant;->p()J

    move-result-wide v3

    iget-object p1, p0, Lj$/time/zone/ZoneRules;->f:[Lj$/time/zone/b;

    array-length p1, p1

    iget-object v1, p0, Lj$/time/zone/ZoneRules;->e:[Lj$/time/ZoneOffset;

    if-lez p1, :cond_4

    array-length p1, v0

    add-int/lit8 p1, p1, -0x1

    aget-wide v5, v0, p1

    cmp-long p1, v3, v5

    if-lez p1, :cond_4

    array-length p1, v1

    add-int/lit8 p1, p1, -0x1

    aget-object p1, v1, p1

    invoke-static {v3, v4, p1}, Lj$/time/zone/ZoneRules;->c(JLj$/time/ZoneOffset;)I

    move-result p1

    invoke-direct {p0, p1}, Lj$/time/zone/ZoneRules;->b(I)[Lj$/time/zone/a;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v2, v1, :cond_3

    aget-object v0, p1, v2

    invoke-virtual {v0}, Lj$/time/zone/a;->l()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-gez v1, :cond_2

    invoke-virtual {v0}, Lj$/time/zone/a;->k()Lj$/time/ZoneOffset;

    move-result-object p1

    return-object p1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lj$/time/zone/a;->j()Lj$/time/ZoneOffset;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-static {v0, v3, v4}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result p1

    if-gez p1, :cond_5

    neg-int p1, p1

    add-int/lit8 p1, p1, -0x2

    :cond_5
    add-int/lit8 p1, p1, 0x1

    aget-object p1, v1, p1

    return-object p1
.end method

.method public final h()Z
    .locals 19

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, v0, Lj$/time/zone/ZoneRules;->g:Ljava/util/TimeZone;

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Ljava/util/TimeZone;->useDaylightTime()Z

    move-result v4

    if-nez v4, :cond_a

    invoke-virtual {v3}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-static {}, Lj$/time/Instant;->now()Lj$/time/Instant;

    move-result-object v4

    .line 0
    invoke-virtual {v4}, Lj$/time/Instant;->p()J

    move-result-wide v5

    invoke-virtual {v4}, Lj$/time/Instant;->q()I

    move-result v7

    const-wide/16 v8, 0x1

    if-lez v7, :cond_1

    const-wide v10, 0x7fffffffffffffffL

    cmp-long v7, v5, v10

    if-gez v7, :cond_1

    add-long/2addr v5, v8

    :cond_1
    invoke-virtual {v0, v4}, Lj$/time/zone/ZoneRules;->getOffset(Lj$/time/Instant;)Lj$/time/ZoneOffset;

    move-result-object v4

    invoke-static {v5, v6, v4}, Lj$/time/zone/ZoneRules;->c(JLj$/time/ZoneOffset;)I

    move-result v4

    invoke-direct {v0, v4}, Lj$/time/zone/ZoneRules;->b(I)[Lj$/time/zone/a;

    move-result-object v7

    array-length v10, v7

    sub-int/2addr v10, v2

    :goto_0
    if-ltz v10, :cond_3

    aget-object v11, v7, v10

    invoke-virtual {v11}, Lj$/time/zone/a;->l()J

    move-result-wide v11

    cmp-long v13, v5, v11

    if-lez v13, :cond_2

    aget-object v3, v7, v10

    goto/16 :goto_4

    :cond_2
    add-int/lit8 v10, v10, -0x1

    goto :goto_0

    :cond_3
    const/4 v7, 0x0

    const/16 v10, 0x708

    if-le v4, v10, :cond_9

    sub-int/2addr v4, v2

    invoke-direct {v0, v4}, Lj$/time/zone/ZoneRules;->b(I)[Lj$/time/zone/a;

    move-result-object v4

    array-length v11, v4

    sub-int/2addr v11, v2

    :goto_1
    if-ltz v11, :cond_5

    aget-object v12, v4, v11

    invoke-virtual {v12}, Lj$/time/zone/a;->l()J

    move-result-wide v12

    cmp-long v14, v5, v12

    if-lez v14, :cond_4

    aget-object v3, v4, v11

    goto/16 :goto_4

    :cond_4
    add-int/lit8 v11, v11, -0x1

    goto :goto_1

    :cond_5
    const-wide/32 v11, 0x1da9c00

    sub-long v11, v5, v11

    invoke-static {}, Lj$/time/b;->b()Lj$/time/b;

    move-result-object v4

    invoke-virtual {v4}, Lj$/time/b;->a()J

    move-result-wide v13

    const-wide/16 v15, 0x3e8

    div-long/2addr v13, v15

    const-wide/32 v17, 0x1e7cb00

    add-long v13, v13, v17

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    sub-long v8, v5, v8

    mul-long v8, v8, v15

    invoke-virtual {v3, v8, v9}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v4

    invoke-static {v10, v2, v2}, Lj$/time/LocalDate;->of(III)Lj$/time/LocalDate;

    move-result-object v8

    invoke-virtual {v8}, Lj$/time/LocalDate;->y()J

    move-result-wide v8

    const-wide/32 v13, 0x15180

    mul-long v8, v8, v13

    :goto_2
    cmp-long v10, v8, v11

    if-gtz v10, :cond_9

    mul-long v13, v11, v15

    invoke-virtual {v3, v13, v14}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v10

    if-eq v4, v10, :cond_8

    invoke-static {v10}, Lj$/time/zone/ZoneRules;->j(I)Lj$/time/ZoneOffset;

    move-result-object v3

    invoke-static {v11, v12, v3}, Lj$/time/zone/ZoneRules;->c(JLj$/time/ZoneOffset;)I

    move-result v3

    add-int/lit8 v4, v3, 0x1

    invoke-direct {v0, v4}, Lj$/time/zone/ZoneRules;->b(I)[Lj$/time/zone/a;

    move-result-object v4

    array-length v7, v4

    sub-int/2addr v7, v2

    :goto_3
    if-ltz v7, :cond_7

    aget-object v8, v4, v7

    invoke-virtual {v8}, Lj$/time/zone/a;->l()J

    move-result-wide v8

    cmp-long v10, v5, v8

    if-lez v10, :cond_6

    aget-object v3, v4, v7

    goto :goto_4

    :cond_6
    add-int/lit8 v7, v7, -0x1

    goto :goto_3

    :cond_7
    invoke-direct {v0, v3}, Lj$/time/zone/ZoneRules;->b(I)[Lj$/time/zone/a;

    move-result-object v3

    array-length v4, v3

    sub-int/2addr v4, v2

    aget-object v3, v3, v4

    goto :goto_4

    :cond_8
    const-wide/32 v13, 0x76a700

    sub-long/2addr v11, v13

    goto :goto_2

    :cond_9
    move-object v3, v7

    :goto_4
    if-nez v3, :cond_a

    const/4 v1, 0x1

    :cond_a
    :goto_5
    return v1

    .line 0
    :cond_b
    iget-object v3, v0, Lj$/time/zone/ZoneRules;->c:[J

    array-length v3, v3

    if-nez v3, :cond_c

    const/4 v1, 0x1

    :cond_c
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 0
    iget-object v0, p0, Lj$/time/zone/ZoneRules;->g:Ljava/util/TimeZone;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 0
    :goto_0
    iget-object v1, p0, Lj$/time/zone/ZoneRules;->a:[J

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([J)I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lj$/time/zone/ZoneRules;->b:[Lj$/time/ZoneOffset;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lj$/time/zone/ZoneRules;->c:[J

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([J)I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lj$/time/zone/ZoneRules;->e:[Lj$/time/ZoneOffset;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lj$/time/zone/ZoneRules;->f:[Lj$/time/zone/b;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    const-string v0, "]"

    iget-object v1, p0, Lj$/time/zone/ZoneRules;->g:Ljava/util/TimeZone;

    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ZoneRules[timeZone="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ZoneRules[currentStandardOffset="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lj$/time/zone/ZoneRules;->b:[Lj$/time/ZoneOffset;

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
