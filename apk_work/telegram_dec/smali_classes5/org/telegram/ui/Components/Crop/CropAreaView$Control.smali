.class final enum Lorg/telegram/ui/Components/Crop/CropAreaView$Control;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/Crop/CropAreaView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Control"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

.field public static final enum BOTTOM:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

.field public static final enum BOTTOM_LEFT:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

.field public static final enum BOTTOM_RIGHT:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

.field public static final enum LEFT:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

.field public static final enum NONE:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

.field public static final enum RIGHT:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

.field public static final enum TOP:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

.field public static final enum TOP_LEFT:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

.field public static final enum TOP_RIGHT:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;


# direct methods
.method private static synthetic $values()[Lorg/telegram/ui/Components/Crop/CropAreaView$Control;
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    sget-object v1, Lorg/telegram/ui/Components/Crop/CropAreaView$Control;->NONE:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/telegram/ui/Components/Crop/CropAreaView$Control;->TOP_LEFT:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/telegram/ui/Components/Crop/CropAreaView$Control;->TOP_RIGHT:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lorg/telegram/ui/Components/Crop/CropAreaView$Control;->BOTTOM_LEFT:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lorg/telegram/ui/Components/Crop/CropAreaView$Control;->BOTTOM_RIGHT:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lorg/telegram/ui/Components/Crop/CropAreaView$Control;->TOP:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lorg/telegram/ui/Components/Crop/CropAreaView$Control;->LEFT:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lorg/telegram/ui/Components/Crop/CropAreaView$Control;->BOTTOM:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lorg/telegram/ui/Components/Crop/CropAreaView$Control;->RIGHT:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Crop/CropAreaView$Control;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/telegram/ui/Components/Crop/CropAreaView$Control;->NONE:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    new-instance v0, Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    const-string v1, "TOP_LEFT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Crop/CropAreaView$Control;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/telegram/ui/Components/Crop/CropAreaView$Control;->TOP_LEFT:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    new-instance v0, Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    const-string v1, "TOP_RIGHT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Crop/CropAreaView$Control;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/telegram/ui/Components/Crop/CropAreaView$Control;->TOP_RIGHT:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    new-instance v0, Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    const-string v1, "BOTTOM_LEFT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Crop/CropAreaView$Control;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/telegram/ui/Components/Crop/CropAreaView$Control;->BOTTOM_LEFT:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    new-instance v0, Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    const-string v1, "BOTTOM_RIGHT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Crop/CropAreaView$Control;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/telegram/ui/Components/Crop/CropAreaView$Control;->BOTTOM_RIGHT:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    new-instance v0, Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    const-string v1, "TOP"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Crop/CropAreaView$Control;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/telegram/ui/Components/Crop/CropAreaView$Control;->TOP:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    new-instance v0, Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    const-string v1, "LEFT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Crop/CropAreaView$Control;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/telegram/ui/Components/Crop/CropAreaView$Control;->LEFT:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    new-instance v0, Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    const-string v1, "BOTTOM"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Crop/CropAreaView$Control;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/telegram/ui/Components/Crop/CropAreaView$Control;->BOTTOM:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    new-instance v0, Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    const-string v1, "RIGHT"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Crop/CropAreaView$Control;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/telegram/ui/Components/Crop/CropAreaView$Control;->RIGHT:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    invoke-static {}, Lorg/telegram/ui/Components/Crop/CropAreaView$Control;->$values()[Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Components/Crop/CropAreaView$Control;->$VALUES:[Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/telegram/ui/Components/Crop/CropAreaView$Control;
    .locals 1

    const-class v0, Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    return-object p0
.end method

.method public static values()[Lorg/telegram/ui/Components/Crop/CropAreaView$Control;
    .locals 1

    sget-object v0, Lorg/telegram/ui/Components/Crop/CropAreaView$Control;->$VALUES:[Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    invoke-virtual {v0}, [Lorg/telegram/ui/Components/Crop/CropAreaView$Control;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    return-object v0
.end method
