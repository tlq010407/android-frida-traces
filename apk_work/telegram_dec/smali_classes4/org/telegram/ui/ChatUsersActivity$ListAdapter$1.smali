.class Lorg/telegram/ui/ChatUsersActivity$ListAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChatUsersActivity$ListAdapter;

.field final synthetic val$checkCell:Lorg/telegram/ui/Cells/TextCheckCell2;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatUsersActivity$ListAdapter;Lorg/telegram/ui/Cells/TextCheckCell2;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/ChatUsersActivity$ListAdapter;

    iput-object p2, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter$1;->val$checkCell:Lorg/telegram/ui/Cells/TextCheckCell2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter$1;->val$checkCell:Lorg/telegram/ui/Cells/TextCheckCell2;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/TextCheckCell2;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter$1;->val$checkCell:Lorg/telegram/ui/Cells/TextCheckCell2;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Cells/TextCheckCell2;->setChecked(Z)V

    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/ChatUsersActivity$ListAdapter;

    iget-object v1, v1, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v1, v0}, Lorg/telegram/ui/ChatUsersActivity;->access$7400(Lorg/telegram/ui/ChatUsersActivity;Z)V

    return-void
.end method
