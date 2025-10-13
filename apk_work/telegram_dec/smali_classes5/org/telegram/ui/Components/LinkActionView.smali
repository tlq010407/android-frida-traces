.class public Lorg/telegram/ui/Components/LinkActionView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/LinkActionView$AvatarsContainer;,
        Lorg/telegram/ui/Components/LinkActionView$Delegate;
    }
.end annotation


# instance fields
.field private actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

.field private final avatarsContainer:Lorg/telegram/ui/Components/LinkActionView$AvatarsContainer;

.field private canEdit:Z

.field private final copyView:Landroid/widget/TextView;

.field private delegate:Lorg/telegram/ui/Components/LinkActionView$Delegate;

.field fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private final frameLayout:Landroid/widget/FrameLayout;

.field private hideRevokeOption:Z

.field private final isChannel:Z

.field link:Ljava/lang/String;

.field linkView:Landroid/widget/TextView;

.field private loadedInviteLink:Ljava/lang/String;

.field loadingImporters:Z

.field optionsView:Landroid/widget/ImageView;

.field private permanent:Z

.field private final point:[F

.field private qrCodeBottomSheet:Lorg/telegram/ui/Components/QRCodeBottomSheet;

.field private qrText:Ljava/lang/String;

.field private final removeView:Landroid/widget/TextView;

.field private revoked:Z

.field private final shareView:Landroid/widget/TextView;

.field private usersCount:I


# direct methods
.method public static synthetic $r8$lambda$2PGU0DD8nA2SRE5EKtmANisjvwg(Lorg/telegram/ui/Components/LinkActionView;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/LinkActionView;->lambda$new$3(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$FIacZ6b5V67OY1Ry1m2ejWgFtMQ(Lorg/telegram/ui/Components/LinkActionView;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/LinkActionView;->lambda$new$4(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GdmrPsYezW0N6pTedfsmWFk-zr0(Lorg/telegram/ui/Components/LinkActionView;Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/LinkActionView;->lambda$new$0(Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KOeAVDwGNNv8dmN2ueuX1hU9ea8(Lorg/telegram/ui/Components/LinkActionView;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/LinkActionView;->lambda$revokeLink$10(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$MgnzTSxmmx9sc9_0VMNbeY-UsX4(Lorg/telegram/ui/Components/LinkActionView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/LinkActionView;->lambda$new$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Obm-1F2FlYs9ohLUyDmyxFJP3-4(Lorg/telegram/ui/Components/LinkActionView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/LinkActionView;->lambda$new$7(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QcdWEyXT6wW81m7iLwyJM-rSpoQ(Lorg/telegram/ui/Components/LinkActionView;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/LinkActionView;->lambda$new$2(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RZ-tup7YS52wesAVjwmFXDYC_b0(Lorg/telegram/ui/Components/LinkActionView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/LinkActionView;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$U38hC-AYWHlYmwzUK47QeZI11xI(Lorg/telegram/ui/Components/LinkActionView;Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/LinkActionView;->lambda$loadUsers$12(Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fLN7fLrdpFcHrHRygYIdaUZBvQI(Lorg/telegram/ui/Components/LinkActionView;Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/LinkActionView;->lambda$loadUsers$11(Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$j0h5JVt5-CmIj18QiXPnz6lfzOA(Lorg/telegram/ui/Components/LinkActionView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/LinkActionView;->lambda$new$6(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rGVCiWZg2I48E4S4Yu6TvUMISgI(Lorg/telegram/ui/Components/LinkActionView;Landroid/view/KeyEvent;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/LinkActionView;->lambda$new$8(Landroid/view/KeyEvent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xG0rso7ETJjnaZq_8FznJod7t4U(Lorg/telegram/ui/Components/LinkActionView;Landroid/content/Context;Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/LinkActionView;->lambda$new$9(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BottomSheet;JZZ)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p6

    invoke-direct/range {p0 .. p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x1

    iput-boolean v5, v0, Lorg/telegram/ui/Components/LinkActionView;->canEdit:Z

    const/4 v6, 0x2

    new-array v7, v6, [F

    iput-object v7, v0, Lorg/telegram/ui/Components/LinkActionView;->point:[F

    iput-object v2, v0, Lorg/telegram/ui/Components/LinkActionView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iput-boolean v4, v0, Lorg/telegram/ui/Components/LinkActionView;->permanent:Z

    move/from16 v7, p7

    iput-boolean v7, v0, Lorg/telegram/ui/Components/LinkActionView;->isChannel:Z

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v7, Landroid/widget/FrameLayout;

    invoke-direct {v7, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v7, v0, Lorg/telegram/ui/Components/LinkActionView;->frameLayout:Landroid/widget/FrameLayout;

    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v8, v0, Lorg/telegram/ui/Components/LinkActionView;->linkView:Landroid/widget/TextView;

    const/high16 v9, 0x41900000    # 18.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    const/high16 v11, 0x41500000    # 13.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    const/high16 v13, 0x42200000    # 40.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    invoke-virtual {v8, v10, v12, v13, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v8, v0, Lorg/telegram/ui/Components/LinkActionView;->linkView:Landroid/widget/TextView;

    const/high16 v10, 0x41800000    # 16.0f

    invoke-virtual {v8, v5, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v8, v0, Lorg/telegram/ui/Components/LinkActionView;->linkView:Landroid/widget/TextView;

    sget-object v10, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v8, v0, Lorg/telegram/ui/Components/LinkActionView;->linkView:Landroid/widget/TextView;

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v8, v0, Lorg/telegram/ui/Components/LinkActionView;->linkView:Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v8, Landroid/widget/ImageView;

    invoke-direct {v8, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v8, v0, Lorg/telegram/ui/Components/LinkActionView;->optionsView:Landroid/widget/ImageView;

    sget v10, Lorg/telegram/messenger/R$drawable;->ic_ab_other:I

    invoke-static {v1, v10}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v8, v0, Lorg/telegram/ui/Components/LinkActionView;->optionsView:Landroid/widget/ImageView;

    sget v10, Lorg/telegram/messenger/R$string;->AccDescrMoreOptions:I

    invoke-static {v10}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v8, v0, Lorg/telegram/ui/Components/LinkActionView;->optionsView:Landroid/widget/ImageView;

    sget-object v10, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v8, v0, Lorg/telegram/ui/Components/LinkActionView;->optionsView:Landroid/widget/ImageView;

    const/16 v10, 0x30

    const/16 v11, 0x15

    const/16 v12, 0x28

    invoke-static {v12, v10, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v7, v8, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v16, 0x4

    const/16 v17, 0x0

    const/4 v11, -0x1

    const/4 v12, -0x2

    const/4 v13, 0x0

    const/4 v14, 0x4

    const/4 v15, 0x0

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v11, Landroid/widget/TextView;

    invoke-direct {v11, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v11, v0, Lorg/telegram/ui/Components/LinkActionView;->copyView:Landroid/widget/TextView;

    const/16 v12, 0x11

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v13, Landroid/text/SpannableStringBuilder;

    invoke-direct {v13}, Landroid/text/SpannableStringBuilder;-><init>()V

    const-string v14, ".."

    invoke-virtual {v13, v14}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v15

    new-instance v9, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget v12, Lorg/telegram/messenger/R$drawable;->msg_copy_filled:I

    invoke-static {v1, v12}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-direct {v9, v12}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v15, v9, v10, v5, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    new-instance v9, Lorg/telegram/ui/Cells/DialogCell$FixedWidthSpan;

    const/high16 v12, 0x40c00000    # 6.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    invoke-direct {v9, v15}, Lorg/telegram/ui/Cells/DialogCell$FixedWidthSpan;-><init>(I)V

    invoke-virtual {v13, v9, v5, v6, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    sget v9, Lorg/telegram/messenger/R$string;->LinkActionCopy:I

    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const/high16 v9, 0x41000000    # 8.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    invoke-virtual {v11, v13, v10, v15, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    const/high16 v13, 0x41600000    # 14.0f

    invoke-virtual {v11, v5, v13}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v15

    invoke-virtual {v11, v15}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v11, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/16 v22, 0x4

    const/16 v23, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x2a

    const/high16 v18, 0x3f800000    # 1.0f

    const/16 v19, 0x0

    const/16 v20, 0x4

    const/16 v21, 0x0

    invoke-static/range {v16 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v15

    invoke-virtual {v8, v11, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v15, Landroid/widget/TextView;

    invoke-direct {v15, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v15, v0, Lorg/telegram/ui/Components/LinkActionView;->shareView:Landroid/widget/TextView;

    const/16 v13, 0x11

    invoke-virtual {v15, v13}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v13, Landroid/text/SpannableStringBuilder;

    invoke-direct {v13}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-virtual {v13, v14}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v9

    new-instance v6, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget v12, Lorg/telegram/messenger/R$drawable;->msg_share_filled:I

    invoke-static {v1, v12}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-direct {v6, v12}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v9, v6, v10, v5, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    new-instance v6, Lorg/telegram/ui/Cells/DialogCell$FixedWidthSpan;

    const/high16 v9, 0x40c00000    # 6.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-direct {v6, v9}, Lorg/telegram/ui/Cells/DialogCell$FixedWidthSpan;-><init>(I)V

    const/4 v9, 0x2

    invoke-virtual {v13, v6, v5, v9, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    sget v6, Lorg/telegram/messenger/R$string;->LinkActionShare:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v13, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v15, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v6}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const/high16 v6, 0x41000000    # 8.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    invoke-virtual {v15, v9, v10, v12, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    const/high16 v6, 0x41600000    # 14.0f

    invoke-virtual {v15, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v15, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v15, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/16 v23, 0x4

    const/16 v24, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x2a

    const/high16 v20, 0x3f800000    # 1.0f

    const/16 v21, 0x4

    const/16 v22, 0x0

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v8, v15, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/Components/LinkActionView;->removeView:Landroid/widget/TextView;

    const/16 v9, 0x11

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v9, Landroid/text/SpannableStringBuilder;

    invoke-direct {v9}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-virtual {v9, v14}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v12

    new-instance v13, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget v14, Lorg/telegram/messenger/R$drawable;->msg_delete_filled:I

    invoke-static {v1, v14}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-direct {v13, v14}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v12, v13, v10, v5, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    new-instance v12, Lorg/telegram/ui/Cells/DialogCell$FixedWidthSpan;

    const/high16 v13, 0x41000000    # 8.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    invoke-direct {v12, v14}, Lorg/telegram/ui/Cells/DialogCell$FixedWidthSpan;-><init>(I)V

    const/4 v13, 0x2

    invoke-virtual {v9, v12, v5, v13, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    sget v12, Lorg/telegram/messenger/R$string;->DeleteLink:I

    invoke-static {v12}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const-string v12, "."

    invoke-virtual {v9, v12}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v12

    new-instance v13, Lorg/telegram/ui/Cells/DialogCell$FixedWidthSpan;

    const/high16 v14, 0x40a00000    # 5.0f

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    invoke-direct {v13, v14}, Lorg/telegram/ui/Cells/DialogCell$FixedWidthSpan;-><init>(I)V

    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v14

    sub-int/2addr v14, v5

    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    invoke-virtual {v12, v13, v14, v5, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v5, 0x41000000    # 8.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v6, v9, v10, v5, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    const/4 v5, 0x1

    const/high16 v9, 0x41600000    # 14.0f

    invoke-virtual {v6, v5, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/high16 v18, 0x3f800000    # 1.0f

    const/16 v19, 0x4

    const/16 v20, 0x0

    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v8, v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v5, 0x8

    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v16, -0x1

    const/16 v17, -0x2

    const/16 v18, 0x0

    const/high16 v19, 0x41400000    # 12.0f

    invoke-static/range {v16 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v8, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Lorg/telegram/ui/Components/LinkActionView$AvatarsContainer;

    invoke-direct {v5, v0, v1}, Lorg/telegram/ui/Components/LinkActionView$AvatarsContainer;-><init>(Lorg/telegram/ui/Components/LinkActionView;Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/Components/LinkActionView;->avatarsContainer:Lorg/telegram/ui/Components/LinkActionView$AvatarsContainer;

    iget-object v8, v5, Lorg/telegram/ui/Components/LinkActionView$AvatarsContainer;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    const/high16 v9, 0x41900000    # 18.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-virtual {v8, v9}, Lorg/telegram/ui/Components/AvatarsImageView;->setAvatarsTextSize(I)V

    const/16 v17, 0x2c

    invoke-static/range {v16 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v0, v5, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v8, Lorg/telegram/ui/Components/LinkActionView$$ExternalSyntheticLambda0;

    invoke-direct {v8, v0, v3, v2}, Lorg/telegram/ui/Components/LinkActionView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/LinkActionView;Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {v11, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v4, :cond_0

    new-instance v4, Lorg/telegram/ui/Components/LinkActionView$$ExternalSyntheticLambda1;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Components/LinkActionView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/LinkActionView;)V

    invoke-virtual {v5, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    new-instance v4, Lorg/telegram/ui/Components/LinkActionView$$ExternalSyntheticLambda2;

    invoke-direct {v4, v0, v2}, Lorg/telegram/ui/Components/LinkActionView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/LinkActionView;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {v15, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v4, Lorg/telegram/ui/Components/LinkActionView$$ExternalSyntheticLambda3;

    invoke-direct {v4, v0, v2}, Lorg/telegram/ui/Components/LinkActionView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/LinkActionView;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {v6, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, v0, Lorg/telegram/ui/Components/LinkActionView;->optionsView:Landroid/widget/ImageView;

    new-instance v5, Lorg/telegram/ui/Components/LinkActionView$$ExternalSyntheticLambda4;

    invoke-direct {v5, v0, v1, v3, v2}, Lorg/telegram/ui/Components/LinkActionView$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/LinkActionView;Landroid/content/Context;Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lorg/telegram/ui/Components/LinkActionView$5;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/LinkActionView$5;-><init>(Lorg/telegram/ui/Components/LinkActionView;)V

    invoke-virtual {v7, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/LinkActionView;->updateColors()V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/LinkActionView;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/LinkActionView;->copyView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$102(Lorg/telegram/ui/Components/LinkActionView;Lorg/telegram/ui/Components/QRCodeBottomSheet;)Lorg/telegram/ui/Components/QRCodeBottomSheet;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->qrCodeBottomSheet:Lorg/telegram/ui/Components/QRCodeBottomSheet;

    return-object p1
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/LinkActionView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/LinkActionView;->usersCount:I

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/LinkActionView;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/LinkActionView;->frameLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/LinkActionView;)[F
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/LinkActionView;->point:[F

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/LinkActionView;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;[F)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/LinkActionView;->getPointOnScreen(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;[F)V

    return-void
.end method

.method static synthetic access$602(Lorg/telegram/ui/Components/LinkActionView;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    return-object p1
.end method

.method private getPointOnScreen(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;[F)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_0
    if-eq p1, p2, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v2

    add-float/2addr v0, v2

    instance-of v2, p1, Landroid/widget/ScrollView;

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/View;

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    instance-of v2, p1, Landroid/view/ViewGroup;

    if-nez v2, :cond_0

    return-void

    :cond_3
    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr v0, p1

    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr v1, p1

    const/4 p1, 0x0

    aput v0, p3, p1

    const/4 p1, 0x1

    aput v1, p3, p1

    return-void
.end method

.method private synthetic lambda$loadUsers$11(Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/LinkActionView;->loadingImporters:Z

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->link:Ljava/lang/String;

    iput-object v1, p0, Lorg/telegram/ui/Components/LinkActionView;->loadedInviteLink:Ljava/lang/String;

    if-nez p2, :cond_2

    check-cast p3, Lorg/telegram/tgnet/TLRPC$TL_messages_chatInviteImporters;

    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->importers:Ljava/util/ArrayList;

    if-nez p2, :cond_0

    new-instance p2, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {p2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->importers:Ljava/util/ArrayList;

    :cond_0
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->importers:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    :goto_0
    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_chatInviteImporters;->users:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge v0, p2, :cond_1

    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->importers:Ljava/util/ArrayList;

    iget-object v1, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_chatInviteImporters;->users:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget p2, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->usage:I

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->importers:Ljava/util/ArrayList;

    const/4 p3, 0x1

    invoke-virtual {p0, p2, p1, p3}, Lorg/telegram/ui/Components/LinkActionView;->setUsers(ILjava/util/ArrayList;Z)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$loadUsers$12(Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    new-instance v0, Lorg/telegram/ui/Components/LinkActionView$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0, p1, p3, p2}, Lorg/telegram/ui/Components/LinkActionView$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/Components/LinkActionView;Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$0(Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)V
    .locals 2

    :try_start_0
    iget-object p3, p0, Lorg/telegram/ui/Components/LinkActionView;->link:Ljava/lang/String;

    if-nez p3, :cond_0

    return-void

    :cond_0
    sget-object p3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v0, "clipboard"

    invoke-virtual {p3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/ClipboardManager;

    const-string v0, "label"

    iget-object v1, p0, Lorg/telegram/ui/Components/LinkActionView;->link:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getContainer()Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getContainer()Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/Components/BulletinFactory;->createCopyLinkBulletin(Landroid/widget/FrameLayout;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    invoke-static {p2}, Lorg/telegram/ui/Components/BulletinFactory;->createCopyLinkBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->delegate:Lorg/telegram/ui/Components/LinkActionView$Delegate;

    invoke-interface {p1}, Lorg/telegram/ui/Components/LinkActionView$Delegate;->showUsersForPermanentLink()V

    return-void
.end method

.method private synthetic lambda$new$2(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)V
    .locals 9

    :try_start_0
    iget-object p2, p0, Lorg/telegram/ui/Components/LinkActionView;->link:Ljava/lang/String;

    if-nez p2, :cond_0

    return-void

    :cond_0
    new-instance p2, Lorg/telegram/ui/Components/LinkActionView$1;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v6, p0, Lorg/telegram/ui/Components/LinkActionView;->link:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v8

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p2

    move-object v1, p0

    move-object v4, v6

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/Components/LinkActionView$1;-><init>(Lorg/telegram/ui/Components/LinkActionView;Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;ZLjava/lang/String;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$new$3(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->delegate:Lorg/telegram/ui/Components/LinkActionView$Delegate;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/telegram/ui/Components/LinkActionView$Delegate;->removeLink()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$4(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)V
    .locals 2

    new-instance p2, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v0, Lorg/telegram/messenger/R$string;->DeleteLink:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget v0, Lorg/telegram/messenger/R$string;->DeleteLinkHelp:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget v0, Lorg/telegram/messenger/R$string;->Delete:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/LinkActionView$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/LinkActionView$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Components/LinkActionView;)V

    invoke-virtual {p2, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget v0, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private synthetic lambda$new$5(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->delegate:Lorg/telegram/ui/Components/LinkActionView$Delegate;

    invoke-interface {p1}, Lorg/telegram/ui/Components/LinkActionView$Delegate;->editLink()V

    return-void
.end method

.method private synthetic lambda$new$6(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/LinkActionView;->showQrCode()V

    return-void
.end method

.method private synthetic lambda$new$7(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/LinkActionView;->revokeLink()V

    return-void
.end method

.method private synthetic lambda$new$8(Landroid/view/KeyEvent;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$9(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)V
    .locals 7

    iget-object p4, p0, Lorg/telegram/ui/Components/LinkActionView;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz p4, :cond_0

    return-void

    :cond_0
    new-instance p4, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-direct {p4, p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;-><init>(Landroid/content/Context;)V

    iget-boolean v0, p0, Lorg/telegram/ui/Components/LinkActionView;->permanent:Z

    const/16 v1, 0x30

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/LinkActionView;->canEdit:Z

    if-eqz v0, :cond_1

    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-direct {v0, p1, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZ)V

    sget v5, Lorg/telegram/messenger/R$string;->Edit:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/R$drawable;->msg_edit:I

    invoke-virtual {v0, v5, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    invoke-static {v2, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {p4, v0, v5}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    new-instance v5, Lorg/telegram/ui/Components/LinkActionView$$ExternalSyntheticLambda6;

    invoke-direct {v5, p0}, Lorg/telegram/ui/Components/LinkActionView$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/LinkActionView;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-direct {v0, p1, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZ)V

    sget v5, Lorg/telegram/messenger/R$string;->GetQRCode:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/R$drawable;->msg_qrcode:I

    invoke-virtual {v0, v5, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    invoke-static {v2, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {p4, v0, v5}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    new-instance v5, Lorg/telegram/ui/Components/LinkActionView$$ExternalSyntheticLambda7;

    invoke-direct {v5, p0}, Lorg/telegram/ui/Components/LinkActionView$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/LinkActionView;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v0, p0, Lorg/telegram/ui/Components/LinkActionView;->hideRevokeOption:Z

    if-nez v0, :cond_2

    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-direct {v0, p1, v4, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZ)V

    sget v5, Lorg/telegram/messenger/R$string;->RevokeLink:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    invoke-virtual {v0, v5, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-virtual {v0, v6, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setColors(II)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    new-instance v5, Lorg/telegram/ui/Components/LinkActionView$$ExternalSyntheticLambda8;

    invoke-direct {v5, p0}, Lorg/telegram/ui/Components/LinkActionView$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Components/LinkActionView;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {v2, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p4, v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    :cond_2
    if-nez p2, :cond_3

    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p2

    invoke-interface {p2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getOverlayContainerView()Landroid/widget/FrameLayout;

    move-result-object p2

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getContainer()Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    move-result-object p2

    :goto_0
    if-eqz p2, :cond_5

    iget-object p3, p0, Lorg/telegram/ui/Components/LinkActionView;->frameLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->point:[F

    invoke-direct {p0, p3, p2, v0}, Lorg/telegram/ui/Components/LinkActionView;->getPointOnScreen(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;[F)V

    iget-object p3, p0, Lorg/telegram/ui/Components/LinkActionView;->point:[F

    aget p3, p3, v3

    new-instance v0, Lorg/telegram/ui/Components/LinkActionView$2;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/Components/LinkActionView$2;-><init>(Lorg/telegram/ui/Components/LinkActionView;Landroid/content/Context;Landroid/widget/FrameLayout;)V

    new-instance p1, Lorg/telegram/ui/Components/LinkActionView$3;

    invoke-direct {p1, p0, v0}, Lorg/telegram/ui/Components/LinkActionView$3;-><init>(Lorg/telegram/ui/Components/LinkActionView;Landroid/view/View;)V

    invoke-virtual {p2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/high16 v1, -0x40800000    # -1.0f

    invoke-static {v2, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v2, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v5, 0x96

    invoke-virtual {v2, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-static {v5, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {p4, v2, v5}, Landroid/view/View;->measure(II)V

    new-instance v2, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/4 v5, -0x2

    invoke-direct {v2, p4, v5, v5}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v2, p0, Lorg/telegram/ui/Components/LinkActionView;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    new-instance v5, Lorg/telegram/ui/Components/LinkActionView$4;

    invoke-direct {v5, p0, v0, p2, p1}, Lorg/telegram/ui/Components/LinkActionView$4;-><init>(Lorg/telegram/ui/Components/LinkActionView;Landroid/view/View;Landroid/widget/FrameLayout;Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    sget v0, Lorg/telegram/messenger/R$style;->PopupContextAnimation:I

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1, v4}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    new-instance p1, Lorg/telegram/ui/Components/LinkActionView$$ExternalSyntheticLambda9;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/LinkActionView$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Components/LinkActionView;)V

    invoke-virtual {p4, p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setDispatchKeyEventListener(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$OnDispatchKeyEventListener;)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr p3, p1

    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr v1, p1

    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    sub-int/2addr v0, p4

    const/high16 p4, 0x41800000    # 16.0f

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    sub-int/2addr v0, p4

    int-to-float p4, v0

    invoke-virtual {p2}, Landroid/view/View;->getX()F

    move-result v0

    add-float/2addr p4, v0

    add-float/2addr p4, v1

    float-to-int p4, p4

    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p3, v0

    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result v0

    add-float/2addr p3, v0

    float-to-int p3, p3

    invoke-virtual {p1, p2, v4, p4, p3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->showAtLocation(Landroid/view/View;III)V

    :cond_5
    return-void
.end method

.method private synthetic lambda$revokeLink$10(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->delegate:Lorg/telegram/ui/Components/LinkActionView$Delegate;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/telegram/ui/Components/LinkActionView$Delegate;->revokeLink()V

    :cond_0
    return-void
.end method

.method private revokeLink()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v1, p0, Lorg/telegram/ui/Components/LinkActionView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lorg/telegram/messenger/R$string;->RevokeLink:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget v1, Lorg/telegram/messenger/R$string;->RevokeAlert:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget v1, Lorg/telegram/messenger/R$string;->RevokeButton:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/LinkActionView$$ExternalSyntheticLambda11;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/LinkActionView$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Components/LinkActionView;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget v1, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void
.end method

.method private showQrCode()V
    .locals 8

    new-instance v7, Lorg/telegram/ui/Components/LinkActionView$6;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v0, Lorg/telegram/messenger/R$string;->InviteByQRCode:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/Components/LinkActionView;->link:Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->qrText:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/LinkActionView;->isChannel:Z

    if-eqz v0, :cond_1

    sget v0, Lorg/telegram/messenger/R$string;->QRCodeLinkHelpChannel:I

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    move-object v5, v0

    goto :goto_1

    :cond_1
    sget v0, Lorg/telegram/messenger/R$string;->QRCodeLinkHelpGroup:I

    goto :goto_0

    :goto_1
    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/LinkActionView$6;-><init>(Lorg/telegram/ui/Components/LinkActionView;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v7, p0, Lorg/telegram/ui/Components/LinkActionView;->qrCodeBottomSheet:Lorg/telegram/ui/Components/QRCodeBottomSheet;

    sget v0, Lorg/telegram/messenger/R$raw;->qr_code_logo:I

    invoke-virtual {v7, v0}, Lorg/telegram/ui/Components/QRCodeBottomSheet;->setCenterAnimation(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->qrCodeBottomSheet:Lorg/telegram/ui/Components/QRCodeBottomSheet;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    :cond_2
    return-void
.end method


# virtual methods
.method public hideOptions()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->optionsView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->linkView:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->removeView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->avatarsContainer:Lorg/telegram/ui/Components/LinkActionView$AvatarsContainer;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public hideRevokeOption(Z)V
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/LinkActionView;->hideRevokeOption:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/LinkActionView;->hideRevokeOption:Z

    iget-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->optionsView:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->optionsView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_other:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public loadUsers(Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;J)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1, v0}, Lorg/telegram/ui/Components/LinkActionView;->setUsers(ILjava/util/ArrayList;Z)V

    return-void

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/LinkActionView;->loadedInviteLink:Ljava/lang/String;

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->link:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->usage:I

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->importers:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, v2, v0}, Lorg/telegram/ui/Components/LinkActionView;->setUsers(ILjava/util/ArrayList;Z)V

    iget v0, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->usage:I

    if-lez v0, :cond_2

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->importers:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/LinkActionView;->loadingImporters:Z

    if-nez v0, :cond_2

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getChatInviteImporters;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_getChatInviteImporters;-><init>()V

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->link:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getChatInviteImporters;->flags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getChatInviteImporters;->flags:I

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getChatInviteImporters;->link:Ljava/lang/String;

    :cond_1
    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    neg-long p2, p2

    invoke-virtual {v1, p2, p3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p2

    iput-object p2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getChatInviteImporters;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_inputUserEmpty;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_inputUserEmpty;-><init>()V

    iput-object p2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getChatInviteImporters;->offset_user:Lorg/telegram/tgnet/TLRPC$InputUser;

    iget p2, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->usage:I

    const/4 p3, 0x3

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getChatInviteImporters;->limit:I

    const/4 p2, 0x1

    iput-boolean p2, p0, Lorg/telegram/ui/Components/LinkActionView;->loadingImporters:Z

    sget p2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance p3, Lorg/telegram/ui/Components/LinkActionView$$ExternalSyntheticLambda5;

    invoke-direct {p3, p0, p1}, Lorg/telegram/ui/Components/LinkActionView$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/LinkActionView;Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;)V

    invoke-virtual {p2, v0, p3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_2
    return-void
.end method

.method public setCanEdit(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/LinkActionView;->canEdit:Z

    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Components/LinkActionView$Delegate;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->delegate:Lorg/telegram/ui/Components/LinkActionView$Delegate;

    return-void
.end method

.method public setLink(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->link:Ljava/lang/String;

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->linkView:Landroid/widget/TextView;

    sget v0, Lorg/telegram/messenger/R$string;->Loading:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_0
    const-string v0, "https://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->linkView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->linkView:Landroid/widget/TextView;

    goto :goto_0

    :goto_1
    return-void
.end method

.method public setPermanent(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/LinkActionView;->permanent:Z

    return-void
.end method

.method public setQrText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->qrText:Ljava/lang/String;

    return-void
.end method

.method public setRevoke(Z)V
    .locals 2

    iput-boolean p1, p0, Lorg/telegram/ui/Components/LinkActionView;->revoked:Z

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->optionsView:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->shareView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->copyView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->removeView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->optionsView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->shareView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->copyView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->removeView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setUsers(ILjava/util/ArrayList;)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/ui/Components/LinkActionView;->setUsers(ILjava/util/ArrayList;Z)V

    return-void
.end method

.method public setUsers(ILjava/util/ArrayList;Z)V
    .locals 5

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/LinkActionView;->usersCount:I

    const/high16 v0, 0x41900000    # 18.0f

    const/high16 v1, 0x41980000    # 19.0f

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/telegram/ui/Components/LinkActionView;->avatarsContainer:Lorg/telegram/ui/Components/LinkActionView$AvatarsContainer;

    if-nez p1, :cond_0

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {p0, v3, v4, v1, v0}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    :cond_0
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {p0, v3, v0, v1, v4}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->avatarsContainer:Lorg/telegram/ui/Components/LinkActionView$AvatarsContainer;

    iget-object v0, v0, Lorg/telegram/ui/Components/LinkActionView$AvatarsContainer;->countTextView:Landroid/widget/TextView;

    new-array v1, v2, [Ljava/lang/Object;

    const-string v3, "PeopleJoined"

    invoke-static {v3, p1, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->avatarsContainer:Lorg/telegram/ui/Components/LinkActionView$AvatarsContainer;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :goto_0
    if-eqz p2, :cond_2

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v1, v3, v2}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x3

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->avatarsContainer:Lorg/telegram/ui/Components/LinkActionView$AvatarsContainer;

    iget-object v0, v0, Lorg/telegram/ui/Components/LinkActionView$AvatarsContainer;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AvatarsImageView;->setCount(I)V

    :goto_2
    if-ge v2, p1, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->avatarsContainer:Lorg/telegram/ui/Components/LinkActionView$AvatarsContainer;

    iget-object v0, v0, Lorg/telegram/ui/Components/LinkActionView$AvatarsContainer;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLObject;

    invoke-virtual {v0, v2, v1, v3}, Lorg/telegram/ui/Components/AvatarsImageView;->setObject(IILorg/telegram/tgnet/TLObject;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->avatarsContainer:Lorg/telegram/ui/Components/LinkActionView$AvatarsContainer;

    iget-object p1, p1, Lorg/telegram/ui/Components/LinkActionView$AvatarsContainer;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/AvatarsImageView;->setCount(I)V

    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/LinkActionView;->avatarsContainer:Lorg/telegram/ui/Components/LinkActionView$AvatarsContainer;

    iget-object p1, p1, Lorg/telegram/ui/Components/LinkActionView$AvatarsContainer;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/AvatarsImageView;->commitTransition(Z)V

    return-void
.end method

.method public showBulletin(ILjava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-static {v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    const/4 p2, 0x0

    iput-boolean p2, p1, Lorg/telegram/ui/Components/Bulletin;->hideAfterBottomSheet:Z

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Bulletin;->show(Z)Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method public updateColors()V
    .locals 7

    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->copyView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_buttonText:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->shareView:Landroid/widget/TextView;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->removeView:Landroid/widget/TextView;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->copyView:Landroid/widget/TextView;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButtonPressed:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    invoke-static {v2, v4, v6}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->shareView:Landroid/widget/TextView;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->removeView:Landroid/widget/TextView;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachAudioBackground:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    const/16 v5, 0x78

    invoke-static {v4, v5}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v4

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->frameLayout:Landroid/widget/FrameLayout;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_graySection:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    const/16 v4, 0x4c

    invoke-static {v3, v4}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v3

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->linkView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->optionsView:Landroid/widget/ImageView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextGray3:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->avatarsContainer:Lorg/telegram/ui/Components/LinkActionView$AvatarsContainer;

    iget-object v0, v0, Lorg/telegram/ui/Components/LinkActionView$AvatarsContainer;->countTextView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->avatarsContainer:Lorg/telegram/ui/Components/LinkActionView$AvatarsContainer;

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-static {v1, v4}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView;->qrCodeBottomSheet:Lorg/telegram/ui/Components/QRCodeBottomSheet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/QRCodeBottomSheet;->updateColors()V

    :cond_0
    return-void
.end method
