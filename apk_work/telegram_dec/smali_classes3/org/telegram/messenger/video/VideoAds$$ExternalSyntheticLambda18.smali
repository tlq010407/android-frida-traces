.class public final synthetic Lorg/telegram/messenger/video/VideoAds$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/video/VideoAds;

.field public final synthetic f$1:Lorg/telegram/ui/Components/Bulletin;

.field public final synthetic f$2:[Z


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/video/VideoAds;Lorg/telegram/ui/Components/Bulletin;[Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/video/VideoAds$$ExternalSyntheticLambda18;->f$0:Lorg/telegram/messenger/video/VideoAds;

    iput-object p2, p0, Lorg/telegram/messenger/video/VideoAds$$ExternalSyntheticLambda18;->f$1:Lorg/telegram/ui/Components/Bulletin;

    iput-object p3, p0, Lorg/telegram/messenger/video/VideoAds$$ExternalSyntheticLambda18;->f$2:[Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/video/VideoAds$$ExternalSyntheticLambda18;->f$0:Lorg/telegram/messenger/video/VideoAds;

    iget-object v1, p0, Lorg/telegram/messenger/video/VideoAds$$ExternalSyntheticLambda18;->f$1:Lorg/telegram/ui/Components/Bulletin;

    iget-object v2, p0, Lorg/telegram/messenger/video/VideoAds$$ExternalSyntheticLambda18;->f$2:[Z

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/video/VideoAds;->$r8$lambda$ge71Y8Q-mhdygbWpyyn5DVpz7XY(Lorg/telegram/messenger/video/VideoAds;Lorg/telegram/ui/Components/Bulletin;[Z)V

    return-void
.end method
