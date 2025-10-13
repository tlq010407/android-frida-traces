.class Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$TopCell;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TopCell"
.end annotation


# instance fields
.field private final addedChats:Ljava/util/List;

.field private final arrowView:Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$ArrowView;

.field private final avatarsContainer:Landroid/widget/FrameLayout;

.field private final avatarsWrapper:Landroid/widget/FrameLayout;

.field private final description:Landroid/widget/TextView;

.field private final toAvatar:Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$AvatarHolderView;


# direct methods
.method public static synthetic $r8$lambda$gWjA69fY9828v8mIfgoMFjI1LEs(Lorg/telegram/ui/ActionBar/BottomSheet;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$TopCell;->lambda$setData$0(Lorg/telegram/ui/ActionBar/BottomSheet;)V

    return-void
.end method

.method public static synthetic $r8$lambda$obDywsXXdigYdh_1vzUK2-wRSoI(Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$TopCell;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$TopCell;->lambda$setData$1(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 12

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$TopCell;->addedChats:Ljava/util/List;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    new-instance v2, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$TopCell;->avatarsContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    new-instance v3, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$TopCell;->avatarsWrapper:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v5, -0x1

    const/high16 v6, 0x428c0000    # 70.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$ArrowView;

    invoke-direct {v1, p1}, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$ArrowView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$TopCell;->arrowView:Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$ArrowView;

    const/16 v3, 0x18

    const/16 v4, 0x11

    invoke-static {v3, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$AvatarHolderView;

    invoke-direct {v1, p1}, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$AvatarHolderView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$TopCell;->toAvatar:Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$AvatarHolderView;

    const/4 v3, 0x2

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    const/16 v3, 0x46

    invoke-static {v3, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, -0x1

    const/16 v5, 0x46

    const/4 v6, 0x0

    const/high16 v7, 0x41700000    # 15.0f

    invoke-static/range {v4 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    sget p1, Lorg/telegram/messenger/R$string;->BoostingReassignBoost:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p1, 0x41a00000    # 20.0f

    invoke-virtual {v1, v0, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v7, 0x0

    const/4 v8, 0x7

    const/4 v2, -0x2

    const/4 v3, -0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0xf

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$TopCell;->description:Landroid/widget/TextView;

    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p1}, Landroid/widget/TextView;->getLineSpacingExtra()F

    move-result v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    move-result v1

    const v2, 0x3f8ccccd    # 1.1f

    mul-float v1, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setLineSpacing(FF)V

    const/16 v7, 0x1c

    const/16 v8, 0x12

    const/4 v2, -0x2

    const/16 v5, 0x1c

    const/4 v6, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$TopCell;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$TopCell;->avatarsWrapper:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method private static synthetic lambda$setData$0(Lorg/telegram/ui/ActionBar/BottomSheet;)V
    .locals 2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    sget p0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p0

    sget v0, Lorg/telegram/messenger/NotificationCenter;->didStartedMultiGiftsSelector:I

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    new-instance p0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$TopCell$$ExternalSyntheticLambda2;

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$TopCell$$ExternalSyntheticLambda2;-><init>()V

    const-wide/16 v0, 0xdc

    invoke-static {p0, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private synthetic lambda$setData$1(I)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$TopCell;->description:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$TopCell;->description:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    const-string v1, "\n"

    invoke-interface {v0, p1, v1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public setData(Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/ui/ActionBar/BottomSheet;)V
    .locals 6

    const/4 v0, 0x2

    :try_start_0
    const-string v1, "%3$s"

    const-string v2, "BoostingReassignBoostTextPluralWithLink"

    invoke-static {}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->boostsPerSentGift()I

    move-result v3

    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    :goto_0
    new-array v4, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 p1, 0x1

    aput-object v1, v4, p1

    invoke-static {v2, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    const-string v2, "BoostingReassignBoostTextLink"

    sget v3, Lorg/telegram/messenger/R$string;->BoostingReassignBoostTextLink:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageLinkIn:I

    new-instance v4, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$TopCell$$ExternalSyntheticLambda0;

    invoke-direct {v4, p2}, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$TopCell$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ActionBar/BottomSheet;)V

    invoke-static {v2, v3, v0, v4}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;IILjava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    invoke-static {p1, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    add-int/lit8 v1, v0, 0x4

    invoke-virtual {p1, v0, v1, p2}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$TopCell;->description:Landroid/widget/TextView;

    sget-object v1, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p2, p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$TopCell;->description:Landroid/widget/TextView;

    new-instance p2, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$TopCell$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, v0}, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$TopCell$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$TopCell;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method public showBoosts(Ljava/util/List;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/tl/TL_stories$TL_myBoost;

    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v1, v1, Lorg/telegram/tgnet/tl/TL_stories$TL_myBoost;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v1}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v3

    neg-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0, p2}, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$TopCell;->showChats(Ljava/util/List;Lorg/telegram/tgnet/TLRPC$Chat;)V

    return-void
.end method

.method public showChats(Ljava/util/List;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 18

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v6, v0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$TopCell;->addedChats:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v4, v0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$TopCell;->addedChats:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$Chat;

    move-object/from16 v6, p1

    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_2
    iget-object v7, v0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$TopCell;->avatarsWrapper:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-ge v6, v7, :cond_5

    iget-object v7, v0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$TopCell;->avatarsWrapper:Landroid/widget/FrameLayout;

    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$AvatarHolderView;

    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_4

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_5
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_6
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x0

    const/high16 v9, 0x41b80000    # 23.0f

    const/4 v10, 0x2

    const/4 v11, 0x0

    const v12, 0x3dcccccd    # 0.1f

    const/high16 v13, 0x3f800000    # 1.0f

    if-eqz v7, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$Chat;

    new-instance v15, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$AvatarHolderView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-direct {v15, v14}, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$AvatarHolderView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v15, v10, v8}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    invoke-virtual {v15, v7}, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$AvatarHolderView;->setChat(Lorg/telegram/tgnet/TLRPC$Chat;)V

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    iget-object v8, v0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$TopCell;->avatarsWrapper:Landroid/widget/FrameLayout;

    const/16 v10, 0x11

    const/16 v14, 0x46

    invoke-static {v14, v14, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v8, v15, v5, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    neg-int v8, v7

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    mul-int v8, v8, v9

    int-to-float v8, v8

    invoke-virtual {v15, v8}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {v15, v11}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v15, v12}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v15, v12}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {v15}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8, v13}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8, v13}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8, v13}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    const/16 v9, 0xc8

    int-to-long v9, v9

    invoke-virtual {v8, v9, v10}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewPropertyAnimator;->start()V

    if-nez v7, :cond_6

    invoke-static {v15}, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$AvatarHolderView;->access$700(Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$AvatarHolderView;)Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$BoostIconView;

    move-result-object v7

    invoke-virtual {v7, v13}, Landroid/view/View;->setScaleY(F)V

    invoke-static {v15}, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$AvatarHolderView;->access$700(Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$AvatarHolderView;)Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$BoostIconView;

    move-result-object v7

    invoke-virtual {v7, v13}, Landroid/view/View;->setScaleX(F)V

    invoke-static {v15}, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$AvatarHolderView;->access$700(Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$AvatarHolderView;)Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$BoostIconView;

    move-result-object v7

    invoke-virtual {v7, v13}, Landroid/view/View;->setAlpha(F)V

    goto :goto_3

    :cond_7
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v14, 0x1

    if-eqz v7, :cond_e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_5
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_9

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v5, v16

    check-cast v5, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$AvatarHolderView;

    iget-object v8, v5, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$AvatarHolderView;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-ne v8, v7, :cond_8

    goto :goto_6

    :cond_8
    const/4 v5, 0x0

    const/4 v8, 0x0

    goto :goto_5

    :cond_9
    const/4 v5, 0x0

    :goto_6
    if-eqz v5, :cond_d

    const-string v7, "REMOVED"

    invoke-virtual {v5, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v5}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    const/16 v8, 0xc8

    int-to-long v11, v8

    invoke-virtual {v7, v11, v12}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    new-instance v8, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$TopCell$1;

    invoke-direct {v8, v0, v5}, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$TopCell$1;-><init>(Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$TopCell;Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$AvatarHolderView;)V

    invoke-virtual {v7, v8}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewPropertyAnimator;->start()V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v8, 0x0

    :cond_a
    :goto_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v15, v17

    check-cast v15, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$AvatarHolderView;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    if-eq v15, v5, :cond_a

    add-int/lit8 v8, v8, 0x1

    sub-int v13, v17, v8

    invoke-virtual {v15}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v15

    neg-int v13, v13

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v17

    mul-int v13, v13, v17

    int-to-float v13, v13

    invoke-virtual {v15, v13}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v13

    invoke-virtual {v13, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v13

    invoke-virtual {v13, v11, v12}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/ViewPropertyAnimator;->start()V

    const/high16 v13, 0x3f800000    # 1.0f

    goto :goto_7

    :cond_b
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v14

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v5, :cond_c

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v14, :cond_c

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v10

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$AvatarHolderView;

    invoke-static {v5}, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$AvatarHolderView;->access$700(Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$AvatarHolderView;)Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$BoostIconView;

    move-result-object v5

    const v7, 0x3dcccccd    # 0.1f

    invoke-virtual {v5, v7}, Landroid/view/View;->setScaleY(F)V

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v10

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$AvatarHolderView;

    invoke-static {v5}, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$AvatarHolderView;->access$700(Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$AvatarHolderView;)Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$BoostIconView;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/View;->setScaleX(F)V

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v10

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$AvatarHolderView;

    invoke-static {v5}, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$AvatarHolderView;->access$700(Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$AvatarHolderView;)Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$BoostIconView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v5, v8}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v11, v12}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_c
    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const v12, 0x3dcccccd    # 0.1f

    const/high16 v13, 0x3f800000    # 1.0f

    goto/16 :goto_4

    :cond_d
    const/4 v5, 0x0

    const/4 v8, 0x0

    goto/16 :goto_4

    :cond_e
    iget-object v4, v0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$TopCell;->toAvatar:Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$AvatarHolderView;

    iget-object v5, v4, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$AvatarHolderView;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-nez v5, :cond_f

    move-object/from16 v5, p2

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$AvatarHolderView;->setChat(Lorg/telegram/tgnet/TLRPC$Chat;)V

    :cond_f
    iget-object v4, v0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$TopCell;->addedChats:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$TopCell;->addedChats:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$TopCell;->avatarsContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$TopCell;->addedChats:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_10

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$TopCell;->addedChats:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v14, :cond_11

    :cond_10
    const/16 v2, 0xc8

    goto :goto_9

    :cond_11
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$TopCell;->addedChats:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v14

    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$TopCell;->avatarsContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/high16 v4, 0x41380000    # 11.5f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    mul-int v4, v4, v1

    int-to-float v1, v4

    invoke-virtual {v2, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/16 v2, 0xc8

    :goto_8
    int-to-long v4, v2

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_a

    :goto_9
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$TopCell;->avatarsContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    goto :goto_8

    :goto_a
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$TopCell;->toAvatar:Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$AvatarHolderView;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$TopCell;->avatarsWrapper:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$TopCell;->addedChats:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$TopCell;->avatarsWrapper:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/16 v4, 0xc8

    int-to-long v4, v4

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$TopCell;->toAvatar:Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$AvatarHolderView;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    :goto_b
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_c

    :cond_12
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$TopCell;->avatarsWrapper:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x42400000    # 48.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/16 v4, 0xc8

    int-to-long v4, v4

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$TopCell;->toAvatar:Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$AvatarHolderView;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    goto :goto_b

    :goto_c
    return-void
.end method
