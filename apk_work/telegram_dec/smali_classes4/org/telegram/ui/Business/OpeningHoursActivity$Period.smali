.class public Lorg/telegram/ui/Business/OpeningHoursActivity$Period;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Business/OpeningHoursActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Period"
.end annotation


# instance fields
.field public end:I

.field public start:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/telegram/ui/Business/OpeningHoursActivity$Period;->start:I

    iput p2, p0, Lorg/telegram/ui/Business/OpeningHoursActivity$Period;->end:I

    return-void
.end method

.method public static timeToString(I)Ljava/lang/String;
    .locals 1

    .line 0
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/telegram/ui/Business/OpeningHoursActivity$Period;->timeToString(IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static timeToString(IZ)Ljava/lang/String;
    .locals 7

    .line 0
    rem-int/lit8 v5, p0, 0x3c

    sub-int v0, p0, v5

    div-int/lit8 v0, v0, 0x3c

    rem-int/lit8 v4, v0, 0x18

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Ljava/util/Calendar;->set(IIIII)V

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/LocaleController;->getFormatterConstDay()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v0

    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x5a0

    if-le p0, v1, :cond_0

    if-eqz p1, :cond_0

    sget p0, Lorg/telegram/messenger/R$string;->BusinessHoursNextDay:I

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    invoke-static {p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lorg/telegram/ui/Business/OpeningHoursActivity$Period;->start:I

    invoke-static {v1}, Lorg/telegram/ui/Business/OpeningHoursActivity$Period;->timeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/telegram/ui/Business/OpeningHoursActivity$Period;->end:I

    invoke-static {v1}, Lorg/telegram/ui/Business/OpeningHoursActivity$Period;->timeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
