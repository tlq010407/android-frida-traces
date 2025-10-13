.class public Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TabView"
.end annotation


# instance fields
.field private currentPosition:I

.field private currentTab:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$Tab;

.field private currentText:Ljava/lang/CharSequence;

.field private rect:Landroid/graphics/RectF;

.field private tabWidth:I

.field private textHeight:I

.field private textLayout:Landroid/text/StaticLayout;

.field private textOffsetX:I

.field final synthetic this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->rect:Landroid/graphics/RectF;

    return-void
.end method

.method static synthetic access$3800(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;)Landroid/graphics/RectF;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->rect:Landroid/graphics/RectF;

    return-object p0
.end method

.method static synthetic access$3900(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->tabWidth:I

    return p0
.end method

.method static synthetic access$4100(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;)Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$Tab;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->currentTab:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$Tab;

    return-object p0
.end method


# virtual methods
.method public getId()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->currentTab:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$Tab;

    iget v0, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$Tab;->id:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->currentTab:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$Tab;

    iget v3, v3, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$Tab;->id:I

    const/4 v8, 0x0

    const v9, 0x7fffffff

    if-eq v3, v9, :cond_1

    iget-object v3, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$1600(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)F

    move-result v3

    cmpl-float v3, v3, v8

    if-eqz v3, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v3, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$1600(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)F

    move-result v3

    iget v5, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->currentPosition:I

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_0

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/high16 v5, -0x40800000    # -1.0f

    :goto_0
    mul-float v3, v3, v5

    const v5, 0x3f28f5c3    # 0.66f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v3

    invoke-virtual {v7, v5, v8}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {v7, v3, v5, v6}, Landroid/graphics/Canvas;->rotate(FFF)V

    :cond_1
    iget-object v3, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$1700(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_2

    iget-object v3, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$1700(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)I

    move-result v3

    iget-object v6, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v6}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$1800(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)I

    move-result v6

    goto :goto_1

    :cond_2
    iget-object v3, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$1800(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)I

    move-result v3

    iget-object v6, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v6}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$1900(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)I

    move-result v6

    :goto_1
    iget-object v10, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->currentTab:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$Tab;

    iget v10, v10, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$Tab;->id:I

    if-ne v10, v3, :cond_3

    iget-object v10, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v10}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$2000(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)I

    move-result v10

    iget-object v11, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v11}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$2100(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)I

    move-result v11

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_chats_tabUnreadActiveBackground:I

    sget v13, Lorg/telegram/ui/ActionBar/Theme;->key_chats_tabUnreadUnactiveBackground:I

    goto :goto_2

    :cond_3
    iget-object v10, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v10}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$2100(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)I

    move-result v10

    iget-object v11, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v11}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$2000(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)I

    move-result v11

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_chats_tabUnreadUnactiveBackground:I

    sget v13, Lorg/telegram/ui/ActionBar/Theme;->key_chats_tabUnreadActiveBackground:I

    :goto_2
    iget-object v14, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v14}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$2200(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)I

    move-result v14

    const/16 v15, 0x9

    if-ne v14, v15, :cond_4

    iget-object v10, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v10}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$1400(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Landroid/text/TextPaint;

    move-result-object v10

    iget-object v11, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v11}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$2100(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)I

    move-result v11

    iget-object v14, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v14}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$2300(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v14

    invoke-static {v11, v14}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_4

    :cond_4
    iget-object v14, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v14}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$800(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Z

    move-result v14

    if-nez v14, :cond_5

    iget-object v14, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v14}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$1700(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)I

    move-result v14

    if-eq v14, v5, :cond_6

    :cond_5
    iget-object v14, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->currentTab:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$Tab;

    iget v14, v14, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$Tab;->id:I

    if-eq v14, v3, :cond_7

    if-ne v14, v6, :cond_6

    goto :goto_3

    :cond_6
    iget-object v11, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v11}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$1400(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Landroid/text/TextPaint;

    move-result-object v11

    iget-object v14, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v14}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$2300(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v14

    invoke-static {v10, v14}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v10

    invoke-virtual {v11, v10}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_4

    :cond_7
    :goto_3
    iget-object v14, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v14}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$1400(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Landroid/text/TextPaint;

    move-result-object v14

    iget-object v15, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v15}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$2300(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v15

    invoke-static {v11, v15}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v11

    iget-object v15, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v15}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$2300(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v15

    invoke-static {v10, v15}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v10

    iget-object v15, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v15}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$2400(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)F

    move-result v15

    invoke-static {v11, v10, v15}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v10

    invoke-virtual {v14, v10}, Landroid/graphics/Paint;->setColor(I)V

    :goto_4
    iget-object v10, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->currentTab:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$Tab;

    iget v10, v10, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$Tab;->counter:I

    if-lez v10, :cond_8

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    new-array v11, v1, [Ljava/lang/Object;

    aput-object v10, v11, v2

    const-string v10, "%d"

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v11}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$2500(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Landroid/text/TextPaint;

    move-result-object v11

    invoke-virtual {v11, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v11

    float-to-double v14, v11

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v11, v14

    const/high16 v14, 0x41200000    # 10.0f

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    invoke-static {v15, v11}, Ljava/lang/Math;->max(II)I

    move-result v15

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    add-int/2addr v15, v14

    goto :goto_5

    :cond_8
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v15, 0x0

    :goto_5
    iget-object v14, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->currentTab:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$Tab;

    iget v14, v14, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$Tab;->id:I

    const/high16 v16, 0x41a00000    # 20.0f

    if-eq v14, v9, :cond_a

    iget-object v14, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v14}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$2600(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Z

    move-result v14

    if-nez v14, :cond_9

    iget-object v14, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v14}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$2700(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)F

    move-result v14

    cmpl-float v14, v14, v8

    if-eqz v14, :cond_a

    :cond_9
    int-to-float v14, v15

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v17

    sub-int v15, v17, v15

    int-to-float v15, v15

    iget-object v4, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$2700(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)F

    move-result v4

    mul-float v15, v15, v4

    add-float/2addr v14, v15

    float-to-int v15, v14

    :cond_a
    iget-object v4, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->currentTab:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$Tab;

    iget v4, v4, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$Tab;->titleWidth:I

    const/high16 v14, 0x40c00000    # 6.0f

    if-eqz v15, :cond_c

    if-eqz v10, :cond_b

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_6

    :cond_b
    iget-object v5, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v5}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$2700(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)F

    move-result v5

    :goto_6
    mul-float v5, v5, v14

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v5, v15

    goto :goto_7

    :cond_c
    const/4 v5, 0x0

    :goto_7
    add-int/2addr v4, v5

    iput v4, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->tabWidth:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    iget v5, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->tabWidth:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    iget-object v5, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->currentTab:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$Tab;

    iget-object v5, v5, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$Tab;->title:Ljava/lang/CharSequence;

    iget-object v14, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->currentText:Ljava/lang/CharSequence;

    invoke-static {v5, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_d

    iget-object v5, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->currentTab:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$Tab;

    iget-object v5, v5, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$Tab;->title:Ljava/lang/CharSequence;

    iput-object v5, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->currentText:Ljava/lang/CharSequence;

    iget-object v14, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v14}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$1400(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Landroid/text/TextPaint;

    move-result-object v14

    invoke-virtual {v14}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v14

    invoke-static {v5, v14, v2}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v19

    new-instance v5, Landroid/text/StaticLayout;

    iget-object v14, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v14}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$1400(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Landroid/text/TextPaint;

    move-result-object v20

    const/high16 v14, 0x43c80000    # 400.0f

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v21

    sget-object v22, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/high16 v23, 0x3f800000    # 1.0f

    move-object/from16 v18, v5

    invoke-direct/range {v18 .. v25}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v5, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v5}, Landroid/text/Layout;->getHeight()I

    move-result v5

    iput v5, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->textHeight:I

    iget-object v5, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v5, v2}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v2

    neg-float v2, v2

    float-to-int v2, v2

    iput v2, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->textOffsetX:I

    :cond_d
    iget-object v2, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->textLayout:Landroid/text/StaticLayout;

    if-eqz v2, :cond_e

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v2, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->textOffsetX:I

    add-int/2addr v2, v4

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    iget v14, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->textHeight:I

    sub-int/2addr v5, v14

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v1

    int-to-float v1, v5

    invoke-virtual {v7, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, v7}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_e
    if-nez v10, :cond_f

    iget-object v1, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->currentTab:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$Tab;

    iget v1, v1, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$Tab;->id:I

    if-eq v1, v9, :cond_19

    iget-object v1, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$2600(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Z

    move-result v1

    if-nez v1, :cond_f

    iget-object v1, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$2700(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)F

    move-result v1

    cmpl-float v1, v1, v8

    if-eqz v1, :cond_19

    :cond_f
    iget-object v1, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$2500(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Landroid/text/TextPaint;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$2800(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)I

    move-result v2

    iget-object v5, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v5}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$2300(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v5

    invoke-static {v2, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-static {v12}, Lorg/telegram/ui/ActionBar/Theme;->hasThemeKey(I)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-static {v13}, Lorg/telegram/ui/ActionBar/Theme;->hasThemeKey(I)Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v1, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$2300(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    invoke-static {v12, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$800(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Z

    move-result v2

    if-nez v2, :cond_10

    iget-object v2, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$2900(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_11

    :cond_10
    iget-object v2, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->currentTab:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$Tab;

    iget v2, v2, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$Tab;->id:I

    if-eq v2, v3, :cond_12

    if-ne v2, v6, :cond_11

    goto :goto_8

    :cond_11
    iget-object v2, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$3000(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_9

    :cond_12
    :goto_8
    iget-object v2, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$2300(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-static {v13, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$3000(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Landroid/graphics/Paint;

    move-result-object v3

    iget-object v5, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v5}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$2400(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)F

    move-result v5

    invoke-static {v2, v1, v5}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_9

    :cond_13
    iget-object v1, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$3000(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Landroid/graphics/Paint;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$1400(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    :goto_9
    iget-object v1, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->currentTab:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$Tab;

    iget v1, v1, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$Tab;->titleWidth:I

    add-int/2addr v4, v1

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v4, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget-object v2, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->currentTab:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$Tab;

    iget v2, v2, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$Tab;->id:I

    const/high16 v3, 0x437f0000    # 255.0f

    if-eq v2, v9, :cond_15

    iget-object v2, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$2600(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Z

    move-result v2

    if-nez v2, :cond_14

    iget-object v2, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$2700(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)F

    move-result v2

    cmpl-float v2, v2, v8

    if-eqz v2, :cond_15

    :cond_14
    if-nez v10, :cond_15

    iget-object v2, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$3000(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Landroid/graphics/Paint;

    move-result-object v2

    iget-object v5, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v5}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$2700(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)F

    move-result v5

    mul-float v5, v5, v3

    float-to-int v5, v5

    :goto_a
    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_b

    :cond_15
    iget-object v2, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$3000(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Landroid/graphics/Paint;

    move-result-object v2

    const/16 v5, 0xff

    goto :goto_a

    :goto_b
    iget-object v2, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->rect:Landroid/graphics/RectF;

    int-to-float v5, v4

    int-to-float v6, v1

    add-int/2addr v4, v15

    int-to-float v4, v4

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    add-int/2addr v12, v1

    int-to-float v12, v12

    invoke-virtual {v2, v5, v6, v4, v12}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->rect:Landroid/graphics/RectF;

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->density:F

    const/high16 v5, 0x41380000    # 11.5f

    mul-float v4, v4, v5

    iget-object v5, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v5}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$3000(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual {v7, v2, v4, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    if-eqz v10, :cond_17

    iget-object v2, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->currentTab:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$Tab;

    iget v2, v2, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$Tab;->id:I

    if-eq v2, v9, :cond_16

    iget-object v2, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$2500(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Landroid/text/TextPaint;

    move-result-object v2

    iget-object v4, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$2700(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v4, v5, v4

    mul-float v4, v4, v3

    float-to-int v4, v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_16
    iget-object v2, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->rect:Landroid/graphics/RectF;

    iget v4, v2, Landroid/graphics/RectF;->left:F

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    int-to-float v5, v11

    sub-float/2addr v2, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v2, v5

    add-float/2addr v4, v2

    const/high16 v2, 0x41680000    # 14.5f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$2500(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v7, v10, v4, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_17
    iget-object v1, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->currentTab:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$Tab;

    iget v1, v1, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$Tab;->id:I

    if-eq v1, v9, :cond_19

    iget-object v1, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$2600(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Z

    move-result v1

    if-nez v1, :cond_18

    iget-object v1, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$2700(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)F

    move-result v1

    cmpl-float v1, v1, v8

    if-eqz v1, :cond_19

    :cond_18
    iget-object v1, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$3100(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Landroid/graphics/Paint;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$2500(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$3100(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Landroid/graphics/Paint;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$2700(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)F

    move-result v2

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->rect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    int-to-float v10, v1

    sub-float/2addr v2, v10

    iget-object v1, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->rect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    sub-float v3, v1, v10

    iget-object v1, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->rect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    add-float v4, v1, v10

    iget-object v1, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->rect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    add-float v5, v1, v10

    iget-object v1, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$3100(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Landroid/graphics/Paint;

    move-result-object v6

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->rect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    sub-float v2, v1, v10

    iget-object v1, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->rect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    add-float v3, v1, v10

    iget-object v1, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->rect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    add-float v4, v1, v10

    iget-object v1, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->rect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    sub-float v5, v1, v10

    iget-object v1, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$3100(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Landroid/graphics/Paint;

    move-result-object v6

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_19
    iget-object v1, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->currentTab:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$Tab;

    iget v1, v1, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$Tab;->id:I

    if-eq v1, v9, :cond_1a

    iget-object v1, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$1600(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)F

    move-result v1

    cmpl-float v1, v1, v8

    if-eqz v1, :cond_1a

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1a
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->currentTab:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$Tab;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$1800(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->currentTab:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$Tab;

    iget v0, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$Tab;->id:I

    iget-object v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$1800(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->currentTab:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$Tab;

    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$1400(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Landroid/text/TextPaint;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$Tab;->getWidth(ZLandroid/text/TextPaint;)I

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    iget v0, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->tabMarginDp:I

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr p1, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$1500(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)I

    move-result v0

    add-int/2addr p1, v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public setTab(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$Tab;I)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->currentTab:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$Tab;

    iput p2, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->currentPosition:I

    iget-object p2, p1, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$Tab;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget p1, p1, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$Tab;->alpha:F

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method
