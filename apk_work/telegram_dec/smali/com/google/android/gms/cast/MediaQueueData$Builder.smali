.class public Lcom/google/android/gms/cast/MediaQueueData$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/cast/MediaQueueData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/cast/MediaQueueData;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/cast/MediaQueueData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/cast/MediaQueueData;-><init>(Lcom/google/android/gms/cast/zzch;)V

    iput-object v0, p0, Lcom/google/android/gms/cast/MediaQueueData$Builder;->zza:Lcom/google/android/gms/cast/MediaQueueData;

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/cast/MediaQueueData;
    .locals 3

    new-instance v0, Lcom/google/android/gms/cast/MediaQueueData;

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaQueueData$Builder;->zza:Lcom/google/android/gms/cast/MediaQueueData;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/cast/MediaQueueData;-><init>(Lcom/google/android/gms/cast/MediaQueueData;Lcom/google/android/gms/cast/zzch;)V

    return-object v0
.end method

.method public final zza(Lorg/json/JSONObject;)Lcom/google/android/gms/cast/MediaQueueData$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaQueueData$Builder;->zza:Lcom/google/android/gms/cast/MediaQueueData;

    invoke-static {v0, p1}, Lcom/google/android/gms/cast/MediaQueueData;->zzb(Lcom/google/android/gms/cast/MediaQueueData;Lorg/json/JSONObject;)V

    return-object p0
.end method
