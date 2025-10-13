.class public Lorg/telegram/ui/Storage/CacheModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Storage/CacheModel$FileInfo;
    }
.end annotation


# instance fields
.field public allDocumentsSelected:Z

.field public allMusicSelected:Z

.field public allPhotosSelected:Z

.field public allStoriesSelected:Z

.field public allVideosSelected:Z

.field public allVoiceSelected:Z

.field private final dialogIdsTmp:Ljava/util/HashSet;

.field public final documents:Ljava/util/ArrayList;

.field public documentsSelectedSize:J

.field public entities:Ljava/util/ArrayList;

.field private final entitiesByDialogId:Landroid/util/LongSparseArray;

.field public final isDialog:Z

.field public final media:Ljava/util/ArrayList;

.field public final music:Ljava/util/ArrayList;

.field public musicSelectedSize:J

.field public photosSelectedSize:J

.field public selectedDialogs:Ljava/util/HashSet;

.field public selectedFiles:Ljava/util/HashSet;

.field private selectedSize:J

.field public final stories:Ljava/util/ArrayList;

.field public storiesSelectedSize:J

.field public videosSelectedSize:J

.field public final voice:Ljava/util/ArrayList;

.field public voiceSelectedSize:J


# direct methods
.method public static synthetic $r8$lambda$5Ho1DEdqeZCt_duz_Wk_ub4AxX4(Lorg/telegram/ui/Storage/CacheModel$FileInfo;Lorg/telegram/ui/Storage/CacheModel$FileInfo;)I
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Storage/CacheModel;->lambda$sort$0(Lorg/telegram/ui/Storage/CacheModel$FileInfo;Lorg/telegram/ui/Storage/CacheModel$FileInfo;)I

    move-result p0

    return p0
.end method

.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Storage/CacheModel;->entities:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Storage/CacheModel;->entitiesByDialogId:Landroid/util/LongSparseArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Storage/CacheModel;->media:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Storage/CacheModel;->documents:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Storage/CacheModel;->music:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Storage/CacheModel;->voice:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Storage/CacheModel;->stories:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Storage/CacheModel;->dialogIdsTmp:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Storage/CacheModel;->selectedFiles:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Storage/CacheModel;->selectedDialogs:Ljava/util/HashSet;

    iput-boolean p1, p0, Lorg/telegram/ui/Storage/CacheModel;->isDialog:Z

    return-void
.end method

.method private checkAllFilesSelected(IZ)V
    .locals 5

    iget-boolean v0, p0, Lorg/telegram/ui/Storage/CacheModel;->isDialog:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x7

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-nez p2, :cond_6

    const/4 p2, 0x0

    if-nez p1, :cond_1

    iput-boolean p2, p0, Lorg/telegram/ui/Storage/CacheModel;->allPhotosSelected:Z

    goto :goto_0

    :cond_1
    if-ne p1, v4, :cond_2

    iput-boolean p2, p0, Lorg/telegram/ui/Storage/CacheModel;->allVideosSelected:Z

    goto :goto_0

    :cond_2
    if-ne p1, v3, :cond_3

    iput-boolean p2, p0, Lorg/telegram/ui/Storage/CacheModel;->allDocumentsSelected:Z

    goto :goto_0

    :cond_3
    if-ne p1, v2, :cond_4

    iput-boolean p2, p0, Lorg/telegram/ui/Storage/CacheModel;->allMusicSelected:Z

    goto :goto_0

    :cond_4
    if-ne p1, v1, :cond_5

    iput-boolean p2, p0, Lorg/telegram/ui/Storage/CacheModel;->allVoiceSelected:Z

    goto :goto_0

    :cond_5
    if-ne p1, v0, :cond_c

    iput-boolean p2, p0, Lorg/telegram/ui/Storage/CacheModel;->allStoriesSelected:Z

    goto :goto_0

    :cond_6
    if-nez p1, :cond_7

    iget-object p2, p0, Lorg/telegram/ui/Storage/CacheModel;->media:Ljava/util/ArrayList;

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Storage/CacheModel;->checkAllFilesSelectedInArray(ILjava/util/ArrayList;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/Storage/CacheModel;->allPhotosSelected:Z

    goto :goto_0

    :cond_7
    if-ne p1, v4, :cond_8

    iget-object p2, p0, Lorg/telegram/ui/Storage/CacheModel;->media:Ljava/util/ArrayList;

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Storage/CacheModel;->checkAllFilesSelectedInArray(ILjava/util/ArrayList;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/Storage/CacheModel;->allVideosSelected:Z

    goto :goto_0

    :cond_8
    if-ne p1, v3, :cond_9

    iget-object p2, p0, Lorg/telegram/ui/Storage/CacheModel;->documents:Ljava/util/ArrayList;

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Storage/CacheModel;->checkAllFilesSelectedInArray(ILjava/util/ArrayList;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/Storage/CacheModel;->allDocumentsSelected:Z

    goto :goto_0

    :cond_9
    if-ne p1, v2, :cond_a

    iget-object p2, p0, Lorg/telegram/ui/Storage/CacheModel;->music:Ljava/util/ArrayList;

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Storage/CacheModel;->checkAllFilesSelectedInArray(ILjava/util/ArrayList;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/Storage/CacheModel;->allMusicSelected:Z

    goto :goto_0

    :cond_a
    if-ne p1, v1, :cond_b

    iget-object p2, p0, Lorg/telegram/ui/Storage/CacheModel;->voice:Ljava/util/ArrayList;

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Storage/CacheModel;->checkAllFilesSelectedInArray(ILjava/util/ArrayList;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/Storage/CacheModel;->allVoiceSelected:Z

    goto :goto_0

    :cond_b
    if-ne p1, v0, :cond_c

    iget-object p2, p0, Lorg/telegram/ui/Storage/CacheModel;->stories:Ljava/util/ArrayList;

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Storage/CacheModel;->checkAllFilesSelectedInArray(ILjava/util/ArrayList;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/Storage/CacheModel;->allStoriesSelected:Z

    :cond_c
    :goto_0
    return-void
.end method

.method private checkAllFilesSelectedInArray(ILjava/util/ArrayList;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Storage/CacheModel$FileInfo;

    iget v2, v2, Lorg/telegram/ui/Storage/CacheModel$FileInfo;->type:I

    if-ne v2, p1, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Storage/CacheModel;->selectedFiles:Ljava/util/HashSet;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private checkSelectedDialogs()V
    .locals 6

    iget-boolean v0, p0, Lorg/telegram/ui/Storage/CacheModel;->isDialog:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Storage/CacheModel;->dialogIdsTmp:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Storage/CacheModel;->selectedFiles:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Storage/CacheModel$FileInfo;

    iget-wide v1, v1, Lorg/telegram/ui/Storage/CacheModel$FileInfo;->dialogId:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/Storage/CacheModel;->dialogIdsTmp:Ljava/util/HashSet;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Storage/CacheModel;->selectedDialogs:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Storage/CacheModel;->dialogIdsTmp:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    iget-object v2, p0, Lorg/telegram/ui/Storage/CacheModel;->entitiesByDialogId:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;

    if-eqz v1, :cond_3

    const/4 v2, 0x0

    :goto_2
    iget-object v3, v1, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->entitiesByType:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    iget-object v3, v1, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->entitiesByType:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/CacheControlActivity$FileEntities;

    iget-object v3, v3, Lorg/telegram/ui/CacheControlActivity$FileEntities;->files:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Storage/CacheModel$FileInfo;

    iget-object v5, p0, Lorg/telegram/ui/Storage/CacheModel;->selectedFiles:Ljava/util/HashSet;

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    iget-object v2, p0, Lorg/telegram/ui/Storage/CacheModel;->selectedDialogs:Ljava/util/HashSet;

    iget-wide v3, v1, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->dialogId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    return-void
.end method

.method private getListByType(I)Ljava/util/ArrayList;
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Storage/CacheModel;->media:Ljava/util/ArrayList;

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Storage/CacheModel;->media:Ljava/util/ArrayList;

    return-object p1

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Storage/CacheModel;->documents:Ljava/util/ArrayList;

    return-object p1

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Storage/CacheModel;->music:Ljava/util/ArrayList;

    return-object p1

    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/Storage/CacheModel;->voice:Ljava/util/ArrayList;

    return-object p1

    :cond_4
    const/4 v0, 0x7

    if-ne p1, v0, :cond_5

    iget-object p1, p0, Lorg/telegram/ui/Storage/CacheModel;->stories:Ljava/util/ArrayList;

    return-object p1

    :cond_5
    const/4 p1, 0x0

    return-object p1
.end method

.method private incSize(Lorg/telegram/ui/Storage/CacheModel$FileInfo;Z)V
    .locals 2

    iget-wide v0, p1, Lorg/telegram/ui/Storage/CacheModel$FileInfo;->size:J

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    neg-long v0, v0

    :goto_0
    iget p1, p1, Lorg/telegram/ui/Storage/CacheModel$FileInfo;->type:I

    if-nez p1, :cond_1

    iget-wide p1, p0, Lorg/telegram/ui/Storage/CacheModel;->photosSelectedSize:J

    add-long/2addr p1, v0

    iput-wide p1, p0, Lorg/telegram/ui/Storage/CacheModel;->photosSelectedSize:J

    goto :goto_1

    :cond_1
    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    iget-wide p1, p0, Lorg/telegram/ui/Storage/CacheModel;->videosSelectedSize:J

    add-long/2addr p1, v0

    iput-wide p1, p0, Lorg/telegram/ui/Storage/CacheModel;->videosSelectedSize:J

    goto :goto_1

    :cond_2
    const/4 p2, 0x2

    if-ne p1, p2, :cond_3

    iget-wide p1, p0, Lorg/telegram/ui/Storage/CacheModel;->documentsSelectedSize:J

    add-long/2addr p1, v0

    iput-wide p1, p0, Lorg/telegram/ui/Storage/CacheModel;->documentsSelectedSize:J

    goto :goto_1

    :cond_3
    const/4 p2, 0x3

    if-ne p1, p2, :cond_4

    iget-wide p1, p0, Lorg/telegram/ui/Storage/CacheModel;->musicSelectedSize:J

    add-long/2addr p1, v0

    iput-wide p1, p0, Lorg/telegram/ui/Storage/CacheModel;->musicSelectedSize:J

    goto :goto_1

    :cond_4
    const/4 p2, 0x4

    if-ne p1, p2, :cond_5

    iget-wide p1, p0, Lorg/telegram/ui/Storage/CacheModel;->voiceSelectedSize:J

    add-long/2addr p1, v0

    iput-wide p1, p0, Lorg/telegram/ui/Storage/CacheModel;->voiceSelectedSize:J

    goto :goto_1

    :cond_5
    const/4 p2, 0x7

    if-ne p1, p2, :cond_6

    iget-wide p1, p0, Lorg/telegram/ui/Storage/CacheModel;->storiesSelectedSize:J

    add-long/2addr p1, v0

    iput-wide p1, p0, Lorg/telegram/ui/Storage/CacheModel;->storiesSelectedSize:J

    :cond_6
    :goto_1
    return-void
.end method

.method private static synthetic lambda$sort$0(Lorg/telegram/ui/Storage/CacheModel$FileInfo;Lorg/telegram/ui/Storage/CacheModel$FileInfo;)I
    .locals 3

    iget-wide v0, p1, Lorg/telegram/ui/Storage/CacheModel$FileInfo;->size:J

    iget-wide p0, p0, Lorg/telegram/ui/Storage/CacheModel$FileInfo;->size:J

    cmp-long v2, v0, p0

    if-lez v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    cmp-long v2, v0, p0

    if-gez v2, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private remove(ILorg/telegram/ui/Storage/CacheModel$FileInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Storage/CacheModel;->getListByType(I)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private sort(Ljava/util/ArrayList;)V
    .locals 1

    new-instance v0, Lorg/telegram/ui/Storage/CacheModel$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/telegram/ui/Storage/CacheModel$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method


# virtual methods
.method public add(ILorg/telegram/ui/Storage/CacheModel$FileInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Storage/CacheModel;->getListByType(I)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public allFilesSelcetedByType(IZ)V
    .locals 6

    const/4 v0, 0x1

    if-nez p1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Storage/CacheModel;->media:Ljava/util/ArrayList;

    iput-boolean p2, p0, Lorg/telegram/ui/Storage/CacheModel;->allPhotosSelected:Z

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Storage/CacheModel;->media:Ljava/util/ArrayList;

    iput-boolean p2, p0, Lorg/telegram/ui/Storage/CacheModel;->allVideosSelected:Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Storage/CacheModel;->documents:Ljava/util/ArrayList;

    iput-boolean p2, p0, Lorg/telegram/ui/Storage/CacheModel;->allDocumentsSelected:Z

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    if-ne p1, v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/Storage/CacheModel;->music:Ljava/util/ArrayList;

    iput-boolean p2, p0, Lorg/telegram/ui/Storage/CacheModel;->allMusicSelected:Z

    goto :goto_0

    :cond_3
    const/4 v1, 0x4

    if-ne p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/Storage/CacheModel;->voice:Ljava/util/ArrayList;

    iput-boolean p2, p0, Lorg/telegram/ui/Storage/CacheModel;->allVoiceSelected:Z

    goto :goto_0

    :cond_4
    const/4 v1, 0x7

    if-ne p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/Storage/CacheModel;->stories:Ljava/util/ArrayList;

    iput-boolean p2, p0, Lorg/telegram/ui/Storage/CacheModel;->allStoriesSelected:Z

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_8

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_8

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Storage/CacheModel$FileInfo;

    iget v4, v4, Lorg/telegram/ui/Storage/CacheModel$FileInfo;->type:I

    if-ne v4, p1, :cond_7

    iget-object v4, p0, Lorg/telegram/ui/Storage/CacheModel;->selectedFiles:Ljava/util/HashSet;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz p2, :cond_6

    if-nez v4, :cond_7

    iget-object v4, p0, Lorg/telegram/ui/Storage/CacheModel;->selectedFiles:Ljava/util/HashSet;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Storage/CacheModel$FileInfo;

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Storage/CacheModel$FileInfo;

    invoke-direct {p0, v4, v0}, Lorg/telegram/ui/Storage/CacheModel;->incSize(Lorg/telegram/ui/Storage/CacheModel$FileInfo;Z)V

    goto :goto_2

    :cond_6
    if-eqz v4, :cond_7

    iget-object v4, p0, Lorg/telegram/ui/Storage/CacheModel;->selectedFiles:Ljava/util/HashSet;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Storage/CacheModel$FileInfo;

    invoke-direct {p0, v4, v2}, Lorg/telegram/ui/Storage/CacheModel;->incSize(Lorg/telegram/ui/Storage/CacheModel$FileInfo;Z)V

    :cond_7
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_8
    return-void
.end method

.method public clearSelection()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/ui/Storage/CacheModel;->selectedSize:J

    iget-object v0, p0, Lorg/telegram/ui/Storage/CacheModel;->selectedFiles:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Storage/CacheModel;->selectedDialogs:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    return-void
.end method

.method public getSelectedFiles()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Storage/CacheModel;->selectedFiles:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    return v0
.end method

.method public getSelectedFilesSize()J
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/telegram/ui/Storage/CacheModel;->selectedSize:J

    return-wide v0
.end method

.method public getSelectedFilesSize(I)J
    .locals 2

    .line 0
    if-nez p1, :cond_0

    iget-wide v0, p0, Lorg/telegram/ui/Storage/CacheModel;->photosSelectedSize:J

    return-wide v0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-wide v0, p0, Lorg/telegram/ui/Storage/CacheModel;->videosSelectedSize:J

    return-wide v0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    iget-wide v0, p0, Lorg/telegram/ui/Storage/CacheModel;->documentsSelectedSize:J

    return-wide v0

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    iget-wide v0, p0, Lorg/telegram/ui/Storage/CacheModel;->musicSelectedSize:J

    return-wide v0

    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    iget-wide v0, p0, Lorg/telegram/ui/Storage/CacheModel;->voiceSelectedSize:J

    return-wide v0

    :cond_4
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Storage/CacheModel;->media:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Storage/CacheModel;->documents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Storage/CacheModel;->music:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Storage/CacheModel;->isDialog:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Storage/CacheModel;->entities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSelected(J)Z
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Storage/CacheModel;->selectedDialogs:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isSelected(Lorg/telegram/ui/Storage/CacheModel$FileInfo;)Z
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Storage/CacheModel;->selectedFiles:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public onFileDeleted(Lorg/telegram/ui/Storage/CacheModel$FileInfo;)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Storage/CacheModel;->selectedFiles:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/telegram/ui/Storage/CacheModel;->selectedSize:J

    iget-wide v2, p1, Lorg/telegram/ui/Storage/CacheModel$FileInfo;->size:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lorg/telegram/ui/Storage/CacheModel;->selectedSize:J

    :cond_0
    iget v0, p1, Lorg/telegram/ui/Storage/CacheModel$FileInfo;->type:I

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/Storage/CacheModel;->remove(ILorg/telegram/ui/Storage/CacheModel$FileInfo;)V

    return-void
.end method

.method public remove(Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Storage/CacheModel;->entities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeSelectedFiles()Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;
    .locals 7

    new-instance v0, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;-><init>(J)V

    iget-object v1, p0, Lorg/telegram/ui/Storage/CacheModel;->selectedFiles:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Storage/CacheModel$FileInfo;

    iget v3, v2, Lorg/telegram/ui/Storage/CacheModel$FileInfo;->type:I

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->addFile(Lorg/telegram/ui/Storage/CacheModel$FileInfo;I)V

    iget-object v3, p0, Lorg/telegram/ui/Storage/CacheModel;->entitiesByDialogId:Landroid/util/LongSparseArray;

    iget-wide v4, v2, Lorg/telegram/ui/Storage/CacheModel$FileInfo;->dialogId:J

    invoke-virtual {v3, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v3, v2}, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->removeFile(Lorg/telegram/ui/Storage/CacheModel$FileInfo;)V

    invoke-virtual {v3}, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/telegram/ui/Storage/CacheModel;->entitiesByDialogId:Landroid/util/LongSparseArray;

    iget-wide v5, v2, Lorg/telegram/ui/Storage/CacheModel$FileInfo;->dialogId:J

    invoke-virtual {v4, v5, v6}, Landroid/util/LongSparseArray;->remove(J)V

    iget-object v4, p0, Lorg/telegram/ui/Storage/CacheModel;->entities:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    iget v3, v2, Lorg/telegram/ui/Storage/CacheModel$FileInfo;->type:I

    invoke-direct {p0, v3, v2}, Lorg/telegram/ui/Storage/CacheModel;->remove(ILorg/telegram/ui/Storage/CacheModel$FileInfo;)V

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public selectAllFiles()V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Storage/CacheModel;->media:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Storage/CacheModel;->selectedFiles:Ljava/util/HashSet;

    iget-object v3, p0, Lorg/telegram/ui/Storage/CacheModel;->media:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Storage/CacheModel$FileInfo;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lorg/telegram/ui/Storage/CacheModel;->media:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Storage/CacheModel$FileInfo;

    iget v2, v2, Lorg/telegram/ui/Storage/CacheModel$FileInfo;->type:I

    if-nez v2, :cond_0

    iget-wide v2, p0, Lorg/telegram/ui/Storage/CacheModel;->photosSelectedSize:J

    iget-object v4, p0, Lorg/telegram/ui/Storage/CacheModel;->media:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Storage/CacheModel$FileInfo;

    iget-wide v4, v4, Lorg/telegram/ui/Storage/CacheModel$FileInfo;->size:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/telegram/ui/Storage/CacheModel;->photosSelectedSize:J

    goto :goto_1

    :cond_0
    iget-wide v2, p0, Lorg/telegram/ui/Storage/CacheModel;->videosSelectedSize:J

    iget-object v4, p0, Lorg/telegram/ui/Storage/CacheModel;->media:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Storage/CacheModel$FileInfo;

    iget-wide v4, v4, Lorg/telegram/ui/Storage/CacheModel$FileInfo;->size:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/telegram/ui/Storage/CacheModel;->videosSelectedSize:J

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lorg/telegram/ui/Storage/CacheModel;->documents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Storage/CacheModel;->selectedFiles:Ljava/util/HashSet;

    iget-object v3, p0, Lorg/telegram/ui/Storage/CacheModel;->documents:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Storage/CacheModel$FileInfo;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-wide v2, p0, Lorg/telegram/ui/Storage/CacheModel;->documentsSelectedSize:J

    iget-object v4, p0, Lorg/telegram/ui/Storage/CacheModel;->documents:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Storage/CacheModel$FileInfo;

    iget-wide v4, v4, Lorg/telegram/ui/Storage/CacheModel$FileInfo;->size:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/telegram/ui/Storage/CacheModel;->documentsSelectedSize:J

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_3
    iget-object v2, p0, Lorg/telegram/ui/Storage/CacheModel;->music:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/Storage/CacheModel;->selectedFiles:Ljava/util/HashSet;

    iget-object v3, p0, Lorg/telegram/ui/Storage/CacheModel;->music:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Storage/CacheModel$FileInfo;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-wide v2, p0, Lorg/telegram/ui/Storage/CacheModel;->musicSelectedSize:J

    iget-object v4, p0, Lorg/telegram/ui/Storage/CacheModel;->music:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Storage/CacheModel$FileInfo;

    iget-wide v4, v4, Lorg/telegram/ui/Storage/CacheModel$FileInfo;->size:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/telegram/ui/Storage/CacheModel;->musicSelectedSize:J

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    :goto_4
    iget-object v1, p0, Lorg/telegram/ui/Storage/CacheModel;->voice:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/Storage/CacheModel;->selectedFiles:Ljava/util/HashSet;

    iget-object v2, p0, Lorg/telegram/ui/Storage/CacheModel;->voice:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Storage/CacheModel$FileInfo;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-wide v1, p0, Lorg/telegram/ui/Storage/CacheModel;->voiceSelectedSize:J

    iget-object v3, p0, Lorg/telegram/ui/Storage/CacheModel;->voice:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Storage/CacheModel$FileInfo;

    iget-wide v3, v3, Lorg/telegram/ui/Storage/CacheModel$FileInfo;->size:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/telegram/ui/Storage/CacheModel;->voiceSelectedSize:J

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Storage/CacheModel;->allPhotosSelected:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Storage/CacheModel;->allVideosSelected:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Storage/CacheModel;->allDocumentsSelected:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Storage/CacheModel;->allMusicSelected:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Storage/CacheModel;->allVoiceSelected:Z

    return-void
.end method

.method public setEntities(Ljava/util/ArrayList;)V
    .locals 4

    iput-object p1, p0, Lorg/telegram/ui/Storage/CacheModel;->entities:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/ui/Storage/CacheModel;->entitiesByDialogId:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;

    iget-object v1, p0, Lorg/telegram/ui/Storage/CacheModel;->entitiesByDialogId:Landroid/util/LongSparseArray;

    iget-wide v2, v0, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->dialogId:J

    invoke-virtual {v1, v2, v3, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public sortBySize()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Storage/CacheModel;->media:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lorg/telegram/ui/Storage/CacheModel;->sort(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lorg/telegram/ui/Storage/CacheModel;->documents:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lorg/telegram/ui/Storage/CacheModel;->sort(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lorg/telegram/ui/Storage/CacheModel;->music:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lorg/telegram/ui/Storage/CacheModel;->sort(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lorg/telegram/ui/Storage/CacheModel;->voice:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lorg/telegram/ui/Storage/CacheModel;->sort(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lorg/telegram/ui/Storage/CacheModel;->stories:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lorg/telegram/ui/Storage/CacheModel;->sort(Ljava/util/ArrayList;)V

    return-void
.end method

.method public toggleSelect(Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;)V
    .locals 7

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Storage/CacheModel;->selectedDialogs:Ljava/util/HashSet;

    iget-wide v1, p1, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->dialogId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    :goto_0
    iget-object v0, p1, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->entitiesByType:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    iget-object v0, p1, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->entitiesByType:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/CacheControlActivity$FileEntities;

    iget-object v0, v0, Lorg/telegram/ui/CacheControlActivity$FileEntities;->files:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Storage/CacheModel$FileInfo;

    iget-object v3, p0, Lorg/telegram/ui/Storage/CacheModel;->selectedFiles:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-wide v3, p0, Lorg/telegram/ui/Storage/CacheModel;->selectedSize:J

    iget-wide v5, v2, Lorg/telegram/ui/Storage/CacheModel$FileInfo;->size:J

    add-long/2addr v3, v5

    iput-wide v3, p0, Lorg/telegram/ui/Storage/CacheModel;->selectedSize:J

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    iget-object v0, p1, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->entitiesByType:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    iget-object v0, p1, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->entitiesByType:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/CacheControlActivity$FileEntities;

    iget-object v0, v0, Lorg/telegram/ui/CacheControlActivity$FileEntities;->files:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Storage/CacheModel$FileInfo;

    iget-object v3, p0, Lorg/telegram/ui/Storage/CacheModel;->selectedFiles:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-wide v3, p0, Lorg/telegram/ui/Storage/CacheModel;->selectedSize:J

    iget-wide v5, v2, Lorg/telegram/ui/Storage/CacheModel$FileInfo;->size:J

    sub-long/2addr v3, v5

    iput-wide v3, p0, Lorg/telegram/ui/Storage/CacheModel;->selectedSize:J

    goto :goto_3

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    invoke-direct {p0}, Lorg/telegram/ui/Storage/CacheModel;->checkSelectedDialogs()V

    return-void
.end method

.method public toggleSelect(Lorg/telegram/ui/Storage/CacheModel$FileInfo;)V
    .locals 5

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Storage/CacheModel;->selectedFiles:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Storage/CacheModel;->selectedFiles:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Storage/CacheModel;->incSize(Lorg/telegram/ui/Storage/CacheModel$FileInfo;Z)V

    iget-wide v1, p0, Lorg/telegram/ui/Storage/CacheModel;->selectedSize:J

    iget-wide v3, p1, Lorg/telegram/ui/Storage/CacheModel$FileInfo;->size:J

    sub-long/2addr v1, v3

    :goto_0
    iput-wide v1, p0, Lorg/telegram/ui/Storage/CacheModel;->selectedSize:J

    iget p1, p1, Lorg/telegram/ui/Storage/CacheModel$FileInfo;->type:I

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Storage/CacheModel;->checkAllFilesSelected(IZ)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Storage/CacheModel;->selectedFiles:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Storage/CacheModel;->incSize(Lorg/telegram/ui/Storage/CacheModel$FileInfo;Z)V

    iget-wide v1, p0, Lorg/telegram/ui/Storage/CacheModel;->selectedSize:J

    iget-wide v3, p1, Lorg/telegram/ui/Storage/CacheModel$FileInfo;->size:J

    add-long/2addr v1, v3

    goto :goto_0

    :goto_1
    invoke-direct {p0}, Lorg/telegram/ui/Storage/CacheModel;->checkSelectedDialogs()V

    return-void
.end method
