.class Lorg/telegram/ui/QrActivity$ThemeListViewController$4;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/QrActivity$ThemeListViewController;-><init>(Lorg/telegram/ui/QrActivity;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/Window;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/QrActivity$ThemeListViewController;

.field final synthetic val$this$0:Lorg/telegram/ui/QrActivity;

.field private yScroll:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/QrActivity$ThemeListViewController;Lorg/telegram/ui/QrActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/QrActivity$ThemeListViewController$4;->this$1:Lorg/telegram/ui/QrActivity$ThemeListViewController;

    iput-object p2, p0, Lorg/telegram/ui/QrActivity$ThemeListViewController$4;->val$this$0:Lorg/telegram/ui/QrActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lorg/telegram/ui/QrActivity$ThemeListViewController$4;->yScroll:I

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    iget p1, p0, Lorg/telegram/ui/QrActivity$ThemeListViewController$4;->yScroll:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/telegram/ui/QrActivity$ThemeListViewController$4;->yScroll:I

    iget-object p1, p0, Lorg/telegram/ui/QrActivity$ThemeListViewController$4;->this$1:Lorg/telegram/ui/QrActivity$ThemeListViewController;

    invoke-static {p1}, Lorg/telegram/ui/QrActivity$ThemeListViewController;->access$2300(Lorg/telegram/ui/QrActivity$ThemeListViewController;)Landroid/view/View;

    move-result-object p1

    iget p2, p0, Lorg/telegram/ui/QrActivity$ThemeListViewController$4;->yScroll:I

    int-to-float p2, p2

    const/high16 p3, 0x3f800000    # 1.0f

    mul-float p2, p2, p3

    const/high16 p3, 0x40c00000    # 6.0f

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p2, p3

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
