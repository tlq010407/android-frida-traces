.class Lorg/telegram/ui/Cells/ChatListCell$ListView$1;
.super Lorg/telegram/ui/Components/RadioButton;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Cells/ChatListCell$ListView;-><init>(Lorg/telegram/ui/Cells/ChatListCell;Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Cells/ChatListCell$ListView;

.field final synthetic val$this$0:Lorg/telegram/ui/Cells/ChatListCell;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Cells/ChatListCell$ListView;Landroid/content/Context;Lorg/telegram/ui/Cells/ChatListCell;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Cells/ChatListCell$ListView$1;->this$1:Lorg/telegram/ui/Cells/ChatListCell$ListView;

    iput-object p3, p0, Lorg/telegram/ui/Cells/ChatListCell$ListView$1;->val$this$0:Lorg/telegram/ui/Cells/ChatListCell;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/RadioButton;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public invalidate()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->invalidate()V

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatListCell$ListView$1;->this$1:Lorg/telegram/ui/Cells/ChatListCell$ListView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method
