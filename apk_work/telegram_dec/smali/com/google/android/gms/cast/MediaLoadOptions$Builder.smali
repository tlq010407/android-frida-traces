.class public Lcom/google/android/gms/cast/MediaLoadOptions$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/cast/MediaLoadOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private zza:Z

.field private zzb:J

.field private zzc:D

.field private zzd:[J

.field private zze:Lorg/json/JSONObject;

.field private zzf:Ljava/lang/String;

.field private zzg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/cast/MediaLoadOptions$Builder;->zza:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/cast/MediaLoadOptions$Builder;->zzb:J

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/google/android/gms/cast/MediaLoadOptions$Builder;->zzc:D

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/cast/MediaLoadOptions;
    .locals 12

    new-instance v11, Lcom/google/android/gms/cast/MediaLoadOptions;

    iget-boolean v1, p0, Lcom/google/android/gms/cast/MediaLoadOptions$Builder;->zza:Z

    iget-wide v2, p0, Lcom/google/android/gms/cast/MediaLoadOptions$Builder;->zzb:J

    iget-wide v4, p0, Lcom/google/android/gms/cast/MediaLoadOptions$Builder;->zzc:D

    iget-object v6, p0, Lcom/google/android/gms/cast/MediaLoadOptions$Builder;->zzd:[J

    iget-object v7, p0, Lcom/google/android/gms/cast/MediaLoadOptions$Builder;->zze:Lorg/json/JSONObject;

    iget-object v8, p0, Lcom/google/android/gms/cast/MediaLoadOptions$Builder;->zzf:Ljava/lang/String;

    iget-object v9, p0, Lcom/google/android/gms/cast/MediaLoadOptions$Builder;->zzg:Ljava/lang/String;

    const/4 v10, 0x0

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/cast/MediaLoadOptions;-><init>(ZJD[JLorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/cast/zzca;)V

    return-object v11
.end method

.method public setAutoplay(Z)Lcom/google/android/gms/cast/MediaLoadOptions$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/cast/MediaLoadOptions$Builder;->zza:Z

    return-object p0
.end method
