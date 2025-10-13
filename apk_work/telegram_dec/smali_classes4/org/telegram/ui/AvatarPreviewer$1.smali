.class Lorg/telegram/ui/AvatarPreviewer$1;
.super Lorg/telegram/ui/AvatarPreviewer$Layout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/AvatarPreviewer;->show(Landroid/view/ViewGroup;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/AvatarPreviewer$Data;Lorg/telegram/ui/AvatarPreviewer$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/AvatarPreviewer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/AvatarPreviewer;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/AvatarPreviewer$Callback;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/AvatarPreviewer$1;->this$0:Lorg/telegram/ui/AvatarPreviewer;

    invoke-direct {p0, p2, p3, p4}, Lorg/telegram/ui/AvatarPreviewer$Layout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/AvatarPreviewer$Callback;)V

    return-void
.end method


# virtual methods
.method protected onHideFinish()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/AvatarPreviewer$1;->this$0:Lorg/telegram/ui/AvatarPreviewer;

    invoke-static {v0}, Lorg/telegram/ui/AvatarPreviewer;->access$200(Lorg/telegram/ui/AvatarPreviewer;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/AvatarPreviewer$1;->this$0:Lorg/telegram/ui/AvatarPreviewer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/AvatarPreviewer;->access$202(Lorg/telegram/ui/AvatarPreviewer;Z)Z

    iget-object v0, p0, Lorg/telegram/ui/AvatarPreviewer$1;->this$0:Lorg/telegram/ui/AvatarPreviewer;

    invoke-static {v0}, Lorg/telegram/ui/AvatarPreviewer;->access$300(Lorg/telegram/ui/AvatarPreviewer;)Lorg/telegram/ui/AvatarPreviewer$Layout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/AvatarPreviewer$1;->this$0:Lorg/telegram/ui/AvatarPreviewer;

    invoke-static {v0}, Lorg/telegram/ui/AvatarPreviewer;->access$400(Lorg/telegram/ui/AvatarPreviewer;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/AvatarPreviewer$1;->this$0:Lorg/telegram/ui/AvatarPreviewer;

    invoke-static {v2}, Lorg/telegram/ui/AvatarPreviewer;->access$300(Lorg/telegram/ui/AvatarPreviewer;)Lorg/telegram/ui/AvatarPreviewer$Layout;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/AvatarPreviewer$1;->this$0:Lorg/telegram/ui/AvatarPreviewer;

    invoke-static {v0}, Lorg/telegram/ui/AvatarPreviewer;->access$300(Lorg/telegram/ui/AvatarPreviewer;)Lorg/telegram/ui/AvatarPreviewer$Layout;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/AvatarPreviewer$Layout;->recycle()V

    iget-object v0, p0, Lorg/telegram/ui/AvatarPreviewer$1;->this$0:Lorg/telegram/ui/AvatarPreviewer;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lorg/telegram/ui/AvatarPreviewer;->access$302(Lorg/telegram/ui/AvatarPreviewer;Lorg/telegram/ui/AvatarPreviewer$Layout;)Lorg/telegram/ui/AvatarPreviewer$Layout;

    iget-object v0, p0, Lorg/telegram/ui/AvatarPreviewer$1;->this$0:Lorg/telegram/ui/AvatarPreviewer;

    invoke-static {v0}, Lorg/telegram/ui/AvatarPreviewer;->access$500(Lorg/telegram/ui/AvatarPreviewer;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    iget-object v0, p0, Lorg/telegram/ui/AvatarPreviewer$1;->this$0:Lorg/telegram/ui/AvatarPreviewer;

    invoke-static {v0, v2}, Lorg/telegram/ui/AvatarPreviewer;->access$502(Lorg/telegram/ui/AvatarPreviewer;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    iget-object v0, p0, Lorg/telegram/ui/AvatarPreviewer$1;->this$0:Lorg/telegram/ui/AvatarPreviewer;

    invoke-static {v0, v2}, Lorg/telegram/ui/AvatarPreviewer;->access$402(Lorg/telegram/ui/AvatarPreviewer;Landroid/view/WindowManager;)Landroid/view/WindowManager;

    :cond_1
    return-void
.end method
