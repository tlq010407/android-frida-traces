.class public Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WeavingState"
.end annotation


# instance fields
.field blueKey1:I

.field blueKey2:I

.field color1:I

.field color2:I

.field color3:I

.field private final currentState:I

.field private duration:F

.field greenKey1:I

.field greenKey2:I

.field private final matrix:Landroid/graphics/Matrix;

.field mutedByAdmin:I

.field mutedByAdmin2:I

.field mutedByAdmin3:I

.field public shader:Landroid/graphics/Shader;

.field private startX:F

.field private startY:F

.field private targetX:F

.field private targetY:F

.field private time:F


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;->targetX:F

    iput v0, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;->targetY:F

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;->matrix:Landroid/graphics/Matrix;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_topPanelGreen1:I

    iput v0, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;->greenKey1:I

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_topPanelGreen2:I

    iput v0, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;->greenKey2:I

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_topPanelBlue1:I

    iput v0, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;->blueKey1:I

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_topPanelBlue2:I

    iput v0, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;->blueKey2:I

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_mutedByAdminGradient:I

    iput v0, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;->mutedByAdmin:I

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_mutedByAdminGradient2:I

    iput v0, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;->mutedByAdmin2:I

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_mutedByAdminGradient3:I

    iput v0, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;->mutedByAdmin3:I

    iput p1, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;->currentState:I

    invoke-direct {p0}, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;->createGradients()V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;->currentState:I

    return p0
.end method

.method private createGradients()V
    .locals 18

    move-object/from16 v0, p0

    const/4 v1, 0x3

    iget v2, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;->currentState:I

    if-nez v2, :cond_0

    new-instance v1, Landroid/graphics/RadialGradient;

    iget v2, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;->greenKey1:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;->color1:I

    iget v3, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;->greenKey2:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    iput v3, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;->color2:I

    filled-new-array {v2, v3}, [I

    move-result-object v7

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/high16 v6, 0x43480000    # 200.0f

    const/4 v8, 0x0

    const/high16 v4, 0x43480000    # 200.0f

    const/high16 v5, 0x43480000    # 200.0f

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    :goto_0
    iput-object v1, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;->shader:Landroid/graphics/Shader;

    goto :goto_1

    :cond_0
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    new-instance v1, Landroid/graphics/RadialGradient;

    iget v2, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;->blueKey1:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;->color1:I

    iget v3, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;->blueKey2:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    iput v3, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;->color2:I

    filled-new-array {v2, v3}, [I

    move-result-object v8

    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/high16 v7, 0x43480000    # 200.0f

    const/4 v9, 0x0

    const/high16 v5, 0x43480000    # 200.0f

    const/high16 v6, 0x43480000    # 200.0f

    move-object v4, v1

    invoke-direct/range {v4 .. v10}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    goto :goto_0

    :cond_1
    if-ne v2, v1, :cond_2

    new-instance v2, Landroid/graphics/RadialGradient;

    iget v3, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;->mutedByAdmin:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    iput v3, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;->color1:I

    iget v4, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;->mutedByAdmin3:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    iput v4, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;->color3:I

    iget v5, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;->mutedByAdmin2:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    iput v5, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;->color2:I

    filled-new-array {v3, v4, v5}, [I

    move-result-object v15

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    sget-object v17, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/high16 v13, 0x43480000    # 200.0f

    const/high16 v14, 0x43480000    # 200.0f

    const/high16 v12, 0x43480000    # 200.0f

    move-object v11, v2

    move-object/from16 v16, v1

    invoke-direct/range {v11 .. v17}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;->shader:Landroid/graphics/Shader;

    :cond_2
    :goto_1
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public checkColor()V
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;->currentState:I

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;->color1:I

    iget v1, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;->greenKey1:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    if-ne v0, v1, :cond_2

    iget v0, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;->color2:I

    iget v1, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;->greenKey2:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    if-eq v0, v1, :cond_3

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;->color1:I

    iget v1, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;->blueKey1:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    if-ne v0, v1, :cond_2

    iget v0, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;->color2:I

    iget v1, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;->blueKey2:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    if-eq v0, v1, :cond_3

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    iget v0, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;->color1:I

    iget v1, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;->mutedByAdmin:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    if-ne v0, v1, :cond_2

    iget v0, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;->color2:I

    iget v1, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;->mutedByAdmin2:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    if-eq v0, v1, :cond_3

    :cond_2
    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;->createGradients()V

    :cond_3
    return-void
.end method

.method public setToPaint(Landroid/graphics/Paint;)V
    .locals 4

    iget v0, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;->currentState:I

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-eqz v0, :cond_1

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_topPanelGray:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_3

    :cond_1
    :goto_1
    const/16 v0, 0x200

    invoke-static {v0}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget v0, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;->currentState:I

    const/high16 v1, 0x3f000000    # 0.5f

    if-ne v0, v2, :cond_2

    iget v0, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;->color1:I

    iget v2, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;->color2:I

    invoke-static {v0, v2, v1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    iget v2, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;->color3:I

    :goto_2
    invoke-static {v0, v2, v1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    goto :goto_0

    :cond_2
    iget v0, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;->color1:I

    iget v2, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;->color2:I

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;->shader:Landroid/graphics/Shader;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :goto_3
    return-void
.end method

.method public update(IIJF)V
    .locals 13

    move-object v0, p0

    iget v1, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;->currentState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    iget v1, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;->duration:F

    const/4 v2, 0x0

    const/4 v3, 0x3

    cmpl-float v4, v1, v2

    if-eqz v4, :cond_1

    iget v4, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;->time:F

    cmpl-float v1, v4, v1

    if-ltz v1, :cond_7

    :cond_1
    sget-object v1, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    const/16 v4, 0x2bc

    invoke-virtual {v1, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit16 v1, v1, 0x1f4

    int-to-float v1, v1

    iput v1, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;->duration:F

    iput v2, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;->time:F

    iget v1, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;->targetX:F

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v4, 0x40800000    # 4.0f

    const v5, 0x3f8ccccd    # 1.1f

    const v6, 0x3e99999a    # 0.3f

    const v7, 0x3e4ccccd    # 0.2f

    const v8, 0x3f333333    # 0.7f

    const v9, -0x41666666    # -0.3f

    const v10, 0x3d4ccccd    # 0.05f

    const/high16 v11, 0x42c80000    # 100.0f

    const/16 v12, 0x64

    cmpl-float v1, v1, v2

    if-nez v1, :cond_4

    iget v1, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;->currentState:I

    if-ne v1, v3, :cond_2

    sget-object v1, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1, v12}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v10

    div-float/2addr v1, v11

    add-float/2addr v1, v9

    iput v1, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;->targetX:F

    sget-object v1, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1, v12}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v10

    :goto_0
    div-float/2addr v1, v11

    add-float/2addr v1, v8

    :goto_1
    iput v1, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;->targetY:F

    goto :goto_2

    :cond_2
    if-nez v1, :cond_3

    sget-object v1, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1, v12}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v7

    div-float/2addr v1, v11

    add-float/2addr v1, v9

    iput v1, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;->targetX:F

    sget-object v1, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1, v12}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v6

    goto :goto_0

    :cond_3
    sget-object v1, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1, v12}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v11

    mul-float v1, v1, v7

    add-float/2addr v1, v5

    iput v1, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;->targetX:F

    sget-object v1, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1, v12}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v4

    div-float/2addr v1, v11

    goto :goto_1

    :cond_4
    :goto_2
    iget v1, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;->targetX:F

    iput v1, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;->startX:F

    iget v1, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;->targetY:F

    iput v1, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;->startY:F

    iget v1, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;->currentState:I

    if-ne v1, v3, :cond_5

    sget-object v1, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1, v12}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v10

    div-float/2addr v1, v11

    add-float/2addr v1, v9

    iput v1, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;->targetX:F

    sget-object v1, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1, v12}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v10

    :goto_3
    div-float/2addr v1, v11

    add-float/2addr v1, v8

    :goto_4
    iput v1, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;->targetY:F

    goto :goto_5

    :cond_5
    if-nez v1, :cond_6

    sget-object v1, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1, v12}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v7

    div-float/2addr v1, v11

    add-float/2addr v1, v9

    iput v1, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;->targetX:F

    sget-object v1, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1, v12}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v6

    goto :goto_3

    :cond_6
    sget-object v1, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1, v12}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v11

    mul-float v1, v1, v7

    add-float/2addr v1, v5

    iput v1, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;->targetX:F

    sget-object v1, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1, v12}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v4

    div-float/2addr v1, v11

    goto :goto_4

    :cond_7
    :goto_5
    iget v1, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;->time:F

    move-wide/from16 v4, p3

    long-to-float v2, v4

    sget v4, Lorg/telegram/ui/Components/BlobDrawable;->GRADIENT_SPEED_MIN:F

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    mul-float v4, v4, v2

    sget v5, Lorg/telegram/ui/Components/BlobDrawable;->GRADIENT_SPEED_MAX:F

    const/high16 v6, 0x40000000    # 2.0f

    mul-float v5, v5, v6

    mul-float v2, v2, v5

    mul-float v2, v2, p5

    add-float/2addr v4, v2

    add-float/2addr v1, v4

    iput v1, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;->time:F

    iget v2, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;->duration:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_8

    iput v2, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;->time:F

    :cond_8
    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iget v4, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;->time:F

    div-float/2addr v4, v2

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v1

    move v2, p2

    int-to-float v2, v2

    iget v4, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;->startX:F

    iget v5, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;->targetX:F

    sub-float/2addr v5, v4

    mul-float v5, v5, v1

    add-float/2addr v4, v5

    mul-float v4, v4, v2

    const/high16 v5, 0x43480000    # 200.0f

    sub-float/2addr v4, v5

    move v6, p1

    int-to-float v6, v6

    iget v7, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;->startY:F

    iget v8, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;->targetY:F

    sub-float/2addr v8, v7

    mul-float v8, v8, v1

    add-float/2addr v7, v8

    mul-float v6, v6, v7

    sub-float/2addr v6, v5

    const/high16 v1, 0x43c80000    # 400.0f

    div-float/2addr v2, v1

    iget v1, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;->currentState:I

    if-eqz v1, :cond_a

    if-ne v1, v3, :cond_9

    goto :goto_6

    :cond_9
    const/high16 v1, 0x3fc00000    # 1.5f

    goto :goto_7

    :cond_a
    :goto_6
    const/high16 v1, 0x40400000    # 3.0f

    :goto_7
    mul-float v2, v2, v1

    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v4, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;->matrix:Landroid/graphics/Matrix;

    add-float/2addr v4, v5

    add-float/2addr v6, v5

    invoke-virtual {v1, v2, v2, v4, v6}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;->shader:Landroid/graphics/Shader;

    iget-object v2, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method
