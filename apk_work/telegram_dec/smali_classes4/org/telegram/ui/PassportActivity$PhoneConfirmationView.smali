.class public Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;
.super Lorg/telegram/ui/Components/SlideView;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/PassportActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PhoneConfirmationView"
.end annotation


# instance fields
.field private blackImageView:Landroid/widget/ImageView;

.field private blueImageView:Landroid/widget/ImageView;

.field private codeField:[Lorg/telegram/ui/Components/EditTextBoldCursor;

.field private codeFieldContainer:Landroid/widget/LinearLayout;

.field private codeTime:I

.field private codeTimer:Ljava/util/Timer;

.field private confirmTextView:Landroid/widget/TextView;

.field private currentParams:Landroid/os/Bundle;

.field private ignoreOnTextChange:Z

.field private lastCodeTime:D

.field private lastCurrentTime:D

.field private lastError:Ljava/lang/String;

.field private length:I

.field private nextPressed:Z

.field private nextType:I

.field private pattern:Ljava/lang/String;

.field private phone:Ljava/lang/String;

.field private phoneHash:Ljava/lang/String;

.field private problemText:Landroid/widget/TextView;

.field private progressView:Lorg/telegram/ui/PassportActivity$ProgressView;

.field final synthetic this$0:Lorg/telegram/ui/PassportActivity;

.field private time:I

.field private timeText:Landroid/widget/TextView;

.field private timeTimer:Ljava/util/Timer;

.field private timeout:I

.field private final timerSync:Ljava/lang/Object;

.field private titleTextView:Landroid/widget/TextView;

.field private verificationType:I

.field private waitingForEvent:Z


# direct methods
.method public static synthetic $r8$lambda$0GndYJ-yYFGo8E2KmIOTA_ILeNo(Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/tl/TL_account$verifyPhone;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->lambda$onNextPressed$6(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/tl/TL_account$verifyPhone;)V

    return-void
.end method

.method public static synthetic $r8$lambda$0aNdxWbwjMCYMe3F5NwvqLG63y8(Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->lambda$setParams$5(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$5PvHzHnQpFk7W98qk0cpA4PAyUM(Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->lambda$resendCode$1(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$J2UHHzqdoZlW_PZ0U3qBtLfUwvQ(Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;ILandroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->lambda$setParams$4(ILandroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$OtZbL3pMIsdVMuXFRgkqJfCfHFE(Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;Lorg/telegram/tgnet/tl/TL_account$verifyPhone;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->lambda$onNextPressed$7(Lorg/telegram/tgnet/tl/TL_account$verifyPhone;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RZ_jBQmf1ECDh60XdNydqyVy5pM(Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->lambda$resendCode$3(Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RhiVe6euPle_BdhJty4Lkq2WKyU(Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;Lorg/telegram/tgnet/TLRPC$TL_error;Landroid/os/Bundle;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->lambda$resendCode$2(Lorg/telegram/tgnet/TLRPC$TL_error;Landroid/os/Bundle;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Yl8nc1rFr779tNbf-8jJyD3qH80(Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->lambda$onBackPressed$8(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$mNLGj_ZSSCgQ8GzzAPD9zg820oo(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->lambda$onBackPressed$9(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nxhTgmgFCRvSxXdZzI5tJYwBDsQ(Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/PassportActivity;Landroid/content/Context;I)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iput-object v1, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/SlideView;-><init>(Landroid/content/Context;)V

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->timerSync:Ljava/lang/Object;

    const v3, 0xea60

    iput v3, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->time:I

    const/16 v3, 0x3a98

    iput v3, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->codeTime:I

    const-string v3, ""

    iput-object v3, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->lastError:Ljava/lang/String;

    const-string v3, "*"

    iput-object v3, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->pattern:Ljava/lang/String;

    move/from16 v3, p3

    iput v3, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->verificationType:I

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->confirmTextView:Landroid/widget/TextView;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText6:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v4, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->confirmTextView:Landroid/widget/TextView;

    const/high16 v6, 0x41600000    # 14.0f

    invoke-virtual {v4, v3, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v4, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->confirmTextView:Landroid/widget/TextView;

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v4, v8, v9}, Landroid/widget/TextView;->setLineSpacing(FF)V

    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->titleTextView:Landroid/widget/TextView;

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v10

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v4, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->titleTextView:Landroid/widget/TextView;

    const/high16 v10, 0x41900000    # 18.0f

    invoke-virtual {v4, v3, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v4, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->titleTextView:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v4, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->titleTextView:Landroid/widget/TextView;

    sget-boolean v10, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v12, 0x3

    if-eqz v10, :cond_0

    const/4 v10, 0x5

    goto :goto_0

    :cond_0
    const/4 v10, 0x3

    :goto_0
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v4, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->titleTextView:Landroid/widget/TextView;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v4, v10, v9}, Landroid/widget/TextView;->setLineSpacing(FF)V

    iget-object v4, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->titleTextView:Landroid/widget/TextView;

    const/16 v10, 0x31

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setGravity(I)V

    iget v4, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->verificationType:I

    const/4 v13, -0x2

    if-ne v4, v12, :cond_6

    iget-object v4, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->confirmTextView:Landroid/widget/TextView;

    sget-boolean v8, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v8, :cond_1

    const/4 v8, 0x5

    goto :goto_1

    :cond_1
    const/4 v8, 0x3

    :goto_1
    or-int/lit8 v8, v8, 0x30

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    sget-boolean v8, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v8, :cond_2

    const/4 v8, 0x5

    goto :goto_2

    :cond_2
    const/4 v8, 0x3

    :goto_2
    invoke-static {v13, v13, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v0, v4, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v8, Landroid/widget/ImageView;

    invoke-direct {v8, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget v14, Lorg/telegram/messenger/R$drawable;->phone_activate:I

    invoke-virtual {v8, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    sget-boolean v14, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v14, :cond_4

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v15, 0x40

    const/high16 v16, 0x42980000    # 76.0f

    const/16 v17, 0x13

    const/high16 v18, 0x40000000    # 2.0f

    const/high16 v19, 0x40000000    # 2.0f

    invoke-static/range {v15 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v4, v8, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v8, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->confirmTextView:Landroid/widget/TextView;

    sget-boolean v14, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v14, :cond_3

    const/16 v17, 0x5

    goto :goto_3

    :cond_3
    const/16 v17, 0x3

    :goto_3
    const/16 v20, 0x0

    const/16 v21, 0x0

    const/4 v15, -0x1

    const/high16 v16, -0x40000000    # -2.0f

    const/high16 v18, 0x42a40000    # 82.0f

    const/16 v19, 0x0

    invoke-static/range {v15 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v14

    :goto_4
    invoke-virtual {v4, v8, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_8

    :cond_4
    iget-object v15, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->confirmTextView:Landroid/widget/TextView;

    if-eqz v14, :cond_5

    const/16 v18, 0x5

    goto :goto_5

    :cond_5
    const/16 v18, 0x3

    :goto_5
    const/high16 v21, 0x42a40000    # 82.0f

    const/16 v22, 0x0

    const/16 v16, -0x1

    const/high16 v17, -0x40000000    # -2.0f

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v4, v15, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v21, 0x0

    const/high16 v22, 0x40000000    # 2.0f

    const/16 v16, 0x40

    const/high16 v17, 0x42980000    # 76.0f

    const/16 v18, 0x15

    const/high16 v20, 0x40000000    # 2.0f

    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v14

    goto :goto_4

    :cond_6
    iget-object v4, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->confirmTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-static {v13, v13, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v0, v4, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget v14, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->verificationType:I

    if-ne v14, v3, :cond_7

    new-instance v14, Landroid/widget/ImageView;

    invoke-direct {v14, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v14, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->blackImageView:Landroid/widget/ImageView;

    sget v15, Lorg/telegram/messenger/R$drawable;->sms_devices:I

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v14, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->blackImageView:Landroid/widget/ImageView;

    new-instance v15, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v8

    sget-object v11, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v15, v8, v11}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v8, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->blackImageView:Landroid/widget/ImageView;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/4 v14, -0x2

    const/high16 v15, -0x40000000    # -2.0f

    const/16 v16, 0x33

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v14 .. v20}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v4, v8, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v8, Landroid/widget/ImageView;

    invoke-direct {v8, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v8, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->blueImageView:Landroid/widget/ImageView;

    sget v14, Lorg/telegram/messenger/R$drawable;->sms_bubble:I

    invoke-virtual {v8, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v8, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->blueImageView:Landroid/widget/ImageView;

    new-instance v14, Landroid/graphics/PorterDuffColorFilter;

    sget v15, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionBackground:I

    invoke-static {v15}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v15

    invoke-direct {v14, v15, v11}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v8, v14}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v8, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->blueImageView:Landroid/widget/ImageView;

    const/4 v14, -0x2

    const/high16 v15, -0x40000000    # -2.0f

    invoke-static/range {v14 .. v20}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v4, v8, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->titleTextView:Landroid/widget/TextView;

    sget v8, Lorg/telegram/messenger/R$string;->SentAppCodeTitle:I

    :goto_6
    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    :cond_7
    new-instance v8, Landroid/widget/ImageView;

    invoke-direct {v8, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v8, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->blueImageView:Landroid/widget/ImageView;

    sget v11, Lorg/telegram/messenger/R$drawable;->sms_code:I

    invoke-virtual {v8, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v8, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->blueImageView:Landroid/widget/ImageView;

    new-instance v11, Landroid/graphics/PorterDuffColorFilter;

    sget v14, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionBackground:I

    invoke-static {v14}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v14

    sget-object v15, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v11, v14, v15}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v8, v11}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v8, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->blueImageView:Landroid/widget/ImageView;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/4 v14, -0x2

    const/high16 v15, -0x40000000    # -2.0f

    const/16 v16, 0x33

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v14 .. v20}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v4, v8, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->titleTextView:Landroid/widget/TextView;

    sget v8, Lorg/telegram/messenger/R$string;->SentSmsCodeTitle:I

    goto :goto_6

    :goto_7
    iget-object v4, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->titleTextView:Landroid/widget/TextView;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/4 v14, -0x2

    const/4 v15, -0x2

    const/16 v16, 0x31

    const/16 v17, 0x0

    const/16 v18, 0x12

    invoke-static/range {v14 .. v20}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v0, v4, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->confirmTextView:Landroid/widget/TextView;

    const/16 v18, 0x11

    invoke-static/range {v14 .. v20}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v0, v4, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_8
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->codeFieldContainer:Landroid/widget/LinearLayout;

    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v4, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->codeFieldContainer:Landroid/widget/LinearLayout;

    const/16 v11, 0x24

    invoke-static {v13, v11, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v0, v4, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget v4, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->verificationType:I

    if-ne v4, v12, :cond_8

    iget-object v4, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->codeFieldContainer:Landroid/widget/LinearLayout;

    const/16 v11, 0x8

    invoke-virtual {v4, v11}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    new-instance v4, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView$1;

    invoke-direct {v4, v0, v2, v1}, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView$1;-><init>(Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;Landroid/content/Context;Lorg/telegram/ui/PassportActivity;)V

    iput-object v4, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->timeText:Landroid/widget/TextView;

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v4, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->timeText:Landroid/widget/TextView;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v5, v9}, Landroid/widget/TextView;->setLineSpacing(FF)V

    iget v4, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->verificationType:I

    const/high16 v5, 0x41700000    # 15.0f

    const/high16 v11, 0x41200000    # 10.0f

    if-ne v4, v12, :cond_b

    iget-object v4, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->timeText:Landroid/widget/TextView;

    invoke-virtual {v4, v3, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v4, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->timeText:Landroid/widget/TextView;

    sget-boolean v6, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v6, :cond_9

    const/4 v6, 0x5

    goto :goto_9

    :cond_9
    const/4 v6, 0x3

    :goto_9
    invoke-static {v13, v13, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Lorg/telegram/ui/PassportActivity$ProgressView;

    invoke-direct {v4, v2}, Lorg/telegram/ui/PassportActivity$ProgressView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->progressView:Lorg/telegram/ui/PassportActivity$ProgressView;

    iget-object v4, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->timeText:Landroid/widget/TextView;

    sget-boolean v6, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v6, :cond_a

    const/4 v12, 0x5

    :cond_a
    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v4, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->progressView:Lorg/telegram/ui/PassportActivity$ProgressView;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x3

    const/16 v16, 0x0

    const/high16 v17, 0x41400000    # 12.0f

    invoke-static/range {v14 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    :goto_a
    invoke-virtual {v0, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_b

    :cond_b
    iget-object v4, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->timeText:Landroid/widget/TextView;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    invoke-virtual {v4, v8, v6, v8, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v4, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->timeText:Landroid/widget/TextView;

    invoke-virtual {v4, v3, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v4, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->timeText:Landroid/widget/TextView;

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v4, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->timeText:Landroid/widget/TextView;

    invoke-static {v13, v13, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    goto :goto_a

    :goto_b
    new-instance v4, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView$2;

    invoke-direct {v4, v0, v2, v1}, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView$2;-><init>(Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;Landroid/content/Context;Lorg/telegram/ui/PassportActivity;)V

    iput-object v4, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->problemText:Landroid/widget/TextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText4:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->problemText:Landroid/widget/TextView;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2, v9}, Landroid/widget/TextView;->setLineSpacing(FF)V

    iget-object v1, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->problemText:Landroid/widget/TextView;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v1, v8, v2, v8, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v1, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->problemText:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->problemText:Landroid/widget/TextView;

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setGravity(I)V

    iget v1, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->verificationType:I

    if-ne v1, v3, :cond_c

    iget-object v1, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->problemText:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->DidNotGetTheCodeSms:I

    :goto_c
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d

    :cond_c
    iget-object v1, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->problemText:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->DidNotGetTheCode:I

    goto :goto_c

    :goto_d
    iget-object v1, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->problemText:Landroid/widget/TextView;

    invoke-static {v13, v13, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->problemText:Landroid/widget/TextView;

    new-instance v2, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$10000(Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->problemText:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$10100(Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->timeText:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$10200(Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->destroyCodeTimer()V

    return-void
.end method

.method static synthetic access$10300(Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;)Ljava/util/Timer;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->timeTimer:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic access$10400(Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;)D
    .locals 2

    iget-wide v0, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->lastCurrentTime:D

    return-wide v0
.end method

.method static synthetic access$10402(Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;D)D
    .locals 0

    iput-wide p1, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->lastCurrentTime:D

    return-wide p1
.end method

.method static synthetic access$10500(Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->time:I

    return p0
.end method

.method static synthetic access$10526(Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;D)I
    .locals 2

    iget v0, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->time:I

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v0, p1

    double-to-int p1, v0

    iput p1, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->time:I

    return p1
.end method

.method static synthetic access$10600(Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->nextType:I

    return p0
.end method

.method static synthetic access$10700(Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;)Lorg/telegram/ui/PassportActivity$ProgressView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->progressView:Lorg/telegram/ui/PassportActivity$ProgressView;

    return-object p0
.end method

.method static synthetic access$10800(Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->timeout:I

    return p0
.end method

.method static synthetic access$10900(Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->destroyTimer()V

    return-void
.end method

.method static synthetic access$11000(Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->verificationType:I

    return p0
.end method

.method static synthetic access$11102(Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->waitingForEvent:Z

    return p1
.end method

.method static synthetic access$11200(Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->resendCode()V

    return-void
.end method

.method static synthetic access$11300(Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->createCodeTimer()V

    return-void
.end method

.method static synthetic access$11400(Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->phone:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$11500(Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->phoneHash:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$11702(Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->lastError:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$9400(Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->ignoreOnTextChange:Z

    return p0
.end method

.method static synthetic access$9402(Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->ignoreOnTextChange:Z

    return p1
.end method

.method static synthetic access$9500(Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->length:I

    return p0
.end method

.method static synthetic access$9600(Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;)[Lorg/telegram/ui/Components/EditTextBoldCursor;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->codeField:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    return-object p0
.end method

.method static synthetic access$9700(Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->getCode()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$9800(Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;)D
    .locals 2

    iget-wide v0, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->lastCodeTime:D

    return-wide v0
.end method

.method static synthetic access$9802(Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;D)D
    .locals 0

    iput-wide p1, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->lastCodeTime:D

    return-wide p1
.end method

.method static synthetic access$9900(Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->codeTime:I

    return p0
.end method

.method static synthetic access$9926(Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;D)I
    .locals 2

    iget v0, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->codeTime:I

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v0, p1

    double-to-int p1, v0

    iput p1, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->codeTime:I

    return p1
.end method

.method private createCodeTimer()V
    .locals 8

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->codeTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x3a98

    iput v0, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->codeTime:I

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->codeTimer:Ljava/util/Timer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-double v0, v0

    iput-wide v0, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->lastCodeTime:D

    iget-object v2, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->codeTimer:Ljava/util/Timer;

    new-instance v3, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView$4;

    invoke-direct {v3, p0}, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView$4;-><init>(Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;)V

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x3e8

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method private createTimer()V
    .locals 7

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->timeTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->timeTimer:Ljava/util/Timer;

    new-instance v2, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView$5;

    invoke-direct {v2, p0}, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView$5;-><init>(Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;)V

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x3e8

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method private destroyCodeTimer()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->timerSync:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->codeTimer:Ljava/util/Timer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->codeTimer:Ljava/util/Timer;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method private destroyTimer()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->timerSync:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->timeTimer:Ljava/util/Timer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->timeTimer:Ljava/util/Timer;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method private getCode()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->codeField:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->codeField:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/PhoneFormat/PhoneFormat;->stripExceptNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 5

    const/4 p1, 0x0

    const/4 v0, 0x2

    iget-boolean v1, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->nextPressed:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->nextType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    iget v2, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->verificationType:I

    if-eq v2, v0, :cond_2

    :cond_1
    if-nez v1, :cond_3

    :cond_2
    :try_start_0
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%s (%d)"

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v4, v0, p1

    const/4 p1, 0x1

    aput-object v1, v0, p1

    invoke-static {v2, v3, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "mailto:"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.EMAIL"

    const-string v2, "sms@telegram.org"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.SUBJECT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Android registration/login issue "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->phone:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.TEXT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Phone: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->phone:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\nApp version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\nOS version: SDK "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\nDevice Name: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\nLocale: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\nError: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->lastError:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "Send email..."

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object p1, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->this$0:Lorg/telegram/ui/PassportActivity;

    sget v0, Lorg/telegram/messenger/R$string;->NoMailInstalled:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->resendCode()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onBackPressed$8(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 2

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->onBackPressed(Z)Z

    iget-object p2, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->this$0:Lorg/telegram/ui/PassportActivity;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Lorg/telegram/ui/PassportActivity;->setPage(IZLandroid/os/Bundle;)V

    return-void
.end method

.method private static synthetic lambda$onBackPressed$9(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    return-void
.end method

.method private synthetic lambda$onNextPressed$6(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/tl/TL_account$verifyPhone;)V
    .locals 13

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/PassportActivity;->needHideProgress()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->nextPressed:Z

    if-nez p1, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->destroyTimer()V

    invoke-direct {p0}, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->destroyCodeTimer()V

    iget-object p1, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {p1}, Lorg/telegram/ui/PassportActivity;->access$4200(Lorg/telegram/ui/PassportActivity;)Lorg/telegram/ui/PassportActivity$PassportActivityDelegate;

    move-result-object v0

    iget-object p1, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {p1}, Lorg/telegram/ui/PassportActivity;->access$3200(Lorg/telegram/ui/PassportActivity;)Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;

    move-result-object v1

    iget-object p1, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {p1}, Lorg/telegram/ui/PassportActivity;->access$3100(Lorg/telegram/ui/PassportActivity;)Ljava/util/HashMap;

    move-result-object p1

    const-string p2, "phone"

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    iget-object p1, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->this$0:Lorg/telegram/ui/PassportActivity;

    new-instance v11, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView$$ExternalSyntheticLambda9;

    invoke-direct {v11, p1}, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/PassportActivity;)V

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v0 .. v12}, Lorg/telegram/ui/PassportActivity$PassportActivityDelegate;->saveValue(Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;Ljava/lang/String;Ljava/util/ArrayList;Lorg/telegram/messenger/SecureDocument;Ljava/util/ArrayList;Lorg/telegram/messenger/SecureDocument;Lorg/telegram/messenger/SecureDocument;Ljava/lang/Runnable;Lorg/telegram/ui/PassportActivity$ErrorRunnable;)V

    goto/16 :goto_4

    :cond_0
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    iput-object v1, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->lastError:Ljava/lang/String;

    iget v1, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->verificationType:I

    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x3

    if-ne v1, v4, :cond_1

    iget v5, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->nextType:I

    if-eq v5, v2, :cond_3

    if-eq v5, v3, :cond_3

    :cond_1
    if-ne v1, v3, :cond_2

    iget v5, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->nextType:I

    if-eq v5, v2, :cond_3

    if-eq v5, v4, :cond_3

    :cond_2
    if-ne v1, v2, :cond_4

    iget v1, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->nextType:I

    if-ne v1, v3, :cond_4

    :cond_3
    invoke-direct {p0}, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->createTimer()V

    :cond_4
    iget v1, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->verificationType:I

    const/4 v2, 0x1

    if-ne v1, v3, :cond_5

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->setWaitingForSms(Z)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/NotificationCenter;->didReceiveSmsCode:I

    :goto_0
    invoke-virtual {v1, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    goto :goto_1

    :cond_5
    if-ne v1, v4, :cond_6

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->setWaitingForCall(Z)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/NotificationCenter;->didReceiveCall:I

    goto :goto_0

    :cond_6
    :goto_1
    iput-boolean v2, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->waitingForEvent:Z

    iget v1, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->verificationType:I

    if-eq v1, v4, :cond_7

    iget-object v1, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {v1}, Lorg/telegram/ui/PassportActivity;->access$12000(Lorg/telegram/ui/PassportActivity;)I

    move-result v1

    iget-object v3, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->this$0:Lorg/telegram/ui/PassportActivity;

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v1, p1, v3, p2, v4}, Lorg/telegram/ui/Components/AlertsCreator;->processError(ILorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLObject;[Ljava/lang/Object;)Landroid/app/Dialog;

    :cond_7
    iget-object p2, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {p2, v2, v0}, Lorg/telegram/ui/PassportActivity;->access$4900(Lorg/telegram/ui/PassportActivity;ZZ)V

    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v1, "PHONE_CODE_EMPTY"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_9

    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v1, "PHONE_CODE_INVALID"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_8

    goto :goto_2

    :cond_8
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p2, "PHONE_CODE_EXPIRED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-virtual {p0, v2}, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->onBackPressed(Z)Z

    iget-object p1, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->this$0:Lorg/telegram/ui/PassportActivity;

    const/4 p2, 0x0

    invoke-virtual {p1, v0, v2, p2}, Lorg/telegram/ui/PassportActivity;->setPage(IZLandroid/os/Bundle;)V

    goto :goto_4

    :cond_9
    :goto_2
    const/4 p1, 0x0

    :goto_3
    iget-object p2, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->codeField:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    array-length v1, p2

    if-ge p1, v1, :cond_a

    aget-object p2, p2, p1

    const-string v1, ""

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_a
    aget-object p1, p2, v0

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :cond_b
    :goto_4
    return-void
.end method

.method private synthetic lambda$onNextPressed$7(Lorg/telegram/tgnet/tl/TL_account$verifyPhone;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    new-instance p2, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView$$ExternalSyntheticLambda6;

    invoke-direct {p2, p0, p3, p1}, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/tl/TL_account$verifyPhone;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$resendCode$1(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->onBackPressed(Z)Z

    iget-object p1, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void
.end method

.method private synthetic lambda$resendCode$2(Lorg/telegram/tgnet/TLRPC$TL_error;Landroid/os/Bundle;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->nextPressed:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->this$0:Lorg/telegram/ui/PassportActivity;

    check-cast p3, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;

    const/4 p4, 0x1

    invoke-static {p1, p2, p3, p4}, Lorg/telegram/ui/PassportActivity;->access$12100(Lorg/telegram/ui/PassportActivity;Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;Z)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {p2}, Lorg/telegram/ui/PassportActivity;->access$12200(Lorg/telegram/ui/PassportActivity;)I

    move-result p2

    iget-object p3, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->this$0:Lorg/telegram/ui/PassportActivity;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2, p1, p3, p4, v0}, Lorg/telegram/ui/Components/AlertsCreator;->processError(ILorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLObject;[Ljava/lang/Object;)Landroid/app/Dialog;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/ActionBar/AlertDialog;

    if-eqz p2, :cond_1

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p3, "PHONE_CODE_EXPIRED"

    invoke-virtual {p1, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView$$ExternalSyntheticLambda10;

    invoke-direct {p1, p0}, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;)V

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->setPositiveButtonListener(Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/PassportActivity;->needHideProgress()V

    return-void
.end method

.method private synthetic lambda$resendCode$3(Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 7

    new-instance v6, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView$$ExternalSyntheticLambda8;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p4

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;Lorg/telegram/tgnet/TLRPC$TL_error;Landroid/os/Bundle;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;)V

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$setParams$4(ILandroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 p2, 0x43

    if-ne p3, p2, :cond_0

    iget-object p2, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->codeField:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object p2, p2, p1

    invoke-virtual {p2}, Landroid/widget/TextView;->length()I

    move-result p2

    if-nez p2, :cond_0

    if-lez p1, :cond_0

    iget-object p2, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->codeField:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget-object p2, p2, p1

    invoke-virtual {p2}, Landroid/widget/TextView;->length()I

    move-result v0

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    iget-object p2, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->codeField:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object p2, p2, p1

    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    iget-object p2, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->codeField:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object p1, p2, p1

    invoke-virtual {p1, p4}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    return p3

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$setParams$5(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x5

    if-ne p2, p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->onNextPressed(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private resendCode()V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->phone:Ljava/lang/String;

    const-string v2, "phone"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->nextPressed:Z

    iget-object v1, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/PassportActivity;->needShowProgress()V

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;-><init>()V

    iget-object v2, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->phone:Ljava/lang/String;

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;->phone_number:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->phoneHash:Ljava/lang/String;

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;->phone_code_hash:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {v2}, Lorg/telegram/ui/PassportActivity;->access$9300(Lorg/telegram/ui/PassportActivity;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView$$ExternalSyntheticLambda7;

    invoke-direct {v3, p0, v0, v1}, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;)V

    const/4 v0, 0x2

    invoke-virtual {v2, v1, v3, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    return-void
.end method


# virtual methods
.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 4

    iget-boolean p2, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->waitingForEvent:Z

    if-eqz p2, :cond_3

    iget-object p2, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->codeField:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    sget v0, Lorg/telegram/messenger/NotificationCenter;->didReceiveSmsCode:I

    const/4 v1, 0x0

    const-string v2, ""

    const/4 v3, 0x0

    if-ne p1, v0, :cond_1

    aget-object p1, p2, v3

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p3, p3, v3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-virtual {p0, v1}, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->onNextPressed(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    sget p2, Lorg/telegram/messenger/NotificationCenter;->didReceiveCall:I

    if-ne p1, p2, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p2, p3, v3

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->pattern:Ljava/lang/String;

    invoke-static {p2, p1}, Lorg/telegram/messenger/AndroidUtilities;->checkPhonePattern(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    return-void

    :cond_2
    const/4 p2, 0x1

    iput-boolean p2, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->ignoreOnTextChange:Z

    iget-object p2, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->codeField:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object p2, p2, v3

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput-boolean v3, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->ignoreOnTextChange:Z

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public needBackButton()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onBackPressed(Z)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v2, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {p1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lorg/telegram/messenger/R$string;->AppName:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget v2, Lorg/telegram/messenger/R$string;->StopVerification:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget v2, Lorg/telegram/messenger/R$string;->Continue:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget v0, Lorg/telegram/messenger/R$string;->Stop:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;)V

    invoke-virtual {p1, v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return v1

    :cond_0
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_auth_cancelCode;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_auth_cancelCode;-><init>()V

    iget-object v2, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->phone:Ljava/lang/String;

    iput-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_auth_cancelCode;->phone_number:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->phoneHash:Ljava/lang/String;

    iput-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_auth_cancelCode;->phone_code_hash:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {v2}, Lorg/telegram/ui/PassportActivity;->access$11900(Lorg/telegram/ui/PassportActivity;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView$$ExternalSyntheticLambda3;

    invoke-direct {v3}, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView$$ExternalSyntheticLambda3;-><init>()V

    const/4 v4, 0x2

    invoke-virtual {v2, p1, v3, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    invoke-direct {p0}, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->destroyTimer()V

    invoke-direct {p0}, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->destroyCodeTimer()V

    iput-object v0, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->currentParams:Landroid/os/Bundle;

    iget p1, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->verificationType:I

    if-ne p1, v4, :cond_1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->setWaitingForSms(Z)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->didReceiveSmsCode:I

    :goto_0
    invoke-virtual {p1, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->setWaitingForCall(Z)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->didReceiveCall:I

    goto :goto_0

    :cond_2
    :goto_1
    iput-boolean v1, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->waitingForEvent:Z

    const/4 p1, 0x1

    return p1
.end method

.method public onCancelPressed()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->nextPressed:Z

    return-void
.end method

.method public onDestroyActivity()V
    .locals 3

    invoke-super {p0}, Lorg/telegram/ui/Components/SlideView;->onDestroyActivity()V

    iget v0, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->verificationType:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->setWaitingForSms(Z)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didReceiveSmsCode:I

    :goto_0
    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    goto :goto_1

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->setWaitingForCall(Z)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didReceiveCall:I

    goto :goto_0

    :cond_1
    :goto_1
    iput-boolean v2, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->waitingForEvent:Z

    invoke-direct {p0}, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->destroyTimer()V

    invoke-direct {p0}, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->destroyCodeTimer()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    iget p1, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->verificationType:I

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->blueImageView:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->confirmTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    sub-int/2addr p2, p1

    iget-object p3, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->problemText:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    move-result p3

    if-nez p3, :cond_0

    iget-object p3, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->problemText:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    add-int/2addr p2, p1

    sub-int/2addr p2, p3

    iget-object p4, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->problemText:Landroid/widget/TextView;

    invoke-virtual {p4}, Landroid/view/View;->getLeft()I

    move-result p5

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->problemText:Landroid/widget/TextView;

    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    add-int/2addr p3, p2

    invoke-virtual {p4, p5, p2, v0, p3}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    :cond_0
    iget-object p3, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->timeText:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    move-result p3

    if-nez p3, :cond_1

    iget-object p3, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->timeText:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    add-int/2addr p2, p1

    sub-int/2addr p2, p3

    iget-object p4, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->timeText:Landroid/widget/TextView;

    invoke-virtual {p4}, Landroid/view/View;->getLeft()I

    move-result p5

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->timeText:Landroid/widget/TextView;

    goto :goto_0

    :cond_1
    add-int/2addr p2, p1

    :goto_1
    sub-int/2addr p2, p1

    iget-object p3, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->codeFieldContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    sub-int/2addr p2, p3

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p2, p1

    iget-object p1, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->codeFieldContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p4

    iget-object p5, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->codeFieldContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p5}, Landroid/view/View;->getRight()I

    move-result p5

    add-int/2addr p3, p2

    invoke-virtual {p1, p4, p2, p5, p3}, Landroid/view/View;->layout(IIII)V

    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    iget p1, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->verificationType:I

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->blueImageView:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iget-object p2, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    add-int/2addr p1, p2

    iget-object p2, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->confirmTextView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    add-int/2addr p1, p2

    const/high16 p2, 0x420c0000    # 35.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    add-int/2addr p1, p2

    const/high16 p2, 0x42a00000    # 80.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    const v0, 0x43918000    # 291.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {v1}, Lorg/telegram/ui/PassportActivity;->access$5700(Lorg/telegram/ui/PassportActivity;)I

    move-result v1

    sub-int/2addr v1, p1

    if-ge v1, p2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr p1, p2

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iget-object p2, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {p2}, Lorg/telegram/ui/PassportActivity;->access$5700(Lorg/telegram/ui/PassportActivity;)I

    move-result p2

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onNextPressed(Ljava/lang/String;)V
    .locals 5

    iget-boolean v0, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->nextPressed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    invoke-direct {p0}, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->getCode()Ljava/lang/String;

    move-result-object p1

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->codeFieldContainer:Landroid/widget/LinearLayout;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->shakeView(Landroid/view/View;)V

    return-void

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->nextPressed:Z

    iget v1, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->verificationType:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->setWaitingForSms(Z)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v4, Lorg/telegram/messenger/NotificationCenter;->didReceiveSmsCode:I

    :goto_0
    invoke-virtual {v1, p0, v4}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    goto :goto_1

    :cond_3
    const/4 v4, 0x3

    if-ne v1, v4, :cond_4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->setWaitingForCall(Z)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v4, Lorg/telegram/messenger/NotificationCenter;->didReceiveCall:I

    goto :goto_0

    :cond_4
    :goto_1
    iput-boolean v3, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->waitingForEvent:Z

    iget-object v1, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {v1, v0, v0}, Lorg/telegram/ui/PassportActivity;->access$4900(Lorg/telegram/ui/PassportActivity;ZZ)V

    new-instance v0, Lorg/telegram/tgnet/tl/TL_account$verifyPhone;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_account$verifyPhone;-><init>()V

    iget-object v1, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->phone:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_account$verifyPhone;->phone_number:Ljava/lang/String;

    iput-object p1, v0, Lorg/telegram/tgnet/tl/TL_account$verifyPhone;->phone_code:Ljava/lang/String;

    iget-object p1, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->phoneHash:Ljava/lang/String;

    iput-object p1, v0, Lorg/telegram/tgnet/tl/TL_account$verifyPhone;->phone_code_hash:Ljava/lang/String;

    invoke-direct {p0}, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->destroyTimer()V

    iget-object p1, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/PassportActivity;->needShowProgress()V

    iget-object p1, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {p1}, Lorg/telegram/ui/PassportActivity;->access$11800(Lorg/telegram/ui/PassportActivity;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance v1, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;Lorg/telegram/tgnet/tl/TL_account$verifyPhone;)V

    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    return-void
.end method

.method public onShow()V
    .locals 3

    invoke-super {p0}, Lorg/telegram/ui/Components/SlideView;->onShow()V

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->codeFieldContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->codeField:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->codeField:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->codeField:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    iget-object v1, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->codeField:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    iget-object v1, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->codeField:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v0, v1, v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    :cond_2
    return-void
.end method

.method public setParams(Landroid/os/Bundle;Z)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iput-boolean v4, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->waitingForEvent:Z

    iget v5, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->verificationType:I

    const/4 v6, 0x3

    if-ne v5, v2, :cond_1

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->setWaitingForSms(Z)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v5

    sget v7, Lorg/telegram/messenger/NotificationCenter;->didReceiveSmsCode:I

    :goto_0
    invoke-virtual {v5, v0, v7}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    goto :goto_1

    :cond_1
    if-ne v5, v6, :cond_2

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->setWaitingForCall(Z)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v5

    sget v7, Lorg/telegram/messenger/NotificationCenter;->didReceiveCall:I

    goto :goto_0

    :cond_2
    :goto_1
    iput-object v1, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->currentParams:Landroid/os/Bundle;

    const-string v5, "phone"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->phone:Ljava/lang/String;

    const-string v5, "phoneHash"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->phoneHash:Ljava/lang/String;

    const-string v5, "timeout"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->time:I

    iput v5, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->timeout:I

    const-string v5, "nextType"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->nextType:I

    const-string v5, "pattern"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->pattern:Ljava/lang/String;

    const-string v5, "length"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->length:I

    if-nez v1, :cond_3

    const/4 v1, 0x5

    iput v1, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->length:I

    :cond_3
    iget-object v1, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->codeField:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    const-string v5, ""

    const/16 v7, 0x8

    if-eqz v1, :cond_5

    array-length v1, v1

    iget v8, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->length:I

    if-eq v1, v8, :cond_4

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_2
    iget-object v8, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->codeField:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    array-length v9, v8

    if-ge v1, v9, :cond_8

    aget-object v8, v8, v1

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/2addr v1, v4

    goto :goto_2

    :cond_5
    :goto_3
    iget v1, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->length:I

    new-array v1, v1, [Lorg/telegram/ui/Components/EditTextBoldCursor;

    iput-object v1, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->codeField:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v1, 0x0

    :goto_4
    iget v8, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->length:I

    if-ge v1, v8, :cond_8

    iget-object v8, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->codeField:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v9, Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/telegram/ui/Components/EditTextBoldCursor;-><init>(Landroid/content/Context;)V

    aput-object v9, v8, v1

    iget-object v8, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->codeField:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v8, v8, v1

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v10

    invoke-virtual {v8, v10}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    iget-object v8, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->codeField:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v8, v8, v1

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    iget-object v8, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->codeField:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v8, v8, v1

    const/high16 v9, 0x41a00000    # 20.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-virtual {v8, v10}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorSize(I)V

    iget-object v8, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->codeField:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v8, v8, v1

    const/high16 v10, 0x3fc00000    # 1.5f

    invoke-virtual {v8, v10}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorWidth(F)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v10, Lorg/telegram/messenger/R$drawable;->search_dark_activated:I

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    new-instance v10, Landroid/graphics/PorterDuffColorFilter;

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteInputFieldActivated:I

    invoke-static {v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v11

    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v10, v11, v12}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v8, v10}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v10, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->codeField:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v10, v10, v1

    invoke-virtual {v10, v8}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v8, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->codeField:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v8, v8, v1

    const v10, 0x10000005

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setImeOptions(I)V

    iget-object v8, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->codeField:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v8, v8, v1

    invoke-virtual {v8, v4, v9}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextSize(IF)V

    iget-object v8, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->codeField:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v8, v8, v1

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v8, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->codeField:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v8, v8, v1

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v8, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->codeField:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v8, v8, v1

    invoke-virtual {v8, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    iget-object v8, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->codeField:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v8, v8, v1

    const/16 v9, 0x31

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setGravity(I)V

    iget v8, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->verificationType:I

    if-ne v8, v6, :cond_6

    iget-object v8, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->codeField:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v8, v8, v1

    invoke-virtual {v8, v3}, Landroid/view/View;->setEnabled(Z)V

    iget-object v8, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->codeField:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v8, v8, v1

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setInputType(I)V

    iget-object v8, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->codeField:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v8, v8, v1

    invoke-virtual {v8, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    :cond_6
    iget-object v8, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->codeField:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v8, v8, v1

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setInputType(I)V

    :goto_5
    iget-object v8, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->codeFieldContainer:Landroid/widget/LinearLayout;

    iget-object v9, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->codeField:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v9, v9, v1

    iget v10, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->length:I

    sub-int/2addr v10, v4

    if-eq v1, v10, :cond_7

    const/4 v10, 0x7

    const/16 v16, 0x7

    goto :goto_6

    :cond_7
    const/16 v16, 0x0

    :goto_6
    const/16 v17, 0x0

    const/16 v11, 0x22

    const/16 v12, 0x24

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v8, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->codeField:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v8, v8, v1

    new-instance v9, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView$3;

    invoke-direct {v9, v0, v1}, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView$3;-><init>(Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;I)V

    invoke-virtual {v8, v9}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v8, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->codeField:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v8, v8, v1

    new-instance v9, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView$$ExternalSyntheticLambda4;

    invoke-direct {v9, v0, v1}, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;I)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v8, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->codeField:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v8, v8, v1

    new-instance v9, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView$$ExternalSyntheticLambda5;

    invoke-direct {v9, v0}, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;)V

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    add-int/2addr v1, v4

    goto/16 :goto_4

    :cond_8
    iget-object v1, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->progressView:Lorg/telegram/ui/PassportActivity$ProgressView;

    if-eqz v1, :cond_a

    iget v8, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->nextType:I

    if-eqz v8, :cond_9

    const/4 v8, 0x0

    goto :goto_7

    :cond_9
    const/16 v8, 0x8

    :goto_7
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    iget-object v1, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->phone:Ljava/lang/String;

    if-nez v1, :cond_b

    return-void

    :cond_b
    invoke-static {}, Lorg/telegram/PhoneFormat/PhoneFormat;->getInstance()Lorg/telegram/PhoneFormat/PhoneFormat;

    move-result-object v1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "+"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->phone:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lorg/telegram/PhoneFormat/PhoneFormat;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget v8, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->verificationType:I

    const/4 v9, 0x4

    if-ne v8, v2, :cond_c

    sget v5, Lorg/telegram/messenger/R$string;->SentSmsCode:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->addNbsp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v8, v4, [Ljava/lang/Object;

    aput-object v1, v8, v3

    const-string v1, "SentSmsCode"

    invoke-static {v1, v5, v8}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_8
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    goto :goto_9

    :cond_c
    if-ne v8, v6, :cond_d

    sget v5, Lorg/telegram/messenger/R$string;->SentCallCode:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->addNbsp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v8, v4, [Ljava/lang/Object;

    aput-object v1, v8, v3

    const-string v1, "SentCallCode"

    invoke-static {v1, v5, v8}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    :cond_d
    if-ne v8, v9, :cond_e

    sget v5, Lorg/telegram/messenger/R$string;->SentCallOnly:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->addNbsp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v8, v4, [Ljava/lang/Object;

    aput-object v1, v8, v3

    const-string v1, "SentCallOnly"

    invoke-static {v1, v5, v8}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    :cond_e
    :goto_9
    iget-object v1, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->confirmTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v1, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->verificationType:I

    if-eq v1, v6, :cond_f

    iget-object v1, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->codeField:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v1, v1, v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    iget-object v1, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->codeField:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_a

    :cond_f
    iget-object v1, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->codeField:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v1, v1, v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    :goto_a
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->destroyTimer()V

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->destroyCodeTimer()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    long-to-double v10, v10

    iput-wide v10, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->lastCurrentTime:D

    iget v1, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->verificationType:I

    const-string v5, "SmsText"

    const-string v8, "CallText"

    if-ne v1, v6, :cond_13

    iget v10, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->nextType:I

    if-eq v10, v9, :cond_10

    if-ne v10, v2, :cond_13

    :cond_10
    iget-object v1, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->problemText:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->timeText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget v1, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->nextType:I

    if-ne v1, v9, :cond_11

    iget-object v1, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->timeText:Landroid/widget/TextView;

    sget v5, Lorg/telegram/messenger/R$string;->CallText:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v6, v2, v3

    aput-object v7, v2, v4

    invoke-static {v8, v5, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_b
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_c

    :cond_11
    if-ne v1, v2, :cond_12

    iget-object v1, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->timeText:Landroid/widget/TextView;

    sget v6, Lorg/telegram/messenger/R$string;->SmsText:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v7, v2, v3

    aput-object v8, v2, v4

    invoke-static {v5, v6, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_b

    :cond_12
    :goto_c
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->createTimer()V

    goto/16 :goto_10

    :cond_13
    const/16 v10, 0x3e8

    if-ne v1, v2, :cond_16

    iget v11, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->nextType:I

    if-eq v11, v9, :cond_14

    if-ne v11, v6, :cond_16

    :cond_14
    iget-object v1, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->timeText:Landroid/widget/TextView;

    sget v5, Lorg/telegram/messenger/R$string;->CallText:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v6, v2, v3

    aput-object v9, v2, v4

    invoke-static {v8, v5, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->problemText:Landroid/widget/TextView;

    iget v2, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->time:I

    if-ge v2, v10, :cond_15

    const/4 v2, 0x0

    goto :goto_d

    :cond_15
    const/16 v2, 0x8

    :goto_d
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->timeText:Landroid/widget/TextView;

    iget v2, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->time:I

    if-ge v2, v10, :cond_18

    goto :goto_f

    :cond_16
    if-ne v1, v9, :cond_19

    iget v1, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->nextType:I

    if-ne v1, v2, :cond_19

    iget-object v1, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->timeText:Landroid/widget/TextView;

    sget v6, Lorg/telegram/messenger/R$string;->SmsText:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v8, v2, v3

    aput-object v9, v2, v4

    invoke-static {v5, v6, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->problemText:Landroid/widget/TextView;

    iget v2, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->time:I

    if-ge v2, v10, :cond_17

    const/4 v2, 0x0

    goto :goto_e

    :cond_17
    const/16 v2, 0x8

    :goto_e
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->timeText:Landroid/widget/TextView;

    iget v2, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->time:I

    if-ge v2, v10, :cond_18

    :goto_f
    const/16 v3, 0x8

    :cond_18
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_c

    :cond_19
    iget-object v1, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->timeText:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->problemText:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->createCodeTimer()V

    :goto_10
    return-void
.end method
