.class Lorg/telegram/messenger/NotificationsController$DialogKey;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/NotificationsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DialogKey"
.end annotation


# instance fields
.field final dialogId:J

.field final story:Z

.field final topicId:J


# direct methods
.method private constructor <init>(JJZ)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/telegram/messenger/NotificationsController$DialogKey;->dialogId:J

    iput-wide p3, p0, Lorg/telegram/messenger/NotificationsController$DialogKey;->topicId:J

    iput-boolean p5, p0, Lorg/telegram/messenger/NotificationsController$DialogKey;->story:Z

    return-void
.end method

.method synthetic constructor <init>(JJZLorg/telegram/messenger/NotificationsController$1;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/messenger/NotificationsController$DialogKey;-><init>(JJZ)V

    return-void
.end method
