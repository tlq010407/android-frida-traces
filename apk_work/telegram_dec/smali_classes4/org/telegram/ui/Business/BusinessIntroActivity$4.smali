.class Lorg/telegram/ui/Business/BusinessIntroActivity$4;
.super Lorg/telegram/ui/Cells/EditTextCell;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Business/BusinessIntroActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Business/BusinessIntroActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Business/BusinessIntroActivity;Landroid/content/Context;Ljava/lang/String;ZZILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 7

    iput-object p1, p0, Lorg/telegram/ui/Business/BusinessIntroActivity$4;->this$0:Lorg/telegram/ui/Business/BusinessIntroActivity;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Cells/EditTextCell;-><init>(Landroid/content/Context;Ljava/lang/String;ZZILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method protected onFocusChanged(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Business/BusinessIntroActivity$4;->this$0:Lorg/telegram/ui/Business/BusinessIntroActivity;

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalFragment;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    :cond_0
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;)V
    .locals 2

    iget-object p1, p0, Lorg/telegram/ui/Business/BusinessIntroActivity$4;->this$0:Lorg/telegram/ui/Business/BusinessIntroActivity;

    invoke-static {p1}, Lorg/telegram/ui/Business/BusinessIntroActivity;->access$000(Lorg/telegram/ui/Business/BusinessIntroActivity;)Lorg/telegram/ui/Components/ChatGreetingsView;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Business/BusinessIntroActivity$4;->this$0:Lorg/telegram/ui/Business/BusinessIntroActivity;

    invoke-static {v0}, Lorg/telegram/ui/Business/BusinessIntroActivity;->access$200(Lorg/telegram/ui/Business/BusinessIntroActivity;)Lorg/telegram/ui/Cells/EditTextCell;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/EditTextCell;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Business/BusinessIntroActivity$4;->this$0:Lorg/telegram/ui/Business/BusinessIntroActivity;

    invoke-static {v1}, Lorg/telegram/ui/Business/BusinessIntroActivity;->access$300(Lorg/telegram/ui/Business/BusinessIntroActivity;)Lorg/telegram/ui/Cells/EditTextCell;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/EditTextCell;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/ChatGreetingsView;->setPreview(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/Business/BusinessIntroActivity$4;->this$0:Lorg/telegram/ui/Business/BusinessIntroActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0, v0}, Lorg/telegram/ui/Business/BusinessIntroActivity;->access$400(Lorg/telegram/ui/Business/BusinessIntroActivity;ZZ)V

    return-void
.end method
