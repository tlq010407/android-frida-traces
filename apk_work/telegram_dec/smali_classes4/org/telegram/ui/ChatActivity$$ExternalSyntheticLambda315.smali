.class public final synthetic Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda315;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/ItemOptions;

.field public final synthetic f$1:Lorg/telegram/ui/Components/ItemOptions;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/ui/Components/ItemOptions;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda315;->f$0:Lorg/telegram/ui/Components/ItemOptions;

    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda315;->f$1:Lorg/telegram/ui/Components/ItemOptions;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda315;->f$0:Lorg/telegram/ui/Components/ItemOptions;

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda315;->f$1:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->$r8$lambda$4qB75jaPKYarY7p9zfY9EXCHhYc(Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/ui/Components/ItemOptions;)V

    return-void
.end method
