.class public Lorg/telegram/ui/Stars/StarsIntroActivity$StarTierView$Factory;
.super Lorg/telegram/ui/Components/UItem$UItemFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stars/StarsIntroActivity$StarTierView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarTierView$Factory;

    invoke-direct {v0}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarTierView$Factory;-><init>()V

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem$UItemFactory;->setup(Lorg/telegram/ui/Components/UItem$UItemFactory;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/UItem$UItemFactory;-><init>()V

    return-void
.end method

.method public static asStarTier(IILorg/telegram/tgnet/tl/TL_stars$TL_starsGiftOption;)Lorg/telegram/ui/Components/UItem;
    .locals 3

    .line 0
    const-class v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarTierView$Factory;

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->ofFactory(Ljava/lang/Class;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    iput p0, v0, Lorg/telegram/ui/Components/UItem;->id:I

    iput p1, v0, Lorg/telegram/ui/Components/UItem;->intValue:I

    iget-wide p0, p2, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiftOption;->stars:J

    iput-wide p0, v0, Lorg/telegram/ui/Components/UItem;->longValue:J

    long-to-int p1, p0

    const-string p0, "StarsCount"

    invoke-static {p0, p1}, Lorg/telegram/messenger/LocaleController;->formatPluralStringSpaced(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    iget-boolean p0, p2, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiftOption;->loadingStorePrice:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/telegram/messenger/BillingController;->getInstance()Lorg/telegram/messenger/BillingController;

    move-result-object p0

    iget-wide v1, p2, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiftOption;->amount:J

    iget-object p1, p2, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiftOption;->currency:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, p1}, Lorg/telegram/messenger/BillingController;->formatCurrency(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    iput-object p0, v0, Lorg/telegram/ui/Components/UItem;->subtext:Ljava/lang/CharSequence;

    iput-object p2, v0, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    return-object v0
.end method

.method public static asStarTier(IILorg/telegram/tgnet/tl/TL_stars$TL_starsTopupOption;)Lorg/telegram/ui/Components/UItem;
    .locals 3

    .line 0
    const-class v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarTierView$Factory;

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->ofFactory(Ljava/lang/Class;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    iput p0, v0, Lorg/telegram/ui/Components/UItem;->id:I

    iput p1, v0, Lorg/telegram/ui/Components/UItem;->intValue:I

    iget-wide p0, p2, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTopupOption;->stars:J

    iput-wide p0, v0, Lorg/telegram/ui/Components/UItem;->longValue:J

    long-to-int p1, p0

    const-string p0, "StarsCount"

    invoke-static {p0, p1}, Lorg/telegram/messenger/LocaleController;->formatPluralStringSpaced(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    iget-boolean p0, p2, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTopupOption;->loadingStorePrice:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/telegram/messenger/BillingController;->getInstance()Lorg/telegram/messenger/BillingController;

    move-result-object p0

    iget-wide v1, p2, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTopupOption;->amount:J

    iget-object p1, p2, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTopupOption;->currency:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, p1}, Lorg/telegram/messenger/BillingController;->formatCurrency(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    iput-object p0, v0, Lorg/telegram/ui/Components/UItem;->subtext:Ljava/lang/CharSequence;

    iput-object p2, v0, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Lorg/telegram/ui/Components/UItem;ZLorg/telegram/ui/Components/UniversalAdapter;Lorg/telegram/ui/Components/UniversalRecyclerView;)V
    .locals 0

    check-cast p1, Lorg/telegram/ui/Stars/StarsIntroActivity$StarTierView;

    iget p4, p2, Lorg/telegram/ui/Components/UItem;->intValue:I

    iget-object p5, p2, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    iget-object p2, p2, Lorg/telegram/ui/Components/UItem;->subtext:Ljava/lang/CharSequence;

    invoke-virtual {p1, p4, p5, p2, p3}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarTierView;->set(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method public contentsEquals(Lorg/telegram/ui/Components/UItem;Lorg/telegram/ui/Components/UItem;)Z
    .locals 2

    iget v0, p1, Lorg/telegram/ui/Components/UItem;->intValue:I

    iget v1, p2, Lorg/telegram/ui/Components/UItem;->intValue:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lorg/telegram/ui/Components/UItem;->id:I

    iget v1, p2, Lorg/telegram/ui/Components/UItem;->id:I

    if-ne v0, v1, :cond_0

    iget-object p1, p1, Lorg/telegram/ui/Components/UItem;->subtext:Ljava/lang/CharSequence;

    iget-object p2, p2, Lorg/telegram/ui/Components/UItem;->subtext:Ljava/lang/CharSequence;

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic createView(Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/view/View;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarTierView$Factory;->createView(Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Stars/StarsIntroActivity$StarTierView;

    move-result-object p1

    return-object p1
.end method

.method public createView(Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Stars/StarsIntroActivity$StarTierView;
    .locals 0

    .line 0
    new-instance p2, Lorg/telegram/ui/Stars/StarsIntroActivity$StarTierView;

    invoke-direct {p2, p1, p4}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarTierView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-object p2
.end method

.method public equals(Lorg/telegram/ui/Components/UItem;Lorg/telegram/ui/Components/UItem;)Z
    .locals 0

    iget p1, p1, Lorg/telegram/ui/Components/UItem;->id:I

    iget p2, p2, Lorg/telegram/ui/Components/UItem;->id:I

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
