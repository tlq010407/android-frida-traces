.class Lorg/telegram/ui/EditWidgetActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListenerExtended;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/EditWidgetActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private rect:Landroid/graphics/Rect;

.field final synthetic this$0:Lorg/telegram/ui/EditWidgetActivity;


# direct methods
.method public static synthetic $r8$lambda$PaGtWYwaIpQviWbJ40MtAlfQGDA(Lorg/telegram/ui/EditWidgetActivity$2;ILandroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/EditWidgetActivity$2;->lambda$onItemClick$0(ILandroid/content/DialogInterface;I)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/EditWidgetActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/EditWidgetActivity$2;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/EditWidgetActivity$2;->rect:Landroid/graphics/Rect;

    return-void
.end method

.method private synthetic lambda$onItemClick$0(ILandroid/content/DialogInterface;I)V
    .locals 0

    if-nez p3, :cond_0

    iget-object p2, p0, Lorg/telegram/ui/EditWidgetActivity$2;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    invoke-static {p2}, Lorg/telegram/ui/EditWidgetActivity;->access$600(Lorg/telegram/ui/EditWidgetActivity;)Ljava/util/ArrayList;

    move-result-object p2

    iget-object p3, p0, Lorg/telegram/ui/EditWidgetActivity$2;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    invoke-static {p3}, Lorg/telegram/ui/EditWidgetActivity;->access$1300(Lorg/telegram/ui/EditWidgetActivity;)I

    move-result p3

    sub-int/2addr p1, p3

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Lorg/telegram/ui/EditWidgetActivity$2;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    invoke-static {p1}, Lorg/telegram/ui/EditWidgetActivity;->access$1400(Lorg/telegram/ui/EditWidgetActivity;)V

    iget-object p1, p0, Lorg/telegram/ui/EditWidgetActivity$2;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    invoke-static {p1}, Lorg/telegram/ui/EditWidgetActivity;->access$300(Lorg/telegram/ui/EditWidgetActivity;)Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/EditWidgetActivity$2;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    invoke-static {p1}, Lorg/telegram/ui/EditWidgetActivity;->access$300(Lorg/telegram/ui/EditWidgetActivity;)Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/EditWidgetActivity$WidgetPreviewCell;->updateDialogs()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;IFF)Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lorg/telegram/ui/EditWidgetActivity$2;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    instance-of v1, p1, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    sget v1, Lorg/telegram/messenger/R$id;->object_tag:I

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iget-object v1, p0, Lorg/telegram/ui/EditWidgetActivity$2;->rect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lorg/telegram/ui/EditWidgetActivity$2;->rect:Landroid/graphics/Rect;

    float-to-int p3, p3

    float-to-int p4, p4

    invoke-virtual {p1, p3, p4}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-nez p1, :cond_1

    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object p3, p0, Lorg/telegram/ui/EditWidgetActivity$2;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-direct {p1, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget p3, Lorg/telegram/messenger/R$string;->Delete:I

    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    new-array p4, v0, [Ljava/lang/CharSequence;

    aput-object p3, p4, v2

    new-instance p3, Lorg/telegram/ui/EditWidgetActivity$2$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, p2}, Lorg/telegram/ui/EditWidgetActivity$2$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/EditWidgetActivity$2;I)V

    invoke-virtual {p1, p4, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object p2, p0, Lorg/telegram/ui/EditWidgetActivity$2;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return v0

    :cond_1
    :goto_0
    return v2
.end method

.method public onLongClickRelease()V
    .locals 0

    return-void
.end method

.method public onMove(FF)V
    .locals 0

    return-void
.end method
