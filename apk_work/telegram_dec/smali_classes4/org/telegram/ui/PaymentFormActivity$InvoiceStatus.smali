.class public final enum Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/PaymentFormActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InvoiceStatus"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;

.field public static final enum CANCELLED:Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;

.field public static final enum FAILED:Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;

.field public static final enum PAID:Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;

.field public static final enum PENDING:Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;


# direct methods
.method private static synthetic $values()[Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;

    sget-object v1, Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;->PAID:Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;->CANCELLED:Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;->PENDING:Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;->FAILED:Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;

    const-string v1, "PAID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;->PAID:Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;

    new-instance v0, Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;

    const-string v1, "CANCELLED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;->CANCELLED:Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;

    new-instance v0, Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;

    const-string v1, "PENDING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;->PENDING:Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;

    new-instance v0, Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;

    const-string v1, "FAILED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;->FAILED:Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;

    invoke-static {}, Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;->$values()[Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;->$VALUES:[Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;
    .locals 1

    const-class v0, Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;

    return-object p0
.end method

.method public static values()[Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;
    .locals 1

    sget-object v0, Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;->$VALUES:[Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;

    invoke-virtual {v0}, [Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;

    return-object v0
.end method
