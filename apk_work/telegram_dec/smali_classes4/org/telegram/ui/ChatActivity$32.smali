.class Lorg/telegram/ui/ChatActivity$32;
.super Lorg/telegram/ui/Components/CounterView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$32;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/Components/CounterView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method public invalidate()V
    .locals 1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/CounterView;->isInOutAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$32;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->contentView:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    invoke-super {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
