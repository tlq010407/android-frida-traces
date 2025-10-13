.class public Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$EntryView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EntryView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$EntryView$Factory;
    }
.end annotation


# instance fields
.field private animatedChecked:Lorg/telegram/ui/Components/AnimatedFloat;

.field private animatedSelected:Lorg/telegram/ui/Components/AnimatedFloat;

.field private checkboxBounce:Lorg/telegram/ui/Components/ButtonBounce;

.field private checked:Z

.field private final counter:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

.field private cx:F

.field private cy:F

.field private final fillPaint:Landroid/graphics/Paint;

.field private final imageReceiver:Lorg/telegram/messenger/ImageReceiver;

.field private lastEntryPath:Ljava/lang/String;

.field private lastId:I

.field private onCheckboxClick:Landroid/view/View$OnClickListener;

.field private r:F

.field private selected:Z

.field private final strokePaint:Landroid/graphics/Paint;


# direct methods
.method public static synthetic $r8$lambda$3-rp1LfRHL0w8MUz324MMxOhYSg(Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$EntryView;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$EntryView;->lambda$set$0(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Slf_HtS-QFxJS0VJP-c1V0kTEeY(Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$EntryView;Lorg/telegram/ui/Stories/recorder/StoryEntry;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$EntryView;->lambda$set$3(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XSWg-e0J_X7UxcJXSaDHFHgEKZA(Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$EntryView;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$EntryView;->lambda$set$2(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oYbL-qD-9yWkVkEsTrwDgEu53VM(Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$EntryView;Lorg/telegram/ui/Stories/recorder/StoryEntry;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$EntryView;->lambda$set$1(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 13

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance p1, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {p1, p0}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$EntryView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$EntryView;->strokePaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$EntryView;->fillPaint:Landroid/graphics/Paint;

    new-instance v1, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-direct {v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$EntryView;->counter:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    new-instance v3, Lorg/telegram/ui/Components/ButtonBounce;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/ButtonBounce;-><init>(Landroid/view/View;)V

    iput-object v3, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$EntryView;->checkboxBounce:Lorg/telegram/ui/Components/ButtonBounce;

    const/4 v10, -0x1

    iput v10, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$EntryView;->lastId:I

    new-instance v11, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v12, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x140

    move-object v3, v11

    move-object v4, p0

    move-object v9, v12

    invoke-direct/range {v3 .. v9}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v11, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$EntryView;->animatedSelected:Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance v11, Lorg/telegram/ui/Components/AnimatedFloat;

    move-object v3, v11

    invoke-direct/range {v3 .. v9}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v11, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$EntryView;->animatedChecked:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {v1, v10}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextColor(I)V

    const/16 v3, 0x11

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setGravity(I)V

    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextSize(F)V

    const-string v3, "fonts/num.otf"

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTypeface(Landroid/graphics/Typeface;)V

    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setOverrideFullWidth(I)V

    const-wide/16 v7, 0x1e0

    const v4, 0x3f266666    # 0.65f

    move-object v3, v1

    invoke-virtual/range {v3 .. v9}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setAnimationProperties(FJJLandroid/animation/TimeInterpolator;)V

    const v3, 0x3eb33333    # 0.35f

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setScaleProperty(F)V

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->setColor(I)V

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-static {v0, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p2

    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 p2, 0x40c00000    # 6.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    invoke-static {p0}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$set$0(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$EntryView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private synthetic lambda$set$1(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V
    .locals 4

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iget-object v2, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->draftThumbFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const/high16 v2, 0x42bc0000    # 94.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/high16 v3, 0x42e00000    # 112.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v0, v2, v3}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->setupScale(Landroid/graphics/BitmapFactory$Options;II)V

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->draftThumbFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$EntryView$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$EntryView$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$EntryView;Landroid/graphics/Bitmap;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$set$2(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$EntryView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private synthetic lambda$set$3(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V
    .locals 4

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iget-object v2, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const/high16 v2, 0x42bc0000    # 94.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/high16 v3, 0x42e00000    # 112.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v0, v2, v3}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->setupScale(Landroid/graphics/BitmapFactory$Options;II)V

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->file:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$EntryView$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$EntryView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$EntryView;Landroid/graphics/Bitmap;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8

    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$EntryView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x42bc0000    # 94.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x42e00000    # 112.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v0, v2, v4, v5, v6}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$EntryView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$EntryView;->strokePaint:Landroid/graphics/Paint;

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$EntryView;->animatedSelected:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v2, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$EntryView;->selected:Z

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v0

    const/high16 v2, 0x437f0000    # 255.0f

    const/4 v4, 0x0

    cmpl-float v5, v0, v4

    if-lez v5, :cond_0

    sget-object v5, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    const/high16 v6, 0x42c00000    # 96.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x42e80000    # 116.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v5, v1, v3, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$EntryView;->strokePaint:Landroid/graphics/Paint;

    mul-float v0, v0, v2

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    const/high16 v0, 0x40c00000    # 6.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$EntryView;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v1, v0, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    const v1, 0x41894dd3    # 17.163f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$EntryView;->cx:F

    const v0, 0x418ea9fc    # 17.833f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$EntryView;->cy:F

    const v0, 0x414d53f8    # 12.833f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$EntryView;->r:F

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$EntryView;->animatedChecked:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$EntryView;->checked:Z

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$EntryView;->checkboxBounce:Lorg/telegram/ui/Components/ButtonBounce;

    const v3, 0x3d99999a    # 0.075f

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/ButtonBounce;->getScale(F)F

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v3, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$EntryView;->cx:F

    iget v5, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$EntryView;->cy:F

    invoke-virtual {p1, v1, v1, v3, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    cmpl-float v1, v0, v4

    if-lez v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$EntryView;->fillPaint:Landroid/graphics/Paint;

    mul-float v3, v0, v2

    float-to-int v3, v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$EntryView;->cx:F

    iget v3, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$EntryView;->cy:F

    iget v5, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$EntryView;->r:F

    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$EntryView;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$EntryView;->strokePaint:Landroid/graphics/Paint;

    const/16 v3, 0xff

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$EntryView;->cx:F

    iget v3, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$EntryView;->cy:F

    iget v5, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$EntryView;->r:F

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$EntryView;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    cmpl-float v1, v0, v4

    if-lez v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$EntryView;->counter:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    iget v3, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$EntryView;->cx:F

    iget v4, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$EntryView;->r:F

    sub-float v5, v3, v4

    iget v6, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$EntryView;->cy:F

    add-float/2addr v3, v4

    invoke-virtual {v1, v5, v6, v3, v6}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setBounds(FFFF)V

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$EntryView;->counter:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    mul-float v0, v0, v2

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setAlpha(I)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$EntryView;->counter:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$EntryView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$EntryView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    const/high16 p1, 0x42c40000    # 98.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/high16 v0, 0x42f00000    # 120.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$EntryView;->cx:F

    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v1, v3

    const/4 v3, 0x0

    const/4 v4, 0x1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$EntryView;->cx:F

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v1, v5

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$EntryView;->cy:F

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v1, v5

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$EntryView;->cy:F

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$EntryView;->checkboxBounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v4, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$EntryView;->checkboxBounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ButtonBounce;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$EntryView;->onCheckboxClick:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_3

    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$EntryView;->checkboxBounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    :cond_4
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$EntryView;->checkboxBounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ButtonBounce;->isPressed()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_5
    const/4 v3, 0x1

    :cond_6
    return v3
.end method

.method public set(IILorg/telegram/ui/Stories/recorder/StoryEntry;)V
    .locals 4

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$EntryView;->lastId:I

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$EntryView;->lastEntryPath:Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$EntryView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->clearImage()V

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$EntryView;->lastId:I

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$EntryView;->counter:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    add-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;Z)V

    iget-object p1, p3, Lorg/telegram/ui/Stories/recorder/StoryEntry;->draftThumbFile:Ljava/io/File;

    if-eqz p1, :cond_2

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$EntryView;->lastEntryPath:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p3, Lorg/telegram/ui/Stories/recorder/StoryEntry;->draftThumbFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$EntryView;->lastEntryPath:Ljava/lang/String;

    sget-object p1, Lorg/telegram/messenger/Utilities;->searchQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance p2, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$EntryView$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, p3}, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$EntryView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$EntryView;Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    :goto_0
    invoke-virtual {p1, p2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    goto/16 :goto_3

    :cond_2
    iget-boolean p1, p3, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-eqz p1, :cond_7

    iget-object p1, p3, Lorg/telegram/ui/Stories/recorder/StoryEntry;->blurredVideoThumb:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    move-object p1, v1

    :goto_1
    if-nez p1, :cond_6

    iget-object p2, p3, Lorg/telegram/ui/Stories/recorder/StoryEntry;->thumbPath:Ljava/lang/String;

    if-eqz p2, :cond_6

    const-string v0, "vthumb://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$EntryView;->lastEntryPath:Ljava/lang/String;

    iget-object v0, p3, Lorg/telegram/ui/Stories/recorder/StoryEntry;->thumbPath:Ljava/lang/String;

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4

    return-void

    :cond_4
    iget-object p2, p3, Lorg/telegram/ui/Stories/recorder/StoryEntry;->thumbPath:Ljava/lang/String;

    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$EntryView;->lastEntryPath:Ljava/lang/String;

    const/16 v0, 0x9

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    if-nez p1, :cond_6

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-lt p2, v0, :cond_6

    :try_start_0
    iget-boolean p2, p3, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-eqz p2, :cond_5

    sget-object p2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_2

    :cond_5
    sget-object p2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    :goto_2
    invoke-static {p2, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    new-instance v0, Landroid/util/Size;

    const/high16 v2, 0x42bc0000    # 94.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/high16 v3, 0x42e00000    # 112.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/util/Size;-><init>(II)V

    invoke-static {p3, p2, v0, v1}, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$EntryView$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/util/Size;Landroid/os/CancellationSignal;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_6
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$EntryView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p2, p1}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_3

    :cond_7
    iget-object p1, p3, Lorg/telegram/ui/Stories/recorder/StoryEntry;->file:Ljava/io/File;

    if-eqz p1, :cond_9

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$EntryView;->lastEntryPath:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_8

    return-void

    :cond_8
    iget-object p1, p3, Lorg/telegram/ui/Stories/recorder/StoryEntry;->file:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$EntryView;->lastEntryPath:Ljava/lang/String;

    sget-object p1, Lorg/telegram/messenger/Utilities;->searchQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance p2, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$EntryView$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0, p3}, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$EntryView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$EntryView;Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    goto/16 :goto_0

    :cond_9
    :goto_3
    return-void
.end method

.method public setChecked(ZZ)V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$EntryView;->checked:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$EntryView;->checked:Z

    if-nez p2, :cond_1

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$EntryView;->animatedChecked:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/AnimatedFloat;->force(Z)V

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setOnCheckboxClick(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$EntryView;->onCheckboxClick:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setPosition(I)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$EntryView;->counter:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const/4 v1, 0x1

    if-gez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    add-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method public setSelected(ZZ)V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$EntryView;->selected:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$EntryView;->selected:Z

    if-nez p2, :cond_1

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$EntryView;->animatedSelected:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/AnimatedFloat;->force(Z)V

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$EntryView;->counter:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    if-eq p1, v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
