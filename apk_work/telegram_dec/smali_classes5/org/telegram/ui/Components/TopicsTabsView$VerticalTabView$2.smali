.class Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView$2;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final backgroundPaint:Lorg/telegram/ui/Components/AnimatedPaint;

.field private final clipPaint:Landroid/graphics/Paint;

.field final synthetic this$0:Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;

.field final synthetic val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 1

    iput-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView$2;->this$0:Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;

    iput-object p3, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView$2;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance p2, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView$2;->clipPaint:Landroid/graphics/Paint;

    new-instance v0, Lorg/telegram/ui/Components/AnimatedPaint;

    invoke-direct {v0, p0, p3}, Lorg/telegram/ui/Components/AnimatedPaint;-><init>(Landroid/view/View;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView$2;->backgroundPaint:Lorg/telegram/ui/Components/AnimatedPaint;

    new-instance p3, Landroid/graphics/PorterDuffXfermode;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p3, v0}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-static {p1}, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->access$1400(Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;)Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    iget-object v1, v0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView$2;->this$0:Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;

    invoke-static {v1}, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->access$1400(Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;)Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->isNotEmpty()F

    move-result v9

    const/4 v10, 0x0

    cmpl-float v1, v9, v10

    if-lez v1, :cond_0

    const/4 v1, 0x1

    const/4 v11, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v11, 0x0

    :goto_0
    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2, v9}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView$2;->this$0:Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;

    invoke-static {v2}, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->access$1500(Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;)F

    move-result v2

    mul-float v12, v1, v2

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v13, v2

    const v2, 0x410547ae    # 8.33f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v14, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v2, v15

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    add-float v7, v2, v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v6, v2

    add-float v2, v14, v14

    iget-object v3, v0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView$2;->this$0:Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;

    invoke-static {v3}, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->access$1400(Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;)Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getCurrentWidth()F

    move-result v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v16

    if-eqz v11, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v5, v1

    const/16 v17, 0xff

    const/16 v18, 0x1f

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v1, p1

    move v10, v6

    move/from16 v6, v17

    move/from16 v19, v7

    move/from16 v7, v18

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    goto :goto_1

    :cond_1
    move v10, v6

    move/from16 v19, v7

    :goto_1
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    if-eqz v11, :cond_2

    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    div-float v2, v16, v15

    move/from16 v3, v19

    sub-float v7, v3, v2

    const v4, 0x3faa3d71    # 1.33f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v7, v5

    sub-float v6, v10, v13

    add-float/2addr v2, v3

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v2, v4

    add-float v4, v10, v13

    invoke-virtual {v1, v7, v6, v2, v4}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-static {v1, v9}, Lorg/telegram/messenger/AndroidUtilities;->scaleRect(Landroid/graphics/RectF;F)V

    mul-float v13, v13, v9

    iget-object v2, v0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView$2;->clipPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v1, v13, v13, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :goto_2
    const/4 v1, 0x0

    goto :goto_3

    :cond_2
    move/from16 v3, v19

    goto :goto_2

    :goto_3
    cmpl-float v1, v9, v1

    if-lez v1, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v8, v12, v12, v3, v10}, Landroid/graphics/Canvas;->scale(FFFF)V

    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    div-float v16, v16, v15

    sub-float v7, v3, v16

    sub-float v6, v10, v14

    add-float v2, v3, v16

    add-float v3, v10, v14

    invoke-virtual {v1, v7, v6, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, v0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView$2;->backgroundPaint:Lorg/telegram/ui/Components/AnimatedPaint;

    iget-object v3, v0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView$2;->this$0:Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;

    invoke-static {v3}, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->access$1600(Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;)I

    move-result v3

    invoke-virtual {v2, v3, v9}, Lorg/telegram/ui/Components/AnimatedPaint;->setByKey(IF)Lorg/telegram/ui/Components/AnimatedPaint;

    move-result-object v2

    invoke-virtual {v8, v1, v14, v14, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView$2;->this$0:Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;

    invoke-static {v2}, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->access$1400(Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;)Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setBounds(Landroid/graphics/RectF;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView$2;->this$0:Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;

    invoke-static {v1}, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->access$1400(Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;)Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    move-result-object v1

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float v9, v9, v2

    float-to-int v2, v9

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setAlpha(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView$2;->this$0:Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;

    invoke-static {v1}, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->access$1400(Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;)Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    move-result-object v1

    invoke-virtual {v1, v8}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_3
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView$2;->this$0:Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;

    invoke-static {v0}, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->access$1400(Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;)Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    move-result-object v0

    if-eq v0, p1, :cond_1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

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
