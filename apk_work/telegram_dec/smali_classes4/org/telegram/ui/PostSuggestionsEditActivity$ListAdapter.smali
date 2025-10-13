.class Lorg/telegram/ui/PostSuggestionsEditActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/PostSuggestionsEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/PostSuggestionsEditActivity;


# direct methods
.method public static synthetic $r8$lambda$5gmSv6MJbxM2bNR485LpWffNwKk(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/CharSequence;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/PostSuggestionsEditActivity$ListAdapter;->lambda$onBindViewHolder$0(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$kyvtjEx5CI1WQpVKXKv_JnidYyY(Lorg/telegram/ui/PostSuggestionsEditActivity$ListAdapter;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/PostSuggestionsEditActivity$ListAdapter;->lambda$onBindViewHolder$1(Ljava/lang/Integer;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/PostSuggestionsEditActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/PostSuggestionsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/PostSuggestionsEditActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/PostSuggestionsEditActivity$ListAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method private static synthetic lambda$onBindViewHolder$0(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const-string p1, "Stars"

    invoke-static {p1, p0}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    const p1, 0x3f28f5c3    # 0.66f

    invoke-static {p0, p1}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStarsWithPlain(Ljava/lang/CharSequence;F)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long p0, p0

    const/16 v0, 0x2c

    invoke-static {p0, p1, v0}, Lorg/telegram/messenger/LocaleController;->formatNumber(JC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$onBindViewHolder$1(Ljava/lang/Integer;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/PostSuggestionsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/PostSuggestionsEditActivity;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/PostSuggestionsEditActivity;->access$602(Lorg/telegram/ui/PostSuggestionsEditActivity;J)J

    iget-object p1, p0, Lorg/telegram/ui/PostSuggestionsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/PostSuggestionsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/PostSuggestionsEditActivity;->access$1000(Lorg/telegram/ui/PostSuggestionsEditActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/PostSuggestionsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/PostSuggestionsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/PostSuggestionsEditActivity;->access$800(Lorg/telegram/ui/PostSuggestionsEditActivity;)I

    move-result v0

    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->updateVisibleRow(Lorg/telegram/ui/Components/RecyclerListView;I)V

    iget-object p1, p0, Lorg/telegram/ui/PostSuggestionsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/PostSuggestionsEditActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/telegram/ui/PostSuggestionsEditActivity;->access$1100(Lorg/telegram/ui/PostSuggestionsEditActivity;Z)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/PostSuggestionsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/PostSuggestionsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/PostSuggestionsEditActivity;->access$100(Lorg/telegram/ui/PostSuggestionsEditActivity;)I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/PostSuggestionsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/PostSuggestionsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/PostSuggestionsEditActivity;->access$200(Lorg/telegram/ui/PostSuggestionsEditActivity;)I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PostSuggestionsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/PostSuggestionsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/PostSuggestionsEditActivity;->access$400(Lorg/telegram/ui/PostSuggestionsEditActivity;)I

    move-result v0

    if-ne p1, v0, :cond_1

    const/4 p1, 0x2

    return p1

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PostSuggestionsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/PostSuggestionsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/PostSuggestionsEditActivity;->access$500(Lorg/telegram/ui/PostSuggestionsEditActivity;)I

    move-result v0

    if-ne p1, v0, :cond_2

    const/4 p1, 0x3

    return p1

    :cond_2
    const/4 p1, 0x5

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 8

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    const/4 v4, 0x5

    if-eq v2, v4, :cond_2

    if-eq v2, v0, :cond_1

    const/4 v0, 0x3

    if-eq v2, v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/SlideIntChooseView;

    iget-object v0, p0, Lorg/telegram/ui/PostSuggestionsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/PostSuggestionsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/PostSuggestionsEditActivity;->access$500(Lorg/telegram/ui/PostSuggestionsEditActivity;)I

    move-result v0

    if-ne p2, v0, :cond_7

    const/16 p2, 0xe

    new-array p2, p2, [I

    fill-array-data p2, :array_0

    iget-object v0, p0, Lorg/telegram/ui/PostSuggestionsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/PostSuggestionsEditActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesController;->starsPaidMessageAmountMax:J

    long-to-int v1, v0

    invoke-static {p2, v1}, Lorg/telegram/ui/Cells/SlideIntChooseView;->cut([II)[I

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/PostSuggestionsEditActivity$ListAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/telegram/ui/PostSuggestionsEditActivity$ListAdapter$$ExternalSyntheticLambda0;-><init>()V

    const/16 v1, 0x14

    invoke-static {v3, p2, v1, v0}, Lorg/telegram/ui/Cells/SlideIntChooseView$Options;->make(I[IILorg/telegram/messenger/Utilities$Callback2Return;)Lorg/telegram/ui/Cells/SlideIntChooseView$Options;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/PostSuggestionsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/PostSuggestionsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/PostSuggestionsEditActivity;->access$600(Lorg/telegram/ui/PostSuggestionsEditActivity;)J

    move-result-wide v1

    const-wide/16 v3, 0x2710

    const-wide/16 v5, 0x0

    invoke-static/range {v1 .. v6}, Lorg/telegram/messenger/Utilities;->clamp(JJJ)J

    move-result-wide v0

    long-to-int v1, v0

    new-instance v0, Lorg/telegram/ui/PostSuggestionsEditActivity$ListAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PostSuggestionsEditActivity$ListAdapter$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/PostSuggestionsEditActivity$ListAdapter;)V

    invoke-virtual {p1, v1, p2, v0}, Lorg/telegram/ui/Cells/SlideIntChooseView;->set(ILorg/telegram/ui/Cells/SlideIntChooseView$Options;Lorg/telegram/messenger/Utilities$Callback;)V

    goto/16 :goto_3

    :cond_1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object v0, p0, Lorg/telegram/ui/PostSuggestionsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/PostSuggestionsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/PostSuggestionsEditActivity;->access$400(Lorg/telegram/ui/PostSuggestionsEditActivity;)I

    move-result v0

    if-ne p2, v0, :cond_7

    sget p2, Lorg/telegram/messenger/R$string;->PriceForEachSuggestion:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_2
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object v2, p0, Lorg/telegram/ui/PostSuggestionsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/PostSuggestionsEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/PostSuggestionsEditActivity;->access$700(Lorg/telegram/ui/PostSuggestionsEditActivity;)I

    move-result v2

    const/16 v4, 0x10

    const/16 v5, 0xc

    if-ne p2, v2, :cond_3

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText4:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setTextColor(I)V

    invoke-virtual {p1, v5}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setTopPadding(I)V

    invoke-virtual {p1, v4}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBottomPadding(I)V

    sget p2, Lorg/telegram/messenger/R$string;->AllowPostSuggestionsHint:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/PostSuggestionsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/PostSuggestionsEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/PostSuggestionsEditActivity;->access$800(Lorg/telegram/ui/PostSuggestionsEditActivity;)I

    move-result v2

    if-ne p2, v2, :cond_7

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText4:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setTextColor(I)V

    invoke-virtual {p1, v5}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setTopPadding(I)V

    invoke-virtual {p1, v4}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBottomPadding(I)V

    iget-object p2, p0, Lorg/telegram/ui/PostSuggestionsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/PostSuggestionsEditActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget p2, p2, Lorg/telegram/messenger/MessagesController;->starsPaidMessageCommissionPermille:I

    int-to-float v2, p2

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v2, v4

    iget-object v4, p0, Lorg/telegram/ui/PostSuggestionsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/PostSuggestionsEditActivity;

    invoke-static {v4}, Lorg/telegram/ui/PostSuggestionsEditActivity;->access$600(Lorg/telegram/ui/PostSuggestionsEditActivity;)J

    move-result-wide v4

    long-to-float v4, v4

    mul-float v4, v4, v2

    float-to-double v4, v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v4, v6

    iget-object v2, p0, Lorg/telegram/ui/PostSuggestionsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/PostSuggestionsEditActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget v2, v2, Lorg/telegram/messenger/MessagesController;->starsUsdWithdrawRate1000:F

    float-to-double v6, v2

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v6

    double-to-int v2, v4

    int-to-double v4, v2

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    sget v4, Lorg/telegram/messenger/R$string;->PostSuggestionsPriceInfo:I

    invoke-static {p2}, Lorg/telegram/ui/bots/AffiliateProgramFragment;->percents(I)Ljava/lang/CharSequence;

    move-result-object p2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v1

    aput-object v2, v0, v3

    invoke-static {v4, v0}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_4
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    iget-object v0, p0, Lorg/telegram/ui/PostSuggestionsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/PostSuggestionsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/PostSuggestionsEditActivity;->access$200(Lorg/telegram/ui/PostSuggestionsEditActivity;)I

    move-result v0

    if-ne p2, v0, :cond_7

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setDrawCheckRipple(Z)V

    sget p2, Lorg/telegram/messenger/R$string;->AllowPostSuggestions:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/PostSuggestionsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/PostSuggestionsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/PostSuggestionsEditActivity;->access$300(Lorg/telegram/ui/PostSuggestionsEditActivity;)Z

    move-result v0

    invoke-virtual {p1, p2, v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    iget-object p2, p0, Lorg/telegram/ui/PostSuggestionsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/PostSuggestionsEditActivity;

    invoke-static {p2}, Lorg/telegram/ui/PostSuggestionsEditActivity;->access$300(Lorg/telegram/ui/PostSuggestionsEditActivity;)Z

    move-result p2

    if-eqz p2, :cond_5

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundChecked:I

    goto :goto_1

    :cond_5
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundUnchecked:I

    :goto_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object p2, p0, Lorg/telegram/ui/PostSuggestionsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/PostSuggestionsEditActivity;

    invoke-static {p2}, Lorg/telegram/ui/PostSuggestionsEditActivity;->access$300(Lorg/telegram/ui/PostSuggestionsEditActivity;)Z

    move-result p2

    if-eqz p2, :cond_6

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundChecked:I

    goto :goto_2

    :cond_6
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundUnchecked:I

    :goto_2
    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextCheckCell;->setBackgroundColor(I)V

    :cond_7
    :goto_3
    return-void

    :array_0
    .array-data 4
        0x0
        0xa
        0x32
        0x64
        0xc8
        0xfa
        0x190
        0x1f4
        0x3e8
        0x9c4
        0x1388
        0x1d4c
        0x2328
        0x2710
    .end array-data
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 6

    if-eqz p2, :cond_2

    const/4 p1, 0x2

    if-eq p2, p1, :cond_1

    const/4 p1, 0x3

    if-eq p2, p1, :cond_0

    new-instance p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object p2, p0, Lorg/telegram/ui/PostSuggestionsEditActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    iget-object p2, p0, Lorg/telegram/ui/PostSuggestionsEditActivity$ListAdapter;->mContext:Landroid/content/Context;

    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {p2, v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_0
    new-instance p1, Lorg/telegram/ui/Cells/SlideIntChooseView;

    iget-object p2, p0, Lorg/telegram/ui/PostSuggestionsEditActivity$ListAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lorg/telegram/ui/PostSuggestionsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/PostSuggestionsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/PostSuggestionsEditActivity;->access$900(Lorg/telegram/ui/PostSuggestionsEditActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/Cells/SlideIntChooseView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iget-object p2, p0, Lorg/telegram/ui/PostSuggestionsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/PostSuggestionsEditActivity;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {p2, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result p2

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    :cond_1
    new-instance p1, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object p2, p0, Lorg/telegram/ui/PostSuggestionsEditActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    goto :goto_0

    :cond_2
    new-instance p1, Lorg/telegram/ui/Cells/TextCheckCell;

    iget-object p2, p0, Lorg/telegram/ui/PostSuggestionsEditActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundCheckText:I

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackBlue:I

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackBlueChecked:I

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackBlueThumb:I

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackBlueThumbChecked:I

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Cells/TextCheckCell;->setColors(IIIII)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextCheckCell;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 p2, 0x38

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextCheckCell;->setHeight(I)V

    :goto_1
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
