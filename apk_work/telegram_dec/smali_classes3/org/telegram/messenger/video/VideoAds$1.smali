.class Lorg/telegram/messenger/video/VideoAds$1;
.super Lorg/telegram/messenger/video/VideoAds$AdLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/video/VideoAds;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/video/VideoAds;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/video/VideoAds;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/video/VideoAds$1;->this$0:Lorg/telegram/messenger/video/VideoAds;

    invoke-direct {p0, p2, p3}, Lorg/telegram/messenger/video/VideoAds$AdLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method public updatePosition()V
    .locals 3

    invoke-super {p0}, Lorg/telegram/ui/Components/Bulletin$Layout;->updatePosition()V

    iget-object v0, p0, Lorg/telegram/messenger/video/VideoAds$1;->this$0:Lorg/telegram/messenger/video/VideoAds;

    invoke-static {v0}, Lorg/telegram/messenger/video/VideoAds;->access$000(Lorg/telegram/messenger/video/VideoAds;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/video/VideoAds$1;->this$0:Lorg/telegram/messenger/video/VideoAds;

    invoke-static {v0}, Lorg/telegram/messenger/video/VideoAds;->access$000(Lorg/telegram/messenger/video/VideoAds;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/messenger/video/VideoAds$1;->this$0:Lorg/telegram/messenger/video/VideoAds;

    invoke-static {v2}, Lorg/telegram/messenger/video/VideoAds;->access$100(Lorg/telegram/messenger/video/VideoAds;)F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ItemOptions;->setTranslationY(F)V

    :cond_0
    return-void
.end method
