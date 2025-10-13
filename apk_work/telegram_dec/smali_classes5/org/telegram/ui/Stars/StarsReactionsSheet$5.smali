.class Lorg/telegram/ui/Stars/StarsReactionsSheet$5;
.super Lorg/telegram/ui/ChatActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stars/StarsReactionsSheet;-><init>(Landroid/content/Context;IJLorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stars/StarsReactionsSheet;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stars/StarsReactionsSheet;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$5;->this$0:Lorg/telegram/ui/Stars/StarsReactionsSheet;

    invoke-direct {p0, p2}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public onFragmentDestroy()V
    .locals 1

    invoke-super {p0}, Lorg/telegram/ui/ChatActivity;->onFragmentDestroy()V

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$5;->this$0:Lorg/telegram/ui/Stars/StarsReactionsSheet;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    return-void
.end method
