.class Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView;
.super Lorg/telegram/ui/Components/BottomPagerTabs;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/MediaActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StoriesTabsView"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/MediaActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/MediaActivity;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView;->this$0:Lorg/telegram/ui/Components/MediaActivity;

    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/Components/BottomPagerTabs;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method public createTabs()[Lorg/telegram/ui/Components/BottomPagerTabs$Tab;
    .locals 15

    new-instance v7, Lorg/telegram/ui/Components/BottomPagerTabs$Tab;

    sget v3, Lorg/telegram/messenger/R$raw;->msg_stories_saved:I

    sget v0, Lorg/telegram/messenger/R$string;->ProfileMyStoriesTab:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/16 v4, 0x14

    const/16 v5, 0x28

    const/4 v2, 0x0

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/BottomPagerTabs$Tab;-><init>(Lorg/telegram/ui/Components/BottomPagerTabs;IIIILjava/lang/CharSequence;)V

    new-instance v0, Lorg/telegram/ui/Components/BottomPagerTabs$Tab;

    sget v11, Lorg/telegram/messenger/R$raw;->msg_stories_archive:I

    sget v1, Lorg/telegram/messenger/R$string;->ProfileStoriesArchiveTab:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v10, 0x1

    move-object v8, v0

    move-object v9, p0

    invoke-direct/range {v8 .. v14}, Lorg/telegram/ui/Components/BottomPagerTabs$Tab;-><init>(Lorg/telegram/ui/Components/BottomPagerTabs;IIIILjava/lang/CharSequence;)V

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/telegram/ui/Components/BottomPagerTabs$Tab;

    aput-object v7, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    return-object v1
.end method
