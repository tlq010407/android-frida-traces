.class Lorg/telegram/ui/Components/AlertsCreator$53;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/AlertsCreator;->createDrawOverlayGroupCallPermissionDialog(Landroid/content/Context;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$button:Lorg/telegram/ui/Components/GroupCallPipButton;


# direct methods
.method constructor <init>(Landroid/content/Context;Lorg/telegram/ui/Components/GroupCallPipButton;)V
    .locals 0

    iput-object p2, p0, Lorg/telegram/ui/Components/AlertsCreator$53;->val$button:Lorg/telegram/ui/Components/GroupCallPipButton;

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    iget-object p1, p0, Lorg/telegram/ui/Components/AlertsCreator$53;->val$button:Lorg/telegram/ui/Components/GroupCallPipButton;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    int-to-float p2, p2

    const p3, 0x3e8f5c29    # 0.28f

    mul-float p2, p2, p3

    iget-object p3, p0, Lorg/telegram/ui/Components/AlertsCreator$53;->val$button:Lorg/telegram/ui/Components/GroupCallPipButton;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    int-to-float p3, p3

    const/high16 p4, 0x40000000    # 2.0f

    div-float/2addr p3, p4

    sub-float/2addr p2, p3

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/AlertsCreator$53;->val$button:Lorg/telegram/ui/Components/GroupCallPipButton;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    int-to-float p2, p2

    const p3, 0x3f51eb85    # 0.82f

    mul-float p2, p2, p3

    iget-object p3, p0, Lorg/telegram/ui/Components/AlertsCreator$53;->val$button:Lorg/telegram/ui/Components/GroupCallPipButton;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p3, p4

    sub-float/2addr p2, p3

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method
