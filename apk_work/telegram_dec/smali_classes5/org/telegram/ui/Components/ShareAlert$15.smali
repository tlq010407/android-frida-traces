.class Lorg/telegram/ui/Components/ShareAlert$15;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ShareAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ChatActivity;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZZLjava/lang/Integer;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ShareAlert;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ShareAlert;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$15;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    if-eqz p3, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$15;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert;->access$6900(Lorg/telegram/ui/Components/ShareAlert;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$15;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert;->access$2600(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result p2

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/ShareAlert;->access$2502(Lorg/telegram/ui/Components/ShareAlert;I)I

    :cond_0
    return-void
.end method
