.class Lorg/telegram/ui/Business/BusinessIntroActivity$9;
.super Lorg/telegram/ui/Components/ChatAttachAlert;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Business/BusinessIntroActivity;->createChatAttachView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Business/BusinessIntroActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Business/BusinessIntroActivity;Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 7

    iput-object p1, p0, Lorg/telegram/ui/Business/BusinessIntroActivity$9;->this$0:Lorg/telegram/ui/Business/BusinessIntroActivity;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/ChatAttachAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method public dismissInternal()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Business/BusinessIntroActivity$9;->this$0:Lorg/telegram/ui/Business/BusinessIntroActivity;

    invoke-static {v0}, Lorg/telegram/ui/Business/BusinessIntroActivity;->access$700(Lorg/telegram/ui/Business/BusinessIntroActivity;)Lorg/telegram/ui/Components/ChatAttachAlert;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Business/BusinessIntroActivity$9;->this$0:Lorg/telegram/ui/Business/BusinessIntroActivity;

    invoke-static {v0}, Lorg/telegram/ui/Business/BusinessIntroActivity;->access$700(Lorg/telegram/ui/Business/BusinessIntroActivity;)Lorg/telegram/ui/Components/ChatAttachAlert;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Business/BusinessIntroActivity$9;->this$0:Lorg/telegram/ui/Business/BusinessIntroActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Business/BusinessIntroActivity$9;->this$0:Lorg/telegram/ui/Business/BusinessIntroActivity;

    invoke-static {v1}, Lorg/telegram/ui/Business/BusinessIntroActivity;->access$800(Lorg/telegram/ui/Business/BusinessIntroActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->requestAdjustResize(Landroid/app/Activity;I)V

    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismissInternal()V

    return-void
.end method

.method public onDismissAnimationStart()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Business/BusinessIntroActivity$9;->this$0:Lorg/telegram/ui/Business/BusinessIntroActivity;

    invoke-static {v0}, Lorg/telegram/ui/Business/BusinessIntroActivity;->access$700(Lorg/telegram/ui/Business/BusinessIntroActivity;)Lorg/telegram/ui/Components/ChatAttachAlert;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Business/BusinessIntroActivity$9;->this$0:Lorg/telegram/ui/Business/BusinessIntroActivity;

    invoke-static {v0}, Lorg/telegram/ui/Business/BusinessIntroActivity;->access$700(Lorg/telegram/ui/Business/BusinessIntroActivity;)Lorg/telegram/ui/Components/ChatAttachAlert;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setFocusable(Z)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Business/BusinessIntroActivity$9;->this$0:Lorg/telegram/ui/Business/BusinessIntroActivity;

    invoke-static {v0}, Lorg/telegram/ui/Business/BusinessIntroActivity;->access$700(Lorg/telegram/ui/Business/BusinessIntroActivity;)Lorg/telegram/ui/Components/ChatAttachAlert;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Business/BusinessIntroActivity$9;->this$0:Lorg/telegram/ui/Business/BusinessIntroActivity;

    invoke-static {v0}, Lorg/telegram/ui/Business/BusinessIntroActivity;->access$700(Lorg/telegram/ui/Business/BusinessIntroActivity;)Lorg/telegram/ui/Components/ChatAttachAlert;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Business/BusinessIntroActivity$9;->this$0:Lorg/telegram/ui/Business/BusinessIntroActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Business/BusinessIntroActivity$9;->this$0:Lorg/telegram/ui/Business/BusinessIntroActivity;

    invoke-static {v1}, Lorg/telegram/ui/Business/BusinessIntroActivity;->access$900(Lorg/telegram/ui/Business/BusinessIntroActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->requestAdjustResize(Landroid/app/Activity;I)V

    :cond_1
    return-void
.end method
