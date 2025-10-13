.class public Lorg/telegram/messenger/AppGlobalConfig$ConfigLong;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/AppGlobalConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfigLong"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/AppGlobalConfig$ConfigLong$Internal;
    }
.end annotation


# instance fields
.field private final handler:Lorg/telegram/messenger/AppGlobalConfig$ConfigLong$Internal;


# direct methods
.method private constructor <init>(Ljava/lang/String;J)V
    .locals 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/telegram/messenger/AppGlobalConfig$ConfigLong$Internal;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/telegram/messenger/AppGlobalConfig$ConfigLong$Internal;-><init>(Ljava/lang/String;JLorg/telegram/messenger/AppGlobalConfig$1;)V

    iput-object v0, p0, Lorg/telegram/messenger/AppGlobalConfig$ConfigLong;->handler:Lorg/telegram/messenger/AppGlobalConfig$ConfigLong$Internal;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;JLorg/telegram/messenger/AppGlobalConfig$1;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/AppGlobalConfig$ConfigLong;-><init>(Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$1300(Lorg/telegram/messenger/AppGlobalConfig$ConfigLong;)Lorg/telegram/messenger/AppGlobalConfig$ConfigLong$Internal;
    .locals 0

    iget-object p0, p0, Lorg/telegram/messenger/AppGlobalConfig$ConfigLong;->handler:Lorg/telegram/messenger/AppGlobalConfig$ConfigLong$Internal;

    return-object p0
.end method


# virtual methods
.method public get()J
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/AppGlobalConfig$ConfigLong;->handler:Lorg/telegram/messenger/AppGlobalConfig$ConfigLong$Internal;

    invoke-static {v0}, Lorg/telegram/messenger/AppGlobalConfig$ConfigLong$Internal;->access$300(Lorg/telegram/messenger/AppGlobalConfig$ConfigLong$Internal;)J

    move-result-wide v0

    return-wide v0
.end method
