.class public Lorg/telegram/ui/Stories/StoriesUtilities$EnsureStoryFileLoadedObject;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stories/StoriesUtilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EnsureStoryFileLoadedObject"
.end annotation


# instance fields
.field private cancelled:Z

.field dialogId:J

.field imageReceiver:Lorg/telegram/messenger/ImageReceiver;

.field public runnable:Ljava/lang/Runnable;

.field storiesController:Lorg/telegram/ui/Stories/StoriesController;


# direct methods
.method private constructor <init>(Lorg/telegram/ui/Stories/StoriesController;J)V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesUtilities$EnsureStoryFileLoadedObject;->cancelled:Z

    iput-wide p2, p0, Lorg/telegram/ui/Stories/StoriesUtilities$EnsureStoryFileLoadedObject;->dialogId:J

    iput-object p1, p0, Lorg/telegram/ui/Stories/StoriesUtilities$EnsureStoryFileLoadedObject;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/Stories/StoriesController;JLorg/telegram/ui/Stories/StoriesUtilities$1;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/StoriesUtilities$EnsureStoryFileLoadedObject;-><init>(Lorg/telegram/ui/Stories/StoriesController;J)V

    return-void
.end method

.method static synthetic access$400(Lorg/telegram/ui/Stories/StoriesUtilities$EnsureStoryFileLoadedObject;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Stories/StoriesUtilities$EnsureStoryFileLoadedObject;->cancelled:Z

    return p0
.end method


# virtual methods
.method public cancel()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesUtilities$EnsureStoryFileLoadedObject;->cancelled:Z

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesUtilities$EnsureStoryFileLoadedObject;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    iget-wide v1, p0, Lorg/telegram/ui/Stories/StoriesUtilities$EnsureStoryFileLoadedObject;->dialogId:J

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Stories/StoriesController;->setLoading(JZ)V

    return-void
.end method
