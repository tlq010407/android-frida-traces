.class public final enum Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

.field public static final enum STARS:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

.field public static final enum TON:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;


# direct methods
.method private static synthetic $values()[Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

    sget-object v1, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;->STARS:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;->TON:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

    const-string v1, "STARS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;->STARS:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

    new-instance v0, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

    const-string v1, "TON"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;->TON:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

    invoke-static {}, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;->$values()[Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;->$VALUES:[Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;
    .locals 1

    const-class v0, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

    return-object p0
.end method

.method public static values()[Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;
    .locals 1

    sget-object v0, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;->$VALUES:[Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

    invoke-virtual {v0}, [Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

    return-object v0
.end method
