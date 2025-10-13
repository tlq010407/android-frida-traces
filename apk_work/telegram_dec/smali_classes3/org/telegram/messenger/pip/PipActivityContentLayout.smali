.class Lorg/telegram/messenger/pip/PipActivityContentLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private final activity:Landroid/app/Activity;

.field private isViewInPip:Z

.field private originalHeight:I

.field private originalWidth:I


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/telegram/messenger/pip/PipActivityContentLayout;->activity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public isViewInPip()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/pip/PipActivityContentLayout;->isViewInPip:Z

    return v0
.end method

.method protected onMeasure(II)V
    .locals 1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    iget-object v0, p0, Lorg/telegram/messenger/pip/PipActivityContentLayout;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->isInPictureInPictureMode(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    iput p1, p0, Lorg/telegram/messenger/pip/PipActivityContentLayout;->originalWidth:I

    iput p2, p0, Lorg/telegram/messenger/pip/PipActivityContentLayout;->originalHeight:I

    :cond_0
    if-eqz v0, :cond_1

    iget v0, p0, Lorg/telegram/messenger/pip/PipActivityContentLayout;->originalWidth:I

    if-ge p1, v0, :cond_1

    iget v0, p0, Lorg/telegram/messenger/pip/PipActivityContentLayout;->originalHeight:I

    if-ge p2, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/messenger/pip/PipActivityContentLayout;->isViewInPip:Z

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method
