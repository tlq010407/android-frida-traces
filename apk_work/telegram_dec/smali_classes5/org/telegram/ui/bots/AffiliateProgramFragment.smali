.class public Lorg/telegram/ui/bots/AffiliateProgramFragment;
.super Lorg/telegram/ui/GradientHeaderActivity;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/bots/AffiliateProgramFragment$BulletinTextView;,
        Lorg/telegram/ui/bots/AffiliateProgramFragment$FeatureCell;,
        Lorg/telegram/ui/bots/AffiliateProgramFragment$ColorfulTextCell;
    }
.end annotation


# instance fields
.field private aboveTitleView:Landroid/widget/FrameLayout;

.field private adapter:Lorg/telegram/ui/Components/UniversalAdapter;

.field private attached:Z

.field private final bot_id:J

.field private button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

.field private buttonLayout:Landroid/widget/LinearLayout;

.field private buttonSubtext:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

.field private durationTexts:[Ljava/lang/String;

.field private final durationValues:Ljava/util/List;

.field private emptyLayout:Landroid/view/View;

.field private iconTextureView:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

.field private initialProgram:Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;

.field private new_program:Z

.field private program:Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;

.field private final updateTimerRunnable:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$5AKerYPz1JiDC3oGyjwkL8l7ZbA(Lorg/telegram/ui/bots/AffiliateProgramFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/bots/AffiliateProgramFragment;->lambda$createView$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$6IbDxUjmS9Jk5B8MN6a7wtE1kNI(Lorg/telegram/ui/bots/AffiliateProgramFragment;Lorg/telegram/tgnet/TLRPC$UserFull;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/bots/AffiliateProgramFragment;->lambda$onFragmentCreate$15(Lorg/telegram/tgnet/TLRPC$UserFull;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8Xfywz4cg6y95eDRV89fiN3m2Es(Lorg/telegram/ui/bots/AffiliateProgramFragment;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/bots/AffiliateProgramFragment;->lambda$fillItems$12(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EQ5wnlZQ3xR2TZMrxjtgeX2AxxM(Lorg/telegram/ui/bots/AffiliateProgramFragment;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/bots/AffiliateProgramFragment;->lambda$createView$1(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$R3GcdEEA8Jsc8jrF1vECr6mHRrE(Lorg/telegram/ui/bots/AffiliateProgramFragment;Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/bots/AffiliateProgramFragment;->lambda$createView$4(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$W3wKB9rwEvWqtdsAd9LttUA9EuE(Lorg/telegram/ui/bots/AffiliateProgramFragment;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/bots/AffiliateProgramFragment;->lambda$end$9(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Yl-Dx33kBV6UK6bGPvu9d4mpwjY(Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/bots/AffiliateProgramFragment;->lambda$createView$3(Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZaVuy-tklNnz-GfqQxyUl6OKnBw(Lorg/telegram/ui/bots/AffiliateProgramFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/bots/AffiliateProgramFragment;->lambda$update$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$akX54TSsQSEDf1DDx1AK5KndU5Y(Lorg/telegram/ui/bots/AffiliateProgramFragment;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/bots/AffiliateProgramFragment;->lambda$end$10(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$eUFssXj_CmByVKFWXvUia8iqiFw(Ljava/lang/Integer;)Ljava/lang/CharSequence;
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/bots/AffiliateProgramFragment;->lambda$fillItems$11(Ljava/lang/Integer;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$hbSop9KL4yS4Jlv_Zq9Eb4f9Fh0(Lorg/telegram/ui/bots/AffiliateProgramFragment;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/bots/AffiliateProgramFragment;->lambda$createView$0(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hs6PhSgJrJd8fzXKshEx_Elxi30(Lorg/telegram/ui/bots/AffiliateProgramFragment;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/bots/AffiliateProgramFragment;->lambda$end$8(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oCzC9_2l1x9HilYYaam1MxQDPHg(Lorg/telegram/ui/bots/AffiliateProgramFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/bots/AffiliateProgramFragment;->lambda$new$7()V

    return-void
.end method

.method public static synthetic $r8$lambda$r7umzBoWXuQ0ahyJuhMD0F5EG4M(Lorg/telegram/ui/bots/AffiliateProgramFragment;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/bots/AffiliateProgramFragment;->lambda$fillItems$13(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tRT_uCGe0akKqxgh-9OALA8wtuM(Lorg/telegram/ui/bots/AffiliateProgramFragment;Landroid/view/View;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/bots/AffiliateProgramFragment;->lambda$createView$5(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$x7Qtj0UrbfQUbVNkmu5wb4xPcEQ(Lorg/telegram/ui/bots/AffiliateProgramFragment;Lorg/telegram/tgnet/TLRPC$UserFull;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/bots/AffiliateProgramFragment;->lambda$onFragmentCreate$14(Lorg/telegram/tgnet/TLRPC$UserFull;)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 12

    invoke-direct {p0}, Lorg/telegram/ui/GradientHeaderActivity;-><init>()V

    new-instance v0, Lorg/telegram/ui/bots/AffiliateProgramFragment$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lorg/telegram/ui/bots/AffiliateProgramFragment$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/bots/AffiliateProgramFragment;)V

    iput-object v0, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment;->updateTimerRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment;->durationTexts:[Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0xc

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v7, 0x18

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v8, 0x24

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x7

    new-array v11, v11, [Ljava/lang/Integer;

    aput-object v1, v11, v9

    aput-object v3, v11, v0

    const/4 v1, 0x2

    aput-object v5, v11, v1

    aput-object v6, v11, v2

    const/4 v1, 0x4

    aput-object v7, v11, v1

    const/4 v1, 0x5

    aput-object v8, v11, v1

    aput-object v10, v11, v4

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment;->durationValues:Ljava/util/List;

    iput-wide p1, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment;->bot_id:J

    invoke-virtual {p0, v0}, Lorg/telegram/ui/GradientHeaderActivity;->setWhiteBackground(Z)V

    const/high16 p1, 0x42700000    # 60.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/GradientHeaderActivity;->setMinusHeaderHeight(I)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/bots/AffiliateProgramFragment;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/bots/AffiliateProgramFragment;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/GradientHeaderActivity;->yOffset:I

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/bots/AffiliateProgramFragment;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method private closeToProfile(Z)V
    .locals 10

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_0
    if-lez v3, :cond_1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v5, v4, Lorg/telegram/ui/ProfileActivity;

    if-eqz v5, :cond_0

    move-object v5, v4

    check-cast v5, Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/ProfileActivity;->getDialogId()J

    move-result-wide v5

    iget-wide v7, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment;->bot_id:J

    cmp-long v9, v5, v7

    if-nez v9, :cond_0

    move-object v1, v4

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    :goto_1
    if-eqz v1, :cond_3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_2
    if-le v4, v3, :cond_2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-interface {v0, v5}, Lorg/telegram/ui/ActionBar/INavigationLayout;->removeFragmentFromStack(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getBackgroundFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    :goto_3
    if-eqz v1, :cond_5

    if-eqz p1, :cond_4

    invoke-static {v1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$raw;->linkbroken:I

    sget v1, Lorg/telegram/messenger/R$string;->AffiliateProgramEndedTitle:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->AffiliateProgramEndedText:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    :goto_4
    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    goto :goto_5

    :cond_4
    invoke-static {v1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$raw;->contact_check:I

    sget v1, Lorg/telegram/messenger/R$string;->AffiliateProgramStartedTitle:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->AffiliateProgramStartedText:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_5
    :goto_5
    return-void
.end method

.method private end()V
    .locals 14

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v2, 0x41c00000    # 24.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v2, v4}, Landroid/view/View;->setPadding(IIII)V

    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v3, 0x41800000    # 16.0f

    invoke-virtual {v2, v1, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    iget-object v6, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v5, v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    sget v6, Lorg/telegram/messenger/R$string;->AffiliateProgramStopText:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v11, 0x0

    const/high16 v12, 0x41880000    # 17.0f

    const/4 v7, -0x1

    const/4 v8, -0x2

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Lorg/telegram/ui/bots/AffiliateProgramFragment$BulletinTextView;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v2, p0, v6}, Lorg/telegram/ui/bots/AffiliateProgramFragment$BulletinTextView;-><init>(Lorg/telegram/ui/bots/AffiliateProgramFragment;Landroid/content/Context;)V

    const/high16 v6, 0x41700000    # 15.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-virtual {v2, v7, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v2, v1, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v7, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v5, v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextColor(I)V

    sget v7, Lorg/telegram/messenger/R$string;->AffiliateProgramStopText1:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v12, 0x0

    const/high16 v13, 0x41880000    # 17.0f

    const/4 v8, -0x1

    const/4 v9, -0x2

    invoke-static/range {v8 .. v13}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v0, v2, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Lorg/telegram/ui/bots/AffiliateProgramFragment$BulletinTextView;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v2, p0, v7}, Lorg/telegram/ui/bots/AffiliateProgramFragment$BulletinTextView;-><init>(Lorg/telegram/ui/bots/AffiliateProgramFragment;Landroid/content/Context;)V

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-virtual {v2, v7, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v2, v1, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v7, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v5, v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextColor(I)V

    sget v7, Lorg/telegram/messenger/R$string;->AffiliateProgramStopText2:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static/range {v8 .. v13}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v0, v2, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Lorg/telegram/ui/bots/AffiliateProgramFragment$BulletinTextView;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v2, p0, v7}, Lorg/telegram/ui/bots/AffiliateProgramFragment$BulletinTextView;-><init>(Lorg/telegram/ui/bots/AffiliateProgramFragment;Landroid/content/Context;)V

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v2, v6, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v2, v1, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v5, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    sget v1, Lorg/telegram/messenger/R$string;->AffiliateProgramStopText3:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v7, 0x0

    const/high16 v8, 0x41200000    # 10.0f

    const/4 v3, -0x1

    const/4 v4, -0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v1, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget v2, Lorg/telegram/messenger/R$string;->AffiliateProgramAlert:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->AffiliateProgramStopButton:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/bots/AffiliateProgramFragment$$ExternalSyntheticLambda12;

    invoke-direct {v2, p0}, Lorg/telegram/ui/bots/AffiliateProgramFragment$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/bots/AffiliateProgramFragment;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->makeRed(I)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void
.end method

.method private synthetic lambda$createView$0(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    instance-of p1, p2, Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;

    if-eqz p1, :cond_1

    check-cast p2, Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-wide v1, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment;->bot_id:J

    invoke-virtual {p1, v1, v2}, Lorg/telegram/messenger/MessagesController;->getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object p1

    if-eqz p1, :cond_0

    iput-object p2, p1, Lorg/telegram/tgnet/TLRPC$UserFull;->starref_program:Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Lorg/telegram/messenger/MessagesStorage;->updateUserInfo(Lorg/telegram/tgnet/TLRPC$UserFull;Z)V

    iget p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/NotificationCenter;->userInfoDidLoad:I

    iget-wide v1, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment;->bot_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v0

    const/4 v1, 0x1

    aput-object p1, v2, v1

    invoke-virtual {p2, p3, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, v0}, Lorg/telegram/ui/bots/AffiliateProgramFragment;->closeToProfile(Z)V

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    invoke-static {p3}, Lorg/telegram/ui/Components/BulletinFactory;->showError(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic lambda$createView$1(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    new-instance v0, Lorg/telegram/ui/bots/AffiliateProgramFragment$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/telegram/ui/bots/AffiliateProgramFragment$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/bots/AffiliateProgramFragment;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$createView$2()V
    .locals 4

    new-instance v0, Lorg/telegram/tgnet/tl/TL_bots$updateStarRefProgram;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_bots$updateStarRefProgram;-><init>()V

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment;->bot_id:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_bots$updateStarRefProgram;->bot:Lorg/telegram/tgnet/TLRPC$InputUser;

    iget-object v1, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment;->program:Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;

    iget v2, v1, Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;->commission_permille:I

    iput v2, v0, Lorg/telegram/tgnet/tl/TL_bots$updateStarRefProgram;->commission_permille:I

    iget v2, v1, Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;->duration_months:I

    iput v2, v0, Lorg/telegram/tgnet/tl/TL_bots$updateStarRefProgram;->duration_months:I

    iget v3, v0, Lorg/telegram/tgnet/tl/TL_bots$updateStarRefProgram;->flags:I

    if-lez v2, :cond_0

    or-int/lit8 v3, v3, 0x1

    iput v3, v0, Lorg/telegram/tgnet/tl/TL_bots$updateStarRefProgram;->flags:I

    or-int/lit8 v2, v2, 0x1

    :goto_0
    iput v2, v1, Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;->duration_months:I

    goto :goto_1

    :cond_0
    and-int/lit8 v3, v3, -0x2

    iput v3, v0, Lorg/telegram/tgnet/tl/TL_bots$updateStarRefProgram;->flags:I

    and-int/lit8 v2, v2, -0x2

    goto :goto_0

    :goto_1
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    const-wide/16 v2, 0x96

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog;->showDelayed(J)V

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/bots/AffiliateProgramFragment$$ExternalSyntheticLambda14;

    invoke-direct {v3, p0, v1}, Lorg/telegram/ui/bots/AffiliateProgramFragment$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/bots/AffiliateProgramFragment;Lorg/telegram/ui/ActionBar/AlertDialog;)V

    invoke-virtual {v2, v0, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private static synthetic lambda$createView$3(Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$createView$4(Landroid/content/Context;Landroid/view/View;)V
    .locals 11

    iget-object p2, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {p2}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->isEnabled()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    new-instance p2, Landroid/widget/FrameLayout;

    invoke-direct {p2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lorg/telegram/ui/Components/TableView;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, p1, v1}, Lorg/telegram/ui/Components/TableView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    new-instance v1, Lorg/telegram/ui/bots/AffiliateProgramFragment$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lorg/telegram/ui/bots/AffiliateProgramFragment$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/bots/AffiliateProgramFragment;)V

    sget v2, Lorg/telegram/messenger/R$string;->AffiliateProgramCommission:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment;->program:Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;

    iget v3, v3, Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;->commission_permille:I

    invoke-static {v3}, Lorg/telegram/ui/bots/AffiliateProgramFragment;->percents(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Components/TableView;->addRow(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/widget/TableRow;

    sget v2, Lorg/telegram/messenger/R$string;->AffiliateProgramDuration:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment;->program:Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;

    iget v3, v3, Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;->duration_months:I

    if-gtz v3, :cond_1

    sget v3, Lorg/telegram/messenger/R$string;->Infinity:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    const/16 v5, 0xc

    if-lt v3, v5, :cond_3

    rem-int/lit8 v6, v3, 0xc

    if-eqz v6, :cond_2

    goto :goto_0

    :cond_2
    div-int/2addr v3, v5

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "Years"

    invoke-static {v5, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_3
    :goto_0
    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "Months"

    invoke-static {v5, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Components/TableView;->addRow(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/widget/TableRow;

    const/high16 v9, 0x41c00000    # 24.0f

    const/4 v10, 0x0

    const/4 v4, -0x1

    const/high16 v5, -0x40000000    # -2.0f

    const/16 v6, 0x77

    const/high16 v7, 0x41c00000    # 24.0f

    const/4 v8, 0x0

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, p1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget p1, Lorg/telegram/messenger/R$string;->AffiliateProgramAlert:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    iget-boolean v0, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment;->new_program:Z

    if-eqz v0, :cond_4

    sget v0, Lorg/telegram/messenger/R$string;->AffiliateProgramStartAlertText:I

    goto :goto_2

    :cond_4
    sget v0, Lorg/telegram/messenger/R$string;->AffiliateProgramUpdateAlertText:I

    :goto_2
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    iget-boolean p2, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment;->new_program:Z

    if-eqz p2, :cond_5

    sget p2, Lorg/telegram/messenger/R$string;->AffiliateProgramStartAlertButton:I

    goto :goto_3

    :cond_5
    sget p2, Lorg/telegram/messenger/R$string;->AffiliateProgramUpdateAlertButton:I

    :goto_3
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/bots/AffiliateProgramFragment$$ExternalSyntheticLambda9;

    invoke-direct {v0, v1}, Lorg/telegram/ui/bots/AffiliateProgramFragment$$ExternalSyntheticLambda9;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void
.end method

.method private synthetic lambda$createView$5(Landroid/view/View;I)V
    .locals 2

    iget-object p1, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/UniversalAdapter;->getItem(I)Lorg/telegram/ui/Components/UItem;

    move-result-object p1

    iget p1, p1, Lorg/telegram/ui/Components/UItem;->id:I

    const/4 p2, 0x4

    if-ne p1, p2, :cond_1

    invoke-direct {p0}, Lorg/telegram/ui/bots/AffiliateProgramFragment;->end()V

    goto :goto_0

    :cond_1
    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    new-instance p1, Lorg/telegram/ui/bots/SuggestedAffiliateProgramsFragment;

    iget-wide v0, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment;->bot_id:J

    invoke-direct {p1, v0, v1}, Lorg/telegram/ui/bots/SuggestedAffiliateProgramsFragment;-><init>(J)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic lambda$end$10(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 2

    new-instance p1, Lorg/telegram/tgnet/tl/TL_bots$updateStarRefProgram;

    invoke-direct {p1}, Lorg/telegram/tgnet/tl/TL_bots$updateStarRefProgram;-><init>()V

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-wide v0, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment;->bot_id:J

    invoke-virtual {p2, v0, v1}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object p2

    iput-object p2, p1, Lorg/telegram/tgnet/tl/TL_bots$updateStarRefProgram;->bot:Lorg/telegram/tgnet/TLRPC$InputUser;

    const/4 p2, 0x0

    iput p2, p1, Lorg/telegram/tgnet/tl/TL_bots$updateStarRefProgram;->commission_permille:I

    new-instance p2, Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x3

    invoke-direct {p2, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    const-wide/16 v0, 0x96

    invoke-virtual {p2, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->showDelayed(J)V

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/bots/AffiliateProgramFragment$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0, p2}, Lorg/telegram/ui/bots/AffiliateProgramFragment$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/bots/AffiliateProgramFragment;Lorg/telegram/ui/ActionBar/AlertDialog;)V

    invoke-virtual {v0, p1, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private synthetic lambda$end$8(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    instance-of p1, p2, Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;

    if-eqz p1, :cond_2

    check-cast p2, Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-wide v3, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment;->bot_id:J

    invoke-virtual {p1, v3, v4}, Lorg/telegram/messenger/MessagesController;->getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p3, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment;->program:Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;

    iget v3, p3, Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;->flags:I

    or-int/2addr v3, v2

    iput v3, p3, Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;->flags:I

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v3

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/tgnet/ConnectionsManager;->isTestBackend()Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x12c

    goto :goto_0

    :cond_0
    const v4, 0x15180

    :goto_0
    add-int/2addr v3, v4

    iput v3, p3, Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;->end_date:I

    iput-object p2, p1, Lorg/telegram/tgnet/TLRPC$UserFull;->starref_program:Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p2

    invoke-virtual {p2, p1, v1}, Lorg/telegram/messenger/MessagesStorage;->updateUserInfo(Lorg/telegram/tgnet/TLRPC$UserFull;Z)V

    iget p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/NotificationCenter;->userInfoDidLoad:I

    iget-wide v3, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment;->bot_id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v1

    aput-object p1, v2, v0

    invoke-virtual {p2, p3, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_1
    invoke-direct {p0, v0}, Lorg/telegram/ui/bots/AffiliateProgramFragment;->closeToProfile(Z)V

    goto :goto_1

    :cond_2
    if-eqz p3, :cond_3

    invoke-static {p3}, Lorg/telegram/ui/Components/BulletinFactory;->showError(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private synthetic lambda$end$9(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    new-instance v0, Lorg/telegram/ui/bots/AffiliateProgramFragment$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/telegram/ui/bots/AffiliateProgramFragment$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/bots/AffiliateProgramFragment;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$fillItems$11(Ljava/lang/Integer;)Ljava/lang/CharSequence;
    .locals 3

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-float p0, p0

    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr p0, v1

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "%.1f%%"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$fillItems$12(Ljava/lang/Integer;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment;->program:Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;->commission_permille:I

    invoke-direct {p0}, Lorg/telegram/ui/bots/AffiliateProgramFragment;->updateEnabled()V

    return-void
.end method

.method private synthetic lambda$fillItems$13(Ljava/lang/Integer;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment;->program:Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;

    iget-object v1, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment;->durationValues:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;->duration_months:I

    invoke-direct {p0}, Lorg/telegram/ui/bots/AffiliateProgramFragment;->updateEnabled()V

    return-void
.end method

.method private synthetic lambda$new$7()V
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    iget-object v1, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment;->program:Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;

    iget v1, v1, Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;->end_date:I

    const-wide/16 v2, 0x3e8

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v4

    sub-int/2addr v1, v4

    int-to-long v4, v1

    mul-long v4, v4, v2

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->buildCountDownTime(J)Ljava/lang/String;

    move-result-object v1

    :goto_0
    const/4 v4, 0x1

    invoke-virtual {v0, v1, v4}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setSubText(Ljava/lang/CharSequence;Z)V

    iget-object v0, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment;->program:Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;

    iget v0, v0, Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;->end_date:I

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment;->attached:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment;->updateTimerRunnable:Ljava/lang/Runnable;

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$onFragmentCreate$14(Lorg/telegram/tgnet/TLRPC$UserFull;)V
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment;->new_program:Z

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$UserFull;->starref_program:Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;

    iput-object p1, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment;->program:Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;

    if-nez p1, :cond_0

    iput-boolean v0, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment;->new_program:Z

    invoke-virtual {p0}, Lorg/telegram/ui/bots/AffiliateProgramFragment;->getDefaultProgram()Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment;->program:Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment;->initialProgram:Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;

    invoke-direct {p1}, Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment;->initialProgram:Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;

    iget-object v1, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment;->program:Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;

    iget v2, v1, Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;->commission_permille:I

    iput v2, p1, Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;->commission_permille:I

    iget v1, v1, Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;->duration_months:I

    iput v1, p1, Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;->duration_months:I

    :cond_1
    :goto_0
    invoke-direct {p0, v0}, Lorg/telegram/ui/bots/AffiliateProgramFragment;->update(Z)V

    return-void
.end method

.method private synthetic lambda$onFragmentCreate$15(Lorg/telegram/tgnet/TLRPC$UserFull;)V
    .locals 1

    new-instance v0, Lorg/telegram/ui/bots/AffiliateProgramFragment$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/bots/AffiliateProgramFragment$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/bots/AffiliateProgramFragment;Lorg/telegram/tgnet/TLRPC$UserFull;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$update$6()V
    .locals 2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-boolean v1, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment;->new_program:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment;->program:Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;

    iget v1, v1, Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;->end_date:I

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    sget v1, Lorg/telegram/messenger/R$string;->AffiliateProgramStartInfoLink:I

    goto :goto_1

    :cond_1
    :goto_0
    sget v1, Lorg/telegram/messenger/R$string;->AffiliateProgramUpdateInfoLink:I

    :goto_1
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static makeParticlesView(Landroid/content/Context;II)Lorg/telegram/ui/Components/Premium/StarParticlesView;
    .locals 0

    new-instance p1, Lorg/telegram/ui/bots/AffiliateProgramFragment$3;

    invoke-direct {p1, p0}, Lorg/telegram/ui/bots/AffiliateProgramFragment$3;-><init>(Landroid/content/Context;)V

    return-object p1
.end method

.method public static percents(I)Ljava/lang/CharSequence;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    int-to-float v2, p0

    const/high16 v3, 0x41200000    # 10.0f

    div-float/2addr v2, v3

    float-to-int v3, v2

    int-to-float v3, v3

    cmpl-float v3, v3, v2

    if-nez v3, :cond_0

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    div-int/lit8 p0, p0, 0xa

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v0

    const-string p0, "%d%%"

    invoke-static {v2, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v0

    const-string v0, "%.1f%%"

    invoke-static {p0, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private update(Z)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    iget-boolean v1, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment;->new_program:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment;->program:Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;

    iget v1, v1, Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;->end_date:I

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    sget v1, Lorg/telegram/messenger/R$string;->AffiliateProgramUpdate:I

    goto :goto_1

    :cond_1
    :goto_0
    sget v1, Lorg/telegram/messenger/R$string;->AffiliateProgramStart:I

    :goto_1
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    iget-object v0, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment;->updateTimerRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment;->updateTimerRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment;->buttonSubtext:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    iget-boolean v1, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment;->new_program:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment;->program:Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;

    iget v1, v1, Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;->end_date:I

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    sget v1, Lorg/telegram/messenger/R$string;->AffiliateProgramUpdateInfo:I

    goto :goto_3

    :cond_3
    :goto_2
    sget v1, Lorg/telegram/messenger/R$string;->AffiliateProgramStartInfo:I

    :goto_3
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/bots/AffiliateProgramFragment$$ExternalSyntheticLambda11;

    invoke-direct {v2, p0}, Lorg/telegram/ui/bots/AffiliateProgramFragment$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/bots/AffiliateProgramFragment;)V

    invoke-static {v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lorg/telegram/ui/bots/AffiliateProgramFragment;->updateEnabled()V

    iget-object v0, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    :cond_4
    return-void
.end method

.method private updateEnabled()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    iget-object v1, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment;->program:Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;

    iget v2, v1, Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;->end_date:I

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment;->initialProgram:Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;

    if-eqz v2, :cond_0

    iget v3, v2, Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;->commission_permille:I

    iget v4, v1, Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;->commission_permille:I

    if-ne v3, v4, :cond_0

    iget v2, v2, Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;->duration_months:I

    iget v1, v1, Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;->duration_months:I

    if-eq v2, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method protected createAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 10

    new-instance v9, Lorg/telegram/ui/bots/AffiliateProgramFragment$4;

    iget-object v2, p0, Lorg/telegram/ui/GradientHeaderActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    iget v5, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    new-instance v7, Lorg/telegram/ui/bots/AffiliateProgramFragment$$ExternalSyntheticLambda1;

    invoke-direct {v7, p0}, Lorg/telegram/ui/bots/AffiliateProgramFragment$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/bots/AffiliateProgramFragment;)V

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v8

    const/4 v6, 0x1

    move-object v0, v9

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/bots/AffiliateProgramFragment$4;-><init>(Lorg/telegram/ui/bots/AffiliateProgramFragment;Lorg/telegram/ui/Components/RecyclerListView;Landroid/content/Context;IIZLorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v9, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    return-object v9
.end method

.method public createParticlesView()Lorg/telegram/ui/Components/Premium/StarParticlesView;
    .locals 3

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x4b

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/bots/AffiliateProgramFragment;->makeParticlesView(Landroid/content/Context;II)Lorg/telegram/ui/Components/Premium/StarParticlesView;

    move-result-object v0

    return-object v0
.end method

.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 11

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/GradientHeaderActivity;->useFillLastLayoutManager:Z

    const/high16 v1, 0x436e0000    # 238.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/GradientHeaderActivity;->particlesViewHeight:I

    new-instance v1, Lorg/telegram/ui/bots/AffiliateProgramFragment$1;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/bots/AffiliateProgramFragment$1;-><init>(Lorg/telegram/ui/bots/AffiliateProgramFragment;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment;->emptyLayout:Landroid/view/View;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackgroundGray:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-super {p0, p1}, Lorg/telegram/ui/GradientHeaderActivity;->createView(Landroid/content/Context;)Landroid/view/View;

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment;->aboveTitleView:Landroid/widget/FrameLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    new-instance v1, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    const/4 v3, 0x3

    invoke-direct {v1, p1, v2, v3}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;-><init>(Landroid/content/Context;II)V

    iput-object v1, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment;->iconTextureView:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    iget-object v1, v1, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->mRenderer:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_starsGradient1:I

    iput v3, v1, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;->colorKey1:I

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_starsGradient2:I

    iput v3, v1, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;->colorKey2:I

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;->updateColors()V

    iget-object v1, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment;->iconTextureView:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    iget-object v3, p0, Lorg/telegram/ui/GradientHeaderActivity;->particlesView:Lorg/telegram/ui/Components/Premium/StarParticlesView;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->setStarParticlesView(Lorg/telegram/ui/Components/Premium/StarParticlesView;)V

    iget-object v1, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment;->aboveTitleView:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment;->iconTextureView:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    const/4 v9, 0x0

    const/high16 v10, 0x41c00000    # 24.0f

    const/16 v4, 0xbe

    const/high16 v5, 0x433e0000    # 190.0f

    const/16 v6, 0x11

    const/4 v7, 0x0

    const/high16 v8, 0x42000000    # 32.0f

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget v1, Lorg/telegram/messenger/R$string;->BotAffiliateProgramTitle:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/R$string;->BotAffiliateProgramText:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment;->aboveTitleView:Landroid/widget/FrameLayout;

    const/4 v5, 0x0

    invoke-virtual {p0, v1, v3, v4, v5}, Lorg/telegram/ui/GradientHeaderActivity;->configureHeader(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View;Landroid/view/View;)V

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment;->buttonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v1, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment;->buttonLayout:Landroid/widget/LinearLayout;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v3, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment;->buttonLayout:Landroid/widget/LinearLayout;

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->density:F

    const/high16 v5, 0x3f800000    # 1.0f

    div-float/2addr v5, v4

    const/high16 v4, -0x40800000    # -1.0f

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(FF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lorg/telegram/ui/bots/AffiliateProgramFragment$2;

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v1, p0, p1, v3}, Lorg/telegram/ui/bots/AffiliateProgramFragment$2;-><init>(Lorg/telegram/ui/bots/AffiliateProgramFragment;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v1, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    sget v3, Lorg/telegram/messenger/R$string;->AffiliateProgramStart:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    iget-object v1, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    new-instance v3, Lorg/telegram/ui/bots/AffiliateProgramFragment$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, p1}, Lorg/telegram/ui/bots/AffiliateProgramFragment$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/bots/AffiliateProgramFragment;Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment;->buttonLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const/high16 v8, 0x41200000    # 10.0f

    const/high16 v9, 0x40e00000    # 7.0f

    const/4 v4, -0x1

    const/16 v5, 0x30

    const/high16 v6, 0x41200000    # 10.0f

    const/high16 v7, 0x41200000    # 10.0f

    invoke-static/range {v4 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v1, p1, v3}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v1, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment;->buttonSubtext:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment;->buttonSubtext:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageLinkIn:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setLinkTextColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment;->buttonSubtext:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {p1, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object p1, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment;->buttonSubtext:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/16 v1, 0x11

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object p1, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment;->buttonLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment;->buttonSubtext:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/high16 v6, 0x42000000    # 32.0f

    const/high16 v7, 0x41000000    # 8.0f

    const/4 v2, -0x1

    const/4 v3, -0x2

    const/high16 v4, 0x42000000    # 32.0f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static/range {v2 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0, v0}, Lorg/telegram/ui/bots/AffiliateProgramFragment;->update(Z)V

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    check-cast p1, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment;->buttonLayout:Landroid/widget/LinearLayout;

    const/4 v2, -0x2

    const/16 v3, 0x57

    const/4 v4, -0x1

    invoke-static {v4, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lorg/telegram/ui/GradientHeaderActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/high16 v1, 0x42a80000    # 84.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {p1, v0, v0, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    iget-object p1, p0, Lorg/telegram/ui/GradientHeaderActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/bots/AffiliateProgramFragment$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/bots/AffiliateProgramFragment$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/bots/AffiliateProgramFragment;)V

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    new-instance p1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {p1}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayAnimations(Z)V

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0x15e

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setDurations(J)V

    iget-object v0, p0, Lorg/telegram/ui/GradientHeaderActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object p1
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public fillItems(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 8

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/telegram/ui/bots/AffiliateProgramFragment;->getHeader(Landroid/content/Context;)Landroid/view/View;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asFullyCustom(Landroid/view/View;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget p2, Lorg/telegram/messenger/R$drawable;->menu_feature_premium:I

    sget v0, Lorg/telegram/messenger/R$string;->BotAffiliateProgramFeature1Title:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->BotAffiliateProgramFeature1:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v0, v1}, Lorg/telegram/ui/bots/AffiliateProgramFragment$FeatureCell$Factory;->as(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget p2, Lorg/telegram/messenger/R$drawable;->msg_channel:I

    sget v0, Lorg/telegram/messenger/R$string;->BotAffiliateProgramFeature2Title:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->BotAffiliateProgramFeature2:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v0, v1}, Lorg/telegram/ui/bots/AffiliateProgramFragment$FeatureCell$Factory;->as(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget p2, Lorg/telegram/messenger/R$drawable;->menu_feature_links2:I

    sget v0, Lorg/telegram/messenger/R$string;->BotAffiliateProgramFeature3Title:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->BotAffiliateProgramFeature3:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v0, v1}, Lorg/telegram/ui/bots/AffiliateProgramFragment$FeatureCell$Factory;->as(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p2, 0x1

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asShadow(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget v1, Lorg/telegram/messenger/R$string;->AffiliateProgramCommission:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/Components/UItem;->asHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget v3, v1, Lorg/telegram/messenger/MessagesController;->starrefMinCommissionPermille:I

    iget-object v1, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment;->program:Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;

    iget v4, v1, Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;->commission_permille:I

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget v5, v1, Lorg/telegram/messenger/MessagesController;->starrefMaxCommissionPermille:I

    new-instance v6, Lorg/telegram/ui/bots/AffiliateProgramFragment$$ExternalSyntheticLambda5;

    invoke-direct {v6}, Lorg/telegram/ui/bots/AffiliateProgramFragment$$ExternalSyntheticLambda5;-><init>()V

    new-instance v7, Lorg/telegram/ui/bots/AffiliateProgramFragment$$ExternalSyntheticLambda6;

    invoke-direct {v7, p0}, Lorg/telegram/ui/bots/AffiliateProgramFragment$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/bots/AffiliateProgramFragment;)V

    const/4 v2, 0x1

    invoke-static/range {v2 .. v7}, Lorg/telegram/ui/Components/UItem;->asIntSlideView(IIIILorg/telegram/messenger/Utilities$CallbackReturn;Lorg/telegram/messenger/Utilities$Callback;)Lorg/telegram/ui/Components/UItem;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment;->initialProgram:Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;

    if-nez v2, :cond_1

    const/4 v2, -0x1

    goto :goto_0

    :cond_1
    iget v2, v2, Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;->commission_permille:I

    :goto_0
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/UItem;->setMinSliderValue(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget v1, Lorg/telegram/messenger/R$string;->AffiliateProgramCommissionInfo:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget v1, Lorg/telegram/messenger/R$string;->AffiliateProgramDuration:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/Components/UItem;->asHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment;->durationTexts:[Ljava/lang/String;

    if-nez v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment;->durationValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment;->durationTexts:[Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment;->durationValues:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    iget-object v3, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment;->durationValues:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment;->durationTexts:[Ljava/lang/String;

    sget v4, Lorg/telegram/messenger/R$string;->Infinity:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    goto :goto_3

    :cond_2
    const/16 v4, 0xc

    if-lt v3, v4, :cond_4

    rem-int/lit8 v4, v3, 0xc

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    iget-object v4, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment;->durationTexts:[Ljava/lang/String;

    div-int/lit8 v3, v3, 0xc

    new-array v5, v1, [Ljava/lang/Object;

    const-string v6, "YearsShort"

    invoke-static {v6, v3, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    goto :goto_3

    :cond_4
    :goto_2
    iget-object v4, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment;->durationTexts:[Ljava/lang/String;

    new-array v5, v1, [Ljava/lang/Object;

    const-string v6, "MonthsShort"

    invoke-static {v6, v3, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment;->durationTexts:[Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment;->durationValues:Ljava/util/List;

    iget-object v3, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment;->program:Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;

    iget v3, v3, Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;->duration_months:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    new-instance v3, Lorg/telegram/ui/bots/AffiliateProgramFragment$$ExternalSyntheticLambda7;

    invoke-direct {v3, p0}, Lorg/telegram/ui/bots/AffiliateProgramFragment$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/bots/AffiliateProgramFragment;)V

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Components/UItem;->asSlideView([Ljava/lang/String;ILorg/telegram/messenger/Utilities$Callback;)Lorg/telegram/ui/Components/UItem;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment;->initialProgram:Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;

    if-eqz v2, :cond_8

    iget v2, v2, Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;->duration_months:I

    if-gtz v2, :cond_6

    iget-object v2, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment;->durationValues:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, p2

    :goto_4
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/UItem;->setMinSliderValue(I)Lorg/telegram/ui/Components/UItem;

    goto :goto_6

    :cond_6
    iget-object v2, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment;->durationValues:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, p2

    :goto_5
    if-ltz v2, :cond_8

    iget-object p2, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment;->durationValues:Ljava/util/List;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-lez p2, :cond_7

    iget-object p2, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment;->durationValues:Ljava/util/List;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget-object v3, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment;->initialProgram:Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;

    iget v3, v3, Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;->duration_months:I

    if-gt p2, v3, :cond_7

    goto :goto_4

    :cond_7
    add-int/lit8 v2, v2, -0x1

    goto :goto_5

    :cond_8
    :goto_6
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget p2, Lorg/telegram/messenger/R$string;->AffiliateProgramDurationInfo:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_color_green:I

    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result p2

    sget v1, Lorg/telegram/messenger/R$drawable;->filled_earn_stars:I

    sget v2, Lorg/telegram/messenger/R$string;->AffiliateProgramExistingProgramsTitle:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->AffiliateProgramExistingProgramsText:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v4, p2, v1, v2, v3}, Lorg/telegram/ui/bots/AffiliateProgramFragment$ColorfulTextCell$Factory;->as(IIILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p2, 0x3

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asShadow(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean p2, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment;->new_program:Z

    if-nez p2, :cond_9

    iget-object p2, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment;->program:Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;

    iget p2, p2, Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;->end_date:I

    if-nez p2, :cond_9

    sget p2, Lorg/telegram/messenger/R$string;->AffiliateProgramStop:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x4

    invoke-static {v1, p2}, Lorg/telegram/ui/Components/UItem;->asButton(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/UItem;->red()Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p2, 0x5

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asShadow(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    const/4 p2, 0x6

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asShadow(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p2, 0x7

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asShadow(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getDefaultProgram()Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;
    .locals 4

    new-instance v0, Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;-><init>()V

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget v1, v1, Lorg/telegram/messenger/MessagesController;->starrefMaxCommissionPermille:I

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget v2, v2, Lorg/telegram/messenger/MessagesController;->starrefMinCommissionPermille:I

    const/16 v3, 0x32

    invoke-static {v3, v1, v2}, Lorg/telegram/messenger/Utilities;->clamp(III)I

    move-result v1

    iput v1, v0, Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;->commission_permille:I

    const/4 v1, 0x1

    iput v1, v0, Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;->duration_months:I

    return-object v0
.end method

.method protected getHeader(Landroid/content/Context;)Landroid/view/View;
    .locals 0

    invoke-super {p0, p1}, Lorg/telegram/ui/GradientHeaderActivity;->getHeader(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getNavigationBarColor()I
    .locals 1

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v0

    return v0
.end method

.method public onFragmentCreate()Z
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment;->attached:Z

    iput-boolean v0, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment;->new_program:Z

    invoke-virtual {p0}, Lorg/telegram/ui/bots/AffiliateProgramFragment;->getDefaultProgram()Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment;->program:Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment;->initialProgram:Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-wide v3, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment;->bot_id:J

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/MessagesController;->getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v3, 0x0

    iput-boolean v3, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment;->new_program:Z

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$UserFull;->starref_program:Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;

    iput-object v2, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment;->program:Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;

    if-nez v2, :cond_0

    iput-boolean v0, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment;->new_program:Z

    invoke-virtual {p0}, Lorg/telegram/ui/bots/AffiliateProgramFragment;->getDefaultProgram()Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment;->program:Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;

    iput-object v1, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment;->initialProgram:Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment;->initialProgram:Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;

    iget-object v1, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment;->program:Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;

    iget v2, v1, Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;->commission_permille:I

    iput v2, v0, Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;->commission_permille:I

    iget v1, v1, Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;->duration_months:I

    iput v1, v0, Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;->duration_months:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment;->bot_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getClassGuid()I

    move-result v3

    new-instance v4, Lorg/telegram/ui/bots/AffiliateProgramFragment$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lorg/telegram/ui/bots/AffiliateProgramFragment$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/bots/AffiliateProgramFragment;)V

    invoke-virtual {v2, v1, v3, v0, v4}, Lorg/telegram/messenger/MessagesController;->loadFullUser(Lorg/telegram/tgnet/TLRPC$User;IZLorg/telegram/messenger/Utilities$Callback;)V

    :cond_2
    :goto_0
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment;->attached:Z

    iget-object v0, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment;->updateTimerRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lorg/telegram/ui/GradientHeaderActivity;->onPause()V

    iget-object v0, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment;->iconTextureView:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->setPaused(Z)V

    iget-object v0, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment;->iconTextureView:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->setDialogVisible(Z)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lorg/telegram/ui/GradientHeaderActivity;->onResume()V

    iget-object v0, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment;->iconTextureView:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->setPaused(Z)V

    iget-object v0, p0, Lorg/telegram/ui/bots/AffiliateProgramFragment;->iconTextureView:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->setDialogVisible(Z)V

    :cond_0
    return-void
.end method
