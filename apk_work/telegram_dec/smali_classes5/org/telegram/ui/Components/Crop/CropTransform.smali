.class public Lorg/telegram/ui/Components/Crop/CropTransform;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private cropAreaX:F

.field private cropAreaY:F

.field private cropOrientation:I

.field private cropPh:F

.field private cropPw:F

.field private cropPx:F

.field private cropPy:F

.field private cropRotation:F

.field private cropScale:F

.field private hasTransform:Z

.field private isMirrored:Z

.field private minScale:F

.field private trueCropScale:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Crop/CropTransform;->clone()Lorg/telegram/ui/Components/Crop/CropTransform;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/telegram/ui/Components/Crop/CropTransform;
    .locals 2

    .line 0
    new-instance v0, Lorg/telegram/ui/Components/Crop/CropTransform;

    invoke-direct {v0}, Lorg/telegram/ui/Components/Crop/CropTransform;-><init>()V

    iget-boolean v1, p0, Lorg/telegram/ui/Components/Crop/CropTransform;->hasTransform:Z

    iput-boolean v1, v0, Lorg/telegram/ui/Components/Crop/CropTransform;->hasTransform:Z

    iget v1, p0, Lorg/telegram/ui/Components/Crop/CropTransform;->cropPx:F

    iput v1, v0, Lorg/telegram/ui/Components/Crop/CropTransform;->cropPx:F

    iget v1, p0, Lorg/telegram/ui/Components/Crop/CropTransform;->cropPy:F

    iput v1, v0, Lorg/telegram/ui/Components/Crop/CropTransform;->cropPy:F

    iget v1, p0, Lorg/telegram/ui/Components/Crop/CropTransform;->cropAreaX:F

    iput v1, v0, Lorg/telegram/ui/Components/Crop/CropTransform;->cropAreaX:F

    iget v1, p0, Lorg/telegram/ui/Components/Crop/CropTransform;->cropAreaY:F

    iput v1, v0, Lorg/telegram/ui/Components/Crop/CropTransform;->cropAreaY:F

    iget v1, p0, Lorg/telegram/ui/Components/Crop/CropTransform;->cropScale:F

    iput v1, v0, Lorg/telegram/ui/Components/Crop/CropTransform;->cropScale:F

    iget v1, p0, Lorg/telegram/ui/Components/Crop/CropTransform;->cropRotation:F

    iput v1, v0, Lorg/telegram/ui/Components/Crop/CropTransform;->cropRotation:F

    iget-boolean v1, p0, Lorg/telegram/ui/Components/Crop/CropTransform;->isMirrored:Z

    iput-boolean v1, v0, Lorg/telegram/ui/Components/Crop/CropTransform;->isMirrored:Z

    iget v1, p0, Lorg/telegram/ui/Components/Crop/CropTransform;->cropOrientation:I

    iput v1, v0, Lorg/telegram/ui/Components/Crop/CropTransform;->cropOrientation:I

    iget v1, p0, Lorg/telegram/ui/Components/Crop/CropTransform;->cropPw:F

    iput v1, v0, Lorg/telegram/ui/Components/Crop/CropTransform;->cropPw:F

    iget v1, p0, Lorg/telegram/ui/Components/Crop/CropTransform;->cropPh:F

    iput v1, v0, Lorg/telegram/ui/Components/Crop/CropTransform;->cropPh:F

    iget v1, p0, Lorg/telegram/ui/Components/Crop/CropTransform;->trueCropScale:F

    iput v1, v0, Lorg/telegram/ui/Components/Crop/CropTransform;->trueCropScale:F

    iget v1, p0, Lorg/telegram/ui/Components/Crop/CropTransform;->minScale:F

    iput v1, v0, Lorg/telegram/ui/Components/Crop/CropTransform;->minScale:F

    return-object v0
.end method

.method public getCropAreaX()F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/Crop/CropTransform;->cropAreaX:F

    return v0
.end method

.method public getCropAreaY()F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/Crop/CropTransform;->cropAreaY:F

    return v0
.end method

.method public getCropPh()F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/Crop/CropTransform;->cropPh:F

    return v0
.end method

.method public getCropPw()F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/Crop/CropTransform;->cropPw:F

    return v0
.end method

.method public getCropPx()F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/Crop/CropTransform;->cropPx:F

    return v0
.end method

.method public getCropPy()F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/Crop/CropTransform;->cropPy:F

    return v0
.end method

.method public getMinScale()F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/Crop/CropTransform;->minScale:F

    return v0
.end method

.method public getOrientation()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/Crop/CropTransform;->cropOrientation:I

    return v0
.end method

.method public getRotation()F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/Crop/CropTransform;->cropRotation:F

    return v0
.end method

.method public getScale()F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/Crop/CropTransform;->cropScale:F

    return v0
.end method

.method public getTrueCropScale()F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/Crop/CropTransform;->trueCropScale:F

    return v0
.end method

.method public hasViewTransform()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Crop/CropTransform;->hasTransform:Z

    return v0
.end method

.method public isMirrored()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Crop/CropTransform;->isMirrored:Z

    return v0
.end method

.method public setViewTransform(Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Crop/CropTransform;->hasTransform:Z

    return-void
.end method

.method public setViewTransform(ZFFFIFFFFFFFZ)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Crop/CropTransform;->hasTransform:Z

    iput p2, p0, Lorg/telegram/ui/Components/Crop/CropTransform;->cropPx:F

    iput p3, p0, Lorg/telegram/ui/Components/Crop/CropTransform;->cropPy:F

    iput p6, p0, Lorg/telegram/ui/Components/Crop/CropTransform;->cropScale:F

    iput p4, p0, Lorg/telegram/ui/Components/Crop/CropTransform;->cropRotation:F

    iput p5, p0, Lorg/telegram/ui/Components/Crop/CropTransform;->cropOrientation:I

    :goto_0
    iget p1, p0, Lorg/telegram/ui/Components/Crop/CropTransform;->cropOrientation:I

    if-gez p1, :cond_0

    add-int/lit16 p1, p1, 0x168

    iput p1, p0, Lorg/telegram/ui/Components/Crop/CropTransform;->cropOrientation:I

    goto :goto_0

    :cond_0
    :goto_1
    iget p1, p0, Lorg/telegram/ui/Components/Crop/CropTransform;->cropOrientation:I

    const/16 p2, 0x168

    if-lt p1, p2, :cond_1

    add-int/lit16 p1, p1, -0x168

    iput p1, p0, Lorg/telegram/ui/Components/Crop/CropTransform;->cropOrientation:I

    goto :goto_1

    :cond_1
    iput p9, p0, Lorg/telegram/ui/Components/Crop/CropTransform;->cropPw:F

    iput p10, p0, Lorg/telegram/ui/Components/Crop/CropTransform;->cropPh:F

    iput p11, p0, Lorg/telegram/ui/Components/Crop/CropTransform;->cropAreaX:F

    iput p12, p0, Lorg/telegram/ui/Components/Crop/CropTransform;->cropAreaY:F

    iput p7, p0, Lorg/telegram/ui/Components/Crop/CropTransform;->trueCropScale:F

    iput p8, p0, Lorg/telegram/ui/Components/Crop/CropTransform;->minScale:F

    iput-boolean p13, p0, Lorg/telegram/ui/Components/Crop/CropTransform;->isMirrored:Z

    return-void
.end method
