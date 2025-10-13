.class public Lorg/telegram/ui/Components/Paint/PersistColorPalette;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final COLORS_COUNT:I

.field private static final DEFAULT_MODIFIABLE_COLORS:Ljava/util/List;

.field public static final MODIFIABLE_COLORS_COUNT:I

.field private static final PRESET_COLORS:Ljava/util/List;

.field public static final PRESET_COLORS_COUNT:I

.field private static instances:[Lorg/telegram/ui/Components/Paint/PersistColorPalette;


# instance fields
.field private final brushColor:Ljava/util/HashMap;

.field private final colors:Ljava/util/List;

.field private currentAlignment:I

.field private currentBrush:I

.field private currentTextType:I

.field private currentTypeface:Ljava/lang/String;

.field private currentWeight:F

.field private fillShapes:Z

.field private inTextMode:Z

.field private final mConfig:Landroid/content/SharedPreferences;

.field private needSaveBrushColor:Z

.field private pendingChange:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const v0, -0x285f84

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v1, -0x805002

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, -0x5a7025

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, -0x246a52

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, -0x452361

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x5

    new-array v6, v5, [Ljava/lang/Integer;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v1, 0x2

    aput-object v2, v6, v1

    const/4 v2, 0x3

    aput-object v3, v6, v2

    const/4 v3, 0x4

    aput-object v4, v6, v3

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    sput-object v4, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->DEFAULT_MODIFIABLE_COLORS:Ljava/util/List;

    const v6, -0xbac6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v8, -0x7600

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v9, -0x29f6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const v10, -0xcb38a7

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const v11, -0x9c191e

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const v12, -0xf57b01

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const v13, -0x40a50e

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/high16 v14, -0x1000000

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, -0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v5, 0x9

    new-array v5, v5, [Ljava/lang/Integer;

    aput-object v6, v5, v7

    aput-object v8, v5, v0

    aput-object v9, v5, v1

    aput-object v10, v5, v2

    aput-object v11, v5, v3

    const/4 v0, 0x5

    aput-object v12, v5, v0

    const/4 v0, 0x6

    aput-object v13, v5, v0

    const/4 v0, 0x7

    aput-object v14, v5, v0

    const/16 v0, 0x8

    aput-object v15, v5, v0

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->PRESET_COLORS:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    sput v1, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->MODIFIABLE_COLORS_COUNT:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sput v0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->PRESET_COLORS_COUNT:I

    add-int/2addr v1, v0

    sput v1, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->COLORS_COUNT:I

    new-array v0, v3, [Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    sput-object v0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->instances:[Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    sget v1, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->COLORS_COUNT:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->colors:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    sget-object v2, Lorg/telegram/ui/Components/Paint/Brush;->BRUSHES_LIST:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->brushColor:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->pendingChange:Ljava/util/List;

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "photo_color_palette_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->mConfig:Landroid/content/SharedPreferences;

    const-string v0, "brush"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->currentBrush:I

    const-string v0, "weight"

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->currentWeight:F

    const-string v0, "typeface"

    const-string v2, "roboto"

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->currentTypeface:Ljava/lang/String;

    const-string v0, "text_alignment"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->currentAlignment:I

    const-string v0, "text_type"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->currentTextType:I

    const-string v0, "fill_shapes"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->fillShapes:Z

    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->loadColors()V

    return-void
.end method

.method private checkIndex(I)V
    .locals 2

    if-ltz p1, :cond_0

    sget v0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->COLORS_COUNT:I

    if-ge p1, v0, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Color palette index should be in range 0 ... "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->COLORS_COUNT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getAllColors()Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->PRESET_COLORS:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->colors:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public static getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;
    .locals 2

    sget-object v0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->instances:[Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    aget-object v1, v0, p0

    if-nez v1, :cond_0

    new-instance v1, Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;-><init>(I)V

    aput-object v1, v0, p0

    :cond_0
    sget-object v0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->instances:[Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    aget-object p0, v0, p0

    return-object p0
.end method

.method private loadColors()V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    sget v2, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->MODIFIABLE_COLORS_COUNT:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->colors:Ljava/util/List;

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->mConfig:Landroid/content/SharedPreferences;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "color_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->DEFAULT_MODIFIABLE_COLORS:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-long v5, v5

    invoke-interface {v3, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    long-to-int v4, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    sget-object v1, Lorg/telegram/ui/Components/Paint/Brush;->BRUSHES_LIST:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->mConfig:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "brush_color_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/telegram/ui/Components/Paint/Brush;->BRUSHES_LIST:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/Paint/Brush;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/Paint/Brush;->getDefaultColor()I

    move-result v3

    int-to-long v3, v3

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    long-to-int v2, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->brushColor:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->mConfig:Landroid/content/SharedPreferences;

    const-string v1, "brush_color_-1"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    long-to-int v1, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->brushColor:Ljava/util/HashMap;

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->pendingChange:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->pendingChange:Ljava/util/List;

    sget-object v1, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->DEFAULT_MODIFIABLE_COLORS:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->mConfig:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lorg/telegram/ui/Components/Paint/Brush;->BRUSHES_LIST:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "brush_color_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "brush_color_-1"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->brushColor:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->saveColors()V

    return-void
.end method

.method public getColor(I)I
    .locals 2

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->checkIndex(I)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getAllColors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_0

    sget v0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->PRESET_COLORS_COUNT:I

    if-ge p1, v0, :cond_1

    sget-object v0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->PRESET_COLORS:Ljava/util/List;

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_1
    sget-object v1, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->DEFAULT_MODIFIABLE_COLORS:Ljava/util/List;

    sub-int/2addr p1, v0

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0
.end method

.method public getCurrentAlignment()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->currentAlignment:I

    return v0
.end method

.method public getCurrentColor()I
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->brushColor:Ljava/util/HashMap;

    iget v1, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->currentBrush:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->mConfig:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "brush_color_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->currentBrush:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->currentBrush:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    const-wide/16 v2, -0x1

    goto :goto_0

    :cond_0
    sget-object v3, Lorg/telegram/ui/Components/Paint/Brush;->BRUSHES_LIST:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/Paint/Brush;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Paint/Brush;->getDefaultColor()I

    move-result v2

    int-to-long v2, v2

    :goto_0
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    long-to-int v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->brushColor:Ljava/util/HashMap;

    iget v2, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->currentBrush:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getCurrentColorPosition()I
    .locals 5

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getCurrentColor()I

    move-result v0

    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getAllColors()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v0, :cond_0

    return v3

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public getCurrentTextType()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->currentTextType:I

    return v0
.end method

.method public getCurrentTypeface()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->currentTypeface:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentWeight()F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->currentWeight:F

    return v0
.end method

.method public getFillShapes()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->fillShapes:Z

    return v0
.end method

.method public getWeight(Ljava/lang/String;F)F
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->mConfig:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "weight_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p1

    return p1
.end method

.method public resetCurrentColor()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->setCurrentBrush(I)V

    return-void
.end method

.method public saveColors()V
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->pendingChange:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->needSaveBrushColor:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->mConfig:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->pendingChange:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3

    const/4 v1, 0x0

    :goto_0
    sget v3, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->MODIFIABLE_COLORS_COUNT:I

    if-ge v1, v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "color_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->pendingChange:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->pendingChange:Ljava/util/List;

    :goto_1
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    goto :goto_2

    :cond_1
    sget-object v4, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->DEFAULT_MODIFIABLE_COLORS:Ljava/util/List;

    goto :goto_1

    :goto_2
    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->colors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->colors:Ljava/util/List;

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->pendingChange:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->pendingChange:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_3
    iget-boolean v1, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->needSaveBrushColor:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->brushColor:Ljava/util/HashMap;

    iget v3, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->currentBrush:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "brush_color_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->currentBrush:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v4, v1

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    :cond_4
    iput-boolean v2, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->needSaveBrushColor:Z

    :cond_5
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public selectColor(I)V
    .locals 1

    .line 0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->selectColor(IZ)V

    return-void
.end method

.method public selectColor(IZ)V
    .locals 5

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getAllColors()Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    if-eqz p2, :cond_5

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->setCurrentBrushColorByColorIndex(I)V

    goto/16 :goto_3

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->pendingChange:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->colors:Ljava/util/List;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->pendingChange:Ljava/util/List;

    :goto_0
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->pendingChange:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->pendingChange:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->pendingChange:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->pendingChange:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sget-object v2, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->DEFAULT_MODIFIABLE_COLORS:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->pendingChange:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_2
    sget-object v1, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->DEFAULT_MODIFIABLE_COLORS:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->pendingChange:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->pendingChange:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-le v0, v3, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->pendingChange:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->pendingChange:Ljava/util/List;

    :cond_4
    if-eqz p2, :cond_5

    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->brushColor:Ljava/util/HashMap;

    iget v0, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->currentBrush:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-boolean v4, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->needSaveBrushColor:Z

    :cond_5
    :goto_3
    return-void
.end method

.method public setCurrentAlignment(I)V
    .locals 2

    iput p1, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->currentAlignment:I

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->mConfig:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "text_alignment"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setCurrentBrush(I)V
    .locals 1

    .line 0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->setCurrentBrush(IZ)V

    return-void
.end method

.method public setCurrentBrush(IZ)V
    .locals 1

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->currentBrush:I

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->mConfig:Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v0, "brush"

    invoke-interface {p2, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->brushColor:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->selectColor(IZ)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->saveColors()V

    :cond_1
    return-void
.end method

.method public setCurrentBrushColorByColorIndex(I)V
    .locals 2

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getColor(I)I

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->brushColor:Ljava/util/HashMap;

    iget v1, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->currentBrush:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->needSaveBrushColor:Z

    return-void
.end method

.method public setCurrentTextType(I)V
    .locals 2

    iput p1, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->currentTextType:I

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->mConfig:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "text_type"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setCurrentTypeface(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->currentTypeface:Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->mConfig:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "typeface"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setCurrentWeight(F)V
    .locals 2

    iput p1, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->currentWeight:F

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->mConfig:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "weight"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setInTextMode(Z)V
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->inTextMode:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->inTextMode:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    :goto_0
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->setCurrentBrush(IZ)V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->mConfig:Landroid/content/SharedPreferences;

    const-string v1, "brush"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public setWeight(Ljava/lang/String;F)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->mConfig:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "weight_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public toggleFillShapes()V
    .locals 3

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->fillShapes:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->fillShapes:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->mConfig:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-boolean v1, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->fillShapes:Z

    const-string v2, "fill_shapes"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
