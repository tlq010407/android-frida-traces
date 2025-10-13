.class abstract Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell$BaseWidget;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "BaseWidget"
.end annotation


# instance fields
.field public animatedWidth:Lorg/telegram/ui/Components/AnimatedFloat;

.field bounce:Lorg/telegram/ui/Components/ButtonBounce;

.field bounds:Landroid/graphics/RectF;

.field height:F

.field id:I

.field layoutLine:I

.field layoutX:F

.field final synthetic this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell;

.field width:F


# direct methods
.method private constructor <init>(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell;)V
    .locals 4

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell$BaseWidget;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell$BaseWidget;->layoutX:F

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell$BaseWidget;->layoutLine:I

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell$BaseWidget;->bounds:Landroid/graphics/RectF;

    new-instance v0, Lorg/telegram/ui/Components/ButtonBounce;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/ButtonBounce;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell$BaseWidget;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v2, 0x15e

    invoke-direct {v0, p1, v2, v3, v1}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JLandroid/animation/TimeInterpolator;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell$BaseWidget;->animatedWidth:Lorg/telegram/ui/Components/AnimatedFloat;

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell;Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$1;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell$BaseWidget;-><init>(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell;)V

    return-void
.end method


# virtual methods
.method abstract draw(Landroid/graphics/Canvas;FF)V
.end method

.method public onAttachToWindow(Z)V
    .locals 0

    return-void
.end method
