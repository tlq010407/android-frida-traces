.class public Lorg/telegram/messenger/OneUIUtilities;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ONE_UI_4_0:I = 0x9c40

.field private static isOneUI:Ljava/lang/Boolean;

.field private static oneUIEncodedVersion:I

.field private static oneUIMajorVersion:I

.field private static oneUIMinorVersion:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOneUIEncodedVersion()I
    .locals 1

    invoke-static {}, Lorg/telegram/messenger/OneUIUtilities;->isOneUI()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    sget v0, Lorg/telegram/messenger/OneUIUtilities;->oneUIEncodedVersion:I

    return v0
.end method

.method public static getOneUIMajorVersion()I
    .locals 1

    invoke-static {}, Lorg/telegram/messenger/OneUIUtilities;->isOneUI()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    sget v0, Lorg/telegram/messenger/OneUIUtilities;->oneUIMajorVersion:I

    return v0
.end method

.method public static getOneUIMinorVersion()F
    .locals 1

    invoke-static {}, Lorg/telegram/messenger/OneUIUtilities;->isOneUI()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    sget v0, Lorg/telegram/messenger/OneUIUtilities;->oneUIMinorVersion:F

    return v0
.end method

.method public static hasBuiltInClipboardToasts()Z
    .locals 2

    invoke-static {}, Lorg/telegram/messenger/OneUIUtilities;->isOneUI()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/telegram/messenger/OneUIUtilities;->getOneUIEncodedVersion()I

    move-result v0

    const v1, 0x9c40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isOneUI()Z
    .locals 2

    sget-object v0, Lorg/telegram/messenger/OneUIUtilities;->isOneUI:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    :try_start_0
    const-class v0, Landroid/os/Build$VERSION;

    const-string v1, "SEM_PLATFORM_INT"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v1, 0x186a0

    if-ge v0, v1, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    const v1, 0x15f90

    sub-int/2addr v0, v1

    sput v0, Lorg/telegram/messenger/OneUIUtilities;->oneUIEncodedVersion:I

    div-int/lit16 v1, v0, 0x2710

    sput v1, Lorg/telegram/messenger/OneUIUtilities;->oneUIMajorVersion:I

    rem-int/lit16 v0, v0, 0x2710

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    sput v0, Lorg/telegram/messenger/OneUIUtilities;->oneUIMinorVersion:F

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v0, Lorg/telegram/messenger/OneUIUtilities;->isOneUI:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lorg/telegram/messenger/OneUIUtilities;->isOneUI:Ljava/lang/Boolean;

    :goto_0
    sget-object v0, Lorg/telegram/messenger/OneUIUtilities;->isOneUI:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
