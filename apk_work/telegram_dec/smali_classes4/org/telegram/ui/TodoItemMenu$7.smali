.class Lorg/telegram/ui/TodoItemMenu$7;
.super Lorg/telegram/ui/Cells/ChatMessageCell;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/TodoItemMenu;->setCell(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/Cells/ChatMessageCell;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final clipPath:Landroid/graphics/Path;

.field private final shadowPaint:Landroid/graphics/Paint;

.field final synthetic this$0:Lorg/telegram/ui/TodoItemMenu;

.field final synthetic val$finalHeight:I

.field final synthetic val$finalWidth:I

.field final synthetic val$taskId:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/TodoItemMenu;Landroid/content/Context;IZLorg/telegram/messenger/ChatMessageSharedResources;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;III)V
    .locals 6

    iput-object p1, p0, Lorg/telegram/ui/TodoItemMenu$7;->this$0:Lorg/telegram/ui/TodoItemMenu;

    iput p7, p0, Lorg/telegram/ui/TodoItemMenu$7;->val$taskId:I

    iput p8, p0, Lorg/telegram/ui/TodoItemMenu$7;->val$finalWidth:I

    iput p9, p0, Lorg/telegram/ui/TodoItemMenu$7;->val$finalHeight:I

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Cells/ChatMessageCell;-><init>(Landroid/content/Context;IZLorg/telegram/messenger/ChatMessageSharedResources;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/TodoItemMenu$7;->clipPath:Landroid/graphics/Path;

    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/TodoItemMenu$7;->shadowPaint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lorg/telegram/ui/TodoItemMenu$7;->val$taskId:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTodoIndex(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPollButtonTop(I)F

    move-result v1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPollButtonBottom(I)F

    move-result v0

    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPollButtonsLeft()F

    move-result v3

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPollButtonsRight()F

    move-result v4

    invoke-virtual {v2, v3, v1, v4, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lorg/telegram/ui/TodoItemMenu$7;->clipPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    iget-object v0, p0, Lorg/telegram/ui/TodoItemMenu$7;->clipPath:Landroid/graphics/Path;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    iget-object v0, p0, Lorg/telegram/ui/TodoItemMenu$7;->shadowPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/TodoItemMenu$7;->shadowPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3f28f5c3    # 0.66f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lorg/telegram/ui/TodoItemMenu$7;->this$0:Lorg/telegram/ui/TodoItemMenu;

    invoke-static {v5}, Lorg/telegram/ui/TodoItemMenu;->access$000(Lorg/telegram/ui/TodoItemMenu;)F

    move-result v5

    const v6, 0x3e4ccccd    # 0.2f

    mul-float v5, v5, v6

    const/high16 v6, -0x1000000

    invoke-static {v6, v5}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v0, v3, v6, v4, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lorg/telegram/ui/TodoItemMenu$7;->shadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lorg/telegram/ui/TodoItemMenu$7;->clipPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    invoke-super {p0, p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    iget p1, p0, Lorg/telegram/ui/TodoItemMenu$7;->val$finalWidth:I

    iget p2, p0, Lorg/telegram/ui/TodoItemMenu$7;->val$finalHeight:I

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public setPressed(Z)V
    .locals 0

    return-void
.end method
