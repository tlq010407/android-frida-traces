.class public abstract Lcom/stripe/android/util/DateUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static hasMonthPassed(II)Z
    .locals 3

    invoke-static {p0}, Lcom/stripe/android/util/DateUtils;->hasYearPassed(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/stripe/android/time/Clock;->getCalendarInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {p0}, Lcom/stripe/android/util/DateUtils;->normalizeYear(I)I

    move-result p0

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne p0, v2, :cond_1

    const/4 p0, 0x2

    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    add-int/2addr p0, v1

    if-ge p1, p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static hasYearPassed(I)Z
    .locals 2

    invoke-static {p0}, Lcom/stripe/android/util/DateUtils;->normalizeYear(I)I

    move-result p0

    invoke-static {}, Lcom/stripe/android/time/Clock;->getCalendarInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ge p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static normalizeYear(I)I
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/16 v3, 0x64

    if-ge p0, v3, :cond_0

    if-ltz p0, :cond_0

    invoke-static {}, Lcom/stripe/android/time/Clock;->getCalendarInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v0

    aput-object p0, v1, v2

    const-string p0, "%s%02d"

    invoke-static {v4, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    :cond_0
    return p0
.end method
