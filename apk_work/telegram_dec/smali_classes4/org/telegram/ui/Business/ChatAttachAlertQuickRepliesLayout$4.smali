.class Lorg/telegram/ui/Business/ChatAttachAlertQuickRepliesLayout$4;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Business/ChatAttachAlertQuickRepliesLayout;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Business/ChatAttachAlertQuickRepliesLayout;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Business/ChatAttachAlertQuickRepliesLayout;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Business/ChatAttachAlertQuickRepliesLayout$4;->this$0:Lorg/telegram/ui/Business/ChatAttachAlertQuickRepliesLayout;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/Business/ChatAttachAlertQuickRepliesLayout$4;->this$0:Lorg/telegram/ui/Business/ChatAttachAlertQuickRepliesLayout;

    invoke-static {p1}, Lorg/telegram/ui/Business/ChatAttachAlertQuickRepliesLayout;->access$1100(Lorg/telegram/ui/Business/ChatAttachAlertQuickRepliesLayout;)Lorg/telegram/ui/Components/ChatAttachAlert;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Business/ChatAttachAlertQuickRepliesLayout$4;->this$0:Lorg/telegram/ui/Business/ChatAttachAlertQuickRepliesLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0, p3}, Lorg/telegram/ui/Components/ChatAttachAlert;->updateLayout(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;ZI)V

    iget-object p1, p0, Lorg/telegram/ui/Business/ChatAttachAlertQuickRepliesLayout$4;->this$0:Lorg/telegram/ui/Business/ChatAttachAlertQuickRepliesLayout;

    invoke-static {p1}, Lorg/telegram/ui/Business/ChatAttachAlertQuickRepliesLayout;->access$1200(Lorg/telegram/ui/Business/ChatAttachAlertQuickRepliesLayout;)V

    return-void
.end method
