.class public abstract Lorg/telegram/ui/bots/BotButtons;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/bots/BotButtons$ButtonsState;,
        Lorg/telegram/ui/bots/BotButtons$Button;,
        Lorg/telegram/ui/bots/BotButtons$ButtonState;
    }
.end annotation


# instance fields
.field public final background:Lorg/telegram/ui/Components/AnimatedColor;

.field private final backgroundPaint:Landroid/graphics/Paint;

.field public final buttons:[Lorg/telegram/ui/bots/BotButtons$Button;

.field public final height:Lorg/telegram/ui/Components/AnimatedFloat;

.field private pressedButton:Lorg/telegram/ui/bots/BotButtons$Button;

.field private final separatorPaint:Landroid/graphics/Paint;

.field public state:Lorg/telegram/ui/bots/BotButtons$ButtonsState;

.field private whenClicked:Lorg/telegram/messenger/Utilities$Callback;

.field private whenResized:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 11

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/bots/BotButtons;->backgroundPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/bots/BotButtons;->separatorPaint:Landroid/graphics/Paint;

    new-instance v9, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v10, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x140

    move-object v2, v9

    move-object v3, p0

    move-object v8, v10

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v9, p0, Lorg/telegram/ui/bots/BotButtons;->height:Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance v9, Lorg/telegram/ui/Components/AnimatedColor;

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/AnimatedColor;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v9, p0, Lorg/telegram/ui/bots/BotButtons;->background:Lorg/telegram/ui/Components/AnimatedColor;

    new-instance v2, Lorg/telegram/ui/bots/BotButtons$ButtonsState;

    invoke-direct {v2}, Lorg/telegram/ui/bots/BotButtons$ButtonsState;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/bots/BotButtons;->state:Lorg/telegram/ui/bots/BotButtons$ButtonsState;

    const/4 v2, 0x2

    new-array v2, v2, [Lorg/telegram/ui/bots/BotButtons$Button;

    iput-object v2, p0, Lorg/telegram/ui/bots/BotButtons;->buttons:[Lorg/telegram/ui/bots/BotButtons$Button;

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/view/View;->setWillNotDraw(Z)V

    const/high16 v4, -0x1000000

    const v5, 0x3dcccccd    # 0.1f

    invoke-static {v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lorg/telegram/ui/bots/BotButtons;->state:Lorg/telegram/ui/bots/BotButtons$ButtonsState;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v4, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p2

    iput p2, v1, Lorg/telegram/ui/bots/BotButtons$ButtonsState;->backgroundColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p1, Lorg/telegram/ui/bots/BotButtons$Button;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/bots/BotButtons$Button;-><init>(Lorg/telegram/ui/bots/BotButtons;Lorg/telegram/ui/bots/BotButtons$1;)V

    aput-object p1, v2, v3

    new-instance p1, Lorg/telegram/ui/bots/BotButtons$Button;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/bots/BotButtons$Button;-><init>(Lorg/telegram/ui/bots/BotButtons;Lorg/telegram/ui/bots/BotButtons$1;)V

    aput-object p1, v2, v0

    return-void
.end method

.method private getHitButton(FF)Lorg/telegram/ui/bots/BotButtons$Button;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/bots/BotButtons;->buttons:[Lorg/telegram/ui/bots/BotButtons$Button;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/bots/BotButtons;->state:Lorg/telegram/ui/bots/BotButtons$ButtonsState;

    if-nez v0, :cond_0

    iget-object v2, v2, Lorg/telegram/ui/bots/BotButtons$ButtonsState;->main:Lorg/telegram/ui/bots/BotButtons$ButtonState;

    goto :goto_1

    :cond_0
    iget-object v2, v2, Lorg/telegram/ui/bots/BotButtons$ButtonsState;->secondary:Lorg/telegram/ui/bots/BotButtons$ButtonState;

    :goto_1
    aget-object v1, v1, v0

    iget-object v1, v1, Lorg/telegram/ui/bots/BotButtons$Button;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, v2, Lorg/telegram/ui/bots/BotButtons$ButtonState;->visible:Z

    if-eqz v1, :cond_1

    iget-boolean v1, v2, Lorg/telegram/ui/bots/BotButtons$ButtonState;->active:Z

    if-eqz v1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/bots/BotButtons;->buttons:[Lorg/telegram/ui/bots/BotButtons$Button;

    aget-object p1, p1, v0

    return-object p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    iget-object v1, v0, Lorg/telegram/ui/bots/BotButtons;->height:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/bots/BotButtons;->getTotalHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float v8, v2, v1

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float v3, v8, v9

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v4, v1

    iget-object v6, v0, Lorg/telegram/ui/bots/BotButtons;->separatorPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    move-object/from16 v1, p1

    move v5, v8

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lorg/telegram/ui/bots/BotButtons;->backgroundPaint:Landroid/graphics/Paint;

    iget-object v2, v0, Lorg/telegram/ui/bots/BotButtons;->background:Lorg/telegram/ui/Components/AnimatedColor;

    iget-object v3, v0, Lorg/telegram/ui/bots/BotButtons;->state:Lorg/telegram/ui/bots/BotButtons$ButtonsState;

    iget v3, v3, Lorg/telegram/ui/bots/BotButtons$ButtonsState;->backgroundColor:I

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/AnimatedColor;->set(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v5, v1

    iget-object v6, v0, Lorg/telegram/ui/bots/BotButtons;->backgroundPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    move-object/from16 v1, p1

    move v3, v8

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lorg/telegram/ui/bots/BotButtons;->state:Lorg/telegram/ui/bots/BotButtons$ButtonsState;

    iget-object v1, v1, Lorg/telegram/ui/bots/BotButtons$ButtonsState;->secondary:Lorg/telegram/ui/bots/BotButtons$ButtonState;

    iget-object v1, v1, Lorg/telegram/ui/bots/BotButtons$ButtonState;->position:Ljava/lang/String;

    iget-object v2, v0, Lorg/telegram/ui/bots/BotButtons;->buttons:[Lorg/telegram/ui/bots/BotButtons$Button;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    iget-object v2, v2, Lorg/telegram/ui/bots/BotButtons$Button;->alpha:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v2

    iget-object v4, v0, Lorg/telegram/ui/bots/BotButtons;->buttons:[Lorg/telegram/ui/bots/BotButtons$Button;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    iget-object v4, v4, Lorg/telegram/ui/bots/BotButtons$Button;->alpha:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v4

    cmpg-float v2, v2, v4

    if-gez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move v4, v2

    :goto_1
    if-eqz v2, :cond_1

    if-ltz v4, :cond_15

    goto :goto_2

    :cond_1
    if-gt v4, v3, :cond_15

    :goto_2
    iget-object v6, v0, Lorg/telegram/ui/bots/BotButtons;->buttons:[Lorg/telegram/ui/bots/BotButtons$Button;

    aget-object v6, v6, v4

    iget-object v10, v0, Lorg/telegram/ui/bots/BotButtons;->state:Lorg/telegram/ui/bots/BotButtons$ButtonsState;

    if-nez v4, :cond_2

    iget-object v10, v10, Lorg/telegram/ui/bots/BotButtons$ButtonsState;->main:Lorg/telegram/ui/bots/BotButtons$ButtonState;

    goto :goto_3

    :cond_2
    iget-object v10, v10, Lorg/telegram/ui/bots/BotButtons$ButtonsState;->secondary:Lorg/telegram/ui/bots/BotButtons$ButtonState;

    :goto_3
    iget-object v11, v6, Lorg/telegram/ui/bots/BotButtons$Button;->alpha:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v12, v10, Lorg/telegram/ui/bots/BotButtons$ButtonState;->visible:Z

    invoke-virtual {v11, v12}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v11

    iget-boolean v12, v10, Lorg/telegram/ui/bots/BotButtons$ButtonState;->visible:Z

    const-string v13, "right"

    const-string v14, "left"

    if-nez v12, :cond_3

    iget-object v12, v6, Lorg/telegram/ui/bots/BotButtons$Button;->x:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v12}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v12

    goto :goto_8

    :cond_3
    iget-object v12, v6, Lorg/telegram/ui/bots/BotButtons$Button;->x:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-object v5, v0, Lorg/telegram/ui/bots/BotButtons;->state:Lorg/telegram/ui/bots/BotButtons$ButtonsState;

    iget-object v3, v5, Lorg/telegram/ui/bots/BotButtons$ButtonsState;->secondary:Lorg/telegram/ui/bots/BotButtons$ButtonState;

    iget-boolean v3, v3, Lorg/telegram/ui/bots/BotButtons$ButtonState;->visible:Z

    if-eqz v3, :cond_7

    iget-object v3, v5, Lorg/telegram/ui/bots/BotButtons$ButtonsState;->main:Lorg/telegram/ui/bots/BotButtons$ButtonState;

    iget-boolean v3, v3, Lorg/telegram/ui/bots/BotButtons$ButtonState;->visible:Z

    if-eqz v3, :cond_7

    invoke-virtual {v14, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-nez v4, :cond_6

    goto :goto_4

    :cond_4
    invoke-virtual {v13, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    if-nez v4, :cond_5

    goto :goto_5

    :cond_5
    :goto_4
    const/4 v3, 0x1

    goto :goto_6

    :cond_6
    :goto_5
    const/4 v3, 0x0

    :goto_6
    int-to-float v3, v3

    goto :goto_7

    :cond_7
    const/4 v3, 0x0

    :goto_7
    invoke-virtual {v12, v3}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v12

    :goto_8
    iget-boolean v3, v10, Lorg/telegram/ui/bots/BotButtons$ButtonState;->visible:Z

    if-nez v3, :cond_8

    iget-object v3, v6, Lorg/telegram/ui/bots/BotButtons$Button;->y:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v3

    goto :goto_d

    :cond_8
    iget-object v3, v6, Lorg/telegram/ui/bots/BotButtons$Button;->y:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-object v5, v0, Lorg/telegram/ui/bots/BotButtons;->state:Lorg/telegram/ui/bots/BotButtons$ButtonsState;

    iget-object v15, v5, Lorg/telegram/ui/bots/BotButtons$ButtonsState;->secondary:Lorg/telegram/ui/bots/BotButtons$ButtonState;

    iget-boolean v15, v15, Lorg/telegram/ui/bots/BotButtons$ButtonState;->visible:Z

    if-eqz v15, :cond_c

    iget-object v5, v5, Lorg/telegram/ui/bots/BotButtons$ButtonsState;->main:Lorg/telegram/ui/bots/BotButtons$ButtonState;

    iget-boolean v5, v5, Lorg/telegram/ui/bots/BotButtons$ButtonState;->visible:Z

    if-eqz v5, :cond_c

    const-string v5, "top"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    if-nez v4, :cond_b

    goto :goto_9

    :cond_9
    const-string v5, "bottom"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    if-nez v4, :cond_a

    goto :goto_a

    :cond_a
    :goto_9
    const/4 v5, 0x1

    goto :goto_b

    :cond_b
    :goto_a
    const/4 v5, 0x0

    :goto_b
    int-to-float v5, v5

    goto :goto_c

    :cond_c
    const/4 v5, 0x0

    :goto_c
    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v3

    :goto_d
    iget-boolean v5, v10, Lorg/telegram/ui/bots/BotButtons$ButtonState;->visible:Z

    if-nez v5, :cond_d

    iget-object v5, v6, Lorg/telegram/ui/bots/BotButtons$Button;->w:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v5

    goto :goto_f

    :cond_d
    iget-object v5, v6, Lorg/telegram/ui/bots/BotButtons$Button;->w:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-object v15, v0, Lorg/telegram/ui/bots/BotButtons;->state:Lorg/telegram/ui/bots/BotButtons$ButtonsState;

    iget-object v9, v15, Lorg/telegram/ui/bots/BotButtons$ButtonsState;->secondary:Lorg/telegram/ui/bots/BotButtons$ButtonState;

    iget-boolean v9, v9, Lorg/telegram/ui/bots/BotButtons$ButtonState;->visible:Z

    if-eqz v9, :cond_f

    iget-object v9, v15, Lorg/telegram/ui/bots/BotButtons$ButtonsState;->main:Lorg/telegram/ui/bots/BotButtons$ButtonState;

    iget-boolean v9, v9, Lorg/telegram/ui/bots/BotButtons$ButtonState;->visible:Z

    if-eqz v9, :cond_f

    invoke-virtual {v14, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_e

    invoke-virtual {v13, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_f

    :cond_e
    const/4 v9, 0x0

    goto :goto_e

    :cond_f
    const/high16 v9, 0x3f800000    # 1.0f

    :goto_e
    invoke-virtual {v5, v9}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v5

    :goto_f
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v9

    const/high16 v13, 0x41d00000    # 26.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    sub-int/2addr v9, v14

    int-to-float v9, v9

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v9, v14

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v15

    const/high16 v16, 0x41800000    # 16.0f

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v16

    sub-int v15, v15, v16

    int-to-float v15, v15

    invoke-static {v9, v15, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v5

    const/high16 v9, 0x42300000    # 44.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    const/high16 v15, 0x41000000    # 8.0f

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    int-to-float v14, v14

    const/high16 v17, 0x41900000    # 18.0f

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    int-to-float v15, v15

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v17

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    sub-int v13, v17, v13

    int-to-float v13, v13

    const/high16 v16, 0x40000000    # 2.0f

    div-float v13, v13, v16

    add-float/2addr v15, v13

    invoke-static {v14, v15, v12}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v12

    div-float v5, v5, v16

    add-float/2addr v12, v5

    const/high16 v13, 0x40e00000    # 7.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    const/high16 v14, 0x42680000    # 58.0f

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    invoke-static {v13, v14, v3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v3

    int-to-float v3, v3

    div-float v9, v9, v16

    add-float/2addr v3, v9

    iget-object v13, v6, Lorg/telegram/ui/bots/BotButtons$Button;->bounds:Landroid/graphics/RectF;

    sub-float v14, v12, v5

    add-float/2addr v3, v8

    sub-float v15, v3, v9

    add-float/2addr v5, v12

    add-float/2addr v9, v3

    invoke-virtual {v13, v14, v15, v5, v9}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v5, v6, Lorg/telegram/ui/bots/BotButtons$Button;->progressAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v9, v10, Lorg/telegram/ui/bots/BotButtons$ButtonState;->progressVisible:Z

    invoke-virtual {v5, v9}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v5

    iget-object v9, v6, Lorg/telegram/ui/bots/BotButtons$Button;->flickerAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v13, v10, Lorg/telegram/ui/bots/BotButtons$ButtonState;->shineEffect:Z

    invoke-virtual {v9, v13}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v13, v6, Lorg/telegram/ui/bots/BotButtons$Button;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    const v14, 0x3ca3d70a    # 0.02f

    invoke-virtual {v13, v14}, Lorg/telegram/ui/Components/ButtonBounce;->getScale(F)F

    move-result v13

    const v14, 0x3f333333    # 0.7f

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-static {v14, v15, v11}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v14

    mul-float v13, v13, v14

    invoke-virtual {v7, v13, v13, v12, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v13, v6, Lorg/telegram/ui/bots/BotButtons$Button;->backgroundPaint:Landroid/graphics/Paint;

    iget-object v14, v6, Lorg/telegram/ui/bots/BotButtons$Button;->backgroundColor:Lorg/telegram/ui/Components/AnimatedColor;

    iget v15, v10, Lorg/telegram/ui/bots/BotButtons$ButtonState;->color:I

    invoke-virtual {v14, v15}, Lorg/telegram/ui/Components/AnimatedColor;->set(I)I

    move-result v14

    invoke-static {v14, v11}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v13, v6, Lorg/telegram/ui/bots/BotButtons$Button;->bounds:Landroid/graphics/RectF;

    const/high16 v14, 0x41100000    # 9.0f

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    int-to-float v15, v15

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    int-to-float v14, v14

    move-object/from16 v16, v1

    iget-object v1, v6, Lorg/telegram/ui/bots/BotButtons$Button;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v13, v15, v14, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    const/high16 v1, 0x3f400000    # 0.75f

    const/high16 v13, 0x3f800000    # 1.0f

    cmpg-float v14, v5, v13

    if-gez v14, :cond_10

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    sub-float v14, v13, v5

    invoke-static {v1, v13, v14}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v15

    invoke-virtual {v7, v15, v15, v12, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    const/high16 v13, -0x3ee00000    # -10.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    int-to-float v13, v13

    mul-float v13, v13, v5

    const/4 v15, 0x0

    invoke-virtual {v7, v15, v13}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v13, v6, Lorg/telegram/ui/bots/BotButtons$Button;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    iget-object v15, v6, Lorg/telegram/ui/bots/BotButtons$Button;->textColor:Lorg/telegram/ui/Components/AnimatedColor;

    iget v1, v10, Lorg/telegram/ui/bots/BotButtons$ButtonState;->textColor:I

    invoke-virtual {v15, v1}, Lorg/telegram/ui/Components/AnimatedColor;->set(I)I

    move-result v1

    mul-float v14, v14, v11

    invoke-static {v1, v14}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v1

    invoke-virtual {v13, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextColor(I)V

    iget-object v1, v6, Lorg/telegram/ui/bots/BotButtons$Button;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    iget-object v13, v6, Lorg/telegram/ui/bots/BotButtons$Button;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v1, v13}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setBounds(Landroid/graphics/RectF;)V

    iget-object v1, v6, Lorg/telegram/ui/bots/BotButtons$Button;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v1, v7}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_10
    const/4 v1, 0x0

    cmpl-float v13, v5, v1

    if-lez v13, :cond_11

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v14, 0x3f400000    # 0.75f

    invoke-static {v14, v13, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v14

    invoke-virtual {v7, v14, v14, v12, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float v12, v13, v5

    mul-float v3, v3, v12

    invoke-virtual {v7, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, v6, Lorg/telegram/ui/bots/BotButtons$Button;->progress:Lorg/telegram/ui/Components/CircularProgressDrawable;

    iget-object v3, v6, Lorg/telegram/ui/bots/BotButtons$Button;->textColor:Lorg/telegram/ui/Components/AnimatedColor;

    iget v12, v10, Lorg/telegram/ui/bots/BotButtons$ButtonState;->textColor:I

    invoke-virtual {v3, v12}, Lorg/telegram/ui/Components/AnimatedColor;->set(I)I

    move-result v3

    mul-float v5, v5, v11

    invoke-static {v3, v5}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/CircularProgressDrawable;->setColor(I)V

    iget-object v1, v6, Lorg/telegram/ui/bots/BotButtons$Button;->progress:Lorg/telegram/ui/Components/CircularProgressDrawable;

    iget-object v3, v6, Lorg/telegram/ui/bots/BotButtons$Button;->bounds:Landroid/graphics/RectF;

    iget v5, v3, Landroid/graphics/RectF;->left:F

    float-to-int v5, v5

    iget v12, v3, Landroid/graphics/RectF;->top:F

    float-to-int v12, v12

    iget v14, v3, Landroid/graphics/RectF;->right:F

    float-to-int v14, v14

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    float-to-int v3, v3

    invoke-virtual {v1, v5, v12, v14, v3}, Lorg/telegram/ui/Components/CircularProgressDrawable;->setBounds(IIII)V

    iget-object v1, v6, Lorg/telegram/ui/bots/BotButtons$Button;->progress:Lorg/telegram/ui/Components/CircularProgressDrawable;

    invoke-virtual {v1, v7}, Lorg/telegram/ui/Components/CircularProgressDrawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    const/4 v1, 0x0

    goto :goto_10

    :cond_11
    const/high16 v13, 0x3f800000    # 1.0f

    :goto_10
    cmpl-float v1, v9, v1

    if-lez v1, :cond_12

    iget-object v1, v6, Lorg/telegram/ui/bots/BotButtons$Button;->flicker:Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    iget-object v3, v6, Lorg/telegram/ui/bots/BotButtons$Button;->textColor:Lorg/telegram/ui/Components/AnimatedColor;

    iget v5, v10, Lorg/telegram/ui/bots/BotButtons$ButtonState;->textColor:I

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/AnimatedColor;->set(I)I

    move-result v3

    mul-float v11, v11, v9

    invoke-static {v3, v11}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->setColors(I)V

    iget-object v1, v6, Lorg/telegram/ui/bots/BotButtons$Button;->flicker:Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    iget-object v3, v6, Lorg/telegram/ui/bots/BotButtons$Button;->bounds:Landroid/graphics/RectF;

    const/high16 v5, 0x41000000    # 8.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v1, v7, v3, v5, v0}, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;FLandroid/view/View;)V

    :cond_12
    iget v1, v6, Lorg/telegram/ui/bots/BotButtons$Button;->rippleColor:I

    iget v3, v10, Lorg/telegram/ui/bots/BotButtons$ButtonState;->textColor:I

    const v5, 0x3e19999a    # 0.15f

    invoke-static {v3, v5}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v3

    if-eq v1, v3, :cond_13

    iget-object v1, v6, Lorg/telegram/ui/bots/BotButtons$Button;->ripple:Landroid/graphics/drawable/Drawable;

    iget v3, v10, Lorg/telegram/ui/bots/BotButtons$ButtonState;->textColor:I

    invoke-static {v3, v5}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v3

    iput v3, v6, Lorg/telegram/ui/bots/BotButtons$Button;->rippleColor:I

    const/4 v5, 0x1

    invoke-static {v1, v3, v5}, Lorg/telegram/ui/ActionBar/Theme;->setSelectorDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    goto :goto_11

    :cond_13
    const/4 v5, 0x1

    :goto_11
    iget-object v1, v6, Lorg/telegram/ui/bots/BotButtons$Button;->ripple:Landroid/graphics/drawable/Drawable;

    iget-object v3, v6, Lorg/telegram/ui/bots/BotButtons$Button;->bounds:Landroid/graphics/RectF;

    iget v9, v3, Landroid/graphics/RectF;->left:F

    float-to-int v9, v9

    iget v10, v3, Landroid/graphics/RectF;->top:F

    float-to-int v10, v10

    iget v11, v3, Landroid/graphics/RectF;->right:F

    float-to-int v11, v11

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    float-to-int v3, v3

    invoke-virtual {v1, v9, v10, v11, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v1, v6, Lorg/telegram/ui/bots/BotButtons$Button;->ripple:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    if-eqz v2, :cond_14

    const/4 v1, -0x1

    goto :goto_12

    :cond_14
    const/4 v1, 0x1

    :goto_12
    add-int/2addr v4, v1

    move-object/from16 v1, v16

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    goto/16 :goto_1

    :cond_15
    return-void
.end method

.method public getAnimatedTotalHeight()F
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/bots/BotButtons;->height:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v0

    return v0
.end method

.method public getTotalHeight()I
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/bots/BotButtons;->state:Lorg/telegram/ui/bots/BotButtons$ButtonsState;

    iget-object v1, v0, Lorg/telegram/ui/bots/BotButtons$ButtonsState;->main:Lorg/telegram/ui/bots/BotButtons$ButtonState;

    iget-boolean v1, v1, Lorg/telegram/ui/bots/BotButtons$ButtonState;->visible:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    iget-object v4, v0, Lorg/telegram/ui/bots/BotButtons$ButtonsState;->secondary:Lorg/telegram/ui/bots/BotButtons$ButtonState;

    iget-boolean v4, v4, Lorg/telegram/ui/bots/BotButtons$ButtonState;->visible:Z

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x1

    :goto_1
    if-eqz v1, :cond_3

    iget-object v0, v0, Lorg/telegram/ui/bots/BotButtons$ButtonsState;->secondary:Lorg/telegram/ui/bots/BotButtons$ButtonState;

    iget-boolean v1, v0, Lorg/telegram/ui/bots/BotButtons$ButtonState;->visible:Z

    if-eqz v1, :cond_3

    iget-object v0, v0, Lorg/telegram/ui/bots/BotButtons$ButtonState;->position:Ljava/lang/String;

    const-string v1, "top"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/bots/BotButtons;->state:Lorg/telegram/ui/bots/BotButtons$ButtonsState;

    iget-object v0, v0, Lorg/telegram/ui/bots/BotButtons$ButtonsState;->secondary:Lorg/telegram/ui/bots/BotButtons$ButtonState;

    iget-object v0, v0, Lorg/telegram/ui/bots/BotButtons$ButtonState;->position:Ljava/lang/String;

    const-string v1, "bottom"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    add-int/lit8 v4, v4, 0x1

    :cond_3
    if-nez v4, :cond_4

    return v3

    :cond_4
    if-ne v4, v2, :cond_5

    const/high16 v0, 0x42680000    # 58.0f

    :goto_2
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0

    :cond_5
    const/high16 v0, 0x42da0000    # 109.0f

    goto :goto_2
.end method

.method protected onMeasure(II)V
    .locals 1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/high16 v0, 0x42da0000    # 109.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v0, v3}, Lorg/telegram/ui/bots/BotButtons;->getHitButton(FF)Lorg/telegram/ui/bots/BotButtons$Button;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/bots/BotButtons;->pressedButton:Lorg/telegram/ui/bots/BotButtons$Button;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lorg/telegram/ui/bots/BotButtons$Button;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v0, v3, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/bots/BotButtons;->pressedButton:Lorg/telegram/ui/bots/BotButtons$Button;

    iget-object v0, v0, Lorg/telegram/ui/bots/BotButtons$Button;->ripple:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-static {v0, v3, p1}, Landroidx/core/graphics/drawable/WrappedDrawableApi21$$ExternalSyntheticApiModelOutline2;->m(Landroid/graphics/drawable/Drawable;FF)V

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/bots/BotButtons;->pressedButton:Lorg/telegram/ui/bots/BotButtons$Button;

    iget-object p1, p1, Lorg/telegram/ui/bots/BotButtons$Button;->ripple:Landroid/graphics/drawable/Drawable;

    const v0, 0x10100a7

    const v3, 0x101009e

    filled-new-array {v0, v3}, [I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v2, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_5

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/bots/BotButtons;->pressedButton:Lorg/telegram/ui/bots/BotButtons$Button;

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/bots/BotButtons;->getHitButton(FF)Lorg/telegram/ui/bots/BotButtons$Button;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/bots/BotButtons;->pressedButton:Lorg/telegram/ui/bots/BotButtons$Button;

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/bots/BotButtons;->whenClicked:Lorg/telegram/messenger/Utilities$Callback;

    if-eqz p1, :cond_4

    iget-object v3, p0, Lorg/telegram/ui/bots/BotButtons;->buttons:[Lorg/telegram/ui/bots/BotButtons$Button;

    aget-object v3, v3, v1

    if-ne v0, v3, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/bots/BotButtons;->pressedButton:Lorg/telegram/ui/bots/BotButtons$Button;

    iget-object p1, p1, Lorg/telegram/ui/bots/BotButtons$Button;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    iget-object p1, p0, Lorg/telegram/ui/bots/BotButtons;->pressedButton:Lorg/telegram/ui/bots/BotButtons$Button;

    iget-object p1, p1, Lorg/telegram/ui/bots/BotButtons$Button;->ripple:Landroid/graphics/drawable/Drawable;

    new-array v0, v1, [I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/bots/BotButtons;->pressedButton:Lorg/telegram/ui/bots/BotButtons$Button;

    :cond_5
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/bots/BotButtons;->pressedButton:Lorg/telegram/ui/bots/BotButtons$Button;

    if-eqz p1, :cond_6

    const/4 v1, 0x1

    :cond_6
    return v1
.end method

.method public setBackgroundColor(IZ)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/bots/BotButtons;->backgroundPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/telegram/ui/bots/BotButtons;->state:Lorg/telegram/ui/bots/BotButtons$ButtonsState;

    iput p1, v1, Lorg/telegram/ui/bots/BotButtons$ButtonsState;->backgroundColor:I

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    if-nez p2, :cond_0

    iget-object p2, p0, Lorg/telegram/ui/bots/BotButtons;->background:Lorg/telegram/ui/Components/AnimatedColor;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lorg/telegram/ui/Components/AnimatedColor;->set(IZ)I

    :cond_0
    return-void
.end method

.method public setMainState(Lorg/telegram/ui/bots/BotButtons$ButtonState;Z)V
    .locals 3

    invoke-virtual {p0}, Lorg/telegram/ui/bots/BotButtons;->getTotalHeight()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/bots/BotButtons;->state:Lorg/telegram/ui/bots/BotButtons$ButtonsState;

    iput-object p1, v1, Lorg/telegram/ui/bots/BotButtons$ButtonsState;->main:Lorg/telegram/ui/bots/BotButtons$ButtonState;

    iget-object v1, p0, Lorg/telegram/ui/bots/BotButtons;->buttons:[Lorg/telegram/ui/bots/BotButtons$Button;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v1, v1, Lorg/telegram/ui/bots/BotButtons$Button;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->cancelAnimation()V

    iget-object v1, p0, Lorg/telegram/ui/bots/BotButtons;->buttons:[Lorg/telegram/ui/bots/BotButtons$Button;

    aget-object v1, v1, v2

    iget-object v1, v1, Lorg/telegram/ui/bots/BotButtons$Button;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    iget-object p1, p1, Lorg/telegram/ui/bots/BotButtons$ButtonState;->text:Ljava/lang/String;

    invoke-virtual {v1, p1, p2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;Z)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0}, Lorg/telegram/ui/bots/BotButtons;->getTotalHeight()I

    move-result p1

    if-eq v0, p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/bots/BotButtons;->whenResized:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/bots/BotButtons;->getTotalHeight()I

    move-result p1

    if-ge v0, p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/bots/BotButtons;->whenResized:Ljava/lang/Runnable;

    const-wide/16 v0, 0xc8

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/bots/BotButtons;->whenResized:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setOnButtonClickListener(Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/Utilities$Callback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/telegram/ui/bots/BotButtons;->whenClicked:Lorg/telegram/messenger/Utilities$Callback;

    return-void
.end method

.method public setOnResizeListener(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/bots/BotButtons;->whenResized:Ljava/lang/Runnable;

    return-void
.end method

.method public setSecondaryState(Lorg/telegram/ui/bots/BotButtons$ButtonState;Z)V
    .locals 3

    invoke-virtual {p0}, Lorg/telegram/ui/bots/BotButtons;->getTotalHeight()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/bots/BotButtons;->state:Lorg/telegram/ui/bots/BotButtons$ButtonsState;

    iput-object p1, v1, Lorg/telegram/ui/bots/BotButtons$ButtonsState;->secondary:Lorg/telegram/ui/bots/BotButtons$ButtonState;

    iget-object v1, p0, Lorg/telegram/ui/bots/BotButtons;->buttons:[Lorg/telegram/ui/bots/BotButtons$Button;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iget-object v1, v1, Lorg/telegram/ui/bots/BotButtons$Button;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->cancelAnimation()V

    iget-object v1, p0, Lorg/telegram/ui/bots/BotButtons;->buttons:[Lorg/telegram/ui/bots/BotButtons$Button;

    aget-object v1, v1, v2

    iget-object v1, v1, Lorg/telegram/ui/bots/BotButtons$Button;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    iget-object p1, p1, Lorg/telegram/ui/bots/BotButtons$ButtonState;->text:Ljava/lang/String;

    invoke-virtual {v1, p1, p2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;Z)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0}, Lorg/telegram/ui/bots/BotButtons;->getTotalHeight()I

    move-result p1

    if-eq v0, p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/bots/BotButtons;->whenResized:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/bots/BotButtons;->getTotalHeight()I

    move-result p1

    if-ge v0, p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/bots/BotButtons;->whenResized:Ljava/lang/Runnable;

    const-wide/16 v0, 0xc8

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/bots/BotButtons;->whenResized:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setState(Lorg/telegram/ui/bots/BotButtons$ButtonsState;Z)V
    .locals 3

    invoke-virtual {p0}, Lorg/telegram/ui/bots/BotButtons;->getTotalHeight()I

    move-result v0

    iput-object p1, p0, Lorg/telegram/ui/bots/BotButtons;->state:Lorg/telegram/ui/bots/BotButtons$ButtonsState;

    iget-object v1, p0, Lorg/telegram/ui/bots/BotButtons;->buttons:[Lorg/telegram/ui/bots/BotButtons$Button;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v1, v1, Lorg/telegram/ui/bots/BotButtons$Button;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->cancelAnimation()V

    iget-object v1, p0, Lorg/telegram/ui/bots/BotButtons;->buttons:[Lorg/telegram/ui/bots/BotButtons$Button;

    aget-object v1, v1, v2

    iget-object v1, v1, Lorg/telegram/ui/bots/BotButtons$Button;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    iget-object v2, p1, Lorg/telegram/ui/bots/BotButtons$ButtonsState;->main:Lorg/telegram/ui/bots/BotButtons$ButtonState;

    iget-object v2, v2, Lorg/telegram/ui/bots/BotButtons$ButtonState;->text:Ljava/lang/String;

    invoke-virtual {v1, v2, p2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;Z)V

    iget-object v1, p0, Lorg/telegram/ui/bots/BotButtons;->buttons:[Lorg/telegram/ui/bots/BotButtons$Button;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iget-object v1, v1, Lorg/telegram/ui/bots/BotButtons$Button;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->cancelAnimation()V

    iget-object v1, p0, Lorg/telegram/ui/bots/BotButtons;->buttons:[Lorg/telegram/ui/bots/BotButtons$Button;

    aget-object v1, v1, v2

    iget-object v1, v1, Lorg/telegram/ui/bots/BotButtons$Button;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    iget-object v2, p1, Lorg/telegram/ui/bots/BotButtons$ButtonsState;->secondary:Lorg/telegram/ui/bots/BotButtons$ButtonState;

    iget-object v2, v2, Lorg/telegram/ui/bots/BotButtons$ButtonState;->text:Ljava/lang/String;

    invoke-virtual {v1, v2, p2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;Z)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0}, Lorg/telegram/ui/bots/BotButtons;->getTotalHeight()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/bots/BotButtons;->whenResized:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/bots/BotButtons;->getTotalHeight()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/bots/BotButtons;->whenResized:Ljava/lang/Runnable;

    const-wide/16 v1, 0xc8

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/bots/BotButtons;->whenResized:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_1
    :goto_0
    iget p1, p1, Lorg/telegram/ui/bots/BotButtons$ButtonsState;->backgroundColor:I

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/bots/BotButtons;->setBackgroundColor(IZ)V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/bots/BotButtons;->buttons:[Lorg/telegram/ui/bots/BotButtons$Button;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    iget-object v3, v2, Lorg/telegram/ui/bots/BotButtons$Button;->ripple:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x1

    if-eq v3, p1, :cond_0

    iget-object v2, v2, Lorg/telegram/ui/bots/BotButtons$Button;->progress:Lorg/telegram/ui/Components/CircularProgressDrawable;

    if-eq v2, p1, :cond_0

    aget-object v0, v0, v4

    iget-object v2, v0, Lorg/telegram/ui/bots/BotButtons$Button;->ripple:Landroid/graphics/drawable/Drawable;

    if-eq v2, p1, :cond_0

    iget-object v0, v0, Lorg/telegram/ui/bots/BotButtons$Button;->progress:Lorg/telegram/ui/Components/CircularProgressDrawable;

    if-eq v0, p1, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method
