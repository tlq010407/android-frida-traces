.class Lorg/telegram/ui/bots/BotButtons$Button;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/bots/BotButtons;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Button"
.end annotation


# instance fields
.field public final alpha:Lorg/telegram/ui/Components/AnimatedFloat;

.field public final backgroundColor:Lorg/telegram/ui/Components/AnimatedColor;

.field public final backgroundPaint:Landroid/graphics/Paint;

.field public final bounce:Lorg/telegram/ui/Components/ButtonBounce;

.field public final bounds:Landroid/graphics/RectF;

.field public final flicker:Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

.field public final flickerAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

.field public final progress:Lorg/telegram/ui/Components/CircularProgressDrawable;

.field public final progressAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

.field public final ripple:Landroid/graphics/drawable/Drawable;

.field public rippleColor:I

.field public final textColor:Lorg/telegram/ui/Components/AnimatedColor;

.field public final textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

.field final synthetic this$0:Lorg/telegram/ui/bots/BotButtons;

.field public final w:Lorg/telegram/ui/Components/AnimatedFloat;

.field public final x:Lorg/telegram/ui/Components/AnimatedFloat;

.field public final y:Lorg/telegram/ui/Components/AnimatedFloat;


# direct methods
.method private constructor <init>(Lorg/telegram/ui/bots/BotButtons;)V
    .locals 9

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/bots/BotButtons$Button;->this$0:Lorg/telegram/ui/bots/BotButtons;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/bots/BotButtons$Button;->bounds:Landroid/graphics/RectF;

    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v8, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x140

    move-object v1, v0

    move-object v2, p1

    move-object v7, v8

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v0, p0, Lorg/telegram/ui/bots/BotButtons$Button;->alpha:Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v0, p0, Lorg/telegram/ui/bots/BotButtons$Button;->x:Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v0, p0, Lorg/telegram/ui/bots/BotButtons$Button;->y:Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v0, p0, Lorg/telegram/ui/bots/BotButtons$Button;->w:Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance v0, Lorg/telegram/ui/Components/AnimatedColor;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/AnimatedColor;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v0, p0, Lorg/telegram/ui/bots/BotButtons$Button;->backgroundColor:Lorg/telegram/ui/Components/AnimatedColor;

    new-instance v0, Lorg/telegram/ui/Components/AnimatedColor;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/AnimatedColor;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v0, p0, Lorg/telegram/ui/bots/BotButtons$Button;->textColor:Lorg/telegram/ui/Components/AnimatedColor;

    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v0, p0, Lorg/telegram/ui/bots/BotButtons$Button;->progressAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v0, p0, Lorg/telegram/ui/bots/BotButtons$Button;->flickerAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance v0, Lorg/telegram/ui/Components/ButtonBounce;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/ButtonBounce;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lorg/telegram/ui/bots/BotButtons$Button;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/bots/BotButtons$Button;->backgroundPaint:Landroid/graphics/Paint;

    new-instance v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-direct {v0, v1, v1, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;-><init>(ZZZ)V

    iput-object v0, p0, Lorg/telegram/ui/bots/BotButtons$Button;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const/4 v2, 0x0

    const/16 v3, 0x9

    invoke-static {v2, v3, v3}, Lorg/telegram/ui/ActionBar/Theme;->createRadSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/bots/BotButtons$Button;->ripple:Landroid/graphics/drawable/Drawable;

    new-instance v3, Lorg/telegram/ui/Components/CircularProgressDrawable;

    invoke-direct {v3}, Lorg/telegram/ui/Components/CircularProgressDrawable;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/bots/BotButtons$Button;->progress:Lorg/telegram/ui/Components/CircularProgressDrawable;

    new-instance v4, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    invoke-direct {v4}, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;-><init>()V

    iput-object v4, p0, Lorg/telegram/ui/bots/BotButtons$Button;->flicker:Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    const/16 v5, 0x11

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setGravity(I)V

    const/high16 v5, 0x41600000    # 14.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextSize(F)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTypeface(Landroid/graphics/Typeface;)V

    sget-object v5, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    mul-int/lit8 v5, v5, 0x4

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setOverrideFullWidth(I)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setEllipsizeByGradient(Z)V

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iput-boolean v1, v4, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->frameInside:Z

    const/high16 p1, 0x40000000    # 2.0f

    iput p1, v4, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->repeatProgress:F

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/bots/BotButtons;Lorg/telegram/ui/bots/BotButtons$1;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/bots/BotButtons$Button;-><init>(Lorg/telegram/ui/bots/BotButtons;)V

    return-void
.end method
