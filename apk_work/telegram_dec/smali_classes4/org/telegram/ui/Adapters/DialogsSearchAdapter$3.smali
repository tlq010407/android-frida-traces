.class Lorg/telegram/ui/Adapters/DialogsSearchAdapter$3;
.super Lorg/telegram/ui/Cells/DialogCell;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Lorg/telegram/ui/DialogsActivity;Landroid/content/Context;ZZ)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$3;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    invoke-direct {p0, p2, p3, p4, p5}, Lorg/telegram/ui/Cells/DialogCell;-><init>(Lorg/telegram/ui/DialogsActivity;Landroid/content/Context;ZZ)V

    return-void
.end method


# virtual methods
.method public isForumCell()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
