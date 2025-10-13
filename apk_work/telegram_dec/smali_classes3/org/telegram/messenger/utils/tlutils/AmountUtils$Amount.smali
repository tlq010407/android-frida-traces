.class public Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final currency:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

.field private final nanos:J


# direct methods
.method private constructor <init>(Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->currency:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

    iput-wide p2, p0, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->nanos:J

    return-void
.end method

.method public static equals(Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;)Z
    .locals 5

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->currency:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

    iget-object v3, p1, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->currency:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->nanos:J

    iget-wide p0, p1, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->nanos:J

    cmp-long v4, v2, p0

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public static equals(Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->of(Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;)Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    move-result-object p0

    invoke-static {p1}, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->of(Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;)Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->equals(Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;)Z

    move-result p0

    return p0
.end method

.method public static fromDecimal(JLorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;)Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;
    .locals 3

    .line 0
    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    invoke-static {p2}, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->getDecimals(Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;)J

    move-result-wide v1

    mul-long p0, p0, v1

    invoke-direct {v0, p2, p0, p1}, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;-><init>(Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;J)V

    return-object v0
.end method

.method public static fromDecimal(Ljava/lang/String;Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;)Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;
    .locals 4

    .line 0
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->getDecimals(Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p0

    const-wide v1, 0x7fffffffffffffffL

    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v1

    if-lez v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2, p1}, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->fromNano(JLorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;)Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method public static fromNano(JLorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;)Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;
    .locals 1

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    invoke-direct {v0, p2, p0, p1}, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;-><init>(Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;J)V

    return-object v0
.end method

.method private static getDecimals(Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;)J
    .locals 2

    const-wide/32 v0, 0x3b9aca00

    return-wide v0
.end method

.method public static of(Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;)Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;
    .locals 5

    instance-of v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_starsAmount;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->amount:J

    sget-object v2, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;->STARS:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

    invoke-static {v2}, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->getDecimals(Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;)J

    move-result-wide v3

    mul-long v0, v0, v3

    iget p0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->nanos:I

    int-to-long v3, p0

    add-long/2addr v0, v3

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->fromNano(JLorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;)Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTonAmount;

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->amount:J

    sget-object p0, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;->TON:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

    invoke-static {v0, v1, p0}, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->fromNano(JLorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;)Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static ofSafe(Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;)Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;
    .locals 2

    invoke-static {p0}, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->of(Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;)Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;->STARS:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p0}, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->fromNano(JLorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;)Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public asDecimal()J
    .locals 4

    iget-wide v0, p0, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->nanos:J

    iget-object v2, p0, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->currency:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

    invoke-static {v2}, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->getDecimals(Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;)J

    move-result-wide v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public asDecimalString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->asNano()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(J)V

    iget-object v1, p0, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->currency:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

    invoke-static {v1}, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->getDecimals(Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v1

    sget-object v2, Ljava/math/MathContext;->UNLIMITED:Ljava/math/MathContext;

    invoke-virtual {v0, v1, v2}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public asDouble()D
    .locals 4

    iget-wide v0, p0, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->nanos:J

    long-to-double v0, v0

    iget-object v2, p0, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->currency:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

    invoke-static {v2}, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->getDecimals(Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;)J

    move-result-wide v2

    long-to-double v2, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public asNano()J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->nanos:J

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 0
    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    invoke-static {p0, p1}, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->equals(Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public formatAsDecimalSpaced()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->isRound()Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    sget-object v0, Lorg/telegram/messenger/utils/tlutils/AmountUtils$1;->$SwitchMap$org$telegram$messenger$utils$tlutils$AmountUtils$Currency:[I

    iget-object v1, p0, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->currency:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->asDecimal()J

    move-result-wide v0

    long-to-int v1, v0

    const-string v0, "TonCount"

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralStringSpaced(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->asDecimal()J

    move-result-wide v0

    long-to-int v1, v0

    const-string v0, "StarsCount"

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralStringSpaced(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    sget-object v1, Lorg/telegram/messenger/utils/tlutils/AmountUtils$1;->$SwitchMap$org$telegram$messenger$utils$tlutils$AmountUtils$Currency:[I

    iget-object v4, p0, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->currency:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v1, v1, v4

    if-eq v1, v3, :cond_4

    if-eq v1, v2, :cond_3

    :goto_0
    const-string v0, ""

    return-object v0

    :cond_3
    sget v1, Lorg/telegram/messenger/R$string;->TonCountX:I

    invoke-virtual {p0}, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->asDecimalString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v0

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    sget v1, Lorg/telegram/messenger/R$string;->StarsCountX:I

    invoke-virtual {p0}, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->asDecimalString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v0

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isRound()Z
    .locals 5

    iget-wide v0, p0, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->nanos:J

    iget-object v2, p0, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->currency:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

    invoke-static {v2}, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->getDecimals(Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;)J

    move-result-wide v2

    rem-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isZero()Z
    .locals 5

    iget-wide v0, p0, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->nanos:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toTl()Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;
    .locals 7

    iget-object v0, p0, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->currency:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

    sget-object v1, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;->STARS:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

    if-ne v0, v1, :cond_0

    new-instance v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starsAmount;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stars$TL_starsAmount;-><init>()V

    iget-object v1, p0, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->currency:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

    invoke-static {v1}, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->getDecimals(Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;)J

    move-result-wide v1

    iget-wide v3, p0, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->nanos:J

    div-long v5, v3, v1

    iput-wide v5, v0, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->amount:J

    rem-long/2addr v3, v1

    long-to-int v1, v3

    iput v1, v0, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->nanos:I

    return-object v0

    :cond_0
    sget-object v1, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;->TON:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

    if-ne v0, v1, :cond_1

    new-instance v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTonAmount;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTonAmount;-><init>()V

    iget-wide v1, p0, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->nanos:J

    iput-wide v1, v0, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->amount:J

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
