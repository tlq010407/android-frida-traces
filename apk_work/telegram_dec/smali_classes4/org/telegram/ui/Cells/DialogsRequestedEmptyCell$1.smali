.class Lorg/telegram/ui/Cells/DialogsRequestedEmptyCell$1;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Cells/DialogsRequestedEmptyCell;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field paint:Landroid/graphics/Paint;

.field path:Landroid/graphics/Path;

.field final synthetic this$0:Lorg/telegram/ui/Cells/DialogsRequestedEmptyCell;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Cells/DialogsRequestedEmptyCell;Landroid/content/Context;)V
    .locals 3

    iput-object p1, p0, Lorg/telegram/ui/Cells/DialogsRequestedEmptyCell$1;->this$0:Lorg/telegram/ui/Cells/DialogsRequestedEmptyCell;

    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Cells/DialogsRequestedEmptyCell$1;->path:Landroid/graphics/Path;

    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Cells/DialogsRequestedEmptyCell$1;->paint:Landroid/graphics/Paint;

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogsRequestedEmptyCell$1;->paint:Landroid/graphics/Paint;

    const p2, 0x3faa3d71    # 1.33f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    const v0, 0x3ea8f5c3    # 0.33f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    const/high16 v2, 0x1e000000

    invoke-virtual {p1, p2, v1, v0, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogsRequestedEmptyCell$1;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogsRequestedEmptyCell$1;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogsRequestedEmptyCell$1;->path:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->rewind()V

    sget-object p1, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    const/high16 p2, 0x41400000    # 12.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    sub-int/2addr v3, p2

    int-to-float p2, v3

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p2, p0, Lorg/telegram/ui/Cells/DialogsRequestedEmptyCell$1;->path:Landroid/graphics/Path;

    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p2, p1, v1, v0, v2}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    return-void
.end method
