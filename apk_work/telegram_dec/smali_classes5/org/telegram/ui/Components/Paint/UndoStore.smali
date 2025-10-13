.class public Lorg/telegram/ui/Components/Paint/UndoStore;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/Paint/UndoStore$UndoStoreDelegate;
    }
.end annotation


# instance fields
.field private delegate:Lorg/telegram/ui/Components/Paint/UndoStore$UndoStoreDelegate;

.field private operations:Ljava/util/List;

.field private uuidToOperationMap:Ljava/util/Map;


# direct methods
.method public static synthetic $r8$lambda$d8iZ78NI4v8eiJkT3CVRbq0iDt8(Lorg/telegram/ui/Components/Paint/UndoStore;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/UndoStore;->lambda$notifyOfHistoryChanges$0()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/UndoStore;->uuidToOperationMap:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/UndoStore;->operations:Ljava/util/List;

    return-void
.end method

.method private synthetic lambda$notifyOfHistoryChanges$0()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/UndoStore;->delegate:Lorg/telegram/ui/Components/Paint/UndoStore$UndoStoreDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/telegram/ui/Components/Paint/UndoStore$UndoStoreDelegate;->historyChanged()V

    :cond_0
    return-void
.end method

.method private notifyOfHistoryChanges()V
    .locals 1

    new-instance v0, Lorg/telegram/ui/Components/Paint/UndoStore$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Paint/UndoStore$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/Paint/UndoStore;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public canUndo()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/UndoStore;->operations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getDelegate()Lorg/telegram/ui/Components/Paint/UndoStore$UndoStoreDelegate;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/UndoStore;->delegate:Lorg/telegram/ui/Components/Paint/UndoStore$UndoStoreDelegate;

    return-object v0
.end method

.method public registerUndo(Ljava/util/UUID;Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/UndoStore;->uuidToOperationMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/UndoStore;->operations:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/UndoStore;->notifyOfHistoryChanges()V

    return-void
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/UndoStore;->operations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/UndoStore;->uuidToOperationMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/UndoStore;->notifyOfHistoryChanges()V

    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Components/Paint/UndoStore$UndoStoreDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/UndoStore;->delegate:Lorg/telegram/ui/Components/Paint/UndoStore$UndoStoreDelegate;

    return-void
.end method

.method public undo()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/UndoStore;->operations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/UndoStore;->operations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/UndoStore;->operations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/UUID;

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/UndoStore;->uuidToOperationMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/UndoStore;->uuidToOperationMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/UndoStore;->operations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/UndoStore;->notifyOfHistoryChanges()V

    return-void
.end method

.method public unregisterUndo(Ljava/util/UUID;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/UndoStore;->uuidToOperationMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/UndoStore;->operations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/UndoStore;->notifyOfHistoryChanges()V

    return-void
.end method
