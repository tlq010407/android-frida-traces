.class Lorg/telegram/ui/DialogsActivity$52;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/SearchViewPager$ChatPreviewDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity;->createSearchViewPager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/DialogsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/DialogsActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$52;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-le v1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$52;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishPreviewFragment()V

    :cond_0
    return-void
.end method

.method public move(F)V
    .locals 2

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-le v1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$52;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->movePreviewFragment(F)V

    :cond_0
    return-void
.end method

.method public startChatPreview(Lorg/telegram/ui/Components/RecyclerListView;Lorg/telegram/ui/Cells/DialogCell;)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$52;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/DialogsActivity;->showChatPreview(Lorg/telegram/ui/Cells/DialogCell;)Z

    return-void
.end method
