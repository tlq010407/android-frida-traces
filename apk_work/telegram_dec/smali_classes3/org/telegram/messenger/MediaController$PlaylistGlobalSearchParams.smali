.class public Lorg/telegram/messenger/MediaController$PlaylistGlobalSearchParams;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/MediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlaylistGlobalSearchParams"
.end annotation


# instance fields
.field final dialogId:J

.field public endReached:Z

.field final filter:Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;

.field public folderId:I

.field final maxDate:J

.field final minDate:J

.field public nextSearchRate:I

.field final query:Ljava/lang/String;

.field public reaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

.field public topicId:J

.field public totalCount:I


# direct methods
.method public constructor <init>(Ljava/lang/String;JJJLorg/telegram/ui/Adapters/FiltersView$MediaFilterData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p8, p0, Lorg/telegram/messenger/MediaController$PlaylistGlobalSearchParams;->filter:Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;

    iput-object p1, p0, Lorg/telegram/messenger/MediaController$PlaylistGlobalSearchParams;->query:Ljava/lang/String;

    iput-wide p2, p0, Lorg/telegram/messenger/MediaController$PlaylistGlobalSearchParams;->dialogId:J

    iput-wide p4, p0, Lorg/telegram/messenger/MediaController$PlaylistGlobalSearchParams;->minDate:J

    iput-wide p6, p0, Lorg/telegram/messenger/MediaController$PlaylistGlobalSearchParams;->maxDate:J

    return-void
.end method
