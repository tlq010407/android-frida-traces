.class Lorg/telegram/messenger/NotificationCenter$DelayedPost;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/NotificationCenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DelayedPost"
.end annotation


# instance fields
.field private args:[Ljava/lang/Object;

.field private id:I


# direct methods
.method private constructor <init>(I[Ljava/lang/Object;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/telegram/messenger/NotificationCenter$DelayedPost;->id:I

    iput-object p2, p0, Lorg/telegram/messenger/NotificationCenter$DelayedPost;->args:[Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(I[Ljava/lang/Object;Lorg/telegram/messenger/NotificationCenter$1;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/NotificationCenter$DelayedPost;-><init>(I[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/messenger/NotificationCenter$DelayedPost;)I
    .locals 0

    iget p0, p0, Lorg/telegram/messenger/NotificationCenter$DelayedPost;->id:I

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/messenger/NotificationCenter$DelayedPost;)[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/telegram/messenger/NotificationCenter$DelayedPost;->args:[Ljava/lang/Object;

    return-object p0
.end method
