.class public Lorg/telegram/ui/Stars/ExplainStarsSheet$FeatureCell$Factory;
.super Lorg/telegram/ui/Components/UItem$UItemFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stars/ExplainStarsSheet$FeatureCell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/telegram/ui/Stars/ExplainStarsSheet$FeatureCell$Factory;

    invoke-direct {v0}, Lorg/telegram/ui/Stars/ExplainStarsSheet$FeatureCell$Factory;-><init>()V

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem$UItemFactory;->setup(Lorg/telegram/ui/Components/UItem$UItemFactory;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/UItem$UItemFactory;-><init>()V

    return-void
.end method

.method public static of(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;
    .locals 2

    const-class v0, Lorg/telegram/ui/Stars/ExplainStarsSheet$FeatureCell$Factory;

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->ofFactory(Ljava/lang/Class;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->selectable:Z

    iput p0, v0, Lorg/telegram/ui/Components/UItem;->intValue:I

    iput-object p1, v0, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    iput-object p2, v0, Lorg/telegram/ui/Components/UItem;->subtext:Ljava/lang/CharSequence;

    return-object v0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Lorg/telegram/ui/Components/UItem;ZLorg/telegram/ui/Components/UniversalAdapter;Lorg/telegram/ui/Components/UniversalRecyclerView;)V
    .locals 0

    check-cast p1, Lorg/telegram/ui/Stars/ExplainStarsSheet$FeatureCell;

    iget p3, p2, Lorg/telegram/ui/Components/UItem;->intValue:I

    iget-object p4, p2, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    iget-object p2, p2, Lorg/telegram/ui/Components/UItem;->subtext:Ljava/lang/CharSequence;

    invoke-virtual {p1, p3, p4, p2}, Lorg/telegram/ui/Stars/ExplainStarsSheet$FeatureCell;->set(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic createView(Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/view/View;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stars/ExplainStarsSheet$FeatureCell$Factory;->createView(Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Stars/ExplainStarsSheet$FeatureCell;

    move-result-object p1

    return-object p1
.end method

.method public createView(Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Stars/ExplainStarsSheet$FeatureCell;
    .locals 0

    .line 0
    new-instance p2, Lorg/telegram/ui/Stars/ExplainStarsSheet$FeatureCell;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3}, Lorg/telegram/ui/Stars/ExplainStarsSheet$FeatureCell;-><init>(Landroid/content/Context;I)V

    return-object p2
.end method
