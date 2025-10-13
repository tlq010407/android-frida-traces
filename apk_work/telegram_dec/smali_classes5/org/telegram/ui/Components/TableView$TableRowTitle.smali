.class public Lorg/telegram/ui/Components/TableView$TableRowTitle;
.super Landroid/widget/TextView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/TableView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TableRowTitle"
.end annotation


# instance fields
.field private first:Z

.field private last:Z

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private final table:Lorg/telegram/ui/Components/TableView;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/TableView;Ljava/lang/CharSequence;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/TableView$TableRowTitle;->table:Lorg/telegram/ui/Components/TableView;

    invoke-static {p1}, Lorg/telegram/ui/Components/TableView;->access$000(Lorg/telegram/ui/Components/TableView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/TableView$TableRowTitle;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const v0, 0x414a8f5c    # 12.66f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const v2, 0x411547ae    # 9.33f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {p0, v1, v3, v0, v2}, Landroid/view/View;->setPadding(IIII)V

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 p1, 0x1

    const/high16 v0, 0x41600000    # 14.0f

    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    iget-boolean v0, p0, Lorg/telegram/ui/Components/TableView$TableRowTitle;->first:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/TableView$TableRowTitle;->last:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/TableView$TableRowTitle;->table:Lorg/telegram/ui/Components/TableView;

    invoke-static {v0}, Lorg/telegram/ui/Components/TableView;->access$300(Lorg/telegram/ui/Components/TableView;)F

    move-result v2

    iget-object v0, p0, Lorg/telegram/ui/Components/TableView$TableRowTitle;->table:Lorg/telegram/ui/Components/TableView;

    invoke-static {v0}, Lorg/telegram/ui/Components/TableView;->access$300(Lorg/telegram/ui/Components/TableView;)F

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Components/TableView$TableRowTitle;->table:Lorg/telegram/ui/Components/TableView;

    invoke-static {v1}, Lorg/telegram/ui/Components/TableView;->access$300(Lorg/telegram/ui/Components/TableView;)F

    move-result v1

    add-float v4, v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Components/TableView$TableRowTitle;->table:Lorg/telegram/ui/Components/TableView;

    invoke-static {v1}, Lorg/telegram/ui/Components/TableView;->access$300(Lorg/telegram/ui/Components/TableView;)F

    move-result v1

    add-float v5, v0, v1

    iget-object v0, p0, Lorg/telegram/ui/Components/TableView$TableRowTitle;->table:Lorg/telegram/ui/Components/TableView;

    invoke-static {v0}, Lorg/telegram/ui/Components/TableView;->access$400(Lorg/telegram/ui/Components/TableView;)Landroid/graphics/Paint;

    move-result-object v6

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/TableView$TableRowTitle;->table:Lorg/telegram/ui/Components/TableView;

    invoke-static {v0}, Lorg/telegram/ui/Components/TableView;->access$300(Lorg/telegram/ui/Components/TableView;)F

    move-result v2

    iget-object v0, p0, Lorg/telegram/ui/Components/TableView$TableRowTitle;->table:Lorg/telegram/ui/Components/TableView;

    invoke-static {v0}, Lorg/telegram/ui/Components/TableView;->access$300(Lorg/telegram/ui/Components/TableView;)F

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Components/TableView$TableRowTitle;->table:Lorg/telegram/ui/Components/TableView;

    invoke-static {v1}, Lorg/telegram/ui/Components/TableView;->access$300(Lorg/telegram/ui/Components/TableView;)F

    move-result v1

    add-float v4, v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Components/TableView$TableRowTitle;->table:Lorg/telegram/ui/Components/TableView;

    invoke-static {v1}, Lorg/telegram/ui/Components/TableView;->access$300(Lorg/telegram/ui/Components/TableView;)F

    move-result v1

    add-float v5, v0, v1

    iget-object v0, p0, Lorg/telegram/ui/Components/TableView$TableRowTitle;->table:Lorg/telegram/ui/Components/TableView;

    invoke-static {v0}, Lorg/telegram/ui/Components/TableView;->access$500(Lorg/telegram/ui/Components/TableView;)Landroid/graphics/Paint;

    move-result-object v6

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_4

    :cond_1
    :goto_0
    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Components/TableView$TableRowTitle;->table:Lorg/telegram/ui/Components/TableView;

    invoke-static {v1}, Lorg/telegram/ui/Components/TableView;->access$100(Lorg/telegram/ui/Components/TableView;)[F

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/TableView$TableRowTitle;->table:Lorg/telegram/ui/Components/TableView;

    invoke-static {v2}, Lorg/telegram/ui/Components/TableView;->access$100(Lorg/telegram/ui/Components/TableView;)[F

    move-result-object v2

    iget-boolean v3, p0, Lorg/telegram/ui/Components/TableView$TableRowTitle;->first:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    move v3, v0

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    const/4 v5, 0x1

    aput v3, v2, v5

    const/4 v2, 0x0

    aput v3, v1, v2

    iget-object v1, p0, Lorg/telegram/ui/Components/TableView$TableRowTitle;->table:Lorg/telegram/ui/Components/TableView;

    invoke-static {v1}, Lorg/telegram/ui/Components/TableView;->access$100(Lorg/telegram/ui/Components/TableView;)[F

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/TableView$TableRowTitle;->table:Lorg/telegram/ui/Components/TableView;

    invoke-static {v2}, Lorg/telegram/ui/Components/TableView;->access$100(Lorg/telegram/ui/Components/TableView;)[F

    move-result-object v2

    const/4 v3, 0x3

    aput v4, v2, v3

    const/4 v2, 0x2

    aput v4, v1, v2

    iget-object v1, p0, Lorg/telegram/ui/Components/TableView$TableRowTitle;->table:Lorg/telegram/ui/Components/TableView;

    invoke-static {v1}, Lorg/telegram/ui/Components/TableView;->access$100(Lorg/telegram/ui/Components/TableView;)[F

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/TableView$TableRowTitle;->table:Lorg/telegram/ui/Components/TableView;

    invoke-static {v2}, Lorg/telegram/ui/Components/TableView;->access$100(Lorg/telegram/ui/Components/TableView;)[F

    move-result-object v2

    const/4 v3, 0x5

    aput v4, v2, v3

    const/4 v2, 0x4

    aput v4, v1, v2

    iget-object v1, p0, Lorg/telegram/ui/Components/TableView$TableRowTitle;->table:Lorg/telegram/ui/Components/TableView;

    invoke-static {v1}, Lorg/telegram/ui/Components/TableView;->access$100(Lorg/telegram/ui/Components/TableView;)[F

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/TableView$TableRowTitle;->table:Lorg/telegram/ui/Components/TableView;

    invoke-static {v2}, Lorg/telegram/ui/Components/TableView;->access$100(Lorg/telegram/ui/Components/TableView;)[F

    move-result-object v2

    iget-boolean v3, p0, Lorg/telegram/ui/Components/TableView$TableRowTitle;->last:Z

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    const/4 v3, 0x7

    aput v0, v2, v3

    const/4 v2, 0x6

    aput v0, v1, v2

    iget-object v0, p0, Lorg/telegram/ui/Components/TableView$TableRowTitle;->table:Lorg/telegram/ui/Components/TableView;

    invoke-static {v0}, Lorg/telegram/ui/Components/TableView;->access$200(Lorg/telegram/ui/Components/TableView;)Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object v1, p0, Lorg/telegram/ui/Components/TableView$TableRowTitle;->table:Lorg/telegram/ui/Components/TableView;

    invoke-static {v1}, Lorg/telegram/ui/Components/TableView;->access$300(Lorg/telegram/ui/Components/TableView;)F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/TableView$TableRowTitle;->table:Lorg/telegram/ui/Components/TableView;

    invoke-static {v2}, Lorg/telegram/ui/Components/TableView;->access$300(Lorg/telegram/ui/Components/TableView;)F

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lorg/telegram/ui/Components/TableView$TableRowTitle;->table:Lorg/telegram/ui/Components/TableView;

    invoke-static {v4}, Lorg/telegram/ui/Components/TableView;->access$300(Lorg/telegram/ui/Components/TableView;)F

    move-result v4

    add-float/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lorg/telegram/ui/Components/TableView$TableRowTitle;->table:Lorg/telegram/ui/Components/TableView;

    invoke-static {v5}, Lorg/telegram/ui/Components/TableView;->access$300(Lorg/telegram/ui/Components/TableView;)F

    move-result v5

    iget-boolean v6, p0, Lorg/telegram/ui/Components/TableView$TableRowTitle;->last:Z

    if-eqz v6, :cond_4

    const/high16 v6, -0x40800000    # -1.0f

    goto :goto_3

    :cond_4
    const/high16 v6, 0x3f800000    # 1.0f

    :goto_3
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    mul-float v5, v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, p0, Lorg/telegram/ui/Components/TableView$TableRowTitle;->table:Lorg/telegram/ui/Components/TableView;

    invoke-static {v1}, Lorg/telegram/ui/Components/TableView;->access$200(Lorg/telegram/ui/Components/TableView;)Landroid/graphics/Path;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/TableView$TableRowTitle;->table:Lorg/telegram/ui/Components/TableView;

    invoke-static {v2}, Lorg/telegram/ui/Components/TableView;->access$100(Lorg/telegram/ui/Components/TableView;)[F

    move-result-object v2

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v0, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/TableView$TableRowTitle;->table:Lorg/telegram/ui/Components/TableView;

    invoke-static {v0}, Lorg/telegram/ui/Components/TableView;->access$200(Lorg/telegram/ui/Components/TableView;)Landroid/graphics/Path;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/TableView$TableRowTitle;->table:Lorg/telegram/ui/Components/TableView;

    invoke-static {v1}, Lorg/telegram/ui/Components/TableView;->access$400(Lorg/telegram/ui/Components/TableView;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/TableView$TableRowTitle;->table:Lorg/telegram/ui/Components/TableView;

    invoke-static {v0}, Lorg/telegram/ui/Components/TableView;->access$200(Lorg/telegram/ui/Components/TableView;)Landroid/graphics/Path;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/TableView$TableRowTitle;->table:Lorg/telegram/ui/Components/TableView;

    invoke-static {v1}, Lorg/telegram/ui/Components/TableView;->access$500(Lorg/telegram/ui/Components/TableView;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_4
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setFirstLast(ZZ)V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/TableView$TableRowTitle;->first:Z

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/TableView$TableRowTitle;->last:Z

    if-eq v0, p2, :cond_1

    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/TableView$TableRowTitle;->first:Z

    iput-boolean p2, p0, Lorg/telegram/ui/Components/TableView$TableRowTitle;->last:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method
