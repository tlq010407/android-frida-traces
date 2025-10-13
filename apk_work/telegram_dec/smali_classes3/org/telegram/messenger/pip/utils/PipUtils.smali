.class public abstract Lorg/telegram/messenger/pip/utils/PipUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final tmpCords:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Lorg/telegram/messenger/pip/utils/PipUtils;->tmpCords:[I

    return-void
.end method

.method public static applyPictureInPictureParams(Landroid/app/Activity;Lorg/telegram/messenger/pip/PipSource;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/telegram/messenger/pip/PipSource;->buildPictureInPictureParams()Landroid/app/PictureInPictureParams;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/telegram/messenger/AndroidUtilities;->setPictureInPictureParams(Landroid/app/Activity;Landroid/app/PictureInPictureParams;)V

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->resetPictureInPictureParams(Landroid/app/Activity;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static checkAnyPipPermissions(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Lorg/telegram/messenger/pip/utils/PipUtils;->checkPermissions(Landroid/content/Context;)I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static checkPermissions(Landroid/content/Context;)I
    .locals 2

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->checkInlinePermissions(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_2

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->checkPipPermissions(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, -0x2

    return p0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public static createWindowLayoutParams(Landroid/content/Context;Z)Landroid/view/WindowManager$LayoutParams;
    .locals 2

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-static {p0, p1}, Lorg/telegram/messenger/pip/utils/PipUtils;->getWindowLayoutParamsType(Landroid/content/Context;Z)I

    move-result p0

    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 p0, 0x208

    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    return-object v0
.end method

.method public static getPipSourceRectHintPosition(Landroid/app/Activity;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 8

    sget-object v0, Lorg/telegram/messenger/pip/utils/PipUtils;->tmpCords:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    aget v4, v0, v3

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v5, v0, v1

    sub-int/2addr v2, v5

    aget v5, v0, v3

    sub-int/2addr v4, v5

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr p1, v4

    aget v6, v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v7, v6

    invoke-static {v2, v6, v7}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result v2

    aget v6, v0, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v7, v6

    invoke-static {v4, v6, v7}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result v4

    aget v1, v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v6, v1

    invoke-static {v5, v1, v6}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result v1

    aget v0, v0, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    add-int/2addr p0, v0

    invoke-static {p1, v0, p0}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result p0

    invoke-virtual {p2, v2, v4, v1, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public static getWindowLayoutParamsType(Landroid/content/Context;Z)I
    .locals 0

    if-nez p1, :cond_1

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->checkInlinePermissions(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p1, 0x1a

    if-lt p0, p1, :cond_0

    const/16 p0, 0x7f6

    return p0

    :cond_0
    const/16 p0, 0x7d3

    return p0

    :cond_1
    const/4 p0, 0x2

    return p0
.end method

.method public static useAutoEnterInPictureInPictureMode()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
