.class public final Lj$/util/stream/Collectors;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Ljava/util/Set;

.field static final b:Ljava/util/Set;

.field static final c:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Lj$/util/stream/h;->CONCURRENT:Lj$/util/stream/h;

    sget-object v1, Lj$/util/stream/h;->UNORDERED:Lj$/util/stream/h;

    sget-object v2, Lj$/util/stream/h;->IDENTITY_FINISH:Lj$/util/stream/h;

    invoke-static {v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    invoke-static {v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lj$/util/stream/Collectors;->a:Ljava/util/Set;

    invoke-static {v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lj$/util/stream/Collectors;->b:Ljava/util/Set;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lj$/util/stream/Collectors;->c:Ljava/util/Set;

    return-void
.end method

.method static a([DD)V
    .locals 6

    const/4 v0, 0x1

    .line 0
    aget-wide v1, p0, v0

    sub-double/2addr p1, v1

    const/4 v1, 0x0

    aget-wide v2, p0, v1

    add-double v4, v2, p1

    sub-double v2, v4, v2

    sub-double/2addr v2, p1

    aput-wide v2, p0, v0

    aput-wide v4, p0, v1

    return-void
.end method

.method public static summingLong(Lj$/util/function/ToLongFunction;)Lj$/util/stream/Collector;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/function/ToLongFunction<",
            "-TT;>;)",
            "Lj$/util/stream/Collector<",
            "TT;*",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    new-instance v6, Lj$/util/stream/m;

    new-instance v1, Lj$/util/stream/l;

    const/4 v0, 0x1

    invoke-direct {v1, v0}, Lj$/util/stream/l;-><init>(I)V

    new-instance v2, Lj$/util/stream/a;

    invoke-direct {v2, p0, v0}, Lj$/util/stream/a;-><init>(Ljava/lang/Object;I)V

    new-instance v3, Lj$/util/stream/k;

    const/4 p0, 0x3

    invoke-direct {v3, p0}, Lj$/util/stream/k;-><init>(I)V

    new-instance v4, Lj$/util/stream/l;

    const/4 p0, 0x2

    invoke-direct {v4, p0}, Lj$/util/stream/l;-><init>(I)V

    sget-object v5, Lj$/util/stream/Collectors;->c:Ljava/util/Set;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/m;-><init>(Lj$/util/function/Supplier;Lj$/util/function/BiConsumer;Lj$/util/function/f;Lj$/util/function/Function;Ljava/util/Set;)V

    return-object v6
.end method

.method public static toCollection(Lj$/util/function/Supplier;)Lj$/util/stream/Collector;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "C::",
            "Ljava/util/Collection<",
            "TT;>;>(",
            "Lj$/util/function/Supplier<",
            "TC;>;)",
            "Lj$/util/stream/Collector<",
            "TT;*TC;>;"
        }
    .end annotation

    new-instance v0, Lj$/util/stream/m;

    new-instance v1, Lj$/util/stream/l;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Lj$/util/stream/l;-><init>(I)V

    new-instance v2, Lj$/util/stream/k;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lj$/util/stream/k;-><init>(I)V

    sget-object v3, Lj$/util/stream/Collectors;->a:Ljava/util/Set;

    invoke-direct {v0, p0, v1, v2, v3}, Lj$/util/stream/m;-><init>(Lj$/util/function/Supplier;Lj$/util/function/BiConsumer;Lj$/util/function/f;Ljava/util/Set;)V

    return-object v0
.end method

.method public static toList()Lj$/util/stream/Collector;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lj$/util/stream/Collector<",
            "TT;*",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    new-instance v0, Lj$/util/stream/m;

    new-instance v1, Lj$/util/stream/l;

    const/16 v2, 0x13

    invoke-direct {v1, v2}, Lj$/util/stream/l;-><init>(I)V

    new-instance v2, Lj$/util/stream/l;

    const/16 v3, 0x14

    invoke-direct {v2, v3}, Lj$/util/stream/l;-><init>(I)V

    new-instance v3, Lj$/util/stream/k;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lj$/util/stream/k;-><init>(I)V

    sget-object v4, Lj$/util/stream/Collectors;->a:Ljava/util/Set;

    invoke-direct {v0, v1, v2, v3, v4}, Lj$/util/stream/m;-><init>(Lj$/util/function/Supplier;Lj$/util/function/BiConsumer;Lj$/util/function/f;Ljava/util/Set;)V

    return-object v0
.end method

.method public static toSet()Lj$/util/stream/Collector;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lj$/util/stream/Collector<",
            "TT;*",
            "Ljava/util/Set<",
            "TT;>;>;"
        }
    .end annotation

    new-instance v0, Lj$/util/stream/m;

    new-instance v1, Lj$/util/stream/l;

    const/16 v2, 0x15

    invoke-direct {v1, v2}, Lj$/util/stream/l;-><init>(I)V

    new-instance v2, Lj$/util/stream/l;

    const/16 v3, 0x16

    invoke-direct {v2, v3}, Lj$/util/stream/l;-><init>(I)V

    new-instance v3, Lj$/util/stream/k;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Lj$/util/stream/k;-><init>(I)V

    sget-object v4, Lj$/util/stream/Collectors;->b:Ljava/util/Set;

    invoke-direct {v0, v1, v2, v3, v4}, Lj$/util/stream/m;-><init>(Lj$/util/function/Supplier;Lj$/util/function/BiConsumer;Lj$/util/function/f;Ljava/util/Set;)V

    return-object v0
.end method
