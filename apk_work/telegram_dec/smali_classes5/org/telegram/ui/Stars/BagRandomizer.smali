.class public Lorg/telegram/ui/Stars/BagRandomizer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final bag:Ljava/util/List;

.field private currentIndex:I

.field private next:Ljava/lang/Object;

.field private final random:Ljava/util/Random;

.field private final shuffledBag:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/telegram/ui/Stars/BagRandomizer;->bag:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lorg/telegram/ui/Stars/BagRandomizer;->shuffledBag:Ljava/util/List;

    const/4 p1, 0x0

    iput p1, p0, Lorg/telegram/ui/Stars/BagRandomizer;->currentIndex:I

    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stars/BagRandomizer;->random:Ljava/util/Random;

    invoke-direct {p0}, Lorg/telegram/ui/Stars/BagRandomizer;->reshuffle()V

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/BagRandomizer;->next()Ljava/lang/Object;

    return-void
.end method

.method private reshuffle()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stars/BagRandomizer;->shuffledBag:Ljava/util/List;

    iget-object v1, p0, Lorg/telegram/ui/Stars/BagRandomizer;->random:Ljava/util/Random;

    invoke-static {v0, v1}, Ljava/util/Collections;->shuffle(Ljava/util/List;Ljava/util/Random;)V

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Stars/BagRandomizer;->currentIndex:I

    return-void
.end method


# virtual methods
.method public getNext()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stars/BagRandomizer;->next:Ljava/lang/Object;

    return-object v0
.end method

.method public next()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Stars/BagRandomizer;->bag:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stars/BagRandomizer;->next:Ljava/lang/Object;

    iget v1, p0, Lorg/telegram/ui/Stars/BagRandomizer;->currentIndex:I

    iget-object v2, p0, Lorg/telegram/ui/Stars/BagRandomizer;->shuffledBag:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    invoke-direct {p0}, Lorg/telegram/ui/Stars/BagRandomizer;->reshuffle()V

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Stars/BagRandomizer;->shuffledBag:Ljava/util/List;

    iget v2, p0, Lorg/telegram/ui/Stars/BagRandomizer;->currentIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/Stars/BagRandomizer;->currentIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Stars/BagRandomizer;->next:Ljava/lang/Object;

    return-object v0
.end method
