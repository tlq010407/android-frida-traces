.class Lorg/telegram/ui/IdenticonActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/IdenticonActivity;->fixLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/IdenticonActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/IdenticonActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/IdenticonActivity$4;->this$0:Lorg/telegram/ui/IdenticonActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/IdenticonActivity$4;->this$0:Lorg/telegram/ui/IdenticonActivity;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eq v0, v2, :cond_2

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/IdenticonActivity$4;->this$0:Lorg/telegram/ui/IdenticonActivity;

    invoke-static {v0}, Lorg/telegram/ui/IdenticonActivity;->access$500(Lorg/telegram/ui/IdenticonActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/IdenticonActivity$4;->this$0:Lorg/telegram/ui/IdenticonActivity;

    invoke-static {v0}, Lorg/telegram/ui/IdenticonActivity;->access$500(Lorg/telegram/ui/IdenticonActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/IdenticonActivity$4;->this$0:Lorg/telegram/ui/IdenticonActivity;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    iget-object v4, p0, Lorg/telegram/ui/IdenticonActivity$4;->this$0:Lorg/telegram/ui/IdenticonActivity;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/IdenticonActivity$4;->this$0:Lorg/telegram/ui/IdenticonActivity;

    iget-object v5, v5, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    return v1
.end method
