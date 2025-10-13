.class public abstract Lorg/telegram/ui/Components/SearchTagsList;
.super Lorg/telegram/ui/Components/BlurredFrameLayout;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/SearchTagsList$Adapter;,
        Lorg/telegram/ui/Components/SearchTagsList$Item;,
        Lorg/telegram/ui/Components/SearchTagsList$TagButton;
    }
.end annotation


# static fields
.field private static currentDialog:Lorg/telegram/ui/ActionBar/AlertDialog;


# instance fields
.field private actionBarTagsAnimator:Landroid/animation/ValueAnimator;

.field private actionBarTagsT:F

.field private final adapter:Lorg/telegram/ui/Components/SearchTagsList$Adapter;

.field private backgroundPaint2:Landroid/graphics/Paint;

.field private chosen:J

.field private final currentAccount:I

.field private final fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private final items:Ljava/util/ArrayList;

.field public final listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private final oldItems:Ljava/util/ArrayList;

.field private premiumLayout:Landroid/widget/LinearLayout;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field public showWithCut:Z

.field private shownPremiumLayout:Z

.field public shownT:F

.field private topicId:J


# direct methods
.method public static synthetic $r8$lambda$-tu8GnLCrzWmRY9LIh-7t4g7afY(Lorg/telegram/ui/Components/SearchTagsList;ILorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/SearchTagsList;->lambda$new$2(ILorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$4wvGjXhRjmG_WOflWr5b0apO6zw(Lorg/telegram/ui/Components/EditTextBoldCursor;ILorg/telegram/tgnet/TLRPC$Reaction;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/SearchTagsList;->lambda$openRenameTagAlert$5(Lorg/telegram/ui/Components/EditTextBoldCursor;ILorg/telegram/tgnet/TLRPC$Reaction;Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$AHASRBN4Kvqnp4CDHTQ0EtWjGQM(Lorg/telegram/ui/Components/SearchTagsList;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SearchTagsList;->lambda$createPremiumLayout$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AIrlCZo9e97YPO_9DFpSvQUCLLw(Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/SearchTagsList;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$D5RcktXOCzc363DlSVseS0I5Td8(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/SearchTagsList;->lambda$openRenameTagAlert$6(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$DxuSWi5p5J7uk_igIc4bBiWafko(Lorg/telegram/ui/Components/SearchTagsList;ILorg/telegram/ui/Components/SearchTagsList$Item;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/SearchTagsList;->lambda$new$3(ILorg/telegram/ui/Components/SearchTagsList$Item;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OLnLpUb3UaAuj5-3QH1V-_UjVog(Lorg/telegram/ui/Components/EditTextBoldCursor;Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/SearchTagsList;->lambda$openRenameTagAlert$9(Lorg/telegram/ui/Components/EditTextBoldCursor;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QWtQVpfjJxod0CvJz-meboPJIgY(Landroid/view/View;Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/SearchTagsList;->lambda$openRenameTagAlert$7(Landroid/view/View;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Z0S2aiRRe7MaGMRLtV2BccHMRTs(Lorg/telegram/ui/Components/SearchTagsList;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/SearchTagsList;->lambda$updateTags$12()V

    return-void
.end method

.method public static synthetic $r8$lambda$ZVIFMK5YKMHE9zPrITMm8IiF_vQ(Lorg/telegram/ui/Components/EditTextBoldCursor;Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/SearchTagsList;->lambda$openRenameTagAlert$10(Lorg/telegram/ui/Components/EditTextBoldCursor;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bGblWiYTzL-dUxNnt5F-ZNLEem0(Lorg/telegram/ui/Components/SearchTagsList;ILorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;I)Z
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Components/SearchTagsList;->lambda$new$4(ILorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$bnK_fL57Bm_UKP-5v67jy7uz8dA(Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/SearchTagsList;->lambda$clear$11(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dh0TSP2Zj2uu1ZZr7I2uWapo21Q(Lorg/telegram/ui/Components/EditTextBoldCursor;Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/SearchTagsList;->lambda$openRenameTagAlert$8(Lorg/telegram/ui/Components/EditTextBoldCursor;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lSbkny4cl0XPuBjsHmeR_OdjIfA(Lorg/telegram/ui/Components/SearchTagsList;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SearchTagsList;->lambda$show$13(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;IJLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)V
    .locals 0

    invoke-direct {p0, p1, p3}, Lorg/telegram/ui/Components/BlurredFrameLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)V

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lorg/telegram/ui/Components/SearchTagsList;->oldItems:Ljava/util/ArrayList;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lorg/telegram/ui/Components/SearchTagsList;->items:Ljava/util/ArrayList;

    iput-boolean p8, p0, Lorg/telegram/ui/Components/SearchTagsList;->showWithCut:Z

    iput p4, p0, Lorg/telegram/ui/Components/SearchTagsList;->currentAccount:I

    iput-object p2, p0, Lorg/telegram/ui/Components/SearchTagsList;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iput-object p7, p0, Lorg/telegram/ui/Components/SearchTagsList;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iput-wide p5, p0, Lorg/telegram/ui/Components/SearchTagsList;->topicId:J

    invoke-static {p7}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->initPaints(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    new-instance p3, Lorg/telegram/ui/Components/SearchTagsList$2;

    invoke-direct {p3, p0, p1, p7}, Lorg/telegram/ui/Components/SearchTagsList$2;-><init>(Lorg/telegram/ui/Components/SearchTagsList;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p3, p0, Lorg/telegram/ui/Components/SearchTagsList;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const p5, 0x40b51eb8    # 5.66f

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p6

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p5

    const/4 p8, 0x0

    invoke-virtual {p3, p6, p8, p5, p8}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {p3, p8}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    new-instance p5, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {p5, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p5, p8}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    invoke-virtual {p3, p5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance p1, Lorg/telegram/ui/Components/SearchTagsList$Adapter;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/SearchTagsList$Adapter;-><init>(Lorg/telegram/ui/Components/SearchTagsList;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/SearchTagsList;->adapter:Lorg/telegram/ui/Components/SearchTagsList$Adapter;

    invoke-virtual {p3, p1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const/4 p1, 0x2

    invoke-virtual {p3, p1}, Landroid/view/View;->setOverScrollMode(I)V

    const/4 p1, -0x1

    const/high16 p5, 0x42400000    # 48.0f

    invoke-static {p1, p5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Lorg/telegram/ui/Components/SearchTagsList$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0, p4, p2}, Lorg/telegram/ui/Components/SearchTagsList$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/SearchTagsList;ILorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {p3, p1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    new-instance p1, Lorg/telegram/ui/Components/SearchTagsList$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0, p4, p2, p7}, Lorg/telegram/ui/Components/SearchTagsList$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/SearchTagsList;ILorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {p3, p1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V

    new-instance p1, Lorg/telegram/ui/Components/SearchTagsList$3;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/SearchTagsList$3;-><init>(Lorg/telegram/ui/Components/SearchTagsList;)V

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 p5, 0x140

    invoke-virtual {p1, p5, p6}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setDurations(J)V

    invoke-virtual {p3, p1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    invoke-static {p4}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    invoke-virtual {p1, p8}, Lorg/telegram/messenger/MediaDataController;->loadSavedReactions(Z)V

    invoke-virtual {p0, p8}, Lorg/telegram/ui/Components/SearchTagsList;->updateTags(Z)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/SearchTagsList;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/SearchTagsList;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/SearchTagsList;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/SearchTagsList;->premiumLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$200()Lorg/telegram/ui/ActionBar/AlertDialog;
    .locals 1

    sget-object v0, Lorg/telegram/ui/Components/SearchTagsList;->currentDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    return-object v0
.end method

.method static synthetic access$202(Lorg/telegram/ui/ActionBar/AlertDialog;)Lorg/telegram/ui/ActionBar/AlertDialog;
    .locals 0

    sput-object p0, Lorg/telegram/ui/Components/SearchTagsList;->currentDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/SearchTagsList;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/SearchTagsList;->oldItems:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/SearchTagsList;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/SearchTagsList;->items:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/SearchTagsList;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/SearchTagsList;->actionBarTagsAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/SearchTagsList;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/SearchTagsList;->actionBarTagsT:F

    return p0
.end method

.method static synthetic access$602(Lorg/telegram/ui/Components/SearchTagsList;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/SearchTagsList;->actionBarTagsT:F

    return p1
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/SearchTagsList;)J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/ui/Components/SearchTagsList;->chosen:J

    return-wide v0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/SearchTagsList;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/SearchTagsList;->currentAccount:I

    return p0
.end method

.method private createPremiumLayout()V
    .locals 14

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchTagsList;->premiumLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/SearchTagsList;->premiumLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lorg/telegram/ui/Components/SearchTagsList$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/SearchTagsList$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/SearchTagsList;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchTagsList;->premiumLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchTagsList;->premiumLayout:Landroid/widget/LinearLayout;

    const v2, 0x3cf5c28f    # 0.03f

    const/high16 v3, 0x3fa00000    # 1.25f

    invoke-static {v0, v2, v3}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;FF)V

    new-instance v0, Lorg/telegram/ui/Components/SearchTagsList$1;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lorg/telegram/ui/Components/SearchTagsList$1;-><init>(Lorg/telegram/ui/Components/SearchTagsList;Landroid/content/Context;)V

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText2:I

    iget-object v3, p0, Lorg/telegram/ui/Components/SearchTagsList;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v3, 0x1

    const/high16 v4, 0x41400000    # 12.0f

    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lorg/telegram/messenger/R$drawable;->msg_mini_lock3:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    new-instance v7, Landroid/graphics/PorterDuffColorFilter;

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageLinkIn:I

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v8, v9}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    new-instance v7, Lorg/telegram/ui/Components/ColoredImageSpan;

    invoke-direct {v7, v6}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/4 v6, 0x0

    invoke-virtual {v7, v6}, Lorg/telegram/ui/Components/ColoredImageSpan;->setTranslateY(F)V

    invoke-virtual {v7, v6}, Lorg/telegram/ui/Components/ColoredImageSpan;->setTranslateX(F)V

    const v6, 0x3f70a3d7    # 0.94f

    invoke-virtual {v7, v6, v6}, Lorg/telegram/ui/Components/ColoredImageSpan;->setScale(FF)V

    new-instance v6, Landroid/text/SpannableString;

    const-string v10, "l"

    invoke-direct {v6, v10}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v6}, Landroid/text/SpannableString;->length()I

    move-result v10

    const/16 v11, 0x11

    invoke-virtual {v6, v7, v1, v10, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    sget v7, Lorg/telegram/messenger/R$string;->AddTagsToYourSavedMessages1:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v5, 0x40800000    # 4.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    const/high16 v10, 0x41100000    # 9.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    invoke-virtual {v0, v6, v7, v12, v13}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v6, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v7, p0, Lorg/telegram/ui/Components/SearchTagsList;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v6, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    new-instance v2, Landroid/text/SpannableStringBuilder;

    sget v3, Lorg/telegram/messenger/R$string;->AddTagsToYourSavedMessages2:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v3, Landroid/text/SpannableString;

    const-string v4, ">"

    invoke-direct {v3, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v7, Lorg/telegram/messenger/R$drawable;->msg_arrowright:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    new-instance v7, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v7, v8, v9}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    new-instance v7, Lorg/telegram/ui/Components/ColoredImageSpan;

    invoke-direct {v7, v4}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    const v4, 0x3f428f5c    # 0.76f

    invoke-virtual {v7, v4, v4}, Lorg/telegram/ui/Components/ColoredImageSpan;->setScale(FF)V

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    neg-int v8, v8

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Lorg/telegram/ui/Components/ColoredImageSpan;->setTranslateX(F)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v7, v4}, Lorg/telegram/ui/Components/ColoredImageSpan;->setTranslateY(F)V

    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v4

    invoke-virtual {v3, v7, v1, v4, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x40b51eb8    # 5.66f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v6, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v1, p0, Lorg/telegram/ui/Components/SearchTagsList;->premiumLayout:Landroid/widget/LinearLayout;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchTagsList;->premiumLayout:Landroid/widget/LinearLayout;

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchTagsList;->premiumLayout:Landroid/widget/LinearLayout;

    const v6, 0x4182a3d7    # 16.33f

    const/4 v7, 0x0

    const/4 v1, -0x1

    const/high16 v2, -0x40000000    # -2.0f

    const/16 v3, 0x17

    const v4, 0x4182a3d7    # 16.33f

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private static synthetic lambda$clear$11(Landroid/view/View;)V
    .locals 2

    instance-of v0, p0, Lorg/telegram/ui/Components/SearchTagsList$TagButton;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/telegram/ui/Components/SearchTagsList$TagButton;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/SearchTagsList$TagButton;->setChosen(ZZ)Z

    :cond_0
    return-void
.end method

.method private synthetic lambda$createPremiumLayout$0(Landroid/view/View;)V
    .locals 3

    new-instance p1, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchTagsList;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    const/16 v1, 0x18

    const/4 v2, 0x1

    invoke-direct {p1, v0, v1, v2}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->show()V

    return-void
.end method

.method private static synthetic lambda$new$1(Landroid/view/View;)V
    .locals 2

    instance-of v0, p0, Lorg/telegram/ui/Components/SearchTagsList$TagButton;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/telegram/ui/Components/SearchTagsList$TagButton;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/SearchTagsList$TagButton;->setChosen(ZZ)Z

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$2(ILorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;I)V
    .locals 5

    if-ltz p4, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchTagsList;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p4, v0, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_1

    new-instance p1, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    const/16 p3, 0x18

    invoke-direct {p1, p2, p3, v0}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->show()V

    return-void

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchTagsList;->items:Ljava/util/ArrayList;

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/SearchTagsList$Item;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SearchTagsList$Item;->hash()J

    move-result-wide p1

    iget-wide v1, p0, Lorg/telegram/ui/Components/SearchTagsList;->chosen:J

    cmp-long v3, v1, p1

    if-nez v3, :cond_2

    const/4 p4, 0x0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Components/SearchTagsList;->items:Ljava/util/ArrayList;

    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lorg/telegram/ui/Components/SearchTagsList$Item;

    iget-object p4, p4, Lorg/telegram/ui/Components/SearchTagsList$Item;->reaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    :goto_0
    invoke-virtual {p0, p4}, Lorg/telegram/ui/Components/SearchTagsList;->setFilter(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)Z

    move-result p4

    if-nez p4, :cond_3

    return-void

    :cond_3
    const/4 p4, 0x0

    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/Components/SearchTagsList;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_8

    iget-object v2, p0, Lorg/telegram/ui/Components/SearchTagsList;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-ne v2, p3, :cond_7

    const/high16 v2, 0x42480000    # 50.0f

    iget-object v3, p0, Lorg/telegram/ui/Components/SearchTagsList;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-gt v1, v0, :cond_5

    if-nez v1, :cond_4

    const/high16 v2, 0x42b40000    # 90.0f

    :cond_4
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    neg-int v2, v2

    :goto_2
    invoke-virtual {v3, v2, p4}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    goto :goto_3

    :cond_5
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    if-lt v1, v3, :cond_7

    iget-object v3, p0, Lorg/telegram/ui/Components/SearchTagsList;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    sub-int/2addr v4, v0

    if-ne v1, v4, :cond_6

    const/high16 v2, 0x42a00000    # 80.0f

    :cond_6
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    goto :goto_2

    :cond_7
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_8
    iget-object p4, p0, Lorg/telegram/ui/Components/SearchTagsList;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/SearchTagsList$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lorg/telegram/ui/Components/SearchTagsList$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {p4, v1}, Landroidx/recyclerview/widget/RecyclerView;->forAllChild(Landroidx/core/util/Consumer;)V

    iget-wide v1, p0, Lorg/telegram/ui/Components/SearchTagsList;->chosen:J

    cmp-long p4, v1, p1

    if-nez p4, :cond_9

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lorg/telegram/ui/Components/SearchTagsList;->chosen:J

    goto :goto_4

    :cond_9
    iput-wide p1, p0, Lorg/telegram/ui/Components/SearchTagsList;->chosen:J

    check-cast p3, Lorg/telegram/ui/Components/SearchTagsList$TagButton;

    invoke-virtual {p3, v0, v0}, Lorg/telegram/ui/Components/SearchTagsList$TagButton;->setChosen(ZZ)Z

    :cond_a
    :goto_4
    return-void
.end method

.method private synthetic lambda$new$3(ILorg/telegram/ui/Components/SearchTagsList$Item;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p2, p2, Lorg/telegram/ui/Components/SearchTagsList$Item;->reaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->toTLReaction()Lorg/telegram/tgnet/TLRPC$Reaction;

    move-result-object p2

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, p3, v1}, Lorg/telegram/ui/Components/SearchTagsList;->openRenameTagAlert(Landroid/content/Context;ILorg/telegram/tgnet/TLRPC$Reaction;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)V

    return-void
.end method

.method private synthetic lambda$new$4(ILorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;I)Z
    .locals 3

    if-ltz p5, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchTagsList;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p5, v0, :cond_4

    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    new-instance p1, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    const/16 p3, 0x18

    invoke-direct {p1, p2, p3, v1}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->show()V

    return v1

    :cond_1
    move-object v0, p4

    check-cast v0, Lorg/telegram/ui/Components/SearchTagsList$TagButton;

    iget-object v0, v0, Lorg/telegram/ui/Components/SearchTagsList$TagButton;->reactionButton:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->startAnimation()V

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchTagsList;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lorg/telegram/ui/Components/SearchTagsList$Item;

    invoke-static {p2, p4}, Lorg/telegram/ui/Components/ItemOptions;->makeOptions(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p2

    const/4 p4, 0x3

    invoke-virtual {p2, p4}, Lorg/telegram/ui/Components/ItemOptions;->setGravity(I)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p2

    sget p4, Lorg/telegram/messenger/R$drawable;->menu_tag_rename:I

    iget-object v0, p5, Lorg/telegram/ui/Components/SearchTagsList$Item;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget v0, Lorg/telegram/messenger/R$string;->SavedTagLabelTag:I

    goto :goto_0

    :cond_3
    sget v0, Lorg/telegram/messenger/R$string;->SavedTagRenameTag:I

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/Components/SearchTagsList$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0, p1, p5, p3}, Lorg/telegram/ui/Components/SearchTagsList$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/SearchTagsList;ILorg/telegram/ui/Components/SearchTagsList$Item;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {p2, p4, v0, v2}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ItemOptions;->show()Lorg/telegram/ui/Components/ItemOptions;

    return v1

    :cond_4
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method private static synthetic lambda$openRenameTagAlert$10(Lorg/telegram/ui/Components/EditTextBoldCursor;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    return-void
.end method

.method private static synthetic lambda$openRenameTagAlert$5(Lorg/telegram/ui/Components/EditTextBoldCursor;ILorg/telegram/tgnet/TLRPC$Reaction;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xc

    if-le v0, v1, :cond_0

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->shakeView(Landroid/view/View;)V

    return-void

    :cond_0
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    invoke-static {p2}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->fromTL(Lorg/telegram/tgnet/TLRPC$Reaction;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object p1

    invoke-virtual {p0, p1, p4}, Lorg/telegram/messenger/MessagesController;->renameSavedReactionTag(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;Ljava/lang/String;)V

    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    return-void
.end method

.method private static synthetic lambda$openRenameTagAlert$6(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    return-void
.end method

.method private static synthetic lambda$openRenameTagAlert$7(Landroid/view/View;Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    sput-object p1, Lorg/telegram/ui/Components/SearchTagsList;->currentDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method private static synthetic lambda$openRenameTagAlert$8(Lorg/telegram/ui/Components/EditTextBoldCursor;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    return-void
.end method

.method private static synthetic lambda$openRenameTagAlert$9(Lorg/telegram/ui/Components/EditTextBoldCursor;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$show$13(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/SearchTagsList;->actionBarTagsT:F

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/SearchTagsList;->setShown(F)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/SearchTagsList;->onShownUpdate(Z)V

    return-void
.end method

.method private synthetic lambda$updateTags$12()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchTagsList;->premiumLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static onBackPressedRenameTagAlert()Z
    .locals 1

    sget-object v0, Lorg/telegram/ui/Components/SearchTagsList;->currentDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    sput-object v0, Lorg/telegram/ui/Components/SearchTagsList;->currentDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static openRenameTagAlert(Landroid/content/Context;ILorg/telegram/tgnet/TLRPC$Reaction;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    invoke-static/range {p0 .. p0}, Lorg/telegram/messenger/AndroidUtilities;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    :goto_0
    const/4 v11, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->measureKeyboardHeight()I

    move-result v1

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    if-le v1, v2, :cond_1

    if-nez p4, :cond_1

    const/4 v13, 0x1

    goto :goto_1

    :cond_1
    const/4 v13, 0x0

    :goto_1
    new-array v14, v11, [Lorg/telegram/ui/ActionBar/AlertDialog;

    if-eqz v13, :cond_2

    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialogDecor$Builder;

    invoke-direct {v1, v0, v8}, Lorg/telegram/ui/ActionBar/AlertDialogDecor$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    :goto_2
    move-object v15, v1

    goto :goto_3

    :cond_2
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-direct {v1, v0, v8}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_2

    :goto_3
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1, v7}, Lorg/telegram/messenger/MessagesController;->getSavedTagName(Lorg/telegram/tgnet/TLRPC$Reaction;)Ljava/lang/String;

    move-result-object v16

    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-static/range {p2 .. p2}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->fromTL(Lorg/telegram/tgnet/TLRPC$Reaction;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object v2

    const/16 v3, 0x14

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->toCharSequence(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string v2, "  "

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget v2, Lorg/telegram/messenger/R$string;->SavedTagLabelTag:I

    goto :goto_4

    :cond_3
    sget v2, Lorg/telegram/messenger/R$string;->SavedTagRenameTag:I

    :goto_4
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v15, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    new-instance v6, Lorg/telegram/ui/Components/SearchTagsList$4;

    invoke-direct {v6, v0, v8}, Lorg/telegram/ui/Components/SearchTagsList$4;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    new-instance v5, Lorg/telegram/ui/Components/SearchTagsList$5;

    move-object v1, v5

    move-object v2, v6

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-object v12, v5

    move-object v5, v14

    move-object v9, v6

    move-object v6, v10

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Components/SearchTagsList$5;-><init>(Lorg/telegram/ui/Components/EditTextBoldCursor;ILorg/telegram/tgnet/TLRPC$Reaction;[Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/view/View;)V

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getCurrentKeyboardLanguage()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v11}, Lorg/telegram/messenger/MediaDataController;->fetchNewEmojiKeywords([Ljava/lang/String;Z)V

    const/high16 v1, 0x41900000    # 18.0f

    invoke-virtual {v9, v11, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextSize(IF)V

    if-nez v16, :cond_4

    const-string v16, ""

    :cond_4
    move-object/from16 v1, v16

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-static {v1, v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v9, v2}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_groupcreate_hintText:I

    invoke-static {v2, v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v9, v2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHintColor(I)V

    sget v2, Lorg/telegram/messenger/R$string;->SavedTagLabelPlaceholder:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHintText(Ljava/lang/CharSequence;)V

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setSingleLine(Z)V

    invoke-virtual {v9, v11}, Landroid/view/View;->setFocusable(Z)V

    const/16 v2, 0x4000

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setInputType(I)V

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteInputField:I

    invoke-static {v2, v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteInputFieldActivated:I

    invoke-static {v3, v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-static {v4, v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-virtual {v9, v2, v3, v4}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setLineColors(III)V

    const/4 v2, 0x6

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setImeOptions(I)V

    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/high16 v2, 0x42280000    # 42.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v9, v3, v3, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v0, 0x41800000    # 16.0f

    invoke-virtual {v3, v11, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    sget v0, Lorg/telegram/messenger/R$string;->SavedTagLabelTagText:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v21, 0x41c00000    # 24.0f

    const/high16 v22, 0x41400000    # 12.0f

    const/16 v17, -0x1

    const/16 v18, -0x2

    const/high16 v19, 0x41c00000    # 24.0f

    const/high16 v20, 0x40a00000    # 5.0f

    invoke-static/range {v17 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v22, 0x41200000    # 10.0f

    const/16 v20, 0x0

    invoke-static/range {v17 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v2, v9, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v15, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    const/high16 v0, 0x43920000    # 292.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {v15, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setWidth(I)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget v0, Lorg/telegram/messenger/R$string;->Save:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/SearchTagsList$$ExternalSyntheticLambda8;

    move/from16 v2, p1

    invoke-direct {v1, v9, v2, v7}, Lorg/telegram/ui/Components/SearchTagsList$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Components/EditTextBoldCursor;ILorg/telegram/tgnet/TLRPC$Reaction;)V

    invoke-virtual {v15, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget v0, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/SearchTagsList$$ExternalSyntheticLambda9;

    invoke-direct {v1}, Lorg/telegram/ui/Components/SearchTagsList$$ExternalSyntheticLambda9;-><init>()V

    invoke-virtual {v15, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {v15}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    if-eqz v13, :cond_5

    sput-object v0, Lorg/telegram/ui/Components/SearchTagsList;->currentDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    const/4 v1, 0x0

    aput-object v0, v14, v1

    new-instance v1, Lorg/telegram/ui/Components/SearchTagsList$$ExternalSyntheticLambda10;

    invoke-direct {v1, v10}, Lorg/telegram/ui/Components/SearchTagsList$$ExternalSyntheticLambda10;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    sget-object v0, Lorg/telegram/ui/Components/SearchTagsList;->currentDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    new-instance v1, Lorg/telegram/ui/Components/SearchTagsList$$ExternalSyntheticLambda11;

    invoke-direct {v1, v9}, Lorg/telegram/ui/Components/SearchTagsList$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Components/EditTextBoldCursor;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    sget-object v0, Lorg/telegram/ui/Components/SearchTagsList;->currentDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog;->showDelayed(J)V

    const/4 v1, 0x0

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    aput-object v0, v14, v1

    new-instance v2, Lorg/telegram/ui/Components/SearchTagsList$$ExternalSyntheticLambda12;

    invoke-direct {v2, v9}, Lorg/telegram/ui/Components/SearchTagsList$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/Components/EditTextBoldCursor;)V

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    aget-object v0, v14, v1

    new-instance v2, Lorg/telegram/ui/Components/SearchTagsList$$ExternalSyntheticLambda13;

    invoke-direct {v2, v9}, Lorg/telegram/ui/Components/SearchTagsList$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/Components/EditTextBoldCursor;)V

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    aget-object v0, v14, v1

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    :goto_5
    aget-object v0, v14, v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->setDismissDialogByButtons(Z)V

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {v9, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    return-void
.end method


# virtual methods
.method public attach()V
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Components/SearchTagsList;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->savedReactionTagsUpdate:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v0, p0, Lorg/telegram/ui/Components/SearchTagsList;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public clear()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchTagsList;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/SearchTagsList$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/telegram/ui/Components/SearchTagsList$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->forAllChild(Landroidx/core/util/Consumer;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/ui/Components/SearchTagsList;->chosen:J

    return-void
.end method

.method public detach()V
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Components/SearchTagsList;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->savedReactionTagsUpdate:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v0, p0, Lorg/telegram/ui/Components/SearchTagsList;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 2

    sget p2, Lorg/telegram/messenger/NotificationCenter;->savedReactionTagsUpdate:I

    if-ne p1, p2, :cond_1

    const/4 p1, 0x0

    aget-object p1, p3, p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-eqz p3, :cond_0

    iget-wide v0, p0, Lorg/telegram/ui/Components/SearchTagsList;->topicId:J

    cmp-long p3, p1, v0

    if-nez p3, :cond_2

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/SearchTagsList;->updateTags(Z)V

    goto :goto_0

    :cond_1
    sget p2, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    if-ne p1, p2, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Lorg/telegram/ui/Components/SearchTagsList;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance p2, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView$$ExternalSyntheticLambda10;

    invoke-direct {p2}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView$$ExternalSyntheticLambda10;-><init>()V

    invoke-static {p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->forEachViews(Landroidx/recyclerview/widget/RecyclerView;Lcom/google/android/exoplayer2/util/Consumer;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-boolean v0, p0, Lorg/telegram/ui/Components/SearchTagsList;->showWithCut:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/SearchTagsList;->getCurrentHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchTagsList;->backgroundPaint2:Landroid/graphics/Paint;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/SearchTagsList;->getCurrentHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lorg/telegram/ui/Components/SearchTagsList;->backgroundPaint2:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_1
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/BlurredFrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Components/SearchTagsList;->shownT:F

    const/high16 v1, 0x3f000000    # 0.5f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 9

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchTagsList;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchTagsList;->premiumLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v6, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchTagsList;->premiumLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    sub-float/2addr v1, v0

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float v1, v1, v0

    float-to-int v7, v1

    const/4 v4, 0x0

    const/16 v8, 0x1f

    const/4 v3, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return p2

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method public getCurrentHeight()I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Components/SearchTagsList;->shownT:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public hasFilters()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchTagsList;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/SearchTagsList;->shownPremiumLayout:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected onMeasure(II)V
    .locals 1

    const/high16 p2, 0x42200000    # 40.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method protected abstract onShownUpdate(Z)V
.end method

.method public setBackgroundColor(I)V
    .locals 2

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->chatBlurEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/BlurredFrameLayout;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lorg/telegram/ui/Components/BlurredFrameLayout;->setBackgroundColor(I)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/SearchTagsList;->backgroundPaint2:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    :goto_0
    return-void
.end method

.method public setChosen(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;Z)V
    .locals 7

    if-nez p1, :cond_1

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/ui/Components/SearchTagsList;->chosen:J

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/SearchTagsList;->setFilter(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)Z

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchTagsList;->adapter:Lorg/telegram/ui/Components/SearchTagsList$Adapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/SearchTagsList;->items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/Components/SearchTagsList;->items:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/SearchTagsList$Item;

    iget-wide v2, p1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->hash:J

    iget-object v4, v1, Lorg/telegram/ui/Components/SearchTagsList$Item;->reaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    iget-wide v4, v4, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->hash:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_3

    invoke-virtual {v1}, Lorg/telegram/ui/Components/SearchTagsList$Item;->hash()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/ui/Components/SearchTagsList;->chosen:J

    if-eqz p2, :cond_2

    iget-object p1, v1, Lorg/telegram/ui/Components/SearchTagsList$Item;->reaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/SearchTagsList;->setFilter(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)Z

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchTagsList;->adapter:Lorg/telegram/ui/Components/SearchTagsList$Adapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-object p1, p0, Lorg/telegram/ui/Components/SearchTagsList;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method protected abstract setFilter(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)Z
.end method

.method public setShown(F)V
    .locals 4

    iput p1, p0, Lorg/telegram/ui/Components/SearchTagsList;->shownT:F

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchTagsList;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchTagsList;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchTagsList;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const v1, 0x3f4ccccd    # 0.8f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchTagsList;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v1, v2, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    iget-boolean v0, p0, Lorg/telegram/ui/Components/SearchTagsList;->showWithCut:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchTagsList;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public show(Z)V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/telegram/ui/Components/SearchTagsList;->actionBarTagsAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/telegram/ui/Components/SearchTagsList;->actionBarTagsAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget v1, p0, Lorg/telegram/ui/Components/SearchTagsList;->actionBarTagsT:F

    if-eqz p1, :cond_2

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x2

    new-array v3, v3, [F

    aput v1, v3, v0

    const/4 v0, 0x1

    aput v2, v3, v0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/SearchTagsList;->actionBarTagsAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Components/SearchTagsList$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/SearchTagsList$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/SearchTagsList;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchTagsList;->actionBarTagsAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchTagsList;->actionBarTagsAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x140

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchTagsList;->actionBarTagsAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Components/SearchTagsList$7;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/SearchTagsList$7;-><init>(Lorg/telegram/ui/Components/SearchTagsList;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/SearchTagsList;->actionBarTagsAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public shown()Z
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Components/SearchTagsList;->shownT:F

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public updateTags(Z)V
    .locals 17

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iget-object v2, v0, Lorg/telegram/ui/Components/SearchTagsList;->oldItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, v0, Lorg/telegram/ui/Components/SearchTagsList;->oldItems:Ljava/util/ArrayList;

    iget-object v3, v0, Lorg/telegram/ui/Components/SearchTagsList;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v2, v0, Lorg/telegram/ui/Components/SearchTagsList;->items:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget v2, v0, Lorg/telegram/ui/Components/SearchTagsList;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-wide v3, v0, Lorg/telegram/ui/Components/SearchTagsList;->topicId:J

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/MessagesController;->getSavedReactionTags(J)Lorg/telegram/tgnet/TLRPC$TL_messages_savedReactionsTags;

    move-result-object v3

    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    if-eqz v3, :cond_4

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    iget-object v10, v3, Lorg/telegram/tgnet/TLRPC$messages_SavedReactionTags;->tags:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v8, v10, :cond_5

    iget-object v10, v3, Lorg/telegram/tgnet/TLRPC$messages_SavedReactionTags;->tags:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/tgnet/TLRPC$TL_savedReactionTag;

    iget-object v11, v10, Lorg/telegram/tgnet/TLRPC$TL_savedReactionTag;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    invoke-static {v11}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->fromTL(Lorg/telegram/tgnet/TLRPC$Reaction;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object v11

    iget-wide v12, v11, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->hash:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    iget-wide v12, v0, Lorg/telegram/ui/Components/SearchTagsList;->topicId:J

    cmp-long v14, v12, v5

    if-eqz v14, :cond_0

    iget v14, v10, Lorg/telegram/tgnet/TLRPC$TL_savedReactionTag;->count:I

    if-gtz v14, :cond_0

    goto :goto_2

    :cond_0
    iget v14, v10, Lorg/telegram/tgnet/TLRPC$TL_savedReactionTag;->count:I

    cmp-long v15, v12, v5

    if-eqz v15, :cond_1

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$TL_savedReactionTag;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    invoke-virtual {v2, v10}, Lorg/telegram/messenger/MessagesController;->getSavedTagName(Lorg/telegram/tgnet/TLRPC$Reaction;)Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    :cond_1
    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$TL_savedReactionTag;->title:Ljava/lang/String;

    :goto_1
    invoke-static {v11, v14, v10}, Lorg/telegram/ui/Components/SearchTagsList$Item;->get(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;ILjava/lang/String;)Lorg/telegram/ui/Components/SearchTagsList$Item;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/ui/Components/SearchTagsList$Item;->hash()J

    move-result-wide v12

    iget-wide v14, v0, Lorg/telegram/ui/Components/SearchTagsList;->chosen:J

    cmp-long v16, v12, v14

    if-nez v16, :cond_2

    const/4 v9, 0x1

    :cond_2
    iget-object v12, v0, Lorg/telegram/ui/Components/SearchTagsList;->items:Ljava/util/ArrayList;

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v10, v11, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->hash:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_4
    const/4 v9, 0x0

    :cond_5
    if-nez v9, :cond_6

    iget-wide v1, v0, Lorg/telegram/ui/Components/SearchTagsList;->chosen:J

    cmp-long v3, v1, v5

    if-eqz v3, :cond_6

    iput-wide v5, v0, Lorg/telegram/ui/Components/SearchTagsList;->chosen:J

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/SearchTagsList;->setFilter(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)Z

    :cond_6
    if-eqz p1, :cond_7

    new-instance v1, Lorg/telegram/ui/Components/SearchTagsList$6;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/SearchTagsList$6;-><init>(Lorg/telegram/ui/Components/SearchTagsList;)V

    invoke-static {v1}, Landroidx/recyclerview/widget/DiffUtil;->calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;)Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Components/SearchTagsList;->adapter:Lorg/telegram/ui/Components/SearchTagsList$Adapter;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_3

    :cond_7
    iget-object v1, v0, Lorg/telegram/ui/Components/SearchTagsList;->adapter:Lorg/telegram/ui/Components/SearchTagsList$Adapter;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :goto_3
    iget v1, v0, Lorg/telegram/ui/Components/SearchTagsList;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v1

    xor-int/2addr v1, v4

    iput-boolean v1, v0, Lorg/telegram/ui/Components/SearchTagsList;->shownPremiumLayout:Z

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eqz v1, :cond_8

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/SearchTagsList;->createPremiumLayout()V

    if-nez p1, :cond_a

    iget-object v1, v0, Lorg/telegram/ui/Components/SearchTagsList;->premiumLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/SearchTagsList;->premiumLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, v0, Lorg/telegram/ui/Components/SearchTagsList;->premiumLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    :goto_4
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_5

    :cond_8
    iget-object v1, v0, Lorg/telegram/ui/Components/SearchTagsList;->premiumLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_a

    if-eqz p1, :cond_9

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/SearchTagsList$$ExternalSyntheticLambda5;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/SearchTagsList$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/SearchTagsList;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    goto :goto_4

    :cond_9
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, v0, Lorg/telegram/ui/Components/SearchTagsList;->premiumLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    :goto_5
    return-void
.end method
