.class Lorg/telegram/ui/ChangeUsernameActivity$1;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChangeUsernameActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChangeUsernameActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChangeUsernameActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ChangeUsernameActivity$1;->this$0:Lorg/telegram/ui/ChangeUsernameActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/ChangeUsernameActivity$1;->this$0:Lorg/telegram/ui/ChangeUsernameActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/ChangeUsernameActivity$1;->this$0:Lorg/telegram/ui/ChangeUsernameActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChangeUsernameActivity;->access$000(Lorg/telegram/ui/ChangeUsernameActivity;)V

    iget-object p1, p0, Lorg/telegram/ui/ChangeUsernameActivity$1;->this$0:Lorg/telegram/ui/ChangeUsernameActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChangeUsernameActivity;->access$100(Lorg/telegram/ui/ChangeUsernameActivity;)V

    :cond_1
    :goto_0
    return-void
.end method
