.class Lorg/telegram/ui/Stars/StarGiftSheet$2;
.super Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stars/StarGiftSheet;-><init>(Landroid/content/Context;IJLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stars/StarGiftSheet;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$2;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    iput-object p2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;II)V
    .locals 0

    if-nez p3, :cond_1

    iget-object p2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$2;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    const/4 p3, 0x0

    invoke-static {p2, p3}, Lorg/telegram/ui/Stars/StarGiftSheet;->access$700(Lorg/telegram/ui/Stars/StarGiftSheet;Z)V

    iget-object p2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$2;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-static {p2}, Lorg/telegram/ui/Stars/StarGiftSheet;->access$800(Lorg/telegram/ui/Stars/StarGiftSheet;)Lorg/telegram/ui/Stars/StarGiftSheet;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$2;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-static {p2}, Lorg/telegram/ui/Stars/StarGiftSheet;->access$800(Lorg/telegram/ui/Stars/StarGiftSheet;)Lorg/telegram/ui/Stars/StarGiftSheet;

    move-result-object p2

    :goto_0
    invoke-static {p2}, Lorg/telegram/ui/Stars/StarGiftSheet;->access$900(Lorg/telegram/ui/Stars/StarGiftSheet;)Lorg/telegram/ui/Stars/StarGiftSheet$ContainerView;

    move-result-object p2

    goto :goto_1

    :cond_1
    const/4 p2, 0x2

    if-ne p3, p2, :cond_3

    iget-object p2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$2;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    const/4 p3, 0x1

    invoke-static {p2, p3}, Lorg/telegram/ui/Stars/StarGiftSheet;->access$700(Lorg/telegram/ui/Stars/StarGiftSheet;Z)V

    iget-object p2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$2;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-static {p2}, Lorg/telegram/ui/Stars/StarGiftSheet;->access$1000(Lorg/telegram/ui/Stars/StarGiftSheet;)Lorg/telegram/ui/Stars/StarGiftSheet;

    move-result-object p2

    if-nez p2, :cond_2

    return-void

    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$2;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-static {p2}, Lorg/telegram/ui/Stars/StarGiftSheet;->access$1000(Lorg/telegram/ui/Stars/StarGiftSheet;)Lorg/telegram/ui/Stars/StarGiftSheet;

    move-result-object p2

    goto :goto_0

    :goto_1
    check-cast p1, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->removeFromParent(Landroid/view/View;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_3
    return-void
.end method

.method public createView(I)Landroid/view/View;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$2;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lorg/telegram/ui/Stars/StarGiftSheet;->access$700(Lorg/telegram/ui/Stars/StarGiftSheet;Z)V

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$2;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stars/StarGiftSheet;->access$800(Lorg/telegram/ui/Stars/StarGiftSheet;)Lorg/telegram/ui/Stars/StarGiftSheet;

    move-result-object p1

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$2;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stars/StarGiftSheet;->access$800(Lorg/telegram/ui/Stars/StarGiftSheet;)Lorg/telegram/ui/Stars/StarGiftSheet;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Lorg/telegram/ui/Stars/StarGiftSheet;->access$900(Lorg/telegram/ui/Stars/StarGiftSheet;)Lorg/telegram/ui/Stars/StarGiftSheet$ContainerView;

    move-result-object p1

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$2;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    if-ne p1, v2, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$2;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-static {p1, v1}, Lorg/telegram/ui/Stars/StarGiftSheet;->access$700(Lorg/telegram/ui/Stars/StarGiftSheet;Z)V

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$2;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stars/StarGiftSheet;->access$1000(Lorg/telegram/ui/Stars/StarGiftSheet;)Lorg/telegram/ui/Stars/StarGiftSheet;

    move-result-object p1

    if-nez p1, :cond_3

    return-object v0

    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$2;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stars/StarGiftSheet;->access$1000(Lorg/telegram/ui/Stars/StarGiftSheet;)Lorg/telegram/ui/Stars/StarGiftSheet;

    move-result-object p1

    goto :goto_0

    :goto_1
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->removeFromParent(Landroid/view/View;)V

    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$2;->val$context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x77

    const/4 v2, -0x1

    invoke-static {v2, v2, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    return-object v0
.end method

.method public getItemCount()I
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$2;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Stars/StarGiftSheet;->access$000(Lorg/telegram/ui/Stars/StarGiftSheet;Z)Z

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$2;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-static {v2, v1}, Lorg/telegram/ui/Stars/StarGiftSheet;->access$000(Lorg/telegram/ui/Stars/StarGiftSheet;Z)Z

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$2;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Stars/StarGiftSheet;->access$000(Lorg/telegram/ui/Stars/StarGiftSheet;Z)Z

    move-result v0

    sub-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x1

    return p1
.end method
