.class final Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanelViewHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OverflowPanelViewHelper"
.end annotation


# instance fields
.field private final mCalculator:Landroid/view/View;

.field private final mContext:Landroid/content/Context;

.field private final mIconTextSpacing:I

.field private final mSidePadding:I

.field final synthetic this$1:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanelViewHelper;->this$1:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanelViewHelper;->mContext:Landroid/content/Context;

    iput p3, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanelViewHelper;->mIconTextSpacing:I

    const/high16 p1, 0x41900000    # 18.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanelViewHelper;->mSidePadding:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanelViewHelper;->createMenuButton(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanelViewHelper;->mCalculator:Landroid/view/View;

    return-void
.end method

.method private createMenuButton(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 7

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanelViewHelper;->this$1:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->this$0:Lorg/telegram/ui/ActionBar/FloatingToolbar;

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanelViewHelper;->mContext:Landroid/content/Context;

    iget v4, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanelViewHelper;->mIconTextSpacing:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Lorg/telegram/ui/ActionBar/FloatingToolbar;->access$2600(Lorg/telegram/ui/ActionBar/FloatingToolbar;Landroid/content/Context;Landroid/view/MenuItem;IZZ)Landroid/view/View;

    move-result-object p1

    iget v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanelViewHelper;->mSidePadding:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    return-object p1
.end method


# virtual methods
.method public calculateWidth(Landroid/view/MenuItem;)I
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanelViewHelper;->mCalculator:Landroid/view/View;

    iget v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanelViewHelper;->mIconTextSpacing:I

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanelViewHelper;->this$1:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->this$0:Lorg/telegram/ui/ActionBar/FloatingToolbar;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/FloatingToolbar;->access$2500(Lorg/telegram/ui/ActionBar/FloatingToolbar;)Ljava/lang/Runnable;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v0, p1, v1, v2}, Lorg/telegram/ui/ActionBar/FloatingToolbar;->access$3300(Landroid/view/View;Landroid/view/MenuItem;IZ)V

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanelViewHelper;->mCalculator:Landroid/view/View;

    invoke-virtual {p1, v3, v3}, Landroid/view/View;->measure(II)V

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanelViewHelper;->mCalculator:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    return p1
.end method

.method public getView(Landroid/view/MenuItem;ILandroid/view/View;)Landroid/view/View;
    .locals 2

    if-eqz p3, :cond_1

    iget v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanelViewHelper;->mIconTextSpacing:I

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanelViewHelper;->this$1:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;

    iget-object v1, v1, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->this$0:Lorg/telegram/ui/ActionBar/FloatingToolbar;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/FloatingToolbar;->access$2500(Lorg/telegram/ui/ActionBar/FloatingToolbar;)Ljava/lang/Runnable;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {p3, p1, v0, v1}, Lorg/telegram/ui/ActionBar/FloatingToolbar;->access$3300(Landroid/view/View;Landroid/view/MenuItem;IZ)V

    goto :goto_1

    :cond_1
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanelViewHelper;->createMenuButton(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object p3

    :goto_1
    invoke-virtual {p3, p2}, Landroid/view/View;->setMinimumWidth(I)V

    return-object p3
.end method
