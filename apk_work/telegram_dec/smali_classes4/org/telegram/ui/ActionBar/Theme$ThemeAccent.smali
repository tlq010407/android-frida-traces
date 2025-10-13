.class public Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ActionBar/Theme;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThemeAccent"
.end annotation


# instance fields
.field public accentColor:I

.field public accentColor2:I

.field public account:I

.field public backgroundGradientOverrideColor1:J

.field public backgroundGradientOverrideColor2:J

.field public backgroundGradientOverrideColor3:J

.field public backgroundOverrideColor:J

.field public backgroundRotation:I

.field public id:I

.field public info:Lorg/telegram/tgnet/TLRPC$TL_theme;

.field public isDefault:Z

.field public myMessagesAccentColor:I

.field public myMessagesAnimated:Z

.field public myMessagesGradientAccentColor1:I

.field public myMessagesGradientAccentColor2:I

.field public myMessagesGradientAccentColor3:I

.field public overrideWallpaper:Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;

.field public parentTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

.field public pattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

.field public patternIntensity:F

.field public patternMotion:Z

.field public patternSlug:Ljava/lang/String;

.field private tempHSV:[F

.field public uploadedFile:Lorg/telegram/tgnet/TLRPC$InputFile;

.field public uploadedThumb:Lorg/telegram/tgnet/TLRPC$InputFile;

.field public uploadingFile:Ljava/lang/String;

.field public uploadingThumb:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2d

    iput v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundRotation:I

    const-string v0, ""

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->patternSlug:Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    return-void
.end method

.method private varargs averageColor(Landroid/util/SparseIntArray;[I)I
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    array-length v6, p2

    if-ge v1, v6, :cond_1

    aget v6, p2, v1

    invoke-virtual {p1, v6}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v6

    if-gez v6, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    aget v6, p2, v1

    invoke-virtual {p1, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    invoke-static {v6}, Landroid/graphics/Color;->red(I)I

    move-result v7

    add-int/2addr v5, v7

    invoke-static {v6}, Landroid/graphics/Color;->green(I)I

    move-result v7

    add-int/2addr v4, v7

    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v3, v6

    add-int/lit8 v2, v2, 0x1

    :catch_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    return v0

    :cond_2
    div-int/2addr v5, v2

    div-int/2addr v4, v2

    div-int/2addr v3, v2

    const/16 p1, 0xff

    invoke-static {p1, v5, v4, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    return p1
.end method

.method private bubbleSelectedOverlay(II)I
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    invoke-static {p2, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    iget-object p2, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    const/4 v0, 0x0

    aget v1, p2, v0

    invoke-static {p1, p2}, Landroid/graphics/Color;->colorToHSV(I[F)V

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    const/4 p2, 0x1

    aget v2, p1, p2

    const/4 v3, 0x0

    cmpg-float v4, v2, v3

    if-gtz v4, :cond_0

    aput v1, p1, v0

    :cond_0
    const v0, 0x3f19999a    # 0.6f

    add-float/2addr v2, v0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    aput v1, p1, p2

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    const/4 p2, 0x2

    aget v1, p1, p2

    const v2, 0x3d4ccccd    # 0.05f

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    aput v0, p1, p2

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    const/16 p2, 0x1e

    invoke-static {p2, p1}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result p1

    return p1
.end method

.method private codeBackground(IZ)I
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 p1, 0x1

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    aget v3, p2, p1

    const v4, 0x3da3d70a    # 0.08f

    sub-float/2addr v3, v4

    invoke-static {v3, v0, v2}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v0

    aput v0, p2, p1

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    const p2, 0x3cf5c28f    # 0.03f

    aput p2, p1, v1

    const/16 p1, 0x40

    goto :goto_2

    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    aget v3, p2, p1

    cmpg-float v4, v3, v2

    if-lez v4, :cond_2

    aget v4, p2, v1

    cmpl-float v5, v4, v0

    if-gez v5, :cond_2

    cmpg-float v4, v4, v2

    if-gtz v4, :cond_1

    goto :goto_0

    :cond_1
    const v4, 0x3e8f5c29    # 0.28f

    add-float/2addr v3, v4

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    aput v3, p2, p1

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    aget p2, p1, v1

    const v3, -0x42333333    # -0.1f

    add-float/2addr p2, v3

    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    invoke-static {v2, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    aput p2, p1, v1

    goto :goto_1

    :cond_2
    :goto_0
    aget p1, p2, v1

    const v3, -0x41b33333    # -0.2f

    add-float/2addr p1, v3

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    aput p1, p2, v1

    :goto_1
    const/16 p1, 0x20

    :goto_2
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    invoke-static {p1, p2}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result p1

    return p1
.end method

.method private getHue(I)F
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    const/4 v0, 0x0

    aget p1, p1, v0

    return p1
.end method

.method private linkSelectionBackground(IIZ)I
    .locals 4

    const/high16 v0, 0x3e800000    # 0.25f

    invoke-static {p1, p2, v0}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p1

    iget-object p2, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    invoke-static {p1, p2}, Landroid/graphics/Color;->colorToHSV(I[F)V

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    const/4 p2, 0x1

    aget v0, p1, p2

    const v1, 0x3dcccccd    # 0.1f

    sub-float/2addr v0, v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v3, 0x0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    aput v0, p1, p2

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    const/4 p2, 0x2

    aget v0, p1, p2

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-float/2addr v0, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result p3

    invoke-static {v3, p3}, Ljava/lang/Math;->max(FF)F

    move-result p3

    aput p3, p1, p2

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    const/16 p2, 0x33

    invoke-static {p2, p1}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result p1

    return p1
.end method

.method private locationPlaceholderColor(FIZ)I
    .locals 6

    if-eqz p3, :cond_0

    const p1, 0x1effffff

    return p1

    :cond_0
    iget-object p3, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    invoke-static {p2, p3}, Landroid/graphics/Color;->colorToHSV(I[F)V

    iget-object p2, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    const/4 p3, 0x1

    aget v0, p2, p3

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    cmpg-float v0, v0, v4

    if-lez v0, :cond_2

    aget v0, p2, v2

    cmpl-float v5, v0, v3

    if-gez v5, :cond_2

    cmpg-float v0, v0, v4

    if-gtz v0, :cond_1

    goto :goto_0

    :cond_1
    aget p1, p2, v1

    const v0, 0x3e6147ae    # 0.22f

    add-float/2addr p1, v0

    invoke-static {p1, v4, v3}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result p1

    aput p1, p2, v1

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    aget p2, p1, p3

    const v0, 0x3eb33333    # 0.35f

    sub-float/2addr p2, v0

    invoke-static {p2, v4, v3}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result p2

    aput p2, p1, p3

    goto :goto_1

    :cond_2
    :goto_0
    aput p1, p2, v1

    const p1, 0x3e4ccccd    # 0.2f

    aput p1, p2, p3

    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    aget p2, p1, v2

    const p3, 0x3f266666    # 0.65f

    sub-float/2addr p2, p3

    invoke-static {p2, v4, v3}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result p2

    aput p2, p1, v2

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    const/16 p2, 0x5a

    invoke-static {p2, p1}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result p1

    return p1
.end method

.method private textSelectionBackground(ZII)I
    .locals 5

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    invoke-static {p3, p1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    const/4 p3, 0x0

    aget v0, p1, p3

    invoke-static {p2, p1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    const/4 p2, 0x1

    aget v1, p1, p2

    const/4 v2, 0x0

    cmpg-float v3, v1, v2

    if-lez v3, :cond_0

    aget v3, p1, p3

    const/high16 v4, 0x42340000    # 45.0f

    cmpl-float v4, v3, v4

    if-lez v4, :cond_1

    const/high16 v4, 0x42aa0000    # 85.0f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    :cond_0
    aput v0, p1, p3

    :cond_1
    const/4 p3, 0x2

    aget v0, p1, p3

    const v3, 0x3f59999a    # 0.85f

    cmpl-float v0, v0, v3

    if-lez v0, :cond_2

    const/high16 v0, 0x3e800000    # 0.25f

    goto :goto_0

    :cond_2
    const v0, 0x3ee66666    # 0.45f

    :goto_0
    add-float/2addr v1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    aput v1, p1, p2

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    aget p2, p1, p3

    const v1, 0x3e19999a    # 0.15f

    sub-float/2addr p2, v1

    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    invoke-static {v2, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    aput p2, p1, p3

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    const/16 p2, 0x50

    invoke-static {p2, p1}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result p1

    return p1
.end method

.method private textSelectionHandle(II)I
    .locals 7

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    invoke-static {p2, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    iget-object p2, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    const/4 v0, 0x0

    aget v1, p2, v0

    invoke-static {p1, p2}, Landroid/graphics/Color;->colorToHSV(I[F)V

    iget-object p2, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    const/4 v2, 0x1

    aget v3, p2, v2

    const/4 v4, 0x0

    cmpg-float v5, v3, v4

    if-lez v5, :cond_0

    aget v5, p2, v0

    const/high16 v6, 0x42340000    # 45.0f

    cmpl-float v6, v5, v6

    if-lez v6, :cond_1

    const/high16 v6, 0x42aa0000    # 85.0f

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1

    :cond_0
    aput v1, p2, v0

    :cond_1
    const v0, 0x3f19999a    # 0.6f

    add-float/2addr v3, v0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    aput v1, p2, v2

    iget-object p2, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    const/4 v1, 0x2

    aget v2, p2, v1

    const v3, 0x3f333333    # 0.7f

    cmpl-float v3, v2, v3

    if-lez v3, :cond_2

    const/high16 v3, 0x3e800000    # 0.25f

    goto :goto_0

    :cond_2
    const/high16 v3, 0x3e000000    # 0.125f

    :goto_0
    sub-float/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    aput v0, p2, v1

    iget-object p2, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    const/16 v0, 0xff

    invoke-static {v0, p2}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result p2

    invoke-static {p1, p2}, Lorg/telegram/ui/ActionBar/Theme;->blendOver(II)I

    move-result p1

    return p1
.end method


# virtual methods
.method public fillAccentColors(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x1

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getTempHsv(I)[F

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getTempHsv(I)[F

    move-result-object v6

    iget-object v7, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->parentTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    iget v7, v7, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->accentBaseColor:I

    invoke-static {v7, v4}, Landroid/graphics/Color;->colorToHSV(I[F)V

    iget v7, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor:I

    invoke-static {v7, v6}, Landroid/graphics/Color;->colorToHSV(I[F)V

    iget-object v7, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->parentTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    invoke-virtual {v7}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isDark()Z

    move-result v7

    iget v8, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor:I

    iget-object v9, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->parentTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    iget v9, v9, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->accentBaseColor:I

    const/4 v10, -0x1

    const/4 v11, 0x0

    if-ne v8, v9, :cond_0

    iget v8, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor2:I

    if-eqz v8, :cond_5

    :cond_0
    const/4 v8, 0x0

    :goto_0
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->access$700()[I

    move-result-object v9

    array-length v9, v9

    if-ge v8, v9, :cond_5

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->access$800()Ljava/util/HashSet;

    move-result-object v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v1, v8}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v9

    if-gez v9, :cond_3

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->access$900()Landroid/util/SparseIntArray;

    move-result-object v9

    invoke-virtual {v9, v8, v10}, Landroid/util/SparseIntArray;->get(II)I

    move-result v9

    if-ltz v9, :cond_2

    invoke-virtual {v1, v9}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v9

    if-ltz v9, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->access$700()[I

    move-result-object v9

    aget v9, v9, v8

    goto :goto_1

    :cond_3
    invoke-virtual {v1, v9}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v9

    :goto_1
    invoke-static {v4, v6, v9, v7, v9}, Lorg/telegram/ui/ActionBar/Theme;->changeColorAccent([F[FIZI)I

    move-result v12

    if-eq v12, v9, :cond_4

    invoke-virtual {v2, v8, v12}, Landroid/util/SparseIntArray;->put(II)V

    :cond_4
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_5
    iget v8, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesAccentColor:I

    const v9, 0x3f347ae1    # 0.705f

    if-nez v8, :cond_6

    iget v12, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor:I

    if-eqz v12, :cond_d

    :cond_6
    iget v12, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor1:I

    if-eqz v12, :cond_d

    if-eqz v8, :cond_7

    goto :goto_3

    :cond_7
    iget v8, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor:I

    :goto_3
    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubble:I

    invoke-virtual {v1, v12}, Landroid/util/SparseIntArray;->get(I)I

    move-result v13

    if-nez v13, :cond_8

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->access$700()[I

    move-result-object v13

    aget v13, v13, v12

    :cond_8
    invoke-static {v4, v6, v13, v7, v13}, Lorg/telegram/ui/ActionBar/Theme;->changeColorAccent([F[FIZI)I

    move-result v12

    invoke-static {v8, v12}, Lorg/telegram/messenger/AndroidUtilities;->getColorDistance(II)I

    move-result v12

    iget v14, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor1:I

    invoke-static {v8, v14}, Lorg/telegram/messenger/AndroidUtilities;->getColorDistance(II)I

    move-result v14

    iget v15, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor2:I

    if-eqz v15, :cond_b

    iget v15, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesAccentColor:I

    iget v5, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor1:I

    invoke-static {v15, v5}, Lorg/telegram/messenger/AndroidUtilities;->getAverageColor(II)I

    move-result v5

    iget v15, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor2:I

    invoke-static {v5, v15}, Lorg/telegram/messenger/AndroidUtilities;->getAverageColor(II)I

    move-result v5

    iget v15, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor3:I

    if-eqz v15, :cond_9

    invoke-static {v5, v15}, Lorg/telegram/messenger/AndroidUtilities;->getAverageColor(II)I

    move-result v5

    :cond_9
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result v5

    cmpl-float v5, v5, v9

    if-lez v5, :cond_a

    const/4 v5, 0x1

    goto :goto_4

    :cond_a
    const/4 v5, 0x0

    goto :goto_4

    :cond_b
    iget v5, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesAccentColor:I

    iget v15, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor1:I

    invoke-static {v5, v15}, Lorg/telegram/ui/ActionBar/Theme;->access$1000(II)Z

    move-result v5

    :goto_4
    if-eqz v5, :cond_c

    const v5, 0x88b8

    if-gt v12, v5, :cond_c

    if-gt v14, v5, :cond_c

    const/4 v5, 0x1

    goto :goto_5

    :cond_c
    const/4 v5, 0x0

    :goto_5
    invoke-static {v4, v13, v8}, Lorg/telegram/ui/ActionBar/Theme;->access$1100([FII)I

    move-result v8

    goto :goto_6

    :cond_d
    const/4 v5, 0x0

    :goto_6
    if-eqz v8, :cond_10

    iget-object v12, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->parentTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    iget v12, v12, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->accentBaseColor:I

    if-eqz v12, :cond_e

    if-ne v8, v12, :cond_f

    :cond_e
    iget v12, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor:I

    if-eqz v12, :cond_10

    if-eq v12, v8, :cond_10

    :cond_f
    const/4 v12, 0x1

    goto :goto_7

    :cond_10
    const/4 v12, 0x0

    :goto_7
    if-nez v12, :cond_11

    iget v13, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor2:I

    if-eqz v13, :cond_1a

    :cond_11
    iget v13, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor2:I

    if-eqz v13, :cond_12

    invoke-static {v13, v6}, Landroid/graphics/Color;->colorToHSV(I[F)V

    goto :goto_8

    :cond_12
    invoke-static {v8, v6}, Landroid/graphics/Color;->colorToHSV(I[F)V

    :goto_8
    sget v13, Lorg/telegram/ui/ActionBar/Theme;->myMessagesStartIndex:I

    :goto_9
    sget v14, Lorg/telegram/ui/ActionBar/Theme;->myMessagesEndIndex:I

    if-ge v13, v14, :cond_16

    invoke-virtual {v1, v13}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v14

    if-gez v14, :cond_14

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->access$900()Landroid/util/SparseIntArray;

    move-result-object v14

    invoke-virtual {v14, v13, v10}, Landroid/util/SparseIntArray;->get(II)I

    move-result v14

    if-ltz v14, :cond_13

    invoke-virtual {v1, v14, v10}, Landroid/util/SparseIntArray;->get(II)I

    move-result v14

    if-ltz v14, :cond_13

    goto :goto_b

    :cond_13
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->access$700()[I

    move-result-object v14

    aget v14, v14, v13

    goto :goto_a

    :cond_14
    invoke-virtual {v1, v14}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v14

    :goto_a
    invoke-static {v4, v6, v14, v7, v14}, Lorg/telegram/ui/ActionBar/Theme;->changeColorAccent([F[FIZI)I

    move-result v15

    if-eq v15, v14, :cond_15

    invoke-virtual {v2, v13, v15}, Landroid/util/SparseIntArray;->put(II)V

    :cond_15
    :goto_b
    add-int/lit8 v13, v13, 0x1

    goto :goto_9

    :cond_16
    if-eqz v12, :cond_1a

    invoke-static {v8, v6}, Landroid/graphics/Color;->colorToHSV(I[F)V

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->myMessagesBubblesStartIndex:I

    :goto_c
    sget v12, Lorg/telegram/ui/ActionBar/Theme;->myMessagesBubblesEndIndex:I

    if-ge v8, v12, :cond_1a

    invoke-virtual {v1, v8}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v12

    if-gez v12, :cond_18

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->access$900()Landroid/util/SparseIntArray;

    move-result-object v12

    invoke-virtual {v12, v8, v10}, Landroid/util/SparseIntArray;->get(II)I

    move-result v12

    if-ltz v12, :cond_17

    invoke-virtual {v1, v12, v10}, Landroid/util/SparseIntArray;->get(II)I

    move-result v12

    if-ltz v12, :cond_17

    goto :goto_e

    :cond_17
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->access$700()[I

    move-result-object v12

    aget v12, v12, v8

    goto :goto_d

    :cond_18
    invoke-virtual {v1, v12}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v12

    :goto_d
    invoke-static {v4, v6, v12, v7, v12}, Lorg/telegram/ui/ActionBar/Theme;->changeColorAccent([F[FIZI)I

    move-result v13

    if-eq v13, v12, :cond_19

    invoke-virtual {v2, v8, v13}, Landroid/util/SparseIntArray;->put(II)V

    :cond_19
    :goto_e
    add-int/lit8 v8, v8, 0x1

    goto :goto_c

    :cond_1a
    if-nez v5, :cond_20

    iget v1, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor1:I

    if-eqz v1, :cond_20

    iget v4, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor2:I

    if-eqz v4, :cond_1d

    iget v4, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesAccentColor:I

    invoke-static {v4, v1}, Lorg/telegram/messenger/AndroidUtilities;->getAverageColor(II)I

    move-result v1

    iget v4, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor2:I

    invoke-static {v1, v4}, Lorg/telegram/messenger/AndroidUtilities;->getAverageColor(II)I

    move-result v1

    iget v4, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor3:I

    if-eqz v4, :cond_1b

    invoke-static {v1, v4}, Lorg/telegram/messenger/AndroidUtilities;->getAverageColor(II)I

    move-result v1

    :cond_1b
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result v1

    cmpl-float v1, v1, v9

    if-lez v1, :cond_1c

    const/4 v1, 0x1

    goto :goto_f

    :cond_1c
    const/4 v1, 0x0

    goto :goto_f

    :cond_1d
    iget v4, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesAccentColor:I

    invoke-static {v4, v1}, Lorg/telegram/ui/ActionBar/Theme;->access$1000(II)Z

    move-result v1

    :goto_f
    if-eqz v1, :cond_1e

    const v1, -0xdededf

    const v4, -0xaaaaab

    const/high16 v6, 0x4d000000    # 1.34217728E8f

    goto :goto_10

    :cond_1e
    const v4, -0x111112

    const v6, 0x4dffffff    # 5.3687088E8f

    const/4 v1, -0x1

    :goto_10
    iget v8, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor2:I

    if-nez v8, :cond_1f

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outAudioProgress:I

    invoke-virtual {v2, v8, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outAudioSelectedProgress:I

    invoke-virtual {v2, v8, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outAudioSeekbar:I

    invoke-virtual {v2, v8, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outAudioCacheSeekbar:I

    invoke-virtual {v2, v8, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outAudioSeekbarSelected:I

    invoke-virtual {v2, v8, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outAudioSeekbarFill:I

    invoke-virtual {v2, v8, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outVoiceSeekbar:I

    invoke-virtual {v2, v8, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outVoiceSeekbarSelected:I

    invoke-virtual {v2, v8, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outVoiceSeekbarFill:I

    invoke-virtual {v2, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageLinkOut:I

    invoke-virtual {v2, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outForwardedNameText:I

    invoke-virtual {v2, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outViaBotNameText:I

    invoke-virtual {v2, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outReplyLine:I

    invoke-virtual {v2, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outReplyLine2:I

    invoke-virtual {v2, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outReplyNameText:I

    invoke-virtual {v2, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outPreviewLine:I

    invoke-virtual {v2, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outSiteNameText:I

    invoke-virtual {v2, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outInstant:I

    invoke-virtual {v2, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outInstantSelected:I

    invoke-virtual {v2, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outPreviewInstantText:I

    invoke-virtual {v2, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outViews:I

    invoke-virtual {v2, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outViewsSelected:I

    invoke-virtual {v2, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outAudioTitleText:I

    invoke-virtual {v2, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outFileNameText:I

    invoke-virtual {v2, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outContactNameText:I

    invoke-virtual {v2, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outAudioPerformerText:I

    invoke-virtual {v2, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outAudioPerformerSelectedText:I

    invoke-virtual {v2, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outSentCheck:I

    invoke-virtual {v2, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outSentCheckSelected:I

    invoke-virtual {v2, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outSentCheckRead:I

    invoke-virtual {v2, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outSentCheckReadSelected:I

    invoke-virtual {v2, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outSentClock:I

    invoke-virtual {v2, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outSentClockSelected:I

    invoke-virtual {v2, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outMenu:I

    invoke-virtual {v2, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outMenuSelected:I

    invoke-virtual {v2, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outTimeText:I

    invoke-virtual {v2, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outTimeSelectedText:I

    invoke-virtual {v2, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outAudioDurationText:I

    invoke-virtual {v2, v6, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outAudioDurationSelectedText:I

    invoke-virtual {v2, v6, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outContactPhoneText:I

    invoke-virtual {v2, v6, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outContactPhoneSelectedText:I

    invoke-virtual {v2, v6, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outFileInfoText:I

    invoke-virtual {v2, v6, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outFileInfoSelectedText:I

    invoke-virtual {v2, v6, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outVenueInfoText:I

    invoke-virtual {v2, v6, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outVenueInfoSelectedText:I

    invoke-virtual {v2, v6, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outLoader:I

    invoke-virtual {v2, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outLoaderSelected:I

    invoke-virtual {v2, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outFileProgress:I

    iget v6, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesAccentColor:I

    invoke-virtual {v2, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outFileProgressSelected:I

    iget v6, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesAccentColor:I

    invoke-virtual {v2, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outMediaIcon:I

    iget v6, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesAccentColor:I

    invoke-virtual {v2, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outMediaIconSelected:I

    iget v6, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesAccentColor:I

    invoke-virtual {v2, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    :cond_1f
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outReplyMessageText:I

    invoke-virtual {v2, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outReplyMediaMessageText:I

    invoke-virtual {v2, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outReplyMediaMessageSelectedText:I

    invoke-virtual {v2, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageTextOut:I

    invoke-virtual {v2, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    :cond_20
    if-eqz v5, :cond_22

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outLoader:I

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v4

    if-ltz v4, :cond_21

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    goto :goto_11

    :cond_21
    const/4 v1, 0x0

    :goto_11
    invoke-static {v10, v1}, Lorg/telegram/messenger/AndroidUtilities;->getColorDistance(II)I

    move-result v1

    const/16 v4, 0x1388

    if-ge v1, v4, :cond_22

    const/4 v5, 0x0

    :cond_22
    iget v1, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesAccentColor:I

    if-eqz v1, :cond_24

    iget v4, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor1:I

    if-eqz v4, :cond_24

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubble:I

    invoke-virtual {v2, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubbleGradient1:I

    iget v4, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor1:I

    invoke-virtual {v2, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    iget v1, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor2:I

    if-eqz v1, :cond_23

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubbleGradient2:I

    invoke-virtual {v2, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    iget v1, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor3:I

    if-eqz v1, :cond_23

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubbleGradient3:I

    invoke-virtual {v2, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    :cond_23
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubbleGradientAnimated:I

    iget-boolean v4, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesAnimated:Z

    invoke-virtual {v2, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    :cond_24
    iget-wide v8, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundOverrideColor:J

    long-to-int v1, v8

    const-wide/16 v12, 0x0

    if-eqz v1, :cond_25

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper:I

    invoke-virtual {v2, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_12

    :cond_25
    cmp-long v1, v8, v12

    if-eqz v1, :cond_26

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper:I

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->delete(I)V

    :cond_26
    :goto_12
    iget-wide v8, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor1:J

    long-to-int v1, v8

    if-eqz v1, :cond_27

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_to1:I

    invoke-virtual {v2, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_13

    :cond_27
    cmp-long v1, v8, v12

    if-eqz v1, :cond_28

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_to1:I

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->delete(I)V

    :cond_28
    :goto_13
    iget-wide v8, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor2:J

    long-to-int v1, v8

    if-eqz v1, :cond_29

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_to2:I

    invoke-virtual {v2, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_14

    :cond_29
    cmp-long v1, v8, v12

    if-eqz v1, :cond_2a

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_to2:I

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->delete(I)V

    :cond_2a
    :goto_14
    iget-wide v8, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor3:J

    long-to-int v1, v8

    if-eqz v1, :cond_2b

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_to3:I

    invoke-virtual {v2, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_15

    :cond_2b
    cmp-long v1, v8, v12

    if-eqz v1, :cond_2c

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_to3:I

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->delete(I)V

    :cond_2c
    :goto_15
    iget v1, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundRotation:I

    const/16 v4, 0x2d

    if-eq v1, v4, :cond_2d

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_rotation:I

    invoke-virtual {v2, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    :cond_2d
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubble:I

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    if-nez v4, :cond_2e

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    :cond_2e
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inBubble:I

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    if-nez v6, :cond_2f

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    :cond_2f
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->info:Lorg/telegram/tgnet/TLRPC$TL_theme;

    if-eqz v1, :cond_32

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_theme;->emoticon:Ljava/lang/String;

    if-eqz v1, :cond_32

    if-nez v7, :cond_32

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_selectedBackground:I

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->delete(I)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_to1:I

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_to2:I

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_to3:I

    filled-new-array {v1, v8, v9}, [I

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->averageColor(Landroid/util/SparseIntArray;[I)I

    move-result v1

    if-nez v1, :cond_30

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper:I

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->averageColor(Landroid/util/SparseIntArray;[I)I

    move-result v1

    :cond_30
    if-nez v1, :cond_31

    iget v1, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor:I

    :cond_31
    invoke-direct {v0, v4, v1}, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->bubbleSelectedOverlay(II)I

    move-result v1

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubbleSelectedOverlay:I

    invoke-virtual {v2, v8, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubbleGradientSelectedOverlay:I

    invoke-virtual {v2, v8, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubbleSelected:I

    invoke-static {v4, v1}, Lorg/telegram/ui/ActionBar/Theme;->blendOver(II)I

    move-result v1

    invoke-virtual {v2, v8, v1}, Landroid/util/SparseIntArray;->put(II)V

    iget v1, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor:I

    invoke-direct {v0, v6, v1}, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->bubbleSelectedOverlay(II)I

    move-result v1

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inBubbleSelectedOverlay:I

    invoke-virtual {v2, v8, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inBubbleSelected:I

    invoke-static {v6, v1}, Lorg/telegram/ui/ActionBar/Theme;->blendOver(II)I

    move-result v1

    invoke-virtual {v2, v8, v1}, Landroid/util/SparseIntArray;->put(II)V

    :cond_32
    if-nez v7, :cond_33

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inTextSelectionHighlight:I

    iget v8, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor:I

    invoke-direct {v0, v11, v6, v8}, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->textSelectionBackground(ZII)I

    move-result v8

    invoke-virtual {v2, v1, v8}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outTextSelectionHighlight:I

    iget v8, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor:I

    invoke-direct {v0, v3, v4, v8}, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->textSelectionBackground(ZII)I

    move-result v8

    invoke-virtual {v2, v1, v8}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outTextSelectionCursor:I

    iget v8, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor:I

    invoke-direct {v0, v4, v8}, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->textSelectionHandle(II)I

    move-result v8

    invoke-virtual {v2, v1, v8}, Landroid/util/SparseIntArray;->put(II)V

    :cond_33
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->getHue(I)F

    move-result v1

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubbleLocationPlaceholder:I

    invoke-direct {v0, v1, v4, v7}, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->locationPlaceholderColor(FIZ)I

    move-result v9

    invoke-virtual {v2, v8, v9}, Landroid/util/SparseIntArray;->put(II)V

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inBubbleLocationPlaceholder:I

    invoke-direct {v0, v1, v6, v7}, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->locationPlaceholderColor(FIZ)I

    move-result v1

    invoke-virtual {v2, v8, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageLinkIn:I

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    if-nez v8, :cond_34

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v8

    :cond_34
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageLinkOut:I

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v9

    if-nez v9, :cond_35

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v9

    :cond_35
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_linkSelectBackground:I

    invoke-direct {v0, v8, v6, v7}, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->linkSelectionBackground(IIZ)I

    move-result v6

    invoke-virtual {v2, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outLinkSelectBackground:I

    invoke-direct {v0, v9, v4, v7}, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->linkSelectionBackground(IIZ)I

    move-result v6

    invoke-virtual {v2, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuBackground:I

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    if-nez v6, :cond_36

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    :cond_36
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuSeparator:I

    invoke-static {v6}, Landroid/graphics/Color;->alpha(I)I

    move-result v8

    invoke-static {v6}, Landroid/graphics/Color;->red(I)I

    move-result v9

    add-int/lit8 v9, v9, -0xa

    invoke-static {v11, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-static {v6}, Landroid/graphics/Color;->green(I)I

    move-result v10

    add-int/lit8 v10, v10, -0xa

    invoke-static {v11, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    add-int/lit8 v6, v6, -0xa

    invoke-static {v11, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v8, v9, v10, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    invoke-virtual {v2, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    if-eqz v7, :cond_37

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubbleGradient1:I

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    if-eqz v6, :cond_37

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubbleGradient2:I

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubbleGradient3:I

    filled-new-array {v1, v4, v6}, [I

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->averageColor(Landroid/util/SparseIntArray;[I)I

    move-result v1

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    invoke-static {v1, v4}, Landroid/graphics/Color;->colorToHSV(I[F)V

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    aget v4, v1, v3

    const v6, 0x3dcccccd    # 0.1f

    add-float/2addr v4, v6

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    invoke-static {v4, v6, v7}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v4

    aput v4, v1, v3

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    const/4 v4, 0x2

    aget v8, v1, v4

    const v9, 0x3f4ccccd    # 0.8f

    sub-float/2addr v8, v9

    invoke-static {v8, v6, v7}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v6

    aput v6, v1, v4

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outCodeBackground:I

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    const/16 v6, 0x40

    invoke-static {v6, v4}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v4

    :goto_16
    invoke-virtual {v2, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_17

    :cond_37
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outCodeBackground:I

    invoke-direct {v0, v4, v7}, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->codeBackground(IZ)I

    move-result v4

    goto :goto_16

    :goto_17
    xor-int/lit8 v1, v5, 0x1

    return v1
.end method

.method public getPathToWallpaper()Ljava/io/File;
    .locals 10

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    iget v4, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->id:I

    const/16 v5, 0x64

    const/4 v6, 0x0

    if-ge v4, v5, :cond_1

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->patternSlug:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v6, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v7, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->parentTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    invoke-virtual {v7}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->getKey()Ljava/lang/String;

    move-result-object v7

    iget v8, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v9, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->patternSlug:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v7, v3, v2

    aput-object v8, v3, v1

    aput-object v9, v3, v0

    const-string v0, "%s_%d_%s_v5.jpg"

    invoke-static {v5, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :cond_0
    return-object v6

    :cond_1
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->patternSlug:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v6, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v7, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->parentTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    invoke-virtual {v7}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->getKey()Ljava/lang/String;

    move-result-object v7

    iget v8, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v9, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->patternSlug:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v7, v3, v2

    aput-object v8, v3, v1

    aput-object v9, v3, v0

    const-string v0, "%s_%d_%s_v8_debug.jpg"

    invoke-static {v5, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :cond_2
    return-object v6
.end method

.method public saveToFile()Ljava/io/File;
    .locals 16

    move-object/from16 v1, p0

    const/4 v0, 0x3

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getSharingDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    new-instance v3, Ljava/io/File;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v5, v1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->parentTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->getKey()Ljava/lang/String;

    move-result-object v5

    iget v6, v1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    const/4 v5, 0x1

    aput-object v6, v8, v5

    const-string v6, "%s_%d.attheme"

    invoke-static {v4, v6, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v2, v1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->parentTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->assetName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v4, v2, v4}, Lorg/telegram/ui/ActionBar/Theme;->getThemeFileValues(Ljava/io/File;Ljava/lang/String;[Ljava/lang/String;)Landroid/util/SparseIntArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->fillAccentColors(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)Z

    iget-object v2, v1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->patternSlug:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v8, v1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->patternMotion:Z

    if-eqz v8, :cond_0

    const-string v8, "motion"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper:I

    invoke-virtual {v6, v8}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    if-nez v8, :cond_1

    const/4 v8, -0x1

    :cond_1
    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_to1:I

    invoke-virtual {v6, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    if-nez v10, :cond_2

    const/4 v10, 0x0

    :cond_2
    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_to2:I

    invoke-virtual {v6, v11}, Landroid/util/SparseIntArray;->get(I)I

    move-result v11

    if-nez v11, :cond_3

    const/4 v11, 0x0

    :cond_3
    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_to3:I

    invoke-virtual {v6, v12}, Landroid/util/SparseIntArray;->get(I)I

    move-result v12

    if-nez v12, :cond_4

    const/4 v12, 0x0

    :cond_4
    sget v13, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_rotation:I

    invoke-virtual {v6, v13}, Landroid/util/SparseIntArray;->get(I)I

    move-result v13

    if-nez v13, :cond_5

    const/16 v13, 0x2d

    :cond_5
    shr-int/lit8 v14, v8, 0x10

    int-to-byte v14, v14

    and-int/lit16 v14, v14, 0xff

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    shr-int/lit8 v15, v8, 0x8

    int-to-byte v15, v15

    and-int/lit16 v15, v15, 0xff

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    new-array v4, v0, [Ljava/lang/Object;

    aput-object v14, v4, v9

    aput-object v15, v4, v5

    aput-object v8, v4, v7

    const-string v8, "%02x%02x%02x"

    invoke-static {v8, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    if-eqz v10, :cond_6

    shr-int/lit8 v14, v10, 0x10

    int-to-byte v14, v14

    and-int/lit16 v14, v14, 0xff

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    shr-int/lit8 v15, v10, 0x8

    int-to-byte v15, v15

    and-int/lit16 v15, v15, 0xff

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    new-array v7, v0, [Ljava/lang/Object;

    aput-object v14, v7, v9

    aput-object v15, v7, v5

    const/4 v14, 0x2

    aput-object v10, v7, v14

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_6
    const/4 v7, 0x0

    :goto_0
    if-eqz v11, :cond_7

    shr-int/lit8 v10, v11, 0x10

    int-to-byte v10, v10

    and-int/lit16 v10, v10, 0xff

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    shr-int/lit8 v14, v11, 0x8

    int-to-byte v14, v14

    and-int/lit16 v14, v14, 0xff

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    and-int/lit16 v11, v11, 0xff

    int-to-byte v11, v11

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    new-array v15, v0, [Ljava/lang/Object;

    aput-object v10, v15, v9

    aput-object v14, v15, v5

    const/4 v10, 0x2

    aput-object v11, v15, v10

    invoke-static {v8, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    :cond_7
    const/4 v10, 0x0

    :goto_1
    if-eqz v12, :cond_8

    shr-int/lit8 v11, v12, 0x10

    int-to-byte v11, v11

    and-int/lit16 v11, v11, 0xff

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    shr-int/lit8 v14, v12, 0x8

    int-to-byte v14, v14

    and-int/lit16 v14, v14, 0xff

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    invoke-static {v12}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v11, v0, v9

    aput-object v14, v0, v5

    const/4 v11, 0x2

    aput-object v12, v0, v11

    invoke-static {v8, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_8
    const/4 v0, 0x0

    :goto_2
    if-eqz v7, :cond_a

    if-eqz v10, :cond_a

    const-string v8, "~"

    if-eqz v0, :cond_9

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_a
    if-eqz v7, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&rotation="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_b
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "https://attheme.org?slug="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->patternSlug:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "&intensity="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->patternIntensity:F

    const/high16 v8, 0x42c80000    # 100.0f

    mul-float v7, v7, v8

    float-to-int v7, v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "&bg_color="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_d

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&mode="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_c
    const/4 v0, 0x0

    :cond_d
    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_5
    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    const-string v7, "\n"

    if-ge v9, v4, :cond_10

    invoke-virtual {v6, v9}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v6, v9}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v8

    if-eqz v0, :cond_e

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper:I

    if-eq v10, v4, :cond_f

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_to1:I

    if-eq v10, v4, :cond_f

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_to2:I

    if-eq v10, v4, :cond_f

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_to3:I

    if-ne v10, v4, :cond_e

    goto :goto_6

    :cond_e
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    :goto_6
    add-int/2addr v9, v5

    goto :goto_5

    :cond_10
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->getStringBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/io/FileOutputStream;->write([B)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_11

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WLS="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getStringBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_7

    :catchall_0
    move-exception v0

    goto :goto_8

    :catch_0
    move-exception v0

    goto :goto_9

    :cond_11
    :goto_7
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_b

    :catch_1
    move-exception v0

    goto :goto_a

    :goto_8
    move-object v2, v0

    goto :goto_c

    :catchall_1
    move-exception v0

    const/4 v4, 0x0

    goto :goto_8

    :catch_2
    move-exception v0

    const/4 v4, 0x0

    :goto_9
    :try_start_3
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v4, :cond_12

    goto :goto_7

    :goto_a
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_12
    :goto_b
    return-object v3

    :goto_c
    if-eqz v4, :cond_13

    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_d

    :catch_3
    move-exception v0

    move-object v3, v0

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_13
    :goto_d
    goto :goto_f

    :goto_e
    throw v2

    :goto_f
    goto :goto_e
.end method
