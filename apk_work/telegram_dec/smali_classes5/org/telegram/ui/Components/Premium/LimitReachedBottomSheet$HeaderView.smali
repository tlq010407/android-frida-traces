.class Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeaderView"
.end annotation


# instance fields
.field boostCounterView:Lorg/telegram/ui/Components/Premium/boosts/BoostCounterView;

.field description:Landroid/widget/TextView;

.field final synthetic this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

.field title:Landroid/widget/TextView;

.field titleLinearLayout:Landroid/widget/LinearLayout;


# direct methods
.method public static synthetic $r8$lambda$0dQzoSgt80Zip5H9SqIt0Gdkw0w(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mLV7pqEY9cmVooda8cBdLg5yrH8(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;Landroid/content/Context;)V
    .locals 51

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    const-string v2, "MoreBoosts"

    const/4 v4, 0x2

    iput-object v10, v9, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-direct {v9, v11}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v14, 0x1

    invoke-virtual {v9, v14}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$3800(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I

    move-result v17

    const/high16 v18, 0x40c00000    # 6.0f

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v19

    add-int v12, v17, v19

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$3900(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I

    move-result v17

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v19

    add-int v0, v17, v19

    const/4 v13, 0x0

    invoke-virtual {v9, v12, v13, v0, v13}, Landroid/view/View;->setPadding(IIII)V

    iget v0, v10, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$4000(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I

    move-result v12

    invoke-static {v0, v12}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$4100(II)Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;

    move-result-object v0

    iput-object v0, v10, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitParams:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;

    iget v12, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->icon:I

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$4200(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->premiumFeaturesBlocked()Z

    move-result v19

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$600(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Z

    move-result v22

    iget v1, v10, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    const/16 v6, 0x14

    const/16 v3, 0x12

    const-string v15, " "

    const/16 v5, 0x13

    const/16 v8, 0x20

    const/16 v7, 0x1f

    if-ne v1, v7, :cond_1

    if-eqz v22, :cond_0

    sget v0, Lorg/telegram/messenger/R$string;->BoostingAdditionalFeaturesSubtitle:I

    goto :goto_0

    :cond_0
    sget v0, Lorg/telegram/messenger/R$string;->BoostingAdditionalFeaturesSubtitleChannel:I

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    move/from16 v22, v19

    move-object/from16 v19, v0

    goto/16 :goto_14

    :cond_1
    if-ne v1, v8, :cond_2

    invoke-static {v10, v14}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$4300(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    if-ne v1, v5, :cond_7

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$4400(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$4400(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_boosts_applied:I

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$1800(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$4400(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v22

    new-array v7, v14, [Ljava/lang/Object;

    aput-object v22, v7, v13

    const-string v8, "GroupBoostedByUserWithTimes"

    invoke-static {v8, v0, v7}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2, v15}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    sget v0, Lorg/telegram/messenger/R$string;->GroupBoostedByUserWithDescription:I

    if-nez v1, :cond_3

    const-string v1, ""

    goto :goto_2

    :cond_3
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    :goto_2
    new-array v7, v14, [Ljava/lang/Object;

    aput-object v1, v7, v13

    invoke-static {v0, v7}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/GroupColorActivity;

    if-eqz v0, :cond_5

    invoke-static {}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->giveawayBoostsPerPremium()I

    move-result v0

    new-array v1, v13, [Ljava/lang/Object;

    const-string v2, "BoostingGroupBoostWhatAreBoostsDescription"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-static {v10, v14}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$4300(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$1800(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->hasAdminRights(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-eqz v1, :cond_6

    if-eqz v22, :cond_6

    invoke-virtual {v0, v15}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->BoostingPremiumUserCanBoostGroupWithLink:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_6
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_7
    if-ne v1, v3, :cond_b

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$4500(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    move-result-object v0

    iget v0, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->level:I

    if-nez v0, :cond_9

    if-eqz v22, :cond_8

    sget v0, Lorg/telegram/messenger/R$string;->GroupNeedBoostsDescription:I

    goto :goto_3

    :cond_8
    sget v0, Lorg/telegram/messenger/R$string;->ChannelNeedBoostsDescription:I

    :goto_3
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$4500(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    move-result-object v1

    iget v1, v1, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->next_level_boosts:I

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$4500(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    move-result-object v7

    iget v7, v7, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->next_level_boosts:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-array v8, v14, [Ljava/lang/Object;

    aput-object v7, v8, v13

    invoke-static {v2, v1, v8}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v14, [Ljava/lang/Object;

    aput-object v1, v2, v13

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_9
    if-eqz v22, :cond_a

    sget v0, Lorg/telegram/messenger/R$string;->GroupNeedBoostsDescriptionNextLevel:I

    goto :goto_4

    :cond_a
    sget v0, Lorg/telegram/messenger/R$string;->ChannelNeedBoostsDescriptionNextLevel:I

    :goto_4
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$4500(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    move-result-object v1

    iget v1, v1, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->next_level_boosts:I

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$4500(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    move-result-object v7

    iget v7, v7, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->boosts:I

    sub-int/2addr v1, v7

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$4500(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    move-result-object v7

    iget v7, v7, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->next_level_boosts:I

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$4500(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    move-result-object v8

    iget v8, v8, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->boosts:I

    sub-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-array v8, v14, [Ljava/lang/Object;

    aput-object v7, v8, v13

    invoke-static {v2, v1, v8}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$4500(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    move-result-object v2

    iget v2, v2, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->level:I

    add-int/2addr v2, v14

    new-array v7, v13, [Ljava/lang/Object;

    const-string v8, "BoostStories"

    invoke-static {v8, v2, v7}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v7, v4, [Ljava/lang/Object;

    aput-object v1, v7, v13

    aput-object v2, v7, v14

    invoke-static {v0, v7}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_b
    if-ne v1, v6, :cond_d

    if-eqz v22, :cond_c

    sget v0, Lorg/telegram/messenger/R$string;->GroupNeedBoostsForColorDescription:I

    goto :goto_5

    :cond_c
    sget v0, Lorg/telegram/messenger/R$string;->ChannelNeedBoostsForColorDescription:I

    :goto_5
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->channelColorLevelMin()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v14, [Ljava/lang/Object;

    aput-object v1, v2, v13

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_d
    const/16 v2, 0x18

    if-ne v1, v2, :cond_f

    if-eqz v22, :cond_e

    sget v0, Lorg/telegram/messenger/R$string;->GroupNeedBoostsForProfileColorDescription:I

    goto :goto_6

    :cond_e
    sget v0, Lorg/telegram/messenger/R$string;->ChannelNeedBoostsForProfileColorDescription:I

    :goto_6
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->channelColorLevelMin()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v14, [Ljava/lang/Object;

    aput-object v1, v2, v13

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_f
    const/16 v2, 0x1d

    if-ne v1, v2, :cond_10

    sget v1, Lorg/telegram/messenger/R$string;->GroupNeedBoostsForCustomEmojiPackDescription:I

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->groupEmojiStickersLevelMin:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v2, v14, [Ljava/lang/Object;

    aput-object v0, v2, v13

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_10
    const/16 v2, 0x1e

    if-ne v1, v2, :cond_11

    sget v1, Lorg/telegram/messenger/R$string;->ChannelNeedBoostsForSwitchOffAdsDescription:I

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->channelRestrictSponsoredLevelMin:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v2, v14, [Ljava/lang/Object;

    aput-object v0, v2, v13

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_11
    const/16 v2, 0x23

    if-ne v1, v2, :cond_12

    sget v1, Lorg/telegram/messenger/R$string;->ChannelNeedBoostsForAutotranslationDescription:I

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->channelAutotranslationLevelMin:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v2, v14, [Ljava/lang/Object;

    aput-object v0, v2, v13

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_12
    const/16 v2, 0x19

    if-ne v1, v2, :cond_15

    if-eqz v22, :cond_13

    sget v1, Lorg/telegram/messenger/R$string;->GroupNeedBoostsForEmojiStatusDescription:I

    goto :goto_7

    :cond_13
    sget v1, Lorg/telegram/messenger/R$string;->ChannelNeedBoostsForEmojiStatusDescription:I

    :goto_7
    if-eqz v22, :cond_14

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->groupEmojiStatusLevelMin:I

    goto :goto_8

    :cond_14
    iget v0, v0, Lorg/telegram/messenger/MessagesController;->channelEmojiStatusLevelMin:I

    :goto_8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v2, v14, [Ljava/lang/Object;

    aput-object v0, v2, v13

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_15
    const/16 v2, 0x1a

    if-ne v1, v2, :cond_18

    if-eqz v22, :cond_16

    sget v1, Lorg/telegram/messenger/R$string;->GroupNeedBoostsForWearCollectiblesDescription:I

    goto :goto_9

    :cond_16
    sget v1, Lorg/telegram/messenger/R$string;->ChannelNeedBoostsForWearCollectiblesDescription:I

    :goto_9
    if-eqz v22, :cond_17

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->groupEmojiStatusLevelMin:I

    goto :goto_a

    :cond_17
    iget v0, v0, Lorg/telegram/messenger/MessagesController;->channelEmojiStatusLevelMin:I

    :goto_a
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v2, v14, [Ljava/lang/Object;

    aput-object v0, v2, v13

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_18
    const/16 v2, 0x1b

    if-ne v1, v2, :cond_1a

    if-eqz v22, :cond_19

    sget v1, Lorg/telegram/messenger/R$string;->GroupNeedBoostsForReplyIconDescription:I

    goto :goto_b

    :cond_19
    sget v1, Lorg/telegram/messenger/R$string;->ChannelNeedBoostsForReplyIconDescription:I

    :goto_b
    iget v0, v0, Lorg/telegram/messenger/MessagesController;->channelBgIconLevelMin:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v2, v14, [Ljava/lang/Object;

    aput-object v0, v2, v13

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_1a
    const/16 v2, 0x1c

    if-ne v1, v2, :cond_1d

    if-eqz v22, :cond_1b

    sget v1, Lorg/telegram/messenger/R$string;->GroupNeedBoostsForProfileIconDescription:I

    goto :goto_c

    :cond_1b
    sget v1, Lorg/telegram/messenger/R$string;->ChannelNeedBoostsForProfileIconDescription:I

    :goto_c
    if-eqz v22, :cond_1c

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->groupProfileBgIconLevelMin:I

    goto :goto_d

    :cond_1c
    iget v0, v0, Lorg/telegram/messenger/MessagesController;->channelProfileIconLevelMin:I

    :goto_d
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v2, v14, [Ljava/lang/Object;

    aput-object v0, v2, v13

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_1d
    const/16 v2, 0x16

    if-ne v1, v2, :cond_20

    if-eqz v22, :cond_1e

    sget v1, Lorg/telegram/messenger/R$string;->GroupNeedBoostsForWallpaperDescription:I

    goto :goto_e

    :cond_1e
    sget v1, Lorg/telegram/messenger/R$string;->ChannelNeedBoostsForWallpaperDescription:I

    :goto_e
    if-eqz v22, :cond_1f

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->groupWallpaperLevelMin:I

    goto :goto_f

    :cond_1f
    iget v0, v0, Lorg/telegram/messenger/MessagesController;->channelWallpaperLevelMin:I

    :goto_f
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v2, v14, [Ljava/lang/Object;

    aput-object v0, v2, v13

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_20
    const/16 v2, 0x17

    if-ne v1, v2, :cond_23

    if-eqz v22, :cond_21

    sget v1, Lorg/telegram/messenger/R$string;->GroupNeedBoostsForCustomWallpaperDescription:I

    goto :goto_10

    :cond_21
    sget v1, Lorg/telegram/messenger/R$string;->ChannelNeedBoostsForCustomWallpaperDescription:I

    :goto_10
    if-eqz v22, :cond_22

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->groupCustomWallpaperLevelMin:I

    goto :goto_11

    :cond_22
    iget v0, v0, Lorg/telegram/messenger/MessagesController;->channelCustomWallpaperLevelMin:I

    :goto_11
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v2, v14, [Ljava/lang/Object;

    aput-object v0, v2, v13

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_23
    const/16 v0, 0x15

    if-ne v1, v0, :cond_24

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$4600(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I

    move-result v0

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$4600(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v14, [Ljava/lang/Object;

    aput-object v1, v2, v13

    const-string v1, "ReactionReachLvlForReaction"

    invoke-static {v1, v0, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_24
    const/16 v0, 0xb

    if-ne v1, v0, :cond_2c

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$300(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Z

    move-result v0

    if-nez v0, :cond_28

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$4700(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$3300(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v14, :cond_25

    sget v0, Lorg/telegram/messenger/R$string;->InviteChannelRestrictedUsers2One:I

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$3300(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v1}, Lorg/telegram/messenger/ContactsController;->formatName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v14, [Ljava/lang/Object;

    aput-object v1, v2, v13

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_12
    move-object/from16 v19, v0

    const/16 v22, 0x1

    goto/16 :goto_14

    :cond_25
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$3300(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$3300(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v14, [Ljava/lang/Object;

    aput-object v1, v2, v13

    const-string v1, "InviteChannelRestrictedUsers2"

    invoke-static {v1, v0, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    :cond_26
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$3300(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v14, :cond_27

    sget v0, Lorg/telegram/messenger/R$string;->InviteRestrictedUsers2One:I

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$3300(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v1}, Lorg/telegram/messenger/ContactsController;->formatName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v14, [Ljava/lang/Object;

    aput-object v1, v2, v13

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    :cond_27
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$3300(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$3300(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v14, [Ljava/lang/Object;

    aput-object v1, v2, v13

    const-string v1, "InviteRestrictedUsers2"

    invoke-static {v1, v0, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    :cond_28
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$4700(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$3300(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v14, :cond_29

    sget v0, Lorg/telegram/messenger/R$string;->InviteChannelRestrictedUsersOne:I

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$3300(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v1}, Lorg/telegram/messenger/ContactsController;->formatName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v14, [Ljava/lang/Object;

    aput-object v1, v2, v13

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_12

    :cond_29
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$3300(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$3300(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v14, [Ljava/lang/Object;

    aput-object v1, v2, v13

    const-string v1, "InviteChannelRestrictedUsers"

    invoke-static {v1, v0, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_12

    :cond_2a
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$3300(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v14, :cond_2b

    sget v0, Lorg/telegram/messenger/R$string;->InviteRestrictedUsersOne:I

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$3300(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v1}, Lorg/telegram/messenger/ContactsController;->formatName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v14, [Ljava/lang/Object;

    aput-object v1, v2, v13

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_12

    :cond_2b
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$3300(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$3300(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v14, [Ljava/lang/Object;

    aput-object v1, v2, v13

    const-string v1, "InviteRestrictedUsers"

    invoke-static {v1, v0, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_12

    :cond_2c
    const/16 v0, 0x22

    if-ne v1, v0, :cond_2e

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$3300(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v14, :cond_2d

    sget v0, Lorg/telegram/messenger/R$string;->InviteCallRestrictedUsersOne:I

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$3300(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v1}, Lorg/telegram/messenger/ContactsController;->formatName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v14, [Ljava/lang/Object;

    aput-object v1, v2, v13

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_2d
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$3300(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$3300(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v14, [Ljava/lang/Object;

    aput-object v1, v2, v13

    const-string v1, "InviteCallRestrictedUsers"

    invoke-static {v1, v0, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_2e
    if-eqz v19, :cond_2f

    iget-object v0, v10, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitParams:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->descriptionStrLocked:Ljava/lang/String;

    goto/16 :goto_1

    :cond_2f
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$4800(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v0

    if-nez v0, :cond_31

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$4900(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Z

    move-result v0

    if-eqz v0, :cond_30

    goto :goto_13

    :cond_30
    iget-object v0, v10, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitParams:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->descriptionStr:Ljava/lang/String;

    goto/16 :goto_1

    :cond_31
    :goto_13
    iget-object v0, v10, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitParams:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->descriptionStrPremium:Ljava/lang/String;

    goto/16 :goto_1

    :goto_14
    iget-object v0, v10, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitParams:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;

    iget v8, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->defaultLimit:I

    iget v7, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->premiumLimit:I

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$5000(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I

    move-result v0

    iget v1, v10, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_32

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$5100(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogFilters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v14

    goto :goto_17

    :cond_32
    const/4 v2, 0x7

    if-ne v1, v2, :cond_33

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getActivatedAccountsCount()I

    move-result v0

    goto :goto_17

    :cond_33
    if-nez v1, :cond_37

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$5200(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, v13}, Lorg/telegram/messenger/MessagesController;->getDialogs(I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_15
    if-ge v4, v1, :cond_36

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    move-object/from16 v13, v36

    check-cast v13, Lorg/telegram/tgnet/TLRPC$Dialog;

    instance-of v5, v13, Lorg/telegram/tgnet/TLRPC$TL_dialogFolder;

    if-eqz v5, :cond_34

    goto :goto_16

    :cond_34
    iget-boolean v5, v13, Lorg/telegram/tgnet/TLRPC$Dialog;->pinned:Z

    if-eqz v5, :cond_35

    add-int/2addr v2, v14

    :cond_35
    :goto_16
    add-int/2addr v4, v14

    const/16 v5, 0x13

    const/4 v13, 0x0

    goto :goto_15

    :cond_36
    move v0, v2

    :cond_37
    :goto_17
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$5300(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v1

    if-nez v1, :cond_3c

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$4900(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Z

    move-result v1

    if-eqz v1, :cond_38

    goto :goto_19

    :cond_38
    if-gez v0, :cond_39

    move v0, v8

    :cond_39
    iget v1, v10, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_3b

    if-le v0, v8, :cond_3a

    sub-int v1, v0, v8

    int-to-float v1, v1

    sub-int v2, v7, v8

    int-to-float v2, v2

    :goto_18
    div-float/2addr v1, v2

    move v13, v1

    goto :goto_1a

    :cond_3a
    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v13, 0x3f000000    # 0.5f

    goto :goto_1a

    :cond_3b
    int-to-float v1, v0

    int-to-float v2, v7

    goto :goto_18

    :cond_3c
    :goto_19
    move v0, v7

    const/high16 v13, 0x3f800000    # 1.0f

    :goto_1a
    int-to-float v1, v8

    int-to-float v2, v7

    div-float v23, v1, v2

    iget v1, v10, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    if-eq v1, v3, :cond_41

    if-eq v1, v6, :cond_41

    const/16 v5, 0x18

    if-eq v1, v5, :cond_41

    const/16 v4, 0x19

    if-eq v1, v4, :cond_40

    const/16 v2, 0x1a

    if-eq v1, v2, :cond_40

    const/16 v14, 0x1d

    if-eq v1, v14, :cond_40

    const/16 v14, 0x16

    if-eq v1, v14, :cond_40

    const/16 v14, 0x17

    if-eq v1, v14, :cond_40

    const/16 v5, 0x13

    if-eq v1, v5, :cond_40

    const/16 v2, 0x1e

    if-eq v1, v2, :cond_40

    const/16 v2, 0x23

    if-eq v1, v2, :cond_40

    const/16 v2, 0x15

    if-eq v1, v2, :cond_3f

    const/16 v6, 0x1b

    const/16 v5, 0x1c

    if-eq v1, v6, :cond_3e

    const/16 v14, 0x20

    if-eq v1, v5, :cond_42

    if-ne v1, v14, :cond_3d

    goto :goto_1d

    :cond_3d
    const/16 v28, 0x0

    goto :goto_1e

    :cond_3e
    :goto_1b
    const/16 v14, 0x20

    goto :goto_1d

    :cond_3f
    :goto_1c
    const/16 v5, 0x1c

    const/16 v6, 0x1b

    goto :goto_1b

    :cond_40
    const/16 v2, 0x15

    goto :goto_1c

    :cond_41
    const/16 v2, 0x15

    const/16 v4, 0x19

    goto :goto_1c

    :cond_42
    :goto_1d
    const/16 v28, 0x1

    :goto_1e
    if-eqz v28, :cond_43

    const/16 v29, 0x0

    goto :goto_1f

    :cond_43
    move/from16 v29, v0

    :goto_1f
    const/high16 v0, 0x41600000    # 14.0f

    const/16 v14, 0x11

    const/16 v2, 0xb

    if-eq v1, v2, :cond_45

    const/16 v2, 0x22

    if-ne v1, v2, :cond_44

    goto :goto_20

    :cond_44
    const/high16 v2, 0x41600000    # 14.0f

    const/4 v14, 0x2

    const/16 v31, 0x1e

    goto/16 :goto_2f

    :cond_45
    :goto_20
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$5400(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesController;->premiumFeaturesBlocked()Z

    move-result v1

    if-nez v1, :cond_44

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$5500(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_46

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$5500(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_47

    :cond_46
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$3400(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_44

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$3400(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$3300(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_44

    :cond_47
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$5500(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$3400(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_21

    :cond_48
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$5500(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Ljava/util/ArrayList;

    move-result-object v1

    :goto_21
    new-instance v2, Lorg/telegram/ui/Components/AvatarsImageView;

    const/4 v3, 0x0

    invoke-direct {v2, v11, v3}, Lorg/telegram/ui/Components/AvatarsImageView;-><init>(Landroid/content/Context;Z)V

    iget-object v3, v2, Lorg/telegram/ui/Components/AvatarsImageView;->avatarsDrawable:Lorg/telegram/ui/Components/AvatarsDrawable;

    const v4, 0x40551eb8    # 3.33f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    iput v4, v3, Lorg/telegram/ui/Components/AvatarsDrawable;->strokeWidth:I

    const/high16 v3, 0x42900000    # 72.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/AvatarsImageView;->setSize(I)V

    const v3, 0x3ecccccd    # 0.4f

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/AvatarsImageView;->setStepFactor(F)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x3

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/AvatarsImageView;->setCount(I)V

    const/4 v4, 0x0

    :goto_22
    if-ge v4, v3, :cond_49

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$5600(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I

    move-result v6

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    invoke-virtual {v6, v5}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v5

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$5700(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I

    move-result v6

    invoke-virtual {v2, v4, v6, v5}, Lorg/telegram/ui/Components/AvatarsImageView;->setObject(IILorg/telegram/tgnet/TLObject;)V

    const/4 v5, 0x1

    add-int/2addr v4, v5

    goto :goto_22

    :cond_49
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/AvatarsImageView;->commitTransition(Z)V

    sub-int/2addr v3, v5

    const/16 v31, 0x1e

    mul-int/lit8 v3, v3, 0x1e

    add-int/lit8 v37, v3, 0x48

    const/16 v42, 0x0

    const/16 v43, 0xd

    const/16 v38, 0x48

    const/16 v39, 0x1

    const/16 v40, 0x0

    const/16 v41, 0x10

    invoke-static/range {v37 .. v43}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v11}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v14}, Landroid/widget/TextView;->setGravity(I)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 v4, 0x1

    const/high16 v5, 0x41a00000    # 20.0f

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$5800(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    sget v5, Lorg/telegram/messenger/R$string;->InvitePremiumBlockedTitle:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v42, 0x20

    const/16 v43, 0x9

    const/16 v37, -0x1

    const/16 v38, -0x2

    const/16 v40, 0x20

    const/16 v41, 0x0

    invoke-static/range {v37 .. v43}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v9, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v11}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v14}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v5, 0x1

    invoke-virtual {v3, v5, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$5900(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v43, 0x13

    invoke-static/range {v37 .. v43}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v9, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget v5, v10, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    const/16 v6, 0x22

    if-ne v5, v6, :cond_4a

    const/4 v5, 0x1

    goto :goto_23

    :cond_4a
    const/4 v5, 0x0

    :goto_23
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$3400(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_4b

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$3400(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$5500(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v6, v7, :cond_4b

    const/4 v6, 0x1

    goto :goto_24

    :cond_4b
    const/4 v6, 0x0

    :goto_24
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_4e

    if-eqz v5, :cond_4c

    sget v2, Lorg/telegram/messenger/R$string;->InviteCallMessagePremiumBlockedOne:I

    goto :goto_25

    :cond_4c
    if-eqz v6, :cond_4d

    sget v2, Lorg/telegram/messenger/R$string;->InviteMessagePremiumBlockedOne:I

    goto :goto_25

    :cond_4d
    sget v2, Lorg/telegram/messenger/R$string;->InvitePremiumBlockedOne:I

    :goto_25
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$6000(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I

    move-result v5

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v5, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/UserObject;->getForcedFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/Object;

    aput-object v1, v7, v6

    invoke-static {v2, v7}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_29

    :cond_4e
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_51

    if-eqz v5, :cond_4f

    sget v2, Lorg/telegram/messenger/R$string;->InviteCallMessagePremiumBlockedTwo:I

    goto :goto_26

    :cond_4f
    if-eqz v6, :cond_50

    sget v2, Lorg/telegram/messenger/R$string;->InviteMessagePremiumBlockedTwo:I

    goto :goto_26

    :cond_50
    sget v2, Lorg/telegram/messenger/R$string;->InvitePremiumBlockedTwo:I

    :goto_26
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$6100(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I

    move-result v5

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v5, v7}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/UserObject;->getForcedFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$6200(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I

    move-result v7

    invoke-static {v7}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v7, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/UserObject;->getForcedFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v5, v7, v6

    aput-object v1, v7, v8

    invoke-static {v2, v7}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_29

    :cond_51
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_54

    if-eqz v5, :cond_52

    sget v2, Lorg/telegram/messenger/R$string;->InviteCallMessagePremiumBlockedThree:I

    goto :goto_27

    :cond_52
    if-eqz v6, :cond_53

    sget v2, Lorg/telegram/messenger/R$string;->InviteMessagePremiumBlockedThree:I

    goto :goto_27

    :cond_53
    sget v2, Lorg/telegram/messenger/R$string;->InvitePremiumBlockedThree:I

    :goto_27
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$6300(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I

    move-result v5

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v5, v7}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/UserObject;->getForcedFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$6400(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I

    move-result v6

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v6, v8}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/messenger/UserObject;->getForcedFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v6

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$6500(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I

    move-result v7

    invoke-static {v7}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v7, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/UserObject;->getForcedFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v5, v7, v12

    const/4 v5, 0x1

    aput-object v6, v7, v5

    aput-object v1, v7, v8

    invoke-static {v2, v7}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_29

    :cond_54
    if-eqz v5, :cond_55

    const-string v5, "InviteCallMessagePremiumBlockedMany"

    goto :goto_28

    :cond_55
    if-eqz v6, :cond_56

    const-string v5, "InviteMessagePremiumBlockedMany"

    goto :goto_28

    :cond_56
    const-string v5, "InvitePremiumBlockedMany"

    :goto_28
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x2

    sub-int/2addr v6, v7

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$6600(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I

    move-result v7

    invoke-static {v7}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v7, v12}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v7

    invoke-static {v7}, Lorg/telegram/messenger/UserObject;->getForcedFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v7

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$6700(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I

    move-result v12

    invoke-static {v12}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v12, v0}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getForcedFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    const/4 v12, 0x2

    new-array v14, v12, [Ljava/lang/Object;

    aput-object v7, v14, v8

    aput-object v0, v14, v13

    invoke-static {v5, v6, v14}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v12

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-static {v10, v5}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$6800(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;I)I

    move-result v5

    invoke-virtual {v2, v1, v5}, Lorg/telegram/ui/Components/AvatarsImageView;->setPlus(II)V

    move-object v1, v0

    :goto_29
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$5500(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_57

    const/4 v0, 0x0

    goto :goto_2a

    :cond_57
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$5500(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_2a
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$3400(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_58

    const/4 v1, 0x0

    goto :goto_2b

    :cond_58
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$3400(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_2b
    sub-int v2, v0, v1

    if-lez v2, :cond_5b

    const/4 v2, 0x1

    if-ne v0, v2, :cond_59

    if-eq v1, v2, :cond_5b

    :cond_59
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$300(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Z

    move-result v0

    if-eqz v0, :cond_5b

    new-instance v0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$6900(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v11, v2, v1}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const v1, 0x3ca3d70a    # 0.02f

    const v2, 0x3f99999a    # 1.2f

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;FF)V

    sget v1, Lorg/telegram/messenger/R$string;->InvitePremiumBlockedSubscribe:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView$$ExternalSyntheticLambda0;

    invoke-direct {v2, v9}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->setButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$7000(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I

    move-result v1

    int-to-float v1, v1

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v1, v2

    const/high16 v2, 0x40800000    # 4.0f

    add-float v20, v1, v2

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$7100(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I

    move-result v1

    int-to-float v1, v1

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v1, v3

    add-float v22, v1, v2

    const/16 v21, 0x0

    const/high16 v23, 0x41900000    # 18.0f

    const/16 v18, -0x1

    const/16 v19, 0x30

    invoke-static/range {v18 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView$1;

    invoke-direct {v0, v9, v11, v10}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView$1;-><init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;Landroid/content/Context;Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)V

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$7300(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lorg/telegram/messenger/R$string;->InvitePremiumBlockedOr:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v33, 0xc

    const/16 v34, 0x14

    const/16 v28, 0xbe

    const/16 v29, -0x2

    const/16 v30, 0x1

    const/16 v31, 0xc

    const/16 v32, 0x0

    invoke-static/range {v28 .. v34}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v11}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 v1, 0x1

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$7400(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    invoke-static {v4, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    sget v1, Lorg/telegram/messenger/R$string;->InviteBlockedTitle:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v17, 0x20

    const/16 v18, 0x9

    const/4 v12, -0x1

    const/4 v13, -0x2

    const/4 v14, 0x1

    const/16 v15, 0x20

    const/16 v16, 0x0

    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v11}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v1, 0x1

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$7500(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-static {v4, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$5500(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v2, v1, :cond_5a

    sget v1, Lorg/telegram/messenger/R$string;->InviteBlockedOneMessage:I

    :goto_2c
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2d

    :cond_5a
    sget v1, Lorg/telegram/messenger/R$string;->InviteBlockedManyMessage:I

    goto :goto_2c

    :goto_2d
    const/16 v7, 0x20

    const/16 v8, 0x13

    const/4 v2, -0x1

    const/4 v3, -0x2

    const/4 v4, 0x1

    const/16 v5, 0x20

    const/4 v6, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2e

    :cond_5b
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    const/4 v0, 0x1

    iput-boolean v0, v10, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonSetSubscribe:Z

    :goto_2e
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->updatePremiumButtonText()V

    return-void

    :goto_2f
    iget v0, v10, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    const/16 v15, 0x8

    const/16 v1, 0x1f

    if-eq v0, v1, :cond_64

    const/16 v5, 0x22

    if-eq v0, v5, :cond_64

    new-instance v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView$2;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$7600(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v24

    move-object/from16 v32, v0

    const/16 v35, 0x1f

    move-object/from16 v1, p0

    const/16 v27, 0x1a

    const/16 v37, 0x15

    const/high16 v38, 0x41600000    # 14.0f

    move-object/from16 v2, p2

    const/16 v14, 0x12

    move v3, v12

    const/4 v12, 0x2

    move/from16 v4, v29

    const/16 v14, 0x13

    const/16 v21, 0x18

    move v5, v7

    const/16 v7, 0x14

    move/from16 v6, v23

    const/16 v14, 0x1f

    move-object/from16 v7, v24

    move/from16 v21, v8

    move-object/from16 v8, p1

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView$2;-><init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;Landroid/content/Context;IIIFLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)V

    iput-object v0, v10, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitPreviewView:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    if-eqz v28, :cond_5d

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$4500(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    move-result-object v0

    if-eqz v0, :cond_61

    iget-object v0, v10, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitPreviewView:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$4500(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    move-result-object v1

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$7700(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;

    move-result-object v2

    if-eqz v2, :cond_5c

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$7700(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;

    move-result-object v2

    iget-boolean v2, v2, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;->boostedNow:Z

    if-eqz v2, :cond_5c

    const/4 v2, 0x1

    goto :goto_30

    :cond_5c
    const/4 v2, 0x0

    :goto_30
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->setBoosts(Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;Z)V

    goto :goto_33

    :cond_5d
    invoke-virtual {v0, v13}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->setBagePosition(F)V

    iget-object v0, v10, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitPreviewView:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    iget v1, v10, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->setType(I)V

    iget-object v0, v10, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitPreviewView:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->defaultCount:Landroid/widget/TextView;

    invoke-virtual {v0, v15}, Landroid/view/View;->setVisibility(I)V

    if-eqz v22, :cond_5e

    iget-object v0, v10, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitPreviewView:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->setPremiumLocked()V

    goto :goto_33

    :cond_5e
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$7800(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v0

    if-nez v0, :cond_5f

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$4900(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Z

    move-result v0

    if-eqz v0, :cond_61

    :cond_5f
    iget-object v0, v10, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitPreviewView:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->premiumCount:Landroid/widget/TextView;

    invoke-virtual {v0, v15}, Landroid/view/View;->setVisibility(I)V

    iget v0, v10, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_60

    iget-object v0, v10, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitPreviewView:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->defaultCount:Landroid/widget/TextView;

    const-string v1, "2 GB"

    :goto_31
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_32

    :cond_60
    iget-object v0, v10, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitPreviewView:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->defaultCount:Landroid/widget/TextView;

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_31

    :goto_32
    iget-object v0, v10, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitPreviewView:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->defaultCount:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_61
    :goto_33
    iget v0, v10, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    if-eq v0, v12, :cond_62

    const/4 v1, 0x5

    if-ne v0, v1, :cond_63

    :cond_62
    iget-object v0, v10, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitPreviewView:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->setDelayedAnimation()V

    :cond_63
    iget-object v0, v10, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitPreviewView:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    const/4 v7, -0x4

    const/4 v8, 0x0

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_34

    :cond_64
    const/16 v14, 0x1f

    const/high16 v38, 0x41600000    # 14.0f

    :goto_34
    iget v0, v10, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    const/4 v1, -0x2

    if-ne v0, v14, :cond_65

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v11}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v11}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$drawable;->large_boosts:I

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v3, 0x11

    invoke-static {v1, v1, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v2, 0x429e0000    # 79.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->createCircleDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v44, 0x4f

    const/16 v45, 0x4f

    const/16 v46, 0x1

    const/16 v47, 0x0

    const/16 v48, 0x17

    invoke-static/range {v44 .. v50}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v9, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_65
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v11}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v9, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->title:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget v0, v10, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    if-ne v0, v14, :cond_66

    iget-object v0, v9, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->title:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->BoostingAdditionalFeaturesTitle:I

    move v5, v2

    const/16 v2, 0x20

    :goto_35
    const/16 v3, 0x1c

    :goto_36
    const/16 v4, 0x16

    goto/16 :goto_3b

    :cond_66
    const/16 v2, 0x20

    if-ne v0, v2, :cond_67

    goto :goto_38

    :cond_67
    const/16 v3, 0x13

    if-ne v0, v3, :cond_68

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/GroupColorActivity;

    if-eqz v0, :cond_69

    iget-object v0, v9, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->title:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->BoostingGroupBoostWhatAreBoosts:I

    :goto_37
    move v5, v3

    goto :goto_35

    :cond_68
    const/16 v3, 0x1e

    if-ne v0, v3, :cond_6a

    :cond_69
    :goto_38
    iget-object v0, v9, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->title:Landroid/widget/TextView;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$7900(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Ljava/lang/String;

    move-result-object v3

    move-object v5, v3

    const/16 v3, 0x1c

    const/16 v4, 0x16

    goto/16 :goto_3c

    :cond_6a
    const/16 v3, 0x23

    if-ne v0, v3, :cond_6b

    iget-object v0, v9, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->title:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->UnlockBoostChannelAutotranslation:I

    goto :goto_37

    :cond_6b
    const/16 v3, 0x12

    if-ne v0, v3, :cond_6d

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$4500(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    move-result-object v0

    iget v0, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->level:I

    if-nez v0, :cond_6c

    iget-object v0, v9, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->title:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->BoostingEnableStories:I

    goto :goto_37

    :cond_6c
    iget-object v0, v9, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->title:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->BoostingIncreaseLevel:I

    goto :goto_37

    :cond_6d
    const/16 v3, 0x15

    if-ne v0, v3, :cond_6e

    iget-object v0, v9, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->title:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->ReactionCustomReactions:I

    goto :goto_37

    :cond_6e
    const/16 v3, 0x14

    if-ne v0, v3, :cond_6f

    iget-object v0, v9, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->title:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->BoostingEnableColor:I

    goto :goto_37

    :cond_6f
    const/16 v3, 0x18

    if-ne v0, v3, :cond_70

    iget-object v0, v9, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->title:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->BoostingEnableProfileColor:I

    goto :goto_37

    :cond_70
    const/16 v3, 0x1b

    if-ne v0, v3, :cond_71

    iget-object v0, v9, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->title:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->BoostingEnableLinkIcon:I

    goto :goto_37

    :cond_71
    const/16 v3, 0x1c

    if-ne v0, v3, :cond_72

    iget-object v0, v9, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->title:Landroid/widget/TextView;

    sget v4, Lorg/telegram/messenger/R$string;->BoostingEnableProfileIcon:I

    :goto_39
    move v5, v4

    goto :goto_36

    :cond_72
    const/16 v4, 0x19

    if-ne v0, v4, :cond_73

    iget-object v0, v9, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->title:Landroid/widget/TextView;

    sget v4, Lorg/telegram/messenger/R$string;->BoostingEnableEmojiStatus:I

    goto :goto_39

    :cond_73
    const/16 v4, 0x1a

    if-ne v0, v4, :cond_74

    iget-object v0, v9, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->title:Landroid/widget/TextView;

    sget v4, Lorg/telegram/messenger/R$string;->BoostingEnableWearCollectibles:I

    goto :goto_39

    :cond_74
    const/16 v4, 0x1d

    if-ne v0, v4, :cond_75

    iget-object v0, v9, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->title:Landroid/widget/TextView;

    sget v4, Lorg/telegram/messenger/R$string;->BoostingEnableGroupEmojiPack:I

    goto :goto_39

    :cond_75
    const/16 v4, 0x16

    if-eq v0, v4, :cond_7c

    const/16 v5, 0x17

    if-ne v0, v5, :cond_76

    goto :goto_3a

    :cond_76
    const/16 v5, 0xb

    if-ne v0, v5, :cond_78

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$300(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Z

    move-result v0

    if-eqz v0, :cond_77

    iget-object v0, v9, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->title:Landroid/widget/TextView;

    sget v5, Lorg/telegram/messenger/R$string;->ChannelInviteViaLink:I

    goto :goto_3b

    :cond_77
    iget-object v0, v9, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->title:Landroid/widget/TextView;

    sget v5, Lorg/telegram/messenger/R$string;->ChannelInviteViaLinkRestricted:I

    goto :goto_3b

    :cond_78
    const/16 v5, 0x22

    if-ne v0, v5, :cond_79

    iget-object v0, v9, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->title:Landroid/widget/TextView;

    sget v5, Lorg/telegram/messenger/R$string;->CallInviteViaLinkTitle:I

    goto :goto_3b

    :cond_79
    const/4 v5, 0x6

    if-ne v0, v5, :cond_7a

    iget-object v0, v9, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->title:Landroid/widget/TextView;

    sget v5, Lorg/telegram/messenger/R$string;->FileTooLarge:I

    goto :goto_3b

    :cond_7a
    const/16 v5, 0xe

    if-ne v0, v5, :cond_7b

    iget v0, v10, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->storiesCount:I

    const/4 v5, 0x1

    if-le v0, v5, :cond_7b

    iget-object v0, v9, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->title:Landroid/widget/TextView;

    sget v5, Lorg/telegram/messenger/R$string;->CreateMultipleStories:I

    goto :goto_3b

    :cond_7b
    iget-object v0, v9, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->title:Landroid/widget/TextView;

    sget v5, Lorg/telegram/messenger/R$string;->LimitReached:I

    goto :goto_3b

    :cond_7c
    :goto_3a
    iget-object v0, v9, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->title:Landroid/widget/TextView;

    sget v5, Lorg/telegram/messenger/R$string;->BoostingEnableWallpaper:I

    :goto_3b
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_3c
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v9, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->title:Landroid/widget/TextView;

    const/4 v5, 0x1

    const/high16 v6, 0x41a00000    # 20.0f

    invoke-virtual {v0, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, v9, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->title:Landroid/widget/TextView;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$8000(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, v9, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->title:Landroid/widget/TextView;

    const/16 v6, 0x11

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setGravity(I)V

    iget v0, v10, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    const/16 v6, 0x13

    if-eq v0, v6, :cond_7f

    if-eq v0, v2, :cond_7f

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$1300(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Z

    move-result v0

    if-eqz v0, :cond_7d

    goto :goto_3f

    :cond_7d
    iget-object v0, v9, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->title:Landroid/widget/TextView;

    if-eqz v22, :cond_7e

    const/16 v32, 0x8

    goto :goto_3d

    :cond_7e
    const/16 v32, 0x16

    :goto_3d
    const/16 v33, 0x0

    const/16 v34, 0xa

    const/16 v28, -0x2

    const/16 v29, -0x2

    const/16 v30, 0x1

    const/16 v31, 0x0

    :goto_3e
    invoke-static/range {v28 .. v34}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_42

    :cond_7f
    :goto_3f
    new-instance v0, Lorg/telegram/ui/Components/Premium/boosts/BoostCounterView;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$8100(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v6

    invoke-direct {v0, v11, v6}, Lorg/telegram/ui/Components/Premium/boosts/BoostCounterView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v9, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->boostCounterView:Lorg/telegram/ui/Components/Premium/boosts/BoostCounterView;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$7700(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;

    move-result-object v6

    iget v6, v6, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;->boostCount:I

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Lorg/telegram/ui/Components/Premium/boosts/BoostCounterView;->setCount(IZ)V

    iget v0, v10, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    if-ne v0, v2, :cond_80

    iget-object v0, v9, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->boostCounterView:Lorg/telegram/ui/Components/Premium/boosts/BoostCounterView;

    invoke-virtual {v0, v15}, Landroid/view/View;->setVisibility(I)V

    :cond_80
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$8200(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Z

    move-result v0

    if-eqz v0, :cond_82

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v11}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v9, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->titleLinearLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, v9, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->titleLinearLayout:Landroid/widget/LinearLayout;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    iget-object v0, v9, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->titleLinearLayout:Landroid/widget/LinearLayout;

    iget-object v6, v9, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->title:Landroid/widget/TextView;

    invoke-static {v1, v1, v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFI)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v9, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->titleLinearLayout:Landroid/widget/LinearLayout;

    iget-object v1, v9, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->boostCounterView:Lorg/telegram/ui/Components/Premium/boosts/BoostCounterView;

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v28, -0x2

    const/16 v29, -0x2

    const/16 v30, 0x30

    const/16 v31, 0x0

    const/16 v32, 0x2

    invoke-static/range {v28 .. v34}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v9, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->titleLinearLayout:Landroid/widget/LinearLayout;

    if-eqz v22, :cond_81

    const/16 v32, 0x8

    goto :goto_40

    :cond_81
    const/16 v32, 0x16

    :goto_40
    const/16 v33, 0xc

    const/16 v34, 0x9

    const/16 v28, -0x2

    const/16 v29, -0x2

    const/16 v30, 0x1

    const/16 v31, 0xc

    goto :goto_3e

    :cond_82
    iget-object v0, v9, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->title:Landroid/widget/TextView;

    if-eqz v22, :cond_83

    const/16 v32, 0x8

    goto :goto_41

    :cond_83
    const/16 v32, 0x16

    :goto_41
    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v28, -0x2

    const/16 v29, -0x2

    const/16 v30, 0x1

    const/16 v31, 0x0

    invoke-static/range {v28 .. v34}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-static/range {v38 .. v38}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$8300(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v6

    invoke-static {v4, v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-static {v2, v4}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v2, Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    invoke-static/range {v38 .. v38}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$8400(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I

    move-result v4

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$800(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)J

    move-result-wide v6

    neg-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v4

    new-instance v6, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v6}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$8500(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I

    move-result v7

    invoke-virtual {v6, v7, v4}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILorg/telegram/tgnet/TLRPC$Chat;)V

    invoke-virtual {v2, v4, v6}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    const/high16 v6, 0x41e00000    # 28.0f

    invoke-static {v3, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    if-eqz v4, :cond_84

    iget-object v3, v4, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_84
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/high16 v4, 0x41500000    # 13.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$8600(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    invoke-static {v5, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v25, 0x41400000    # 12.0f

    const/16 v26, 0x0

    const/16 v20, -0x2

    const/high16 v21, -0x40000000    # -2.0f

    const/16 v22, 0x10

    const/high16 v23, 0x42100000    # 36.0f

    const/16 v24, 0x0

    invoke-static/range {v20 .. v26}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v25, 0x12

    const/16 v26, 0x0

    const/16 v21, 0x1c

    const/16 v22, 0x50

    const/16 v23, 0x12

    const/16 v24, 0x0

    invoke-static/range {v20 .. v26}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/animation/LayoutTransition;

    invoke-direct {v1}, Landroid/animation/LayoutTransition;-><init>()V

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/animation/LayoutTransition;->setDuration(J)V

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    iget-object v1, v9, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->boostCounterView:Lorg/telegram/ui/Components/Premium/boosts/BoostCounterView;

    const/16 v21, -0x2

    const/16 v22, 0x30

    const/16 v23, -0x1e

    const/16 v24, 0x2

    invoke-static/range {v20 .. v26}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v25, 0x0

    const/16 v26, 0xc

    const/16 v21, 0x26

    const/16 v22, 0x11

    const/16 v23, 0x0

    const/16 v24, -0x4

    invoke-static/range {v20 .. v26}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v0}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;)V

    new-instance v1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView$$ExternalSyntheticLambda1;

    invoke-direct {v1, v9}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_42
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v11}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v9, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->description:Landroid/widget/TextView;

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v9, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->description:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, v9, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->description:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, v9, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->description:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineSpacingExtra()F

    move-result v1

    iget-object v2, v9, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->description:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    move-result v2

    const v3, 0x3f8ccccd    # 1.1f

    mul-float v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    iget v0, v10, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    const/16 v1, 0x12

    if-ne v0, v1, :cond_86

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$8700(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/Stories/DarkThemeResourceProvider;

    if-eqz v0, :cond_85

    iget-object v0, v9, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->description:Landroid/widget/TextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$8800(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    :goto_43
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_45

    :cond_85
    iget-object v0, v9, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->description:Landroid/widget/TextView;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$8900(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    :goto_44
    invoke-static {v5, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    goto :goto_43

    :cond_86
    iget-object v0, v9, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->description:Landroid/widget/TextView;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$9000(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    goto :goto_44

    :goto_45
    iget v0, v10, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_87

    iget-object v0, v9, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->description:Landroid/widget/TextView;

    const/16 v6, 0x18

    const/16 v7, 0x11

    const/4 v1, -0x2

    const/4 v2, -0x2

    const/4 v3, 0x1

    const/16 v4, 0x18

    const/4 v5, -0x2

    :goto_46
    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_47

    :cond_87
    iget-object v0, v9, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->description:Landroid/widget/TextView;

    const/16 v6, 0x18

    const/16 v7, 0x18

    const/4 v1, -0x2

    const/4 v2, -0x2

    const/4 v3, 0x1

    const/16 v4, 0x18

    const/4 v5, 0x0

    goto :goto_46

    :goto_47
    iget v0, v10, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    if-ne v0, v14, :cond_88

    iget-object v0, v9, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->description:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v1, 0x41700000    # 15.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object v0, v9, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->title:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object v0, v9, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->title:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :cond_88
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->updatePremiumButtonText()V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;

    invoke-direct {p1}, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p1, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;->transitionFromLeft:Z

    const/4 v0, 0x0

    iput-boolean v0, p1, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;->allowNestedScroll:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    new-instance v1, Lorg/telegram/ui/PremiumPreviewFragment;

    const-string v2, "invite_privacy"

    invoke-direct {v1, v2}, Lorg/telegram/ui/PremiumPreviewFragment;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showAsSheet(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;)[Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$800(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->of(J)Lorg/telegram/ui/ChatActivity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method


# virtual methods
.method public recreateTitleAndDescription()V
    .locals 12

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->description:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$8200(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->titleLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->titleLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->titleLinearLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->title:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->titleLinearLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->boostCounterView:Lorg/telegram/ui/Components/Premium/boosts/BoostCounterView;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->titleLinearLayout:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->titleLinearLayout:Landroid/widget/LinearLayout;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->titleLinearLayout:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->title:Landroid/widget/TextView;

    const/4 v7, -0x2

    invoke-static {v7, v7, v5, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFI)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v6, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->titleLinearLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->boostCounterView:Lorg/telegram/ui/Components/Premium/boosts/BoostCounterView;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v5, -0x2

    const/4 v6, -0x2

    const/16 v7, 0x30

    const/4 v8, 0x0

    const/4 v9, 0x2

    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->titleLinearLayout:Landroid/widget/LinearLayout;

    const/16 v9, 0xc

    const/16 v10, 0x9

    const/4 v4, -0x2

    const/4 v5, -0x2

    const/4 v6, 0x1

    const/16 v7, 0x19

    :goto_0
    const/16 v8, 0x16

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {p0, v3, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->title:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->title:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->title:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->title:Landroid/widget/TextView;

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-virtual {v3, v2, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->title:Landroid/widget/TextView;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    iget-object v5, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-static {v5}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$9100(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->title:Landroid/widget/TextView;

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->title:Landroid/widget/TextView;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v4, -0x2

    const/4 v5, -0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    goto :goto_0

    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->description:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->description:Landroid/widget/TextView;

    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->description:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLineSpacingExtra()F

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->description:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    move-result v4

    const v5, 0x3f8ccccd    # 1.1f

    mul-float v4, v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/widget/TextView;->setLineSpacing(FF)V

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->description:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->description:Landroid/widget/TextView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-static {v3}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$9200(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->description:Landroid/widget/TextView;

    const/16 v7, 0x18

    const/16 v8, 0x11

    const/4 v2, -0x2

    const/4 v3, -0x2

    const/4 v4, 0x1

    const/16 v5, 0x18

    const/4 v6, -0x2

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
