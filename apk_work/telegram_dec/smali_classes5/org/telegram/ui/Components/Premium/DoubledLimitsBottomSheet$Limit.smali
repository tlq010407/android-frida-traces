.class Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Limit;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final current:I

.field final defaultLimit:I

.field final premiumLimit:I

.field final subtitle:Ljava/lang/String;

.field final title:Ljava/lang/String;

.field public yOffset:I


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Limit;->current:I

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Limit;->title:Ljava/lang/String;

    iput-object p2, p0, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Limit;->subtitle:Ljava/lang/String;

    iput p3, p0, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Limit;->defaultLimit:I

    iput p4, p0, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Limit;->premiumLimit:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;IILorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$1;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Limit;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method
