.class public final enum Lcom/google/android/recaptcha/internal/zzne;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/recaptcha/internal/zziv;


# static fields
.field public static final enum zzA:Lcom/google/android/recaptcha/internal/zzne;

.field public static final enum zzB:Lcom/google/android/recaptcha/internal/zzne;

.field public static final enum zzC:Lcom/google/android/recaptcha/internal/zzne;

.field private static final zzD:Lcom/google/android/recaptcha/internal/zziw;

.field private static final synthetic zzE:[Lcom/google/android/recaptcha/internal/zzne;

.field public static final enum zza:Lcom/google/android/recaptcha/internal/zzne;

.field public static final enum zzb:Lcom/google/android/recaptcha/internal/zzne;

.field public static final enum zzc:Lcom/google/android/recaptcha/internal/zzne;

.field public static final enum zzd:Lcom/google/android/recaptcha/internal/zzne;

.field public static final enum zze:Lcom/google/android/recaptcha/internal/zzne;

.field public static final enum zzf:Lcom/google/android/recaptcha/internal/zzne;

.field public static final enum zzg:Lcom/google/android/recaptcha/internal/zzne;

.field public static final enum zzh:Lcom/google/android/recaptcha/internal/zzne;

.field public static final enum zzi:Lcom/google/android/recaptcha/internal/zzne;

.field public static final enum zzj:Lcom/google/android/recaptcha/internal/zzne;

.field public static final enum zzk:Lcom/google/android/recaptcha/internal/zzne;

.field public static final enum zzl:Lcom/google/android/recaptcha/internal/zzne;

.field public static final enum zzm:Lcom/google/android/recaptcha/internal/zzne;

.field public static final enum zzn:Lcom/google/android/recaptcha/internal/zzne;

.field public static final enum zzo:Lcom/google/android/recaptcha/internal/zzne;

.field public static final enum zzp:Lcom/google/android/recaptcha/internal/zzne;

.field public static final enum zzq:Lcom/google/android/recaptcha/internal/zzne;

.field public static final enum zzr:Lcom/google/android/recaptcha/internal/zzne;

.field public static final enum zzs:Lcom/google/android/recaptcha/internal/zzne;

.field public static final enum zzt:Lcom/google/android/recaptcha/internal/zzne;

.field public static final enum zzu:Lcom/google/android/recaptcha/internal/zzne;

.field public static final enum zzv:Lcom/google/android/recaptcha/internal/zzne;

.field public static final enum zzw:Lcom/google/android/recaptcha/internal/zzne;

.field public static final enum zzx:Lcom/google/android/recaptcha/internal/zzne;

.field public static final enum zzy:Lcom/google/android/recaptcha/internal/zzne;

.field public static final enum zzz:Lcom/google/android/recaptcha/internal/zzne;


# instance fields
.field private final zzF:I


# direct methods
.method static constructor <clinit>()V
    .locals 32

    new-instance v0, Lcom/google/android/recaptcha/internal/zzne;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/recaptcha/internal/zzne;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/recaptcha/internal/zzne;->zza:Lcom/google/android/recaptcha/internal/zzne;

    new-instance v1, Lcom/google/android/recaptcha/internal/zzne;

    const-string v3, "INIT_NATIVE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/google/android/recaptcha/internal/zzne;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/recaptcha/internal/zzne;->zzb:Lcom/google/android/recaptcha/internal/zzne;

    new-instance v3, Lcom/google/android/recaptcha/internal/zzne;

    const-string v5, "INIT_NETWORK"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/google/android/recaptcha/internal/zzne;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/recaptcha/internal/zzne;->zzc:Lcom/google/android/recaptcha/internal/zzne;

    new-instance v5, Lcom/google/android/recaptcha/internal/zzne;

    const-string v7, "INIT_NETWORK_MRI_ACTION"

    const/4 v8, 0x3

    const/16 v9, 0x12

    invoke-direct {v5, v7, v8, v9}, Lcom/google/android/recaptcha/internal/zzne;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/android/recaptcha/internal/zzne;->zzd:Lcom/google/android/recaptcha/internal/zzne;

    new-instance v7, Lcom/google/android/recaptcha/internal/zzne;

    const-string v10, "INIT_DOWNLOAD_JS"

    const/4 v11, 0x4

    const/16 v12, 0x13

    invoke-direct {v7, v10, v11, v12}, Lcom/google/android/recaptcha/internal/zzne;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/google/android/recaptcha/internal/zzne;->zze:Lcom/google/android/recaptcha/internal/zzne;

    new-instance v10, Lcom/google/android/recaptcha/internal/zzne;

    const-string v13, "INIT_JS"

    const/4 v14, 0x5

    invoke-direct {v10, v13, v14, v8}, Lcom/google/android/recaptcha/internal/zzne;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/google/android/recaptcha/internal/zzne;->zzf:Lcom/google/android/recaptcha/internal/zzne;

    new-instance v13, Lcom/google/android/recaptcha/internal/zzne;

    const-string v15, "INIT_TOTAL"

    const/4 v8, 0x6

    invoke-direct {v13, v15, v8, v11}, Lcom/google/android/recaptcha/internal/zzne;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/google/android/recaptcha/internal/zzne;->zzg:Lcom/google/android/recaptcha/internal/zzne;

    new-instance v15, Lcom/google/android/recaptcha/internal/zzne;

    const-string v11, "VALIDATE_INPUT"

    const/4 v6, 0x7

    const/16 v4, 0x14

    invoke-direct {v15, v11, v6, v4}, Lcom/google/android/recaptcha/internal/zzne;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/google/android/recaptcha/internal/zzne;->zzh:Lcom/google/android/recaptcha/internal/zzne;

    new-instance v11, Lcom/google/android/recaptcha/internal/zzne;

    const-string v2, "DOWNLOAD_JS"

    const/16 v4, 0x8

    const/16 v12, 0x15

    invoke-direct {v11, v2, v4, v12}, Lcom/google/android/recaptcha/internal/zzne;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/google/android/recaptcha/internal/zzne;->zzi:Lcom/google/android/recaptcha/internal/zzne;

    new-instance v2, Lcom/google/android/recaptcha/internal/zzne;

    const-string v12, "SAVE_CACHE_JS"

    const/16 v4, 0x9

    const/16 v9, 0x16

    invoke-direct {v2, v12, v4, v9}, Lcom/google/android/recaptcha/internal/zzne;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/android/recaptcha/internal/zzne;->zzj:Lcom/google/android/recaptcha/internal/zzne;

    new-instance v12, Lcom/google/android/recaptcha/internal/zzne;

    const-string v9, "LOAD_CACHE_JS"

    const/16 v4, 0xa

    const/16 v6, 0x17

    invoke-direct {v12, v9, v4, v6}, Lcom/google/android/recaptcha/internal/zzne;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/google/android/recaptcha/internal/zzne;->zzk:Lcom/google/android/recaptcha/internal/zzne;

    new-instance v9, Lcom/google/android/recaptcha/internal/zzne;

    const-string v6, "LOAD_WEBVIEW"

    const/16 v4, 0xb

    const/16 v8, 0x18

    invoke-direct {v9, v6, v4, v8}, Lcom/google/android/recaptcha/internal/zzne;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/google/android/recaptcha/internal/zzne;->zzl:Lcom/google/android/recaptcha/internal/zzne;

    new-instance v6, Lcom/google/android/recaptcha/internal/zzne;

    const-string v8, "EXECUTE_NATIVE"

    const/16 v4, 0xc

    invoke-direct {v6, v8, v4, v14}, Lcom/google/android/recaptcha/internal/zzne;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/google/android/recaptcha/internal/zzne;->zzm:Lcom/google/android/recaptcha/internal/zzne;

    new-instance v8, Lcom/google/android/recaptcha/internal/zzne;

    const-string v14, "EXECUTE_JS"

    const/16 v4, 0xd

    move-object/from16 v20, v6

    const/4 v6, 0x6

    invoke-direct {v8, v14, v4, v6}, Lcom/google/android/recaptcha/internal/zzne;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/google/android/recaptcha/internal/zzne;->zzn:Lcom/google/android/recaptcha/internal/zzne;

    new-instance v6, Lcom/google/android/recaptcha/internal/zzne;

    const-string v14, "EXECUTE_TOTAL"

    const/16 v4, 0xe

    move-object/from16 v22, v8

    const/4 v8, 0x7

    invoke-direct {v6, v14, v4, v8}, Lcom/google/android/recaptcha/internal/zzne;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/google/android/recaptcha/internal/zzne;->zzo:Lcom/google/android/recaptcha/internal/zzne;

    new-instance v8, Lcom/google/android/recaptcha/internal/zzne;

    const/16 v14, 0xf

    const/16 v4, 0x19

    move-object/from16 v24, v6

    const-string v6, "COLLECT_SIGNALS"

    invoke-direct {v8, v6, v14, v4}, Lcom/google/android/recaptcha/internal/zzne;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/google/android/recaptcha/internal/zzne;->zzp:Lcom/google/android/recaptcha/internal/zzne;

    new-instance v6, Lcom/google/android/recaptcha/internal/zzne;

    const/16 v4, 0x10

    const/16 v14, 0x1a

    move-object/from16 v25, v8

    const-string v8, "FETCH_TOKEN"

    invoke-direct {v6, v8, v4, v14}, Lcom/google/android/recaptcha/internal/zzne;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/google/android/recaptcha/internal/zzne;->zzq:Lcom/google/android/recaptcha/internal/zzne;

    new-instance v8, Lcom/google/android/recaptcha/internal/zzne;

    const/16 v4, 0x11

    const/16 v14, 0x1b

    move-object/from16 v26, v6

    const-string v6, "POST_EXECUTE"

    invoke-direct {v8, v6, v4, v14}, Lcom/google/android/recaptcha/internal/zzne;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/google/android/recaptcha/internal/zzne;->zzr:Lcom/google/android/recaptcha/internal/zzne;

    new-instance v6, Lcom/google/android/recaptcha/internal/zzne;

    const-string v4, "CHALLENGE_ACCOUNT_NATIVE"

    move-object/from16 v27, v8

    const/16 v8, 0x8

    const/16 v14, 0x12

    invoke-direct {v6, v4, v14, v8}, Lcom/google/android/recaptcha/internal/zzne;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/google/android/recaptcha/internal/zzne;->zzs:Lcom/google/android/recaptcha/internal/zzne;

    new-instance v4, Lcom/google/android/recaptcha/internal/zzne;

    const-string v8, "CHALLENGE_ACCOUNT_JS"

    move-object/from16 v28, v6

    const/16 v6, 0x9

    const/16 v14, 0x13

    invoke-direct {v4, v8, v14, v6}, Lcom/google/android/recaptcha/internal/zzne;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/android/recaptcha/internal/zzne;->zzt:Lcom/google/android/recaptcha/internal/zzne;

    new-instance v6, Lcom/google/android/recaptcha/internal/zzne;

    const-string v8, "CHALLENGE_ACCOUNT_TOTAL"

    move-object/from16 v29, v4

    const/16 v4, 0xa

    const/16 v14, 0x14

    invoke-direct {v6, v8, v14, v4}, Lcom/google/android/recaptcha/internal/zzne;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/google/android/recaptcha/internal/zzne;->zzu:Lcom/google/android/recaptcha/internal/zzne;

    new-instance v4, Lcom/google/android/recaptcha/internal/zzne;

    const-string v8, "VERIFY_PIN_NATIVE"

    move-object/from16 v18, v6

    const/16 v6, 0xb

    const/16 v14, 0x15

    invoke-direct {v4, v8, v14, v6}, Lcom/google/android/recaptcha/internal/zzne;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/android/recaptcha/internal/zzne;->zzv:Lcom/google/android/recaptcha/internal/zzne;

    new-instance v6, Lcom/google/android/recaptcha/internal/zzne;

    const-string v8, "VERIFY_PIN_JS"

    move-object/from16 v19, v4

    const/16 v4, 0xc

    const/16 v14, 0x16

    invoke-direct {v6, v8, v14, v4}, Lcom/google/android/recaptcha/internal/zzne;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/google/android/recaptcha/internal/zzne;->zzw:Lcom/google/android/recaptcha/internal/zzne;

    new-instance v4, Lcom/google/android/recaptcha/internal/zzne;

    const-string v8, "VERIFY_PIN_TOTAL"

    move-object/from16 v16, v6

    const/16 v6, 0xd

    const/16 v14, 0x17

    invoke-direct {v4, v8, v14, v6}, Lcom/google/android/recaptcha/internal/zzne;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/android/recaptcha/internal/zzne;->zzx:Lcom/google/android/recaptcha/internal/zzne;

    new-instance v6, Lcom/google/android/recaptcha/internal/zzne;

    const-string v8, "RUN_PROGRAM"

    move-object/from16 v17, v4

    const/16 v4, 0xe

    const/16 v14, 0x18

    invoke-direct {v6, v8, v14, v4}, Lcom/google/android/recaptcha/internal/zzne;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/google/android/recaptcha/internal/zzne;->zzy:Lcom/google/android/recaptcha/internal/zzne;

    new-instance v4, Lcom/google/android/recaptcha/internal/zzne;

    const-string v8, "FETCH_ALLOWLIST"

    move-object/from16 v21, v6

    const/16 v6, 0x19

    const/16 v14, 0xf

    invoke-direct {v4, v8, v6, v14}, Lcom/google/android/recaptcha/internal/zzne;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/android/recaptcha/internal/zzne;->zzz:Lcom/google/android/recaptcha/internal/zzne;

    new-instance v6, Lcom/google/android/recaptcha/internal/zzne;

    const-string v8, "JS_LOAD"

    move-object/from16 v23, v4

    const/16 v4, 0x1a

    const/16 v14, 0x10

    invoke-direct {v6, v8, v4, v14}, Lcom/google/android/recaptcha/internal/zzne;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/google/android/recaptcha/internal/zzne;->zzA:Lcom/google/android/recaptcha/internal/zzne;

    new-instance v4, Lcom/google/android/recaptcha/internal/zzne;

    const-string v8, "WEB_VIEW_RELOAD_JS"

    move-object/from16 v30, v6

    const/16 v6, 0x1b

    const/16 v14, 0x11

    invoke-direct {v4, v8, v6, v14}, Lcom/google/android/recaptcha/internal/zzne;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/android/recaptcha/internal/zzne;->zzB:Lcom/google/android/recaptcha/internal/zzne;

    new-instance v6, Lcom/google/android/recaptcha/internal/zzne;

    const/16 v8, 0x1c

    const/4 v14, -0x1

    move-object/from16 v31, v4

    const-string v4, "UNRECOGNIZED"

    invoke-direct {v6, v4, v8, v14}, Lcom/google/android/recaptcha/internal/zzne;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/google/android/recaptcha/internal/zzne;->zzC:Lcom/google/android/recaptcha/internal/zzne;

    const/16 v4, 0x1d

    new-array v4, v4, [Lcom/google/android/recaptcha/internal/zzne;

    const/4 v8, 0x0

    aput-object v0, v4, v8

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v10, v4, v0

    const/4 v0, 0x6

    aput-object v13, v4, v0

    const/4 v0, 0x7

    aput-object v15, v4, v0

    const/16 v0, 0x8

    aput-object v11, v4, v0

    const/16 v0, 0x9

    aput-object v2, v4, v0

    const/16 v0, 0xa

    aput-object v12, v4, v0

    const/16 v0, 0xb

    aput-object v9, v4, v0

    const/16 v0, 0xc

    aput-object v20, v4, v0

    const/16 v0, 0xd

    aput-object v22, v4, v0

    const/16 v0, 0xe

    aput-object v24, v4, v0

    const/16 v0, 0xf

    aput-object v25, v4, v0

    const/16 v0, 0x10

    aput-object v26, v4, v0

    const/16 v0, 0x11

    aput-object v27, v4, v0

    const/16 v0, 0x12

    aput-object v28, v4, v0

    const/16 v0, 0x13

    aput-object v29, v4, v0

    const/16 v0, 0x14

    aput-object v18, v4, v0

    const/16 v0, 0x15

    aput-object v19, v4, v0

    const/16 v0, 0x16

    aput-object v16, v4, v0

    const/16 v0, 0x17

    aput-object v17, v4, v0

    const/16 v0, 0x18

    aput-object v21, v4, v0

    const/16 v0, 0x19

    aput-object v23, v4, v0

    const/16 v0, 0x1a

    aput-object v30, v4, v0

    const/16 v0, 0x1b

    aput-object v31, v4, v0

    const/16 v0, 0x1c

    aput-object v6, v4, v0

    sput-object v4, Lcom/google/android/recaptcha/internal/zzne;->zzE:[Lcom/google/android/recaptcha/internal/zzne;

    new-instance v0, Lcom/google/android/recaptcha/internal/zznd;

    invoke-direct {v0}, Lcom/google/android/recaptcha/internal/zznd;-><init>()V

    sput-object v0, Lcom/google/android/recaptcha/internal/zzne;->zzD:Lcom/google/android/recaptcha/internal/zziw;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/recaptcha/internal/zzne;->zzF:I

    return-void
.end method

.method public static values()[Lcom/google/android/recaptcha/internal/zzne;
    .locals 1

    sget-object v0, Lcom/google/android/recaptcha/internal/zzne;->zzE:[Lcom/google/android/recaptcha/internal/zzne;

    invoke-virtual {v0}, [Lcom/google/android/recaptcha/internal/zzne;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/recaptcha/internal/zzne;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/recaptcha/internal/zzne;->zza()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()I
    .locals 2

    sget-object v0, Lcom/google/android/recaptcha/internal/zzne;->zzC:Lcom/google/android/recaptcha/internal/zzne;

    if-eq p0, v0, :cond_0

    iget v0, p0, Lcom/google/android/recaptcha/internal/zzne;->zzF:I

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
