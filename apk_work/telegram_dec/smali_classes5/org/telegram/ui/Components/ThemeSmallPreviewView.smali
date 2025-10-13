.class public Lorg/telegram/ui/Components/ThemeSmallPreviewView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;
    }
.end annotation


# instance fields
.field private final BUBBLE_HEIGHT:F

.field private final BUBBLE_WIDTH:F

.field private final INNER_RADIUS:F

.field private final INNER_RECT_SPACE:F

.field private final STROKE_RADIUS:F

.field animateOutThemeDrawable:Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;

.field animationCancelRunnable:Ljava/lang/Runnable;

.field attached:Z

.field private final backgroundFillPaint:Landroid/graphics/Paint;

.field private backupImageView:Lorg/telegram/ui/Components/BackupImageView;

.field private changeThemeProgress:F

.field chatBackgroundDrawable:Lorg/telegram/ui/ChatBackgroundDrawable;

.field public chatThemeItem:Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;

.field private final clipPath:Landroid/graphics/Path;

.field private final currentAccount:I

.field private currentType:I

.field public fallbackWallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

.field private hasAnimatedEmoji:Z

.field isSelected:Z

.field public lastThemeIndex:I

.field messageDrawableIn:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

.field messageDrawableOut:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

.field private noThemeTextPaint:Landroid/text/TextPaint;

.field outlineBackgroundPaint:Landroid/graphics/Paint;

.field patternColor:I

.field private final rectF:Landroid/graphics/RectF;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private selectionProgress:F

.field private strokeAlphaAnimator:Landroid/animation/ValueAnimator;

.field private textLayout:Landroid/text/StaticLayout;

.field themeDrawable:Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;


# direct methods
.method public static synthetic $r8$lambda$E638TTGL7Vro8ZVt1LJ0k0q-IHA(Lorg/telegram/ui/Components/ThemeSmallPreviewView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->lambda$setSelected$4(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JlSkzJSpeivPZ_8okKtQpmTlJ2s(Lorg/telegram/ui/Components/ThemeSmallPreviewView;Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->lambda$setItem$3(Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$RNCB9WFhZBO6HJ5Rzc2puKH5PV0(Lorg/telegram/ui/Components/ThemeSmallPreviewView;Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;ILandroid/graphics/Bitmap;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->lambda$setItem$2(Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;ILandroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_gYWD85VGIDBIztO6yixKe7vkv0(Lorg/telegram/ui/Components/ThemeSmallPreviewView;Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;Lorg/telegram/tgnet/TLRPC$WallPaper;Lorg/telegram/messenger/ImageReceiver;ZZZ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->lambda$setItem$1(Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;Lorg/telegram/tgnet/TLRPC$WallPaper;Lorg/telegram/messenger/ImageReceiver;ZZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$bzhtE97c5yB72ofLU7N6IPBF4vw(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->lambda$playEmojiAnimation$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$vSh5icc-_yi6kENgHrLhVI5wlN8(Lorg/telegram/ui/Components/ThemeSmallPreviewView;JLorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;ILandroid/util/Pair;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->lambda$setItem$0(JLorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;ILandroid/util/Pair;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V
    .locals 7

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->STROKE_RADIUS:F

    const/high16 v0, 0x40c00000    # 6.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->INNER_RADIUS:F

    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->INNER_RECT_SPACE:F

    const/high16 v0, 0x41a80000    # 21.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->BUBBLE_HEIGHT:F

    const/high16 v0, 0x42240000    # 41.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->BUBBLE_WIDTH:F

    new-instance v0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;-><init>(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->themeDrawable:Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->changeThemeProgress:F

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->outlineBackgroundPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->backgroundFillPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->rectF:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->clipPath:Landroid/graphics/Path;

    new-instance v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;-><init>(IZZ)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->messageDrawableOut:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    new-instance v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    invoke-direct {v0, v2, v2, v2}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;-><init>(IZZ)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->messageDrawableIn:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    iput p4, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->currentType:I

    iput p2, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->currentAccount:I

    iput-object p3, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackgroundGray:I

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->getThemedColor(I)I

    move-result p2

    invoke-virtual {p0, p2}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->setBackgroundColor(I)V

    new-instance p2, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/ImageReceiver;->setCrossfadeWithOldImage(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    invoke-virtual {p1, v2}, Lorg/telegram/messenger/ImageReceiver;->setAllowStartLottieAnimation(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    invoke-virtual {p1, v2}, Lorg/telegram/messenger/ImageReceiver;->setAutoRepeat(I)V

    if-eqz p4, :cond_1

    const/4 p1, 0x3

    if-eq p4, p1, :cond_1

    const/4 p1, 0x2

    if-ne p4, p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v5, 0x0

    const/high16 v6, 0x41400000    # 12.0f

    const/16 v0, 0x24

    const/high16 v1, 0x42100000    # 36.0f

    :goto_0
    const/16 v2, 0x51

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :cond_1
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v5, 0x0

    const/high16 v6, 0x41400000    # 12.0f

    const/16 v0, 0x1c

    const/high16 v1, 0x41e00000    # 28.0f

    goto :goto_0

    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->outlineBackgroundPaint:Landroid/graphics/Paint;

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->outlineBackgroundPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->outlineBackgroundPaint:Landroid/graphics/Paint;

    const p2, 0x20e3e3e3

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->selectionProgress:F

    return p0
.end method

.method static synthetic access$002(Lorg/telegram/ui/Components/ThemeSmallPreviewView;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->selectionProgress:F

    return p1
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/ThemeSmallPreviewView;I)I
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->STROKE_RADIUS:F

    return p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)Landroid/text/StaticLayout;
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->getNoThemeStaticLayout()Landroid/text/StaticLayout;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->currentType:I

    return p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->BUBBLE_WIDTH:F

    return p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->BUBBLE_HEIGHT:F

    return p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)Landroid/graphics/Path;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->clipPath:Landroid/graphics/Path;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->INNER_RECT_SPACE:F

    return p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->INNER_RADIUS:F

    return p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)Landroid/graphics/RectF;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->rectF:Landroid/graphics/RectF;

    return-object p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->backgroundFillPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->strokeAlphaAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method private fillOutBubblePaint(Landroid/graphics/Paint;Ljava/util/List;)V
    .locals 9

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v6, v0, [I

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v1, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget p2, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->INNER_RECT_SPACE:F

    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    add-float v3, p2, v0

    new-instance p2, Landroid/graphics/LinearGradient;

    iget v0, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->BUBBLE_HEIGHT:F

    add-float v5, v3, v0

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    move-object v1, p2

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    :goto_1
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_2

    :cond_1
    const/4 p2, 0x0

    goto :goto_1

    :goto_2
    return-void
.end method

.method private getNoThemeStaticLayout()Landroid/text/StaticLayout;
    .locals 11

    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->textLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Landroid/text/TextPaint;

    const/16 v1, 0x81

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->noThemeTextPaint:Landroid/text/TextPaint;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelTrendingDescription:I

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->noThemeTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->noThemeStringTextSize()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->noThemeTextPaint:Landroid/text/TextPaint;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const/high16 v0, 0x42500000    # 52.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->currentType:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    move v9, v0

    goto :goto_2

    :cond_2
    :goto_1
    const/high16 v0, 0x429a0000    # 77.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    goto :goto_0

    :goto_2
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->noThemeString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->noThemeTextPaint:Landroid/text/TextPaint;

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    const/4 v7, 0x1

    const/4 v10, 0x3

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    move v3, v9

    invoke-static/range {v1 .. v10}, Lorg/telegram/ui/Components/StaticLayoutEx;->createStaticLayout2(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;II)Landroid/text/StaticLayout;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->textLayout:Landroid/text/StaticLayout;

    return-object v0
.end method

.method private getPreviewDrawable(Lorg/telegram/tgnet/TLRPC$TL_theme;I)Landroid/graphics/drawable/Drawable;
    .locals 11

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->chatThemeItem:Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    if-ltz p2, :cond_1

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_theme;->settings:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$ThemeSettings;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$ThemeSettings;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    iget p2, p1, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->background_color:I

    iget v0, p1, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->second_background_color:I

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->third_background_color:I

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->fourth_background_color:I

    move v4, p1

    move v9, p2

    move v2, v0

    move v3, v1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v9, 0x0

    :goto_0
    new-instance p1, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    if-eqz v2, :cond_2

    const/4 v5, 0x1

    move-object v0, p1

    move v1, v9

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;-><init>(IIIIZ)V

    invoke-virtual {p1}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->getPatternColor()I

    move-result p2

    :goto_1
    iput p2, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->patternColor:I

    goto :goto_2

    :cond_2
    const/4 v10, 0x1

    move-object v5, p1

    move v6, v9

    move v7, v9

    move v8, v9

    invoke-direct/range {v5 .. v10}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;-><init>(IIIIZ)V

    const/high16 p2, -0x1000000

    goto :goto_1

    :goto_2
    iget-object p2, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->chatThemeItem:Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;

    iput-object p1, p2, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;->previewDrawable:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method private getPreviewDrawable(Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;)Landroid/graphics/drawable/Drawable;
    .locals 9

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->chatThemeItem:Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget v0, p1, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;->patternBgColor:I

    iget v4, p1, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;->patternBgGradientColor1:I

    iget v5, p1, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;->patternBgGradientColor2:I

    iget v6, p1, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;->patternBgGradientColor3:I

    iget v7, p1, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;->patternBgRotation:I

    iget-object v2, p1, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;->themeInfo:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->getAccent(Z)Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    move-result-object v2

    if-eqz v2, :cond_2

    new-instance v1, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    const/4 v8, 0x1

    move-object v2, v1

    move v3, v0

    if-eqz v4, :cond_1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;-><init>(IIIIIZ)V

    invoke-virtual {v1}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->getPatternColor()I

    move-result p1

    :goto_0
    iput p1, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->patternColor:I

    goto/16 :goto_1

    :cond_1
    move v4, v0

    move v5, v0

    move v6, v0

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;-><init>(IIIIIZ)V

    const/high16 p1, -0x1000000

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    if-eqz v4, :cond_3

    new-instance v1, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    const/4 v8, 0x1

    move-object v2, v1

    move v3, v0

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;-><init>(IIIIIZ)V

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    goto :goto_1

    :cond_4
    iget-object v0, p1, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;->themeInfo:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    if-eqz v0, :cond_6

    iget v2, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->previewWallpaperOffset:I

    if-gtz v2, :cond_5

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->pathToWallpaper:Ljava/lang/String;

    if-eqz v0, :cond_6

    :cond_5
    const/high16 v0, 0x42e00000    # 112.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x43060000    # 134.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    iget-object p1, p1, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;->themeInfo:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    iget-object v3, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->pathToWallpaper:Ljava/lang/String;

    iget-object v4, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->pathToFile:Ljava/lang/String;

    iget p1, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->previewWallpaperOffset:I

    invoke-static {v0, v2, v3, v4, p1}, Lorg/telegram/messenger/AndroidUtilities;->getScaledBitmap(FFLjava/lang/String;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_8

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    const/4 p1, 0x1

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/BitmapDrawable;->setFilterBitmap(Z)V

    goto :goto_1

    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->chatThemeItem:Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;->chatTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/EmojiThemes;->isAnyStub()Z

    move-result p1

    if-nez p1, :cond_8

    :cond_7
    new-instance v1, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    const v6, -0x77477c

    const/4 v7, 0x1

    const v3, -0x242245

    const v4, -0x945a79

    const v5, -0x2a2773

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;-><init>(IIIIZ)V

    :cond_8
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->chatThemeItem:Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;

    iput-object v1, p1, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;->previewDrawable:Landroid/graphics/drawable/Drawable;

    return-object v1
.end method

.method private getThemedColor(I)I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method

.method private synthetic lambda$playEmojiAnimation$5()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->animationCancelRunnable:Ljava/lang/Runnable;

    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private synthetic lambda$setItem$0(JLorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;ILandroid/util/Pair;)V
    .locals 3

    if-eqz p5, :cond_2

    iget-object v0, p5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v2, v0, p1

    if-nez v2, :cond_2

    iget-object p1, p3, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;->previewDrawable:Landroid/graphics/drawable/Drawable;

    instance-of p2, p1, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    if-eqz p2, :cond_1

    check-cast p1, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    if-ltz p4, :cond_0

    const/16 p2, 0x64

    goto :goto_0

    :cond_0
    const/16 p2, -0x64

    :goto_0
    iget-object p3, p5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p3, Landroid/graphics/Bitmap;

    invoke-direct {p0, p3}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->prescaleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p3

    const/4 p4, 0x1

    invoke-virtual {p1, p2, p3, p4}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setPatternBitmap(ILandroid/graphics/Bitmap;Z)V

    iget p2, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->patternColor:I

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setPatternColorFilter(I)V

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_2
    return-void
.end method

.method private synthetic lambda$setItem$1(Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;Lorg/telegram/tgnet/TLRPC$WallPaper;Lorg/telegram/messenger/ImageReceiver;ZZZ)V
    .locals 0

    invoke-virtual {p3}, Lorg/telegram/messenger/ImageReceiver;->getBitmapSafe()Lorg/telegram/messenger/ImageReceiver$BitmapHolder;

    move-result-object p3

    if-eqz p4, :cond_3

    if-nez p3, :cond_0

    goto :goto_2

    :cond_0
    iget-object p3, p3, Lorg/telegram/messenger/ImageReceiver$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    if-eqz p3, :cond_3

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;->previewDrawable:Landroid/graphics/drawable/Drawable;

    instance-of p4, p1, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    if-eqz p4, :cond_3

    check-cast p1, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    if-eqz p2, :cond_2

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->intensity:I

    if-ltz p2, :cond_1

    goto :goto_0

    :cond_1
    const/16 p2, -0x64

    goto :goto_1

    :cond_2
    :goto_0
    const/16 p2, 0x64

    :goto_1
    invoke-direct {p0, p3}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->prescaleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p3

    const/4 p4, 0x1

    invoke-virtual {p1, p2, p3, p4}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setPatternBitmap(ILandroid/graphics/Bitmap;Z)V

    iget p2, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->patternColor:I

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setPatternColorFilter(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_3
    :goto_2
    return-void
.end method

.method private synthetic lambda$setItem$2(Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;ILandroid/graphics/Bitmap;)V
    .locals 1

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;->previewDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, p1, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    invoke-direct {p0, p3}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->prescaleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p3

    const/4 v0, 0x1

    invoke-virtual {p1, p2, p3, v0}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setPatternBitmap(ILandroid/graphics/Bitmap;Z)V

    iget p2, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->patternColor:I

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setPatternColorFilter(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$setItem$3(Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;I)V
    .locals 5

    sget v0, Lorg/telegram/messenger/R$raw;->default_pattern:I

    const/high16 v1, 0x42f00000    # 120.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/high16 v2, 0x430c0000    # 140.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->density:F

    const/high16 v4, -0x1000000

    invoke-static {v0, v1, v2, v4, v3}, Lorg/telegram/messenger/SvgHelper;->getBitmap(IIIIF)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/ThemeSmallPreviewView$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1, p2, v0}, Lorg/telegram/ui/Components/ThemeSmallPreviewView$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/ThemeSmallPreviewView;Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;ILandroid/graphics/Bitmap;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$setSelected$4(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->selectionProgress:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private prescaleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/high16 v0, 0x42f00000    # 120.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/2addr v0, v1

    const/high16 v1, 0x430c0000    # 140.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-lez v1, :cond_3

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x3c4ccccd    # 0.0125f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v0

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v0

    float-to-int v0, v2

    if-lez v0, :cond_3

    if-gtz v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    invoke-static {p1, v1, v0, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_3
    :goto_0
    return-object p1
.end method


# virtual methods
.method public cancelAnimation()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->animationCancelRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->animationCancelRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    sget p2, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    if-ne p1, p2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->chatThemeItem:Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->chatBackgroundDrawable:Lorg/telegram/ui/ChatBackgroundDrawable;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->clipPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->chatBackgroundDrawable:Lorg/telegram/ui/ChatBackgroundDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->chatBackgroundDrawable:Lorg/telegram/ui/ChatBackgroundDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ChatBackgroundDrawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->changeThemeProgress:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->animateOutThemeDrawable:Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->drawBackground(Landroid/graphics/Canvas;F)V

    :cond_2
    iget v0, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->changeThemeProgress:F

    const/4 v2, 0x0

    cmpl-float v3, v0, v2

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->themeDrawable:Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;

    invoke-virtual {v3, p1, v0}, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->drawBackground(Landroid/graphics/Canvas;F)V

    :cond_3
    iget v0, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->changeThemeProgress:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->animateOutThemeDrawable:Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->draw(Landroid/graphics/Canvas;F)V

    :cond_4
    iget v0, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->changeThemeProgress:F

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->themeDrawable:Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;

    invoke-virtual {v2, p1, v0}, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->draw(Landroid/graphics/Canvas;F)V

    :cond_5
    iget v0, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->changeThemeProgress:F

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_7

    const v2, 0x3dda740e

    add-float/2addr v0, v2

    iput v0, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->changeThemeProgress:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_6

    iput v1, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->changeThemeProgress:F

    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_7
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected noThemeString()Ljava/lang/String;
    .locals 1

    sget v0, Lorg/telegram/messenger/R$string;->ChatNoTheme:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected noThemeStringTextSize()I
    .locals 1

    const/16 v0, 0xe

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->attached:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->chatBackgroundDrawable:Lorg/telegram/ui/ChatBackgroundDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lorg/telegram/ui/ChatBackgroundDrawable;->onAttachedToWindow(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->attached:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->chatBackgroundDrawable:Lorg/telegram/ui/ChatBackgroundDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lorg/telegram/ui/ChatBackgroundDrawable;->onDetachedFromWindow(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->isSelected:Z

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    iget v0, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->currentType:I

    const/4 v1, 0x1

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_2

    :cond_0
    if-nez v0, :cond_1

    const/high16 p1, 0x429a0000    # 77.0f

    goto :goto_0

    :cond_1
    const/high16 p1, 0x42a60000    # 83.0f

    :goto_0
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    if-nez p2, :cond_2

    int-to-float p2, p1

    const v0, 0x3faccccd    # 1.35f

    goto :goto_3

    :cond_2
    :goto_1
    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto :goto_4

    :cond_3
    :goto_2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    int-to-float p2, p1

    const v0, 0x3f99999a    # 1.2f

    :goto_3
    mul-float p2, p2, v0

    float-to-int p2, p2

    goto :goto_1

    :goto_4
    iget-object p1, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setPivotY(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    int-to-float p2, p2

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/view/View;->setPivotX(F)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    if-ne p1, p3, :cond_0

    if-ne p2, p4, :cond_0

    return-void

    :cond_0
    iget-object p3, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->rectF:Landroid/graphics/RectF;

    iget p4, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->INNER_RECT_SPACE:F

    int-to-float p1, p1

    sub-float/2addr p1, p4

    int-to-float p2, p2

    sub-float/2addr p2, p4

    invoke-virtual {p3, p4, p4, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->clipPath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    iget-object p1, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->clipPath:Landroid/graphics/Path;

    iget-object p2, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->rectF:Landroid/graphics/RectF;

    iget p3, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->INNER_RADIUS:F

    sget-object p4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, p2, p3, p3, p4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    return-void
.end method

.method public playEmojiAnimation()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->animationCancelRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/ui/Components/RLottieDrawable;->isRunning:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZ)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->start()V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->overshootInterpolator:Landroid/view/animation/OvershootInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    new-instance v0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ThemeSmallPreviewView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->animationCancelRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x9c4

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_1
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->backgroundFillPaint:Landroid/graphics/Paint;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackgroundGray:I

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->getThemedColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->noThemeTextPaint:Landroid/text/TextPaint;

    if-eqz p1, :cond_0

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelTrendingDescription:I

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->getThemedColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setFallbackWallpaper(Lorg/telegram/tgnet/TLRPC$WallPaper;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->fallbackWallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    if-eq v0, p1, :cond_1

    iput-object p1, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->fallbackWallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    iget-object p1, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->chatThemeItem:Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;

    if-eqz p1, :cond_1

    iget-object v0, p1, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;->chatTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/EmojiThemes;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->chatThemeItem:Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->setItem(Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;Z)V

    :cond_1
    return-void
.end method

.method public setItem(Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;Z)V
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v4, p1

    iget-object v0, v6, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->chatThemeItem:Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;

    const/4 v1, 0x1

    const/4 v7, 0x0

    if-eq v0, v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v2, v6, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->lastThemeIndex:I

    iget v3, v4, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;->themeIndex:I

    if-eq v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    iput v3, v6, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->lastThemeIndex:I

    iput-object v4, v6, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->chatThemeItem:Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;

    iput-boolean v7, v6, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->hasAnimatedEmoji:Z

    iget-object v3, v4, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;->chatTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/EmojiThemes;->getEmoticon()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    iget v3, v6, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v3

    iget-object v8, v4, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;->chatTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

    invoke-virtual {v8}, Lorg/telegram/ui/ActionBar/EmojiThemes;->getEmoticon()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lorg/telegram/messenger/MediaDataController;->getEmojiAnimatedSticker(Ljava/lang/CharSequence;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object v3, v5

    :goto_2
    const/high16 v8, 0x3f800000    # 1.0f

    if-eqz v0, :cond_4

    iget-object v9, v6, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->animationCancelRunnable:Ljava/lang/Runnable;

    if-eqz v9, :cond_3

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iput-object v5, v6, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->animationCancelRunnable:Ljava/lang/Runnable;

    :cond_3
    iget-object v9, v6, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v9}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v9, v6, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v9, v8}, Landroid/view/View;->setScaleX(F)V

    iget-object v9, v6, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v9, v8}, Landroid/view/View;->setScaleY(F)V

    :cond_4
    if-eqz v0, :cond_b

    if-eqz v3, :cond_5

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_emptyListPlaceholder:I

    const v10, 0x3e4ccccd    # 0.2f

    invoke-static {v3, v9, v10}, Lorg/telegram/messenger/DocumentObject;->getSvgThumb(Lorg/telegram/tgnet/TLRPC$Document;IF)Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    move-result-object v9

    goto :goto_3

    :cond_5
    move-object v9, v5

    :goto_3
    if-nez v9, :cond_6

    iget-object v9, v4, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;->chatTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

    invoke-virtual {v9}, Lorg/telegram/ui/ActionBar/EmojiThemes;->getEmoticon()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/telegram/messenger/Emoji;->preloadEmoji(Ljava/lang/CharSequence;)V

    iget-object v9, v4, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;->chatTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

    invoke-virtual {v9}, Lorg/telegram/ui/ActionBar/EmojiThemes;->getEmoticon()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/telegram/messenger/Emoji;->getEmojiDrawable(Ljava/lang/CharSequence;)Lorg/telegram/messenger/Emoji$EmojiDrawable;

    move-result-object v9

    :cond_6
    iget-object v10, v6, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-static {v3}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v3

    const-string v11, "50_50"

    invoke-virtual {v10, v3, v11, v9, v5}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    iget-object v3, v4, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;->chatTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/EmojiThemes;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    if-nez v3, :cond_7

    iget-object v3, v6, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->fallbackWallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    :cond_7
    if-eqz v3, :cond_9

    iget-boolean v9, v6, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->attached:Z

    if-eqz v9, :cond_8

    iget-object v9, v6, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->chatBackgroundDrawable:Lorg/telegram/ui/ChatBackgroundDrawable;

    if-eqz v9, :cond_8

    invoke-virtual {v9, v6}, Lorg/telegram/ui/ChatBackgroundDrawable;->onDetachedFromWindow(Landroid/view/View;)V

    :cond_8
    new-instance v9, Lorg/telegram/ui/ChatBackgroundDrawable;

    invoke-direct {v9, v3, v7, v1}, Lorg/telegram/ui/ChatBackgroundDrawable;-><init>(Lorg/telegram/tgnet/TLRPC$WallPaper;ZZ)V

    iput-object v9, v6, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->chatBackgroundDrawable:Lorg/telegram/ui/ChatBackgroundDrawable;

    invoke-virtual {v9, v6}, Lorg/telegram/ui/ChatBackgroundDrawable;->setParent(Landroid/view/View;)V

    iget-boolean v1, v6, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->attached:Z

    if-eqz v1, :cond_b

    iget-object v1, v6, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->chatBackgroundDrawable:Lorg/telegram/ui/ChatBackgroundDrawable;

    invoke-virtual {v1, v6}, Lorg/telegram/ui/ChatBackgroundDrawable;->onAttachedToWindow(Landroid/view/View;)V

    goto :goto_4

    :cond_9
    iget-boolean v1, v6, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->attached:Z

    if-eqz v1, :cond_a

    iget-object v1, v6, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->chatBackgroundDrawable:Lorg/telegram/ui/ChatBackgroundDrawable;

    if-eqz v1, :cond_a

    invoke-virtual {v1, v6}, Lorg/telegram/ui/ChatBackgroundDrawable;->onDetachedFromWindow(Landroid/view/View;)V

    :cond_a
    iput-object v5, v6, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->chatBackgroundDrawable:Lorg/telegram/ui/ChatBackgroundDrawable;

    :cond_b
    :goto_4
    iget-object v1, v6, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v3, v4, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;->chatTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/EmojiThemes;->isAnyStub()Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, v6, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->fallbackWallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    if-eqz v3, :cond_c

    const/16 v3, 0x8

    goto :goto_5

    :cond_c
    const/4 v3, 0x0

    :goto_5
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    if-nez v0, :cond_d

    if-eqz v2, :cond_13

    :cond_d
    if-eqz p2, :cond_e

    const/4 v0, 0x0

    iput v0, v6, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->changeThemeProgress:F

    iget-object v0, v6, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->themeDrawable:Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;

    iput-object v0, v6, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->animateOutThemeDrawable:Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;

    new-instance v0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;

    invoke-direct {v0, v6}, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;-><init>(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)V

    iput-object v0, v6, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->themeDrawable:Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    goto :goto_6

    :cond_e
    iput v8, v6, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->changeThemeProgress:F

    :goto_6
    iget-object v0, v6, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->themeDrawable:Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;

    invoke-virtual {v6, v0}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->updatePreviewBackground(Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;)V

    iget-object v0, v4, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;->chatTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

    iget v1, v6, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->lastThemeIndex:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/EmojiThemes;->getTlTheme(I)Lorg/telegram/tgnet/TLRPC$TL_theme;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$TL_theme;->id:J

    iget-object v0, v4, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;->chatTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

    iget v1, v6, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->lastThemeIndex:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/EmojiThemes;->getWallpaper(I)Lorg/telegram/tgnet/TLRPC$WallPaper;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->intensity:I

    iget-object v9, v4, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;->chatTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

    iget v10, v6, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->lastThemeIndex:I

    new-instance v11, Lorg/telegram/ui/Components/ThemeSmallPreviewView$$ExternalSyntheticLambda2;

    move-object v0, v11

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/ThemeSmallPreviewView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/ThemeSmallPreviewView;JLorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;I)V

    invoke-virtual {v9, v10, v11}, Lorg/telegram/ui/ActionBar/EmojiThemes;->loadWallpaperThumb(ILorg/telegram/tgnet/ResultCallback;)V

    goto/16 :goto_7

    :cond_f
    iget-object v0, v4, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;->chatTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

    iget v1, v6, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->lastThemeIndex:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/EmojiThemes;->getThemeInfo(I)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->themeAccentsMap:Landroid/util/SparseArray;

    if-eqz v0, :cond_10

    iget-object v1, v4, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;->chatTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

    iget v2, v6, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->lastThemeIndex:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/EmojiThemes;->getAccentId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    :cond_10
    if-eqz v5, :cond_11

    iget-object v0, v5, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->info:Lorg/telegram/tgnet/TLRPC$TL_theme;

    if-eqz v0, :cond_11

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_theme;->settings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_11

    iget-object v0, v5, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->info:Lorg/telegram/tgnet/TLRPC$TL_theme;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_theme;->settings:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$ThemeSettings;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ThemeSettings;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    if-eqz v0, :cond_13

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$WallPaper;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v1, :cond_13

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    const/16 v3, 0x78

    invoke-static {v2, v3}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v10

    new-instance v1, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v1}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    invoke-virtual {v1, v7}, Lorg/telegram/messenger/ImageReceiver;->setAllowLoadingOnAttachedOnly(Z)V

    const/4 v14, 0x0

    const/4 v15, 0x1

    const-string v11, "120_140"

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v9, v1

    invoke-virtual/range {v9 .. v15}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    new-instance v2, Lorg/telegram/ui/Components/ThemeSmallPreviewView$$ExternalSyntheticLambda3;

    invoke-direct {v2, v6, v4, v0}, Lorg/telegram/ui/Components/ThemeSmallPreviewView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/ThemeSmallPreviewView;Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;Lorg/telegram/tgnet/TLRPC$WallPaper;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setDelegate(Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;)V

    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageLoader;->loadImageForImageReceiver(Lorg/telegram/messenger/ImageReceiver;)V

    goto :goto_7

    :cond_11
    if-eqz v5, :cond_13

    iget-object v0, v5, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->info:Lorg/telegram/tgnet/TLRPC$TL_theme;

    if-nez v0, :cond_13

    iget v0, v5, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->patternIntensity:F

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    iget-object v1, v4, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;->previewDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v2, v1, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    if-eqz v2, :cond_12

    check-cast v1, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setPatternBitmap(I)V

    :cond_12
    sget-object v1, Lorg/telegram/messenger/ChatThemeController;->chatThemeQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/ui/Components/ThemeSmallPreviewView$$ExternalSyntheticLambda4;

    invoke-direct {v2, v6, v4, v0}, Lorg/telegram/ui/Components/ThemeSmallPreviewView$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/ThemeSmallPreviewView;Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;I)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    :cond_13
    :goto_7
    if-nez p2, :cond_14

    iget-object v0, v6, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, v6, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0, v8}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, v6, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0, v8}, Landroid/view/View;->setScaleY(F)V

    iget-object v0, v6, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->animationCancelRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-object v0, v6, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, v6, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->stop()V

    iget-object v0, v6, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    invoke-virtual {v0, v7, v7}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZ)V

    :cond_14
    iget-object v0, v6, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->chatThemeItem:Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;->chatTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/EmojiThemes;->isAnyStub()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_9

    :cond_15
    iget-object v0, v6, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->chatThemeItem:Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;->chatTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/EmojiThemes;->getEmoticon()Ljava/lang/String;

    move-result-object v0

    :goto_8
    invoke-virtual {v6, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_a

    :cond_16
    :goto_9
    sget v0, Lorg/telegram/messenger/R$string;->ChatNoTheme:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :goto_a
    return-void
.end method

.method public setSelected(ZZ)V
    .locals 3

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez p2, :cond_2

    iget-object p2, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->strokeAlphaAnimator:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->isSelected:Z

    if-eqz p1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_1
    iput v0, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->selectionProgress:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    :cond_2
    iget-boolean p2, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->isSelected:Z

    if-eq p2, p1, :cond_5

    iget p2, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->selectionProgress:F

    iget-object v2, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->strokeAlphaAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_3
    if-eqz p1, :cond_4

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_4
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p2, v1, v2

    const/4 p2, 0x1

    aput v0, v1, p2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->strokeAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ThemeSmallPreviewView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p2, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->strokeAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$1;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/ThemeSmallPreviewView$1;-><init>(Lorg/telegram/ui/Components/ThemeSmallPreviewView;Z)V

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p2, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->strokeAlphaAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xfa

    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->strokeAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    :cond_5
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->isSelected:Z

    return-void
.end method

.method public updatePreviewBackground(Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->chatThemeItem:Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;

    if-eqz v0, :cond_3

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;->chatTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    iget v0, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;->themeIndex:I

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/EmojiThemes;->getThemeItem(I)Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;

    move-result-object v0

    iget v1, v0, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;->inBubbleColor:I

    invoke-static {p1}, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->access$100(Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;)Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v1, v0, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;->outBubbleColor:I

    invoke-static {p1}, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->access$200(Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;)Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->chatThemeItem:Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;->chatTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/EmojiThemes;->isAnyStub()Z

    move-result v1

    if-eqz v1, :cond_1

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->getThemedColor(I)I

    move-result v0

    goto :goto_0

    :cond_1
    iget v0, v0, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;->outLineColor:I

    :goto_0
    invoke-static {p1}, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->access$300(Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    invoke-static {p1}, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->access$300(Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;)Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-static {p1}, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->access$300(Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->chatThemeItem:Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;->chatTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

    iget v0, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;->themeIndex:I

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/EmojiThemes;->getTlTheme(I)Lorg/telegram/tgnet/TLRPC$TL_theme;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->chatThemeItem:Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;

    iget-object v2, v1, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;->chatTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

    iget v1, v1, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;->themeIndex:I

    invoke-virtual {v2, v1}, Lorg/telegram/ui/ActionBar/EmojiThemes;->getSettingsIndex(I)I

    move-result v1

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_theme;->settings:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$ThemeSettings;

    invoke-static {p1}, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->access$200(Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;)Landroid/graphics/Paint;

    move-result-object v3

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ThemeSettings;->message_colors:Ljava/util/ArrayList;

    invoke-direct {p0, v3, v2}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->fillOutBubblePaint(Landroid/graphics/Paint;Ljava/util/List;)V

    invoke-static {p1}, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->access$200(Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;)Landroid/graphics/Paint;

    move-result-object v2

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->getPreviewDrawable(Lorg/telegram/tgnet/TLRPC$TL_theme;I)Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->chatThemeItem:Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;->chatTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

    iget v0, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;->themeIndex:I

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/EmojiThemes;->getThemeItem(I)Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->getPreviewDrawable(Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;)Landroid/graphics/drawable/Drawable;

    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->chatThemeItem:Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;->previewDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p1, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->previewDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_3
    :goto_2
    return-void
.end method
