.class public final synthetic Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda27;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/TopicsTabsView;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$Updates;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/TopicsTabsView;Lorg/telegram/tgnet/TLRPC$Updates;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda27;->f$0:Lorg/telegram/ui/Components/TopicsTabsView;

    iput-object p2, p0, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda27;->f$1:Lorg/telegram/tgnet/TLRPC$Updates;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda27;->f$0:Lorg/telegram/ui/Components/TopicsTabsView;

    iget-object v1, p0, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda27;->f$1:Lorg/telegram/tgnet/TLRPC$Updates;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/TopicsTabsView;->$r8$lambda$6-Jz8IxcgHWMMC5NWarAGJjC28Q(Lorg/telegram/ui/Components/TopicsTabsView;Lorg/telegram/tgnet/TLRPC$Updates;)V

    return-void
.end method
