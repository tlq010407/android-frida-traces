.class Lorg/telegram/messenger/time/FastDatePrinter$TwentyFourHourField;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/time/FastDatePrinter$NumberRule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/time/FastDatePrinter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TwentyFourHourField"
.end annotation


# instance fields
.field private final mRule:Lorg/telegram/messenger/time/FastDatePrinter$NumberRule;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/time/FastDatePrinter$NumberRule;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/time/FastDatePrinter$TwentyFourHourField;->mRule:Lorg/telegram/messenger/time/FastDatePrinter$NumberRule;

    return-void
.end method


# virtual methods
.method public appendTo(Ljava/lang/StringBuffer;I)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/time/FastDatePrinter$TwentyFourHourField;->mRule:Lorg/telegram/messenger/time/FastDatePrinter$NumberRule;

    invoke-interface {v0, p1, p2}, Lorg/telegram/messenger/time/FastDatePrinter$NumberRule;->appendTo(Ljava/lang/StringBuffer;I)V

    return-void
.end method

.method public appendTo(Ljava/lang/StringBuffer;Ljava/util/Calendar;)V
    .locals 2

    .line 0
    const/16 v0, 0xb

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->getMaximum(I)I

    move-result p2

    add-int/lit8 v1, p2, 0x1

    :cond_0
    iget-object p2, p0, Lorg/telegram/messenger/time/FastDatePrinter$TwentyFourHourField;->mRule:Lorg/telegram/messenger/time/FastDatePrinter$NumberRule;

    invoke-interface {p2, p1, v1}, Lorg/telegram/messenger/time/FastDatePrinter$NumberRule;->appendTo(Ljava/lang/StringBuffer;I)V

    return-void
.end method

.method public estimateLength()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/time/FastDatePrinter$TwentyFourHourField;->mRule:Lorg/telegram/messenger/time/FastDatePrinter$NumberRule;

    invoke-interface {v0}, Lorg/telegram/messenger/time/FastDatePrinter$Rule;->estimateLength()I

    move-result v0

    return v0
.end method
