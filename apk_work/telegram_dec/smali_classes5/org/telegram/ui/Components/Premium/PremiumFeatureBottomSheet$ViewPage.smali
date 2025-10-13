.class Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewPage"
.end annotation


# instance fields
.field description:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

.field public position:I

.field final synthetic this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

.field title:Landroid/widget/TextView;

.field topHeader:Lorg/telegram/ui/Components/Premium/PagerHeaderView;

.field topView:Landroid/view/View;

.field topViewOnFullHeight:Z


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;Landroid/content/Context;I)V
    .locals 9

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->getViewForPosition(Landroid/content/Context;I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;->topView:Landroid/view/View;

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p3, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;->topView:Landroid/view/View;

    check-cast p3, Lorg/telegram/ui/Components/Premium/PagerHeaderView;

    iput-object p3, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;->topHeader:Lorg/telegram/ui/Components/Premium/PagerHeaderView;

    new-instance p3, Landroid/widget/TextView;

    invoke-direct {p3, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;->title:Landroid/widget/TextView;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setGravity(I)V

    iget-object p3, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;->title:Landroid/widget/TextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-static {p1, v1}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->access$1200(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;I)I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p3, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;->title:Landroid/widget/TextView;

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {p3, v0, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object p3, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;->title:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p3, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;->title:Landroid/widget/TextView;

    const/high16 v7, 0x41a80000    # 21.0f

    const/4 v8, 0x0

    const/4 v2, -0x1

    const/high16 v3, -0x40000000    # -2.0f

    const/4 v4, 0x0

    const/high16 v5, 0x41a80000    # 21.0f

    const/high16 v6, 0x41a00000    # 20.0f

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, p3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p3, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-direct {p3, p2}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;->description:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setGravity(I)V

    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;->description:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/high16 p3, 0x41700000    # 15.0f

    invoke-virtual {p2, v0, p3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;->description:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-static {p1, v1}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->access$1300(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {p1}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->access$1400(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;->description:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setLines(I)V

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;->description:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/high16 v5, 0x41a80000    # 21.0f

    const/high16 v6, 0x41800000    # 16.0f

    const/4 v0, -0x1

    const/high16 v1, -0x40000000    # -2.0f

    const/4 v2, 0x0

    const/high16 v3, 0x41a80000    # 21.0f

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    return-void
.end method


# virtual methods
.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;->topView:Landroid/view/View;

    if-ne p2, v0, :cond_2

    instance-of v0, p2, Lorg/telegram/ui/Components/Premium/BaseListPageView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget v1, v1, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->topGlobalOffset:I

    int-to-float v1, v1

    goto :goto_0

    :goto_1
    if-eqz v0, :cond_1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return p2

    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method protected onMeasure(II)V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;->title:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;->topView:Landroid/view/View;

    instance-of v2, v0, Lorg/telegram/ui/Components/Premium/BaseListPageView;

    if-eqz v2, :cond_0

    check-cast v0, Lorg/telegram/ui/Components/Premium/BaseListPageView;

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget v2, v2, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->topGlobalOffset:I

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/Premium/BaseListPageView;->setTopOffset(I)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;->topView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget v3, v2, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->contentHeight:I

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;->description:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-static {v2}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->access$1500(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;)Z

    move-result v2

    const/16 v3, 0x8

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;->title:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->access$1600(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_1

    :cond_2
    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;->topView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;->topViewOnFullHeight:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;->topView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v1, v4

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;->topView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;->title:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;->description:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    :cond_3
    return-void
.end method

.method setFeatureDate(Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;)V
    .locals 4

    iget v0, p1, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;->type:I

    if-eqz v0, :cond_d

    const/16 v1, 0xe

    if-eq v0, v1, :cond_d

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->access$1400(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->access$1700(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;)I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;->title:Landroid/widget/TextView;

    sget v0, Lorg/telegram/messenger/R$string;->AdditionalReactions:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;->description:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v0, Lorg/telegram/messenger/R$string;->AdditionalReactionsDescription:I

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->access$1700(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;)I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;->title:Landroid/widget/TextView;

    sget v0, Lorg/telegram/messenger/R$string;->PremiumPreviewNoAds:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;->description:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v0, Lorg/telegram/messenger/R$string;->PremiumPreviewNoAdsDescription2:I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->access$1700(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;)I

    move-result v0

    const/16 v2, 0x18

    if-ne v0, v2, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;->title:Landroid/widget/TextView;

    sget v0, Lorg/telegram/messenger/R$string;->PremiumPreviewTags:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;->description:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v0, Lorg/telegram/messenger/R$string;->PremiumPreviewTagsDescription:I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->access$1700(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;)I

    move-result v0

    const/16 v2, 0xa

    if-ne v0, v2, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;->title:Landroid/widget/TextView;

    sget v0, Lorg/telegram/messenger/R$string;->PremiumPreviewAppIcon:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;->description:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v0, Lorg/telegram/messenger/R$string;->PremiumPreviewAppIconDescription2:I

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->access$1700(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_5

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;->title:Landroid/widget/TextView;

    sget v0, Lorg/telegram/messenger/R$string;->PremiumPreviewDownloadSpeed:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;->description:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v0, Lorg/telegram/messenger/R$string;->PremiumPreviewDownloadSpeedDescription2:I

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->access$1700(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;)I

    move-result v0

    const/16 v2, 0x9

    if-ne v0, v2, :cond_6

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;->title:Landroid/widget/TextView;

    sget v0, Lorg/telegram/messenger/R$string;->PremiumPreviewAdvancedChatManagement:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;->description:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v0, Lorg/telegram/messenger/R$string;->PremiumPreviewAdvancedChatManagementDescription2:I

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->access$1700(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;)I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_7

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;->title:Landroid/widget/TextView;

    sget v0, Lorg/telegram/messenger/R$string;->PremiumPreviewVoiceToText:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;->description:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v0, Lorg/telegram/messenger/R$string;->PremiumPreviewVoiceToTextDescription2:I

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->access$1700(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;)I

    move-result v0

    const/16 v2, 0xd

    if-ne v0, v2, :cond_8

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;->title:Landroid/widget/TextView;

    sget v0, Lorg/telegram/messenger/R$string;->PremiumPreviewTranslations:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;->description:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v0, Lorg/telegram/messenger/R$string;->PremiumPreviewTranslationsDescription:I

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->access$1700(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;)I

    move-result v0

    const/16 v2, 0x26

    if-ne v0, v2, :cond_9

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;->title:Landroid/widget/TextView;

    sget v0, Lorg/telegram/messenger/R$string;->PremiumPreviewEffects:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;->description:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v0, Lorg/telegram/messenger/R$string;->PremiumPreviewEffectsDescription:I

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->access$1700(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;)I

    move-result v0

    const/16 v2, 0x16

    if-ne v0, v2, :cond_a

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;->title:Landroid/widget/TextView;

    sget v0, Lorg/telegram/messenger/R$string;->PremiumPreviewWallpaper:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;->description:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v0, Lorg/telegram/messenger/R$string;->PremiumPreviewWallpaperDescription:I

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->access$1700(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;)I

    move-result v0

    const/16 v2, 0x17

    if-ne v0, v2, :cond_b

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;->title:Landroid/widget/TextView;

    sget v0, Lorg/telegram/messenger/R$string;->PremiumPreviewProfileColor:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;->description:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v0, Lorg/telegram/messenger/R$string;->PremiumPreviewProfileColorDescription:I

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;->title:Landroid/widget/TextView;

    iget-object v2, p1, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;->description:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    iget-object p1, p1, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;->description:Ljava/lang/String;

    move-object v3, v0

    move-object v0, p1

    move-object p1, v3

    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    iput-boolean v1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;->topViewOnFullHeight:Z

    goto :goto_4

    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;->title:Landroid/widget/TextView;

    iget-object v2, p1, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;->description:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    iget-object p1, p1, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;->description:Ljava/lang/String;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_d
    :goto_3
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;->title:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;->description:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;->topViewOnFullHeight:Z

    :goto_4
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method
