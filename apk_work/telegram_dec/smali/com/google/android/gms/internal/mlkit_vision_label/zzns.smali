.class public final Lcom/google/android/gms/internal/mlkit_vision_label/zzns;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_label/zznf;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/mlkit_vision_label/zzkg;

.field private zzb:Lcom/google/android/gms/internal/mlkit_vision_label/zzmh;

.field private final zzc:I


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_label/zzkg;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_label/zzmh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_label/zzmh;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_label/zzns;->zzb:Lcom/google/android/gms/internal/mlkit_vision_label/zzmh;

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_label/zzns;->zza:Lcom/google/android/gms/internal/mlkit_vision_label/zzkg;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_label/zzob;->zza()Lcom/google/android/gms/internal/mlkit_vision_label/zzob;

    iput p2, p0, Lcom/google/android/gms/internal/mlkit_vision_label/zzns;->zzc:I

    return-void
.end method

.method public static zzf(Lcom/google/android/gms/internal/mlkit_vision_label/zzkg;)Lcom/google/android/gms/internal/mlkit_vision_label/zznf;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_label/zzns;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_label/zzns;-><init>(Lcom/google/android/gms/internal/mlkit_vision_label/zzkg;I)V

    return-object v0
.end method

.method public static zzg(Lcom/google/android/gms/internal/mlkit_vision_label/zzkg;I)Lcom/google/android/gms/internal/mlkit_vision_label/zznf;
    .locals 1

    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_label/zzns;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_label/zzns;-><init>(Lcom/google/android/gms/internal/mlkit_vision_label/zzkg;I)V

    return-object p1
.end method


# virtual methods
.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_label/zzns;->zzc:I

    return v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/mlkit_vision_label/zzkf;)Lcom/google/android/gms/internal/mlkit_vision_label/zznf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_label/zzns;->zza:Lcom/google/android/gms/internal/mlkit_vision_label/zzkg;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_label/zzkg;->zzf(Lcom/google/android/gms/internal/mlkit_vision_label/zzkf;)Lcom/google/android/gms/internal/mlkit_vision_label/zzkg;

    return-object p0
.end method

.method public final zzc(Lcom/google/android/gms/internal/mlkit_vision_label/zzmh;)Lcom/google/android/gms/internal/mlkit_vision_label/zznf;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_label/zzns;->zzb:Lcom/google/android/gms/internal/mlkit_vision_label/zzmh;

    return-object p0
.end method

.method public final zzd()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_label/zzns;->zza:Lcom/google/android/gms/internal/mlkit_vision_label/zzkg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_label/zzkg;->zzj()Lcom/google/android/gms/internal/mlkit_vision_label/zzki;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_label/zzki;->zzf()Lcom/google/android/gms/internal/mlkit_vision_label/zzmj;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_label/zzmj;->zzk()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_label/zzt;->zzb(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_label/zzmj;->zzk()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, "NA"

    return-object v0
.end method

.method public final zze(IZ)[B
    .locals 2

    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_label/zzns;->zzb:Lcom/google/android/gms/internal/mlkit_vision_label/zzmh;

    xor-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    if-eq v1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_label/zzmh;->zzf(Ljava/lang/Boolean;)Lcom/google/android/gms/internal/mlkit_vision_label/zzmh;

    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_label/zzns;->zzb:Lcom/google/android/gms/internal/mlkit_vision_label/zzmh;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_label/zzmh;->zze(Ljava/lang/Boolean;)Lcom/google/android/gms/internal/mlkit_vision_label/zzmh;

    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_label/zzns;->zza:Lcom/google/android/gms/internal/mlkit_vision_label/zzkg;

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_label/zzns;->zzb:Lcom/google/android/gms/internal/mlkit_vision_label/zzmh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_label/zzmh;->zzm()Lcom/google/android/gms/internal/mlkit_vision_label/zzmj;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_label/zzkg;->zzi(Lcom/google/android/gms/internal/mlkit_vision_label/zzmj;)Lcom/google/android/gms/internal/mlkit_vision_label/zzkg;

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_label/zzob;->zza()Lcom/google/android/gms/internal/mlkit_vision_label/zzob;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_label/zzns;->zza:Lcom/google/android/gms/internal/mlkit_vision_label/zzkg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_label/zzkg;->zzj()Lcom/google/android/gms/internal/mlkit_vision_label/zzki;

    move-result-object p1

    new-instance p2, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;

    invoke-direct {p2}, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_label/zzip;->zza:Lcom/google/firebase/encoders/config/Configurator;

    invoke-virtual {p2, v0}, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->configureWith(Lcom/google/firebase/encoders/config/Configurator;)Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->ignoreNullValues(Z)Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->build()Lcom/google/firebase/encoders/DataEncoder;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/google/firebase/encoders/DataEncoder;->encode(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "utf-8"

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_label/zzns;->zza:Lcom/google/android/gms/internal/mlkit_vision_label/zzkg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_label/zzkg;->zzj()Lcom/google/android/gms/internal/mlkit_vision_label/zzki;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/mlkit_vision_label/zzcq;

    invoke-direct {p2}, Lcom/google/android/gms/internal/mlkit_vision_label/zzcq;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_label/zzip;->zza:Lcom/google/firebase/encoders/config/Configurator;

    invoke-interface {v0, p2}, Lcom/google/firebase/encoders/config/Configurator;->configure(Lcom/google/firebase/encoders/config/EncoderConfig;)V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_label/zzcq;->zza()Lcom/google/android/gms/internal/mlkit_vision_label/zzcr;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/mlkit_vision_label/zzcr;->zza(Ljava/lang/Object;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_1
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Failed to covert logging to UTF-8 byte array"

    invoke-direct {p2, v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method
