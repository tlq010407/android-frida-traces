.class Lorg/telegram/ui/PassportActivity$4;
.super Landroid/widget/ScrollView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PassportActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PassportActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PassportActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/PassportActivity$4;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-direct {p0, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity$4;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lorg/telegram/ui/PassportActivity;->access$5702(Lorg/telegram/ui/PassportActivity;I)I

    invoke-super {p0, p1, p2}, Landroid/widget/ScrollView;->onMeasure(II)V

    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity$4;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {v0}, Lorg/telegram/ui/PassportActivity;->access$4700(Lorg/telegram/ui/PassportActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity$4;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {v0}, Lorg/telegram/ui/PassportActivity;->access$4700(Lorg/telegram/ui/PassportActivity;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity$4;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {v0}, Lorg/telegram/ui/PassportActivity;->access$4700(Lorg/telegram/ui/PassportActivity;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    const/high16 v1, 0x42200000    # 40.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ScrollView;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result p1

    return p1
.end method
