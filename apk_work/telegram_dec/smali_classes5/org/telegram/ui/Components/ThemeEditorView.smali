.class public Lorg/telegram/ui/Components/ThemeEditorView;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;
    }
.end annotation


# static fields
.field private static volatile Instance:Lorg/telegram/ui/Components/ThemeEditorView;


# instance fields
.field private currentThemeDesription:Ljava/util/ArrayList;

.field private currentThemeDesriptionPosition:I

.field private decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field private editorAlert:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

.field private final editorHeight:I

.field private final editorWidth:I

.field private hidden:Z

.field private parentActivity:Landroid/app/Activity;

.field private preferences:Landroid/content/SharedPreferences;

.field private themeInfo:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

.field private wallpaperUpdater:Lorg/telegram/ui/Components/WallpaperUpdater;

.field private windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private windowManager:Landroid/view/WindowManager;

.field private windowView:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x42580000    # 54.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/ThemeEditorView;->editorWidth:I

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ThemeEditorView;->editorHeight:I

    return-void
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/ThemeEditorView;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ThemeEditorView;->currentThemeDesription:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1102(Lorg/telegram/ui/Components/ThemeEditorView;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ThemeEditorView;->currentThemeDesription:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$4200(Lorg/telegram/ui/Components/ThemeEditorView;)Landroid/view/animation/DecelerateInterpolator;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ThemeEditorView;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    return-object p0
.end method

.method static synthetic access$4600(Lorg/telegram/ui/Components/ThemeEditorView;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ThemeEditorView;->parentActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$4700(Lorg/telegram/ui/Components/ThemeEditorView;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ThemeEditorView;->themeInfo:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    return-object p0
.end method

.method static synthetic access$4900(Lorg/telegram/ui/Components/ThemeEditorView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ThemeEditorView;->currentThemeDesriptionPosition:I

    return p0
.end method

.method static synthetic access$4902(Lorg/telegram/ui/Components/ThemeEditorView;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/ThemeEditorView;->currentThemeDesriptionPosition:I

    return p1
.end method

.method static synthetic access$5200(Lorg/telegram/ui/Components/ThemeEditorView;)Lorg/telegram/ui/Components/WallpaperUpdater;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ThemeEditorView;->wallpaperUpdater:Lorg/telegram/ui/Components/WallpaperUpdater;

    return-object p0
.end method

.method static synthetic access$5300(Lorg/telegram/ui/Components/ThemeEditorView;)Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ThemeEditorView;->editorAlert:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    return-object p0
.end method

.method static synthetic access$5302(Lorg/telegram/ui/Components/ThemeEditorView;Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ThemeEditorView;->editorAlert:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    return-object p1
.end method

.method static synthetic access$5400(Lorg/telegram/ui/Components/ThemeEditorView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ThemeEditorView;->hide()V

    return-void
.end method

.method static synthetic access$5500(Lorg/telegram/ui/Components/ThemeEditorView;)Landroid/view/WindowManager$LayoutParams;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    return-object p0
.end method

.method static synthetic access$5600(Lorg/telegram/ui/Components/ThemeEditorView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ThemeEditorView;->editorWidth:I

    return p0
.end method

.method static synthetic access$5700(Lorg/telegram/ui/Components/ThemeEditorView;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowView:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$5800(Lorg/telegram/ui/Components/ThemeEditorView;)Landroid/view/WindowManager;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowManager:Landroid/view/WindowManager;

    return-object p0
.end method

.method static synthetic access$5900(Lorg/telegram/ui/Components/ThemeEditorView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ThemeEditorView;->animateToBoundsMaybe()V

    return-void
.end method

.method static synthetic access$6000(Lorg/telegram/ui/Components/ThemeEditorView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ThemeEditorView;->show()V

    return-void
.end method

.method private animateToBoundsMaybe()V
    .locals 16

    move-object/from16 v0, p0

    iget v1, v0, Lorg/telegram/ui/Components/ThemeEditorView;->editorWidth:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v1}, Lorg/telegram/ui/Components/ThemeEditorView;->getSideCoord(ZIFI)I

    move-result v1

    iget v5, v0, Lorg/telegram/ui/Components/ThemeEditorView;->editorWidth:I

    invoke-static {v2, v2, v4, v5}, Lorg/telegram/ui/Components/ThemeEditorView;->getSideCoord(ZIFI)I

    move-result v5

    iget v6, v0, Lorg/telegram/ui/Components/ThemeEditorView;->editorHeight:I

    invoke-static {v3, v3, v4, v6}, Lorg/telegram/ui/Components/ThemeEditorView;->getSideCoord(ZIFI)I

    move-result v6

    iget v7, v0, Lorg/telegram/ui/Components/ThemeEditorView;->editorHeight:I

    invoke-static {v3, v2, v4, v7}, Lorg/telegram/ui/Components/ThemeEditorView;->getSideCoord(ZIFI)I

    move-result v7

    iget-object v8, v0, Lorg/telegram/ui/Components/ThemeEditorView;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const/high16 v9, 0x41a00000    # 20.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    iget-object v10, v0, Lorg/telegram/ui/Components/ThemeEditorView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v10, v10, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int v10, v1, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    const/4 v11, 0x2

    const-string v12, "sidex"

    const-string v13, "x"

    const/high16 v14, 0x3f800000    # 1.0f

    if-le v10, v9, :cond_6

    iget-object v10, v0, Lorg/telegram/ui/Components/ThemeEditorView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v10, v10, Landroid/view/WindowManager$LayoutParams;->x:I

    if-gez v10, :cond_0

    iget v15, v0, Lorg/telegram/ui/Components/ThemeEditorView;->editorWidth:I

    neg-int v15, v15

    div-int/lit8 v15, v15, 0x4

    if-le v10, v15, :cond_0

    goto/16 :goto_4

    :cond_0
    sub-int v10, v5, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    if-le v10, v9, :cond_4

    iget-object v10, v0, Lorg/telegram/ui/Components/ThemeEditorView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v10, v10, Landroid/view/WindowManager$LayoutParams;->x:I

    sget-object v15, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v15, v15, Landroid/graphics/Point;->x:I

    iget v4, v0, Lorg/telegram/ui/Components/ThemeEditorView;->editorWidth:I

    sub-int v3, v15, v4

    if-le v10, v3, :cond_1

    div-int/lit8 v4, v4, 0x4

    mul-int/lit8 v4, v4, 0x3

    sub-int/2addr v15, v4

    if-ge v10, v15, :cond_1

    goto :goto_3

    :cond_1
    iget-object v3, v0, Lorg/telegram/ui/Components/ThemeEditorView;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v3

    cmpl-float v3, v3, v14

    if-eqz v3, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, v0, Lorg/telegram/ui/Components/ThemeEditorView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    if-gez v3, :cond_2

    iget v3, v0, Lorg/telegram/ui/Components/ThemeEditorView;->editorWidth:I

    neg-int v3, v3

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-static {v0, v13, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v3

    :goto_0
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-static {v0, v13, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v3

    goto :goto_0

    :goto_1
    const/4 v12, 0x1

    goto :goto_5

    :cond_3
    iget-object v3, v0, Lorg/telegram/ui/Components/ThemeEditorView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int/2addr v3, v1

    int-to-float v3, v3

    sub-int/2addr v5, v1

    int-to-float v1, v5

    div-float/2addr v3, v1

    const-string v1, "px"

    invoke-interface {v8, v1, v3}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8, v12, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const/4 v1, 0x0

    :goto_2
    const/4 v12, 0x0

    goto :goto_5

    :cond_4
    :goto_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v8, v12, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object v3, v0, Lorg/telegram/ui/Components/ThemeEditorView;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v3

    cmpl-float v3, v3, v14

    if-eqz v3, :cond_5

    iget-object v3, v0, Lorg/telegram/ui/Components/ThemeEditorView;->windowView:Landroid/widget/FrameLayout;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v10, v2, [F

    const/4 v12, 0x0

    aput v14, v10, v12

    invoke-static {v3, v4, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    filled-new-array {v5}, [I

    move-result-object v3

    invoke-static {v0, v13, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    :goto_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    invoke-interface {v8, v12, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object v5, v0, Lorg/telegram/ui/Components/ThemeEditorView;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/view/View;->getAlpha()F

    move-result v5

    cmpl-float v5, v5, v14

    if-eqz v5, :cond_7

    iget-object v5, v0, Lorg/telegram/ui/Components/ThemeEditorView;->windowView:Landroid/widget/FrameLayout;

    sget-object v10, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v12, v2, [F

    aput v14, v12, v4

    invoke-static {v5, v10, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    filled-new-array {v1}, [I

    move-result-object v1

    invoke-static {v0, v13, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v1, v3

    goto :goto_2

    :goto_5
    if-nez v12, :cond_d

    iget-object v3, v0, Lorg/telegram/ui/Components/ThemeEditorView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int v3, v6, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const-string v4, "y"

    const-string v5, "sidey"

    if-le v3, v9, :cond_b

    iget-object v3, v0, Lorg/telegram/ui/Components/ThemeEditorView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v10

    if-gt v3, v10, :cond_8

    goto :goto_7

    :cond_8
    iget-object v3, v0, Lorg/telegram/ui/Components/ThemeEditorView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int v3, v7, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-gt v3, v9, :cond_a

    if-nez v1, :cond_9

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_9
    invoke-interface {v8, v5, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    filled-new-array {v7}, [I

    move-result-object v3

    invoke-static {v0, v4, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v3

    :goto_6
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_a
    iget-object v3, v0, Lorg/telegram/ui/Components/ThemeEditorView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int/2addr v3, v6

    int-to-float v3, v3

    sub-int/2addr v7, v6

    int-to-float v4, v7

    div-float/2addr v3, v4

    const-string v4, "py"

    invoke-interface {v8, v4, v3}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8, v5, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_8

    :cond_b
    :goto_7
    if-nez v1, :cond_c

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_c
    const/4 v3, 0x0

    invoke-interface {v8, v5, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    filled-new-array {v6}, [I

    move-result-object v3

    invoke-static {v0, v4, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v3

    goto :goto_6

    :goto_8
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_d
    if-eqz v1, :cond_10

    iget-object v3, v0, Lorg/telegram/ui/Components/ThemeEditorView;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    if-nez v3, :cond_e

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v3, v0, Lorg/telegram/ui/Components/ThemeEditorView;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    :cond_e
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v4, v0, Lorg/telegram/ui/Components/ThemeEditorView;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v4, 0x96

    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    if-eqz v12, :cond_f

    iget-object v4, v0, Lorg/telegram/ui/Components/ThemeEditorView;->windowView:Landroid/widget/FrameLayout;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v2, [F

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v7, v2, v6

    invoke-static {v4, v5, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/Components/ThemeEditorView$4;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/ThemeEditorView$4;-><init>(Lorg/telegram/ui/Components/ThemeEditorView;)V

    invoke-virtual {v3, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_f
    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    :cond_10
    return-void
.end method

.method public static getInstance()Lorg/telegram/ui/Components/ThemeEditorView;
    .locals 1

    sget-object v0, Lorg/telegram/ui/Components/ThemeEditorView;->Instance:Lorg/telegram/ui/Components/ThemeEditorView;

    return-object v0
.end method

.method private static getSideCoord(ZIFI)I
    .locals 2

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    if-eqz p0, :cond_0

    iget v0, v0, Landroid/graphics/Point;->x:I

    :goto_0
    sub-int/2addr v0, p3

    goto :goto_1

    :cond_0
    iget v0, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, p3

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result p3

    goto :goto_0

    :goto_1
    const/high16 p3, 0x41200000    # 10.0f

    if-nez p1, :cond_1

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    goto :goto_2

    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    sub-int p1, v0, p1

    goto :goto_2

    :cond_2
    const/high16 p1, 0x41a00000    # 20.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    sub-int/2addr v0, p1

    int-to-float p1, v0

    mul-float p1, p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    add-int/2addr p1, p2

    :goto_2
    if-nez p0, :cond_3

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result p0

    add-int/2addr p1, p0

    :cond_3
    return p1
.end method

.method private hide()V
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x2

    iget-object v2, p0, Lorg/telegram/ui/Components/ThemeEditorView;->parentActivity:Landroid/app/Activity;

    if-nez v2, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v3, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowView:Landroid/widget/FrameLayout;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v1, [F

    fill-array-data v5, :array_0

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowView:Landroid/widget/FrameLayout;

    sget-object v5, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v6, v1, [F

    fill-array-data v6, :array_1

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowView:Landroid/widget/FrameLayout;

    sget-object v6, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v7, v1, [F

    fill-array-data v7, :array_2

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Landroid/animation/Animator;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    aput-object v4, v6, v0

    aput-object v5, v6, v1

    invoke-virtual {v2, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/ThemeEditorView;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v3, 0x96

    invoke-virtual {v2, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v1, Lorg/telegram/ui/Components/ThemeEditorView$3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ThemeEditorView$3;-><init>(Lorg/telegram/ui/Components/ThemeEditorView;)V

    invoke-virtual {v2, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ThemeEditorView;->hidden:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private show()V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView;->parentActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->setPreferredMaxRefreshRate(Landroid/view/WindowManager;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ThemeEditorView;->hidden:Z

    invoke-direct {p0}, Lorg/telegram/ui/Components/ThemeEditorView;->showWithAnimation()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private showWithAnimation()V
    .locals 7

    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowView:Landroid/widget/FrameLayout;

    sget v1, Lorg/telegram/messenger/R$drawable;->theme_picker:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v1, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowView:Landroid/widget/FrameLayout;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v4, v3, [F

    fill-array-data v4, :array_0

    invoke-static {v1, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowView:Landroid/widget/FrameLayout;

    sget-object v4, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v5, v3, [F

    fill-array-data v5, :array_1

    invoke-static {v2, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-object v4, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowView:Landroid/widget/FrameLayout;

    sget-object v5, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v6, v3, [F

    fill-array-data v6, :array_2

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/animation/Animator;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v1, 0x1

    aput-object v2, v5, v1

    aput-object v4, v5, v3

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/ThemeEditorView;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public close()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowView:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView;->parentActivity:Landroid/app/Activity;

    return-void
.end method

.method public destroy()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView;->wallpaperUpdater:Lorg/telegram/ui/Components/WallpaperUpdater;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/WallpaperUpdater;->cleanup()V

    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView;->parentActivity:Landroid/app/Activity;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowView:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v2, v0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowView:Landroid/widget/FrameLayout;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;Z)V

    :goto_0
    :try_start_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView;->editorAlert:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    iput-object v1, p0, Lorg/telegram/ui/Components/ThemeEditorView;->editorAlert:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    iput-object v1, p0, Lorg/telegram/ui/Components/ThemeEditorView;->parentActivity:Landroid/app/Activity;

    sput-object v1, Lorg/telegram/ui/Components/ThemeEditorView;->Instance:Lorg/telegram/ui/Components/ThemeEditorView;

    :cond_2
    :goto_2
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView;->wallpaperUpdater:Lorg/telegram/ui/Components/WallpaperUpdater;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/ui/Components/WallpaperUpdater;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged()V
    .locals 8

    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "sidex"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ThemeEditorView;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "sidey"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iget-object v3, p0, Lorg/telegram/ui/Components/ThemeEditorView;->preferences:Landroid/content/SharedPreferences;

    const-string v5, "px"

    const/4 v6, 0x0

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v3

    iget-object v5, p0, Lorg/telegram/ui/Components/ThemeEditorView;->preferences:Landroid/content/SharedPreferences;

    const-string v7, "py"

    invoke-interface {v5, v7, v6}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v7, p0, Lorg/telegram/ui/Components/ThemeEditorView;->editorWidth:I

    invoke-static {v2, v0, v3, v7}, Lorg/telegram/ui/Components/ThemeEditorView;->getSideCoord(ZIFI)I

    move-result v0

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lorg/telegram/ui/Components/ThemeEditorView;->editorHeight:I

    invoke-static {v4, v1, v5, v2}, Lorg/telegram/ui/Components/ThemeEditorView;->getSideCoord(ZIFI)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public show(Landroid/app/Activity;Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;)V
    .locals 8

    .line 0
    sget-object v0, Lorg/telegram/ui/Components/ThemeEditorView;->Instance:Lorg/telegram/ui/Components/ThemeEditorView;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/telegram/ui/Components/ThemeEditorView;->Instance:Lorg/telegram/ui/Components/ThemeEditorView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ThemeEditorView;->destroy()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ThemeEditorView;->hidden:Z

    iput-object p2, p0, Lorg/telegram/ui/Components/ThemeEditorView;->themeInfo:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    new-instance p2, Lorg/telegram/ui/Components/ThemeEditorView$1;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Components/ThemeEditorView$1;-><init>(Lorg/telegram/ui/Components/ThemeEditorView;Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowView:Landroid/widget/FrameLayout;

    const-string p2, "window"

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/WindowManager;

    iput-object p2, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowManager:Landroid/view/WindowManager;

    sget-object p2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v1, "themeconfig"

    invoke-virtual {p2, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/Components/ThemeEditorView;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "sidex"

    const/4 v2, 0x1

    invoke-interface {p2, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    iget-object v1, p0, Lorg/telegram/ui/Components/ThemeEditorView;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "sidey"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iget-object v3, p0, Lorg/telegram/ui/Components/ThemeEditorView;->preferences:Landroid/content/SharedPreferences;

    const-string v4, "px"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Components/ThemeEditorView;->preferences:Landroid/content/SharedPreferences;

    const-string v6, "py"

    invoke-interface {v4, v6, v5}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v4

    :try_start_0
    new-instance v5, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v5}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v5, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v6, p0, Lorg/telegram/ui/Components/ThemeEditorView;->editorWidth:I

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v7, p0, Lorg/telegram/ui/Components/ThemeEditorView;->editorHeight:I

    iput v7, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-static {v2, p2, v3, v6}, Lorg/telegram/ui/Components/ThemeEditorView;->getSideCoord(ZIFI)I

    move-result p2

    iput p2, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object p2, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lorg/telegram/ui/Components/ThemeEditorView;->editorHeight:I

    invoke-static {v0, v1, v4, v2}, Lorg/telegram/ui/Components/ThemeEditorView;->getSideCoord(ZIFI)I

    move-result v0

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object p2, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v0, -0x3

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->format:I

    const/16 v0, 0x33

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v0, 0x63

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const v0, 0x1000208

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowView:Landroid/widget/FrameLayout;

    invoke-static {v0, v1, p2}, Lorg/telegram/messenger/AndroidUtilities;->setPreferredMaxRefreshRate(Landroid/view/WindowManager;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    iget-object p2, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p2, v0, v1}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    new-instance p2, Lorg/telegram/ui/Components/WallpaperUpdater;

    new-instance v0, Lorg/telegram/ui/Components/ThemeEditorView$2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ThemeEditorView$2;-><init>(Lorg/telegram/ui/Components/ThemeEditorView;)V

    const/4 v1, 0x0

    invoke-direct {p2, p1, v1, v0}, Lorg/telegram/ui/Components/WallpaperUpdater;-><init>(Landroid/app/Activity;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/WallpaperUpdater$WallpaperUpdaterDelegate;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/ThemeEditorView;->wallpaperUpdater:Lorg/telegram/ui/Components/WallpaperUpdater;

    sput-object p0, Lorg/telegram/ui/Components/ThemeEditorView;->Instance:Lorg/telegram/ui/Components/ThemeEditorView;

    iput-object p1, p0, Lorg/telegram/ui/Components/ThemeEditorView;->parentActivity:Landroid/app/Activity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/ThemeEditorView;->showWithAnimation()V

    return-void

    :catch_0
    move-exception p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method
