.class public Lorg/telegram/ui/CreateGroupCallSheet;
.super Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;
.source "SourceFile"


# instance fields
.field private adapter:Lorg/telegram/ui/Components/UniversalAdapter;

.field private final buttonsContainer:Landroid/widget/FrameLayout;

.field private final buttonsLayout:Landroid/widget/LinearLayout;

.field private final closeButton:Landroid/widget/ImageView;

.field private creatingCall:Z

.field private final participants:Ljava/util/ArrayList;

.field private final selectedParticipants:Ljava/util/HashSet;

.field private final topView:Landroid/widget/FrameLayout;

.field private final topViewLayout:Landroid/widget/LinearLayout;

.field private final videoButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

.field private final voiceButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;


# direct methods
.method public static synthetic $r8$lambda$1zBtQl2v-4pEp7WACD3JEc3CpHs(Lorg/telegram/ui/CreateGroupCallSheet;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/CreateGroupCallSheet;->lambda$new$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ClrFf4fbHsG5pRO2kruZO6g7i6o(Lorg/telegram/ui/CreateGroupCallSheet;Lorg/telegram/tgnet/TLRPC$Updates;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/CreateGroupCallSheet;->lambda$createCall$4(Lorg/telegram/tgnet/TLRPC$Updates;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FRgssdNW2wE0u9TjRaTjkBKM9m4(Lorg/telegram/ui/CreateGroupCallSheet;Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;ZLjava/util/HashSet;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/CreateGroupCallSheet;->lambda$createCall$6(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;ZLjava/util/HashSet;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RPDELsloRMVUj4uqysif36utwQE(Lorg/telegram/ui/CreateGroupCallSheet;Landroid/view/View;IFF)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/CreateGroupCallSheet;->lambda$new$1(Landroid/view/View;IFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$T84-emO8j58t4zrIEvzGr9m4kb4(Lorg/telegram/ui/CreateGroupCallSheet;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/CreateGroupCallSheet;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hQUoUkfWqIjp8walj3BgEOvnu7o(Lorg/telegram/ui/CreateGroupCallSheet;Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;ZLjava/util/HashSet;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/CreateGroupCallSheet;->lambda$createCall$5(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;ZLjava/util/HashSet;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tYjtx8U0fNWcqhdvZYe5_nJBV5M(Lorg/telegram/ui/CreateGroupCallSheet;Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/CreateGroupCallSheet;->fillItems(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$z7yRFw4_aooSsV4YB9BcJtBEy7Q(Lorg/telegram/ui/CreateGroupCallSheet;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/CreateGroupCallSheet;->lambda$new$3(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/Collection;)V
    .locals 22

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    new-instance v6, Lorg/telegram/ui/Stories/DarkThemeResourceProvider;

    invoke-direct {v6}, Lorg/telegram/ui/Stories/DarkThemeResourceProvider;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v7, Lorg/telegram/ui/CreateGroupCallSheet;->participants:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, v7, Lorg/telegram/ui/CreateGroupCallSheet;->selectedParticipants:Ljava/util/HashSet;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v1, v9}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-virtual {v7, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v0

    invoke-virtual {v7, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar(I)V

    const/4 v0, 0x0

    iput-boolean v0, v7, Lorg/telegram/ui/ActionBar/BottomSheet;->drawDoubleNavigationBar:Z

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v8}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v7, Lorg/telegram/ui/CreateGroupCallSheet;->topView:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, v7, Lorg/telegram/ui/CreateGroupCallSheet;->topViewLayout:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v4, 0x77

    const/4 v5, -0x1

    invoke-static {v5, v5, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, v7, Lorg/telegram/ui/CreateGroupCallSheet;->closeButton:Landroid/widget/ImageView;

    sget v6, Lorg/telegram/messenger/R$drawable;->ic_close_white:I

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v6, Landroid/graphics/PorterDuffColorFilter;

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    const v10, -0x7b726c

    invoke-direct {v6, v10, v9}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const/high16 v16, 0x41600000    # 14.0f

    const/16 v17, 0x0

    const/16 v11, 0x18

    const/high16 v12, 0x41c00000    # 24.0f

    const/16 v13, 0x35

    const/4 v14, 0x0

    const/high16 v15, 0x41600000    # 14.0f

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v1, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v4}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;)V

    new-instance v1, Lorg/telegram/ui/CreateGroupCallSheet$$ExternalSyntheticLambda1;

    invoke-direct {v1, v7}, Lorg/telegram/ui/CreateGroupCallSheet$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/CreateGroupCallSheet;)V

    invoke-virtual {v4, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v8}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/high16 v4, 0x42a00000    # 80.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    iget-object v9, v7, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v6, v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v6

    invoke-static {v4, v6}, Lorg/telegram/ui/ActionBar/Theme;->createCircleDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget v6, Lorg/telegram/messenger/R$drawable;->filled_calls_users:I

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    const/16 v6, 0x38

    const/16 v9, 0x11

    invoke-static {v6, v6, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v1, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v15, 0x2

    const/16 v16, 0xd

    const/16 v10, 0x50

    const/16 v11, 0x50

    const/4 v12, 0x1

    const/4 v13, 0x2

    const/16 v14, 0x15

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    iget-object v4, v7, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/high16 v6, 0x41a00000    # 20.0f

    invoke-static {v8, v6, v1, v3, v4}, Lorg/telegram/ui/Components/TextHelper;->makeLinkTextView(Landroid/content/Context;FIZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    move-result-object v4

    sget v6, Lorg/telegram/messenger/R$string;->GroupCallCreateTitle:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v16, 0x4

    const/4 v10, -0x1

    const/4 v11, -0x2

    const/4 v14, 0x0

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, v7, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/high16 v6, 0x41600000    # 14.0f

    invoke-static {v8, v6, v1, v0, v4}, Lorg/telegram/ui/Components/TextHelper;->makeLinkTextView(Landroid/content/Context;FIZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    move-result-object v1

    sget v4, Lorg/telegram/messenger/R$string;->GroupCallCreateText:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v9

    invoke-static {v4, v9}, Lorg/telegram/ui/Stories/recorder/HintView2;->cutInFancyHalf(Ljava/lang/CharSequence;Landroid/text/TextPaint;)I

    move-result v4

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->setMaxWidth(I)V

    const/4 v14, 0x2

    const/16 v15, 0x17

    const/4 v9, -0x1

    const/4 v10, -0x2

    const/4 v11, 0x1

    const/4 v12, 0x2

    const/4 v13, 0x0

    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v7, Lorg/telegram/ui/CreateGroupCallSheet;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    :cond_0
    new-instance v1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayAnimations(Z)V

    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v9, 0x15e

    invoke-virtual {v1, v9, v10}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setDurations(J)V

    iget-object v2, v7, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    iget-object v1, v7, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/CreateGroupCallSheet$$ExternalSyntheticLambda2;

    invoke-direct {v2, v7}, Lorg/telegram/ui/CreateGroupCallSheet$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/CreateGroupCallSheet;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended;)V

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v8}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v7, Lorg/telegram/ui/CreateGroupCallSheet;->buttonsContainer:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, v7, Lorg/telegram/ui/CreateGroupCallSheet;->buttonsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget v4, v7, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int/2addr v4, v9

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    iget v10, v7, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    add-int/2addr v10, v11

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v2, v4, v9, v10, v6}, Landroid/view/View;->setPadding(IIII)V

    const/4 v4, -0x2

    const/16 v6, 0x57

    invoke-static {v5, v4, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v1, v2, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v9, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    iget-object v10, v7, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v9, v8, v10}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v9, v7, Lorg/telegram/ui/CreateGroupCallSheet;->voiceButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    new-instance v10, Landroid/text/SpannableStringBuilder;

    invoke-direct {v10}, Landroid/text/SpannableStringBuilder;-><init>()V

    const-string v11, "x  "

    invoke-virtual {v10, v11}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v12, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget v13, Lorg/telegram/messenger/R$drawable;->profile_phone:I

    invoke-direct {v12, v13}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(I)V

    const/16 v13, 0x21

    invoke-virtual {v10, v12, v0, v3, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    sget v12, Lorg/telegram/messenger/R$string;->GroupCallCreateVoice:I

    invoke-static {v12}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v9, v10, v0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    const/16 v20, 0x6

    const/16 v21, 0x0

    const/4 v14, -0x1

    const/16 v15, 0x30

    const/high16 v16, 0x3f800000    # 1.0f

    const/16 v17, 0x77

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-static/range {v14 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v10, Lorg/telegram/ui/CreateGroupCallSheet$$ExternalSyntheticLambda3;

    invoke-direct {v10, v7}, Lorg/telegram/ui/CreateGroupCallSheet$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/CreateGroupCallSheet;)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v9, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    iget-object v10, v7, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v9, v8, v10}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v9, v7, Lorg/telegram/ui/CreateGroupCallSheet;->videoButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    new-instance v8, Landroid/text/SpannableStringBuilder;

    invoke-direct {v8}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-virtual {v8, v11}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v10, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget v11, Lorg/telegram/messenger/R$drawable;->profile_video:I

    invoke-direct {v10, v11}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(I)V

    invoke-virtual {v8, v10, v0, v3, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    sget v3, Lorg/telegram/messenger/R$string;->GroupCallCreateVideo:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v9, v8, v0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v10, -0x1

    const/16 v11, 0x30

    const/high16 v12, 0x3f800000    # 1.0f

    const/16 v13, 0x77

    const/4 v14, 0x6

    const/4 v15, 0x0

    invoke-static/range {v10 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v9, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Lorg/telegram/ui/CreateGroupCallSheet$$ExternalSyntheticLambda4;

    invoke-direct {v2, v7}, Lorg/telegram/ui/CreateGroupCallSheet$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/CreateGroupCallSheet;)V

    invoke-virtual {v9, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, v7, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-static {v5, v4, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v7, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    iget v2, v7, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    const/high16 v3, 0x42980000    # 76.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v1, v2, v0, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method private createCall(Z)V
    .locals 5

    iget-boolean v0, p0, Lorg/telegram/ui/CreateGroupCallSheet;->creatingCall:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/CreateGroupCallSheet;->creatingCall:Z

    if-eqz p1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/CreateGroupCallSheet;->videoButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/CreateGroupCallSheet;->voiceButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    :goto_0
    invoke-virtual {v1, v0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v2, p0, Lorg/telegram/ui/CreateGroupCallSheet;->selectedParticipants:Ljava/util/HashSet;

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    new-instance v2, Lorg/telegram/tgnet/tl/TL_phone$createConferenceCall;

    invoke-direct {v2}, Lorg/telegram/tgnet/tl/TL_phone$createConferenceCall;-><init>()V

    sget-object v3, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v3}, Ljava/util/Random;->nextInt()I

    move-result v3

    iput v3, v2, Lorg/telegram/tgnet/tl/TL_phone$createConferenceCall;->random_id:I

    iget v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/CreateGroupCallSheet$$ExternalSyntheticLambda5;

    invoke-direct {v4, p0, v1, p1, v0}, Lorg/telegram/ui/CreateGroupCallSheet$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/CreateGroupCallSheet;Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;ZLjava/util/HashSet;)V

    invoke-virtual {v3, v2, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private fillItems(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 3

    iget-object p2, p0, Lorg/telegram/ui/CreateGroupCallSheet;->topView:Landroid/widget/FrameLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asCustom(Landroid/view/View;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p2, 0x0

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lorg/telegram/ui/CreateGroupCallSheet;->participants:Ljava/util/ArrayList;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    sget p2, Lorg/telegram/messenger/R$string;->GroupCallCreateAddMembers:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p2, 0x0

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/CreateGroupCallSheet;->participants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/CreateGroupCallSheet;->participants:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {v1}, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell$Factory;->make(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/ui/Components/UItem;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/CreateGroupCallSheet;->selectedParticipants:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private synthetic lambda$createCall$4(Lorg/telegram/tgnet/TLRPC$Updates;)V
    .locals 2

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    return-void
.end method

.method private synthetic lambda$createCall$5(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;ZLjava/util/HashSet;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 8

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$Updates;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Updates;

    iget p5, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p5

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$Updates;->users:Ljava/util/ArrayList;

    invoke-virtual {p5, v0, v1}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    iget p5, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p5

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$Updates;->chats:Ljava/util/ArrayList;

    invoke-virtual {p5, v0, v1}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    const-class p5, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCall;

    invoke-static {p1, p5}, Lorg/telegram/messenger/MessagesController;->findUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p5

    invoke-virtual {p5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p5

    const/4 v0, 0x0

    move-object v6, v0

    :goto_0
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCall;

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCall;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    goto :goto_0

    :cond_0
    sget-object p5, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/ui/CreateGroupCallSheet$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/CreateGroupCallSheet$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/CreateGroupCallSheet;Lorg/telegram/tgnet/TLRPC$Updates;)V

    invoke-virtual {p5, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    if-eqz v6, :cond_2

    sget-object p1, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    if-nez p1, :cond_1

    goto :goto_2

    :cond_1
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputGroupCall;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputGroupCall;-><init>()V

    iget-wide p1, v6, Lorg/telegram/tgnet/TLRPC$GroupCall;->id:J

    iput-wide p1, v4, Lorg/telegram/tgnet/TLRPC$InputGroupCall;->id:J

    iget-wide p1, v6, Lorg/telegram/tgnet/TLRPC$GroupCall;->access_hash:J

    iput-wide p1, v4, Lorg/telegram/tgnet/TLRPC$InputGroupCall;->access_hash:J

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    sget-object v2, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    iget v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    :goto_1
    move v5, p3

    move-object v7, p4

    invoke-static/range {v2 .. v7}, Lorg/telegram/ui/Components/voip/VoIPHelper;->joinConference(Landroid/app/Activity;ILorg/telegram/tgnet/TLRPC$InputGroupCall;ZLorg/telegram/tgnet/TLRPC$GroupCall;Ljava/util/HashSet;)V

    goto :goto_3

    :cond_2
    :goto_2
    iput-boolean v1, p0, Lorg/telegram/ui/CreateGroupCallSheet;->creatingCall:Z

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    return-void

    :cond_3
    instance-of v0, p1, Lorg/telegram/tgnet/tl/TL_phone$groupCall;

    if-eqz v0, :cond_5

    check-cast p1, Lorg/telegram/tgnet/tl/TL_phone$groupCall;

    iget p5, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p5

    iget-object v0, p1, Lorg/telegram/tgnet/tl/TL_phone$groupCall;->users:Ljava/util/ArrayList;

    invoke-virtual {p5, v0, v1}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    iget p5, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p5

    iget-object v0, p1, Lorg/telegram/tgnet/tl/TL_phone$groupCall;->chats:Ljava/util/ArrayList;

    invoke-virtual {p5, v0, v1}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    sget-object p5, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    if-nez p5, :cond_4

    goto :goto_2

    :cond_4
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputGroupCall;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputGroupCall;-><init>()V

    iget-object p2, p1, Lorg/telegram/tgnet/tl/TL_phone$groupCall;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-wide v0, p2, Lorg/telegram/tgnet/TLRPC$GroupCall;->id:J

    iput-wide v0, v4, Lorg/telegram/tgnet/TLRPC$InputGroupCall;->id:J

    iget-wide v0, p2, Lorg/telegram/tgnet/TLRPC$GroupCall;->access_hash:J

    iput-wide v0, v4, Lorg/telegram/tgnet/TLRPC$InputGroupCall;->access_hash:J

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    sget-object v2, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    iget v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    iget-object v6, p1, Lorg/telegram/tgnet/tl/TL_phone$groupCall;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    goto :goto_1

    :cond_5
    if-eqz p5, :cond_6

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->topBulletinContainer:Landroid/widget/FrameLayout;

    iget-object p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    invoke-virtual {p1, p5}, Lorg/telegram/ui/Components/BulletinFactory;->showForError(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    :cond_6
    :goto_3
    return-void
.end method

.method private synthetic lambda$createCall$6(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;ZLjava/util/HashSet;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 8

    new-instance v7, Lorg/telegram/ui/CreateGroupCallSheet$$ExternalSyntheticLambda6;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p4

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/CreateGroupCallSheet$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/CreateGroupCallSheet;Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;ZLjava/util/HashSet;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;IFF)V
    .locals 2

    iget-boolean p3, p0, Lorg/telegram/ui/CreateGroupCallSheet;->creatingCall:Z

    if-eqz p3, :cond_0

    return-void

    :cond_0
    iget-object p3, p0, Lorg/telegram/ui/CreateGroupCallSheet;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    const/4 p4, 0x1

    sub-int/2addr p2, p4

    invoke-virtual {p3, p2}, Lorg/telegram/ui/Components/UniversalAdapter;->getItem(I)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-object p2, p2, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    if-eqz p2, :cond_3

    instance-of p3, p2, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz p3, :cond_1

    check-cast p2, Lorg/telegram/tgnet/TLRPC$User;

    iget-wide p2, p2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    goto :goto_0

    :cond_1
    instance-of p3, p2, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz p3, :cond_3

    check-cast p2, Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide p2, p2, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/CreateGroupCallSheet;->selectedParticipants:Ljava/util/HashSet;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/CreateGroupCallSheet;->selectedParticipants:Ljava/util/HashSet;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/CreateGroupCallSheet;->selectedParticipants:Ljava/util/HashSet;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_1
    instance-of v0, p1, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;

    if-eqz v0, :cond_3

    check-cast p1, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;

    iget-object v0, p0, Lorg/telegram/ui/CreateGroupCallSheet;->selectedParticipants:Ljava/util/HashSet;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {p1, p2, p4}, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->setChecked(ZZ)V

    nop

    :cond_3
    return-void
.end method

.method private synthetic lambda$new$2(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lorg/telegram/ui/CreateGroupCallSheet;->createCall(Z)V

    return-void
.end method

.method private synthetic lambda$new$3(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lorg/telegram/ui/CreateGroupCallSheet;->createCall(Z)V

    return-void
.end method


# virtual methods
.method protected createAdapter(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
    .locals 9

    new-instance v8, Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    new-instance v6, Lorg/telegram/ui/CreateGroupCallSheet$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0}, Lorg/telegram/ui/CreateGroupCallSheet$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/CreateGroupCallSheet;)V

    iget-object v7, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, v8

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Components/UniversalAdapter;-><init>(Lorg/telegram/ui/Components/RecyclerListView;Landroid/content/Context;IIZLorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v8, p0, Lorg/telegram/ui/CreateGroupCallSheet;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    return-object v8
.end method

.method protected getTitle()Ljava/lang/CharSequence;
    .locals 1

    sget v0, Lorg/telegram/messenger/R$string;->GroupCallCreateTitle:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
