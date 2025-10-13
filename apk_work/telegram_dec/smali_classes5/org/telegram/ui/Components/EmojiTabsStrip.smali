.class public abstract Lorg/telegram/ui/Components/EmojiTabsStrip;
.super Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView;,
        Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;,
        Lorg/telegram/ui/Components/EmojiTabsStrip$StabDrawable;
    }
.end annotation


# static fields
.field private static emojiTabsAnimatedDrawableIds:[I

.field private static emojiTabsDrawableIds:[I


# instance fields
.field private final accentColor:I

.field public animateAppear:Z

.field private animatedEmojiCacheType:I

.field private appearAnimation:Landroid/animation/ValueAnimator;

.field private appearCount:I

.field private currentType:I

.field private emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView;

.field first:Z

.field private forceTabsShow:Z

.field private giftsDrawableId:I

.field private giftsFirstChange:Z

.field private giftsIsShown:Z

.field public giftsTab:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

.field private includeAnimated:Z

.field private onSettingsOpenRunnable:Ljava/lang/Runnable;

.field private packsIndexStart:I

.field private paddingLeftDp:F

.field private recentDrawableId:I

.field private recentFirstChange:Z

.field private recentIsShown:Z

.field public recentTab:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

.field private removingViews:Ljava/util/HashMap;

.field private resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private selectAnimationT:F

.field private selectAnimator:Landroid/animation/ValueAnimator;

.field private selectT:F

.field private selected:I

.field private selectedFullIndex:I

.field private settingsDrawableId:I

.field private settingsTab:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

.field private showSelected:Z

.field private showSelectedAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

.field public toggleEmojiStickersTab:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

.field public updateButtonDrawables:Z

.field private wasDrawn:Z

.field private wasIndex:I


# direct methods
.method public static synthetic $r8$lambda$0CW0mzPAL0wsbrNRa0zuZKEgvqc(Lorg/telegram/ui/Components/EmojiTabsStrip;ILandroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/EmojiTabsStrip;->lambda$updateClickListeners$1(ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2p1tlveIsgpWt7sQSBKPeqpBNJI(Lorg/telegram/ui/Components/EmojiTabsStrip;FFLandroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/EmojiTabsStrip;->lambda$select$4(FFLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5-_8b8u6dQhBjwBES1FiLY-J0m4(Lorg/telegram/ui/Components/EmojiTabsStrip;ILandroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/EmojiTabsStrip;->lambda$updateClickListeners$2(ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bSPk0NiTMon6kkS1705WHo1AOH0(Lorg/telegram/ui/Components/EmojiTabsStrip;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiTabsStrip;->lambda$showGifts$0(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$hF_668-Kx343vW6a4NVZEa1nles(Lorg/telegram/ui/Components/EmojiTabsStrip;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiTabsStrip;->lambda$updateClickListeners$3(Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 9

    sget v0, Lorg/telegram/messenger/R$drawable;->msg_emoji_smiles:I

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_emoji_cat:I

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_emoji_food:I

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_emoji_activities:I

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_emoji_travel:I

    sget v5, Lorg/telegram/messenger/R$drawable;->msg_emoji_objects:I

    sget v6, Lorg/telegram/messenger/R$drawable;->msg_emoji_other:I

    sget v7, Lorg/telegram/messenger/R$drawable;->msg_emoji_flags:I

    filled-new-array/range {v0 .. v7}, [I

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Components/EmojiTabsStrip;->emojiTabsDrawableIds:[I

    sget v1, Lorg/telegram/messenger/R$raw;->msg_emoji_smiles:I

    sget v2, Lorg/telegram/messenger/R$raw;->msg_emoji_cat:I

    sget v3, Lorg/telegram/messenger/R$raw;->msg_emoji_food:I

    sget v4, Lorg/telegram/messenger/R$raw;->msg_emoji_activities:I

    sget v5, Lorg/telegram/messenger/R$raw;->msg_emoji_travel:I

    sget v6, Lorg/telegram/messenger/R$raw;->msg_emoji_objects:I

    sget v7, Lorg/telegram/messenger/R$raw;->msg_emoji_other:I

    sget v8, Lorg/telegram/messenger/R$raw;->msg_emoji_flags:I

    filled-new-array/range {v1 .. v8}, [I

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Components/EmojiTabsStrip;->emojiTabsAnimatedDrawableIds:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ZZZZILjava/lang/Runnable;)V
    .locals 11

    .line 0
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueIcon:I

    move-object v3, p2

    invoke-static {v0, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v10

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v10}, Lorg/telegram/ui/Components/EmojiTabsStrip;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ZZZZILjava/lang/Runnable;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ZZZZILjava/lang/Runnable;I)V
    .locals 17

    .line 0
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {p0 .. p1}, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;-><init>(Landroid/content/Context;)V

    sget v0, Lorg/telegram/messenger/R$drawable;->msg_emoji_recent:I

    iput v0, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->recentDrawableId:I

    sget v0, Lorg/telegram/messenger/R$drawable;->msg_emoji_gem:I

    iput v0, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->giftsDrawableId:I

    sget v0, Lorg/telegram/messenger/R$drawable;->smiles_tab_settings:I

    iput v0, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->settingsDrawableId:I

    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v0

    const/4 v11, 0x1

    xor-int/2addr v0, v11

    iput-boolean v0, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->forceTabsShow:Z

    iput-boolean v11, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->showSelected:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->removingViews:Ljava/util/HashMap;

    const/4 v12, 0x0

    iput v12, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->selectT:F

    iput v12, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->selectAnimationT:F

    const/4 v13, 0x0

    iput v13, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->selected:I

    iput v13, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->selectedFullIndex:I

    iput v13, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->wasIndex:I

    iput-boolean v11, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->animateAppear:Z

    const/4 v14, 0x6

    iput v14, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->animatedEmojiCacheType:I

    iput-boolean v11, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->updateButtonDrawables:Z

    iput-boolean v11, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->recentFirstChange:Z

    iput-boolean v11, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->recentIsShown:Z

    iput-boolean v11, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->giftsFirstChange:Z

    iput-boolean v13, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->giftsIsShown:Z

    iput-boolean v11, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->first:Z

    const/high16 v0, 0x41300000    # 11.0f

    iput v0, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->paddingLeftDp:F

    iput-boolean v8, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->includeAnimated:Z

    move-object/from16 v0, p2

    iput-object v0, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iput-object v10, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->onSettingsOpenRunnable:Ljava/lang/Runnable;

    iput v9, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->currentType:I

    move/from16 v0, p9

    iput v0, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->accentColor:I

    new-instance v0, Lorg/telegram/ui/Components/EmojiTabsStrip$1;

    invoke-direct {v0, v6, v7, v8}, Lorg/telegram/ui/Components/EmojiTabsStrip$1;-><init>(Lorg/telegram/ui/Components/EmojiTabsStrip;Landroid/content/Context;Z)V

    iput-object v0, v6, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    iget-object v0, v6, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v6, v13}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {v6, v13}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    iget-object v0, v6, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 v0, 0x4

    if-ne v9, v0, :cond_0

    iget-object v15, v6, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->contentView:Landroid/widget/LinearLayout;

    new-instance v5, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_emoji_stickers:I

    const/4 v4, 0x0

    const/16 v16, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v11, v5

    move/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;-><init>(Lorg/telegram/ui/Components/EmojiTabsStrip;Landroid/content/Context;IZZ)V

    iput-object v11, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->toggleEmojiStickersTab:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    invoke-virtual {v15, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x3

    if-ne v9, v0, :cond_1

    sget v0, Lorg/telegram/messenger/R$drawable;->msg_emoji_smiles:I

    iput v0, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->recentDrawableId:I

    :cond_1
    if-ne v9, v14, :cond_2

    sget v0, Lorg/telegram/messenger/R$drawable;->emoji_love:I

    iput v0, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->recentDrawableId:I

    :cond_2
    if-eqz p3, :cond_3

    iget-object v9, v6, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->contentView:Landroid/widget/LinearLayout;

    new-instance v11, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    iget v3, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->recentDrawableId:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v11

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;-><init>(Lorg/telegram/ui/Components/EmojiTabsStrip;Landroid/content/Context;IZZ)V

    iput-object v11, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->recentTab:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    invoke-virtual {v9, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->recentTab:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    const v1, -0x37b9b9a5

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->id:Ljava/lang/Long;

    :cond_3
    if-eqz p4, :cond_4

    iget-object v9, v6, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->contentView:Landroid/widget/LinearLayout;

    new-instance v11, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    iget v3, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->giftsDrawableId:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v11

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;-><init>(Lorg/telegram/ui/Components/EmojiTabsStrip;Landroid/content/Context;IZZ)V

    iput-object v11, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->giftsTab:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    invoke-virtual {v9, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->giftsTab:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    invoke-virtual {v0, v12}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->giftsTab:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    const v1, 0x5dcbd43

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->id:Ljava/lang/Long;

    :cond_4
    if-nez v8, :cond_6

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lorg/telegram/ui/Components/EmojiTabsStrip;->emojiTabsDrawableIds:[I

    array-length v2, v1

    if-ge v0, v2, :cond_8

    iget-object v2, v6, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->contentView:Landroid/widget/LinearLayout;

    new-instance v3, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    aget v1, v1, v0

    if-nez v0, :cond_5

    const/4 v4, 0x1

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    :goto_1
    const/4 v5, 0x0

    move-object/from16 p2, v3

    move-object/from16 p3, p0

    move-object/from16 p4, p1

    move/from16 p5, v1

    move/from16 p6, v5

    move/from16 p7, v4

    invoke-direct/range {p2 .. p7}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;-><init>(Lorg/telegram/ui/Components/EmojiTabsStrip;Landroid/content/Context;IZZ)V

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    if-eqz p5, :cond_7

    iget-object v0, v6, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->contentView:Landroid/widget/LinearLayout;

    new-instance v1, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView;

    invoke-direct {v1, v6, v7}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView;-><init>(Lorg/telegram/ui/Components/EmojiTabsStrip;Landroid/content/Context;)V

    iput-object v1, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView;

    const v1, 0x36337e

    int-to-long v1, v1

    iput-wide v1, v0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView;->id:J

    :cond_7
    iget-object v0, v6, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    iput v0, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->packsIndexStart:I

    if-eqz v10, :cond_8

    iget-object v0, v6, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->contentView:Landroid/widget/LinearLayout;

    new-instance v1, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    iget v2, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->settingsDrawableId:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object/from16 p2, v1

    move-object/from16 p3, p0

    move-object/from16 p4, p1

    move/from16 p5, v2

    move/from16 p6, v3

    move/from16 p7, v4

    invoke-direct/range {p2 .. p7}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;-><init>(Lorg/telegram/ui/Components/EmojiTabsStrip;Landroid/content/Context;IZZ)V

    iput-object v1, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->settingsTab:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->settingsTab:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    const v1, 0x5582bc23

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->id:Ljava/lang/Long;

    iget-object v0, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->settingsTab:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    invoke-virtual {v0, v12}, Landroid/view/View;->setAlpha(F)V

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/EmojiTabsStrip;->updateClickListeners()V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/EmojiTabsStrip;)Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->settingsTab:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/EmojiTabsStrip;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->removingViews:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/EmojiTabsStrip;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->forceTabsShow:Z

    return p0
.end method

.method static synthetic access$1102(Lorg/telegram/ui/Components/EmojiTabsStrip;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->wasDrawn:Z

    return p1
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/EmojiTabsStrip;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/EmojiTabsStrip;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->accentColor:I

    return p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/EmojiTabsStrip;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->animatedEmojiCacheType:I

    return p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Components/EmojiTabsStrip;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->currentType:I

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/EmojiTabsStrip;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->recentIsShown:Z

    return p0
.end method

.method static synthetic access$2000()[I
    .locals 1

    sget-object v0, Lorg/telegram/ui/Components/EmojiTabsStrip;->emojiTabsDrawableIds:[I

    return-object v0
.end method

.method static synthetic access$2100()[I
    .locals 1

    sget-object v0, Lorg/telegram/ui/Components/EmojiTabsStrip;->emojiTabsAnimatedDrawableIds:[I

    return-object v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/EmojiTabsStrip;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->giftsIsShown:Z

    return p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/EmojiTabsStrip;)Lorg/telegram/ui/Components/AnimatedFloat;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->showSelectedAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    return-object p0
.end method

.method static synthetic access$402(Lorg/telegram/ui/Components/EmojiTabsStrip;Lorg/telegram/ui/Components/AnimatedFloat;)Lorg/telegram/ui/Components/AnimatedFloat;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->showSelectedAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    return-object p1
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/EmojiTabsStrip;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->showSelected:Z

    return p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/EmojiTabsStrip;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->selectT:F

    return p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/EmojiTabsStrip;)Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView;

    return-object p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/EmojiTabsStrip;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->selectAnimationT:F

    return p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/EmojiTabsStrip;)I
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiTabsStrip;->selectorColor()I

    move-result p0

    return p0
.end method

.method private getThumbDocument(Lorg/telegram/tgnet/TLRPC$StickerSet;Ljava/util/ArrayList;)Lorg/telegram/tgnet/TLRPC$Document;
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p2, :cond_2

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iget-wide v6, p1, Lorg/telegram/tgnet/TLRPC$StickerSet;->thumb_document_id:J

    cmp-long v8, v4, v6

    if-nez v8, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v2, 0x1

    if-lt p1, v2, :cond_3

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Document;

    return-object p1

    :cond_3
    return-object v0
.end method

.method private synthetic lambda$select$4(FFLandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    iput p3, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->selectAnimationT:F

    invoke-static {p1, p2, p3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->selectT:F

    iget-object p1, p0, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$showGifts$0(Z)V
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->giftsTab:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$updateClickListeners$1(ILandroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/EmojiTabsStrip;->onTabClick(I)Z

    return-void
.end method

.method private synthetic lambda$updateClickListeners$2(ILandroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/EmojiTabsStrip;->onTabClick(I)Z

    return-void
.end method

.method private synthetic lambda$updateClickListeners$3(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->onSettingsOpenRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private selectorColor()I
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->currentType:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelIcon:I

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    const v1, 0x3e3851ec    # 0.18f

    :goto_0
    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v0

    return v0

    :cond_1
    :goto_1
    iget v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->accentColor:I

    const v1, 0x3db851ec    # 0.09f

    goto :goto_0
.end method


# virtual methods
.method protected allowEmojisForNonPremium()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected doIncludeFeatured()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected getEmojiColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getAnimatedEmojiColorFilter(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0
.end method

.method public isGiftsVisible()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->giftsTab:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->giftsIsShown:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isInstalled(Lorg/telegram/ui/Components/EmojiView$EmojiPack;)Z
    .locals 0

    iget-boolean p1, p1, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->installed:Z

    return p1
.end method

.method protected onMeasure(II)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->contentView:Landroid/widget/LinearLayout;

    iget v1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->paddingLeftDp:F

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/high16 v2, 0x41300000    # 11.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    return-void
.end method

.method protected abstract onTabClick(I)Z
.end method

.method protected onTabCreate(Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic scrollTo(I)V
    .locals 0

    invoke-super {p0, p1}, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->scrollTo(I)V

    return-void
.end method

.method public bridge synthetic scrollToVisible(II)Z
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->scrollToVisible(II)Z

    move-result p1

    return p1
.end method

.method public select(I)V
    .locals 1

    .line 0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/EmojiTabsStrip;->select(IZ)V

    return-void
.end method

.method public select(IZ)V
    .locals 11

    .line 0
    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_0

    iget-boolean p2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->first:Z

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->toggleEmojiStickersTab:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    if-eqz v3, :cond_1

    add-int/2addr p1, v2

    :cond_1
    iget-boolean v4, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->recentIsShown:Z

    if-eqz v4, :cond_2

    if-eqz v3, :cond_3

    :cond_2
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    :cond_3
    iput p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->selectedFullIndex:I

    iget v3, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->selected:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    iget-object v6, p0, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-ge v4, v6, :cond_b

    iget-object v6, p0, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    instance-of v7, v6, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView;

    if-eqz v7, :cond_7

    check-cast v6, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView;

    move v8, v5

    const/4 v7, 0x0

    :goto_2
    iget-object v9, v6, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    if-ge v7, v9, :cond_6

    iget-object v9, v6, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    instance-of v10, v9, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    if-eqz v10, :cond_5

    check-cast v9, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    if-ne p1, v8, :cond_4

    const/4 v10, 0x1

    goto :goto_3

    :cond_4
    const/4 v10, 0x0

    :goto_3
    invoke-virtual {v9, v10, p2}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->updateSelect(ZZ)V

    :cond_5
    add-int/2addr v7, v2

    add-int/2addr v8, v2

    goto :goto_2

    :cond_6
    add-int/lit8 v8, v8, -0x1

    goto :goto_5

    :cond_7
    instance-of v7, v6, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    if-eqz v7, :cond_9

    check-cast v6, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    if-ne p1, v5, :cond_8

    const/4 v7, 0x1

    goto :goto_4

    :cond_8
    const/4 v7, 0x0

    :goto_4
    invoke-virtual {v6, v7, p2}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->updateSelect(ZZ)V

    :cond_9
    move v8, v5

    :goto_5
    if-lt p1, v5, :cond_a

    if-gt p1, v8, :cond_a

    iput v4, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->selected:I

    :cond_a
    add-int/2addr v4, v2

    add-int/lit8 v5, v8, 0x1

    goto :goto_1

    :cond_b
    iget v4, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->selected:I

    if-eq v3, v4, :cond_12

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->selectAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_c
    iget v3, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->selectT:F

    iget v4, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->selected:I

    int-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz p2, :cond_d

    new-array v5, v0, [F

    fill-array-data v5, :array_0

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    iput-object v5, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->selectAnimator:Landroid/animation/ValueAnimator;

    new-instance v6, Lorg/telegram/ui/Components/EmojiTabsStrip$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0, v3, v4}, Lorg/telegram/ui/Components/EmojiTabsStrip$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/EmojiTabsStrip;FF)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->selectAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x15e

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->selectAnimator:Landroid/animation/ValueAnimator;

    sget-object v4, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->selectAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_6

    :cond_d
    iput v5, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->selectAnimationT:F

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    iput v3, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->selectT:F

    iget-object v3, p0, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    :goto_6
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView;

    if-eqz v3, :cond_10

    iget v4, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->selected:I

    if-eq v4, v2, :cond_f

    iget-boolean v4, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->forceTabsShow:Z

    if-eqz v4, :cond_e

    goto :goto_7

    :cond_e
    const/4 v4, 0x0

    goto :goto_8

    :cond_f
    :goto_7
    const/4 v4, 0x1

    :goto_8
    invoke-virtual {v3, v4, p2}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView;->show(ZZ)V

    :cond_10
    iget-object p2, p0, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->contentView:Landroid/widget/LinearLayout;

    iget v3, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->selected:I

    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    iget v3, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->selected:I

    if-lt v3, v0, :cond_11

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result p2

    invoke-virtual {p0, v0, p2}, Lorg/telegram/ui/Components/EmojiTabsStrip;->scrollToVisible(II)Z

    goto :goto_9

    :cond_11
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/EmojiTabsStrip;->scrollTo(I)V

    :cond_12
    :goto_9
    iget p2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->wasIndex:I

    if-eq p2, p1, :cond_14

    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView;

    if-eqz p2, :cond_13

    iget v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->selected:I

    if-ne v0, v2, :cond_13

    if-lt p1, v2, :cond_13

    iget-object p2, p2, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    add-int/2addr p2, v2

    if-gt p1, p2, :cond_13

    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView;

    add-int/lit8 v0, p1, -0x1

    mul-int/lit8 v0, v0, 0x24

    add-int/lit8 v1, v0, -0x6

    int-to-float v1, v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/lit8 v0, v0, 0x18

    int-to-float v0, v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {p2, v1, v0}, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->scrollToVisible(II)Z

    :cond_13
    iput p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->wasIndex:I

    :cond_14
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setAnimatedEmojiCacheType(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->animatedEmojiCacheType:I

    return-void
.end method

.method public setPaddingLeft(F)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->paddingLeftDp:F

    return-void
.end method

.method public showGifts(Z)V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->giftsTab:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    if-eqz v0, :cond_5

    iget-boolean v1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->giftsFirstChange:Z

    if-nez v1, :cond_0

    iget-boolean v2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->giftsIsShown:Z

    if-ne v2, p1, :cond_0

    goto :goto_2

    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->giftsIsShown:Z

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->giftsTab:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    if-eqz p1, :cond_2

    const/high16 v2, 0x3f800000    # 1.0f

    :cond_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->giftsTab:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p1, :cond_4

    const/high16 v2, 0x3f800000    # 1.0f

    :cond_4
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/EmojiTabsStrip$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/EmojiTabsStrip$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/EmojiTabsStrip;Z)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    iput-boolean v4, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->giftsFirstChange:Z

    :cond_5
    :goto_2
    return-void
.end method

.method public showRecent(Z)V
    .locals 3

    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->recentIsShown:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->recentIsShown:Z

    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->recentFirstChange:Z

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->recentTab:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    if-eqz p1, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->recentTab:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p1, :cond_3

    const/high16 v1, 0x3f800000    # 1.0f

    :cond_3
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_4

    iget v2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->selected:I

    if-eqz v2, :cond_5

    :cond_4
    if-eqz p1, :cond_6

    iget p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->selected:I

    if-ne p1, v1, :cond_6

    :cond_5
    iget-boolean p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->recentFirstChange:Z

    xor-int/2addr p1, v1

    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/Components/EmojiTabsStrip;->select(IZ)V

    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    iput-boolean v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->recentFirstChange:Z

    return-void
.end method

.method public showRecentTabStub(Z)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->recentTab:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    new-instance p1, Lorg/telegram/ui/Components/EmojiTabsStrip$StabDrawable;

    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiTabsStrip;->selectorColor()I

    move-result v1

    invoke-direct {p1, v1}, Lorg/telegram/ui/Components/EmojiTabsStrip$StabDrawable;-><init>(I)V

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    return-void
.end method

.method public showSelected(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->showSelected:Z

    iget-object p1, p0, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public updateClickListeners()V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView;

    if-eqz v4, :cond_1

    check-cast v3, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView;

    const/4 v4, 0x0

    :goto_1
    iget-object v5, v3, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_0

    iget-object v5, v3, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Lorg/telegram/ui/Components/EmojiTabsStrip$$ExternalSyntheticLambda1;

    invoke-direct {v6, p0, v2}, Lorg/telegram/ui/Components/EmojiTabsStrip$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/EmojiTabsStrip;I)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_1
    if-eqz v3, :cond_2

    new-instance v4, Lorg/telegram/ui/Components/EmojiTabsStrip$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0, v2}, Lorg/telegram/ui/Components/EmojiTabsStrip$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/EmojiTabsStrip;I)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->settingsTab:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    if-eqz v0, :cond_4

    new-instance v1, Lorg/telegram/ui/Components/EmojiTabsStrip$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/EmojiTabsStrip$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/EmojiTabsStrip;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    return-void
.end method

.method public updateColors()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip;->recentTab:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->updateColor()V

    :cond_0
    return-void
.end method

.method public updateEmojiPacks(Ljava/util/ArrayList;)V
    .locals 20

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    iget-boolean v0, v8, Lorg/telegram/ui/Components/EmojiTabsStrip;->includeAnimated:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, v8, Lorg/telegram/ui/Components/EmojiTabsStrip;->first:Z

    const/4 v10, 0x5

    if-eqz v0, :cond_1

    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0, v10}, Lorg/telegram/messenger/MediaDataController;->areStickersLoaded(I)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v11, 0x0

    iput-boolean v11, v8, Lorg/telegram/ui/Components/EmojiTabsStrip;->first:Z

    if-nez v9, :cond_2

    return-void

    :cond_2
    iget-object v0, v8, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    iget v1, v8, Lorg/telegram/ui/Components/EmojiTabsStrip;->packsIndexStart:I

    sub-int/2addr v0, v1

    iget-object v1, v8, Lorg/telegram/ui/Components/EmojiTabsStrip;->settingsTab:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    sub-int v13, v0, v1

    if-nez v13, :cond_4

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    :cond_4
    iget-object v0, v8, Lorg/telegram/ui/Components/EmojiTabsStrip;->appearAnimation:Landroid/animation/ValueAnimator;

    const/4 v14, 0x0

    if-eqz v0, :cond_5

    iget v0, v8, Lorg/telegram/ui/Components/EmojiTabsStrip;->appearCount:I

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_5

    iget-object v0, v8, Lorg/telegram/ui/Components/EmojiTabsStrip;->appearAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iput-object v14, v8, Lorg/telegram/ui/Components/EmojiTabsStrip;->appearAnimation:Landroid/animation/ValueAnimator;

    :cond_5
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, v8, Lorg/telegram/ui/Components/EmojiTabsStrip;->appearCount:I

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/EmojiTabsStrip;->doIncludeFeatured()Z

    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/EmojiTabsStrip;->allowEmojisForNonPremium()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_1

    :cond_6
    const/4 v15, 0x0

    goto :goto_2

    :cond_7
    :goto_1
    const/4 v15, 0x1

    :goto_2
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    :goto_3
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0, v13}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-ge v6, v0, :cond_1a

    if-ge v6, v13, :cond_8

    iget-object v0, v8, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->contentView:Landroid/widget/LinearLayout;

    iget v1, v8, Lorg/telegram/ui/Components/EmojiTabsStrip;->packsIndexStart:I

    add-int/2addr v1, v6

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    goto :goto_4

    :cond_8
    move-object v0, v14

    :goto_4
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v6, v1, :cond_9

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    move-object v5, v1

    goto :goto_5

    :cond_9
    move-object v5, v14

    :goto_5
    if-nez v5, :cond_b

    if-eqz v0, :cond_a

    iget-object v1, v8, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_a
    :goto_6
    move v11, v6

    move-object/from16 v16, v7

    move-object v1, v14

    :goto_7
    const/4 v3, 0x5

    goto/16 :goto_11

    :cond_b
    iget v1, v5, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->resId:I

    if-eqz v1, :cond_d

    if-nez v0, :cond_c

    new-instance v4, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, v5, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->resId:I

    const/4 v5, 0x0

    const/16 v16, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    move-object v12, v4

    move v4, v5

    move/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;-><init>(Lorg/telegram/ui/Components/EmojiTabsStrip;Landroid/content/Context;IZZ)V

    invoke-virtual {v8, v12}, Lorg/telegram/ui/Components/EmojiTabsStrip;->onTabCreate(Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->contentView:Landroid/widget/LinearLayout;

    iget v1, v8, Lorg/telegram/ui/Components/EmojiTabsStrip;->packsIndexStart:I

    add-int/2addr v1, v6

    invoke-virtual {v0, v12, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_6

    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, v5, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->resId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->updateColor()V

    invoke-virtual {v0, v14, v11}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->setLock(Ljava/lang/Boolean;Z)V

    goto :goto_6

    :cond_d
    iget-boolean v12, v5, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->free:Z

    iget-object v1, v5, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->thumbDocumentId:Ljava/lang/Long;

    if-eqz v1, :cond_f

    if-nez v0, :cond_e

    new-instance v3, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, v5, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->thumbDocumentId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    const/16 v16, 0x0

    const/16 v19, 0x0

    move-object v0, v3

    move-object/from16 v1, p0

    move-object v14, v3

    move-wide/from16 v3, v17

    move-object v10, v5

    move v5, v12

    move v11, v6

    move/from16 v6, v16

    move-object/from16 v16, v7

    move/from16 v7, v19

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;-><init>(Lorg/telegram/ui/Components/EmojiTabsStrip;Landroid/content/Context;JZZZ)V

    invoke-virtual {v8, v14}, Lorg/telegram/ui/Components/EmojiTabsStrip;->onTabCreate(Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->contentView:Landroid/widget/LinearLayout;

    iget v1, v8, Lorg/telegram/ui/Components/EmojiTabsStrip;->packsIndexStart:I

    add-int/2addr v1, v11

    invoke-virtual {v0, v14, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    move-object v0, v14

    goto :goto_9

    :cond_e
    move-object v10, v5

    move v11, v6

    move-object/from16 v16, v7

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->setAnimatedEmojiDocumentId(J)V

    goto :goto_9

    :cond_f
    move-object v10, v5

    move v11, v6

    move-object/from16 v16, v7

    iget-object v1, v10, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v2, v10, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->documents:Ljava/util/ArrayList;

    invoke-direct {v8, v1, v2}, Lorg/telegram/ui/Components/EmojiTabsStrip;->getThumbDocument(Lorg/telegram/tgnet/TLRPC$StickerSet;Ljava/util/ArrayList;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v7

    if-nez v0, :cond_10

    new-instance v14, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v14

    move-object/from16 v1, p0

    move-object v3, v7

    move v4, v12

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;-><init>(Lorg/telegram/ui/Components/EmojiTabsStrip;Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$Document;ZZZ)V

    invoke-virtual {v8, v14}, Lorg/telegram/ui/Components/EmojiTabsStrip;->onTabCreate(Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;)V

    iget-object v0, v8, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->contentView:Landroid/widget/LinearLayout;

    iget v1, v8, Lorg/telegram/ui/Components/EmojiTabsStrip;->packsIndexStart:I

    add-int/2addr v1, v11

    invoke-virtual {v0, v14, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    move-object v0, v14

    goto :goto_8

    :cond_10
    invoke-virtual {v0, v7}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->setAnimatedEmojiDocument(Lorg/telegram/tgnet/TLRPC$Document;)V

    :goto_8
    if-nez v7, :cond_11

    invoke-virtual {v0, v10}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->setStickerThumb(Lorg/telegram/ui/Components/EmojiView$EmojiPack;)V

    :cond_11
    :goto_9
    iget-boolean v1, v10, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->forGroup:Z

    if-eqz v1, :cond_12

    const v1, 0x1a320f36

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_a

    :cond_12
    const/4 v1, 0x0

    :goto_a
    iput-object v1, v0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->id:Ljava/lang/Long;

    iget v1, v8, Lorg/telegram/ui/Components/EmojiTabsStrip;->selected:I

    if-ne v1, v11, :cond_13

    const/4 v1, 0x1

    :goto_b
    const/4 v2, 0x0

    goto :goto_c

    :cond_13
    const/4 v1, 0x0

    goto :goto_b

    :goto_c
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->updateSelect(ZZ)V

    iget v1, v8, Lorg/telegram/ui/Components/EmojiTabsStrip;->currentType:I

    const/4 v3, 0x4

    if-ne v1, v3, :cond_15

    if-nez v15, :cond_14

    if-nez v12, :cond_14

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_d

    :cond_14
    const/4 v1, 0x0

    :goto_d
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->setLock(Ljava/lang/Boolean;Z)V

    const/4 v1, 0x0

    goto/16 :goto_7

    :cond_15
    const/4 v3, 0x6

    if-eq v1, v3, :cond_19

    const/4 v3, 0x5

    if-eq v1, v3, :cond_16

    const/4 v4, 0x7

    if-ne v1, v4, :cond_17

    :cond_16
    :goto_e
    const/4 v1, 0x0

    goto :goto_10

    :cond_17
    if-nez v15, :cond_18

    if-nez v12, :cond_18

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_f
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->setLock(Ljava/lang/Boolean;Z)V

    const/4 v1, 0x0

    goto :goto_11

    :cond_18
    invoke-virtual {v8, v10}, Lorg/telegram/ui/Components/EmojiTabsStrip;->isInstalled(Lorg/telegram/ui/Components/EmojiView$EmojiPack;)Z

    move-result v1

    if-nez v1, :cond_16

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_f

    :cond_19
    const/4 v3, 0x5

    goto :goto_e

    :goto_10
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->setLock(Ljava/lang/Boolean;Z)V

    :goto_11
    add-int/lit8 v6, v11, 0x1

    move-object v14, v1

    move-object/from16 v7, v16

    const/4 v10, 0x5

    const/4 v11, 0x0

    goto/16 :goto_3

    :cond_1a
    move-object/from16 v16, v7

    iget-object v0, v8, Lorg/telegram/ui/Components/EmojiTabsStrip;->settingsTab:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    iget-object v0, v8, Lorg/telegram/ui/Components/EmojiTabsStrip;->settingsTab:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1c

    iget-object v0, v8, Lorg/telegram/ui/Components/EmojiTabsStrip;->settingsTab:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-static {}, Lorg/telegram/ui/Components/Reactions/HwEmojis;->isHwEnabledOrPreparing()Z

    move-result v1

    if-eqz v1, :cond_1b

    const-wide/16 v1, 0x0

    goto :goto_12

    :cond_1b
    const-wide/16 v1, 0xc8

    :goto_12
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_1c
    const/4 v2, 0x0

    :goto_13
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_1d

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    const/4 v3, 0x0

    iput-boolean v3, v1, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->keepAttached:Z

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->access$1200(Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/EmojiTabsStrip;->updateClickListeners()V

    return-void
.end method
