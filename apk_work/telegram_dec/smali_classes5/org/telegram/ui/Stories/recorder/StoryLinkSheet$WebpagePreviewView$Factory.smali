.class public Lorg/telegram/ui/Stories/recorder/StoryLinkSheet$WebpagePreviewView$Factory;
.super Lorg/telegram/ui/Components/UItem$UItemFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stories/recorder/StoryLinkSheet$WebpagePreviewView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryLinkSheet$WebpagePreviewView$Factory;

    invoke-direct {v0}, Lorg/telegram/ui/Stories/recorder/StoryLinkSheet$WebpagePreviewView$Factory;-><init>()V

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem$UItemFactory;->setup(Lorg/telegram/ui/Components/UItem$UItemFactory;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/UItem$UItemFactory;-><init>()V

    return-void
.end method

.method public static item(Lorg/telegram/tgnet/TLRPC$WebPage;Landroid/view/View$OnClickListener;)Lorg/telegram/ui/Components/UItem;
    .locals 1

    const-class v0, Lorg/telegram/ui/Stories/recorder/StoryLinkSheet$WebpagePreviewView$Factory;

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->ofFactory(Ljava/lang/Class;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    iput-object p0, v0, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    iput-object p1, v0, Lorg/telegram/ui/Components/UItem;->clickCallback:Landroid/view/View$OnClickListener;

    return-object v0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Lorg/telegram/ui/Components/UItem;ZLorg/telegram/ui/Components/UniversalAdapter;Lorg/telegram/ui/Components/UniversalRecyclerView;)V
    .locals 0

    check-cast p1, Lorg/telegram/ui/Stories/recorder/StoryLinkSheet$WebpagePreviewView;

    iget-object p3, p2, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    instance-of p4, p3, Lorg/telegram/tgnet/TLRPC$WebPage;

    if-eqz p4, :cond_0

    check-cast p3, Lorg/telegram/tgnet/TLRPC$WebPage;

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    iget-object p2, p2, Lorg/telegram/ui/Components/UItem;->clickCallback:Landroid/view/View$OnClickListener;

    const/4 p4, 0x0

    invoke-virtual {p1, p3, p2, p4}, Lorg/telegram/ui/Stories/recorder/StoryLinkSheet$WebpagePreviewView;->set(Lorg/telegram/tgnet/TLRPC$WebPage;Landroid/view/View$OnClickListener;Z)V

    return-void
.end method

.method public bridge synthetic createView(Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/view/View;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stories/recorder/StoryLinkSheet$WebpagePreviewView$Factory;->createView(Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Stories/recorder/StoryLinkSheet$WebpagePreviewView;

    move-result-object p1

    return-object p1
.end method

.method public createView(Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Stories/recorder/StoryLinkSheet$WebpagePreviewView;
    .locals 0

    .line 0
    new-instance p2, Lorg/telegram/ui/Stories/recorder/StoryLinkSheet$WebpagePreviewView;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Stories/recorder/StoryLinkSheet$WebpagePreviewView;-><init>(Landroid/content/Context;)V

    return-object p2
.end method
