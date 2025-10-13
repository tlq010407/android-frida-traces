.class Lorg/telegram/ui/Components/MessagePreviewView$Page$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/MessagePreviewView$Page;-><init>(Lorg/telegram/ui/Components/MessagePreviewView;Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/MessagePreviewView$Page;

.field final synthetic val$this$0:Lorg/telegram/ui/Components/MessagePreviewView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;Lorg/telegram/ui/Components/MessagePreviewView;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$9;->this$1:Lorg/telegram/ui/Components/MessagePreviewView$Page;

    iput-object p2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$9;->val$this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$9;->this$1:Lorg/telegram/ui/Components/MessagePreviewView$Page;

    iget v1, v0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->currentTab:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    iget-object v0, v0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->messages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    iget-object v0, v0, Lorg/telegram/messenger/MessagePreviewParams$Messages;->previewMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$9;->this$1:Lorg/telegram/ui/Components/MessagePreviewView$Page;

    iget-object v0, v0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->messages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    iget-object v0, v0, Lorg/telegram/messenger/MessagePreviewParams$Messages;->previewMessages:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p2

    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$9;->this$1:Lorg/telegram/ui/Components/MessagePreviewView$Page;

    iget-object v0, v0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->messages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    iget-object v0, v0, Lorg/telegram/messenger/MessagePreviewParams$Messages;->selectedIds:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    xor-int/2addr v0, v2

    iget-object v1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$9;->this$1:Lorg/telegram/ui/Components/MessagePreviewView$Page;

    iget-object v1, v1, Lorg/telegram/ui/Components/MessagePreviewView$Page;->messages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    iget-object v1, v1, Lorg/telegram/messenger/MessagePreviewParams$Messages;->selectedIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$9;->this$1:Lorg/telegram/ui/Components/MessagePreviewView$Page;

    iget-object v1, v1, Lorg/telegram/ui/Components/MessagePreviewView$Page;->messages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    iget-object v1, v1, Lorg/telegram/messenger/MessagePreviewParams$Messages;->selectedIds:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_2

    invoke-virtual {v1, p2}, Landroid/util/SparseBooleanArray;->delete(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1, p2, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :goto_0
    check-cast p1, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {p1, v0, v0, v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->setChecked(ZZZ)V

    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$9;->this$1:Lorg/telegram/ui/Components/MessagePreviewView$Page;

    invoke-static {p1, v2}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->access$1100(Lorg/telegram/ui/Components/MessagePreviewView$Page;Z)V

    :cond_3
    :goto_1
    return-void
.end method
