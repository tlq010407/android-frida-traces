.class public Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;
.super Lorg/telegram/ui/GradientHeaderActivity;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$BotCell;,
        Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$HeaderSortCell;
    }
.end annotation


# instance fields
.field private aboveTitleView:Landroid/widget/FrameLayout;

.field private adapter:Lorg/telegram/ui/Components/UniversalAdapter;

.field public final dialogId:J

.field private emptyLayout:Landroid/view/View;

.field private iconTextureView:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;


# direct methods
.method public static synthetic $r8$lambda$165OaZsZ-IekrmNA08S5AIc_qQc(Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;->lambda$showShareAffiliateAlert$20(Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2SBeY3sdWApIf4v0GmGw5wGD8xw(Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/content/Context;IJLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/tgnet/TLRPC$UserFull;)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p6}, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;->lambda$showShareAffiliateAlert$26(Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/content/Context;IJLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/tgnet/TLRPC$UserFull;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5P6EVfhhJfxQGq65h7xcZmgD49g(Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;->lambda$showConnectAffiliateAlert$9(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6vGpi0C6PDye_CHebe3xHRWZ5EE(Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;->lambda$createView$1(Lorg/telegram/tgnet/TLRPC$User;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7KvFnyAzWpljOSusw6RIK0vE-oo(Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/tl/TL_payments$connectedBotStarRef;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;->lambda$createView$7(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/tl/TL_payments$connectedBotStarRef;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9ixyU8YFPyfDPe5RLcKYiNT6giE(Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;->lambda$createView$5(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CNUSHoXx-s3X85hx4PJhdmecPzw(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;IJLorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;JZLandroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p13}, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;->lambda$showConnectAffiliateAlert$12(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;IJLorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;JZLandroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DA_jYfNNWEocIbgyGZeSJnRhK-8(Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/tgnet/tl/TL_payments$connectedBotStarRef;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;->lambda$showShareAffiliateAlert$30(Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/tgnet/tl/TL_payments$connectedBotStarRef;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GfWtO3GP-RLf2Utb4HcFxHVUeXo(Lorg/telegram/tgnet/TLRPC$UserFull;Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/content/Context;IJLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p6}, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;->lambda$showShareAffiliateAlert$21(Lorg/telegram/tgnet/TLRPC$UserFull;Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/content/Context;IJLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IcNRNxpxS4fjkN6ISX9CYpyMFyg(Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;->lambda$showShareAffiliateAlert$24(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$K-8ZQB56DMnKndeDZ5XKYwGV050(Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/content/Context;IJLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/tgnet/TLRPC$UserFull;)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p6}, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;->lambda$showShareAffiliateAlert$22(Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/content/Context;IJLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/tgnet/TLRPC$UserFull;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LRr52sRYPPx8YPyfkS8PVzQPZoY(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Lorg/telegram/tgnet/TLObject;IJLorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;JZLandroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p13}, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;->lambda$showConnectAffiliateAlert$11(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Lorg/telegram/tgnet/TLObject;IJLorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;JZLandroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OHgQH7I7OYCEF6W0jIlPHpcEI2M(Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;Lorg/telegram/tgnet/tl/TL_payments$connectedBotStarRef;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;->lambda$createView$6(Lorg/telegram/tgnet/tl/TL_payments$connectedBotStarRef;Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$RSMiA0pDgQwFzQxvPORVXXWPlFw(Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;->lambda$showConnectAffiliateAlert$18(Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$S6DQSZrLbOM8anVGh_wY-jW9Hi4(Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;Landroid/content/Context;Landroid/view/View;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;->lambda$createView$0(Landroid/content/Context;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$SMHHNYwLqpSUSV1onZnaUGrpXFo(Lorg/telegram/tgnet/tl/TL_payments$connectedBotStarRef;Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;->lambda$showShareAffiliateAlert$19(Lorg/telegram/tgnet/tl/TL_payments$connectedBotStarRef;Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/tgnet/TLRPC$User;)V

    return-void
.end method

.method public static synthetic $r8$lambda$U0_uI_TGos3EIgzBTjWy982N6KE(Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/ActionBar/AlertDialog;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;->lambda$createView$4(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/ActionBar/AlertDialog;)V

    return-void
.end method

.method public static synthetic $r8$lambda$U5M0dEYFsmK8eGou6IsN1ErQ8PI(ILorg/telegram/tgnet/tl/TL_payments$connectedBotStarRef;Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/content/Context;JLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/tgnet/tl/TL_payments$connectedBotStarRef;)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p7}, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;->lambda$showShareAffiliateAlert$27(ILorg/telegram/tgnet/tl/TL_payments$connectedBotStarRef;Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/content/Context;JLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/tgnet/tl/TL_payments$connectedBotStarRef;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XgA49I2JQGHCeLKN--4jezb1a-Q(ILorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;[JLjava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p6}, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;->lambda$showConnectAffiliateAlert$17(ILorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;[JLjava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XpRUTWcD8Q-f60LYRYKywfdbQTg(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;[JILorg/telegram/tgnet/tl/TL_payments$starRefProgram;Lorg/telegram/ui/ActionBar/BottomSheet;JZLandroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/tgnet/TLRPC$User;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p11}, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;->lambda$showConnectAffiliateAlert$13(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;[JILorg/telegram/tgnet/tl/TL_payments$starRefProgram;Lorg/telegram/ui/ActionBar/BottomSheet;JZLandroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/tgnet/TLRPC$User;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_sizowstevUphjqmZidD6SoR8C8(Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;Lorg/telegram/tgnet/tl/TL_payments$connectedBotStarRef;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;->lambda$createView$2(Lorg/telegram/tgnet/tl/TL_payments$connectedBotStarRef;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mUxD7g8A1fYLDJWVK6U92WVYez0(ILandroid/content/Context;JLorg/telegram/tgnet/tl/TL_payments$connectedBotStarRef;Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p6}, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;->lambda$showShareAffiliateAlert$28(ILandroid/content/Context;JLorg/telegram/tgnet/tl/TL_payments$connectedBotStarRef;Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public static synthetic $r8$lambda$myZWo4kuTQPqu_UZ-iRZ7NiFhCg([JJLjava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;->lambda$showConnectAffiliateAlert$16([JJLjava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nc0I7UuqC5XsCcSlZpxeZh1TkV0(Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;Lorg/telegram/tgnet/tl/TL_payments$connectedBotStarRef;Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;->lambda$createView$3(Lorg/telegram/tgnet/tl/TL_payments$connectedBotStarRef;Lorg/telegram/tgnet/TLRPC$User;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rHlQjS6rQzJZVWBe1x1qEJrZ2KM([JILorg/telegram/ui/Components/BackupImageView;Lorg/telegram/ui/Components/BackupImageView;Landroid/widget/TextView;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;->lambda$showConnectAffiliateAlert$15([JILorg/telegram/ui/Components/BackupImageView;Lorg/telegram/ui/Components/BackupImageView;Landroid/widget/TextView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rkFAKY-igEpM2vOin2Pe0z1jB8Q(ILorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;JLandroid/content/Context;Lorg/telegram/tgnet/tl/TL_payments$connectedBotStarRef;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p8}, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;->lambda$showShareAffiliateAlert$29(ILorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;JLandroid/content/Context;Lorg/telegram/tgnet/tl/TL_payments$connectedBotStarRef;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$s4pG8SXMtOVvt3YupXOgDQ91tI4(Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;Landroid/content/Context;Landroid/view/View;I)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;->lambda$createView$8(Landroid/content/Context;Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$s5dd51qpgOmxoxkAzPDs_oY_Tx4(Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;->lambda$showConnectAffiliateAlert$14(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tpdveAv7H9ApMIxMHVHQz7ezBY4(Lorg/telegram/tgnet/tl/TL_payments$connectedBotStarRef;ILorg/telegram/ui/ActionBar/BottomSheet;Landroid/content/Context;JLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p8}, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;->lambda$showShareAffiliateAlert$23(Lorg/telegram/tgnet/tl/TL_payments$connectedBotStarRef;ILorg/telegram/ui/ActionBar/BottomSheet;Landroid/content/Context;JLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$u08yvmq6eYP6ESO54NvUTqSJEm0(Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;->lambda$showConnectAffiliateAlert$10(Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xtQBE4xrwBaD_CFWzyNr4lb7X2Y(Lorg/telegram/tgnet/TLRPC$UserFull;Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/content/Context;IJLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p6}, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;->lambda$showShareAffiliateAlert$25(Lorg/telegram/tgnet/TLRPC$UserFull;Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/content/Context;IJLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/GradientHeaderActivity;-><init>()V

    iput-wide p1, p0, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;->dialogId:J

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/GradientHeaderActivity;->setWhiteBackground(Z)V

    const/high16 p1, 0x42700000    # 60.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/GradientHeaderActivity;->setMinusHeaderHeight(I)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;)Z
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;->isLoadingVisible()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method private isLoadingVisible()Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/GradientHeaderActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/GradientHeaderActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lorg/telegram/ui/Components/FlickerLoadingView;

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private synthetic lambda$createView$0(Landroid/content/Context;Landroid/view/View;I)V
    .locals 7

    iget-object p2, p0, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/UniversalAdapter;->getItem(I)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    instance-of p3, p2, Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;

    if-eqz p3, :cond_1

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    move-object v2, p2

    check-cast v2, Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;

    iget-wide v3, p0, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;->dialogId:J

    iget-object v5, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v6, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;->showConnectAffiliateAlert(Landroid/content/Context;ILorg/telegram/tgnet/tl/TL_payments$starRefProgram;JLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)V

    goto :goto_0

    :cond_1
    instance-of p3, p2, Lorg/telegram/tgnet/tl/TL_payments$connectedBotStarRef;

    if-eqz p3, :cond_2

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    move-object v2, p2

    check-cast v2, Lorg/telegram/tgnet/tl/TL_payments$connectedBotStarRef;

    iget-wide v3, p0, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;->dialogId:J

    iget-object v5, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;->showShareAffiliateAlert(Landroid/content/Context;ILorg/telegram/tgnet/tl/TL_payments$connectedBotStarRef;JLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/BottomSheet;

    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic lambda$createView$1(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getClassGuid()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/telegram/messenger/MessagesController;->openApp(Lorg/telegram/tgnet/TLRPC$User;I)V

    return-void
.end method

.method private synthetic lambda$createView$2(Lorg/telegram/tgnet/tl/TL_payments$connectedBotStarRef;)V
    .locals 2

    iget-wide v0, p1, Lorg/telegram/tgnet/tl/TL_payments$connectedBotStarRef;->bot_id:J

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->of(J)Lorg/telegram/ui/ChatActivity;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$createView$3(Lorg/telegram/tgnet/tl/TL_payments$connectedBotStarRef;Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 6

    iget-object v0, p1, Lorg/telegram/tgnet/tl/TL_payments$connectedBotStarRef;->url:Ljava/lang/String;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->addToClipboard(Ljava/lang/CharSequence;)Z

    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$raw;->copy:I

    sget v2, Lorg/telegram/messenger/R$string;->AffiliateProgramLinkCopiedTitle:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->AffiliateProgramLinkCopiedText:I

    iget p1, p1, Lorg/telegram/tgnet/tl/TL_payments$connectedBotStarRef;->commission_permille:I

    invoke-static {p1}, Lorg/telegram/ui/bots/AffiliateProgramFragment;->percents(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p2}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object p2

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 p1, 0x1

    aput-object p2, v4, p1

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method private synthetic lambda$createView$4(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/ActionBar/AlertDialog;)V
    .locals 3

    instance-of v0, p1, Lorg/telegram/tgnet/tl/TL_payments$connectedStarRefBots;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/telegram/tgnet/tl/TL_payments$connectedStarRefBots;

    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Stars/BotStarsController;->getInstance(I)Lorg/telegram/ui/Stars/BotStarsController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;->dialogId:J

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Stars/BotStarsController;->getChannelConnectedBots(J)Lorg/telegram/ui/Stars/BotStarsController$ChannelConnectedBots;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stars/BotStarsController$ChannelConnectedBots;->applyEdit(Lorg/telegram/tgnet/tl/TL_payments$connectedStarRefBots;)V

    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/ui/Stars/BotStarsController;->getInstance(I)Lorg/telegram/ui/Stars/BotStarsController;

    move-result-object p1

    iget-wide v0, p0, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;->dialogId:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Stars/BotStarsController;->getChannelSuggestedBots(J)Lorg/telegram/ui/Stars/BotStarsController$ChannelSuggestedBots;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Stars/BotStarsController$ChannelSuggestedBots;->reload()V

    iget-object p1, p0, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    :cond_0
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    return-void
.end method

.method private synthetic lambda$createView$5(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    new-instance p3, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda31;

    invoke-direct {p3, p0, p2, p1}, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda31;-><init>(Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/ActionBar/AlertDialog;)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$createView$6(Lorg/telegram/tgnet/tl/TL_payments$connectedBotStarRef;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 2

    new-instance p2, Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p3

    const/4 v0, 0x3

    invoke-direct {p2, p3, v0}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    const-wide/16 v0, 0xc8

    invoke-virtual {p2, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->showDelayed(J)V

    new-instance p3, Lorg/telegram/tgnet/tl/TL_payments$editConnectedStarRefBot;

    invoke-direct {p3}, Lorg/telegram/tgnet/tl/TL_payments$editConnectedStarRefBot;-><init>()V

    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_payments$connectedBotStarRef;->url:Ljava/lang/String;

    iput-object p1, p3, Lorg/telegram/tgnet/tl/TL_payments$editConnectedStarRefBot;->link:Ljava/lang/String;

    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-wide v0, p0, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;->dialogId:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p1

    iput-object p1, p3, Lorg/telegram/tgnet/tl/TL_payments$editConnectedStarRefBot;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    const/4 p1, 0x1

    iput-boolean p1, p3, Lorg/telegram/tgnet/tl/TL_payments$editConnectedStarRefBot;->revoked:Z

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda29;

    invoke-direct {v0, p0, p2}, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda29;-><init>(Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;Lorg/telegram/ui/ActionBar/AlertDialog;)V

    invoke-virtual {p1, p3, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private synthetic lambda$createView$7(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/tl/TL_payments$connectedBotStarRef;)V
    .locals 3

    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, p1, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget p1, Lorg/telegram/messenger/R$string;->LeaveAffiliateLink:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->LeaveAffiliateLinkAlert:I

    invoke-static {p2}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->LeaveAffiliateLinkButton:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda27;

    invoke-direct {v0, p0, p3}, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda27;-><init>(Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;Lorg/telegram/tgnet/tl/TL_payments$connectedBotStarRef;)V

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->makeRed(I)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void
.end method

.method private synthetic lambda$createView$8(Landroid/content/Context;Landroid/view/View;I)Z
    .locals 11

    iget-object v0, p0, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0, p3}, Lorg/telegram/ui/Components/UniversalAdapter;->getItem(I)Lorg/telegram/ui/Components/UItem;

    move-result-object p3

    iget-object p3, p3, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    instance-of v0, p3, Lorg/telegram/tgnet/tl/TL_payments$connectedBotStarRef;

    if-eqz v0, :cond_1

    check-cast p3, Lorg/telegram/tgnet/tl/TL_payments$connectedBotStarRef;

    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p3, Lorg/telegram/tgnet/tl/TL_payments$connectedBotStarRef;->bot_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    invoke-static {p0, p2}, Lorg/telegram/ui/Components/ItemOptions;->makeOptions(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p2

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$User;->bot_has_main_app:Z

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_bot:I

    sget v3, Lorg/telegram/messenger/R$string;->ProfileBotOpenApp:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda22;

    invoke-direct {v4, p0, v0}, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;Lorg/telegram/tgnet/TLRPC$User;)V

    invoke-virtual {p2, v1, v2, v3, v4}, Lorg/telegram/ui/Components/ItemOptions;->addIf(ZILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p2

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$User;->bot_has_main_app:Z

    const/4 v3, 0x1

    xor-int/2addr v1, v3

    sget v4, Lorg/telegram/messenger/R$string;->BotWebViewOpenBot:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda23;

    invoke-direct {v5, p0, p3}, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;Lorg/telegram/tgnet/tl/TL_payments$connectedBotStarRef;)V

    invoke-virtual {p2, v1, v2, v4, v5}, Lorg/telegram/ui/Components/ItemOptions;->addIf(ZILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p2

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_link2:I

    sget v2, Lorg/telegram/messenger/R$string;->CopyLink:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda24;

    invoke-direct {v4, p0, p3, v0}, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;Lorg/telegram/tgnet/tl/TL_payments$connectedBotStarRef;Lorg/telegram/tgnet/TLRPC$User;)V

    invoke-virtual {p2, v1, v2, v4}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v5

    iget-boolean p2, p3, Lorg/telegram/tgnet/tl/TL_payments$connectedBotStarRef;->revoked:Z

    xor-int/lit8 v6, p2, 0x1

    sget v7, Lorg/telegram/messenger/R$drawable;->msg_leave:I

    sget p2, Lorg/telegram/messenger/R$string;->LeaveAffiliateLinkButton:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v10, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda25;

    invoke-direct {v10, p0, p1, v0, p3}, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/tl/TL_payments$connectedBotStarRef;)V

    const/4 v9, 0x1

    invoke-virtual/range {v5 .. v10}, Lorg/telegram/ui/Components/ItemOptions;->addIf(ZILjava/lang/CharSequence;ZLjava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/ItemOptions;->setGravity(I)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ItemOptions;->show()Lorg/telegram/ui/Components/ItemOptions;

    return v3

    :cond_1
    return v1
.end method

.method private static synthetic lambda$showConnectAffiliateAlert$10(Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;Landroid/view/View;)V
    .locals 0

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    iget-wide p0, p1, Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;->bot_id:J

    invoke-static {p0, p1}, Lorg/telegram/ui/ProfileActivity;->of(J)Lorg/telegram/ui/ProfileActivity;

    move-result-object p0

    invoke-virtual {p2, p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_0
    return-void
.end method

.method private static synthetic lambda$showConnectAffiliateAlert$11(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Lorg/telegram/tgnet/TLObject;IJLorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;JZLandroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 12

    move-object v0, p1

    move-wide v1, p3

    move-object/from16 v3, p11

    move-object/from16 v4, p13

    const/4 v5, 0x0

    move-object v6, p0

    invoke-virtual {p0, v5}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    instance-of v6, v0, Lorg/telegram/tgnet/tl/TL_payments$connectedStarRefBots;

    if-eqz v6, :cond_5

    check-cast v0, Lorg/telegram/tgnet/tl/TL_payments$connectedStarRefBots;

    invoke-static {p2}, Lorg/telegram/ui/Stars/BotStarsController;->getInstance(I)Lorg/telegram/ui/Stars/BotStarsController;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Lorg/telegram/ui/Stars/BotStarsController;->getChannelConnectedBots(J)Lorg/telegram/ui/Stars/BotStarsController$ChannelConnectedBots;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/telegram/ui/Stars/BotStarsController$ChannelConnectedBots;->apply(Lorg/telegram/tgnet/tl/TL_payments$connectedStarRefBots;)V

    invoke-virtual/range {p5 .. p5}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    :goto_0
    iget-object v4, v0, Lorg/telegram/tgnet/tl/TL_payments$connectedStarRefBots;->connected_bots:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v5, v4, :cond_1

    iget-object v4, v0, Lorg/telegram/tgnet/tl/TL_payments$connectedStarRefBots;->connected_bots:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/tl/TL_payments$connectedBotStarRef;

    iget-wide v6, v4, Lorg/telegram/tgnet/tl/TL_payments$connectedBotStarRef;->bot_id:J

    move-object/from16 v8, p6

    iget-wide v9, v8, Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;->bot_id:J

    cmp-long v11, v6, v9

    if-nez v11, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    move-object v4, v0

    :goto_1
    cmp-long v0, p7, v1

    if-nez v0, :cond_2

    if-eqz p9, :cond_4

    :cond_2
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-eqz v0, :cond_4

    instance-of v5, v0, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;

    if-eqz v5, :cond_3

    move-object v5, v0

    check-cast v5, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;

    iget-wide v5, v5, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;->dialogId:J

    cmp-long v7, v5, v1

    if-eqz v7, :cond_4

    :cond_3
    new-instance v5, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;

    invoke-direct {v5, v1, v2}, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;-><init>(J)V

    invoke-virtual {v0, v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_4
    if-eqz v4, :cond_6

    invoke-static {p2}, Lorg/telegram/ui/Stars/BotStarsController;->getInstance(I)Lorg/telegram/ui/Stars/BotStarsController;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Stars/BotStarsController;->getChannelSuggestedBots(J)Lorg/telegram/ui/Stars/BotStarsController$ChannelSuggestedBots;

    move-result-object v0

    iget-wide v5, v4, Lorg/telegram/tgnet/tl/TL_payments$connectedBotStarRef;->bot_id:J

    invoke-virtual {v0, v5, v6}, Lorg/telegram/ui/Stars/BotStarsController$ChannelSuggestedBots;->remove(J)V

    move-object/from16 p5, p10

    move/from16 p6, p2

    move-object/from16 p7, v4

    move-wide/from16 p8, p3

    move-object/from16 p10, p11

    invoke-static/range {p5 .. p10}, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;->showShareAffiliateAlert(Landroid/content/Context;ILorg/telegram/tgnet/tl/TL_payments$connectedBotStarRef;JLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->topBulletinContainer:Landroid/widget/FrameLayout;

    invoke-static {v0, v3}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->AffiliateProgramJoinedTitle:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->AffiliateProgramJoinedText:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, p12

    invoke-virtual {v0, v3, v1, v2}, Lorg/telegram/ui/Components/BulletinFactory;->createUsersBulletin(Lorg/telegram/tgnet/TLObject;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    goto :goto_2

    :cond_5
    if-eqz v4, :cond_6

    move-object/from16 v0, p5

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->topBulletinContainer:Landroid/widget/FrameLayout;

    invoke-static {v0, v3}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/BulletinFactory;->showForError(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    :cond_6
    :goto_2
    return-void
.end method

.method private static synthetic lambda$showConnectAffiliateAlert$12(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;IJLorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;JZLandroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 16

    new-instance v15, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda26;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v2, p12

    move/from16 v3, p1

    move-wide/from16 v4, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-wide/from16 v8, p6

    move/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p13

    invoke-direct/range {v0 .. v14}, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda26;-><init>(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Lorg/telegram/tgnet/TLObject;IJLorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;JZLandroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$showConnectAffiliateAlert$13(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;[JILorg/telegram/tgnet/tl/TL_payments$starRefProgram;Lorg/telegram/ui/ActionBar/BottomSheet;JZLandroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/tgnet/TLRPC$User;Landroid/view/View;)V
    .locals 16

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    move-object/from16 v2, p0

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    const/4 v0, 0x0

    aget-wide v4, p1, v0

    new-instance v0, Lorg/telegram/tgnet/tl/TL_payments$connectStarRefBot;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_payments$connectStarRefBot;-><init>()V

    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    move-object/from16 v7, p3

    iget-wide v8, v7, Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;->bot_id:J

    invoke-virtual {v1, v8, v9}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_payments$connectStarRefBot;->bot:Lorg/telegram/tgnet/TLRPC$InputUser;

    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_payments$connectStarRefBot;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-static/range {p2 .. p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v14

    new-instance v15, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda14;

    move-object v1, v15

    move/from16 v3, p2

    move-object/from16 v6, p4

    move-wide/from16 v8, p5

    move/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    invoke-direct/range {v1 .. v13}, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;IJLorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;JZLandroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/tgnet/TLRPC$User;)V

    invoke-virtual {v14, v0, v15}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private static synthetic lambda$showConnectAffiliateAlert$14(Landroid/content/DialogInterface;)V
    .locals 0

    return-void
.end method

.method private static synthetic lambda$showConnectAffiliateAlert$15([JILorg/telegram/ui/Components/BackupImageView;Lorg/telegram/ui/Components/BackupImageView;Landroid/widget/TextView;)V
    .locals 7

    const/4 v0, 0x0

    aget-wide v1, p0, v0

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    if-ltz v5, :cond_0

    aget-wide v5, p0, v0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v2}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    :goto_0
    invoke-virtual {p2, v1, v2}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    goto :goto_1

    :cond_0
    aget-wide v5, p0, v0

    neg-long v5, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v2}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$Chat;)V

    goto :goto_0

    :goto_1
    aget-wide v1, p0, v0

    cmp-long p2, v1, v3

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    if-ltz p2, :cond_2

    aget-wide v0, p0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p0

    if-eqz p3, :cond_1

    new-instance p1, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {p1}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    invoke-virtual {p1, p0}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    invoke-virtual {p3, p0, p1}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    :cond_1
    if-eqz p4, :cond_5

    invoke-static {p0}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object p0

    :goto_2
    invoke-virtual {p4, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_2
    aget-wide v0, p0, v0

    neg-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p0

    if-eqz p3, :cond_3

    new-instance p1, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {p1}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    invoke-virtual {p1, p0}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$Chat;)V

    invoke-virtual {p3, p0, p1}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    :cond_3
    if-eqz p4, :cond_5

    if-nez p0, :cond_4

    const-string p0, ""

    goto :goto_2

    :cond_4
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    goto :goto_2

    :cond_5
    :goto_3
    return-void
.end method

.method private static synthetic lambda$showConnectAffiliateAlert$16([JJLjava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    aput-wide p1, p0, v0

    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private static synthetic lambda$showConnectAffiliateAlert$17(ILorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;[JLjava/lang/Runnable;Landroid/view/View;)V
    .locals 5

    invoke-static {p0}, Lorg/telegram/ui/Stars/BotStarsController;->getInstance(I)Lorg/telegram/ui/Stars/BotStarsController;

    move-result-object p6

    invoke-virtual {p6}, Lorg/telegram/ui/Stars/BotStarsController;->getAdmined()Ljava/util/ArrayList;

    move-result-object p6

    invoke-static {p0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p6, v0, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getContainerView()Landroid/view/ViewGroup;

    move-result-object p0

    invoke-static {p0, p2, p3}, Lorg/telegram/ui/Components/ItemOptions;->makeOptions(Landroid/view/ViewGroup;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p0

    invoke-virtual {p6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLObject;

    instance-of p3, p2, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz p3, :cond_1

    move-object p3, p2

    check-cast p3, Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v1, p3, Lorg/telegram/tgnet/TLRPC$User;->id:J

    goto :goto_1

    :cond_1
    instance-of p3, p2, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz p3, :cond_0

    move-object p3, p2

    check-cast p3, Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {p3}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p6

    if-nez p6, :cond_2

    goto :goto_0

    :cond_2
    iget-wide v1, p3, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v1, v1

    :goto_1
    aget-wide v3, p4, v0

    cmp-long p3, v1, v3

    if-nez p3, :cond_3

    const/4 p3, 0x1

    goto :goto_2

    :cond_3
    const/4 p3, 0x0

    :goto_2
    new-instance p6, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda16;

    invoke-direct {p6, p4, v1, v2, p5}, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda16;-><init>([JJLjava/lang/Runnable;)V

    invoke-virtual {p0, p2, p3, p6}, Lorg/telegram/ui/Components/ItemOptions;->addChat(Lorg/telegram/tgnet/TLObject;ZLjava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ItemOptions;->setDrawScrim(Z)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ItemOptions;->setDimAlpha(I)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p0

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ItemOptions;->setGravity(I)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p0

    const/high16 p1, 0x41c00000    # 24.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Components/ItemOptions;->translate(FF)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ItemOptions;->show()Lorg/telegram/ui/Components/ItemOptions;

    return-void
.end method

.method private static synthetic lambda$showConnectAffiliateAlert$18(Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;Landroid/view/View;)V
    .locals 3

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-wide v1, p1, Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;->bot_id:J

    const-string p1, "user_id"

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    new-instance p1, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$6;

    invoke-direct {p1, v0, p0}, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$6;-><init>(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/BottomSheet;)V

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_0
    return-void
.end method

.method private static synthetic lambda$showConnectAffiliateAlert$9(Landroid/content/Context;)V
    .locals 1

    sget v0, Lorg/telegram/messenger/R$string;->ChannelAffiliateProgramJoinButtonInfoLink:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$showShareAffiliateAlert$19(Lorg/telegram/tgnet/tl/TL_payments$connectedBotStarRef;Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_payments$connectedBotStarRef;->url:Ljava/lang/String;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->addToClipboard(Ljava/lang/CharSequence;)Z

    iget-object p1, p1, Lorg/telegram/ui/ActionBar/BottomSheet;->topBulletinContainer:Landroid/widget/FrameLayout;

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$raw;->copy:I

    sget v0, Lorg/telegram/messenger/R$string;->AffiliateProgramLinkCopiedTitle:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->AffiliateProgramLinkCopiedText:I

    iget p0, p0, Lorg/telegram/tgnet/tl/TL_payments$connectedBotStarRef;->commission_permille:I

    invoke-static {p0}, Lorg/telegram/ui/bots/AffiliateProgramFragment;->percents(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p3}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object p3

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    aput-object p3, v2, p0

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    invoke-virtual {p1, p2, v0, p0}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method private static synthetic lambda$showShareAffiliateAlert$20(Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private static synthetic lambda$showShareAffiliateAlert$21(Lorg/telegram/tgnet/TLRPC$UserFull;Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/content/Context;IJLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 8

    if-eqz p0, :cond_0

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->starref_program:Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->starref_program:Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;

    const/4 v7, 0x1

    move-object v1, p2

    move v2, p3

    move-wide v4, p4

    move-object v6, p6

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;->showConnectAffiliateAlert(Landroid/content/Context;ILorg/telegram/tgnet/tl/TL_payments$starRefProgram;JLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$showShareAffiliateAlert$22(Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/content/Context;IJLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/tgnet/TLRPC$UserFull;)V
    .locals 9

    new-instance v8, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda20;

    move-object v0, v8

    move-object v1, p6

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-wide v5, p3

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/tgnet/TLRPC$UserFull;Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/content/Context;IJLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$showShareAffiliateAlert$23(Lorg/telegram/tgnet/tl/TL_payments$connectedBotStarRef;ILorg/telegram/ui/ActionBar/BottomSheet;Landroid/content/Context;JLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 7

    iget-boolean p8, p0, Lorg/telegram/tgnet/tl/TL_payments$connectedBotStarRef;->revoked:Z

    if-eqz p8, :cond_0

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p7

    iget-wide v0, p0, Lorg/telegram/tgnet/tl/TL_payments$connectedBotStarRef;->bot_id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p7, p0}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p7

    new-instance p8, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda19;

    move-object v0, p8

    move-object v1, p2

    move-object v2, p3

    move v3, p1

    move-wide v4, p4

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/content/Context;IJLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-virtual {p7, p0, p1, p2, p8}, Lorg/telegram/messenger/MessagesController;->loadFullUser(Lorg/telegram/tgnet/TLRPC$User;IZLorg/telegram/messenger/Utilities$Callback;)V

    goto :goto_0

    :cond_0
    invoke-interface {p7}, Ljava/lang/Runnable;->run()V

    :cond_1
    :goto_0
    return-void
.end method

.method private static synthetic lambda$showShareAffiliateAlert$24(Landroid/content/DialogInterface;)V
    .locals 0

    return-void
.end method

.method private static synthetic lambda$showShareAffiliateAlert$25(Lorg/telegram/tgnet/TLRPC$UserFull;Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/content/Context;IJLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 8

    if-eqz p0, :cond_0

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->starref_program:Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->starref_program:Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;

    const/4 v7, 0x1

    move-object v1, p2

    move v2, p3

    move-wide v4, p4

    move-object v6, p6

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;->showConnectAffiliateAlert(Landroid/content/Context;ILorg/telegram/tgnet/tl/TL_payments$starRefProgram;JLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$showShareAffiliateAlert$26(Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/content/Context;IJLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/tgnet/TLRPC$UserFull;)V
    .locals 9

    new-instance v8, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda30;

    move-object v0, v8

    move-object v1, p6

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-wide v5, p3

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda30;-><init>(Lorg/telegram/tgnet/TLRPC$UserFull;Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/content/Context;IJLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$showShareAffiliateAlert$27(ILorg/telegram/tgnet/tl/TL_payments$connectedBotStarRef;Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/content/Context;JLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/tgnet/tl/TL_payments$connectedBotStarRef;)V
    .locals 8

    if-nez p7, :cond_0

    invoke-static {p0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p7

    iget-wide v0, p1, Lorg/telegram/tgnet/tl/TL_payments$connectedBotStarRef;->bot_id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p7, p1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p7

    new-instance v7, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda28;

    move-object v0, v7

    move-object v1, p2

    move-object v2, p3

    move v3, p0

    move-wide v4, p4

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda28;-><init>(Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/content/Context;IJLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 p0, 0x0

    const/4 p2, 0x1

    invoke-virtual {p7, p1, p0, p2, v7}, Lorg/telegram/messenger/MessagesController;->loadFullUser(Lorg/telegram/tgnet/TLRPC$User;IZLorg/telegram/messenger/Utilities$Callback;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    move-object v0, p3

    move v1, p0

    move-object v2, p7

    move-wide v3, p4

    move-object v5, p6

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;->showShareAffiliateAlert(Landroid/content/Context;ILorg/telegram/tgnet/tl/TL_payments$connectedBotStarRef;JLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/BottomSheet;

    :cond_1
    :goto_0
    return-void
.end method

.method private static synthetic lambda$showShareAffiliateAlert$28(ILandroid/content/Context;JLorg/telegram/tgnet/tl/TL_payments$connectedBotStarRef;Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 12

    invoke-static {p0}, Lorg/telegram/ui/Stars/BotStarsController;->getInstance(I)Lorg/telegram/ui/Stars/BotStarsController;

    move-result-object v0

    move-object/from16 v3, p4

    iget-wide v9, v3, Lorg/telegram/tgnet/tl/TL_payments$connectedBotStarRef;->bot_id:J

    new-instance v11, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda21;

    move-object v1, v11

    move v2, p0

    move-object/from16 v4, p5

    move-object v5, p1

    move-wide v6, p2

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda21;-><init>(ILorg/telegram/tgnet/tl/TL_payments$connectedBotStarRef;Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/content/Context;JLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, v9

    move-object v6, v11

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Stars/BotStarsController;->getConnectedBot(Landroid/content/Context;JJLorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method private static synthetic lambda$showShareAffiliateAlert$29(ILorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;JLandroid/content/Context;Lorg/telegram/tgnet/tl/TL_payments$connectedBotStarRef;Landroid/view/View;)V
    .locals 15

    invoke-static {p0}, Lorg/telegram/ui/Stars/BotStarsController;->getInstance(I)Lorg/telegram/ui/Stars/BotStarsController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stars/BotStarsController;->getAdmined()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v1

    move-object/from16 v11, p2

    move-object/from16 v3, p3

    invoke-static {v1, v11, v3}, Lorg/telegram/ui/Components/ItemOptions;->makeOptions(Landroid/view/ViewGroup;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Lorg/telegram/tgnet/TLObject;

    instance-of v3, v12, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v3, :cond_1

    move-object v3, v12

    check-cast v3, Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$User;->id:J

    :goto_1
    move-wide v6, v3

    goto :goto_2

    :cond_1
    instance-of v3, v12, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v3, :cond_0

    move-object v3, v12

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v3}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v3, v3

    goto :goto_1

    :goto_2
    cmp-long v3, v6, p4

    if-nez v3, :cond_3

    const/4 v3, 0x1

    const/4 v13, 0x1

    goto :goto_3

    :cond_3
    const/4 v13, 0x0

    :goto_3
    new-instance v14, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda15;

    move-object v3, v14

    move v4, p0

    move-object/from16 v5, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda15;-><init>(ILandroid/content/Context;JLorg/telegram/tgnet/tl/TL_payments$connectedBotStarRef;Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v1, v12, v13, v14}, Lorg/telegram/ui/Components/ItemOptions;->addChat(Lorg/telegram/tgnet/TLObject;ZLjava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    goto :goto_0

    :cond_4
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/ItemOptions;->setDrawScrim(Z)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/ItemOptions;->setDimAlpha(I)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ItemOptions;->setGravity(I)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v0

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/ItemOptions;->translate(FF)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ItemOptions;->show()Lorg/telegram/ui/Components/ItemOptions;

    return-void
.end method

.method private static synthetic lambda$showShareAffiliateAlert$30(Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/tgnet/tl/TL_payments$connectedBotStarRef;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-wide p1, p1, Lorg/telegram/tgnet/tl/TL_payments$connectedBotStarRef;->bot_id:J

    invoke-static {p1, p2}, Lorg/telegram/ui/ProfileActivity;->of(J)Lorg/telegram/ui/ProfileActivity;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_0
    return-void
.end method

.method public static makeParticlesView(Landroid/content/Context;II)Lorg/telegram/ui/Components/Premium/StarParticlesView;
    .locals 0

    new-instance p1, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$5;

    invoke-direct {p1, p0}, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$5;-><init>(Landroid/content/Context;)V

    return-object p1
.end method

.method public static showConnectAffiliateAlert(Landroid/content/Context;ILorg/telegram/tgnet/tl/TL_payments$starRefProgram;JLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)V
    .locals 40

    move-object/from16 v9, p0

    move-object/from16 v12, p2

    move-object/from16 v13, p5

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v12, :cond_7

    if-nez v9, :cond_0

    goto/16 :goto_4

    :cond_0
    new-instance v5, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    invoke-direct {v5, v9, v4, v13}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    new-array v14, v3, [J

    aput-wide p3, v14, v4

    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-wide v7, v12, Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;->bot_id:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v11

    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v7, 0x41800000    # 16.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    const/high16 v10, 0x41a00000    # 20.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    const/high16 v16, 0x41000000    # 8.0f

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {v6, v8, v15, v7, v0}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v9}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    new-instance v7, Landroid/widget/FrameLayout;

    invoke-direct {v7, v9}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v4}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    invoke-virtual {v7, v4}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v18, 0x3c

    const/high16 v19, 0x42700000    # 60.0f

    const/16 v20, 0x13

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v8, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v8, v9}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    const/high16 v15, 0x41f00000    # 30.0f

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v8, v1}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    new-instance v1, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v1}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    invoke-virtual {v1, v11}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    invoke-virtual {v8, v11, v1}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    invoke-static {v8}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;)V

    const/16 v1, 0x3c

    const/16 v2, 0x77

    invoke-static {v1, v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v7, v8, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v10, v12, Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;->daily_revenue_per_user:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    invoke-virtual {v10}, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->positive()Z

    move-result v10

    const v24, 0x40aa8f5c    # 5.33f

    const/high16 v2, 0x41200000    # 10.0f

    const v27, 0x3faa3d71    # 1.33f

    if-eqz v10, :cond_1

    new-instance v10, Landroid/widget/FrameLayout;

    invoke-direct {v10, v9}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-static {v1, v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-static {v15, v1}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-static/range {v27 .. v27}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static/range {v27 .. v27}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    invoke-static/range {v27 .. v27}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static/range {v27 .. v27}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v10, v1, v15, v4, v3}, Landroid/view/View;->setPadding(IIII)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_color_green:I

    invoke-static {v4, v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    const/4 v2, 0x0

    invoke-virtual {v1, v4, v2, v15, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    new-array v2, v3, [Lorg/telegram/ui/Components/ColoredImageSpan;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u2b50\ufe0f "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v12, Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;->daily_revenue_per_user:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    const/high16 v15, 0x3f800000    # 1.0f

    move-object/from16 v32, v14

    const/16 v14, 0x2c

    invoke-static {v4, v15, v14}, Lorg/telegram/ui/Stars/StarsIntroActivity;->formatStarsAmountShort(Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;FC)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/high16 v4, 0x3f400000    # 0.75f

    invoke-static {v3, v4, v2}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStars(Ljava/lang/CharSequence;F[Lorg/telegram/ui/Components/ColoredImageSpan;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x417a8f5c    # 15.66f

    const/4 v3, -0x2

    invoke-static {v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v10, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v38, 0x0

    const/high16 v39, -0x3f800000    # -4.0f

    const/16 v33, -0x2

    const/high16 v34, -0x40000000    # -2.0f

    const/16 v35, 0x51

    const/16 v36, 0x0

    const/16 v37, 0x0

    invoke-static/range {v33 .. v39}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v7, v10, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_1
    move-object/from16 v32, v14

    :goto_0
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v9}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_arrow_avatar:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const v3, 0x400547ae    # 2.0825f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationX(F)V

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText7:I

    invoke-static {v4, v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const/high16 v38, 0x42700000    # 60.0f

    const/16 v39, 0x0

    const/16 v33, 0x24

    const/high16 v34, 0x42700000    # 60.0f

    const/16 v35, 0x11

    const/high16 v36, 0x42700000    # 60.0f

    const/16 v37, 0x0

    invoke-static/range {v33 .. v39}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v9}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    const v38, 0x40b51eb8    # 5.66f

    const/16 v33, 0x3c

    const/16 v35, 0x15

    const/16 v36, 0x0

    invoke-static/range {v33 .. v39}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v14, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v14, v9}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    const/high16 v3, 0x41f00000    # 30.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v14, v3}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    const/16 v3, 0x3c

    const/16 v4, 0x77

    invoke-static {v3, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v14, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, v9}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    sget v15, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-static {v15, v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-static {v10, v4}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-static/range {v27 .. v27}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static/range {v27 .. v27}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    move/from16 v20, v15

    invoke-static/range {v27 .. v27}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    move-object/from16 v21, v14

    invoke-static/range {v27 .. v27}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    invoke-virtual {v3, v4, v10, v15, v14}, Landroid/view/View;->setPadding(IIII)V

    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v10, 0x41200000    # 10.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    sget v15, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-static {v15, v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v15

    invoke-static {v14, v15}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v14

    invoke-virtual {v4, v14}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v14

    invoke-virtual {v4, v14}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 v14, 0x1

    invoke-virtual {v4, v14, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    const/4 v15, 0x0

    invoke-virtual {v4, v10, v15, v14, v15}, Landroid/widget/TextView;->setPadding(IIII)V

    const/4 v10, -0x1

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v10, 0x11

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v10, Landroid/text/SpannableString;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "s "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v12, Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;->commission_permille:I

    invoke-static {v15}, Lorg/telegram/ui/bots/AffiliateProgramFragment;->percents(I)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v10, v14}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v14, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget v15, Lorg/telegram/messenger/R$drawable;->msg_link_1:I

    invoke-direct {v14, v15}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(I)V

    const v15, 0x3f266666    # 0.65f

    invoke-virtual {v14, v15, v15}, Lorg/telegram/ui/Components/ColoredImageSpan;->setScale(FF)V

    const v15, 0x3f333333    # 0.7f

    iput v15, v14, Lorg/telegram/ui/Components/ColoredImageSpan;->spaceScaleX:F

    const/high16 v15, -0x40000000    # -2.0f

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    int-to-float v15, v15

    const/16 v22, 0x0

    move-object/from16 v24, v8

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v14, v15, v8}, Lorg/telegram/ui/Components/ColoredImageSpan;->translate(FF)V

    const/16 v8, 0x21

    move-object/from16 v22, v5

    const/4 v5, 0x1

    const/4 v15, 0x0

    invoke-virtual {v10, v14, v15, v5, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v5, 0x417a8f5c    # 15.66f

    const/4 v10, -0x2

    invoke-static {v10, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v38, 0x0

    const/high16 v39, -0x3f800000    # -4.0f

    const/16 v33, -0x2

    const/high16 v34, -0x40000000    # -2.0f

    const/16 v35, 0x51

    invoke-static/range {v33 .. v39}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v34, -0x2

    const/16 v35, 0x1

    const/16 v36, 0x0

    const/16 v37, 0x0

    invoke-static/range {v33 .. v39}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v1, v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v3, 0x41a00000    # 20.0f

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v3, 0x11

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    sget v3, Lorg/telegram/messenger/R$string;->ChannelAffiliateProgramJoinTitle:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v37, 0x0

    const/high16 v38, 0x41100000    # 9.0f

    const/16 v33, -0x1

    const/16 v35, 0x0

    const/high16 v36, 0x41a80000    # 21.0f

    invoke-static/range {v33 .. v38}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v14, Landroid/widget/LinearLayout;

    invoke-direct {v14, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v0, 0x41e00000    # 28.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v4, v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v5

    invoke-static {v3, v5}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v3

    invoke-virtual {v14, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v5, 0x41500000    # 13.0f

    const/4 v10, 0x1

    invoke-virtual {v3, v10, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-static {v1, v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v15

    invoke-virtual {v3, v15}, Landroid/widget/TextView;->setTextColor(I)V

    sget v15, Lorg/telegram/messenger/R$string;->ChannelAffiliateProgramJoinViewBot:I

    move/from16 v19, v1

    iget-wide v0, v12, Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;->bot_id:J

    move/from16 v5, p1

    invoke-static {v5, v0, v1}, Lorg/telegram/messenger/DialogObject;->getName(IJ)Ljava/lang/String;

    move-result-object v0

    new-array v1, v10, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v0, v1, v10

    invoke-static {v15, v1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v38, 0x0

    const/16 v33, -0x2

    const/16 v35, 0x10

    const/16 v36, 0xb

    const/16 v37, 0x0

    invoke-static/range {v33 .. v39}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v14, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v9}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextGray3:I

    invoke-static {v3, v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v10

    invoke-direct {v1, v10, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    sget v1, Lorg/telegram/messenger/R$drawable;->settings_arrow:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const v1, 0x3f99999a    # 1.2f

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    const/16 v38, 0x8

    const/16 v36, 0x5

    invoke-static/range {v33 .. v39}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v38, 0x4

    const/16 v34, 0x1c

    const/16 v35, 0x1

    const/16 v36, 0x4

    invoke-static/range {v33 .. v39}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v6, v14, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v14}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move/from16 v1, v19

    invoke-static {v1, v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v10

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v10, 0x41600000    # 14.0f

    const/4 v15, 0x1

    invoke-virtual {v0, v15, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v15, 0x11

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setGravity(I)V

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->listenEmojiLoading(Landroid/view/View;)V

    new-instance v15, Landroid/text/SpannableString;

    iget-object v10, v12, Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;->daily_revenue_per_user:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    const v8, 0x3f733333    # 0.95f

    const/16 v5, 0x2c

    invoke-static {v10, v8, v5}, Lorg/telegram/ui/Stars/StarsIntroActivity;->formatStarsAmountShort(Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;FC)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-direct {v15, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v5, Lorg/telegram/ui/Components/TypefaceSpan;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v8

    invoke-direct {v5, v8}, Lorg/telegram/ui/Components/TypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    invoke-virtual {v15}, Landroid/text/SpannableString;->length()I

    move-result v8

    move-object/from16 v19, v14

    const/16 v10, 0x21

    const/4 v14, 0x0

    invoke-virtual {v15, v5, v14, v8, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    sget v5, Lorg/telegram/messenger/R$string;->ChannelAffiliateProgramJoinRevenue:I

    const/4 v8, 0x1

    new-array v10, v8, [Ljava/lang/Object;

    aput-object v15, v10, v14

    invoke-static {v5, v10}, Lorg/telegram/messenger/LocaleController;->formatSpannable(I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v5

    const v8, 0x3f39999a    # 0.725f

    invoke-static {v5, v8}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStarsWithPlain(Ljava/lang/CharSequence;F)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v37, 0x0

    const/high16 v38, 0x41a00000    # 20.0f

    const/16 v33, -0x1

    const/16 v34, -0x2

    const/16 v35, 0x0

    const/high16 v36, 0x41200000    # 10.0f

    invoke-static/range {v33 .. v38}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v6, v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v5, 0x41600000    # 14.0f

    const/4 v8, 0x1

    invoke-virtual {v0, v8, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v5, 0x11

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setGravity(I)V

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->listenEmojiLoading(Landroid/view/View;)V

    sget v5, Lorg/telegram/messenger/R$string;->ChannelAffiliateProgramJoinText:I

    invoke-static {v11}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v8

    iget v10, v12, Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;->commission_permille:I

    invoke-static {v10}, Lorg/telegram/ui/bots/AffiliateProgramFragment;->percents(I)Ljava/lang/CharSequence;

    move-result-object v10

    iget v14, v12, Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;->duration_months:I

    if-gtz v14, :cond_2

    sget v14, Lorg/telegram/messenger/R$string;->ChannelAffiliateProgramJoinText_Lifetime:I

    invoke-static {v14}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v16, v11

    goto :goto_2

    :cond_2
    const/16 v15, 0xc

    if-lt v14, v15, :cond_3

    rem-int/lit8 v16, v14, 0xc

    if-eqz v16, :cond_4

    :cond_3
    move-object/from16 v16, v11

    const/4 v11, 0x0

    goto :goto_1

    :cond_4
    div-int/2addr v14, v15

    move-object/from16 v16, v11

    const/4 v15, 0x0

    new-array v11, v15, [Ljava/lang/Object;

    const-string v15, "ChannelAffiliateProgramJoinText_Years"

    invoke-static {v15, v14, v11}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    goto :goto_2

    :goto_1
    new-array v15, v11, [Ljava/lang/Object;

    const-string v11, "ChannelAffiliateProgramJoinText_Months"

    invoke-static {v11, v14, v15}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    :goto_2
    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v8, v11, v15

    const/4 v8, 0x1

    aput-object v10, v11, v8

    const/4 v8, 0x2

    aput-object v14, v11, v8

    invoke-static {v5, v11}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v8

    invoke-static {v5, v8, v15}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v37, 0x0

    const/high16 v38, 0x41b00000    # 22.0f

    const/16 v33, -0x1

    const/16 v34, -0x2

    const/16 v35, 0x0

    const/16 v36, 0x0

    invoke-static/range {v33 .. v38}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v6, v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-wide/16 v10, 0x0

    cmp-long v0, p3, v10

    if-ltz v0, :cond_5

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v5, 0x41600000    # 14.0f

    const/4 v8, 0x1

    invoke-virtual {v0, v8, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v5, 0x11

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setGravity(I)V

    sget v5, Lorg/telegram/messenger/R$string;->ChannelAffiliateProgramLinkSendTo:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v37, 0x41a00000    # 20.0f

    const/16 v38, 0x0

    const/16 v33, -0x1

    const/16 v34, -0x2

    const/high16 v35, 0x41a00000    # 20.0f

    const/16 v36, 0x0

    invoke-static/range {v33 .. v38}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v6, v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v5, 0x41e00000    # 28.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-static {v4, v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v10

    invoke-static {v8, v10}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v4, v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v8

    invoke-static {v4, v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-static {v10, v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v10

    invoke-static {v4, v10}, Lorg/telegram/ui/ActionBar/Theme;->blendOver(II)I

    move-result v4

    invoke-static {v5, v8, v4}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v4, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v4, v9}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    const/high16 v5, 0x41600000    # 14.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    const/16 v5, 0x1c

    invoke-static {v5, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v8, 0x41500000    # 13.0f

    const/4 v10, 0x1

    invoke-virtual {v5, v10, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-static {v1, v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v33, -0x2

    const/16 v35, 0x10

    const/16 v36, 0x6

    const/16 v37, 0x0

    invoke-static/range {v33 .. v39}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v9}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v3, v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-direct {v2, v3, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    sget v2, Lorg/telegram/messenger/R$drawable;->arrows_select:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    const/16 v38, 0x5

    const/16 v36, 0x2

    invoke-static/range {v33 .. v39}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v38, 0x0

    const/16 v39, 0x14

    const/16 v34, 0x1c

    const/16 v35, 0x1

    const/16 v36, 0x0

    const/16 v37, 0xb

    invoke-static/range {v33 .. v39}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object v14, v0

    move-object v15, v4

    move-object/from16 v17, v5

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    move-object v14, v0

    move-object v15, v14

    move-object/from16 v17, v15

    :goto_3
    new-instance v11, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-direct {v11, v9, v13}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget v0, Lorg/telegram/messenger/R$string;->ChannelAffiliateProgramJoinButton:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v11, v0, v1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    const/16 v0, 0x30

    const/4 v1, -0x1

    invoke-static {v1, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v6, v11, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-direct {v0, v9, v13}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget v1, Lorg/telegram/messenger/R$string;->ChannelAffiliateProgramJoinButtonInfo:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda6;

    invoke-direct {v2, v9}, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda6;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v1, 0x41400000    # 12.0f

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText4:I

    invoke-static {v1, v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageLinkIn:I

    invoke-static {v1, v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLinkTextColor(I)V

    const/16 v30, 0xe

    const/16 v31, 0x6

    const/16 v25, -0x1

    const/16 v26, -0x2

    const/16 v27, 0x31

    const/16 v28, 0xe

    const/16 v29, 0xe

    invoke-static/range {v25 .. v31}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setCustomView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->create()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v10

    new-instance v0, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda7;

    invoke-direct {v0, v10, v12}, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;)V

    move-object/from16 v1, v24

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v8, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda8;

    move-object v0, v8

    move-object v1, v11

    move-object/from16 v2, v32

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-object v5, v10

    move-wide/from16 v6, p3

    move-object v13, v8

    move/from16 v8, p6

    move-object/from16 v9, p0

    move-object v12, v10

    move-object/from16 v10, p5

    move-object/from16 v18, v14

    move-object v14, v11

    move-object/from16 v11, v16

    invoke-direct/range {v0 .. v11}, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;[JILorg/telegram/tgnet/tl/TL_payments$starRefProgram;Lorg/telegram/ui/ActionBar/BottomSheet;JZLandroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/tgnet/TLRPC$User;)V

    invoke-virtual {v14, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda9;-><init>()V

    invoke-virtual {v12, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    new-instance v13, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda10;

    move-object v6, v13

    move-object/from16 v7, v32

    move/from16 v8, p1

    move-object/from16 v9, v21

    move-object v10, v15

    move-object/from16 v11, v17

    invoke-direct/range {v6 .. v11}, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda10;-><init>([JILorg/telegram/ui/Components/BackupImageView;Lorg/telegram/ui/Components/BackupImageView;Landroid/widget/TextView;)V

    invoke-interface {v13}, Ljava/lang/Runnable;->run()V

    if-eqz v18, :cond_6

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Stars/BotStarsController;->getInstance(I)Lorg/telegram/ui/Stars/BotStarsController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stars/BotStarsController;->loadAdminedBots()V

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Stars/BotStarsController;->getInstance(I)Lorg/telegram/ui/Stars/BotStarsController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stars/BotStarsController;->loadAdminedChannels()V

    new-instance v7, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda11;

    move-object v0, v7

    move/from16 v1, p1

    move-object v2, v12

    move-object/from16 v3, p5

    move-object/from16 v4, v18

    move-object/from16 v5, v32

    move-object v6, v13

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda11;-><init>(ILorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;[JLjava/lang/Runnable;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    new-instance v0, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda12;

    move-object/from16 v1, p2

    move-object v2, v12

    invoke-direct {v0, v2, v1}, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;)V

    move-object/from16 v1, v19

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p5

    move/from16 v1, v20

    invoke-static {v1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    invoke-virtual {v2, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar(I)V

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    :cond_7
    :goto_4
    return-void
.end method

.method public static showShareAffiliateAlert(Landroid/content/Context;ILorg/telegram/tgnet/tl/TL_payments$connectedBotStarRef;JLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/BottomSheet;
    .locals 44

    move-object/from16 v9, p0

    move-object/from16 v10, p2

    move-wide/from16 v11, p3

    move-object/from16 v13, p5

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v10, :cond_0

    if-nez v9, :cond_1

    :cond_0
    const/4 v0, 0x0

    goto/16 :goto_14

    :cond_1
    new-instance v7, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    invoke-direct {v7, v9, v6, v13}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    iget-wide v14, v10, Lorg/telegram/tgnet/tl/TL_payments$connectedBotStarRef;->bot_id:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v8, v14}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v8

    new-instance v14, Landroid/widget/LinearLayout;

    invoke-direct {v14, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v14, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v15, 0x41800000    # 16.0f

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/high16 v0, 0x41a00000    # 20.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/high16 v17, 0x41000000    # 8.0f

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    invoke-virtual {v14, v1, v2, v3, v15}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v14, v6}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {v14, v6}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v9}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/view/View;

    invoke-direct {v2, v9}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 v3, 0x42200000    # 40.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iget-boolean v15, v10, Lorg/telegram/tgnet/tl/TL_payments$connectedBotStarRef;->revoked:Z

    if-eqz v15, :cond_2

    sget v15, Lorg/telegram/ui/ActionBar/Theme;->key_color_red:I

    goto :goto_0

    :cond_2
    sget v15, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    :goto_0
    invoke-static {v15, v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v15

    invoke-static {v3, v15}, Lorg/telegram/ui/ActionBar/Theme;->createCircleDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v18, 0x50

    const/high16 v19, 0x42a00000    # 80.0f

    const/16 v20, 0x31

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v9}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-boolean v15, v10, Lorg/telegram/tgnet/tl/TL_payments$connectedBotStarRef;->revoked:Z

    if-eqz v15, :cond_3

    sget v15, Lorg/telegram/messenger/R$drawable;->msg_link_2:I

    goto :goto_1

    :cond_3
    sget v15, Lorg/telegram/messenger/R$drawable;->msg_limit_links:I

    :goto_1
    invoke-virtual {v2, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-boolean v15, v10, Lorg/telegram/tgnet/tl/TL_payments$connectedBotStarRef;->revoked:Z

    const v18, 0x3fe66666    # 1.8f

    const/high16 v19, 0x40000000    # 2.0f

    if-eqz v15, :cond_4

    const/high16 v15, 0x40000000    # 2.0f

    goto :goto_2

    :cond_4
    const v15, 0x3fe66666    # 1.8f

    :goto_2
    invoke-virtual {v2, v15}, Landroid/view/View;->setScaleX(F)V

    iget-boolean v15, v10, Lorg/telegram/tgnet/tl/TL_payments$connectedBotStarRef;->revoked:Z

    if-eqz v15, :cond_5

    const/high16 v15, 0x40000000    # 2.0f

    goto :goto_3

    :cond_5
    const v15, 0x3fe66666    # 1.8f

    :goto_3
    invoke-virtual {v2, v15}, Landroid/view/View;->setScaleY(F)V

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v18, 0x50

    const/high16 v19, 0x42a00000    # 80.0f

    const/16 v20, 0x31

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v15

    invoke-virtual {v1, v2, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object v15, v7

    iget-wide v6, v10, Lorg/telegram/tgnet/tl/TL_payments$connectedBotStarRef;->participants:J

    const/4 v4, -0x1

    const/high16 v0, 0x41400000    # 12.0f

    const-wide/16 v21, 0x0

    cmp-long v24, v6, v21

    if-lez v24, :cond_7

    new-instance v6, Landroid/widget/FrameLayout;

    invoke-direct {v6, v9}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/high16 v7, 0x42480000    # 50.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-static {v2, v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-static {v7, v2}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v25, -0x2

    const/high16 v26, -0x40000000    # -2.0f

    const/16 v27, 0x31

    const/16 v28, 0x0

    const/high16 v29, 0x42840000    # 66.0f

    invoke-static/range {v25 .. v31}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v2, v5, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    const/high16 v7, 0x41180000    # 9.5f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    iget-boolean v0, v10, Lorg/telegram/tgnet/tl/TL_payments$connectedBotStarRef;->revoked:Z

    if-eqz v0, :cond_6

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_color_red:I

    goto :goto_4

    :cond_6
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_color_green:I

    :goto_4
    invoke-static {v0, v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    invoke-static {v7, v0}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x40d51eb8    # 6.66f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    const/4 v4, 0x0

    invoke-virtual {v2, v7, v4, v0, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4}, Landroid/text/SpannableStringBuilder;-><init>()V

    const-string v7, "s "

    invoke-virtual {v4, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v7, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget v0, Lorg/telegram/messenger/R$drawable;->mini_reply_user:I

    invoke-direct {v7, v0}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(I)V

    const v0, 0x3f6fdf3b    # 0.937f

    invoke-virtual {v7, v0, v0}, Lorg/telegram/ui/Components/ColoredImageSpan;->setScale(FF)V

    const v0, 0x3faa3d71    # 1.33f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    const/high16 v27, 0x3f800000    # 1.0f

    invoke-static/range {v27 .. v27}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v7, v0, v5}, Lorg/telegram/ui/Components/ColoredImageSpan;->translate(FF)V

    const v0, 0x3f4ccccd    # 0.8f

    iput v0, v7, Lorg/telegram/ui/Components/ColoredImageSpan;->spaceScaleX:F

    move-object/from16 v18, v15

    const/16 v0, 0x21

    const/4 v5, 0x0

    const/4 v15, 0x1

    invoke-virtual {v4, v7, v5, v15, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    move-object v5, v1

    iget-wide v0, v10, Lorg/telegram/tgnet/tl/TL_payments$connectedBotStarRef;->participants:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x11

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setGravity(I)V

    const v34, 0x3faa3d71    # 1.33f

    const v35, 0x3faa3d71    # 1.33f

    const/16 v29, -0x1

    const/high16 v30, 0x41980000    # 19.0f

    const/16 v31, 0x77

    const v32, 0x3faa3d71    # 1.33f

    const v33, 0x3faa3d71    # 1.33f

    invoke-static/range {v29 .. v35}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v6, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_5

    :cond_7
    move-object v5, v1

    move-object/from16 v18, v15

    :goto_5
    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v29, -0x2

    const/16 v30, -0x2

    const/16 v31, 0x1

    const/16 v32, 0x0

    const/16 v33, 0x0

    invoke-static/range {v29 .. v35}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v14, v5, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v1, v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v2, 0x41a00000    # 20.0f

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    sget v2, Lorg/telegram/messenger/R$string;->ChannelAffiliateProgramLinkTitle:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v33, 0x41a00000    # 20.0f

    const v34, 0x411547ae    # 9.33f

    const/16 v29, -0x1

    const/high16 v31, 0x41a00000    # 20.0f

    const/high16 v32, 0x41800000    # 16.0f

    invoke-static/range {v29 .. v34}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v14, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v15, Landroid/widget/LinearLayout;

    invoke-direct {v15, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v2, 0x41e00000    # 28.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v5, v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v6

    invoke-static {v4, v6}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v4

    invoke-virtual {v15, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v4, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v4, v9}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    const/high16 v6, 0x41600000    # 14.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-virtual {v4, v7}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    new-instance v7, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v7}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    const/16 v0, 0x1c

    invoke-static {v0, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v15, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x41500000    # 13.0f

    const/4 v6, 0x1

    invoke-virtual {v2, v6, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-static {v1, v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    move v6, v1

    iget-wide v0, v10, Lorg/telegram/tgnet/tl/TL_payments$connectedBotStarRef;->bot_id:J

    move/from16 v32, v5

    move/from16 v5, p1

    invoke-static {v5, v0, v1}, Lorg/telegram/messenger/DialogObject;->getName(IJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v7, v8}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    invoke-virtual {v4, v8, v7}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v33, -0x2

    const/16 v34, -0x2

    const/16 v35, 0x10

    const/16 v36, 0x6

    const/16 v37, 0x0

    invoke-static/range {v33 .. v39}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v15, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v9}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextGray3:I

    invoke-static {v2, v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v4, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    sget v1, Lorg/telegram/messenger/R$drawable;->settings_arrow:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const v1, 0x3f99999a    # 1.2f

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    const/16 v38, 0x8

    const/16 v36, 0x5

    invoke-static/range {v33 .. v39}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v15, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v38, 0x4

    const/16 v34, 0x1c

    const/16 v35, 0x1

    const/16 v36, 0x4

    invoke-static/range {v33 .. v39}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v14, v15, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v15}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v1, 0x41600000    # 14.0f

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-boolean v1, v10, Lorg/telegram/tgnet/tl/TL_payments$connectedBotStarRef;->revoked:Z

    if-eqz v1, :cond_8

    sget v1, Lorg/telegram/messenger/R$string;->ChannelAffiliateProgramLinkTextRevoked:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move/from16 v36, v2

    move-object/from16 v35, v7

    move-object/from16 v19, v8

    move-object/from16 v33, v15

    goto/16 :goto_c

    :cond_8
    const-string v1, "ChannelAffiliateProgramJoinText_Months"

    const-string v4, "ChannelAffiliateProgramJoinText_Years"

    cmp-long v33, v11, v21

    if-gez v33, :cond_c

    sget v5, Lorg/telegram/messenger/R$string;->ChannelAffiliateProgramLinkTextChannel:I

    move-object/from16 v33, v15

    iget v15, v10, Lorg/telegram/tgnet/tl/TL_payments$connectedBotStarRef;->commission_permille:I

    invoke-static {v15}, Lorg/telegram/ui/bots/AffiliateProgramFragment;->percents(I)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-static {v8}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v35, v7

    iget v7, v10, Lorg/telegram/tgnet/tl/TL_payments$connectedBotStarRef;->duration_months:I

    if-gtz v7, :cond_9

    sget v1, Lorg/telegram/messenger/R$string;->ChannelAffiliateProgramJoinText_Lifetime:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    move/from16 v36, v2

    const/4 v2, 0x0

    :goto_6
    const/4 v4, 0x3

    goto :goto_8

    :cond_9
    move/from16 v36, v2

    const/16 v2, 0xc

    if-lt v7, v2, :cond_a

    rem-int/lit8 v19, v7, 0xc

    if-eqz v19, :cond_b

    :cond_a
    const/4 v2, 0x0

    goto :goto_7

    :cond_b
    div-int/2addr v7, v2

    const/4 v2, 0x0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v4, v7, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :goto_7
    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v1, v7, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :goto_8
    new-array v4, v4, [Ljava/lang/Object;

    aput-object v15, v4, v2

    const/4 v7, 0x1

    aput-object v34, v4, v7

    const/4 v7, 0x2

    aput-object v1, v4, v7

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v19, v8

    goto :goto_c

    :cond_c
    move/from16 v36, v2

    move-object/from16 v35, v7

    move-object/from16 v33, v15

    sget v5, Lorg/telegram/messenger/R$string;->ChannelAffiliateProgramLinkTextUser:I

    iget v7, v10, Lorg/telegram/tgnet/tl/TL_payments$connectedBotStarRef;->commission_permille:I

    invoke-static {v7}, Lorg/telegram/ui/bots/AffiliateProgramFragment;->percents(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-static {v8}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v15

    iget v2, v10, Lorg/telegram/tgnet/tl/TL_payments$connectedBotStarRef;->duration_months:I

    if-gtz v2, :cond_d

    sget v1, Lorg/telegram/messenger/R$string;->ChannelAffiliateProgramJoinText_Lifetime:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v19, v8

    const/4 v2, 0x3

    const/4 v8, 0x0

    goto :goto_b

    :cond_d
    move-object/from16 v19, v8

    const/16 v8, 0xc

    if-lt v2, v8, :cond_e

    rem-int/lit8 v34, v2, 0xc

    if-eqz v34, :cond_f

    :cond_e
    const/4 v8, 0x0

    goto :goto_a

    :cond_f
    div-int/2addr v2, v8

    const/4 v8, 0x0

    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {v4, v2, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_9
    const/4 v2, 0x3

    goto :goto_b

    :goto_a
    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v1, v2, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    :goto_b
    new-array v2, v2, [Ljava/lang/Object;

    aput-object v7, v2, v8

    const/4 v7, 0x1

    aput-object v15, v2, v7

    const/4 v7, 0x2

    aput-object v1, v2, v7

    invoke-static {v5, v2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_c
    const/high16 v41, 0x41a00000    # 20.0f

    const/high16 v42, 0x41900000    # 18.0f

    const/16 v37, -0x1

    const/16 v38, -0x2

    const/high16 v39, 0x41a00000    # 20.0f

    const/high16 v40, 0x41980000    # 19.0f

    invoke-static/range {v37 .. v42}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v0, v10, Lorg/telegram/tgnet/tl/TL_payments$connectedBotStarRef;->revoked:Z

    if-nez v0, :cond_12

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v1, 0x41600000    # 14.0f

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    sget v1, Lorg/telegram/messenger/R$string;->ChannelAffiliateProgramLinkSendTo:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v41, 0x41a00000    # 20.0f

    const/16 v42, 0x0

    const/16 v37, -0x1

    const/16 v38, -0x2

    const/high16 v39, 0x41a00000    # 20.0f

    const/16 v40, 0x0

    invoke-static/range {v37 .. v42}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v0, 0x41e00000    # 28.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    move/from16 v4, v32

    invoke-static {v4, v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v5

    invoke-static {v0, v5}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v0, v9}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    const/high16 v5, 0x41600000    # 14.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    new-instance v5, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v5}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    const/16 v7, 0x1c

    invoke-static {v7, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v1, v0, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v8, 0x41500000    # 13.0f

    const/4 v15, 0x1

    invoke-virtual {v7, v15, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-static {v6, v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    cmp-long v8, v11, v21

    if-ltz v8, :cond_10

    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v8, v15}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v8

    invoke-virtual {v5, v8}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    invoke-virtual {v0, v8, v5}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    invoke-static {v8}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v15, v3

    goto :goto_e

    :cond_10
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    move-object v15, v3

    neg-long v2, v11

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v8, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    invoke-virtual {v5, v2}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$Chat;)V

    invoke-virtual {v0, v2, v5}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    if-nez v2, :cond_11

    const-string v0, ""

    goto :goto_d

    :cond_11
    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    :goto_d
    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_e
    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v37, -0x2

    const/16 v38, -0x2

    const/16 v39, 0x10

    const/16 v40, 0x6

    const/16 v41, 0x0

    invoke-static/range {v37 .. v43}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v1, v7, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v9}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object v2, v15

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    move/from16 v3, v36

    invoke-static {v3, v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    move-object/from16 v5, v35

    invoke-direct {v2, v3, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    sget v2, Lorg/telegram/messenger/R$drawable;->arrows_select:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    const/16 v39, 0x5

    const/16 v40, 0x0

    const/16 v34, -0x2

    const/16 v35, -0x2

    const/16 v36, 0x10

    const/16 v37, 0x2

    const/16 v38, 0x0

    invoke-static/range {v34 .. v40}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v39, 0x0

    const/16 v40, 0x16

    const/16 v35, 0x1c

    const/16 v36, 0x1

    const/16 v37, 0x0

    const/16 v38, 0x9

    invoke-static/range {v34 .. v40}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v14, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object v15, v1

    goto :goto_f

    :cond_12
    move/from16 v4, v32

    const/4 v15, 0x0

    :goto_f
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v1, 0x41800000    # 16.0f

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    invoke-static {v6, v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v4, v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-static {v4, v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-static {v4, v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->blendOver(II)I

    move-result v3

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const v3, 0x416a8f5c    # 14.66f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v0, v2, v4, v1, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v1, v10, Lorg/telegram/tgnet/tl/TL_payments$connectedBotStarRef;->url:Ljava/lang/String;

    if-eqz v1, :cond_13

    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v1, v10, Lorg/telegram/tgnet/tl/TL_payments$connectedBotStarRef;->url:Ljava/lang/String;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_10

    :cond_13
    iget-object v1, v10, Lorg/telegram/tgnet/tl/TL_payments$connectedBotStarRef;->url:Ljava/lang/String;

    :goto_10
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v7, 0x0

    const/high16 v8, 0x41400000    # 12.0f

    const/4 v2, -0x1

    const/high16 v3, -0x40000000    # -2.0f

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v8, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-direct {v8, v9, v13}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iget-boolean v1, v10, Lorg/telegram/tgnet/tl/TL_payments$connectedBotStarRef;->revoked:Z

    if-nez v1, :cond_14

    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    const-string v2, "c "

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v2, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_copy_filled:I

    invoke-direct {v2, v3}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(I)V

    const/16 v3, 0x21

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v4, v5, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    sget v2, Lorg/telegram/messenger/R$string;->ChannelAffiliateProgramLinkCopy:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :goto_11
    invoke-virtual {v8, v1, v4}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_12

    :cond_14
    const/4 v4, 0x0

    sget v1, Lorg/telegram/messenger/R$string;->ChannelAffiliateProgramLinkRejoin:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_11

    :goto_12
    const/16 v2, 0x30

    const/4 v3, -0x1

    invoke-static {v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v14, v8, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-direct {v2, v9, v13}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iget-wide v3, v10, Lorg/telegram/tgnet/tl/TL_payments$connectedBotStarRef;->participants:J

    cmp-long v5, v3, v21

    if-gtz v5, :cond_15

    sget v3, Lorg/telegram/messenger/R$string;->ChannelAffiliateProgramLinkOpenedNone:I

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v4, v6, v1

    invoke-static {v3, v6}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_13

    :cond_15
    const/4 v1, 0x0

    const/4 v5, 0x1

    long-to-int v4, v3

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v3

    new-array v6, v5, [Ljava/lang/Object;

    aput-object v3, v6, v1

    const-string v1, "ChannelAffiliateProgramLinkOpened"

    invoke-static {v1, v4, v6}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_13
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x11

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {v2, v5, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText4:I

    invoke-static {v1, v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageLinkIn:I

    invoke-static {v1, v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLinkTextColor(I)V

    const/16 v25, 0xe

    const/16 v26, 0x2

    const/16 v20, -0x1

    const/16 v21, -0x2

    const/16 v22, 0x31

    const/16 v23, 0xe

    const/16 v24, 0xc

    invoke-static/range {v20 .. v26}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v14, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v1, v18

    invoke-virtual {v1, v14}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setCustomView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->create()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v14

    new-instance v7, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda0;

    move-object/from16 v1, v19

    invoke-direct {v7, v10, v14, v13, v1}, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/tgnet/tl/TL_payments$connectedBotStarRef;Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/tgnet/TLRPC$User;)V

    iget-boolean v1, v10, Lorg/telegram/tgnet/tl/TL_payments$connectedBotStarRef;->revoked:Z

    if-nez v1, :cond_16

    new-instance v1, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, v7}, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_16
    new-instance v5, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda2;

    move-object v0, v5

    move-object/from16 v1, p2

    move/from16 v2, p1

    move-object v3, v14

    move-object/from16 v4, p0

    move-object v9, v5

    move-wide/from16 v5, p3

    move-object/from16 v16, v7

    move-object/from16 v7, p5

    move-object v11, v8

    move-object/from16 v8, v16

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/tgnet/tl/TL_payments$connectedBotStarRef;ILorg/telegram/ui/ActionBar/BottomSheet;Landroid/content/Context;JLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/Runnable;)V

    invoke-virtual {v11, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {v14, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    if-eqz v15, :cond_17

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Stars/BotStarsController;->getInstance(I)Lorg/telegram/ui/Stars/BotStarsController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stars/BotStarsController;->loadAdminedBots()V

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Stars/BotStarsController;->getInstance(I)Lorg/telegram/ui/Stars/BotStarsController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stars/BotStarsController;->loadAdminedChannels()V

    new-instance v9, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda4;

    move-object v0, v9

    move/from16 v1, p1

    move-object v2, v14

    move-object/from16 v3, p5

    move-object v4, v15

    move-wide/from16 v5, p3

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda4;-><init>(ILorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;JLandroid/content/Context;Lorg/telegram/tgnet/tl/TL_payments$connectedBotStarRef;)V

    invoke-virtual {v15, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_17
    new-instance v0, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda5;

    invoke-direct {v0, v14, v10}, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/tgnet/tl/TL_payments$connectedBotStarRef;)V

    move-object/from16 v1, v33

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-static {v0, v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    invoke-virtual {v14, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar(I)V

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v1

    if-nez v1, :cond_18

    if-eqz v0, :cond_18

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hasDialogOnTop(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v1

    if-nez v1, :cond_18

    invoke-virtual {v14, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->makeAttached(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    :cond_18
    invoke-virtual {v14}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    return-object v14

    :goto_14
    return-object v0
.end method

.method private sortText(Lorg/telegram/ui/Stars/BotStarsController$ChannelSuggestedBots$Sort;)Ljava/lang/CharSequence;
    .locals 6

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    sget v1, Lorg/telegram/messenger/R$string;->ChannelAffiliateProgramProgramsSort:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    sget-object v1, Lorg/telegram/ui/Stars/BotStarsController$ChannelSuggestedBots$Sort;->BY_PROFITABILITY:Lorg/telegram/ui/Stars/BotStarsController$ChannelSuggestedBots$Sort;

    const-string v2, "v"

    if-ne p1, v1, :cond_0

    new-instance v1, Landroid/text/SpannableString;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Lorg/telegram/messenger/R$string;->ChannelAffiliateProgramProgramsSortProfitability:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    sget-object v1, Lorg/telegram/ui/Stars/BotStarsController$ChannelSuggestedBots$Sort;->BY_REVENUE:Lorg/telegram/ui/Stars/BotStarsController$ChannelSuggestedBots$Sort;

    if-ne p1, v1, :cond_1

    new-instance v1, Landroid/text/SpannableString;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Lorg/telegram/messenger/R$string;->ChannelAffiliateProgramProgramsSortRevenue:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    sget-object v1, Lorg/telegram/ui/Stars/BotStarsController$ChannelSuggestedBots$Sort;->BY_DATE:Lorg/telegram/ui/Stars/BotStarsController$ChannelSuggestedBots$Sort;

    if-ne p1, v1, :cond_2

    new-instance v1, Landroid/text/SpannableString;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Lorg/telegram/messenger/R$string;->ChannelAffiliateProgramProgramsSortDate:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    :goto_0
    new-instance v2, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget v3, Lorg/telegram/messenger/R$drawable;->arrow_more:I

    invoke-direct {v2, v3}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(I)V

    const/4 v3, 0x1

    iput-boolean v3, v2, Lorg/telegram/ui/Components/ColoredImageSpan;->useLinkPaintColor:Z

    const v4, 0x3f19999a    # 0.6f

    invoke-virtual {v2, v4, v4}, Lorg/telegram/ui/Components/ColoredImageSpan;->setScale(FF)V

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v3

    const/16 v5, 0x21

    invoke-virtual {v1, v2, v4, v3, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/ui/Stars/BotStarsController;->getInstance(I)Lorg/telegram/ui/Stars/BotStarsController;

    move-result-object v2

    iget-wide v3, p0, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;->dialogId:J

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/Stars/BotStarsController;->getChannelSuggestedBots(J)Lorg/telegram/ui/Stars/BotStarsController$ChannelSuggestedBots;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$4;

    invoke-direct {v3, p0, p1, v2}, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$4;-><init>(Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;Lorg/telegram/ui/Stars/BotStarsController$ChannelSuggestedBots$Sort;Lorg/telegram/ui/Stars/BotStarsController$ChannelSuggestedBots;)V

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result p1

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2, p1, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_2
    return-object v0
.end method


# virtual methods
.method protected createAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 10

    new-instance v9, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$3;

    iget-object v2, p0, Lorg/telegram/ui/GradientHeaderActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    iget v5, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    new-instance v7, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda13;

    invoke-direct {v7, p0}, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;)V

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v8

    const/4 v6, 0x1

    move-object v0, v9

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$3;-><init>(Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;Lorg/telegram/ui/Components/RecyclerListView;Landroid/content/Context;IIZLorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v9, p0, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    return-object v9
.end method

.method public createParticlesView()Lorg/telegram/ui/Components/Premium/StarParticlesView;
    .locals 3

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x4b

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;->makeParticlesView(Landroid/content/Context;II)Lorg/telegram/ui/Components/Premium/StarParticlesView;

    move-result-object v0

    return-object v0
.end method

.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 10

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/GradientHeaderActivity;->useFillLastLayoutManager:Z

    const/high16 v1, 0x436e0000    # 238.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/GradientHeaderActivity;->particlesViewHeight:I

    new-instance v1, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$1;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$1;-><init>(Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;->emptyLayout:Landroid/view/View;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackgroundGray:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-super {p0, p1}, Lorg/telegram/ui/GradientHeaderActivity;->createView(Landroid/content/Context;)Landroid/view/View;

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;->aboveTitleView:Landroid/widget/FrameLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    new-instance v1, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    const/4 v3, 0x3

    invoke-direct {v1, p1, v2, v3}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;-><init>(Landroid/content/Context;II)V

    iput-object v1, p0, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;->iconTextureView:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    iget-object v1, v1, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->mRenderer:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_starsGradient1:I

    iput v2, v1, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;->colorKey1:I

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_starsGradient2:I

    iput v2, v1, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;->colorKey2:I

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;->updateColors()V

    iget-object v1, p0, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;->iconTextureView:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    iget-object v2, p0, Lorg/telegram/ui/GradientHeaderActivity;->particlesView:Lorg/telegram/ui/Components/Premium/StarParticlesView;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->setStarParticlesView(Lorg/telegram/ui/Components/Premium/StarParticlesView;)V

    iget-object v1, p0, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;->aboveTitleView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;->iconTextureView:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    const/4 v8, 0x0

    const/high16 v9, 0x41400000    # 12.0f

    const/16 v3, 0xbe

    const/high16 v4, 0x433e0000    # 190.0f

    const/16 v5, 0x11

    const/4 v6, 0x0

    const/high16 v7, 0x42000000    # 32.0f

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget v1, Lorg/telegram/messenger/R$string;->ChannelAffiliateProgramTitle:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->ChannelAffiliateProgramText:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;->aboveTitleView:Landroid/widget/FrameLayout;

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v3, v4}, Lorg/telegram/ui/GradientHeaderActivity;->configureHeader(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View;Landroid/view/View;)V

    iget-object v1, p0, Lorg/telegram/ui/GradientHeaderActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda17;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    iget-object v1, p0, Lorg/telegram/ui/GradientHeaderActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda18;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V

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

    iget-object p1, p0, Lorg/telegram/ui/GradientHeaderActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v0, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$2;-><init>(Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object p1
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 3

    sget p2, Lorg/telegram/messenger/NotificationCenter;->channelConnectedBotsUpdate:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p2, :cond_1

    aget-object p1, p3, v1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iget-wide v1, p0, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;->dialogId:J

    cmp-long p3, p1, v1

    if-nez p3, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    :cond_0
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/ui/Stars/BotStarsController;->getInstance(I)Lorg/telegram/ui/Stars/BotStarsController;

    move-result-object p1

    iget-wide p2, p0, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;->dialogId:J

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Stars/BotStarsController;->getChannelConnectedBots(J)Lorg/telegram/ui/Stars/BotStarsController$ChannelConnectedBots;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Stars/BotStarsController$ChannelConnectedBots;->load()V

    goto :goto_0

    :cond_1
    sget p2, Lorg/telegram/messenger/NotificationCenter;->channelSuggestedBotsUpdate:I

    if-ne p1, p2, :cond_2

    aget-object p1, p3, v1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iget-wide v1, p0, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;->dialogId:J

    cmp-long p3, p1, v1

    if-nez p3, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public fillItems(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 6

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/telegram/ui/GradientHeaderActivity;->getHeader(Landroid/content/Context;)Landroid/view/View;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asFullyCustom(Landroid/view/View;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget p2, Lorg/telegram/messenger/R$drawable;->menu_feature_reliable:I

    sget v0, Lorg/telegram/messenger/R$string;->ChannelAffiliateProgramFeature1Title:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->ChannelAffiliateProgramFeature1:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v0, v1}, Lorg/telegram/ui/bots/AffiliateProgramFragment$FeatureCell$Factory;->as(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget p2, Lorg/telegram/messenger/R$drawable;->menu_feature_transparent:I

    sget v0, Lorg/telegram/messenger/R$string;->ChannelAffiliateProgramFeature2Title:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->ChannelAffiliateProgramFeature2:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v0, v1}, Lorg/telegram/ui/bots/AffiliateProgramFragment$FeatureCell$Factory;->as(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget p2, Lorg/telegram/messenger/R$drawable;->menu_feature_simple:I

    sget v0, Lorg/telegram/messenger/R$string;->ChannelAffiliateProgramFeature3Title:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->ChannelAffiliateProgramFeature3:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v0, v1}, Lorg/telegram/ui/bots/AffiliateProgramFragment$FeatureCell$Factory;->as(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p2, 0x1

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asShadow(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/ui/Stars/BotStarsController;->getInstance(I)Lorg/telegram/ui/Stars/BotStarsController;

    move-result-object p2

    iget-wide v1, p0, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;->dialogId:J

    invoke-virtual {p2, v1, v2}, Lorg/telegram/ui/Stars/BotStarsController;->getChannelConnectedBots(J)Lorg/telegram/ui/Stars/BotStarsController$ChannelConnectedBots;

    move-result-object p2

    iget-object v1, p2, Lorg/telegram/ui/Stars/BotStarsController$ChannelConnectedBots;->bots:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x1d

    if-eqz v1, :cond_1

    iget v1, p2, Lorg/telegram/ui/Stars/BotStarsController$ChannelConnectedBots;->count:I

    if-lez v1, :cond_5

    :cond_1
    sget v1, Lorg/telegram/messenger/R$string;->ChannelAffiliateProgramMyPrograms:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/Components/UItem;->asHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    :goto_0
    iget-object v4, p2, Lorg/telegram/ui/Stars/BotStarsController$ChannelConnectedBots;->bots:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    iget-object v4, p2, Lorg/telegram/ui/Stars/BotStarsController$ChannelConnectedBots;->bots:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/tl/TL_payments$connectedBotStarRef;

    invoke-static {v4}, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$BotCell$Factory;->as(Ljava/lang/Object;)Lorg/telegram/ui/Components/UItem;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-boolean v1, p2, Lorg/telegram/ui/Stars/BotStarsController$ChannelConnectedBots;->endReached:Z

    if-eqz v1, :cond_3

    invoke-virtual {p2}, Lorg/telegram/ui/Stars/BotStarsController$ChannelConnectedBots;->isLoading()Z

    move-result p2

    if-eqz p2, :cond_4

    :cond_3
    invoke-static {v3}, Lorg/telegram/ui/Components/UItem;->asFlicker(I)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, Lorg/telegram/ui/Components/UItem;->asFlicker(I)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, Lorg/telegram/ui/Components/UItem;->asFlicker(I)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    const/4 p2, 0x2

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asShadow(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    iget p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/ui/Stars/BotStarsController;->getInstance(I)Lorg/telegram/ui/Stars/BotStarsController;

    move-result-object p2

    iget-wide v4, p0, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;->dialogId:J

    invoke-virtual {p2, v4, v5}, Lorg/telegram/ui/Stars/BotStarsController;->getChannelSuggestedBots(J)Lorg/telegram/ui/Stars/BotStarsController$ChannelSuggestedBots;

    move-result-object p2

    iget-object v1, p2, Lorg/telegram/ui/Stars/BotStarsController$ChannelSuggestedBots;->bots:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    iget v1, p2, Lorg/telegram/ui/Stars/BotStarsController$ChannelSuggestedBots;->count:I

    if-lez v1, :cond_a

    :cond_6
    sget v1, Lorg/telegram/messenger/R$string;->ChannelAffiliateProgramPrograms:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lorg/telegram/ui/Stars/BotStarsController$ChannelSuggestedBots;->getSort()Lorg/telegram/ui/Stars/BotStarsController$ChannelSuggestedBots$Sort;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;->sortText(Lorg/telegram/ui/Stars/BotStarsController$ChannelSuggestedBots$Sort;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v1, v4}, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$HeaderSortCell$Factory;->as(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    iget-object v1, p2, Lorg/telegram/ui/Stars/BotStarsController$ChannelSuggestedBots;->bots:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_7

    iget-object v1, p2, Lorg/telegram/ui/Stars/BotStarsController$ChannelSuggestedBots;->bots:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$BotCell$Factory;->as(Ljava/lang/Object;)Lorg/telegram/ui/Components/UItem;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    iget-boolean v1, p2, Lorg/telegram/ui/Stars/BotStarsController$ChannelSuggestedBots;->endReached:Z

    if-eqz v1, :cond_8

    invoke-virtual {p2}, Lorg/telegram/ui/Stars/BotStarsController$ChannelSuggestedBots;->isLoading()Z

    move-result p2

    if-eqz p2, :cond_9

    :cond_8
    invoke-static {v3}, Lorg/telegram/ui/Components/UItem;->asFlicker(I)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, Lorg/telegram/ui/Components/UItem;->asFlicker(I)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, Lorg/telegram/ui/Components/UItem;->asFlicker(I)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    const/4 p2, 0x3

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asShadow(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    iget-object p2, p0, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;->emptyLayout:Landroid/view/View;

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asCustom(Landroid/view/View;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onFragmentCreate()Z
    .locals 2

    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->channelConnectedBotsUpdate:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->channelSuggestedBotsUpdate:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 2

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->channelConnectedBotsUpdate:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->channelSuggestedBotsUpdate:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lorg/telegram/ui/GradientHeaderActivity;->onPause()V

    iget-object v0, p0, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;->iconTextureView:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->setPaused(Z)V

    iget-object v0, p0, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;->iconTextureView:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->setDialogVisible(Z)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lorg/telegram/ui/GradientHeaderActivity;->onResume()V

    iget-object v0, p0, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;->iconTextureView:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->setPaused(Z)V

    iget-object v0, p0, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;->iconTextureView:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->setDialogVisible(Z)V

    :cond_0
    return-void
.end method
