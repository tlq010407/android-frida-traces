.class public Lorg/telegram/ui/Stars/StarsIntroActivity$StarsSubscriptionView$Factory;
.super Lorg/telegram/ui/Components/UItem$UItemFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stars/StarsIntroActivity$StarsSubscriptionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsSubscriptionView$Factory;

    invoke-direct {v0}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsSubscriptionView$Factory;-><init>()V

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem$UItemFactory;->setup(Lorg/telegram/ui/Components/UItem$UItemFactory;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/UItem$UItemFactory;-><init>()V

    return-void
.end method

.method public static asSubscription(Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;)Lorg/telegram/ui/Components/UItem;
    .locals 1

    const-class v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsSubscriptionView$Factory;

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->ofFactory(Ljava/lang/Class;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    iput-object p0, v0, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Lorg/telegram/ui/Components/UItem;ZLorg/telegram/ui/Components/UniversalAdapter;Lorg/telegram/ui/Components/UniversalRecyclerView;)V
    .locals 0

    check-cast p1, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsSubscriptionView;

    iget-object p2, p2, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    check-cast p2, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsSubscriptionView;->set(Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;Z)V

    return-void
.end method

.method public bridge synthetic createView(Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/view/View;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsSubscriptionView$Factory;->createView(Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Stars/StarsIntroActivity$StarsSubscriptionView;

    move-result-object p1

    return-object p1
.end method

.method public createView(Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Stars/StarsIntroActivity$StarsSubscriptionView;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/UItem$UItemFactory;->getCached()Landroid/view/View;

    move-result-object p3

    check-cast p3, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsSubscriptionView;

    if-eqz p3, :cond_0

    return-object p3

    :cond_0
    new-instance p3, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsSubscriptionView;

    invoke-direct {p3, p1, p2, p4}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsSubscriptionView;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-object p3
.end method

.method public equals(Lorg/telegram/ui/Components/UItem;Lorg/telegram/ui/Components/UItem;)Z
    .locals 2

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p1, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    instance-of v1, p1, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;

    if-eqz v1, :cond_3

    iget-object p2, p2, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    instance-of v1, p2, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    check-cast p1, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;

    check-cast p2, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;

    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->id:Ljava/lang/String;

    iget-object p2, p2, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->id:Ljava/lang/String;

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    return v0
.end method
