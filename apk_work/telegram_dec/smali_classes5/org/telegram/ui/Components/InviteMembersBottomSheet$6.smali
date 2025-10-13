.class Lorg/telegram/ui/Components/InviteMembersBottomSheet$6;
.super Lorg/telegram/ui/Components/UsersAlertBase$ContainerView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/InviteMembersBottomSheet;->createContainerView(Landroid/content/Context;)Lorg/telegram/ui/Components/UsersAlertBase$ContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field animateToEmptyViewOffset:F

.field deltaOffset:F

.field emptyViewOffset:F

.field paint:Landroid/graphics/Paint;

.field final synthetic this$0:Lorg/telegram/ui/Components/InviteMembersBottomSheet;

.field private verticalPositionAutoAnimator:Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/InviteMembersBottomSheet;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$6;->this$0:Lorg/telegram/ui/Components/InviteMembersBottomSheet;

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/UsersAlertBase$ContainerView;-><init>(Lorg/telegram/ui/Components/UsersAlertBase;Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$6;->paint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$6;->this$0:Lorg/telegram/ui/Components/InviteMembersBottomSheet;

    iget v1, v0, Lorg/telegram/ui/Components/UsersAlertBase;->scrollOffsetY:I

    invoke-static {v0}, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->access$3200(Lorg/telegram/ui/Components/InviteMembersBottomSheet;)I

    move-result v0

    sub-int/2addr v1, v0

    const/high16 v0, 0x40c00000    # 6.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr v1, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$6;->this$0:Lorg/telegram/ui/Components/InviteMembersBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->access$800(Lorg/telegram/ui/Components/InviteMembersBottomSheet;)Landroid/widget/ScrollView;

    move-result-object v0

    const/high16 v2, 0x42800000    # 64.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$6;->this$0:Lorg/telegram/ui/Components/InviteMembersBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->access$1000(Lorg/telegram/ui/Components/InviteMembersBottomSheet;)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$6;->this$0:Lorg/telegram/ui/Components/InviteMembersBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->access$2400(Lorg/telegram/ui/Components/InviteMembersBottomSheet;)I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$6;->this$0:Lorg/telegram/ui/Components/InviteMembersBottomSheet;

    iget-object v1, v1, Lorg/telegram/ui/Components/UsersAlertBase;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    iput v0, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$6;->emptyViewOffset:F

    iput v0, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$6;->animateToEmptyViewOffset:F

    goto :goto_0

    :cond_0
    iget v1, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$6;->animateToEmptyViewOffset:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_1

    iput v0, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$6;->animateToEmptyViewOffset:F

    iget v1, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$6;->emptyViewOffset:F

    sub-float/2addr v0, v1

    const v1, 0x3dda740e

    mul-float v0, v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$6;->deltaOffset:F

    :cond_1
    :goto_0
    iget v0, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$6;->emptyViewOffset:F

    iget v1, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$6;->animateToEmptyViewOffset:F

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_4

    iget v2, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$6;->deltaOffset:F

    add-float/2addr v0, v2

    iput v0, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$6;->emptyViewOffset:F

    const/4 v3, 0x0

    cmpl-float v4, v2, v3

    if-lez v4, :cond_2

    cmpl-float v4, v0, v1

    if-lez v4, :cond_2

    goto :goto_1

    :cond_2
    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    :goto_1
    iput v1, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$6;->emptyViewOffset:F

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_4
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$6;->this$0:Lorg/telegram/ui/Components/InviteMembersBottomSheet;

    iget-object v1, v0, Lorg/telegram/ui/Components/UsersAlertBase;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget v0, v0, Lorg/telegram/ui/Components/UsersAlertBase;->scrollOffsetY:I

    int-to-float v0, v0

    iget v2, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$6;->emptyViewOffset:F

    add-float/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    invoke-super {p0, p1}, Lorg/telegram/ui/Components/UsersAlertBase$ContainerView;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 10

    iget-object v0, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$6;->this$0:Lorg/telegram/ui/Components/InviteMembersBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->access$800(Lorg/telegram/ui/Components/InviteMembersBottomSheet;)Landroid/widget/ScrollView;

    move-result-object v0

    if-ne p2, v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result v0

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$6;->this$0:Lorg/telegram/ui/Components/InviteMembersBottomSheet;

    invoke-static {v3}, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->access$2600(Lorg/telegram/ui/Components/InviteMembersBottomSheet;)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v2, v3

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v0, v1, v2}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$6;->this$0:Lorg/telegram/ui/Components/InviteMembersBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->access$600(Lorg/telegram/ui/Components/InviteMembersBottomSheet;)F

    move-result v1

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$6;->paint:Landroid/graphics/Paint;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    iget-object v4, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$6;->this$0:Lorg/telegram/ui/Components/InviteMembersBottomSheet;

    invoke-static {v4}, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->access$600(Lorg/telegram/ui/Components/InviteMembersBottomSheet;)F

    move-result v4

    mul-float v4, v4, v2

    float-to-int v2, v4

    invoke-static {v1, v2}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$6;->this$0:Lorg/telegram/ui/Components/InviteMembersBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->access$2600(Lorg/telegram/ui/Components/InviteMembersBottomSheet;)I

    move-result v1

    int-to-float v1, v1

    add-float v6, v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v7, v0

    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$6;->this$0:Lorg/telegram/ui/Components/InviteMembersBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->access$2600(Lorg/telegram/ui/Components/InviteMembersBottomSheet;)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    add-float v8, v0, v3

    iget-object v9, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$6;->paint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return p2

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$6;->verticalPositionAutoAnimator:Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;->ignoreNextLayout()V

    :cond_0
    return-void
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$6;->this$0:Lorg/telegram/ui/Components/InviteMembersBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->access$900(Lorg/telegram/ui/Components/InviteMembersBottomSheet;)Landroid/widget/ImageView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$6;->verticalPositionAutoAnimator:Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;->attach(Landroid/view/View;)Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$6;->verticalPositionAutoAnimator:Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;

    :cond_0
    return-void
.end method
