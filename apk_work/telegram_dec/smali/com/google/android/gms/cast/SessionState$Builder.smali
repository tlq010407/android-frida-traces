.class public Lcom/google/android/gms/cast/SessionState$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/cast/SessionState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private zza:Lcom/google/android/gms/cast/MediaLoadRequestData;

.field private zzb:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/cast/SessionState;
    .locals 3

    new-instance v0, Lcom/google/android/gms/cast/SessionState;

    iget-object v1, p0, Lcom/google/android/gms/cast/SessionState$Builder;->zza:Lcom/google/android/gms/cast/MediaLoadRequestData;

    iget-object v2, p0, Lcom/google/android/gms/cast/SessionState$Builder;->zzb:Lorg/json/JSONObject;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/cast/SessionState;-><init>(Lcom/google/android/gms/cast/MediaLoadRequestData;Lorg/json/JSONObject;)V

    return-object v0
.end method

.method public setLoadRequestData(Lcom/google/android/gms/cast/MediaLoadRequestData;)Lcom/google/android/gms/cast/SessionState$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/SessionState$Builder;->zza:Lcom/google/android/gms/cast/MediaLoadRequestData;

    return-object p0
.end method
