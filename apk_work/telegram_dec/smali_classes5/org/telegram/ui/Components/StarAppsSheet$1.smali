.class Lorg/telegram/ui/Components/StarAppsSheet$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/StarAppsSheet;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/StarAppsSheet;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/StarAppsSheet;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/StarAppsSheet$1;->this$0:Lorg/telegram/ui/Components/StarAppsSheet;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/Components/StarAppsSheet$1;->this$0:Lorg/telegram/ui/Components/StarAppsSheet;

    invoke-static {p1}, Lorg/telegram/ui/Components/StarAppsSheet;->access$000(Lorg/telegram/ui/Components/StarAppsSheet;)Lorg/telegram/ui/Components/DialogsBotsAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/DialogsBotsAdapter;->checkBottom()V

    return-void
.end method
