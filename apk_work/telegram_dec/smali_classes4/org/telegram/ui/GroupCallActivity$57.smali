.class Lorg/telegram/ui/GroupCallActivity$57;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/GroupCallActivity;->showMenuForCell(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/GroupCallActivity;

.field final synthetic val$buttonsLayout:Landroid/widget/LinearLayout;

.field final synthetic val$volumeLayout:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lorg/telegram/ui/GroupCallActivity;Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/GroupCallActivity$57;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iput-object p3, p0, Lorg/telegram/ui/GroupCallActivity$57;->val$buttonsLayout:Landroid/widget/LinearLayout;

    iput-object p4, p0, Lorg/telegram/ui/GroupCallActivity$57;->val$volumeLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iget-object p2, p0, Lorg/telegram/ui/GroupCallActivity$57;->val$buttonsLayout:Landroid/widget/LinearLayout;

    const/high16 v0, -0x80000000

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p2, p1, v1}, Landroid/view/View;->measure(II)V

    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$57;->val$volumeLayout:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lorg/telegram/ui/GroupCallActivity$57;->val$buttonsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/view/View;->measure(II)V

    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$57;->val$buttonsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iget-object p2, p0, Lorg/telegram/ui/GroupCallActivity$57;->val$buttonsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$57;->val$volumeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr p2, v0

    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$57;->val$buttonsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iget-object p2, p0, Lorg/telegram/ui/GroupCallActivity$57;->val$buttonsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    goto :goto_0

    :goto_1
    return-void
.end method
