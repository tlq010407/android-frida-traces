.class public Lorg/telegram/messenger/AppGlobalConfig$ConfigInt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/AppGlobalConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfigInt"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/AppGlobalConfig$ConfigInt$Internal;
    }
.end annotation


# instance fields
.field private final handler:Lorg/telegram/messenger/AppGlobalConfig$ConfigInt$Internal;


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .locals 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/telegram/messenger/AppGlobalConfig$ConfigInt$Internal;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lorg/telegram/messenger/AppGlobalConfig$ConfigInt$Internal;-><init>(Ljava/lang/String;ILorg/telegram/messenger/AppGlobalConfig$1;)V

    iput-object v0, p0, Lorg/telegram/messenger/AppGlobalConfig$ConfigInt;->handler:Lorg/telegram/messenger/AppGlobalConfig$ConfigInt$Internal;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILorg/telegram/messenger/AppGlobalConfig$1;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/AppGlobalConfig$ConfigInt;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1100(Lorg/telegram/messenger/AppGlobalConfig$ConfigInt;)Lorg/telegram/messenger/AppGlobalConfig$ConfigInt$Internal;
    .locals 0

    iget-object p0, p0, Lorg/telegram/messenger/AppGlobalConfig$ConfigInt;->handler:Lorg/telegram/messenger/AppGlobalConfig$ConfigInt$Internal;

    return-object p0
.end method


# virtual methods
.method public get()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/AppGlobalConfig$ConfigInt;->handler:Lorg/telegram/messenger/AppGlobalConfig$ConfigInt$Internal;

    invoke-static {v0}, Lorg/telegram/messenger/AppGlobalConfig$ConfigInt$Internal;->access$100(Lorg/telegram/messenger/AppGlobalConfig$ConfigInt$Internal;)I

    move-result v0

    return v0
.end method
