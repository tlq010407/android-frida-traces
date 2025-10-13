.class public Lorg/telegram/messenger/pip/PipSource$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/pip/PipSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final activity:Landroid/app/Activity;

.field private contentView:Landroid/view/View;

.field private cornerRadius:I

.field private final delegate:Lorg/telegram/messenger/pip/source/IPipSourceDelegate;

.field private height:I

.field private needMediaSession:Z

.field private placeholderView:Landroid/view/View;

.field private player:Lcom/google/android/exoplayer2/Player;

.field private priority:I

.field private tagPrefix:Ljava/lang/String;

.field private width:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lorg/telegram/messenger/pip/source/IPipSourceDelegate;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/pip/PipSource$Builder;->priority:I

    iput-boolean v0, p0, Lorg/telegram/messenger/pip/PipSource$Builder;->needMediaSession:Z

    iput-object p1, p0, Lorg/telegram/messenger/pip/PipSource$Builder;->activity:Landroid/app/Activity;

    iput-object p2, p0, Lorg/telegram/messenger/pip/PipSource$Builder;->delegate:Lorg/telegram/messenger/pip/source/IPipSourceDelegate;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/messenger/pip/PipSource$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/telegram/messenger/pip/PipSource$Builder;->tagPrefix:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/messenger/pip/PipSource$Builder;)Lorg/telegram/messenger/pip/source/IPipSourceDelegate;
    .locals 0

    iget-object p0, p0, Lorg/telegram/messenger/pip/PipSource$Builder;->delegate:Lorg/telegram/messenger/pip/source/IPipSourceDelegate;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/telegram/messenger/pip/PipSource$Builder;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lorg/telegram/messenger/pip/PipSource$Builder;->contentView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/messenger/pip/PipSource$Builder;)Lorg/telegram/messenger/pip/activity/IPipActivityActionListener;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/messenger/pip/PipSource$Builder;)I
    .locals 0

    iget p0, p0, Lorg/telegram/messenger/pip/PipSource$Builder;->priority:I

    return p0
.end method

.method static synthetic access$400(Lorg/telegram/messenger/pip/PipSource$Builder;)I
    .locals 0

    iget p0, p0, Lorg/telegram/messenger/pip/PipSource$Builder;->cornerRadius:I

    return p0
.end method

.method static synthetic access$500(Lorg/telegram/messenger/pip/PipSource$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/messenger/pip/PipSource$Builder;->needMediaSession:Z

    return p0
.end method

.method static synthetic access$600(Lorg/telegram/messenger/pip/PipSource$Builder;)I
    .locals 0

    iget p0, p0, Lorg/telegram/messenger/pip/PipSource$Builder;->width:I

    return p0
.end method

.method static synthetic access$700(Lorg/telegram/messenger/pip/PipSource$Builder;)I
    .locals 0

    iget p0, p0, Lorg/telegram/messenger/pip/PipSource$Builder;->height:I

    return p0
.end method

.method static synthetic access$800(Lorg/telegram/messenger/pip/PipSource$Builder;)Lcom/google/android/exoplayer2/Player;
    .locals 0

    iget-object p0, p0, Lorg/telegram/messenger/pip/PipSource$Builder;->player:Lcom/google/android/exoplayer2/Player;

    return-object p0
.end method

.method static synthetic access$900(Lorg/telegram/messenger/pip/PipSource$Builder;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lorg/telegram/messenger/pip/PipSource$Builder;->placeholderView:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public build()Lorg/telegram/messenger/pip/PipSource;
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/pip/PipSource$Builder;->activity:Landroid/app/Activity;

    instance-of v1, v0, Lorg/telegram/messenger/pip/activity/IPipActivity;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lorg/telegram/messenger/pip/activity/IPipActivity;

    invoke-interface {v0}, Lorg/telegram/messenger/pip/activity/IPipActivity;->getPipController()Lorg/telegram/messenger/pip/PipActivityController;

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/pip/PipSource;

    invoke-direct {v1, v0, p0, v2}, Lorg/telegram/messenger/pip/PipSource;-><init>(Lorg/telegram/messenger/pip/PipActivityController;Lorg/telegram/messenger/pip/PipSource$Builder;Lorg/telegram/messenger/pip/PipSource$1;)V

    return-object v1

    :cond_0
    return-object v2
.end method

.method public setContentRatio(II)Lorg/telegram/messenger/pip/PipSource$Builder;
    .locals 0

    iput p1, p0, Lorg/telegram/messenger/pip/PipSource$Builder;->width:I

    iput p2, p0, Lorg/telegram/messenger/pip/PipSource$Builder;->height:I

    return-object p0
.end method

.method public setContentView(Landroid/view/View;)Lorg/telegram/messenger/pip/PipSource$Builder;
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/pip/PipSource$Builder;->contentView:Landroid/view/View;

    return-object p0
.end method

.method public setCornerRadius(I)Lorg/telegram/messenger/pip/PipSource$Builder;
    .locals 0

    iput p1, p0, Lorg/telegram/messenger/pip/PipSource$Builder;->cornerRadius:I

    return-object p0
.end method

.method public setNeedMediaSession(Z)Lorg/telegram/messenger/pip/PipSource$Builder;
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/messenger/pip/PipSource$Builder;->needMediaSession:Z

    return-object p0
.end method

.method public setPlaceholderView(Landroid/view/View;)Lorg/telegram/messenger/pip/PipSource$Builder;
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/pip/PipSource$Builder;->placeholderView:Landroid/view/View;

    return-object p0
.end method

.method public setPlayer(Lcom/google/android/exoplayer2/Player;)Lorg/telegram/messenger/pip/PipSource$Builder;
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/pip/PipSource$Builder;->player:Lcom/google/android/exoplayer2/Player;

    return-object p0
.end method

.method public setPriority(I)Lorg/telegram/messenger/pip/PipSource$Builder;
    .locals 0

    iput p1, p0, Lorg/telegram/messenger/pip/PipSource$Builder;->priority:I

    return-object p0
.end method

.method public setTagPrefix(Ljava/lang/String;)Lorg/telegram/messenger/pip/PipSource$Builder;
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/pip/PipSource$Builder;->tagPrefix:Ljava/lang/String;

    return-object p0
.end method
