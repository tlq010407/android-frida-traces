.class Lorg/telegram/ui/Components/ChatActivityEnterView$40;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatActivityEnterView;->createBotCommandsMenuContainer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$40;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)Z
    .locals 1

    instance-of p2, p1, Lorg/telegram/ui/bots/BotCommandsMenuView$BotCommandView;

    if-eqz p2, :cond_0

    check-cast p1, Lorg/telegram/ui/bots/BotCommandsMenuView$BotCommandView;

    invoke-virtual {p1}, Lorg/telegram/ui/bots/BotCommandsMenuView$BotCommandView;->getCommand()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$40;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setFieldText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$40;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatActivityEnterView;->botCommandsMenuContainer:Lorg/telegram/ui/bots/BotCommandsMenuContainer;

    invoke-virtual {p1}, Lorg/telegram/ui/bots/BotCommandsMenuContainer;->dismiss()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
