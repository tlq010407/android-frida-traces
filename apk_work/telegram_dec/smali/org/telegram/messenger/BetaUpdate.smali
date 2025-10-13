.class public Lorg/telegram/messenger/BetaUpdate;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final changelog:Ljava/lang/String;

.field public final version:Ljava/lang/String;

.field public final versionCode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/BetaUpdate;->version:Ljava/lang/String;

    iput p2, p0, Lorg/telegram/messenger/BetaUpdate;->versionCode:I

    iput-object p3, p0, Lorg/telegram/messenger/BetaUpdate;->changelog:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public higherThan(Lorg/telegram/messenger/BetaUpdate;)Z
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/BetaUpdate;->version:Ljava/lang/String;

    iget-object v1, p1, Lorg/telegram/messenger/BetaUpdate;->version:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/telegram/messenger/SharedConfig;->versionBiggerOrEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/BetaUpdate;->versionCode:I

    iget p1, p1, Lorg/telegram/messenger/BetaUpdate;->versionCode:I

    if-le v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
