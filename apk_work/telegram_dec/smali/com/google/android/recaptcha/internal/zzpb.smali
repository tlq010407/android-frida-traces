.class public final enum Lcom/google/android/recaptcha/internal/zzpb;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/recaptcha/internal/zziv;


# static fields
.field public static final enum zza:Lcom/google/android/recaptcha/internal/zzpb;

.field public static final enum zzb:Lcom/google/android/recaptcha/internal/zzpb;

.field public static final enum zzc:Lcom/google/android/recaptcha/internal/zzpb;

.field public static final enum zzd:Lcom/google/android/recaptcha/internal/zzpb;

.field public static final enum zze:Lcom/google/android/recaptcha/internal/zzpb;

.field public static final enum zzf:Lcom/google/android/recaptcha/internal/zzpb;

.field public static final enum zzg:Lcom/google/android/recaptcha/internal/zzpb;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum zzh:Lcom/google/android/recaptcha/internal/zzpb;

.field public static final enum zzi:Lcom/google/android/recaptcha/internal/zzpb;

.field public static final enum zzj:Lcom/google/android/recaptcha/internal/zzpb;

.field public static final enum zzk:Lcom/google/android/recaptcha/internal/zzpb;

.field private static final zzl:Lcom/google/android/recaptcha/internal/zziw;

.field private static final synthetic zzm:[Lcom/google/android/recaptcha/internal/zzpb;


# instance fields
.field private final zzn:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/google/android/recaptcha/internal/zzpb;

    const-string v1, "JS_CODE_UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/recaptcha/internal/zzpb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/recaptcha/internal/zzpb;->zza:Lcom/google/android/recaptcha/internal/zzpb;

    new-instance v1, Lcom/google/android/recaptcha/internal/zzpb;

    const-string v3, "JS_CODE_SUCCESS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/google/android/recaptcha/internal/zzpb;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/recaptcha/internal/zzpb;->zzb:Lcom/google/android/recaptcha/internal/zzpb;

    new-instance v3, Lcom/google/android/recaptcha/internal/zzpb;

    const-string v5, "JS_NETWORK_ERROR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/google/android/recaptcha/internal/zzpb;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/recaptcha/internal/zzpb;->zzc:Lcom/google/android/recaptcha/internal/zzpb;

    new-instance v5, Lcom/google/android/recaptcha/internal/zzpb;

    const-string v7, "JS_INTERNAL_ERROR"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/google/android/recaptcha/internal/zzpb;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/android/recaptcha/internal/zzpb;->zzd:Lcom/google/android/recaptcha/internal/zzpb;

    new-instance v7, Lcom/google/android/recaptcha/internal/zzpb;

    const-string v9, "JS_INVALID_SITE_KEY"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/google/android/recaptcha/internal/zzpb;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/google/android/recaptcha/internal/zzpb;->zze:Lcom/google/android/recaptcha/internal/zzpb;

    new-instance v9, Lcom/google/android/recaptcha/internal/zzpb;

    const-string v11, "JS_INVALID_SITE_KEY_TYPE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/google/android/recaptcha/internal/zzpb;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/google/android/recaptcha/internal/zzpb;->zzf:Lcom/google/android/recaptcha/internal/zzpb;

    new-instance v11, Lcom/google/android/recaptcha/internal/zzpb;

    const-string v13, "JS_3P_APP_PACKAGE_NAME_NOT_ALLOWED"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/google/android/recaptcha/internal/zzpb;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/google/android/recaptcha/internal/zzpb;->zzg:Lcom/google/android/recaptcha/internal/zzpb;

    new-instance v13, Lcom/google/android/recaptcha/internal/zzpb;

    const-string v15, "JS_INVALID_ACTION"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lcom/google/android/recaptcha/internal/zzpb;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/google/android/recaptcha/internal/zzpb;->zzh:Lcom/google/android/recaptcha/internal/zzpb;

    new-instance v15, Lcom/google/android/recaptcha/internal/zzpb;

    const-string v14, "JS_THIRD_PARTY_APP_PACKAGE_NAME_NOT_ALLOWED"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lcom/google/android/recaptcha/internal/zzpb;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/google/android/recaptcha/internal/zzpb;->zzi:Lcom/google/android/recaptcha/internal/zzpb;

    new-instance v14, Lcom/google/android/recaptcha/internal/zzpb;

    const-string v12, "JS_PROGRAM_ERROR"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v10}, Lcom/google/android/recaptcha/internal/zzpb;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/google/android/recaptcha/internal/zzpb;->zzj:Lcom/google/android/recaptcha/internal/zzpb;

    new-instance v12, Lcom/google/android/recaptcha/internal/zzpb;

    const/16 v10, 0xa

    const/4 v8, -0x1

    const-string v6, "UNRECOGNIZED"

    invoke-direct {v12, v6, v10, v8}, Lcom/google/android/recaptcha/internal/zzpb;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/google/android/recaptcha/internal/zzpb;->zzk:Lcom/google/android/recaptcha/internal/zzpb;

    const/16 v6, 0xb

    new-array v6, v6, [Lcom/google/android/recaptcha/internal/zzpb;

    aput-object v0, v6, v2

    aput-object v1, v6, v4

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v9, v6, v0

    const/4 v0, 0x6

    aput-object v11, v6, v0

    const/4 v0, 0x7

    aput-object v13, v6, v0

    const/16 v0, 0x8

    aput-object v15, v6, v0

    const/16 v0, 0x9

    aput-object v14, v6, v0

    aput-object v12, v6, v10

    sput-object v6, Lcom/google/android/recaptcha/internal/zzpb;->zzm:[Lcom/google/android/recaptcha/internal/zzpb;

    new-instance v0, Lcom/google/android/recaptcha/internal/zzpa;

    invoke-direct {v0}, Lcom/google/android/recaptcha/internal/zzpa;-><init>()V

    sput-object v0, Lcom/google/android/recaptcha/internal/zzpb;->zzl:Lcom/google/android/recaptcha/internal/zziw;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/recaptcha/internal/zzpb;->zzn:I

    return-void
.end method

.method public static values()[Lcom/google/android/recaptcha/internal/zzpb;
    .locals 1

    sget-object v0, Lcom/google/android/recaptcha/internal/zzpb;->zzm:[Lcom/google/android/recaptcha/internal/zzpb;

    invoke-virtual {v0}, [Lcom/google/android/recaptcha/internal/zzpb;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/recaptcha/internal/zzpb;

    return-object v0
.end method

.method public static zzb(I)Lcom/google/android/recaptcha/internal/zzpb;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/google/android/recaptcha/internal/zzpb;->zzj:Lcom/google/android/recaptcha/internal/zzpb;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/google/android/recaptcha/internal/zzpb;->zzi:Lcom/google/android/recaptcha/internal/zzpb;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/google/android/recaptcha/internal/zzpb;->zzh:Lcom/google/android/recaptcha/internal/zzpb;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/google/android/recaptcha/internal/zzpb;->zzg:Lcom/google/android/recaptcha/internal/zzpb;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/google/android/recaptcha/internal/zzpb;->zzf:Lcom/google/android/recaptcha/internal/zzpb;

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/google/android/recaptcha/internal/zzpb;->zze:Lcom/google/android/recaptcha/internal/zzpb;

    return-object p0

    :pswitch_6
    sget-object p0, Lcom/google/android/recaptcha/internal/zzpb;->zzd:Lcom/google/android/recaptcha/internal/zzpb;

    return-object p0

    :pswitch_7
    sget-object p0, Lcom/google/android/recaptcha/internal/zzpb;->zzc:Lcom/google/android/recaptcha/internal/zzpb;

    return-object p0

    :pswitch_8
    sget-object p0, Lcom/google/android/recaptcha/internal/zzpb;->zzb:Lcom/google/android/recaptcha/internal/zzpb;

    return-object p0

    :pswitch_9
    sget-object p0, Lcom/google/android/recaptcha/internal/zzpb;->zza:Lcom/google/android/recaptcha/internal/zzpb;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/recaptcha/internal/zzpb;->zza()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()I
    .locals 2

    sget-object v0, Lcom/google/android/recaptcha/internal/zzpb;->zzk:Lcom/google/android/recaptcha/internal/zzpb;

    if-eq p0, v0, :cond_0

    iget v0, p0, Lcom/google/android/recaptcha/internal/zzpb;->zzn:I

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
