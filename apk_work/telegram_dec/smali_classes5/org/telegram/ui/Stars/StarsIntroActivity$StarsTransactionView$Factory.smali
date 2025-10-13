.class public Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView$Factory;
.super Lorg/telegram/ui/Components/UItem$UItemFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView$Factory;

    invoke-direct {v0}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView$Factory;-><init>()V

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem$UItemFactory;->setup(Lorg/telegram/ui/Components/UItem$UItemFactory;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/UItem$UItemFactory;-><init>()V

    return-void
.end method

.method public static asTransaction(Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;Z)Lorg/telegram/ui/Components/UItem;
    .locals 1

    const-class v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView$Factory;

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->ofFactory(Ljava/lang/Class;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    iput-object p0, v0, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    iput-boolean p1, v0, Lorg/telegram/ui/Components/UItem;->accent:Z

    return-object v0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Lorg/telegram/ui/Components/UItem;ZLorg/telegram/ui/Components/UniversalAdapter;Lorg/telegram/ui/Components/UniversalRecyclerView;)V
    .locals 0

    check-cast p1, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;

    iget-object p4, p2, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    check-cast p4, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;

    iget-boolean p2, p2, Lorg/telegram/ui/Components/UItem;->accent:Z

    invoke-virtual {p1, p4, p2, p3}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->set(Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;ZZ)V

    return-void
.end method

.method public bridge synthetic createView(Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/view/View;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView$Factory;->createView(Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;

    move-result-object p1

    return-object p1
.end method

.method public createView(Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/UItem$UItemFactory;->getCached()Landroid/view/View;

    move-result-object p3

    check-cast p3, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;

    if-eqz p3, :cond_0

    return-object p3

    :cond_0
    new-instance p3, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;

    invoke-direct {p3, p1, p2, p4}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-object p3
.end method
