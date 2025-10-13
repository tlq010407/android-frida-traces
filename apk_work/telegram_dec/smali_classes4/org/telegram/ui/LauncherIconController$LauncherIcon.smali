.class public final enum Lorg/telegram/ui/LauncherIconController$LauncherIcon;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/LauncherIconController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LauncherIcon"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/telegram/ui/LauncherIconController$LauncherIcon;

.field public static final enum AQUA:Lorg/telegram/ui/LauncherIconController$LauncherIcon;

.field public static final enum DEFAULT:Lorg/telegram/ui/LauncherIconController$LauncherIcon;

.field public static final enum NOX:Lorg/telegram/ui/LauncherIconController$LauncherIcon;

.field public static final enum PREMIUM:Lorg/telegram/ui/LauncherIconController$LauncherIcon;

.field public static final enum TURBO:Lorg/telegram/ui/LauncherIconController$LauncherIcon;

.field public static final enum VINTAGE:Lorg/telegram/ui/LauncherIconController$LauncherIcon;


# instance fields
.field public final background:I

.field private componentName:Landroid/content/ComponentName;

.field public final foreground:I

.field public final key:Ljava/lang/String;

.field public final premium:Z

.field public final title:I


# direct methods
.method private static synthetic $values()[Lorg/telegram/ui/LauncherIconController$LauncherIcon;
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Lorg/telegram/ui/LauncherIconController$LauncherIcon;

    sget-object v1, Lorg/telegram/ui/LauncherIconController$LauncherIcon;->DEFAULT:Lorg/telegram/ui/LauncherIconController$LauncherIcon;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/telegram/ui/LauncherIconController$LauncherIcon;->VINTAGE:Lorg/telegram/ui/LauncherIconController$LauncherIcon;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/telegram/ui/LauncherIconController$LauncherIcon;->AQUA:Lorg/telegram/ui/LauncherIconController$LauncherIcon;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lorg/telegram/ui/LauncherIconController$LauncherIcon;->PREMIUM:Lorg/telegram/ui/LauncherIconController$LauncherIcon;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lorg/telegram/ui/LauncherIconController$LauncherIcon;->TURBO:Lorg/telegram/ui/LauncherIconController$LauncherIcon;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lorg/telegram/ui/LauncherIconController$LauncherIcon;->NOX:Lorg/telegram/ui/LauncherIconController$LauncherIcon;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 24

    new-instance v7, Lorg/telegram/ui/LauncherIconController$LauncherIcon;

    sget v4, Lorg/telegram/messenger/R$drawable;->icon_background_sa:I

    sget v15, Lorg/telegram/messenger/R$mipmap;->icon_foreground_sa:I

    sget v6, Lorg/telegram/messenger/R$string;->AppIconDefault:I

    const/4 v2, 0x0

    const-string v3, "DefaultIcon"

    const-string v1, "DEFAULT"

    move-object v0, v7

    move v5, v15

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/LauncherIconController$LauncherIcon;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v7, Lorg/telegram/ui/LauncherIconController$LauncherIcon;->DEFAULT:Lorg/telegram/ui/LauncherIconController$LauncherIcon;

    new-instance v0, Lorg/telegram/ui/LauncherIconController$LauncherIcon;

    sget v12, Lorg/telegram/messenger/R$drawable;->icon_6_background_sa:I

    sget v13, Lorg/telegram/messenger/R$mipmap;->icon_6_foreground_sa:I

    sget v14, Lorg/telegram/messenger/R$string;->AppIconVintage:I

    const/4 v10, 0x1

    const-string v11, "VintageIcon"

    const-string v9, "VINTAGE"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lorg/telegram/ui/LauncherIconController$LauncherIcon;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v0, Lorg/telegram/ui/LauncherIconController$LauncherIcon;->VINTAGE:Lorg/telegram/ui/LauncherIconController$LauncherIcon;

    new-instance v0, Lorg/telegram/ui/LauncherIconController$LauncherIcon;

    sget v12, Lorg/telegram/messenger/R$drawable;->icon_4_background_sa:I

    sget v14, Lorg/telegram/messenger/R$string;->AppIconAqua:I

    const/4 v10, 0x2

    const-string v11, "AquaIcon"

    const-string v9, "AQUA"

    move-object v8, v0

    move v13, v15

    invoke-direct/range {v8 .. v14}, Lorg/telegram/ui/LauncherIconController$LauncherIcon;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v0, Lorg/telegram/ui/LauncherIconController$LauncherIcon;->AQUA:Lorg/telegram/ui/LauncherIconController$LauncherIcon;

    new-instance v0, Lorg/telegram/ui/LauncherIconController$LauncherIcon;

    sget v5, Lorg/telegram/messenger/R$drawable;->icon_3_background_sa:I

    sget v6, Lorg/telegram/messenger/R$mipmap;->icon_3_foreground_sa:I

    sget v7, Lorg/telegram/messenger/R$string;->AppIconPremium:I

    const-string v4, "PremiumIcon"

    const/4 v8, 0x1

    const-string v2, "PREMIUM"

    const/4 v3, 0x3

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/LauncherIconController$LauncherIcon;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v0, Lorg/telegram/ui/LauncherIconController$LauncherIcon;->PREMIUM:Lorg/telegram/ui/LauncherIconController$LauncherIcon;

    new-instance v0, Lorg/telegram/ui/LauncherIconController$LauncherIcon;

    sget v20, Lorg/telegram/messenger/R$drawable;->icon_5_background_sa:I

    sget v21, Lorg/telegram/messenger/R$mipmap;->icon_5_foreground_sa:I

    sget v22, Lorg/telegram/messenger/R$string;->AppIconTurbo:I

    const-string v19, "TurboIcon"

    const/16 v23, 0x1

    const-string v17, "TURBO"

    const/16 v18, 0x4

    move-object/from16 v16, v0

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/LauncherIconController$LauncherIcon;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v0, Lorg/telegram/ui/LauncherIconController$LauncherIcon;->TURBO:Lorg/telegram/ui/LauncherIconController$LauncherIcon;

    new-instance v0, Lorg/telegram/ui/LauncherIconController$LauncherIcon;

    sget v12, Lorg/telegram/messenger/R$mipmap;->icon_2_background_sa:I

    sget v14, Lorg/telegram/messenger/R$string;->AppIconNox:I

    const-string v11, "NoxIcon"

    const/4 v1, 0x1

    const-string v9, "NOX"

    const/4 v10, 0x5

    move-object v8, v0

    move v15, v1

    invoke-direct/range {v8 .. v15}, Lorg/telegram/ui/LauncherIconController$LauncherIcon;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v0, Lorg/telegram/ui/LauncherIconController$LauncherIcon;->NOX:Lorg/telegram/ui/LauncherIconController$LauncherIcon;

    invoke-static {}, Lorg/telegram/ui/LauncherIconController$LauncherIcon;->$values()[Lorg/telegram/ui/LauncherIconController$LauncherIcon;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/LauncherIconController$LauncherIcon;->$VALUES:[Lorg/telegram/ui/LauncherIconController$LauncherIcon;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;III)V
    .locals 8

    .line 0
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/LauncherIconController$LauncherIcon;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/telegram/ui/LauncherIconController$LauncherIcon;->key:Ljava/lang/String;

    iput p4, p0, Lorg/telegram/ui/LauncherIconController$LauncherIcon;->background:I

    iput p5, p0, Lorg/telegram/ui/LauncherIconController$LauncherIcon;->foreground:I

    iput p6, p0, Lorg/telegram/ui/LauncherIconController$LauncherIcon;->title:I

    iput-boolean p7, p0, Lorg/telegram/ui/LauncherIconController$LauncherIcon;->premium:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/telegram/ui/LauncherIconController$LauncherIcon;
    .locals 1

    const-class v0, Lorg/telegram/ui/LauncherIconController$LauncherIcon;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/telegram/ui/LauncherIconController$LauncherIcon;

    return-object p0
.end method

.method public static values()[Lorg/telegram/ui/LauncherIconController$LauncherIcon;
    .locals 1

    sget-object v0, Lorg/telegram/ui/LauncherIconController$LauncherIcon;->$VALUES:[Lorg/telegram/ui/LauncherIconController$LauncherIcon;

    invoke-virtual {v0}, [Lorg/telegram/ui/LauncherIconController$LauncherIcon;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/telegram/ui/LauncherIconController$LauncherIcon;

    return-object v0
.end method


# virtual methods
.method public getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/LauncherIconController$LauncherIcon;->componentName:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "org.telegram.messenger."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/telegram/ui/LauncherIconController$LauncherIcon;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/ui/LauncherIconController$LauncherIcon;->componentName:Landroid/content/ComponentName;

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/LauncherIconController$LauncherIcon;->componentName:Landroid/content/ComponentName;

    return-object p1
.end method
