.class public Lorg/telegram/ui/Components/GroupCallPipAlertView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/voip/VoIPService$StateListener;
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# instance fields
.field avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

.field currentAccount:I

.field cx:F

.field cy:F

.field groupInfoContainer:Landroid/widget/FrameLayout;

.field private invalidateGradient:Z

.field leaveButton:Lorg/telegram/ui/Components/voip/VoIPToggleButton;

.field linearGradient:Landroid/graphics/LinearGradient;

.field muteButton:Lorg/telegram/ui/Components/voip/VoIPToggleButton;

.field muteProgress:F

.field private mutedByAdmin:Z

.field mutedByAdminProgress:F

.field paint:Landroid/graphics/Paint;

.field private position:I

.field rectF:Landroid/graphics/RectF;

.field soundButton:Lorg/telegram/ui/Components/voip/VoIPToggleButton;

.field subtitleView:Landroid/widget/TextView;

.field titleView:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$R8FugTcyvKdXDOrH2w7v5tNdCJg(Lorg/telegram/ui/Components/GroupCallPipAlertView;Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/GroupCallPipAlertView;->lambda$new$2(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kWQe1Uj8kh6vBmp5RRVUohtY070(Lorg/telegram/ui/Components/GroupCallPipAlertView;Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/GroupCallPipAlertView;->lambda$new$1(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kpe7pWk0oJPP0pwIcIkJTUcoVMY(Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/GroupCallPipAlertView;->lambda$new$3(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oQInfJBupbDg1HH3CacNLyheGM0(Lorg/telegram/ui/Components/GroupCallPipAlertView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/GroupCallPipAlertView;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zZauqajqrAHt71u_QpFcOrIgLik(Lorg/telegram/ui/Components/GroupCallPipAlertView;Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/GroupCallPipAlertView;->lambda$new$4(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->rectF:Landroid/graphics/RectF;

    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->paint:Landroid/graphics/Paint;

    iput-boolean v3, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->invalidateGradient:Z

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    move/from16 v2, p2

    iput v2, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->currentAccount:I

    iget-object v2, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->paint:Landroid/graphics/Paint;

    const/16 v4, 0xea

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    new-instance v2, Lorg/telegram/ui/Components/GroupCallPipAlertView$1;

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/Components/GroupCallPipAlertView$1;-><init>(Lorg/telegram/ui/Components/GroupCallPipAlertView;Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->groupInfoContainer:Landroid/widget/FrameLayout;

    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v2, v5, v6, v7, v4}, Landroid/view/View;->setPadding(IIII)V

    new-instance v2, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v4, 0x41b00000    # 22.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    iget-object v2, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->groupInfoContainer:Landroid/widget/FrameLayout;

    iget-object v4, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v5, 0x2c

    const/high16 v6, 0x42300000    # 44.0f

    invoke-static {v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->groupInfoContainer:Landroid/widget/FrameLayout;

    const/high16 v4, 0x40c00000    # 6.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/4 v5, -0x1

    const/16 v7, 0x4c

    invoke-static {v5, v7}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v8

    const/4 v9, 0x0

    invoke-static {v4, v9, v8}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->groupInfoContainer:Landroid/widget/FrameLayout;

    new-instance v4, Lorg/telegram/ui/Components/GroupCallPipAlertView$$ExternalSyntheticLambda0;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Components/GroupCallPipAlertView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/GroupCallPipAlertView;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->titleView:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v4, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->titleView:Landroid/widget/TextView;

    const/high16 v8, 0x41700000    # 15.0f

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v4, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->titleView:Landroid/widget/TextView;

    const/4 v8, 0x2

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v4, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->titleView:Landroid/widget/TextView;

    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v4, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->titleView:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v4, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->titleView:Landroid/widget/TextView;

    const/4 v8, -0x2

    invoke-static {v5, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v2, v4, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->subtitleView:Landroid/widget/TextView;

    const/high16 v10, 0x41400000    # 12.0f

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v4, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->subtitleView:Landroid/widget/TextView;

    const/16 v10, 0x99

    invoke-static {v5, v10}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v10

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v4, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->subtitleView:Landroid/widget/TextView;

    invoke-static {v5, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v2, v4, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->groupInfoContainer:Landroid/widget/FrameLayout;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v10, -0x1

    const/high16 v11, -0x40000000    # -2.0f

    const/16 v12, 0x10

    const/high16 v13, 0x425c0000    # 55.0f

    const/4 v14, 0x0

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v4, v2, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->groupInfoContainer:Landroid/widget/FrameLayout;

    const/16 v15, 0xa

    const/16 v16, 0xa

    const/4 v11, -0x2

    const/4 v12, 0x0

    const/16 v13, 0xa

    const/16 v14, 0xa

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    invoke-direct {v2, v1, v6}, Lorg/telegram/ui/Components/voip/VoIPToggleButton;-><init>(Landroid/content/Context;F)V

    iput-object v2, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->soundButton:Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    const/16 v4, 0xc

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->setTextSize(I)V

    iget-object v2, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->soundButton:Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    new-instance v8, Lorg/telegram/ui/Components/GroupCallPipAlertView$$ExternalSyntheticLambda1;

    invoke-direct {v8, v0, v1}, Lorg/telegram/ui/Components/GroupCallPipAlertView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/GroupCallPipAlertView;Landroid/content/Context;)V

    invoke-virtual {v2, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->soundButton:Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->setCheckable(Z)V

    iget-object v2, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->soundButton:Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    const/16 v3, 0x26

    invoke-static {v5, v3}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v3

    invoke-static {v5, v7}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v5

    invoke-virtual {v2, v3, v5}, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->setBackgroundColor(II)V

    new-instance v2, Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    invoke-direct {v2, v1, v6}, Lorg/telegram/ui/Components/voip/VoIPToggleButton;-><init>(Landroid/content/Context;F)V

    iput-object v2, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->muteButton:Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->setTextSize(I)V

    iget-object v2, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->muteButton:Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    new-instance v3, Lorg/telegram/ui/Components/GroupCallPipAlertView$$ExternalSyntheticLambda2;

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/Components/GroupCallPipAlertView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/GroupCallPipAlertView;Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    invoke-direct {v2, v1, v6}, Lorg/telegram/ui/Components/voip/VoIPToggleButton;-><init>(Landroid/content/Context;F)V

    iput-object v2, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->leaveButton:Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->setTextSize(I)V

    iget-object v10, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->leaveButton:Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    sget v11, Lorg/telegram/messenger/R$drawable;->calls_decline:I

    sget v2, Lorg/telegram/messenger/R$string;->VoipGroupLeave:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v12, -0x1

    const v13, -0x31b5b6

    const v14, 0x3e99999a    # 0.3f

    const/4 v15, 0x0

    invoke-virtual/range {v10 .. v18}, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->setData(IIIFZLjava/lang/String;ZZ)V

    iget-object v2, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->leaveButton:Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    new-instance v3, Lorg/telegram/ui/Components/GroupCallPipAlertView$$ExternalSyntheticLambda3;

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/Components/GroupCallPipAlertView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/GroupCallPipAlertView;Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Lorg/telegram/ui/Components/voip/VoIPButtonsLayout;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Components/voip/VoIPButtonsLayout;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x44

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/voip/VoIPButtonsLayout;->setChildSize(I)V

    invoke-virtual {v2, v9}, Lorg/telegram/ui/Components/voip/VoIPButtonsLayout;->setUseStartPadding(Z)V

    iget-object v3, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->soundButton:Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    const/high16 v4, 0x427c0000    # 63.0f

    invoke-static {v1, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->muteButton:Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    invoke-static {v1, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->leaveButton:Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    invoke-static {v1, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v9}, Landroid/view/View;->setWillNotDraw(Z)V

    const/4 v15, 0x6

    const/16 v16, 0x0

    const/4 v10, -0x1

    const/4 v11, -0x2

    const/4 v12, 0x0

    const/4 v13, 0x6

    const/4 v14, 0x0

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lorg/telegram/ui/LaunchActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "voip_chat"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->getAccount()I

    move-result v0

    const-string v1, "currentAccount"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$1(Landroid/content/Context;Landroid/view/View;)V
    .locals 3

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object p2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_2

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticApiModelOutline25;->m(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    invoke-virtual {p2, v0, p1}, Lorg/telegram/messenger/voip/VoIPService;->toggleSpeakerphoneOrShowRouteSheet(Landroid/content/Context;Z)V

    return-void
.end method

.method private synthetic lambda$new$2(Landroid/content/Context;Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/voip/VoIPService;->mutedByAdmin()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->muteButton:Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->shakeView()V

    :try_start_0
    const-string p2, "vibrator"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    if-eqz p1, :cond_1

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object p1

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/voip/VoIPService;->isMicMute()Z

    move-result p2

    const/4 v0, 0x1

    xor-int/2addr p2, v0

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, v0}, Lorg/telegram/messenger/voip/VoIPService;->setMicMute(ZZZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static synthetic lambda$new$3(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/Components/GroupCallPip;->updateVisibility(Landroid/content/Context;)V

    return-void
.end method

.method private synthetic lambda$new$4(Landroid/content/Context;Landroid/view/View;)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/Components/GroupCallPipAlertView$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/GroupCallPipAlertView$$ExternalSyntheticLambda4;-><init>(Landroid/content/Context;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticApiModelOutline25;->m(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    invoke-static {p2, v0, p1}, Lorg/telegram/ui/GroupCallActivity;->onLeaveClick(Landroid/content/Context;Ljava/lang/Runnable;Z)V

    return-void
.end method

.method private updateButtons(Z)V
    .locals 15

    move-object v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->soundButton:Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    if-eqz v1, :cond_9

    iget-object v1, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->muteButton:Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    if-nez v1, :cond_0

    goto/16 :goto_9

    :cond_0
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v1}, Lorg/telegram/messenger/voip/VoIPService;->isBluetoothOn()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lorg/telegram/messenger/voip/VoIPService;->isSpeakerphoneOn()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    iget-object v4, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->soundButton:Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move/from16 v14, p1

    invoke-virtual {v4, v3, v14}, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->setChecked(ZZ)V

    if-eqz v2, :cond_3

    iget-object v5, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->soundButton:Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    sget v6, Lorg/telegram/messenger/R$drawable;->calls_bluetooth:I

    sget v2, Lorg/telegram/messenger/R$string;->VoipAudioRoutingBluetooth:I

    :goto_1
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v10, 0x1

    const/4 v12, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x0

    const v9, 0x3dcccccd    # 0.1f

    :goto_2
    move/from16 v13, p1

    invoke-virtual/range {v5 .. v13}, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->setData(IIIFZLjava/lang/String;ZZ)V

    goto :goto_3

    :cond_3
    if-eqz v3, :cond_4

    iget-object v5, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->soundButton:Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    sget v6, Lorg/telegram/messenger/R$drawable;->calls_speaker:I

    sget v2, Lorg/telegram/messenger/R$string;->VoipSpeaker:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v10, 0x1

    const/4 v12, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x0

    const v9, 0x3e99999a    # 0.3f

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Lorg/telegram/messenger/voip/VoIPService;->isHeadsetPlugged()Z

    move-result v2

    iget-object v5, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->soundButton:Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    if-eqz v2, :cond_5

    sget v6, Lorg/telegram/messenger/R$drawable;->calls_headphones:I

    sget v2, Lorg/telegram/messenger/R$string;->VoipAudioRoutingHeadset:I

    goto :goto_1

    :cond_5
    sget v6, Lorg/telegram/messenger/R$drawable;->calls_speaker:I

    sget v2, Lorg/telegram/messenger/R$string;->VoipSpeaker:I

    goto :goto_1

    :goto_3
    invoke-virtual {v1}, Lorg/telegram/messenger/voip/VoIPService;->mutedByAdmin()Z

    move-result v2

    const/4 v3, -0x1

    iget-object v5, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->muteButton:Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    sget v6, Lorg/telegram/messenger/R$drawable;->calls_unmute:I

    if-eqz v2, :cond_6

    const/16 v1, 0x4c

    invoke-static {v3, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v8

    sget v1, Lorg/telegram/messenger/R$string;->VoipMutedByAdminShort:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v10, 0x1

    const/4 v12, 0x1

    const/4 v7, -0x1

    const v9, 0x3dcccccd    # 0.1f

    :goto_4
    move/from16 v13, p1

    invoke-virtual/range {v5 .. v13}, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->setData(IIIFZLjava/lang/String;ZZ)V

    goto :goto_8

    :cond_6
    invoke-virtual {v1}, Lorg/telegram/messenger/voip/VoIPService;->isMicMute()Z

    move-result v2

    if-eqz v2, :cond_7

    const v2, 0x3e99999a    # 0.3f

    goto :goto_5

    :cond_7
    const v2, 0x3e19999a    # 0.15f

    :goto_5
    const/high16 v4, 0x437f0000    # 255.0f

    mul-float v2, v2, v4

    float-to-int v2, v2

    invoke-static {v3, v2}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v8

    invoke-virtual {v1}, Lorg/telegram/messenger/voip/VoIPService;->isMicMute()Z

    move-result v2

    if-eqz v2, :cond_8

    sget v2, Lorg/telegram/messenger/R$string;->VoipUnmute:I

    :goto_6
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v11, v2

    goto :goto_7

    :cond_8
    sget v2, Lorg/telegram/messenger/R$string;->VoipMute:I

    goto :goto_6

    :goto_7
    invoke-virtual {v1}, Lorg/telegram/messenger/voip/VoIPService;->isMicMute()Z

    move-result v12

    const/4 v7, -0x1

    const v9, 0x3dcccccd    # 0.1f

    const/4 v10, 0x1

    goto :goto_4

    :goto_8
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_9
    :goto_9
    return-void
.end method

.method private updateMembersCount()V
    .locals 4

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, v0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->getCallState()I

    move-result v1

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->isSwitchingStream()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->subtitleView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/R$string;->VoipGroupConnecting:I

    const-string v2, "VoipGroupConnecting"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->subtitleView:Landroid/widget/TextView;

    iget-object v0, v0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v0, v0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$GroupCall;->rtmp_stream:Z

    if-eqz v2, :cond_2

    const-string v2, "ViewersWatching"

    goto :goto_0

    :cond_2
    const-string v2, "Participants"

    :goto_0
    iget v0, v0, Lorg/telegram/tgnet/TLRPC$GroupCall;->participants_count:I

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    sget p2, Lorg/telegram/messenger/NotificationCenter;->groupCallUpdated:I

    if-ne p1, p2, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/Components/GroupCallPipAlertView;->updateMembersCount()V

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/voip/VoIPService;->mutedByAdmin()Z

    move-result p1

    iget-boolean p2, p0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->mutedByAdmin:Z

    if-eq p1, p2, :cond_0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->mutedByAdmin:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 9

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    iget-object v2, v0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz v2, :cond_f

    new-instance v2, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v2}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->getChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background:[I

    const-wide/16 v5, 0x0

    if-eqz v3, :cond_0

    iget-wide v7, v3, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    goto :goto_0

    :cond_0
    move-wide v7, v5

    :goto_0
    invoke-static {v7, v8}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(J)I

    move-result v7

    aget v4, v4, v7

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background2:[I

    if-eqz v3, :cond_1

    iget-wide v5, v3, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    :cond_1
    invoke-static {v5, v6}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(J)I

    move-result v5

    aget v5, v7, v5

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lorg/telegram/ui/Components/AvatarDrawable;->setColor(II)V

    iget v4, p0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->currentAccount:I

    invoke-virtual {v2, v4, v3}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILorg/telegram/tgnet/TLRPC$Chat;)V

    if-eqz v3, :cond_2

    iget-object v4, p0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    invoke-static {v5}, Lorg/telegram/messenger/ImageLocation;->getForLocal(Lorg/telegram/tgnet/TLRPC$FileLocation;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v5

    const-string v6, "50_50"

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v2, v7}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->isConference()Z

    move-result v2

    const-string v4, " "

    if-eqz v2, :cond_7

    iget-object v2, v0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz v2, :cond_7

    iget-object v2, v2, Lorg/telegram/messenger/ChatObject$Call;->sortedParticipants:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    sget v2, Lorg/telegram/messenger/R$string;->ConferenceChat:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    :goto_1
    iget-object v5, v0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v5, v5, Lorg/telegram/messenger/ChatObject$Call;->sortedParticipants:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x3

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-ge v3, v5, :cond_5

    if-lez v3, :cond_4

    const-string v5, ", "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-object v5, v0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v5, v5, Lorg/telegram/messenger/ChatObject$Call;->sortedParticipants:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v5}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v5

    invoke-static {v5, v6}, Lorg/telegram/messenger/DialogObject;->getShortName(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    iget-object v3, v0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v3, v3, Lorg/telegram/messenger/ChatObject$Call;->sortedParticipants:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v6, :cond_6

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v3, v3, Lorg/telegram/messenger/ChatObject$Call;->sortedParticipants:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v6

    new-array v5, v1, [Ljava/lang/Object;

    const-string v6, "AndOther"

    invoke-static {v6, v3, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_7
    iget-object v2, v0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v2, v2, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$GroupCall;->title:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, v0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v2, v2, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$GroupCall;->title:Ljava/lang/String;

    goto :goto_2

    :cond_8
    if-eqz v3, :cond_9

    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    goto :goto_2

    :cond_9
    const-string v2, ""

    :goto_2
    if-eqz v2, :cond_a

    const-string v3, "\n"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, " +"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    :cond_a
    iget-object v3, p0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->titleView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/GroupCallPipAlertView;->updateMembersCount()V

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/voip/VoIPService;->registerStateListener(Lorg/telegram/messenger/voip/VoIPService$StateListener;)V

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->mutedByAdmin()Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->mutedByAdmin:Z

    :cond_b
    iget-boolean v0, p0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->mutedByAdmin:Z

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v0, :cond_c

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_c
    const/4 v0, 0x0

    :goto_3
    iput v0, p0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->mutedByAdminProgress:F

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->isMicMute()Z

    move-result v0

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->mutedByAdmin:Z

    if-eqz v0, :cond_e

    :cond_d
    const/high16 v2, 0x3f800000    # 1.0f

    :cond_e
    iput v2, p0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->muteProgress:F

    :cond_f
    iget v0, p0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->groupCallUpdated:I

    invoke-virtual {v0, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/GroupCallPipAlertView;->updateButtons(Z)V

    return-void
.end method

.method public onAudioSettingsChanged()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/GroupCallPipAlertView;->updateButtons(Z)V

    return-void
.end method

.method public synthetic onCameraFirstFrameAvailable()V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/messenger/voip/VoIPService$StateListener$-CC;->$default$onCameraFirstFrameAvailable(Lorg/telegram/messenger/voip/VoIPService$StateListener;)V

    return-void
.end method

.method public synthetic onCameraSwitch(Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/messenger/voip/VoIPService$StateListener$-CC;->$default$onCameraSwitch(Lorg/telegram/messenger/voip/VoIPService$StateListener;Z)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/voip/VoIPService;->unregisterStateListener(Lorg/telegram/messenger/voip/VoIPService$StateListener;)V

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->groupCallUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/voip/VoIPService;->isMicMute()Z

    move-result v2

    if-nez v2, :cond_1

    iget-boolean v2, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->mutedByAdmin:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    const v5, 0x3dda740e

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    if-eqz v2, :cond_2

    iget v8, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->muteProgress:F

    cmpl-float v9, v8, v6

    if-eqz v9, :cond_2

    add-float/2addr v8, v5

    iput v8, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->muteProgress:F

    cmpl-float v2, v8, v6

    if-ltz v2, :cond_3

    iput v6, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->muteProgress:F

    goto :goto_2

    :cond_2
    if-nez v2, :cond_4

    iget v2, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->muteProgress:F

    cmpl-float v8, v2, v7

    if-eqz v8, :cond_4

    sub-float/2addr v2, v5

    iput v2, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->muteProgress:F

    cmpg-float v2, v2, v7

    if-gez v2, :cond_3

    iput v7, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->muteProgress:F

    :cond_3
    :goto_2
    iput-boolean v4, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->invalidateGradient:Z

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    :cond_4
    iget-boolean v2, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->mutedByAdmin:Z

    if-eqz v2, :cond_5

    iget v8, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->mutedByAdminProgress:F

    cmpl-float v9, v8, v6

    if-eqz v9, :cond_5

    add-float/2addr v8, v5

    iput v8, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->mutedByAdminProgress:F

    cmpl-float v2, v8, v6

    if-ltz v2, :cond_6

    iput v6, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->mutedByAdminProgress:F

    goto :goto_3

    :cond_5
    if-nez v2, :cond_7

    iget v2, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->mutedByAdminProgress:F

    cmpl-float v8, v2, v7

    if-eqz v8, :cond_7

    sub-float/2addr v2, v5

    iput v2, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->mutedByAdminProgress:F

    cmpg-float v2, v2, v7

    if-gez v2, :cond_6

    iput v7, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->mutedByAdminProgress:F

    :cond_6
    :goto_3
    iput-boolean v4, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->invalidateGradient:Z

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    :cond_7
    iget-boolean v2, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->invalidateGradient:Z

    const/4 v5, 0x2

    if-eqz v2, :cond_b

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_overlayAlertGradientMuted:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_overlayAlertGradientUnmuted:I

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v8

    iget v9, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->muteProgress:F

    sub-float v9, v6, v9

    invoke-static {v2, v8, v9}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v2

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_overlayAlertGradientMuted2:I

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v8

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_overlayAlertGradientUnmuted2:I

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v9

    iget v10, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->muteProgress:F

    sub-float/2addr v6, v10

    invoke-static {v8, v9, v6}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v6

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_overlayAlertMutedByAdmin:I

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v8

    iget v9, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->mutedByAdminProgress:F

    invoke-static {v2, v8, v9}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v2

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_overlayAlertMutedByAdmin2:I

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v8

    iget v9, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->mutedByAdminProgress:F

    invoke-static {v6, v8, v9}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v6

    iput-boolean v3, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->invalidateGradient:Z

    iget v3, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->position:I

    const/high16 v8, 0x40000000    # 2.0f

    const/high16 v9, 0x42700000    # 60.0f

    if-nez v3, :cond_8

    new-instance v3, Landroid/graphics/LinearGradient;

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    neg-int v9, v9

    int-to-float v11, v9

    iget v9, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->cy:F

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getTranslationY()F

    move-result v10

    sub-float v12, v9, v10

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    int-to-float v13, v9

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    int-to-float v9, v9

    div-float v14, v9, v8

    filled-new-array {v2, v6}, [I

    move-result-object v15

    sget-object v17, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/16 v16, 0x0

    move-object v10, v3

    invoke-direct/range {v10 .. v17}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    :goto_4
    iput-object v3, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->linearGradient:Landroid/graphics/LinearGradient;

    goto/16 :goto_5

    :cond_8
    if-ne v3, v4, :cond_9

    new-instance v3, Landroid/graphics/LinearGradient;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    int-to-float v10, v10

    div-float v20, v10, v8

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int/2addr v8, v9

    int-to-float v8, v8

    iget v9, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->cy:F

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getTranslationY()F

    move-result v10

    sub-float v22, v9, v10

    filled-new-array {v6, v2}, [I

    move-result-object v23

    sget-object v25, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/16 v19, 0x0

    const/16 v24, 0x0

    move-object/from16 v18, v3

    move/from16 v21, v8

    invoke-direct/range {v18 .. v25}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    goto :goto_4

    :cond_9
    if-ne v3, v5, :cond_a

    new-instance v3, Landroid/graphics/LinearGradient;

    iget v10, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->cx:F

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getTranslationX()F

    move-result v11

    sub-float/2addr v10, v11

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    neg-int v9, v9

    int-to-float v11, v9

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    int-to-float v9, v9

    div-float v12, v9, v8

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    int-to-float v13, v8

    filled-new-array {v2, v6}, [I

    move-result-object v14

    sget-object v16, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v15, 0x0

    move-object v9, v3

    invoke-direct/range {v9 .. v16}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    goto :goto_4

    :cond_a
    new-instance v3, Landroid/graphics/LinearGradient;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    int-to-float v10, v10

    div-float v18, v10, v8

    iget v8, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->cx:F

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getTranslationX()F

    move-result v10

    sub-float v20, v8, v10

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int/2addr v8, v9

    int-to-float v8, v8

    filled-new-array {v6, v2}, [I

    move-result-object v22

    sget-object v24, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/16 v19, 0x0

    const/16 v23, 0x0

    move-object/from16 v17, v3

    move/from16 v21, v8

    invoke-direct/range {v17 .. v24}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    goto/16 :goto_4

    :cond_b
    :goto_5
    iget-object v2, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->rectF:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v2, v7, v7, v3, v6}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->paint:Landroid/graphics/Paint;

    iget-object v3, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->linearGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v2, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->rectF:Landroid/graphics/RectF;

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    iget-object v9, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v6, v8, v9}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget v2, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->position:I

    if-nez v2, :cond_c

    iget v2, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->cy:F

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getTranslationY()F

    move-result v6

    sub-float/2addr v2, v6

    const/4 v6, 0x0

    goto :goto_6

    :cond_c
    if-ne v2, v4, :cond_d

    iget v2, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->cy:F

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getTranslationY()F

    move-result v6

    sub-float/2addr v2, v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    goto :goto_6

    :cond_d
    if-ne v2, v5, :cond_e

    iget v2, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->cx:F

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getTranslationX()F

    move-result v6

    sub-float v6, v2, v6

    const/4 v2, 0x0

    goto :goto_6

    :cond_e
    iget v2, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->cx:F

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getTranslationX()F

    move-result v6

    sub-float v6, v2, v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    :goto_6
    invoke-virtual {v0, v6}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setPivotY(F)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v8, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->position:I

    const/high16 v9, 0x42340000    # 45.0f

    const/high16 v10, 0x40400000    # 3.0f

    const/high16 v11, 0x41700000    # 15.0f

    if-nez v8, :cond_f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sub-float v4, v6, v4

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    sub-float v5, v2, v5

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v8, v2

    invoke-virtual {v1, v4, v5, v6, v8}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    :goto_7
    int-to-float v4, v4

    invoke-virtual {v1, v4, v7}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v1, v9, v6, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto :goto_9

    :cond_f
    if-ne v8, v4, :cond_10

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sub-float v4, v2, v4

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v6

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v8, v2

    invoke-virtual {v1, v6, v4, v5, v8}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    neg-int v4, v4

    goto :goto_7

    :cond_10
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sub-float v4, v6, v4

    if-ne v8, v5, :cond_11

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    sub-float v5, v2, v5

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v8, v6

    invoke-virtual {v1, v4, v5, v8, v2}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    invoke-virtual {v1, v9, v6, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    :goto_8
    int-to-float v4, v4

    invoke-virtual {v1, v7, v4}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_9

    :cond_11
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v6

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v8, v2

    invoke-virtual {v1, v4, v2, v5, v8}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    invoke-virtual {v1, v9, v6, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    neg-int v4, v4

    goto :goto_8

    :goto_9
    iget-object v4, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->rectF:Landroid/graphics/RectF;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    sub-float v5, v6, v5

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    sub-float v7, v2, v7

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v6, v8

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {v4, v5, v7, v6, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->rectF:Landroid/graphics/RectF;

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    iget-object v5, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v4, v3, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    invoke-super/range {p0 .. p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    const/high16 p1, 0x43660000    # 230.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public synthetic onMediaStateUpdated(II)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/voip/VoIPService$StateListener$-CC;->$default$onMediaStateUpdated(Lorg/telegram/messenger/voip/VoIPService$StateListener;II)V

    return-void
.end method

.method public synthetic onScreenOnChange(Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/messenger/voip/VoIPService$StateListener$-CC;->$default$onScreenOnChange(Lorg/telegram/messenger/voip/VoIPService$StateListener;Z)V

    return-void
.end method

.method public synthetic onSignalBarsCountChanged(I)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/messenger/voip/VoIPService$StateListener$-CC;->$default$onSignalBarsCountChanged(Lorg/telegram/messenger/voip/VoIPService$StateListener;I)V

    return-void
.end method

.method public onStateChanged(I)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/GroupCallPipAlertView;->updateMembersCount()V

    return-void
.end method

.method public synthetic onVideoAvailableChange(Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/messenger/voip/VoIPService$StateListener$-CC;->$default$onVideoAvailableChange(Lorg/telegram/messenger/voip/VoIPService$StateListener;Z)V

    return-void
.end method

.method public setPosition(IFF)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->position:I

    iput p2, p0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->cx:F

    iput p3, p0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->cy:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->invalidateGradient:Z

    return-void
.end method
