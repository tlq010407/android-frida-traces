.class Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;->onExitSelectionMode(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;

.field final synthetic val$cell:Lorg/telegram/ui/Cells/ChatMessageCell;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper$1;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;

    iput-object p2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper$1;->val$cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper$1;->val$cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->setSelectedBackgroundProgress(F)V

    return-void
.end method
