.class public final synthetic Lorg/telegram/ui/TodoItemMenu$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/TodoItemMenu;

.field public final synthetic f$1:Lorg/telegram/ui/ChatActivity;

.field public final synthetic f$2:Lorg/telegram/tgnet/TLRPC$TodoItem;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/TodoItemMenu;Lorg/telegram/ui/ChatActivity;Lorg/telegram/tgnet/TLRPC$TodoItem;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/TodoItemMenu$$ExternalSyntheticLambda9;->f$0:Lorg/telegram/ui/TodoItemMenu;

    iput-object p2, p0, Lorg/telegram/ui/TodoItemMenu$$ExternalSyntheticLambda9;->f$1:Lorg/telegram/ui/ChatActivity;

    iput-object p3, p0, Lorg/telegram/ui/TodoItemMenu$$ExternalSyntheticLambda9;->f$2:Lorg/telegram/tgnet/TLRPC$TodoItem;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/TodoItemMenu$$ExternalSyntheticLambda9;->f$0:Lorg/telegram/ui/TodoItemMenu;

    iget-object v1, p0, Lorg/telegram/ui/TodoItemMenu$$ExternalSyntheticLambda9;->f$1:Lorg/telegram/ui/ChatActivity;

    iget-object v2, p0, Lorg/telegram/ui/TodoItemMenu$$ExternalSyntheticLambda9;->f$2:Lorg/telegram/tgnet/TLRPC$TodoItem;

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/TodoItemMenu;->$r8$lambda$1UKPfrp3dsg3iG2vFP17zSbFhfE(Lorg/telegram/ui/TodoItemMenu;Lorg/telegram/ui/ChatActivity;Lorg/telegram/tgnet/TLRPC$TodoItem;)V

    return-void
.end method
