.class public Lorg/telegram/messenger/time/FastDateParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/time/DateParser;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/time/FastDateParser$Strategy;,
        Lorg/telegram/messenger/time/FastDateParser$CopyQuotedStrategy;,
        Lorg/telegram/messenger/time/FastDateParser$TimeZoneStrategy;,
        Lorg/telegram/messenger/time/FastDateParser$TextStrategy;,
        Lorg/telegram/messenger/time/FastDateParser$NumberStrategy;
    }
.end annotation


# static fields
.field private static final ABBREVIATED_YEAR_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

.field private static final DAY_OF_MONTH_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

.field private static final DAY_OF_WEEK_IN_MONTH_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

.field private static final DAY_OF_YEAR_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

.field private static final HOUR_OF_DAY_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

.field private static final HOUR_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

.field static final JAPANESE_IMPERIAL:Ljava/util/Locale;

.field private static final LITERAL_YEAR_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

.field private static final MILLISECOND_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

.field private static final MINUTE_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

.field private static final MODULO_HOUR_OF_DAY_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

.field private static final MODULO_HOUR_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

.field private static final NUMBER_MONTH_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

.field private static final SECOND_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

.field private static final WEEK_OF_MONTH_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

.field private static final WEEK_OF_YEAR_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

.field private static final caches:[Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/util/Locale;",
            "Lorg/telegram/messenger/time/FastDateParser$Strategy;",
            ">;"
        }
    .end annotation
.end field

.field private static final formatPattern:Ljava/util/regex/Pattern;

.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private final century:I

.field private transient currentFormatField:Ljava/lang/String;

.field private final locale:Ljava/util/Locale;

.field private transient nextStrategy:Lorg/telegram/messenger/time/FastDateParser$Strategy;

.field private transient parsePattern:Ljava/util/regex/Pattern;

.field private final pattern:Ljava/lang/String;

.field private final startYear:I

.field private transient strategies:[Lorg/telegram/messenger/time/FastDateParser$Strategy;

.field private final timeZone:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/Locale;

    const-string v1, "ja"

    const-string v2, "JP"

    invoke-direct {v0, v1, v2, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/telegram/messenger/time/FastDateParser;->JAPANESE_IMPERIAL:Ljava/util/Locale;

    const-string v0, "D+|E+|F+|G+|H+|K+|M+|L+|S+|W+|Z+|a+|d+|h+|k+|m+|s+|w+|y+|z+|\'\'|\'[^\']++(\'\'[^\']*+)*+\'|[^\'A-Za-z]++"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/time/FastDateParser;->formatPattern:Ljava/util/regex/Pattern;

    const/16 v0, 0x11

    new-array v0, v0, [Ljava/util/concurrent/ConcurrentMap;

    sput-object v0, Lorg/telegram/messenger/time/FastDateParser;->caches:[Ljava/util/concurrent/ConcurrentMap;

    new-instance v0, Lorg/telegram/messenger/time/FastDateParser$1;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/telegram/messenger/time/FastDateParser$1;-><init>(I)V

    sput-object v0, Lorg/telegram/messenger/time/FastDateParser;->ABBREVIATED_YEAR_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

    new-instance v0, Lorg/telegram/messenger/time/FastDateParser$2;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Lorg/telegram/messenger/time/FastDateParser$2;-><init>(I)V

    sput-object v0, Lorg/telegram/messenger/time/FastDateParser;->NUMBER_MONTH_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

    new-instance v0, Lorg/telegram/messenger/time/FastDateParser$NumberStrategy;

    invoke-direct {v0, v1}, Lorg/telegram/messenger/time/FastDateParser$NumberStrategy;-><init>(I)V

    sput-object v0, Lorg/telegram/messenger/time/FastDateParser;->LITERAL_YEAR_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

    new-instance v0, Lorg/telegram/messenger/time/FastDateParser$NumberStrategy;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/telegram/messenger/time/FastDateParser$NumberStrategy;-><init>(I)V

    sput-object v0, Lorg/telegram/messenger/time/FastDateParser;->WEEK_OF_YEAR_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

    new-instance v0, Lorg/telegram/messenger/time/FastDateParser$NumberStrategy;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/telegram/messenger/time/FastDateParser$NumberStrategy;-><init>(I)V

    sput-object v0, Lorg/telegram/messenger/time/FastDateParser;->WEEK_OF_MONTH_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

    new-instance v0, Lorg/telegram/messenger/time/FastDateParser$NumberStrategy;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lorg/telegram/messenger/time/FastDateParser$NumberStrategy;-><init>(I)V

    sput-object v0, Lorg/telegram/messenger/time/FastDateParser;->DAY_OF_YEAR_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

    new-instance v0, Lorg/telegram/messenger/time/FastDateParser$NumberStrategy;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lorg/telegram/messenger/time/FastDateParser$NumberStrategy;-><init>(I)V

    sput-object v0, Lorg/telegram/messenger/time/FastDateParser;->DAY_OF_MONTH_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

    new-instance v0, Lorg/telegram/messenger/time/FastDateParser$NumberStrategy;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lorg/telegram/messenger/time/FastDateParser$NumberStrategy;-><init>(I)V

    sput-object v0, Lorg/telegram/messenger/time/FastDateParser;->DAY_OF_WEEK_IN_MONTH_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

    new-instance v0, Lorg/telegram/messenger/time/FastDateParser$NumberStrategy;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lorg/telegram/messenger/time/FastDateParser$NumberStrategy;-><init>(I)V

    sput-object v0, Lorg/telegram/messenger/time/FastDateParser;->HOUR_OF_DAY_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

    new-instance v0, Lorg/telegram/messenger/time/FastDateParser$3;

    invoke-direct {v0, v1}, Lorg/telegram/messenger/time/FastDateParser$3;-><init>(I)V

    sput-object v0, Lorg/telegram/messenger/time/FastDateParser;->MODULO_HOUR_OF_DAY_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

    new-instance v0, Lorg/telegram/messenger/time/FastDateParser$4;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/telegram/messenger/time/FastDateParser$4;-><init>(I)V

    sput-object v0, Lorg/telegram/messenger/time/FastDateParser;->MODULO_HOUR_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

    new-instance v0, Lorg/telegram/messenger/time/FastDateParser$NumberStrategy;

    invoke-direct {v0, v1}, Lorg/telegram/messenger/time/FastDateParser$NumberStrategy;-><init>(I)V

    sput-object v0, Lorg/telegram/messenger/time/FastDateParser;->HOUR_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

    new-instance v0, Lorg/telegram/messenger/time/FastDateParser$NumberStrategy;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lorg/telegram/messenger/time/FastDateParser$NumberStrategy;-><init>(I)V

    sput-object v0, Lorg/telegram/messenger/time/FastDateParser;->MINUTE_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

    new-instance v0, Lorg/telegram/messenger/time/FastDateParser$NumberStrategy;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lorg/telegram/messenger/time/FastDateParser$NumberStrategy;-><init>(I)V

    sput-object v0, Lorg/telegram/messenger/time/FastDateParser;->SECOND_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

    new-instance v0, Lorg/telegram/messenger/time/FastDateParser$NumberStrategy;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Lorg/telegram/messenger/time/FastDateParser$NumberStrategy;-><init>(I)V

    sput-object v0, Lorg/telegram/messenger/time/FastDateParser;->MILLISECOND_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/telegram/messenger/time/FastDateParser;-><init>(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;Ljava/util/Date;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;Ljava/util/Date;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/time/FastDateParser;->pattern:Ljava/lang/String;

    iput-object p2, p0, Lorg/telegram/messenger/time/FastDateParser;->timeZone:Ljava/util/TimeZone;

    iput-object p3, p0, Lorg/telegram/messenger/time/FastDateParser;->locale:Ljava/util/Locale;

    invoke-static {p2, p3}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    const/4 p2, 0x1

    if-eqz p4, :cond_0

    invoke-virtual {p1, p4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    goto :goto_0

    :cond_0
    sget-object p4, Lorg/telegram/messenger/time/FastDateParser;->JAPANESE_IMPERIAL:Ljava/util/Locale;

    invoke-virtual {p3, p4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    new-instance p3, Ljava/util/Date;

    invoke-direct {p3}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, p3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    add-int/lit8 p2, p2, -0x50

    :goto_0
    div-int/lit8 p3, p2, 0x64

    mul-int/lit8 p3, p3, 0x64

    iput p3, p0, Lorg/telegram/messenger/time/FastDateParser;->century:I

    sub-int/2addr p2, p3

    iput p2, p0, Lorg/telegram/messenger/time/FastDateParser;->startYear:I

    invoke-direct {p0, p1}, Lorg/telegram/messenger/time/FastDateParser;->init(Ljava/util/Calendar;)V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/StringBuilder;Ljava/lang/String;Z)Ljava/lang/StringBuilder;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/time/FastDateParser;->escapeRegex(Ljava/lang/StringBuilder;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(ILjava/util/Calendar;Ljava/util/Locale;)Ljava/util/Map;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/time/FastDateParser;->getDisplayNames(ILjava/util/Calendar;Ljava/util/Locale;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/messenger/time/FastDateParser;I)I
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/time/FastDateParser;->adjustYear(I)I

    move-result p0

    return p0
.end method

.method private adjustYear(I)I
    .locals 2

    iget v0, p0, Lorg/telegram/messenger/time/FastDateParser;->century:I

    add-int/2addr v0, p1

    iget v1, p0, Lorg/telegram/messenger/time/FastDateParser;->startYear:I

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x64

    :goto_0
    return v0
.end method

.method private static escapeRegex(Ljava/lang/StringBuilder;Ljava/lang/String;Z)Ljava/lang/StringBuilder;
    .locals 3

    const-string v0, "\\Q"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_5

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x27

    if-eq v1, v2, :cond_2

    const/16 v2, 0x5c

    if-eq v1, v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v0, v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x45

    if-ne v1, v2, :cond_4

    const-string v1, "E\\\\E\\"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x51

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_4

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_3

    return-object p0

    :cond_3
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :cond_4
    :goto_1
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    const-string p1, "\\E"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method private static getCache(I)Ljava/util/concurrent/ConcurrentMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/util/Locale;",
            "Lorg/telegram/messenger/time/FastDateParser$Strategy;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/telegram/messenger/time/FastDateParser;->caches:[Ljava/util/concurrent/ConcurrentMap;

    monitor-enter v0

    :try_start_0
    aget-object v1, v0, p0

    if-nez v1, :cond_0

    new-instance v1, Lj$/util/concurrent/ConcurrentHashMap;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lj$/util/concurrent/ConcurrentHashMap;-><init>(I)V

    aput-object v1, v0, p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    aget-object p0, v0, p0

    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static getDisplayNameArray(IZLjava/util/Locale;)[Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/text/DateFormatSymbols;

    invoke-direct {v0, p2}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    if-eqz p0, :cond_5

    const/4 p2, 0x2

    if-eq p0, p2, :cond_3

    const/4 p2, 0x7

    if-eq p0, p2, :cond_1

    const/16 p1, 0x9

    if-eq p0, p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getMonths()[Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0

    :cond_5
    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getEras()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getDisplayNames(ILjava/util/Calendar;Ljava/util/Locale;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Calendar;",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 0
    invoke-static {p0, p2}, Lorg/telegram/messenger/time/FastDateParser;->getDisplayNames(ILjava/util/Locale;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private static getDisplayNames(ILjava/util/Locale;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    invoke-static {p0, v1, p1}, Lorg/telegram/messenger/time/FastDateParser;->getDisplayNameArray(IZLjava/util/Locale;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/time/FastDateParser;->insertValuesInMap(Ljava/util/Map;[Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {p0, v1, p1}, Lorg/telegram/messenger/time/FastDateParser;->getDisplayNameArray(IZLjava/util/Locale;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/telegram/messenger/time/FastDateParser;->insertValuesInMap(Ljava/util/Map;[Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method private getLocaleSpecificStrategy(ILjava/util/Calendar;)Lorg/telegram/messenger/time/FastDateParser$Strategy;
    .locals 3

    invoke-static {p1}, Lorg/telegram/messenger/time/FastDateParser;->getCache(I)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/time/FastDateParser;->locale:Ljava/util/Locale;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/time/FastDateParser$Strategy;

    if-nez v1, :cond_1

    const/16 v1, 0xf

    if-ne p1, v1, :cond_0

    new-instance p1, Lorg/telegram/messenger/time/FastDateParser$TimeZoneStrategy;

    iget-object p2, p0, Lorg/telegram/messenger/time/FastDateParser;->locale:Ljava/util/Locale;

    invoke-direct {p1, p2}, Lorg/telegram/messenger/time/FastDateParser$TimeZoneStrategy;-><init>(Ljava/util/Locale;)V

    move-object v1, p1

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/telegram/messenger/time/FastDateParser$TextStrategy;

    iget-object v2, p0, Lorg/telegram/messenger/time/FastDateParser;->locale:Ljava/util/Locale;

    invoke-direct {v1, p1, p2, v2}, Lorg/telegram/messenger/time/FastDateParser$TextStrategy;-><init>(ILjava/util/Calendar;Ljava/util/Locale;)V

    :goto_0
    iget-object p1, p0, Lorg/telegram/messenger/time/FastDateParser;->locale:Ljava/util/Locale;

    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/time/FastDateParser$Strategy;

    if-eqz p1, :cond_1

    return-object p1

    :cond_1
    return-object v1
.end method

.method private getStrategy(Ljava/lang/String;Ljava/util/Calendar;)Lorg/telegram/messenger/time/FastDateParser$Strategy;
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x79

    const/4 v3, 0x2

    if-eq v1, v2, :cond_3

    const/16 v2, 0x7a

    if-eq v1, v2, :cond_2

    sparse-switch v1, :sswitch_data_0

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    goto :goto_2

    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x3

    if-lt p1, v0, :cond_0

    invoke-direct {p0, v3, p2}, Lorg/telegram/messenger/time/FastDateParser;->getLocaleSpecificStrategy(ILjava/util/Calendar;)Lorg/telegram/messenger/time/FastDateParser$Strategy;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/telegram/messenger/time/FastDateParser;->NUMBER_MONTH_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

    :goto_0
    return-object p1

    :pswitch_1
    sget-object p1, Lorg/telegram/messenger/time/FastDateParser;->HOUR_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

    return-object p1

    :pswitch_2
    sget-object p1, Lorg/telegram/messenger/time/FastDateParser;->MODULO_HOUR_OF_DAY_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

    return-object p1

    :pswitch_3
    invoke-direct {p0, v0, p2}, Lorg/telegram/messenger/time/FastDateParser;->getLocaleSpecificStrategy(ILjava/util/Calendar;)Lorg/telegram/messenger/time/FastDateParser$Strategy;

    move-result-object p1

    return-object p1

    :pswitch_4
    sget-object p1, Lorg/telegram/messenger/time/FastDateParser;->DAY_OF_WEEK_IN_MONTH_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

    return-object p1

    :pswitch_5
    const/4 p1, 0x7

    :goto_1
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/time/FastDateParser;->getLocaleSpecificStrategy(ILjava/util/Calendar;)Lorg/telegram/messenger/time/FastDateParser$Strategy;

    move-result-object p1

    return-object p1

    :pswitch_6
    sget-object p1, Lorg/telegram/messenger/time/FastDateParser;->DAY_OF_YEAR_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

    return-object p1

    :sswitch_0
    sget-object p1, Lorg/telegram/messenger/time/FastDateParser;->WEEK_OF_YEAR_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

    return-object p1

    :sswitch_1
    sget-object p1, Lorg/telegram/messenger/time/FastDateParser;->SECOND_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

    return-object p1

    :sswitch_2
    sget-object p1, Lorg/telegram/messenger/time/FastDateParser;->MINUTE_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

    return-object p1

    :sswitch_3
    sget-object p1, Lorg/telegram/messenger/time/FastDateParser;->HOUR_OF_DAY_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

    return-object p1

    :sswitch_4
    sget-object p1, Lorg/telegram/messenger/time/FastDateParser;->MODULO_HOUR_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

    return-object p1

    :sswitch_5
    sget-object p1, Lorg/telegram/messenger/time/FastDateParser;->DAY_OF_MONTH_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

    return-object p1

    :sswitch_6
    const/16 p1, 0x9

    goto :goto_1

    :sswitch_7
    sget-object p1, Lorg/telegram/messenger/time/FastDateParser;->WEEK_OF_MONTH_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

    return-object p1

    :sswitch_8
    sget-object p1, Lorg/telegram/messenger/time/FastDateParser;->MILLISECOND_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

    return-object p1

    :sswitch_9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-le p2, v3, :cond_1

    new-instance p2, Lorg/telegram/messenger/time/FastDateParser$CopyQuotedStrategy;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/telegram/messenger/time/FastDateParser$CopyQuotedStrategy;-><init>(Ljava/lang/String;)V

    return-object p2

    :cond_1
    :goto_2
    new-instance p2, Lorg/telegram/messenger/time/FastDateParser$CopyQuotedStrategy;

    invoke-direct {p2, p1}, Lorg/telegram/messenger/time/FastDateParser$CopyQuotedStrategy;-><init>(Ljava/lang/String;)V

    return-object p2

    :cond_2
    :sswitch_a
    const/16 p1, 0xf

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-le p1, v3, :cond_4

    sget-object p1, Lorg/telegram/messenger/time/FastDateParser;->LITERAL_YEAR_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

    goto :goto_3

    :cond_4
    sget-object p1, Lorg/telegram/messenger/time/FastDateParser;->ABBREVIATED_YEAR_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

    :goto_3
    return-object p1

    :sswitch_data_0
    .sparse-switch
        0x27 -> :sswitch_9
        0x53 -> :sswitch_8
        0x57 -> :sswitch_7
        0x5a -> :sswitch_a
        0x61 -> :sswitch_6
        0x64 -> :sswitch_5
        0x68 -> :sswitch_4
        0x6b -> :sswitch_3
        0x6d -> :sswitch_2
        0x73 -> :sswitch_1
        0x77 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x44
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4b
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private init(Ljava/util/Calendar;)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Lorg/telegram/messenger/time/FastDateParser;->formatPattern:Ljava/util/regex/Pattern;

    iget-object v3, p0, Lorg/telegram/messenger/time/FastDateParser;->pattern:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/messenger/time/FastDateParser;->currentFormatField:Ljava/lang/String;

    invoke-direct {p0, v3, p1}, Lorg/telegram/messenger/time/FastDateParser;->getStrategy(Ljava/lang/String;Ljava/util/Calendar;)Lorg/telegram/messenger/time/FastDateParser$Strategy;

    move-result-object v3

    :goto_0
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v4

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->regionEnd()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v4

    if-nez v4, :cond_2

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/messenger/time/FastDateParser;->nextStrategy:Lorg/telegram/messenger/time/FastDateParser$Strategy;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->regionStart()I

    move-result v4

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->regionEnd()I

    move-result v5

    if-ne v4, v5, :cond_1

    invoke-virtual {v3, p0, v0}, Lorg/telegram/messenger/time/FastDateParser$Strategy;->addRegex(Lorg/telegram/messenger/time/FastDateParser;Ljava/lang/StringBuilder;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iput-object p1, p0, Lorg/telegram/messenger/time/FastDateParser;->currentFormatField:Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lorg/telegram/messenger/time/FastDateParser$Strategy;

    invoke-interface {v1, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/telegram/messenger/time/FastDateParser$Strategy;

    iput-object p1, p0, Lorg/telegram/messenger/time/FastDateParser;->strategies:[Lorg/telegram/messenger/time/FastDateParser$Strategy;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/messenger/time/FastDateParser;->parsePattern:Ljava/util/regex/Pattern;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to parse \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/messenger/time/FastDateParser;->pattern:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" ; gave up at index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->regionStart()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, p1}, Lorg/telegram/messenger/time/FastDateParser;->getStrategy(Ljava/lang/String;Ljava/util/Calendar;)Lorg/telegram/messenger/time/FastDateParser$Strategy;

    move-result-object v5

    iput-object v5, p0, Lorg/telegram/messenger/time/FastDateParser;->nextStrategy:Lorg/telegram/messenger/time/FastDateParser$Strategy;

    invoke-virtual {v3, p0, v0}, Lorg/telegram/messenger/time/FastDateParser$Strategy;->addRegex(Lorg/telegram/messenger/time/FastDateParser;Ljava/lang/StringBuilder;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    iput-object v4, p0, Lorg/telegram/messenger/time/FastDateParser;->currentFormatField:Ljava/lang/String;

    iget-object v3, p0, Lorg/telegram/messenger/time/FastDateParser;->nextStrategy:Lorg/telegram/messenger/time/FastDateParser$Strategy;

    goto :goto_0

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal pattern character \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/messenger/time/FastDateParser;->pattern:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->regionStart()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private static insertValuesInMap(Ljava/util/Map;[Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    aget-object v1, p1, v0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    aget-object v1, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    iget-object p1, p0, Lorg/telegram/messenger/time/FastDateParser;->timeZone:Ljava/util/TimeZone;

    iget-object v0, p0, Lorg/telegram/messenger/time/FastDateParser;->locale:Ljava/util/Locale;

    invoke-static {p1, v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/telegram/messenger/time/FastDateParser;->init(Ljava/util/Calendar;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lorg/telegram/messenger/time/FastDateParser;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/telegram/messenger/time/FastDateParser;

    iget-object v0, p0, Lorg/telegram/messenger/time/FastDateParser;->pattern:Ljava/lang/String;

    iget-object v2, p1, Lorg/telegram/messenger/time/FastDateParser;->pattern:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/time/FastDateParser;->timeZone:Ljava/util/TimeZone;

    iget-object v2, p1, Lorg/telegram/messenger/time/FastDateParser;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/time/FastDateParser;->locale:Ljava/util/Locale;

    iget-object p1, p1, Lorg/telegram/messenger/time/FastDateParser;->locale:Ljava/util/Locale;

    invoke-virtual {v0, p1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method getFieldWidth()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/time/FastDateParser;->currentFormatField:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/time/FastDateParser;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method getParsePattern()Ljava/util/regex/Pattern;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/time/FastDateParser;->parsePattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method public getPattern()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/time/FastDateParser;->pattern:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/time/FastDateParser;->timeZone:Ljava/util/TimeZone;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/time/FastDateParser;->pattern:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/messenger/time/FastDateParser;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/messenger/time/FastDateParser;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->hashCode()I

    move-result v2

    mul-int/lit8 v2, v2, 0xd

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0xd

    add-int/2addr v0, v1

    return v0
.end method

.method isNextNumber()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/time/FastDateParser;->nextStrategy:Lorg/telegram/messenger/time/FastDateParser$Strategy;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/messenger/time/FastDateParser$Strategy;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public parse(Ljava/lang/String;)Ljava/util/Date;
    .locals 5

    .line 0
    new-instance v0, Ljava/text/ParsePosition;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/text/ParsePosition;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/time/FastDateParser;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/time/FastDateParser;->locale:Ljava/util/Locale;

    sget-object v2, Lorg/telegram/messenger/time/FastDateParser;->JAPANESE_IMPERIAL:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "\" does not match "

    if-eqz v0, :cond_0

    new-instance v0, Ljava/text/ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(The "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/telegram/messenger/time/FastDateParser;->locale:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " locale does not support dates before 1868 AD)\nUnparseable date: \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/telegram/messenger/time/FastDateParser;->parsePattern:Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_0
    new-instance v0, Ljava/text/ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unparseable date: \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/telegram/messenger/time/FastDateParser;->parsePattern:Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_1
    return-object v0
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .locals 5

    .line 0
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/messenger/time/FastDateParser;->parsePattern:Ljava/util/regex/Pattern;

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/time/FastDateParser;->timeZone:Ljava/util/TimeZone;

    iget-object v2, p0, Lorg/telegram/messenger/time/FastDateParser;->locale:Ljava/util/Locale;

    invoke-static {v1, v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->clear()V

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lorg/telegram/messenger/time/FastDateParser;->strategies:[Lorg/telegram/messenger/time/FastDateParser$Strategy;

    array-length v4, v3

    if-ge v2, v4, :cond_1

    add-int/lit8 v4, v2, 0x1

    aget-object v2, v3, v2

    invoke-virtual {p1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p0, v1, v3}, Lorg/telegram/messenger/time/FastDateParser$Strategy;->setCalendar(Lorg/telegram/messenger/time/FastDateParser;Ljava/util/Calendar;Ljava/lang/String;)V

    move v2, v4

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->end()I

    move-result p1

    add-int/2addr v0, p1

    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method public parseObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/time/FastDateParser;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/time/FastDateParser;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FastDateParser["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/messenger/time/FastDateParser;->pattern:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/telegram/messenger/time/FastDateParser;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/messenger/time/FastDateParser;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
