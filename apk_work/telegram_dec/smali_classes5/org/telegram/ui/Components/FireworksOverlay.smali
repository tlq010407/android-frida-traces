.class public Lorg/telegram/ui/Components/FireworksOverlay;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/FireworksOverlay$Particle;
    }
.end annotation


# static fields
.field private static colors:[I

.field private static final fallParticlesCount:I

.field private static heartColors:[I

.field private static heartDrawable:[Landroid/graphics/drawable/Drawable;

.field private static paint:[Landroid/graphics/Paint;

.field private static final particlesCount:I

.field private static starsColors:[I

.field private static starsDrawable:[Landroid/graphics/drawable/Drawable;


# instance fields
.field private fallingDownCount:I

.field private isFebruary14:Z

.field private lastUpdateTime:J

.field private particles:Ljava/util/ArrayList;

.field private rect:Landroid/graphics/RectF;

.field private speedCoef:F

.field private started:Z

.field private startedFall:Z

.field private withStars:Z


# direct methods
.method public static synthetic $r8$lambda$TdBXviA6ch6Fl3bB-7PGubx5g8s(Lorg/telegram/ui/Components/FireworksOverlay;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/FireworksOverlay;->lambda$onDraw$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x6

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0x32

    goto :goto_0

    :cond_0
    const/16 v2, 0x3c

    :goto_0
    sput v2, Lorg/telegram/ui/Components/FireworksOverlay;->particlesCount:I

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0x14

    goto :goto_1

    :cond_1
    const/16 v2, 0x1e

    :goto_1
    sput v2, Lorg/telegram/ui/Components/FireworksOverlay;->fallParticlesCount:I

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    sput-object v2, Lorg/telegram/ui/Components/FireworksOverlay;->colors:[I

    const v2, -0x249c9d

    const v3, -0x1c8950

    const v4, -0x1daa85

    const v5, -0xa0320e

    const/16 v6, -0x2597

    filled-new-array {v4, v5, v6, v2, v3}, [I

    move-result-object v2

    sput-object v2, Lorg/telegram/ui/Components/FireworksOverlay;->heartColors:[I

    const/16 v2, -0x68dc

    const v3, -0xd01e07

    const v4, -0xe17f01

    const v5, -0xef3977

    const v6, -0xa669

    filled-new-array {v4, v5, v6, v2, v3}, [I

    move-result-object v2

    sput-object v2, Lorg/telegram/ui/Components/FireworksOverlay;->starsColors:[I

    new-array v1, v1, [Landroid/graphics/Paint;

    sput-object v1, Lorg/telegram/ui/Components/FireworksOverlay;->paint:[Landroid/graphics/Paint;

    const/4 v1, 0x0

    :goto_2
    sget-object v2, Lorg/telegram/ui/Components/FireworksOverlay;->paint:[Landroid/graphics/Paint;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v0}, Landroid/graphics/Paint;-><init>(I)V

    aput-object v3, v2, v1

    sget-object v2, Lorg/telegram/ui/Components/FireworksOverlay;->paint:[Landroid/graphics/Paint;

    aget-object v2, v2, v1

    sget-object v3, Lorg/telegram/ui/Components/FireworksOverlay;->colors:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    add-int/2addr v1, v0

    goto :goto_2

    :cond_2
    return-void

    :array_0
    .array-data 4
        -0xd34318
        -0x61fb30
        -0x134fe
        -0x2dca9
        -0xd87302
        -0xa64794    # -2.8940005E38f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/FireworksOverlay;->rect:Landroid/graphics/RectF;

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lorg/telegram/ui/Components/FireworksOverlay;->speedCoef:F

    new-instance p1, Ljava/util/ArrayList;

    sget v0, Lorg/telegram/ui/Components/FireworksOverlay;->particlesCount:I

    sget v1, Lorg/telegram/ui/Components/FireworksOverlay;->fallParticlesCount:I

    add-int/2addr v0, v1

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/FireworksOverlay;->particles:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000()[Landroid/graphics/Paint;
    .locals 1

    sget-object v0, Lorg/telegram/ui/Components/FireworksOverlay;->paint:[Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/FireworksOverlay;)Landroid/graphics/RectF;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/FireworksOverlay;->rect:Landroid/graphics/RectF;

    return-object p0
.end method

.method static synthetic access$200()[Landroid/graphics/drawable/Drawable;
    .locals 1

    sget-object v0, Lorg/telegram/ui/Components/FireworksOverlay;->starsDrawable:[Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$300()[Landroid/graphics/drawable/Drawable;
    .locals 1

    sget-object v0, Lorg/telegram/ui/Components/FireworksOverlay;->heartDrawable:[Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/FireworksOverlay;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/FireworksOverlay;->speedCoef:F

    return p0
.end method

.method static synthetic access$508(Lorg/telegram/ui/Components/FireworksOverlay;)I
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Components/FireworksOverlay;->fallingDownCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/Components/FireworksOverlay;->fallingDownCount:I

    return v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/FireworksOverlay;)I
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/FireworksOverlay;->getHeightForAnimation()I

    move-result p0

    return p0
.end method

.method private createParticle(Z)Lorg/telegram/ui/Components/FireworksOverlay$Particle;
    .locals 8

    new-instance v0, Lorg/telegram/ui/Components/FireworksOverlay$Particle;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Components/FireworksOverlay$Particle;-><init>(Lorg/telegram/ui/Components/FireworksOverlay;Lorg/telegram/ui/Components/FireworksOverlay$1;)V

    :try_start_0
    sget-object v1, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-byte v1, v1

    iput-byte v1, v0, Lorg/telegram/ui/Components/FireworksOverlay$Particle;->type:B

    iget-boolean v3, p0, Lorg/telegram/ui/Components/FireworksOverlay;->isFebruary14:Z

    if-eqz v3, :cond_0

    if-nez v1, :cond_0

    iput-byte v2, v0, Lorg/telegram/ui/Components/FireworksOverlay$Particle;->type:B

    sget-object v1, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    sget-object v3, Lorg/telegram/ui/Components/FireworksOverlay;->heartColors:[I

    array-length v3, v3

    :goto_0
    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-byte v1, v1

    goto :goto_1

    :catch_0
    move-exception p1

    goto/16 :goto_7

    :cond_0
    iget-boolean v1, p0, Lorg/telegram/ui/Components/FireworksOverlay;->withStars:Z

    if-eqz v1, :cond_1

    sget-object v1, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1}, Ljava/util/Random;->nextBoolean()Z

    move-result v1

    if-eqz v1, :cond_1

    iput-byte v2, v0, Lorg/telegram/ui/Components/FireworksOverlay$Particle;->type:B

    sget-object v1, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    sget-object v3, Lorg/telegram/ui/Components/FireworksOverlay;->starsColors:[I

    array-length v3, v3

    goto :goto_0

    :cond_1
    sget-object v1, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    sget-object v3, Lorg/telegram/ui/Components/FireworksOverlay;->colors:[I

    array-length v3, v3

    goto :goto_0

    :goto_1
    iput-byte v1, v0, Lorg/telegram/ui/Components/FireworksOverlay$Particle;->colorType:B

    sget-object v1, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-byte v1, v1

    iput-byte v1, v0, Lorg/telegram/ui/Components/FireworksOverlay$Particle;->side:B

    sget-object v1, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    const/4 v3, 0x1

    add-int/2addr v1, v3

    int-to-byte v1, v1

    iput-byte v1, v0, Lorg/telegram/ui/Components/FireworksOverlay$Particle;->finishedStart:B

    iget-byte v1, v0, Lorg/telegram/ui/Components/FireworksOverlay$Particle;->type:B

    const/high16 v4, 0x40800000    # 4.0f

    if-eqz v1, :cond_3

    if-ne v1, v2, :cond_2

    goto :goto_3

    :cond_2
    sget-object v1, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    mul-float v1, v1, v4

    :goto_2
    add-float/2addr v1, v4

    float-to-int v1, v1

    int-to-byte v1, v1

    goto :goto_4

    :cond_3
    :goto_3
    sget-object v1, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    const/high16 v5, 0x40000000    # 2.0f

    mul-float v1, v1, v5

    goto :goto_2

    :goto_4
    iput-byte v1, v0, Lorg/telegram/ui/Components/FireworksOverlay$Particle;->typeSize:B

    const v1, 0x3f99999a    # 1.2f

    if-eqz p1, :cond_4

    sget-object p1, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {p1}, Ljava/util/Random;->nextFloat()F

    move-result p1

    neg-float p1, p1

    invoke-direct {p0}, Lorg/telegram/ui/Components/FireworksOverlay;->getHeightForAnimation()I

    move-result v2

    int-to-float v2, v2

    mul-float p1, p1, v2

    mul-float p1, p1, v1

    iput p1, v0, Lorg/telegram/ui/Components/FireworksOverlay$Particle;->y:F

    const/high16 p1, 0x40a00000    # 5.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    sget-object v1, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-direct {p0}, Lorg/telegram/ui/Components/FireworksOverlay;->getWidthForAnimation()I

    move-result v2

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v2, v4

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr p1, v1

    int-to-float p1, p1

    iput p1, v0, Lorg/telegram/ui/Components/FireworksOverlay$Particle;->x:F

    iget-byte p1, v0, Lorg/telegram/ui/Components/FireworksOverlay$Particle;->finishedStart:B

    iput-byte p1, v0, Lorg/telegram/ui/Components/FireworksOverlay$Particle;->xFinished:B

    goto :goto_8

    :cond_4
    sget-object p1, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    const/16 v5, 0xa

    invoke-virtual {p1, v5}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x4

    int-to-float p1, p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    invoke-direct {p0}, Lorg/telegram/ui/Components/FireworksOverlay;->getHeightForAnimation()I

    move-result v5

    div-int/lit8 v5, v5, 0x4

    iget-byte v6, v0, Lorg/telegram/ui/Components/FireworksOverlay$Particle;->side:B

    if-nez v6, :cond_5

    neg-int p1, p1

    int-to-float p1, p1

    goto :goto_5

    :cond_5
    invoke-direct {p0}, Lorg/telegram/ui/Components/FireworksOverlay;->getWidthForAnimation()I

    move-result v6

    add-int/2addr v6, p1

    int-to-float p1, v6

    :goto_5
    iput p1, v0, Lorg/telegram/ui/Components/FireworksOverlay$Particle;->x:F

    iget-byte p1, v0, Lorg/telegram/ui/Components/FireworksOverlay$Particle;->side:B

    if-nez p1, :cond_6

    const/4 p1, 0x1

    goto :goto_6

    :cond_6
    const/4 p1, -0x1

    :goto_6
    int-to-float p1, p1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    sget-object v6, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v6}, Ljava/util/Random;->nextFloat()F

    move-result v6

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    mul-float v6, v6, v7

    add-float/2addr v1, v6

    mul-float p1, p1, v1

    iput p1, v0, Lorg/telegram/ui/Components/FireworksOverlay$Particle;->moveX:F

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    sget-object v1, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    mul-float v1, v1, v4

    add-float/2addr p1, v1

    neg-float p1, p1

    iput p1, v0, Lorg/telegram/ui/Components/FireworksOverlay$Particle;->moveY:F

    div-int/lit8 p1, v5, 0x2

    sget-object v1, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    mul-int/lit8 v5, v5, 0x2

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr p1, v1

    int-to-float p1, p1

    iput p1, v0, Lorg/telegram/ui/Components/FireworksOverlay$Particle;->y:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :goto_7
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_8
    return-object v0
.end method

.method private getHeightForAnimation()I
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method private getWidthForAnimation()I
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method private synthetic lambda$onDraw$0()V
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/FireworksOverlay;->started:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private loadHeartDrawables()V
    .locals 5

    sget-object v0, Lorg/telegram/ui/Components/FireworksOverlay;->heartDrawable:[Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lorg/telegram/ui/Components/FireworksOverlay;->heartColors:[I

    array-length v0, v0

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    sput-object v0, Lorg/telegram/ui/Components/FireworksOverlay;->heartDrawable:[Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lorg/telegram/ui/Components/FireworksOverlay;->heartDrawable:[Landroid/graphics/drawable/Drawable;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->heart_confetti:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, v0

    sget-object v1, Lorg/telegram/ui/Components/FireworksOverlay;->heartDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v0

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v3, Lorg/telegram/ui/Components/FireworksOverlay;->heartColors:[I

    aget v3, v3, v0

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private loadStarsDrawables()V
    .locals 5

    sget-object v0, Lorg/telegram/ui/Components/FireworksOverlay;->starsDrawable:[Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lorg/telegram/ui/Components/FireworksOverlay;->starsColors:[I

    array-length v0, v0

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    sput-object v0, Lorg/telegram/ui/Components/FireworksOverlay;->starsDrawable:[Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lorg/telegram/ui/Components/FireworksOverlay;->starsDrawable:[Landroid/graphics/drawable/Drawable;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_settings_premium:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, v0

    sget-object v1, Lorg/telegram/ui/Components/FireworksOverlay;->starsDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v0

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v3, Lorg/telegram/ui/Components/FireworksOverlay;->starsColors:[I

    aget v3, v3, v0

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private startFall()V
    .locals 4

    iget-boolean v0, p0, Lorg/telegram/ui/Components/FireworksOverlay;->startedFall:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/FireworksOverlay;->startedFall:Z

    const/4 v1, 0x0

    :goto_0
    sget v2, Lorg/telegram/ui/Components/FireworksOverlay;->fallParticlesCount:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Components/FireworksOverlay;->particles:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/FireworksOverlay;->createParticle(Z)Lorg/telegram/ui/Components/FireworksOverlay$Particle;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public isStarted()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/FireworksOverlay;->started:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/ui/Components/FireworksOverlay;->lastUpdateTime:J

    sub-long v2, v0, v2

    long-to-int v3, v2

    iput-wide v0, p0, Lorg/telegram/ui/Components/FireworksOverlay;->lastUpdateTime:J

    const/16 v0, 0x12

    if-le v3, v0, :cond_0

    const/16 v3, 0x10

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/FireworksOverlay;->particles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v4, p0, Lorg/telegram/ui/Components/FireworksOverlay;->particles:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/FireworksOverlay$Particle;

    invoke-static {v4, p1}, Lorg/telegram/ui/Components/FireworksOverlay$Particle;->access$800(Lorg/telegram/ui/Components/FireworksOverlay$Particle;Landroid/graphics/Canvas;)V

    invoke-static {v4, v3}, Lorg/telegram/ui/Components/FireworksOverlay$Particle;->access$900(Lorg/telegram/ui/Components/FireworksOverlay$Particle;I)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/telegram/ui/Components/FireworksOverlay;->particles:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v0, v0, -0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget p1, p0, Lorg/telegram/ui/Components/FireworksOverlay;->fallingDownCount:I

    sget v0, Lorg/telegram/ui/Components/FireworksOverlay;->particlesCount:I

    div-int/lit8 v0, v0, 0x2

    if-lt p1, v0, :cond_3

    iget p1, p0, Lorg/telegram/ui/Components/FireworksOverlay;->speedCoef:F

    const v0, 0x3e4ccccd    # 0.2f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_3

    invoke-direct {p0}, Lorg/telegram/ui/Components/FireworksOverlay;->startFall()V

    iget p1, p0, Lorg/telegram/ui/Components/FireworksOverlay;->speedCoef:F

    int-to-float v2, v3

    const/high16 v3, 0x41800000    # 16.0f

    div-float/2addr v2, v3

    const v3, 0x3e19999a    # 0.15f

    mul-float v2, v2, v3

    sub-float/2addr p1, v2

    iput p1, p0, Lorg/telegram/ui/Components/FireworksOverlay;->speedCoef:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_3

    iput v0, p0, Lorg/telegram/ui/Components/FireworksOverlay;->speedCoef:F

    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/FireworksOverlay;->particles:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_1

    :cond_4
    iput-boolean v1, p0, Lorg/telegram/ui/Components/FireworksOverlay;->started:Z

    new-instance p1, Lorg/telegram/ui/Components/FireworksOverlay$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/FireworksOverlay$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/FireworksOverlay;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/FireworksOverlay;->onStop()V

    :goto_1
    return-void
.end method

.method protected onStop()V
    .locals 0

    return-void
.end method

.method public start()V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/FireworksOverlay;->start(Z)V

    return-void
.end method

.method public start(Z)V
    .locals 6

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/FireworksOverlay;->withStars:Z

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/FireworksOverlay;->started:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/telegram/ui/Components/FireworksOverlay;->startedFall:Z

    iput v2, p0, Lorg/telegram/ui/Components/FireworksOverlay;->fallingDownCount:I

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lorg/telegram/ui/Components/FireworksOverlay;->speedCoef:F

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-nez v1, :cond_1

    const/16 v1, 0xe

    if-ne v4, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    iput-boolean v0, p0, Lorg/telegram/ui/Components/FireworksOverlay;->isFebruary14:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lorg/telegram/ui/Components/FireworksOverlay;->loadHeartDrawables()V

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    invoke-direct {p0}, Lorg/telegram/ui/Components/FireworksOverlay;->loadStarsDrawables()V

    :cond_3
    :goto_1
    sget p1, Lorg/telegram/ui/Components/FireworksOverlay;->particlesCount:I

    iget-object v0, p0, Lorg/telegram/ui/Components/FireworksOverlay;->particles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int v0, p1, v0

    div-int/lit8 v1, p1, 0x3

    invoke-static {v0, p1, v1}, Lorg/telegram/messenger/Utilities;->clamp(III)I

    move-result p1

    const/4 v0, 0x0

    :goto_2
    if-ge v0, p1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/Components/FireworksOverlay;->particles:Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/FireworksOverlay;->createParticle(Z)Lorg/telegram/ui/Components/FireworksOverlay$Particle;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
