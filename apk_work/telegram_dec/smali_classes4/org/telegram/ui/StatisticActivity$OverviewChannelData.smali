.class public Lorg/telegram/ui/StatisticActivity$OverviewChannelData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/StatisticActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OverviewChannelData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/StatisticActivity$OverviewChannelData$Quadruple;
    }
.end annotation


# instance fields
.field followersPrimary:Ljava/lang/String;

.field followersSecondary:Ljava/lang/String;

.field followersTitle:Ljava/lang/String;

.field followersUp:Z

.field notificationsPrimary:Ljava/lang/String;

.field notificationsTitle:Ljava/lang/String;

.field reactionsPerPostPrimary:Ljava/lang/String;

.field reactionsPerPostSecondary:Ljava/lang/String;

.field reactionsPerPostTitle:Ljava/lang/String;

.field reactionsPerPostUp:Z

.field reactionsPerPostVisible:Z

.field reactionsPerStoryPrimary:Ljava/lang/String;

.field reactionsPerStorySecondary:Ljava/lang/String;

.field reactionsPerStoryTitle:Ljava/lang/String;

.field reactionsPerStoryUp:Z

.field reactionsPerStoryVisible:Z

.field sharesPerStoryPrimary:Ljava/lang/String;

.field sharesPerStorySecondary:Ljava/lang/String;

.field sharesPerStoryTitle:Ljava/lang/String;

.field sharesPerStoryUp:Z

.field sharesPerStoryVisible:Z

.field sharesPrimary:Ljava/lang/String;

.field sharesSecondary:Ljava/lang/String;

.field sharesTitle:Ljava/lang/String;

.field sharesUp:Z

.field viewsPerStoryPrimary:Ljava/lang/String;

.field viewsPerStorySecondary:Ljava/lang/String;

.field viewsPerStoryTitle:Ljava/lang/String;

.field viewsPerStoryUp:Z

.field viewsPerStoryVisible:Z

.field viewsPrimary:Ljava/lang/String;

.field viewsSecondary:Ljava/lang/String;

.field viewsTitle:Ljava/lang/String;

.field viewsUp:Z


# direct methods
.method public constructor <init>(Lorg/telegram/tgnet/tl/TL_stats$TL_broadcastStats;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iget-object v6, v1, Lorg/telegram/tgnet/tl/TL_stats$TL_broadcastStats;->reactions_per_post:Lorg/telegram/tgnet/tl/TL_stats$TL_statsAbsValueAndPrev;

    invoke-direct {v0, v6}, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->prepare(Lorg/telegram/tgnet/tl/TL_stats$TL_statsAbsValueAndPrev;)Lorg/telegram/ui/StatisticActivity$OverviewChannelData$Quadruple;

    move-result-object v6

    sget v7, Lorg/telegram/messenger/R$string;->ReactionsPerPost:I

    const-string v8, "ReactionsPerPost"

    invoke-static {v8, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->reactionsPerPostTitle:Ljava/lang/String;

    iget-object v7, v6, Lorg/telegram/ui/StatisticActivity$OverviewChannelData$Quadruple;->fist:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iput-object v7, v0, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->reactionsPerPostPrimary:Ljava/lang/String;

    iget-object v7, v6, Lorg/telegram/ui/StatisticActivity$OverviewChannelData$Quadruple;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iput-object v7, v0, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->reactionsPerPostSecondary:Ljava/lang/String;

    iget-object v7, v6, Lorg/telegram/ui/StatisticActivity$OverviewChannelData$Quadruple;->third:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    iput-boolean v7, v0, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->reactionsPerPostUp:Z

    iget-object v6, v6, Lorg/telegram/ui/StatisticActivity$OverviewChannelData$Quadruple;->fourth:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iput-boolean v6, v0, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->reactionsPerPostVisible:Z

    iget-object v6, v1, Lorg/telegram/tgnet/tl/TL_stats$TL_broadcastStats;->reactions_per_story:Lorg/telegram/tgnet/tl/TL_stats$TL_statsAbsValueAndPrev;

    invoke-direct {v0, v6}, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->prepare(Lorg/telegram/tgnet/tl/TL_stats$TL_statsAbsValueAndPrev;)Lorg/telegram/ui/StatisticActivity$OverviewChannelData$Quadruple;

    move-result-object v6

    sget v7, Lorg/telegram/messenger/R$string;->ReactionsPerStory:I

    const-string v8, "ReactionsPerStory"

    invoke-static {v8, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->reactionsPerStoryTitle:Ljava/lang/String;

    iget-object v7, v6, Lorg/telegram/ui/StatisticActivity$OverviewChannelData$Quadruple;->fist:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iput-object v7, v0, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->reactionsPerStoryPrimary:Ljava/lang/String;

    iget-object v7, v6, Lorg/telegram/ui/StatisticActivity$OverviewChannelData$Quadruple;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iput-object v7, v0, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->reactionsPerStorySecondary:Ljava/lang/String;

    iget-object v7, v6, Lorg/telegram/ui/StatisticActivity$OverviewChannelData$Quadruple;->third:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    iput-boolean v7, v0, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->reactionsPerStoryUp:Z

    iget-object v6, v6, Lorg/telegram/ui/StatisticActivity$OverviewChannelData$Quadruple;->fourth:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iput-boolean v6, v0, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->reactionsPerStoryVisible:Z

    iget-object v6, v1, Lorg/telegram/tgnet/tl/TL_stats$TL_broadcastStats;->views_per_story:Lorg/telegram/tgnet/tl/TL_stats$TL_statsAbsValueAndPrev;

    invoke-direct {v0, v6}, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->prepare(Lorg/telegram/tgnet/tl/TL_stats$TL_statsAbsValueAndPrev;)Lorg/telegram/ui/StatisticActivity$OverviewChannelData$Quadruple;

    move-result-object v6

    sget v7, Lorg/telegram/messenger/R$string;->ViewsPerStory:I

    const-string v8, "ViewsPerStory"

    invoke-static {v8, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->viewsPerStoryTitle:Ljava/lang/String;

    iget-object v7, v6, Lorg/telegram/ui/StatisticActivity$OverviewChannelData$Quadruple;->fist:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iput-object v7, v0, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->viewsPerStoryPrimary:Ljava/lang/String;

    iget-object v7, v6, Lorg/telegram/ui/StatisticActivity$OverviewChannelData$Quadruple;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iput-object v7, v0, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->viewsPerStorySecondary:Ljava/lang/String;

    iget-object v7, v6, Lorg/telegram/ui/StatisticActivity$OverviewChannelData$Quadruple;->third:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    iput-boolean v7, v0, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->viewsPerStoryUp:Z

    iget-object v6, v6, Lorg/telegram/ui/StatisticActivity$OverviewChannelData$Quadruple;->fourth:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iput-boolean v6, v0, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->viewsPerStoryVisible:Z

    iget-object v6, v1, Lorg/telegram/tgnet/tl/TL_stats$TL_broadcastStats;->shares_per_story:Lorg/telegram/tgnet/tl/TL_stats$TL_statsAbsValueAndPrev;

    invoke-direct {v0, v6}, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->prepare(Lorg/telegram/tgnet/tl/TL_stats$TL_statsAbsValueAndPrev;)Lorg/telegram/ui/StatisticActivity$OverviewChannelData$Quadruple;

    move-result-object v6

    sget v7, Lorg/telegram/messenger/R$string;->SharesPerStory:I

    const-string v8, "SharesPerStory"

    invoke-static {v8, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->sharesPerStoryTitle:Ljava/lang/String;

    iget-object v7, v6, Lorg/telegram/ui/StatisticActivity$OverviewChannelData$Quadruple;->fist:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iput-object v7, v0, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->sharesPerStoryPrimary:Ljava/lang/String;

    iget-object v7, v6, Lorg/telegram/ui/StatisticActivity$OverviewChannelData$Quadruple;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iput-object v7, v0, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->sharesPerStorySecondary:Ljava/lang/String;

    iget-object v7, v6, Lorg/telegram/ui/StatisticActivity$OverviewChannelData$Quadruple;->third:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    iput-boolean v7, v0, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->sharesPerStoryUp:Z

    iget-object v6, v6, Lorg/telegram/ui/StatisticActivity$OverviewChannelData$Quadruple;->fourth:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iput-boolean v6, v0, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->sharesPerStoryVisible:Z

    iget-object v6, v1, Lorg/telegram/tgnet/tl/TL_stats$TL_broadcastStats;->followers:Lorg/telegram/tgnet/tl/TL_stats$TL_statsAbsValueAndPrev;

    iget-wide v7, v6, Lorg/telegram/tgnet/tl/TL_stats$TL_statsAbsValueAndPrev;->current:D

    iget-wide v9, v6, Lorg/telegram/tgnet/tl/TL_stats$TL_statsAbsValueAndPrev;->previous:D

    sub-double/2addr v7, v9

    double-to-int v6, v7

    const/high16 v7, 0x42c80000    # 100.0f

    const/4 v8, 0x0

    const-wide/16 v11, 0x0

    cmpl-double v13, v9, v11

    if-nez v13, :cond_0

    const/4 v9, 0x0

    goto :goto_0

    :cond_0
    int-to-float v13, v6

    double-to-float v9, v9

    div-float/2addr v13, v9

    mul-float v13, v13, v7

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v9

    :goto_0
    sget v10, Lorg/telegram/messenger/R$string;->FollowersChartTitle:I

    const-string v13, "FollowersChartTitle"

    invoke-static {v13, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->followersTitle:Ljava/lang/String;

    iget-object v10, v1, Lorg/telegram/tgnet/tl/TL_stats$TL_broadcastStats;->followers:Lorg/telegram/tgnet/tl/TL_stats$TL_statsAbsValueAndPrev;

    iget-wide v13, v10, Lorg/telegram/tgnet/tl/TL_stats$TL_statsAbsValueAndPrev;->current:D

    double-to-int v10, v13

    invoke-static {v10, v5}, Lorg/telegram/messenger/AndroidUtilities;->formatWholeNumber(II)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->followersPrimary:Ljava/lang/String;

    const-string v10, "%s (%.1f%s)"

    const-string v13, "%s (%d%s)"

    const-string v14, "+"

    const-string v15, "%"

    const-string v7, ""

    if-eqz v6, :cond_5

    cmpl-float v16, v9, v8

    if-nez v16, :cond_1

    goto :goto_4

    :cond_1
    float-to-int v8, v9

    int-to-float v11, v8

    cmpl-float v11, v9, v11

    if-nez v11, :cond_3

    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    if-lez v6, :cond_2

    move-object v12, v14

    goto :goto_1

    :cond_2
    move-object v12, v7

    :goto_1
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6, v5}, Lorg/telegram/messenger/AndroidUtilities;->formatWholeNumber(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-array v12, v2, [Ljava/lang/Object;

    aput-object v11, v12, v5

    aput-object v8, v12, v4

    aput-object v15, v12, v3

    invoke-static {v9, v13, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    :goto_2
    iput-object v8, v0, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->followersSecondary:Ljava/lang/String;

    goto :goto_5

    :cond_3
    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    if-lez v6, :cond_4

    move-object v12, v14

    goto :goto_3

    :cond_4
    move-object v12, v7

    :goto_3
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6, v5}, Lorg/telegram/messenger/AndroidUtilities;->formatWholeNumber(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    new-array v12, v2, [Ljava/lang/Object;

    aput-object v11, v12, v5

    aput-object v9, v12, v4

    aput-object v15, v12, v3

    invoke-static {v8, v10, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    :cond_5
    :goto_4
    iput-object v7, v0, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->followersSecondary:Ljava/lang/String;

    :goto_5
    if-ltz v6, :cond_6

    const/4 v6, 0x1

    goto :goto_6

    :cond_6
    const/4 v6, 0x0

    :goto_6
    iput-boolean v6, v0, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->followersUp:Z

    iget-object v6, v1, Lorg/telegram/tgnet/tl/TL_stats$TL_broadcastStats;->shares_per_post:Lorg/telegram/tgnet/tl/TL_stats$TL_statsAbsValueAndPrev;

    iget-wide v8, v6, Lorg/telegram/tgnet/tl/TL_stats$TL_statsAbsValueAndPrev;->current:D

    iget-wide v11, v6, Lorg/telegram/tgnet/tl/TL_stats$TL_statsAbsValueAndPrev;->previous:D

    sub-double/2addr v8, v11

    double-to-int v6, v8

    const-wide/16 v8, 0x0

    cmpl-double v18, v11, v8

    if-nez v18, :cond_7

    const/4 v8, 0x0

    goto :goto_7

    :cond_7
    int-to-float v8, v6

    double-to-float v9, v11

    div-float/2addr v8, v9

    const/high16 v9, 0x42c80000    # 100.0f

    mul-float v8, v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    :goto_7
    sget v9, Lorg/telegram/messenger/R$string;->SharesPerPost:I

    const-string v11, "SharesPerPost"

    invoke-static {v11, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->sharesTitle:Ljava/lang/String;

    iget-object v9, v1, Lorg/telegram/tgnet/tl/TL_stats$TL_broadcastStats;->shares_per_post:Lorg/telegram/tgnet/tl/TL_stats$TL_statsAbsValueAndPrev;

    iget-wide v11, v9, Lorg/telegram/tgnet/tl/TL_stats$TL_statsAbsValueAndPrev;->current:D

    double-to-int v9, v11

    invoke-static {v9, v5}, Lorg/telegram/messenger/AndroidUtilities;->formatWholeNumber(II)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->sharesPrimary:Ljava/lang/String;

    if-eqz v6, :cond_c

    const/4 v9, 0x0

    cmpl-float v11, v8, v9

    if-nez v11, :cond_8

    goto :goto_b

    :cond_8
    float-to-int v9, v8

    int-to-float v11, v9

    cmpl-float v11, v8, v11

    if-nez v11, :cond_a

    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    if-lez v6, :cond_9

    move-object v12, v14

    goto :goto_8

    :cond_9
    move-object v12, v7

    :goto_8
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6, v5}, Lorg/telegram/messenger/AndroidUtilities;->formatWholeNumber(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-array v12, v2, [Ljava/lang/Object;

    aput-object v11, v12, v5

    aput-object v9, v12, v4

    aput-object v15, v12, v3

    invoke-static {v8, v13, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    :goto_9
    iput-object v8, v0, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->sharesSecondary:Ljava/lang/String;

    goto :goto_c

    :cond_a
    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    if-lez v6, :cond_b

    move-object v12, v14

    goto :goto_a

    :cond_b
    move-object v12, v7

    :goto_a
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6, v5}, Lorg/telegram/messenger/AndroidUtilities;->formatWholeNumber(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    new-array v12, v2, [Ljava/lang/Object;

    aput-object v11, v12, v5

    aput-object v8, v12, v4

    aput-object v15, v12, v3

    invoke-static {v9, v10, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_9

    :cond_c
    :goto_b
    iput-object v7, v0, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->sharesSecondary:Ljava/lang/String;

    :goto_c
    if-ltz v6, :cond_d

    const/4 v6, 0x1

    goto :goto_d

    :cond_d
    const/4 v6, 0x0

    :goto_d
    iput-boolean v6, v0, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->sharesUp:Z

    iget-object v6, v1, Lorg/telegram/tgnet/tl/TL_stats$TL_broadcastStats;->views_per_post:Lorg/telegram/tgnet/tl/TL_stats$TL_statsAbsValueAndPrev;

    iget-wide v8, v6, Lorg/telegram/tgnet/tl/TL_stats$TL_statsAbsValueAndPrev;->current:D

    iget-wide v11, v6, Lorg/telegram/tgnet/tl/TL_stats$TL_statsAbsValueAndPrev;->previous:D

    sub-double/2addr v8, v11

    double-to-int v6, v8

    const-wide/16 v8, 0x0

    cmpl-double v17, v11, v8

    if-nez v17, :cond_e

    const/4 v9, 0x0

    goto :goto_e

    :cond_e
    int-to-float v8, v6

    double-to-float v9, v11

    div-float/2addr v8, v9

    const/high16 v9, 0x42c80000    # 100.0f

    mul-float v8, v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v9

    :goto_e
    sget v8, Lorg/telegram/messenger/R$string;->ViewsPerPost:I

    const-string v11, "ViewsPerPost"

    invoke-static {v11, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->viewsTitle:Ljava/lang/String;

    iget-object v8, v1, Lorg/telegram/tgnet/tl/TL_stats$TL_broadcastStats;->views_per_post:Lorg/telegram/tgnet/tl/TL_stats$TL_statsAbsValueAndPrev;

    iget-wide v11, v8, Lorg/telegram/tgnet/tl/TL_stats$TL_statsAbsValueAndPrev;->current:D

    double-to-int v8, v11

    invoke-static {v8, v5}, Lorg/telegram/messenger/AndroidUtilities;->formatWholeNumber(II)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->viewsPrimary:Ljava/lang/String;

    if-eqz v6, :cond_13

    const/4 v8, 0x0

    cmpl-float v8, v9, v8

    if-nez v8, :cond_f

    goto :goto_12

    :cond_f
    float-to-int v8, v9

    int-to-float v11, v8

    cmpl-float v11, v9, v11

    if-nez v11, :cond_11

    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    if-lez v6, :cond_10

    goto :goto_f

    :cond_10
    move-object v14, v7

    :goto_f
    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6, v5}, Lorg/telegram/messenger/AndroidUtilities;->formatWholeNumber(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v7, v2, v5

    aput-object v8, v2, v4

    aput-object v15, v2, v3

    invoke-static {v9, v13, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_10
    iput-object v2, v0, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->viewsSecondary:Ljava/lang/String;

    goto :goto_13

    :cond_11
    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    if-lez v6, :cond_12

    goto :goto_11

    :cond_12
    move-object v14, v7

    :goto_11
    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6, v5}, Lorg/telegram/messenger/AndroidUtilities;->formatWholeNumber(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v7, v2, v5

    aput-object v9, v2, v4

    aput-object v15, v2, v3

    invoke-static {v8, v10, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_10

    :cond_13
    :goto_12
    iput-object v7, v0, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->viewsSecondary:Ljava/lang/String;

    :goto_13
    if-ltz v6, :cond_14

    const/4 v2, 0x1

    goto :goto_14

    :cond_14
    const/4 v2, 0x0

    :goto_14
    iput-boolean v2, v0, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->viewsUp:Z

    iget-object v1, v1, Lorg/telegram/tgnet/tl/TL_stats$TL_broadcastStats;->enabled_notifications:Lorg/telegram/tgnet/tl/TL_stats$TL_statsPercentValue;

    iget-wide v6, v1, Lorg/telegram/tgnet/tl/TL_stats$TL_statsPercentValue;->part:D

    iget-wide v1, v1, Lorg/telegram/tgnet/tl/TL_stats$TL_statsPercentValue;->total:D

    div-double/2addr v6, v1

    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    mul-double v6, v6, v1

    double-to-float v1, v6

    sget v2, Lorg/telegram/messenger/R$string;->EnabledNotifications:I

    const-string v6, "EnabledNotifications"

    invoke-static {v6, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->notificationsTitle:Ljava/lang/String;

    float-to-int v2, v1

    int-to-float v6, v2

    cmpl-float v6, v1, v6

    if-nez v6, :cond_15

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v5

    aput-object v15, v3, v4

    const-string v2, "%d%s"

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_15
    iput-object v1, v0, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->notificationsPrimary:Ljava/lang/String;

    goto :goto_16

    :cond_15
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v5

    aput-object v15, v3, v4

    const-string v1, "%.2f%s"

    invoke-static {v2, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_15

    :goto_16
    return-void
.end method

.method private prepare(Lorg/telegram/tgnet/tl/TL_stats$TL_statsAbsValueAndPrev;)Lorg/telegram/ui/StatisticActivity$OverviewChannelData$Quadruple;
    .locals 14

    const/4 v0, 0x2

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-wide v4, p1, Lorg/telegram/tgnet/tl/TL_stats$TL_statsAbsValueAndPrev;->current:D

    iget-wide v6, p1, Lorg/telegram/tgnet/tl/TL_stats$TL_statsAbsValueAndPrev;->previous:D

    sub-double/2addr v4, v6

    double-to-int v4, v4

    const/4 v5, 0x0

    const-wide/16 v8, 0x0

    cmpl-double v10, v6, v8

    if-nez v10, :cond_0

    const/4 v6, 0x0

    goto :goto_0

    :cond_0
    int-to-float v10, v4

    double-to-float v6, v6

    div-float/2addr v10, v6

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float v10, v10, v6

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v6

    :goto_0
    iget-wide v10, p1, Lorg/telegram/tgnet/tl/TL_stats$TL_statsAbsValueAndPrev;->current:D

    double-to-int v7, v10

    invoke-static {v7, v3}, Lorg/telegram/messenger/AndroidUtilities;->formatWholeNumber(II)Ljava/lang/String;

    move-result-object v7

    const-string v10, ""

    if-eqz v4, :cond_5

    cmpl-float v5, v6, v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    float-to-int v5, v6

    int-to-float v11, v5

    const-string v12, "%"

    const-string v13, "+"

    cmpl-float v11, v6, v11

    if-nez v11, :cond_3

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    if-lez v4, :cond_2

    move-object v10, v13

    :cond_2
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v3}, Lorg/telegram/messenger/AndroidUtilities;->formatWholeNumber(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v10, v1, v3

    aput-object v5, v1, v2

    aput-object v12, v1, v0

    const-string v0, "%s (%d%s)"

    invoke-static {v6, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    :cond_3
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    if-lez v4, :cond_4

    move-object v10, v13

    :cond_4
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v3}, Lorg/telegram/messenger/AndroidUtilities;->formatWholeNumber(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v10, v1, v3

    aput-object v6, v1, v2

    aput-object v12, v1, v0

    const-string v0, "%s (%.1f%s)"

    invoke-static {v5, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    :cond_5
    :goto_1
    if-ltz v4, :cond_6

    const/4 v0, 0x1

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    :goto_2
    if-nez v4, :cond_8

    iget-wide v4, p1, Lorg/telegram/tgnet/tl/TL_stats$TL_statsAbsValueAndPrev;->current:D

    cmpl-double p1, v4, v8

    if-eqz p1, :cond_7

    goto :goto_3

    :cond_7
    const/4 v2, 0x0

    :cond_8
    :goto_3
    new-instance p1, Lorg/telegram/ui/StatisticActivity$OverviewChannelData$Quadruple;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p1, v7, v10, v0, v1}, Lorg/telegram/ui/StatisticActivity$OverviewChannelData$Quadruple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method
