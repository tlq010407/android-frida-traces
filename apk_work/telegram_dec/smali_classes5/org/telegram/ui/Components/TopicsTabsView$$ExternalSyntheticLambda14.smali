.class public final synthetic Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/TopicsTabsView;

.field public final synthetic f$1:Lorg/telegram/ui/Components/ItemOptions;

.field public final synthetic f$2:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/TopicsTabsView;Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda14;->f$0:Lorg/telegram/ui/Components/TopicsTabsView;

    iput-object p2, p0, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda14;->f$1:Lorg/telegram/ui/Components/ItemOptions;

    iput-object p3, p0, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda14;->f$2:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda14;->f$0:Lorg/telegram/ui/Components/TopicsTabsView;

    iget-object v1, p0, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda14;->f$1:Lorg/telegram/ui/Components/ItemOptions;

    iget-object v2, p0, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda14;->f$2:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Components/TopicsTabsView;->$r8$lambda$F1vQ7d5UJFGIKc5GRxFh8DmjcZI(Lorg/telegram/ui/Components/TopicsTabsView;Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)V

    return-void
.end method
