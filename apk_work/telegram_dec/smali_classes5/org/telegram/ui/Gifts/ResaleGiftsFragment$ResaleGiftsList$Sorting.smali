.class public final enum Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Sorting"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;

.field public static final enum BY_DATE:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;

.field public static final enum BY_NUMBER:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;

.field public static final enum BY_PRICE:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;


# instance fields
.field public buttonStringResId:I

.field public shortResId:I


# direct methods
.method private static synthetic $values()[Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;

    sget-object v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;->BY_PRICE:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;->BY_DATE:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;->BY_NUMBER:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;

    sget v1, Lorg/telegram/messenger/R$string;->ResellGiftFilterSortPriceShort:I

    sget v2, Lorg/telegram/messenger/R$string;->ResellGiftFilterSortPrice:I

    const-string v3, "BY_PRICE"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;->BY_PRICE:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;

    new-instance v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;

    sget v1, Lorg/telegram/messenger/R$string;->ResellGiftFilterSortDateShort:I

    sget v2, Lorg/telegram/messenger/R$string;->ResellGiftFilterSortDate:I

    const-string v3, "BY_DATE"

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;->BY_DATE:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;

    new-instance v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;

    sget v1, Lorg/telegram/messenger/R$string;->ResellGiftFilterSortNumberShort:I

    sget v2, Lorg/telegram/messenger/R$string;->ResellGiftFilterSortNumber:I

    const-string v3, "BY_NUMBER"

    const/4 v4, 0x2

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;->BY_NUMBER:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;

    invoke-static {}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;->$values()[Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;->$VALUES:[Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;->shortResId:I

    iput p4, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;->buttonStringResId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;
    .locals 1

    const-class v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;

    return-object p0
.end method

.method public static values()[Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;
    .locals 1

    sget-object v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;->$VALUES:[Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;

    invoke-virtual {v0}, [Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;

    return-object v0
.end method
