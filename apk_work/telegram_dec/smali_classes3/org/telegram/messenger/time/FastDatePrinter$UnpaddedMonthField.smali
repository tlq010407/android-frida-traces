.class Lorg/telegram/messenger/time/FastDatePrinter$UnpaddedMonthField;
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
    name = "UnpaddedMonthField"
.end annotation


# static fields
.field static final INSTANCE:Lorg/telegram/messenger/time/FastDatePrinter$UnpaddedMonthField;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/telegram/messenger/time/FastDatePrinter$UnpaddedMonthField;

    invoke-direct {v0}, Lorg/telegram/messenger/time/FastDatePrinter$UnpaddedMonthField;-><init>()V

    sput-object v0, Lorg/telegram/messenger/time/FastDatePrinter$UnpaddedMonthField;->INSTANCE:Lorg/telegram/messenger/time/FastDatePrinter$UnpaddedMonthField;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final appendTo(Ljava/lang/StringBuffer;I)V
    .locals 2

    .line 0
    const/16 v0, 0xa

    if-ge p2, v0, :cond_0

    :goto_0
    add-int/lit8 p2, p2, 0x30

    int-to-char p2, p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_0
    div-int/lit8 v1, p2, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    rem-int/2addr p2, v0

    goto :goto_0

    :goto_1
    return-void
.end method

.method public appendTo(Ljava/lang/StringBuffer;Ljava/util/Calendar;)V
    .locals 1

    .line 0
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/time/FastDatePrinter$UnpaddedMonthField;->appendTo(Ljava/lang/StringBuffer;I)V

    return-void
.end method

.method public estimateLength()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
