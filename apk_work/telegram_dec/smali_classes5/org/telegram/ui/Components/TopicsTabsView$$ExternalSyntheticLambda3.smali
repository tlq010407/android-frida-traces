.class public final synthetic Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/Utilities$Callback2;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/TopicsTabsView;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/TopicsTabsView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda3;->f$0:Lorg/telegram/ui/Components/TopicsTabsView;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda3;->f$0:Lorg/telegram/ui/Components/TopicsTabsView;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Ljava/util/ArrayList;

    invoke-static {v0, p1, p2}, Lorg/telegram/ui/Components/TopicsTabsView;->$r8$lambda$MOPPixybuDQGVrPO-g49K6d9P_g(Lorg/telegram/ui/Components/TopicsTabsView;ILjava/util/ArrayList;)V

    return-void
.end method
