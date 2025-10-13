.class public final enum Lorg/telegram/messenger/BotWebViewVibrationEffect;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/telegram/messenger/BotWebViewVibrationEffect;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/telegram/messenger/BotWebViewVibrationEffect;

.field public static final enum APP_ERROR:Lorg/telegram/messenger/BotWebViewVibrationEffect;

.field public static final enum IMPACT_HEAVY:Lorg/telegram/messenger/BotWebViewVibrationEffect;

.field public static final enum IMPACT_LIGHT:Lorg/telegram/messenger/BotWebViewVibrationEffect;

.field public static final enum IMPACT_MEDIUM:Lorg/telegram/messenger/BotWebViewVibrationEffect;

.field public static final enum IMPACT_RIGID:Lorg/telegram/messenger/BotWebViewVibrationEffect;

.field public static final enum IMPACT_SOFT:Lorg/telegram/messenger/BotWebViewVibrationEffect;

.field public static final enum NOTIFICATION_ERROR:Lorg/telegram/messenger/BotWebViewVibrationEffect;

.field public static final enum NOTIFICATION_SUCCESS:Lorg/telegram/messenger/BotWebViewVibrationEffect;

.field public static final enum NOTIFICATION_WARNING:Lorg/telegram/messenger/BotWebViewVibrationEffect;

.field public static final enum SELECTION_CHANGE:Lorg/telegram/messenger/BotWebViewVibrationEffect;


# instance fields
.field public final amplitudes:[I

.field public final fallbackTimings:[J

.field public final timings:[J

.field private vibrationEffect:Ljava/lang/Object;


# direct methods
.method private static synthetic $values()[Lorg/telegram/messenger/BotWebViewVibrationEffect;
    .locals 3

    const/16 v0, 0xa

    new-array v0, v0, [Lorg/telegram/messenger/BotWebViewVibrationEffect;

    sget-object v1, Lorg/telegram/messenger/BotWebViewVibrationEffect;->IMPACT_LIGHT:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/telegram/messenger/BotWebViewVibrationEffect;->IMPACT_MEDIUM:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/telegram/messenger/BotWebViewVibrationEffect;->IMPACT_HEAVY:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lorg/telegram/messenger/BotWebViewVibrationEffect;->IMPACT_RIGID:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lorg/telegram/messenger/BotWebViewVibrationEffect;->IMPACT_SOFT:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lorg/telegram/messenger/BotWebViewVibrationEffect;->NOTIFICATION_ERROR:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lorg/telegram/messenger/BotWebViewVibrationEffect;->NOTIFICATION_SUCCESS:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lorg/telegram/messenger/BotWebViewVibrationEffect;->NOTIFICATION_WARNING:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lorg/telegram/messenger/BotWebViewVibrationEffect;->SELECTION_CHANGE:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lorg/telegram/messenger/BotWebViewVibrationEffect;->APP_ERROR:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 27

    new-instance v6, Lorg/telegram/messenger/BotWebViewVibrationEffect;

    const-wide/16 v7, 0x7

    const/4 v9, 0x1

    new-array v3, v9, [J

    const/4 v10, 0x0

    aput-wide v7, v3, v10

    const/16 v11, 0x41

    filled-new-array {v11}, [I

    move-result-object v4

    new-array v5, v9, [J

    const-wide/16 v0, 0x3c

    aput-wide v0, v5, v10

    const-string v1, "IMPACT_LIGHT"

    const/4 v2, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/BotWebViewVibrationEffect;-><init>(Ljava/lang/String;I[J[I[J)V

    sput-object v6, Lorg/telegram/messenger/BotWebViewVibrationEffect;->IMPACT_LIGHT:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    new-instance v0, Lorg/telegram/messenger/BotWebViewVibrationEffect;

    new-array v15, v9, [J

    aput-wide v7, v15, v10

    const/16 v1, 0x91

    filled-new-array {v1}, [I

    move-result-object v16

    new-array v1, v9, [J

    const-wide/16 v2, 0x46

    aput-wide v2, v1, v10

    const-string v13, "IMPACT_MEDIUM"

    const/4 v14, 0x1

    move-object v12, v0

    move-object/from16 v17, v1

    invoke-direct/range {v12 .. v17}, Lorg/telegram/messenger/BotWebViewVibrationEffect;-><init>(Ljava/lang/String;I[J[I[J)V

    sput-object v0, Lorg/telegram/messenger/BotWebViewVibrationEffect;->IMPACT_MEDIUM:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    new-instance v0, Lorg/telegram/messenger/BotWebViewVibrationEffect;

    new-array v1, v9, [J

    aput-wide v7, v1, v10

    const/16 v2, 0xff

    filled-new-array {v2}, [I

    move-result-object v21

    new-array v3, v9, [J

    const-wide/16 v4, 0x50

    aput-wide v4, v3, v10

    const-string v18, "IMPACT_HEAVY"

    const/16 v19, 0x2

    move-object/from16 v17, v0

    move-object/from16 v20, v1

    move-object/from16 v22, v3

    invoke-direct/range {v17 .. v22}, Lorg/telegram/messenger/BotWebViewVibrationEffect;-><init>(Ljava/lang/String;I[J[I[J)V

    sput-object v0, Lorg/telegram/messenger/BotWebViewVibrationEffect;->IMPACT_HEAVY:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    new-instance v0, Lorg/telegram/messenger/BotWebViewVibrationEffect;

    new-array v15, v9, [J

    const-wide/16 v3, 0x3

    aput-wide v3, v15, v10

    const/16 v1, 0xe1

    filled-new-array {v1}, [I

    move-result-object v16

    new-array v3, v9, [J

    const-wide/16 v4, 0x32

    aput-wide v4, v3, v10

    const-string v13, "IMPACT_RIGID"

    const/4 v14, 0x3

    move-object v12, v0

    move-object/from16 v17, v3

    invoke-direct/range {v12 .. v17}, Lorg/telegram/messenger/BotWebViewVibrationEffect;-><init>(Ljava/lang/String;I[J[I[J)V

    sput-object v0, Lorg/telegram/messenger/BotWebViewVibrationEffect;->IMPACT_RIGID:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    new-instance v0, Lorg/telegram/messenger/BotWebViewVibrationEffect;

    new-array v3, v9, [J

    const-wide/16 v4, 0xa

    aput-wide v4, v3, v10

    const/16 v4, 0xaf

    filled-new-array {v4}, [I

    move-result-object v21

    new-array v5, v9, [J

    const-wide/16 v6, 0x37

    aput-wide v6, v5, v10

    const-string v18, "IMPACT_SOFT"

    const/16 v19, 0x4

    move-object/from16 v17, v0

    move-object/from16 v20, v3

    move-object/from16 v22, v5

    invoke-direct/range {v17 .. v22}, Lorg/telegram/messenger/BotWebViewVibrationEffect;-><init>(Ljava/lang/String;I[J[I[J)V

    sput-object v0, Lorg/telegram/messenger/BotWebViewVibrationEffect;->IMPACT_SOFT:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    new-instance v0, Lorg/telegram/messenger/BotWebViewVibrationEffect;

    const/4 v3, 0x7

    new-array v15, v3, [J

    fill-array-data v15, :array_0

    new-array v5, v3, [I

    fill-array-data v5, :array_1

    new-array v6, v3, [J

    fill-array-data v6, :array_2

    const-string v13, "NOTIFICATION_ERROR"

    const/4 v14, 0x5

    move-object v12, v0

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    invoke-direct/range {v12 .. v17}, Lorg/telegram/messenger/BotWebViewVibrationEffect;-><init>(Ljava/lang/String;I[J[I[J)V

    sput-object v0, Lorg/telegram/messenger/BotWebViewVibrationEffect;->NOTIFICATION_ERROR:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    new-instance v0, Lorg/telegram/messenger/BotWebViewVibrationEffect;

    const/4 v5, 0x3

    new-array v6, v5, [J

    fill-array-data v6, :array_3

    filled-new-array {v4, v10, v2}, [I

    move-result-object v20

    new-array v2, v5, [J

    fill-array-data v2, :array_4

    const-string v17, "NOTIFICATION_SUCCESS"

    const/16 v18, 0x6

    move-object/from16 v16, v0

    move-object/from16 v19, v6

    move-object/from16 v21, v2

    invoke-direct/range {v16 .. v21}, Lorg/telegram/messenger/BotWebViewVibrationEffect;-><init>(Ljava/lang/String;I[J[I[J)V

    sput-object v0, Lorg/telegram/messenger/BotWebViewVibrationEffect;->NOTIFICATION_SUCCESS:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    new-instance v0, Lorg/telegram/messenger/BotWebViewVibrationEffect;

    new-array v2, v5, [J

    fill-array-data v2, :array_5

    filled-new-array {v1, v10, v4}, [I

    move-result-object v25

    new-array v1, v5, [J

    fill-array-data v1, :array_6

    const-string v22, "NOTIFICATION_WARNING"

    const/16 v23, 0x7

    move-object/from16 v21, v0

    move-object/from16 v24, v2

    move-object/from16 v26, v1

    invoke-direct/range {v21 .. v26}, Lorg/telegram/messenger/BotWebViewVibrationEffect;-><init>(Ljava/lang/String;I[J[I[J)V

    sput-object v0, Lorg/telegram/messenger/BotWebViewVibrationEffect;->NOTIFICATION_WARNING:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    new-instance v0, Lorg/telegram/messenger/BotWebViewVibrationEffect;

    new-array v15, v9, [J

    const-wide/16 v1, 0x1

    aput-wide v1, v15, v10

    filled-new-array {v11}, [I

    move-result-object v16

    new-array v1, v9, [J

    const-wide/16 v4, 0x1e

    aput-wide v4, v1, v10

    const-string v13, "SELECTION_CHANGE"

    const/16 v14, 0x8

    move-object v12, v0

    move-object/from16 v17, v1

    invoke-direct/range {v12 .. v17}, Lorg/telegram/messenger/BotWebViewVibrationEffect;-><init>(Ljava/lang/String;I[J[I[J)V

    sput-object v0, Lorg/telegram/messenger/BotWebViewVibrationEffect;->SELECTION_CHANGE:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    new-instance v0, Lorg/telegram/messenger/BotWebViewVibrationEffect;

    const/4 v1, 0x4

    new-array v7, v1, [J

    fill-array-data v7, :array_7

    const/16 v1, 0x64

    filled-new-array {v10, v1, v10, v1}, [I

    move-result-object v8

    new-array v9, v3, [J

    fill-array-data v9, :array_8

    const-string v5, "APP_ERROR"

    const/16 v6, 0x9

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lorg/telegram/messenger/BotWebViewVibrationEffect;-><init>(Ljava/lang/String;I[J[I[J)V

    sput-object v0, Lorg/telegram/messenger/BotWebViewVibrationEffect;->APP_ERROR:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    invoke-static {}, Lorg/telegram/messenger/BotWebViewVibrationEffect;->$values()[Lorg/telegram/messenger/BotWebViewVibrationEffect;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/BotWebViewVibrationEffect;->$VALUES:[Lorg/telegram/messenger/BotWebViewVibrationEffect;

    return-void

    nop

    :array_0
    .array-data 8
        0xe
        0x30
        0xe
        0x30
        0xe
        0x30
        0x14
    .end array-data

    :array_1
    .array-data 4
        0xc8
        0x0
        0xc8
        0x0
        0xff
        0x0
        0x91
    .end array-data

    :array_2
    .array-data 8
        0x28
        0x3c
        0x28
        0x3c
        0x41
        0x3c
        0x28
    .end array-data

    :array_3
    .array-data 8
        0xe
        0x41
        0xe
    .end array-data

    :array_4
    .array-data 8
        0x32
        0x3c
        0x41
    .end array-data

    :array_5
    .array-data 8
        0xe
        0x40
        0xe
    .end array-data

    :array_6
    .array-data 8
        0x41
        0x3c
        0x28
    .end array-data

    :array_7
    .array-data 8
        0x1e
        0xa
        0x96
        0xa
    .end array-data

    :array_8
    .array-data 8
        0x28
        0x3c
        0x28
        0x3c
        0x41
        0x3c
        0x28
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;I[J[I[J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J[I[J)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/telegram/messenger/BotWebViewVibrationEffect;->timings:[J

    iput-object p4, p0, Lorg/telegram/messenger/BotWebViewVibrationEffect;->amplitudes:[I

    iput-object p5, p0, Lorg/telegram/messenger/BotWebViewVibrationEffect;->fallbackTimings:[J

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/telegram/messenger/BotWebViewVibrationEffect;
    .locals 1

    const-class v0, Lorg/telegram/messenger/BotWebViewVibrationEffect;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/telegram/messenger/BotWebViewVibrationEffect;

    return-object p0
.end method

.method public static values()[Lorg/telegram/messenger/BotWebViewVibrationEffect;
    .locals 1

    sget-object v0, Lorg/telegram/messenger/BotWebViewVibrationEffect;->$VALUES:[Lorg/telegram/messenger/BotWebViewVibrationEffect;

    invoke-virtual {v0}, [Lorg/telegram/messenger/BotWebViewVibrationEffect;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/telegram/messenger/BotWebViewVibrationEffect;

    return-object v0
.end method


# virtual methods
.method public getVibrationEffectForOreo()Landroid/os/VibrationEffect;
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/BotWebViewVibrationEffect;->vibrationEffect:Ljava/lang/Object;

    if-nez v0, :cond_1

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getVibrator()Landroid/os/Vibrator;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticApiModelOutline22;->m(Landroid/os/Vibrator;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/BotWebViewVibrationEffect;->fallbackTimings:[J

    invoke-static {v0, v1}, Lorg/telegram/messenger/BotWebViewVibrationEffect$$ExternalSyntheticApiModelOutline1;->m([JI)Landroid/os/VibrationEffect;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/telegram/messenger/BotWebViewVibrationEffect;->vibrationEffect:Ljava/lang/Object;

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/BotWebViewVibrationEffect;->timings:[J

    iget-object v2, p0, Lorg/telegram/messenger/BotWebViewVibrationEffect;->amplitudes:[I

    invoke-static {v0, v2, v1}, Lorg/telegram/messenger/BotWebViewVibrationEffect$$ExternalSyntheticApiModelOutline2;->m([J[II)Landroid/os/VibrationEffect;

    move-result-object v0

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/telegram/messenger/BotWebViewVibrationEffect;->vibrationEffect:Ljava/lang/Object;

    invoke-static {v0}, Lorg/telegram/messenger/BotWebViewVibrationEffect$$ExternalSyntheticApiModelOutline3;->m(Ljava/lang/Object;)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0
.end method

.method public vibrate()V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getVibrator()Landroid/os/Vibrator;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/messenger/BotWebViewVibrationEffect;->getVibrationEffectForOreo()Landroid/os/VibrationEffect;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/BotWebViewVibrationEffect$$ExternalSyntheticApiModelOutline0;->m(Landroid/os/Vibrator;Landroid/os/VibrationEffect;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getVibrator()Landroid/os/Vibrator;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/BotWebViewVibrationEffect;->fallbackTimings:[J

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    :goto_0
    return-void
.end method
