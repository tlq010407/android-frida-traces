.class public final Lcom/google/android/gms/vision/face/Landmark;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Landroid/graphics/PointF;

.field private final zzb:I


# direct methods
.method public constructor <init>(Landroid/graphics/PointF;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/vision/face/Landmark;->zza:Landroid/graphics/PointF;

    iput p2, p0, Lcom/google/android/gms/vision/face/Landmark;->zzb:I

    return-void
.end method


# virtual methods
.method public final getPosition()Landroid/graphics/PointF;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/vision/face/Landmark;->zza:Landroid/graphics/PointF;

    return-object v0
.end method

.method public final getType()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/vision/face/Landmark;->zzb:I

    return v0
.end method
