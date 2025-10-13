.class public Lorg/telegram/ui/CountrySelectActivity$CountryAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/CountrySelectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CountryAdapter"
.end annotation


# instance fields
.field private countries:Ljava/util/HashMap;

.field private mContext:Landroid/content/Context;

.field private sortedCountries:Ljava/util/ArrayList;

.field final synthetic this$0:Lorg/telegram/ui/CountrySelectActivity;


# direct methods
.method public static synthetic $r8$lambda$ISbv4flrMof4PrwI_VdzjWl3ozQ(Ljava/util/Comparator;Lorg/telegram/ui/CountrySelectActivity$Country;Lorg/telegram/ui/CountrySelectActivity$Country;)I
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/CountrySelectActivity$CountryAdapter;->lambda$new$0(Ljava/util/Comparator;Lorg/telegram/ui/CountrySelectActivity$Country;Lorg/telegram/ui/CountrySelectActivity$Country;)I

    move-result p0

    return p0
.end method

.method public constructor <init>(Lorg/telegram/ui/CountrySelectActivity;Landroid/content/Context;Ljava/util/ArrayList;Z)V
    .locals 5

    iput-object p1, p0, Lorg/telegram/ui/CountrySelectActivity$CountryAdapter;->this$0:Lorg/telegram/ui/CountrySelectActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;-><init>()V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/CountrySelectActivity$CountryAdapter;->countries:Ljava/util/HashMap;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/CountrySelectActivity$CountryAdapter;->sortedCountries:Ljava/util/ArrayList;

    iput-object p2, p0, Lorg/telegram/ui/CountrySelectActivity$CountryAdapter;->mContext:Landroid/content/Context;

    const/4 p1, 0x1

    const/4 p2, 0x0

    if-eqz p3, :cond_1

    const/4 p4, 0x0

    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p4, v0, :cond_5

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/CountrySelectActivity$Country;

    iget-object v1, v0, Lorg/telegram/ui/CountrySelectActivity$Country;->name:Ljava/lang/String;

    invoke-virtual {v1, p2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/CountrySelectActivity$CountryAdapter;->countries:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lorg/telegram/ui/CountrySelectActivity$CountryAdapter;->countries:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lorg/telegram/ui/CountrySelectActivity$CountryAdapter;->sortedCountries:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_1
    :try_start_0
    sget-object p3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p3

    const-string v0, "countries.txt"

    invoke-virtual {p3, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p3

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/CountrySelectActivity$Country;

    invoke-direct {v2}, Lorg/telegram/ui/CountrySelectActivity$Country;-><init>()V

    const/4 v3, 0x2

    aget-object v3, v1, v3

    iput-object v3, v2, Lorg/telegram/ui/CountrySelectActivity$Country;->name:Ljava/lang/String;

    aget-object v3, v1, p2

    iput-object v3, v2, Lorg/telegram/ui/CountrySelectActivity$Country;->code:Ljava/lang/String;

    aget-object v1, v1, p1

    iput-object v1, v2, Lorg/telegram/ui/CountrySelectActivity$Country;->shortname:Ljava/lang/String;

    const-string v3, "FT"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p4, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, v2, Lorg/telegram/ui/CountrySelectActivity$Country;->name:Ljava/lang/String;

    invoke-virtual {v1, p2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/ui/CountrySelectActivity$CountryAdapter;->countries:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    if-nez v3, :cond_3

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lorg/telegram/ui/CountrySelectActivity$CountryAdapter;->countries:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lorg/telegram/ui/CountrySelectActivity$CountryAdapter;->sortedCountries:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_3
    :goto_2
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :goto_3
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_5
    :goto_4
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x18

    if-lt p1, p2, :cond_7

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/LocaleController;->getCurrentLocale()Ljava/util/Locale;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/LocaleController;->getCurrentLocale()Ljava/util/Locale;

    move-result-object p1

    goto :goto_5

    :cond_6
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    :goto_5
    invoke-static {p1}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda30;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda30;-><init>(Ljava/text/Collator;)V

    goto :goto_6

    :cond_7
    new-instance p2, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda31;

    invoke-direct {p2}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda31;-><init>()V

    :goto_6
    iget-object p1, p0, Lorg/telegram/ui/CountrySelectActivity$CountryAdapter;->sortedCountries:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object p1, p0, Lorg/telegram/ui/CountrySelectActivity$CountryAdapter;->countries:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/ArrayList;

    new-instance p4, Lorg/telegram/ui/CountrySelectActivity$CountryAdapter$$ExternalSyntheticLambda0;

    invoke-direct {p4, p2}, Lorg/telegram/ui/CountrySelectActivity$CountryAdapter$$ExternalSyntheticLambda0;-><init>(Ljava/util/Comparator;)V

    invoke-static {p3, p4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_7

    :cond_8
    return-void
.end method

.method private static synthetic lambda$new$0(Ljava/util/Comparator;Lorg/telegram/ui/CountrySelectActivity$Country;Lorg/telegram/ui/CountrySelectActivity$Country;)I
    .locals 0

    iget-object p1, p1, Lorg/telegram/ui/CountrySelectActivity$Country;->name:Ljava/lang/String;

    iget-object p2, p2, Lorg/telegram/ui/CountrySelectActivity$Country;->name:Ljava/lang/String;

    invoke-interface {p0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public getCountForSection(I)I
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/CountrySelectActivity$CountryAdapter;->countries:Ljava/util/HashMap;

    iget-object v1, p0, Lorg/telegram/ui/CountrySelectActivity$CountryAdapter;->sortedCountries:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/CountrySelectActivity$CountryAdapter;->sortedCountries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq p1, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    return v0
.end method

.method public getCountries()Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/CountrySelectActivity$CountryAdapter;->countries:Ljava/util/HashMap;

    return-object v0
.end method

.method public bridge synthetic getItem(II)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/CountrySelectActivity$CountryAdapter;->getItem(II)Lorg/telegram/ui/CountrySelectActivity$Country;

    move-result-object p1

    return-object p1
.end method

.method public getItem(II)Lorg/telegram/ui/CountrySelectActivity$Country;
    .locals 3

    .line 0
    const/4 v0, 0x0

    if-ltz p1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/CountrySelectActivity$CountryAdapter;->sortedCountries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/CountrySelectActivity$CountryAdapter;->countries:Ljava/util/HashMap;

    iget-object v2, p0, Lorg/telegram/ui/CountrySelectActivity$CountryAdapter;->sortedCountries:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-ltz p2, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p2, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/CountrySelectActivity$Country;

    return-object p1

    :cond_2
    :goto_0
    return-object v0
.end method

.method public getItemViewType(II)I
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/CountrySelectActivity$CountryAdapter;->countries:Ljava/util/HashMap;

    iget-object v1, p0, Lorg/telegram/ui/CountrySelectActivity$CountryAdapter;->sortedCountries:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge p2, p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public getLetter(I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->getSectionForPosition(I)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/CountrySelectActivity$CountryAdapter;->sortedCountries:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/CountrySelectActivity$CountryAdapter;->sortedCountries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getPositionForScrollProgress(Lorg/telegram/ui/Components/RecyclerListView;F[I)V
    .locals 0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->getItemCount()I

    move-result p1

    int-to-float p1, p1

    mul-float p1, p1, p2

    float-to-int p1, p1

    const/4 p2, 0x0

    aput p1, p3, p2

    const/4 p1, 0x1

    aput p2, p3, p1

    return-void
.end method

.method public getSectionCount()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/CountrySelectActivity$CountryAdapter;->sortedCountries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getSectionHeaderView(ILandroid/view/View;)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;II)Z
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/CountrySelectActivity$CountryAdapter;->countries:Ljava/util/HashMap;

    iget-object v0, p0, Lorg/telegram/ui/CountrySelectActivity$CountryAdapter;->sortedCountries:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge p3, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onBindViewHolder(IILandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 3

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/CountrySelectActivity$CountryAdapter;->countries:Ljava/util/HashMap;

    iget-object v1, p0, Lorg/telegram/ui/CountrySelectActivity$CountryAdapter;->sortedCountries:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/CountrySelectActivity$Country;

    iget-object p2, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p2, Lorg/telegram/ui/Cells/TextSettingsCell;

    invoke-static {p1}, Lorg/telegram/ui/CountrySelectActivity;->access$600(Lorg/telegram/ui/CountrySelectActivity$Country;)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p2}, Lorg/telegram/ui/Cells/TextSettingsCell;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p3, v0, v1}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object p3

    iget-object v0, p0, Lorg/telegram/ui/CountrySelectActivity$CountryAdapter;->this$0:Lorg/telegram/ui/CountrySelectActivity;

    invoke-static {v0}, Lorg/telegram/ui/CountrySelectActivity;->access$700(Lorg/telegram/ui/CountrySelectActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lorg/telegram/ui/CountrySelectActivity$Country;->code:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p2, p3, p1, v1}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    :cond_1
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    if-eqz p2, :cond_0

    new-instance p1, Lorg/telegram/ui/Cells/DividerCell;

    iget-object p2, p0, Lorg/telegram/ui/CountrySelectActivity$CountryAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/DividerCell;-><init>(Landroid/content/Context;)V

    const/high16 p2, 0x41c00000    # 24.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {p1, v0, v2, p2, v1}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/CountrySelectActivity$CountryAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lorg/telegram/ui/CountrySelectActivity;->access$500(Landroid/content/Context;)Lorg/telegram/ui/Cells/TextSettingsCell;

    move-result-object p1

    :goto_0
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
