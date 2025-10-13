.class Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stories/recorder/GalleryListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Cell"
.end annotation


# static fields
.field private static allQueues:Ljava/util/ArrayList;

.field private static allQueuesIndex:I

.field private static final bitmapsCache:Landroid/util/LruCache;

.field private static final bitmapsUseCounts:Ljava/util/HashMap;


# instance fields
.field private final alwaysShowCheckbox:Z

.field private aspectRatio:F

.field private final bgPaint:Landroid/graphics/Paint;

.field private bitmap:Landroid/graphics/Bitmap;

.field private final bitmapMatrix:Landroid/graphics/Matrix;

.field private final bitmapPaint:Landroid/graphics/Paint;

.field public checkBox:Lorg/telegram/ui/Components/CheckBox2;

.field public checkBoxContainer:Landroid/widget/FrameLayout;

.field private final clipPath:Landroid/graphics/Path;

.field private currentKey:Ljava/lang/String;

.field private currentObject:Ljava/lang/Object;

.field private draftLayout:Landroid/text/StaticLayout;

.field private draftLayoutLeft:F

.field private draftLayoutWidth:F

.field private final draftTextPaint:Landroid/text/TextPaint;

.field private drawDurationPlay:Z

.field private final durationBackgroundPaint:Landroid/graphics/Paint;

.field private durationLayout:Landroid/text/StaticLayout;

.field private durationLayoutLeft:F

.field private durationLayoutWidth:F

.field private final durationPlayDrawable:Landroid/graphics/drawable/Drawable;

.field private final durationTextPaint:Landroid/text/TextPaint;

.field private gradient:Landroid/graphics/LinearGradient;

.field private final gradientMatrix:Landroid/graphics/Matrix;

.field private final gradientPaint:Landroid/graphics/Paint;

.field private loadingBitmap:Ljava/lang/Runnable;

.field private myQueue:Lorg/telegram/messenger/DispatchQueue;

.field private final paintUnderCheck:Landroid/graphics/Paint;

.field private final radii:[F

.field private topLeft:Z

.field private topRight:Z

.field private final unload:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$LymCXels-Kzku2m4a8lKyOiEChQ(Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$TCRvr-1gvx9HPeuwmGvtXOUcKvQ(Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;Ljava/lang/String;Landroid/util/Pair;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->lambda$loadBitmap$2(Ljava/lang/String;Landroid/util/Pair;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_7dMz2ydq9aw3dMFIaBmuW4r2oo(Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->lambda$loadBitmap$3(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$djyHlxKzUEr9cxym1gQawI3susQ(Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->lambda$setCheckbox$1(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->allQueues:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->bitmapsUseCounts:Ljava/util/HashMap;

    new-instance v0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell$2;

    const/16 v1, 0x2d

    invoke-direct {v0, v1}, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell$2;-><init>(I)V

    sput-object v0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->bitmapsCache:Landroid/util/LruCache;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;FZ)V
    .locals 7

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->bitmapPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->bgPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->gradientPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->bitmapMatrix:Landroid/graphics/Matrix;

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->gradientMatrix:Landroid/graphics/Matrix;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->durationBackgroundPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/text/TextPaint;

    invoke-direct {v3, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v3, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->durationTextPaint:Landroid/text/TextPaint;

    new-instance v4, Landroid/text/TextPaint;

    invoke-direct {v4, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v4, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->draftTextPaint:Landroid/text/TextPaint;

    new-instance v5, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;)V

    iput-object v5, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->unload:Ljava/lang/Runnable;

    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    iput-object v5, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->clipPath:Landroid/graphics/Path;

    const/16 v5, 0x8

    new-array v5, v5, [F

    iput-object v5, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->radii:[F

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v5, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->paintUnderCheck:Landroid/graphics/Paint;

    iput p3, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->aspectRatio:F

    iput-boolean p4, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->alwaysShowCheckbox:Z

    const p3, 0x10ffffff

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 p3, 0x4c000000    # 3.3554432E7f

    invoke-virtual {v2, p3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object p3

    invoke-virtual {v3, p3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const p3, 0x414a8f5c    # 12.66f

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result p3

    invoke-virtual {v3, p3}, Landroid/graphics/Paint;->setTextSize(F)V

    const/4 p3, -0x1

    invoke-virtual {v3, p3}, Landroid/graphics/Paint;->setColor(I)V

    const v0, 0x413547ae    # 11.33f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v4, p3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lorg/telegram/messenger/R$drawable;->play_mini_video:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->durationPlayDrawable:Landroid/graphics/drawable/Drawable;

    new-instance p3, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell$1;

    const/16 v0, 0x18

    invoke-direct {p3, p0, p1, v0, p2}, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell$1;-><init>(Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p3, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    if-nez p4, :cond_0

    const/4 p2, 0x6

    :goto_0
    invoke-virtual {p3, p2}, Lorg/telegram/ui/Components/CheckBox2;->setDrawBackgroundAsArc(I)V

    goto :goto_1

    :cond_0
    const/4 p2, 0x7

    goto :goto_0

    :goto_1
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    sget p3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachCheckBoxBackground:I

    sget p4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachPhotoBackground:I

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachCheckBoxCheck:I

    invoke-virtual {p2, p3, p4, v0}, Lorg/telegram/ui/Components/CheckBox2;->setColor(III)V

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/CheckBox2;->getCheckBoxBase()Lorg/telegram/ui/Components/CheckBoxBase;

    move-result-object p2

    sget p3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/CheckBoxBase;->setStrokeBackgroundColor(I)V

    new-instance p2, Landroid/widget/FrameLayout;

    invoke-direct {p2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->checkBoxContainer:Landroid/widget/FrameLayout;

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    const/16 p3, 0x11

    const/16 p4, 0x1a

    invoke-static {p4, p4, p3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->checkBoxContainer:Landroid/widget/FrameLayout;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v0, 0x24

    const/high16 v1, 0x42100000    # 36.0f

    const/16 v2, 0x35

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->checkBoxContainer:Landroid/widget/FrameLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, p2}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->currentObject:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->bitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$1500()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->bitmapsUseCounts:Ljava/util/HashMap;

    return-object v0
.end method

.method private afterLoad(Ljava/lang/String;Landroid/graphics/Bitmap;[I)V
    .locals 8

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p2}, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->currentKey:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->releaseBitmap(Ljava/lang/String;)V

    return-void

    :cond_1
    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->bitmap:Landroid/graphics/Bitmap;

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->gradientPaint:Landroid/graphics/Paint;

    if-nez p3, :cond_2

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->gradient:Landroid/graphics/LinearGradient;

    goto :goto_0

    :cond_2
    new-instance p2, Landroid/graphics/LinearGradient;

    const/4 v0, 0x2

    new-array v6, v0, [F

    fill-array-data v6, :array_0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->gradient:Landroid/graphics/LinearGradient;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->updateMatrix()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static cleanupQueues()V
    .locals 2

    invoke-static {}, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->releaseAllBitmaps()V

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->allQueues:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    sget-object v1, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->allQueues:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/DispatchQueue;

    invoke-virtual {v1}, Lorg/telegram/messenger/DispatchQueue;->cleanupQueue()V

    sget-object v1, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->allQueues:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/DispatchQueue;

    invoke-virtual {v1}, Lorg/telegram/messenger/DispatchQueue;->recycle()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->allQueues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private static getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->bitmapsCache:Landroid/util/LruCache;

    invoke-virtual {v0, p0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    sget-object v1, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->bitmapsUseCounts:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    const/4 v3, 0x1

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v3, v2

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method private getQueue()Lorg/telegram/messenger/DispatchQueue;
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->myQueue:Lorg/telegram/messenger/DispatchQueue;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->allQueues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    sget-object v0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->allQueues:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gallery_load_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->allQueues:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->myQueue:Lorg/telegram/messenger/DispatchQueue;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    sget v0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->allQueuesIndex:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->allQueuesIndex:I

    sget-object v1, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->allQueues:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_2

    const/4 v0, 0x0

    sput v0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->allQueuesIndex:I

    :cond_2
    sget-object v0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->allQueues:Ljava/util/ArrayList;

    sget v1, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->allQueuesIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/DispatchQueue;

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->myQueue:Lorg/telegram/messenger/DispatchQueue;

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->myQueue:Lorg/telegram/messenger/DispatchQueue;

    return-object v0
.end method

.method private getThumbnail(Ljava/lang/Object;)Landroid/util/Pair;
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x43a50000    # 330.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-int v1, v1

    int-to-float v2, v1

    iget v3, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->aspectRatio:F

    mul-float v2, v2, v3

    float-to-int v2, v2

    instance-of v3, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_3

    check-cast p1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v5, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-direct {p0, p1, v3}, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->readBitmap(Lorg/telegram/messenger/MediaController$PhotoEntry;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    invoke-static {v3, v1, v2}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->setupScale(Landroid/graphics/BitmapFactory$Options;II)V

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    iput-boolean v5, v3, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-direct {p0, p1, v3}, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->readBitmap(Lorg/telegram/messenger/MediaController$PhotoEntry;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget v3, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->aspectRatio:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    iget v2, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->gradientTopColor:I

    if-nez v2, :cond_2

    iget v2, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->gradientBottomColor:I

    if-nez v2, :cond_2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v5, v1, v5}, Lorg/telegram/ui/Stories/recorder/DominantColors;->getColorsSync(ZLandroid/graphics/Bitmap;Z)[I

    move-result-object v0

    aget v2, v0, v4

    iput v2, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->gradientTopColor:I

    aget v2, v0, v5

    iput v2, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->gradientBottomColor:I

    :cond_1
    :goto_0
    move-object p1, v0

    move-object v0, v1

    goto :goto_1

    :cond_2
    iget v2, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->gradientTopColor:I

    if-eqz v2, :cond_1

    iget p1, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->gradientBottomColor:I

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [I

    aput v2, v0, v4

    aput p1, v0, v5

    goto :goto_0

    :cond_3
    instance-of v3, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v3, :cond_4

    check-cast p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->draftThumbFile:Ljava/io/File;

    if-eqz p1, :cond_4

    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v5, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    invoke-static {v3, v1, v2}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->setupScale(Landroid/graphics/BitmapFactory$Options;II)V

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    iput-boolean v5, v3, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    move-object v7, v0

    move-object v0, p1

    move-object p1, v7

    goto :goto_1

    :cond_4
    move-object p1, v0

    :goto_1
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method private key(Lorg/telegram/messenger/MediaController$PhotoEntry;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p1, Lorg/telegram/messenger/MediaController$MediaEditState;->thumbPath:Ljava/lang/String;

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    iget-boolean v1, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object p1, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    return-object p1
.end method

.method private synthetic lambda$loadBitmap$2(Ljava/lang/String;Landroid/util/Pair;)V
    .locals 1

    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, [I

    invoke-direct {p0, p1, v0, p2}, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->afterLoad(Ljava/lang/String;Landroid/graphics/Bitmap;[I)V

    return-void
.end method

.method private synthetic lambda$loadBitmap$3(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->getThumbnail(Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;Ljava/lang/String;Landroid/util/Pair;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->loadBitmap(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$setCheckbox$1(Z)V
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->checkBoxContainer:Landroid/widget/FrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private loadBitmap(Ljava/lang/Object;)V
    .locals 13

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->currentKey:Ljava/lang/String;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->releaseBitmap(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->currentKey:Ljava/lang/String;

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    :cond_0
    instance-of v1, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    if-eqz v1, :cond_1

    move-object v2, p1

    check-cast v2, Lorg/telegram/messenger/MediaController$PhotoEntry;

    invoke-direct {p0, v2}, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->key(Lorg/telegram/messenger/MediaController$PhotoEntry;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    instance-of v2, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "d"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v3, p1

    check-cast v3, Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-wide v3, v3, Lorg/telegram/ui/Stories/recorder/StoryEntry;->draftId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    move-object v2, v0

    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->currentKey:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    return-void

    :cond_3
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->currentKey:Ljava/lang/String;

    if-eqz v3, :cond_4

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {v3}, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->releaseBitmap(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_4
    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->currentKey:Ljava/lang/String;

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->gradientPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->gradient:Landroid/graphics/LinearGradient;

    if-eqz v1, :cond_5

    move-object v1, p1

    check-cast v1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget v3, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->gradientTopColor:I

    if-eqz v3, :cond_5

    iget v3, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->gradientBottomColor:I

    if-eqz v3, :cond_5

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->gradientPaint:Landroid/graphics/Paint;

    new-instance v12, Landroid/graphics/LinearGradient;

    iget v4, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->gradientTopColor:I

    iget v1, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->gradientBottomColor:I

    filled-new-array {v4, v1}, [I

    move-result-object v9

    const/4 v1, 0x2

    new-array v10, v1, [F

    fill-array-data v10, :array_0

    sget-object v11, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, v12

    invoke-direct/range {v4 .. v11}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v12, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->gradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v3, v12}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->updateMatrix()V

    :cond_5
    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->loadingBitmap:Ljava/lang/Runnable;

    if-eqz v1, :cond_7

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->getQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->loadingBitmap:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->loadingBitmap:Ljava/lang/Runnable;

    :cond_7
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->getQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, v2}, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->loadingBitmap:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private static putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->bitmapsCache:Landroid/util/LruCache;

    invoke-virtual {v0, p0, p1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->bitmapsUseCounts:Ljava/util/HashMap;

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private readBitmap(Lorg/telegram/messenger/MediaController$PhotoEntry;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 4

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p1, Lorg/telegram/messenger/MediaController$MediaEditState;->thumbPath:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {v0, p2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_1
    iget-boolean v0, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget p1, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    int-to-long v2, p1

    invoke-static {v0, v2, v3, v1, p2}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget p1, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    int-to-long v2, p1

    invoke-static {v0, v2, v3, v1, p2}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private static releaseAllBitmaps()V
    .locals 1

    sget-object v0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->bitmapsUseCounts:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    sget-object v0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->bitmapsCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    return-void
.end method

.method private static releaseBitmap(Ljava/lang/String;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->bitmapsUseCounts:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-gtz v1, :cond_1

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void
.end method

.method private setDraft(Z)V
    .locals 8

    if-eqz p1, :cond_3

    new-instance p1, Landroid/text/StaticLayout;

    const-string v0, "StoryDraft"

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->draftTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    :goto_0
    move v3, v0

    goto :goto_1

    :cond_0
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    goto :goto_0

    :goto_1
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->draftLayout:Landroid/text/StaticLayout;

    invoke-virtual {p1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-lez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->draftLayout:Landroid/text/StaticLayout;

    invoke-virtual {p1, v1}, Landroid/text/Layout;->getLineWidth(I)F

    move-result p1

    goto :goto_2

    :cond_1
    const/4 p1, 0x0

    :goto_2
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->draftLayoutWidth:F

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->draftLayout:Landroid/text/StaticLayout;

    invoke-virtual {p1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result p1

    if-lez p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->draftLayout:Landroid/text/StaticLayout;

    invoke-virtual {p1, v1}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v0

    :cond_2
    iput v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->draftLayoutLeft:F

    goto :goto_3

    :cond_3
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->draftLayout:Landroid/text/StaticLayout;

    :goto_3
    return-void
.end method

.method private setDuration(Ljava/lang/String;)V
    .locals 9

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Landroid/text/StaticLayout;

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->durationTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    :goto_0
    move v4, v1

    goto :goto_1

    :cond_0
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    goto :goto_0

    :goto_1
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->durationLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-lez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->durationLayout:Landroid/text/StaticLayout;

    invoke-virtual {p1, v1}, Landroid/text/Layout;->getLineWidth(I)F

    move-result p1

    goto :goto_2

    :cond_1
    const/4 p1, 0x0

    :goto_2
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->durationLayoutWidth:F

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->durationLayout:Landroid/text/StaticLayout;

    invoke-virtual {p1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result p1

    if-lez p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->durationLayout:Landroid/text/StaticLayout;

    invoke-virtual {p1, v1}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v0

    :cond_2
    iput v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->durationLayoutLeft:F

    goto :goto_3

    :cond_3
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->durationLayout:Landroid/text/StaticLayout;

    :goto_3
    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->drawDurationPlay:Z

    return-void
.end method

.method private updateMatrix()V
    .locals 6

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->aspectRatio:F

    const v2, 0x3dcccccd    # 0.1f

    sub-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->bitmapMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->bitmapMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->bitmapMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v0

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float v0, v0, v5

    sub-float/2addr v4, v0

    div-float/2addr v4, v3

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->gradientMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->gradientMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->gradient:Landroid/graphics/LinearGradient;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->gradientMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 14

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->topLeft:Z

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/high16 v3, 0x40c00000    # 6.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->topRight:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_3

    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->clipPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v0, v4, v4, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->radii:[F

    iget-boolean v7, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->topLeft:Z

    if-eqz v7, :cond_2

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    :goto_1
    aput v7, v6, v2

    aput v7, v6, v5

    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->radii:[F

    iget-boolean v7, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->topRight:Z

    if-eqz v7, :cond_3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    :goto_2
    const/4 v8, 0x3

    aput v7, v6, v8

    aput v7, v6, v1

    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->clipPath:Landroid/graphics/Path;

    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->radii:[F

    sget-object v8, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v6, v0, v7, v8}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->clipPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    const/4 v0, 0x1

    :goto_3
    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/CheckBox2;->getProgress()F

    move-result v6

    const v7, 0x414a8f5c    # 12.66f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    mul-float v6, v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    cmpl-float v4, v6, v4

    if-lez v4, :cond_5

    if-nez v0, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float v6, v6, v7

    sub-float/2addr v0, v6

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v0, v4

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->paintUnderCheck:Landroid/graphics/Paint;

    const v6, 0xcffffff

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v11, v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v12, v4

    iget-object v13, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->paintUnderCheck:Landroid/graphics/Paint;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v7

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v7

    invoke-virtual {p1, v0, v0, v4, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {p1, v5, v5, v0, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto :goto_4

    :cond_5
    move v2, v0

    :goto_4
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v11, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v12, v0

    iget-object v13, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->bgPaint:Landroid/graphics/Paint;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->gradient:Landroid/graphics/LinearGradient;

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v11, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v12, v0

    iget-object v13, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->gradientPaint:Landroid/graphics/Paint;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->bitmap:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->bitmapMatrix:Landroid/graphics/Matrix;

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->draftLayout:Landroid/text/StaticLayout;

    const/high16 v4, 0x40a00000    # 5.0f

    const/high16 v5, 0x41200000    # 10.0f

    const/high16 v6, 0x40800000    # 4.0f

    if-eqz v0, :cond_8

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    iget v11, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->draftLayoutWidth:F

    add-float/2addr v10, v11

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v10, v11

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    iget-object v12, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->draftLayout:Landroid/text/StaticLayout;

    invoke-virtual {v12}, Landroid/text/Layout;->getHeight()I

    move-result v12

    add-int/2addr v11, v12

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    add-int/2addr v11, v12

    int-to-float v11, v11

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    iget-object v10, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->durationBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v8, v9, v10}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v8, v0, Landroid/graphics/RectF;->left:F

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    iget v9, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->draftLayoutLeft:F

    sub-float/2addr v8, v9

    iget v0, v0, Landroid/graphics/RectF;->top:F

    const v9, 0x3faa3d71    # 1.33f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v0, v9

    invoke-virtual {p1, v8, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->draftLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->durationLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_c

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v9

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    sub-int/2addr v9, v10

    iget-object v10, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->durationLayout:Landroid/text/StaticLayout;

    invoke-virtual {v10}, Landroid/text/Layout;->getHeight()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    sub-int/2addr v9, v7

    int-to-float v7, v9

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    iget-boolean v10, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->drawDurationPlay:Z

    const/high16 v11, 0x41800000    # 16.0f

    if-eqz v10, :cond_9

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    goto :goto_5

    :cond_9
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    :goto_5
    add-int/2addr v9, v10

    int-to-float v9, v9

    iget v10, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->durationLayoutWidth:F

    add-float/2addr v9, v10

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v9, v10

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v10

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int/2addr v10, v6

    int-to-float v6, v10

    invoke-virtual {v0, v8, v7, v9, v6}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->durationBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v6, v5, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-boolean v5, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->drawDurationPlay:Z

    if-eqz v5, :cond_a

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->durationPlayDrawable:Landroid/graphics/drawable/Drawable;

    iget v6, v0, Landroid/graphics/RectF;->left:F

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v6, v3

    float-to-int v3, v6

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    const/high16 v7, 0x41000000    # 8.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    div-int/2addr v8, v1

    int-to-float v8, v8

    sub-float/2addr v6, v8

    float-to-int v6, v6

    iget v8, v0, Landroid/graphics/RectF;->left:F

    const/high16 v9, 0x41500000    # 13.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    float-to-int v8, v8

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v9

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    div-int/2addr v7, v1

    int-to-float v1, v7

    add-float/2addr v9, v1

    float-to-int v1, v9

    invoke-virtual {v5, v3, v6, v8, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->durationPlayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_a
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget-boolean v3, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->drawDurationPlay:Z

    if-eqz v3, :cond_b

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    goto :goto_6

    :cond_b
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    :goto_6
    int-to-float v3, v3

    add-float/2addr v1, v3

    iget v3, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->durationLayoutLeft:F

    sub-float/2addr v1, v3

    iget v0, v0, Landroid/graphics/RectF;->top:F

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v0, v3

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->durationLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_c
    if-eqz v2, :cond_d

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_d
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->unload:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->currentObject:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->loadBitmap(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->unload:Ljava/lang/Runnable;

    const-wide/16 v1, 0xfa

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    int-to-float p1, p1

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->aspectRatio:F

    mul-float p1, p1, v1

    float-to-int p1, p1

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-super {p0, v0, p1}, Landroid/widget/FrameLayout;->onMeasure(II)V

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->updateMatrix()V

    return-void
.end method

.method public set(Lorg/telegram/messenger/MediaController$PhotoEntry;)V
    .locals 1

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->currentObject:Ljava/lang/Object;

    if-eqz p1, :cond_0

    iget-boolean v0, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    if-eqz v0, :cond_0

    iget v0, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->duration:I

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->formatShortDuration(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->setDuration(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->setDraft(Z)V

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->loadBitmap(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public set(Lorg/telegram/ui/Stories/recorder/StoryEntry;I)V
    .locals 3

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->currentObject:Ljava/lang/Object;

    const/4 v0, 0x0

    if-lez p2, :cond_0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->setDraft(Z)V

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "StoryDrafts"

    invoke-static {v2, p2, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->setDuration(Ljava/lang/String;)V

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->drawDurationPlay:Z

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    iget-boolean p2, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isDraft:Z

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->setDraft(Z)V

    if-eqz p1, :cond_2

    iget-boolean p2, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-eqz p2, :cond_2

    iget-wide v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->duration:J

    long-to-float p2, v0

    iget v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->right:F

    iget v1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->left:F

    sub-float/2addr v0, v1

    mul-float p2, p2, v0

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr p2, v0

    const/4 v0, 0x0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    float-to-int p2, p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->formatShortDuration(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    invoke-direct {p0, p2}, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->setDuration(Ljava/lang/String;)V

    :goto_1
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->loadBitmap(Ljava/lang/Object;)V

    return-void
.end method

.method public setCheckbox(ZIZ)V
    .locals 6

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->alwaysShowCheckbox:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    :cond_0
    const/4 v0, 0x0

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->checkBoxContainer:Landroid/widget/FrameLayout;

    if-nez p3, :cond_2

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v2, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    :cond_2
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz p1, :cond_3

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const v4, 0x3f333333    # 0.7f

    if-eqz p1, :cond_4

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_4
    const v5, 0x3f333333    # 0.7f

    :goto_2
    invoke-virtual {v2, v5}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    const v3, 0x3f333333    # 0.7f

    :goto_3
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, p1}, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;Z)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v2, 0x140

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_4
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    if-ltz p2, :cond_6

    invoke-virtual {p1, v1, p3}, Lorg/telegram/ui/Components/CheckBox2;->setChecked(ZZ)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/CheckBox2;->setNum(I)V

    goto :goto_5

    :cond_6
    invoke-virtual {p1, v0, p3}, Lorg/telegram/ui/Components/CheckBox2;->setChecked(ZZ)V

    :goto_5
    return-void
.end method

.method public setRounding(ZZ)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->topLeft:Z

    iput-boolean p2, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->topRight:Z

    return-void
.end method
