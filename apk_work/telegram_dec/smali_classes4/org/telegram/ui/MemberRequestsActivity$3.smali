.class Lorg/telegram/ui/MemberRequestsActivity$3;
.super Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/MemberRequestsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/MemberRequestsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/MemberRequestsActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/MemberRequestsActivity$3;->this$0:Lorg/telegram/ui/MemberRequestsActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSearchCollapse()V
    .locals 2

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;->onSearchCollapse()V

    iget-object v0, p0, Lorg/telegram/ui/MemberRequestsActivity$3;->this$0:Lorg/telegram/ui/MemberRequestsActivity;

    invoke-static {v0}, Lorg/telegram/ui/MemberRequestsActivity;->access$100(Lorg/telegram/ui/MemberRequestsActivity;)Lorg/telegram/ui/Delegates/MemberRequestsDelegate;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->setSearchExpanded(Z)V

    iget-object v0, p0, Lorg/telegram/ui/MemberRequestsActivity$3;->this$0:Lorg/telegram/ui/MemberRequestsActivity;

    invoke-static {v0}, Lorg/telegram/ui/MemberRequestsActivity;->access$100(Lorg/telegram/ui/MemberRequestsActivity;)Lorg/telegram/ui/Delegates/MemberRequestsDelegate;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->setQuery(Ljava/lang/String;)V

    return-void
.end method

.method public onSearchExpand()V
    .locals 2

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;->onSearchExpand()V

    iget-object v0, p0, Lorg/telegram/ui/MemberRequestsActivity$3;->this$0:Lorg/telegram/ui/MemberRequestsActivity;

    invoke-static {v0}, Lorg/telegram/ui/MemberRequestsActivity;->access$100(Lorg/telegram/ui/MemberRequestsActivity;)Lorg/telegram/ui/Delegates/MemberRequestsDelegate;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->setSearchExpanded(Z)V

    return-void
.end method

.method public onTextChanged(Landroid/widget/EditText;)V
    .locals 1

    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;->onTextChanged(Landroid/widget/EditText;)V

    iget-object v0, p0, Lorg/telegram/ui/MemberRequestsActivity$3;->this$0:Lorg/telegram/ui/MemberRequestsActivity;

    invoke-static {v0}, Lorg/telegram/ui/MemberRequestsActivity;->access$100(Lorg/telegram/ui/MemberRequestsActivity;)Lorg/telegram/ui/Delegates/MemberRequestsDelegate;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->setQuery(Ljava/lang/String;)V

    return-void
.end method
