.class Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$DiffUtilsCallback;
.super Landroidx/recyclerview/widget/DiffUtil$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DiffUtilsCallback"
.end annotation


# instance fields
.field newItems:Ljava/util/ArrayList;

.field oldItems:Ljava/util/ArrayList;

.field final synthetic this$0:Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils;


# direct methods
.method private constructor <init>(Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$DiffUtilsCallback;->this$0:Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils;

    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$Callback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils;Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$1;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$DiffUtilsCallback;-><init>(Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils;)V

    return-void
.end method


# virtual methods
.method public areContentsTheSame(II)Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$DiffUtilsCallback;->oldItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;

    iget-object v0, p0, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$DiffUtilsCallback;->newItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->compareContents(Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;)Z

    move-result p1

    return p1
.end method

.method public areItemsTheSame(II)Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$DiffUtilsCallback;->oldItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;

    iget-object v0, p0, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$DiffUtilsCallback;->newItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->compare(Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;)Z

    move-result p1

    return p1
.end method

.method public getNewListSize()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$DiffUtilsCallback;->newItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getOldListSize()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$DiffUtilsCallback;->oldItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public setItems(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$DiffUtilsCallback;->oldItems:Ljava/util/ArrayList;

    iput-object p2, p0, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$DiffUtilsCallback;->newItems:Ljava/util/ArrayList;

    return-void
.end method
