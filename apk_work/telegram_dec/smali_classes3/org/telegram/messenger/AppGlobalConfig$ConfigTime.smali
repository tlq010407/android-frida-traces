.class public Lorg/telegram/messenger/AppGlobalConfig$ConfigTime;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/AppGlobalConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfigTime"
.end annotation


# instance fields
.field private final handler:Lorg/telegram/messenger/AppGlobalConfig$ConfigLong$Internal;

.field private final timeUnit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/util/concurrent/TimeUnit;J)V
    .locals 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/telegram/messenger/AppGlobalConfig$ConfigLong$Internal;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p3, p4, v1}, Lorg/telegram/messenger/AppGlobalConfig$ConfigLong$Internal;-><init>(Ljava/lang/String;JLorg/telegram/messenger/AppGlobalConfig$1;)V

    iput-object v0, p0, Lorg/telegram/messenger/AppGlobalConfig$ConfigTime;->handler:Lorg/telegram/messenger/AppGlobalConfig$ConfigLong$Internal;

    iput-object p2, p0, Lorg/telegram/messenger/AppGlobalConfig$ConfigTime;->timeUnit:Ljava/util/concurrent/TimeUnit;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/util/concurrent/TimeUnit;JLorg/telegram/messenger/AppGlobalConfig$1;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/AppGlobalConfig$ConfigTime;-><init>(Ljava/lang/String;Ljava/util/concurrent/TimeUnit;J)V

    return-void
.end method

.method static synthetic access$2100(Lorg/telegram/messenger/AppGlobalConfig$ConfigTime;)Lorg/telegram/messenger/AppGlobalConfig$ConfigLong$Internal;
    .locals 0

    iget-object p0, p0, Lorg/telegram/messenger/AppGlobalConfig$ConfigTime;->handler:Lorg/telegram/messenger/AppGlobalConfig$ConfigLong$Internal;

    return-object p0
.end method


# virtual methods
.method public get(Ljava/util/concurrent/TimeUnit;)J
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/AppGlobalConfig$ConfigTime;->handler:Lorg/telegram/messenger/AppGlobalConfig$ConfigLong$Internal;

    invoke-static {v0}, Lorg/telegram/messenger/AppGlobalConfig$ConfigLong$Internal;->access$300(Lorg/telegram/messenger/AppGlobalConfig$ConfigLong$Internal;)J

    move-result-wide v0

    iget-object v2, p0, Lorg/telegram/messenger/AppGlobalConfig$ConfigTime;->timeUnit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method
