.class Lorg/telegram/ui/Business/AwayMessagesActivity$1;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Business/AwayMessagesActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Business/AwayMessagesActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Business/AwayMessagesActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Business/AwayMessagesActivity$1;->this$0:Lorg/telegram/ui/Business/AwayMessagesActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Business/AwayMessagesActivity$1;->this$0:Lorg/telegram/ui/Business/AwayMessagesActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/Business/AwayMessagesActivity;->onBackPressed()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Business/AwayMessagesActivity$1;->this$0:Lorg/telegram/ui/Business/AwayMessagesActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Business/AwayMessagesActivity$1;->this$0:Lorg/telegram/ui/Business/AwayMessagesActivity;

    invoke-static {p1}, Lorg/telegram/ui/Business/AwayMessagesActivity;->access$000(Lorg/telegram/ui/Business/AwayMessagesActivity;)V

    :cond_1
    :goto_0
    return-void
.end method
