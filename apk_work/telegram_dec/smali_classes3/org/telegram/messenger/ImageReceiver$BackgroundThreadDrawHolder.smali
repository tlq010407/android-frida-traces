.class public Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/ImageReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BackgroundThreadDrawHolder"
.end annotation


# instance fields
.field private animation:Lorg/telegram/ui/Components/AnimatedFileDrawable;

.field public animationNotReady:Z

.field public colorFilter:Landroid/graphics/ColorFilter;

.field private crossfadeImage:Landroid/graphics/drawable/Drawable;

.field private crossfadeShader:Landroid/graphics/BitmapShader;

.field private crossfadeWithOldImage:Z

.field private crossfadingWithThumb:Z

.field private currentAlpha:F

.field public drawRegion:Landroid/graphics/RectF;

.field private imageDrawable:Landroid/graphics/drawable/Drawable;

.field public imageH:F

.field private imageShader:Landroid/graphics/BitmapShader;

.field public imageW:F

.field public imageX:F

.field public imageY:F

.field private lottieDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

.field private mediaDrawable:Landroid/graphics/drawable/Drawable;

.field private mediaShader:Landroid/graphics/BitmapShader;

.field public overrideAlpha:F

.field paint:Landroid/graphics/Paint;

.field private previousAlpha:F

.field private roundPath:Landroid/graphics/Path;

.field private roundRadius:[I

.field private staticThumbDrawable:Landroid/graphics/drawable/Drawable;

.field public staticThumbShader:Landroid/graphics/BitmapShader;

.field public threadIndex:I

.field private thumbDrawable:Landroid/graphics/drawable/Drawable;

.field private thumbShader:Landroid/graphics/BitmapShader;

.field public time:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->roundRadius:[I

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->drawRegion:Landroid/graphics/RectF;

    return-void
.end method

.method static synthetic access$1000(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->imageDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$1002(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->imageDrawable:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$1100(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)Landroid/graphics/BitmapShader;
    .locals 0

    iget-object p0, p0, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->imageShader:Landroid/graphics/BitmapShader;

    return-object p0
.end method

.method static synthetic access$1102(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;Landroid/graphics/BitmapShader;)Landroid/graphics/BitmapShader;
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->imageShader:Landroid/graphics/BitmapShader;

    return-object p1
.end method

.method static synthetic access$1200(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)Landroid/graphics/BitmapShader;
    .locals 0

    iget-object p0, p0, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->thumbShader:Landroid/graphics/BitmapShader;

    return-object p0
.end method

.method static synthetic access$1202(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;Landroid/graphics/BitmapShader;)Landroid/graphics/BitmapShader;
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->thumbShader:Landroid/graphics/BitmapShader;

    return-object p1
.end method

.method static synthetic access$1300(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->crossfadeImage:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$1302(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->crossfadeImage:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$1400(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->crossfadeWithOldImage:Z

    return p0
.end method

.method static synthetic access$1402(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->crossfadeWithOldImage:Z

    return p1
.end method

.method static synthetic access$1500(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->crossfadingWithThumb:Z

    return p0
.end method

.method static synthetic access$1502(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->crossfadingWithThumb:Z

    return p1
.end method

.method static synthetic access$1600(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->thumbDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$1602(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->thumbDrawable:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$1700(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$1702(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$1800(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)F
    .locals 0

    iget p0, p0, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->currentAlpha:F

    return p0
.end method

.method static synthetic access$1802(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->currentAlpha:F

    return p1
.end method

.method static synthetic access$1900(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)F
    .locals 0

    iget p0, p0, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->previousAlpha:F

    return p0
.end method

.method static synthetic access$1902(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->previousAlpha:F

    return p1
.end method

.method static synthetic access$2000(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)Landroid/graphics/BitmapShader;
    .locals 0

    iget-object p0, p0, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->crossfadeShader:Landroid/graphics/BitmapShader;

    return-object p0
.end method

.method static synthetic access$2002(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;Landroid/graphics/BitmapShader;)Landroid/graphics/BitmapShader;
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->crossfadeShader:Landroid/graphics/BitmapShader;

    return-object p1
.end method

.method static synthetic access$400(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)[I
    .locals 0

    iget-object p0, p0, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->roundRadius:[I

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)Landroid/graphics/Path;
    .locals 0

    iget-object p0, p0, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->roundPath:Landroid/graphics/Path;

    return-object p0
.end method

.method static synthetic access$502(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;Landroid/graphics/Path;)Landroid/graphics/Path;
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->roundPath:Landroid/graphics/Path;

    return-object p1
.end method

.method static synthetic access$600(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)Lorg/telegram/ui/Components/AnimatedFileDrawable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->animation:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    return-object p0
.end method

.method static synthetic access$602(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;Lorg/telegram/ui/Components/AnimatedFileDrawable;)Lorg/telegram/ui/Components/AnimatedFileDrawable;
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->animation:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    return-object p1
.end method

.method static synthetic access$700(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)Lorg/telegram/ui/Components/RLottieDrawable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->lottieDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    return-object p0
.end method

.method static synthetic access$702(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;Lorg/telegram/ui/Components/RLottieDrawable;)Lorg/telegram/ui/Components/RLottieDrawable;
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->lottieDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    return-object p1
.end method

.method static synthetic access$800(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->mediaDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$802(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->mediaDrawable:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$900(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)Landroid/graphics/BitmapShader;
    .locals 0

    iget-object p0, p0, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->mediaShader:Landroid/graphics/BitmapShader;

    return-object p0
.end method

.method static synthetic access$902(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;Landroid/graphics/BitmapShader;)Landroid/graphics/BitmapShader;
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->mediaShader:Landroid/graphics/BitmapShader;

    return-object p1
.end method


# virtual methods
.method public getBounds(Landroid/graphics/Rect;)V
    .locals 3

    .line 0
    if-eqz p1, :cond_0

    iget v0, p0, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->imageX:F

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->imageY:F

    float-to-int v1, v1

    iput v1, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget v2, p0, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->imageW:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v0, v1

    iget v1, p0, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->imageH:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    :cond_0
    return-void
.end method

.method public getBounds(Landroid/graphics/RectF;)V
    .locals 3

    .line 0
    if-eqz p1, :cond_0

    iget v0, p0, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->imageX:F

    iput v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->imageY:F

    iput v1, p1, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->imageW:F

    add-float/2addr v0, v2

    iput v0, p1, Landroid/graphics/RectF;->right:F

    iget v0, p0, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->imageH:F

    add-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/RectF;->bottom:F

    :cond_0
    return-void
.end method

.method public release()V
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->animation:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    iput-object v0, p0, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->lottieDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->roundRadius:[I

    aget v3, v2, v1

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->mediaDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->mediaShader:Landroid/graphics/BitmapShader;

    iput-object v0, p0, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->imageDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->imageShader:Landroid/graphics/BitmapShader;

    iput-object v0, p0, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->thumbDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->thumbShader:Landroid/graphics/BitmapShader;

    iput-object v0, p0, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->staticThumbShader:Landroid/graphics/BitmapShader;

    iput-object v0, p0, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->crossfadeImage:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->colorFilter:Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->imageX:F

    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->imageY:F

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->imageW:F

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->imageH:F

    :cond_0
    return-void
.end method
