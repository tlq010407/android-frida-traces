.class final Lcom/google/android/gms/cast/framework/media/internal/zzq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/cast/framework/media/internal/zza;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/cast/framework/media/internal/zzv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/framework/media/internal/zzv;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzq;->zza:Lcom/google/android/gms/cast/framework/media/internal/zzv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Landroid/graphics/Bitmap;)V
    .locals 8

    sget v0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->$r8$clinit:I

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v2, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    const/high16 v4, 0x41100000    # 9.0f

    mul-float v4, v4, v2

    const/high16 v5, 0x41800000    # 16.0f

    div-float/2addr v4, v5

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v4, v4

    sub-int v5, v4, v3

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    int-to-float v3, v3

    add-float/2addr v3, v5

    new-instance v6, Landroid/graphics/RectF;

    const/4 v7, 0x0

    invoke-direct {v6, v7, v5, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    if-nez v2, :cond_1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :cond_1
    invoke-static {v1, v4, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, p1, v0, v6, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    move-object v0, v1

    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzq;->zza:Lcom/google/android/gms/cast/framework/media/internal/zzv;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzg(Lcom/google/android/gms/cast/framework/media/internal/zzv;Landroid/graphics/Bitmap;I)V

    return-void
.end method
