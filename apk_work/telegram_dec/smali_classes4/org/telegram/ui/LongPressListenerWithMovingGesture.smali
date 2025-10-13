.class public abstract Lorg/telegram/ui/LongPressListenerWithMovingGesture;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field gestureDetector2:Lorg/telegram/ui/Components/GestureDetector2;

.field private location:[I

.field rect:Landroid/graphics/Rect;

.field private selectedMenuView:Landroid/view/View;

.field startFromX:F

.field startFromY:F

.field subItemClicked:Z

.field submenu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

.field tapConfirmedOrCanceled:Z

.field view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/LongPressListenerWithMovingGesture;->rect:Landroid/graphics/Rect;

    new-instance v0, Lorg/telegram/ui/Components/GestureDetector2;

    new-instance v1, Lorg/telegram/ui/LongPressListenerWithMovingGesture$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/LongPressListenerWithMovingGesture$1;-><init>(Lorg/telegram/ui/LongPressListenerWithMovingGesture;)V

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/GestureDetector2;-><init>(Lorg/telegram/ui/Components/GestureDetector2$OnGestureListener;)V

    iput-object v0, p0, Lorg/telegram/ui/LongPressListenerWithMovingGesture;->gestureDetector2:Lorg/telegram/ui/Components/GestureDetector2;

    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/telegram/ui/LongPressListenerWithMovingGesture;->location:[I

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/GestureDetector2;->setIsLongpressEnabled(Z)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/LongPressListenerWithMovingGesture;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/LongPressListenerWithMovingGesture;->selectedMenuView:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public abstract onLongPress()V
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10

    iput-object p1, p0, Lorg/telegram/ui/LongPressListenerWithMovingGesture;->view:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/LongPressListenerWithMovingGesture;->startFromX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/LongPressListenerWithMovingGesture;->startFromY:F

    iput-boolean v0, p0, Lorg/telegram/ui/LongPressListenerWithMovingGesture;->tapConfirmedOrCanceled:Z

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/LongPressListenerWithMovingGesture;->gestureDetector2:Lorg/telegram/ui/Components/GestureDetector2;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/GestureDetector2;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object p1, p0, Lorg/telegram/ui/LongPressListenerWithMovingGesture;->submenu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lorg/telegram/ui/LongPressListenerWithMovingGesture;->subItemClicked:Z

    if-nez p1, :cond_5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v1, :cond_5

    iget-object p1, p0, Lorg/telegram/ui/LongPressListenerWithMovingGesture;->view:Landroid/view/View;

    iget-object v3, p0, Lorg/telegram/ui/LongPressListenerWithMovingGesture;->location:[I

    invoke-virtual {p1, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget-object v3, p0, Lorg/telegram/ui/LongPressListenerWithMovingGesture;->location:[I

    aget v3, v3, v0

    int-to-float v3, v3

    add-float/2addr p1, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/LongPressListenerWithMovingGesture;->location:[I

    aget v4, v4, v2

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lorg/telegram/ui/LongPressListenerWithMovingGesture;->submenu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/LongPressListenerWithMovingGesture;->location:[I

    invoke-virtual {v4, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v4, p0, Lorg/telegram/ui/LongPressListenerWithMovingGesture;->location:[I

    aget v5, v4, v0

    int-to-float v5, v5

    sub-float/2addr p1, v5

    aget v4, v4, v2

    int-to-float v4, v4

    sub-float/2addr v3, v4

    const/4 v4, 0x0

    iput-object v4, p0, Lorg/telegram/ui/LongPressListenerWithMovingGesture;->selectedMenuView:Landroid/view/View;

    iget-object v4, p0, Lorg/telegram/ui/LongPressListenerWithMovingGesture;->submenu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemsCount()I

    move-result v6

    if-ge v5, v6, :cond_5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemAt(I)Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/ui/LongPressListenerWithMovingGesture;->rect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v6}, Landroid/view/View;->isClickable()Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lorg/telegram/ui/LongPressListenerWithMovingGesture;->rect:Landroid/graphics/Rect;

    float-to-int v8, p1

    float-to-int v9, v3

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    const/16 v8, 0x15

    if-nez v7, :cond_1

    invoke-virtual {v6, v0}, Landroid/view/View;->setPressed(Z)V

    invoke-virtual {v6, v0}, Landroid/view/View;->setSelected(Z)V

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v7, v8, :cond_4

    invoke-virtual {v6}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-virtual {v6}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6, v0, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    goto :goto_1

    :cond_1
    invoke-virtual {v6, v2}, Landroid/view/View;->setPressed(Z)V

    invoke-virtual {v6, v2}, Landroid/view/View;->setSelected(Z)V

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v8, :cond_3

    if-ne v7, v8, :cond_2

    invoke-virtual {v6}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v6}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v7, v2, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_2
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v7

    int-to-float v7, v7

    sub-float v7, v3, v7

    invoke-static {v6, p1, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/View;FF)V

    :cond_3
    iput-object v6, p0, Lorg/telegram/ui/LongPressListenerWithMovingGesture;->selectedMenuView:Landroid/view/View;

    :cond_4
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/high16 v3, 0x40000000    # 2.0f

    if-ne p1, v1, :cond_6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget v1, p0, Lorg/telegram/ui/LongPressListenerWithMovingGesture;->startFromX:F

    sub-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->touchSlop:F

    mul-float v1, v1, v3

    cmpl-float p1, p1, v1

    if-gtz p1, :cond_7

    :cond_6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v1, p0, Lorg/telegram/ui/LongPressListenerWithMovingGesture;->startFromY:F

    sub-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->touchSlop:F

    mul-float v1, v1, v3

    cmpl-float p1, p1, v1

    if-lez p1, :cond_8

    :cond_7
    iput-boolean v2, p0, Lorg/telegram/ui/LongPressListenerWithMovingGesture;->tapConfirmedOrCanceled:Z

    iget-object p1, p0, Lorg/telegram/ui/LongPressListenerWithMovingGesture;->view:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    iget-object p1, p0, Lorg/telegram/ui/LongPressListenerWithMovingGesture;->view:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    :cond_8
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v2, :cond_a

    iget-boolean p1, p0, Lorg/telegram/ui/LongPressListenerWithMovingGesture;->subItemClicked:Z

    if-nez p1, :cond_a

    iget-boolean p1, p0, Lorg/telegram/ui/LongPressListenerWithMovingGesture;->tapConfirmedOrCanceled:Z

    if-nez p1, :cond_a

    iget-object p1, p0, Lorg/telegram/ui/LongPressListenerWithMovingGesture;->selectedMenuView:Landroid/view/View;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/view/View;->callOnClick()Z

    iput-boolean v2, p0, Lorg/telegram/ui/LongPressListenerWithMovingGesture;->subItemClicked:Z

    goto :goto_2

    :cond_9
    iget-object p1, p0, Lorg/telegram/ui/LongPressListenerWithMovingGesture;->submenu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-nez p1, :cond_a

    iget-object p1, p0, Lorg/telegram/ui/LongPressListenerWithMovingGesture;->view:Landroid/view/View;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/view/View;->callOnClick()Z

    :cond_a
    :goto_2
    return v2
.end method

.method public setSubmenu(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/LongPressListenerWithMovingGesture;->submenu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    return-void
.end method
