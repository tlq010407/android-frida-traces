.class abstract Lorg/telegram/ui/CachedMediaLayout$CacheCell;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/CachedMediaLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CacheCell"
.end annotation


# instance fields
.field checkBox:Lorg/telegram/ui/Components/CheckBox2;

.field container:Landroid/widget/FrameLayout;

.field drawDivider:Z

.field sizeTextView:Landroid/widget/TextView;

.field final synthetic this$0:Lorg/telegram/ui/CachedMediaLayout;

.field type:I


# direct methods
.method public static synthetic $r8$lambda$qthHh2VyrnL2A7OeA19iQPNkBxg(Lorg/telegram/ui/CachedMediaLayout$CacheCell;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/CachedMediaLayout$CacheCell;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/CachedMediaLayout;Landroid/content/Context;)V
    .locals 8

    iput-object p1, p0, Lorg/telegram/ui/CachedMediaLayout$CacheCell;->this$0:Lorg/telegram/ui/CachedMediaLayout;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Lorg/telegram/ui/Components/CheckBox2;

    const/16 v0, 0x15

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/Components/CheckBox2;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lorg/telegram/ui/CachedMediaLayout$CacheCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    const/16 v0, 0xe

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/CheckBox2;->setDrawBackgroundAsArc(I)V

    iget-object p1, p0, Lorg/telegram/ui/CachedMediaLayout$CacheCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_checkbox:I

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_radioBackground:I

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxCheck:I

    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/ui/Components/CheckBox2;->setColor(III)V

    new-instance p1, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Lorg/telegram/ui/CachedMediaLayout$CacheCell$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/CachedMediaLayout$CacheCell$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/CachedMediaLayout$CacheCell;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/CachedMediaLayout$CacheCell;->container:Landroid/widget/FrameLayout;

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/CachedMediaLayout$CacheCell;->sizeTextView:Landroid/widget/TextView;

    const/4 p2, 0x1

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, p2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object p2, p0, Lorg/telegram/ui/CachedMediaLayout$CacheCell;->sizeTextView:Landroid/widget/TextView;

    const/4 v0, 0x5

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setGravity(I)V

    iget-object p2, p0, Lorg/telegram/ui/CachedMediaLayout$CacheCell;->sizeTextView:Landroid/widget/TextView;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    sget-boolean p2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/telegram/ui/CachedMediaLayout$CacheCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    const/high16 v5, 0x41900000    # 18.0f

    const/4 v6, 0x0

    const/16 v0, 0x18

    const/high16 v1, 0x41c00000    # 24.0f

    const/16 v2, 0x15

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v7, 0x0

    const/16 v1, 0x28

    const/high16 v2, 0x42200000    # 40.0f

    const/16 v3, 0x15

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lorg/telegram/ui/CachedMediaLayout$CacheCell;->container:Landroid/widget/FrameLayout;

    const/high16 v5, 0x42200000    # 40.0f

    const/4 v0, -0x1

    const/high16 v1, -0x40000000    # -2.0f

    const/4 v2, 0x0

    const/high16 v3, 0x42b40000    # 90.0f

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lorg/telegram/ui/CachedMediaLayout$CacheCell;->sizeTextView:Landroid/widget/TextView;

    const/4 v5, 0x0

    const/16 v0, 0x45

    const/16 v2, 0x13

    :goto_0
    const/4 v3, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/CachedMediaLayout$CacheCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v0, 0x18

    const/high16 v1, 0x41c00000    # 24.0f

    const/16 v2, 0x13

    const/high16 v3, 0x41900000    # 18.0f

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v7, 0x0

    const/16 v1, 0x28

    const/high16 v2, 0x42200000    # 40.0f

    const/16 v3, 0x13

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lorg/telegram/ui/CachedMediaLayout$CacheCell;->container:Landroid/widget/FrameLayout;

    const/high16 v5, 0x42b40000    # 90.0f

    const/4 v0, -0x1

    const/high16 v1, -0x40000000    # -2.0f

    const/4 v2, 0x0

    const/high16 v3, 0x42400000    # 48.0f

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lorg/telegram/ui/CachedMediaLayout$CacheCell;->sizeTextView:Landroid/widget/TextView;

    const/high16 v5, 0x41a80000    # 21.0f

    const/16 v0, 0x45

    const/16 v2, 0x15

    goto :goto_0

    :goto_1
    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lorg/telegram/ui/CachedMediaLayout$CacheCell;->onCheckBoxPressed()V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lorg/telegram/ui/CachedMediaLayout$CacheCell;->drawDivider:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    const/high16 v1, 0x42400000    # 48.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v5, v0

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    :goto_0
    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    const/high16 v1, 0x42b40000    # 90.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v2, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v5, v0

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public abstract onCheckBoxPressed()V
.end method
