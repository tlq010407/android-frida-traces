.class public Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/PeerColorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PeerColorGrid"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;
    }
.end annotation


# instance fields
.field private final backgroundPaint:Landroid/graphics/Paint;

.field private buttons:[Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;

.field private final currentAccount:I

.field private final dividerPaint:Landroid/graphics/Paint;

.field private lock:Z

.field private needDivider:Z

.field private onColorClick:Lorg/telegram/messenger/Utilities$Callback;

.field final order:[I

.field private pressedButton:Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private selectedColorId:I

.field private final type:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->backgroundPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 p1, 0x0

    const/16 v1, 0x8

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->order:[I

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->dividerPaint:Landroid/graphics/Paint;

    iput-boolean v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->needDivider:Z

    iput p1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->selectedColorId:I

    iput p2, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->type:I

    iput p3, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->currentAccount:I

    iput-object p4, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-void

    :array_0
    .array-data 4
        0x5
        0x3
        0x1
        0x0
        0x2
        0x4
        0x6
        -0x1
    .end array-data
.end method

.method static synthetic access$4400(Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$4500(Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->type:I

    return p0
.end method

.method static synthetic access$4600(Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;)Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->backgroundPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$4700(Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->lock:Z

    return p0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->buttons:[Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->buttons:[Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->needDivider:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->dividerPaint:Landroid/graphics/Paint;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    iget-object v2, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v0, 0x41a80000    # 21.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v3, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    int-to-float v4, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int/2addr v1, v0

    int-to-float v5, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v6, v0

    iget-object v7, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->dividerPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->buttons:[Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->buttons:[Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;

    array-length v4, v3

    if-ge v0, v4, :cond_1

    aget-object v3, v3, v0

    iget-object v3, v3, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->clickBounds:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->buttons:[Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;

    aget-object v0, v3, v0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_3

    iput-object v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->pressedButton:Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v4}, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->setPressed(Z)V

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_7

    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->pressedButton:Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;

    if-eq p1, v0, :cond_b

    if-eqz p1, :cond_4

    invoke-virtual {p1, v1}, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->setPressed(Z)V

    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v0, v4}, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->setPressed(Z)V

    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->pressedButton:Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;

    if-eqz p1, :cond_6

    if-eqz v0, :cond_6

    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->onColorClick:Lorg/telegram/messenger/Utilities$Callback;

    if-eqz p1, :cond_6

    iget v1, v0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    :cond_6
    iput-object v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->pressedButton:Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;

    goto :goto_3

    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v4, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_b

    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v4, :cond_9

    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->pressedButton:Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;

    if-eqz p1, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->onColorClick:Lorg/telegram/messenger/Utilities$Callback;

    if-eqz v0, :cond_9

    iget p1, p1, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->id:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    :cond_9
    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->buttons:[Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;

    if-eqz p1, :cond_a

    const/4 p1, 0x0

    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->buttons:[Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;

    array-length v3, v0

    if-ge p1, v3, :cond_a

    aget-object v0, v0, p1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->setPressed(Z)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_a
    iput-object v2, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->pressedButton:Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;

    :cond_b
    :goto_3
    return v4
.end method

.method public getColorId()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->selectedColorId:I

    return v0
.end method

.method protected onMeasure(II)V
    .locals 16

    move-object/from16 v0, p0

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iget v2, v0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget v3, v0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->type:I

    if-nez v3, :cond_0

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->peerColors:Lorg/telegram/messenger/MessagesController$PeerColors;

    goto :goto_0

    :cond_0
    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->profilePeerColors:Lorg/telegram/messenger/MessagesController$PeerColors;

    :goto_0
    const/4 v3, 0x0

    if-nez v2, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    iget-object v4, v2, Lorg/telegram/messenger/MessagesController$PeerColors;->colors:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_1
    iget v5, v0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->type:I

    const/16 v6, 0x8

    const/4 v7, 0x2

    if-ne v5, v7, :cond_2

    const/16 v4, 0x8

    :cond_2
    if-ne v5, v7, :cond_3

    goto :goto_2

    :cond_3
    if-nez v5, :cond_4

    const/4 v6, 0x7

    :cond_4
    :goto_2
    const/high16 v5, 0x42580000    # 54.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    int-to-float v8, v1

    int-to-float v9, v6

    add-int/lit8 v10, v6, 0x1

    int-to-float v10, v10

    const v11, 0x3e943569

    mul-float v12, v10, v11

    add-float/2addr v12, v9

    div-float v12, v8, v12

    invoke-static {v5, v12}, Ljava/lang/Math;->min(FF)F

    move-result v5

    mul-float v11, v11, v5

    const/high16 v12, 0x41000000    # 8.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    int-to-float v12, v12

    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v11

    const v12, 0x3ea1af28

    mul-float v12, v12, v5

    const v13, 0x413547ae    # 11.33f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    int-to-float v13, v13

    invoke-static {v12, v13}, Ljava/lang/Math;->min(FF)F

    move-result v12

    div-int v13, v4, v6

    int-to-float v14, v13

    mul-float v14, v14, v5

    const/4 v15, 0x1

    add-int/2addr v13, v15

    int-to-float v13, v13

    mul-float v13, v13, v12

    add-float/2addr v14, v13

    float-to-int v13, v14

    invoke-virtual {v0, v1, v13}, Landroid/view/View;->setMeasuredDimension(II)V

    iget-object v1, v0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->buttons:[Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;

    if-eqz v1, :cond_5

    array-length v1, v1

    if-eq v1, v4, :cond_a

    :cond_5
    new-array v1, v4, [Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;

    iput-object v1, v0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->buttons:[Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v4, :cond_a

    iget-object v13, v0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->buttons:[Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;

    new-instance v14, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;

    invoke-direct {v14, v0}, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;-><init>(Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;)V

    aput-object v14, v13, v1

    iget v13, v0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->type:I

    if-ne v13, v7, :cond_8

    iget-object v13, v0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->buttons:[Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;

    aget-object v13, v13, v1

    iget-object v14, v0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->order:[I

    aget v14, v14, v1

    iput v14, v13, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->id:I

    if-gez v14, :cond_6

    const/4 v14, 0x1

    goto :goto_4

    :cond_6
    const/4 v14, 0x0

    :goto_4
    invoke-virtual {v13, v14}, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->setClose(Z)V

    iget-object v13, v0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->buttons:[Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;

    aget-object v13, v13, v1

    iget-object v14, v0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->order:[I

    aget v14, v14, v1

    if-gez v14, :cond_7

    sget v14, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundGray:I

    goto :goto_5

    :cond_7
    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_nameInMessage:[I

    array-length v15, v7

    rem-int/2addr v14, v15

    aget v14, v7, v14

    :goto_5
    iget-object v7, v0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v14, v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v7

    invoke-virtual {v13, v7}, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->set(I)V

    goto :goto_6

    :cond_8
    if-eqz v2, :cond_9

    if-ltz v1, :cond_9

    iget-object v7, v2, Lorg/telegram/messenger/MessagesController$PeerColors;->colors:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_9

    iget-object v7, v0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->buttons:[Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;

    aget-object v7, v7, v1

    iget-object v13, v2, Lorg/telegram/messenger/MessagesController$PeerColors;->colors:Ljava/util/ArrayList;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/messenger/MessagesController$PeerColor;

    iget v13, v13, Lorg/telegram/messenger/MessagesController$PeerColor;->id:I

    iput v13, v7, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->id:I

    iget-object v7, v0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->buttons:[Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;

    aget-object v7, v7, v1

    iget-object v13, v2, Lorg/telegram/messenger/MessagesController$PeerColors;->colors:Ljava/util/ArrayList;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/messenger/MessagesController$PeerColor;

    invoke-virtual {v7, v13}, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->set(Lorg/telegram/messenger/MessagesController$PeerColor;)V

    :cond_9
    :goto_6
    add-int/lit8 v1, v1, 0x1

    const/4 v7, 0x2

    const/4 v15, 0x1

    goto :goto_3

    :cond_a
    mul-float v9, v9, v5

    mul-float v10, v10, v11

    add-float/2addr v9, v10

    sub-float/2addr v8, v9

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v8, v1

    add-float/2addr v8, v11

    iget-object v2, v0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->buttons:[Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;

    if-eqz v2, :cond_d

    move v4, v8

    move v7, v12

    const/4 v2, 0x0

    :goto_7
    iget-object v9, v0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->buttons:[Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;

    array-length v9, v9

    if-ge v2, v9, :cond_d

    sget-object v9, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    add-float v10, v4, v5

    add-float v13, v7, v5

    invoke-virtual {v9, v4, v7, v10, v13}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v10, v0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->buttons:[Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;

    aget-object v10, v10, v2

    invoke-virtual {v10, v9}, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->layout(Landroid/graphics/RectF;)V

    neg-float v10, v11

    div-float/2addr v10, v1

    neg-float v13, v12

    div-float/2addr v13, v1

    invoke-virtual {v9, v10, v13}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v10, v0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->buttons:[Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;

    aget-object v10, v10, v2

    invoke-virtual {v10, v9}, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->layoutClickBounds(Landroid/graphics/RectF;)V

    iget-object v9, v0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->buttons:[Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;

    aget-object v9, v9, v2

    iget v10, v9, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->id:I

    iget v13, v0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->selectedColorId:I

    if-ne v10, v13, :cond_b

    const/4 v10, 0x1

    goto :goto_8

    :cond_b
    const/4 v10, 0x0

    :goto_8
    invoke-virtual {v9, v10, v3}, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->setSelected(ZZ)V

    rem-int v9, v2, v6

    const/4 v10, 0x1

    add-int/lit8 v13, v6, -0x1

    if-ne v9, v13, :cond_c

    add-float v4, v5, v12

    add-float/2addr v7, v4

    move v4, v8

    goto :goto_9

    :cond_c
    add-float v9, v5, v11

    add-float/2addr v4, v9

    :goto_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_d
    return-void
.end method

.method public setCloseAsLock(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->lock:Z

    return-void
.end method

.method public setDivider(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->needDivider:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setOnColorClick(Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/Utilities$Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->onColorClick:Lorg/telegram/messenger/Utilities$Callback;

    return-void
.end method

.method public setSelected(IZ)V
    .locals 4

    iput p1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->selectedColorId:I

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->buttons:[Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->buttons:[Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-object v2, v2, v1

    iget v3, v2, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->id:I

    if-ne v3, p1, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2, v3, p2}, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->setSelected(ZZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public updateColors()V
    .locals 7

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->buttons:[Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->type:I

    if-nez v1, :cond_1

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->peerColors:Lorg/telegram/messenger/MessagesController$PeerColors;

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->profilePeerColors:Lorg/telegram/messenger/MessagesController$PeerColors;

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->buttons:[Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;

    array-length v4, v3

    if-ge v2, v4, :cond_7

    iget v4, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->type:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    aget-object v3, v3, v2

    iget-object v4, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->order:[I

    aget v4, v4, v2

    iput v4, v3, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->id:I

    if-gez v4, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v3, v4}, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->setClose(Z)V

    iget-object v3, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->buttons:[Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;

    aget-object v3, v3, v2

    iget-object v4, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->order:[I

    aget v4, v4, v2

    if-gez v4, :cond_3

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundGray:I

    goto :goto_3

    :cond_3
    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_nameInMessage:[I

    array-length v6, v5

    rem-int/2addr v4, v6

    aget v4, v5, v4

    :goto_3
    iget-object v5, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->set(I)V

    goto :goto_4

    :cond_4
    const/4 v5, 0x7

    if-ge v2, v5, :cond_5

    if-nez v4, :cond_5

    aget-object v3, v3, v2

    iget-object v4, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->order:[I

    aget v4, v4, v2

    iput v4, v3, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->id:I

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_nameInMessage:[I

    aget v4, v5, v4

    goto :goto_3

    :cond_5
    if-eqz v0, :cond_6

    if-ltz v2, :cond_6

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$PeerColors;->colors:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    iget-object v3, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->buttons:[Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;

    aget-object v3, v3, v2

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController$PeerColors;->colors:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessagesController$PeerColor;

    iget v4, v4, Lorg/telegram/messenger/MessagesController$PeerColor;->id:I

    iput v4, v3, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->id:I

    iget-object v3, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->buttons:[Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;

    aget-object v3, v3, v2

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController$PeerColors;->colors:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessagesController$PeerColor;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->set(Lorg/telegram/messenger/MessagesController$PeerColor;)V

    :cond_6
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
