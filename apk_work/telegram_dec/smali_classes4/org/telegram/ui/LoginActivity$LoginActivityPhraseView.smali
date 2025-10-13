.class public Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;
.super Lorg/telegram/ui/Components/SlideView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/LoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LoginActivityPhraseView"
.end annotation


# instance fields
.field private beginning:Ljava/lang/String;

.field private final checkPasteRunnable:Ljava/lang/Runnable;

.field private final codeField:Lorg/telegram/ui/Components/EditTextBoldCursor;

.field private codeTime:I

.field private final confirmTextView:Landroid/widget/TextView;

.field private currentParams:Landroid/os/Bundle;

.field private final currentType:I

.field private final dismissField:Ljava/lang/Runnable;

.field private emailPhone:Ljava/lang/String;

.field private errorShown:Z

.field private final errorTextView:Landroid/widget/TextView;

.field private final fieldContainer:Landroid/widget/LinearLayout;

.field private final imageView:Lorg/telegram/ui/Components/RLottieImageView;

.field private final infoContainer:Landroid/widget/FrameLayout;

.field private final infoTextView:Landroid/widget/TextView;

.field private isResendingCode:Z

.field private lastCurrentTime:D

.field private lastError:Ljava/lang/String;

.field private nextCodeAuth:Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;

.field private nextCodeParams:Landroid/os/Bundle;

.field private nextPressed:Z

.field private nextType:I

.field private final outlineField:Lorg/telegram/ui/Components/OutlineTextContainerView;

.field private pasteShown:Z

.field private final pasteTextView:Landroid/widget/TextView;

.field private pasted:Z

.field private pasting:Z

.field private phone:Ljava/lang/String;

.field private phoneHash:Ljava/lang/String;

.field private prevType:I

.field private final prevTypeTextView:Landroid/widget/TextView;

.field private requestPhone:Ljava/lang/String;

.field private shiftDp:F

.field final synthetic this$0:Lorg/telegram/ui/LoginActivity;

.field private time:I

.field private final timeText:Lorg/telegram/ui/LoginActivity$LoadingTextView;

.field private timeTimer:Ljava/util/Timer;

.field private final timerSync:Ljava/lang/Object;

.field private final titleTextView:Landroid/widget/TextView;

.field private waitingForEvent:Z


# direct methods
.method public static synthetic $r8$lambda$7eU05cg3rXadVMbuLAefTyN1kGQ(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->lambda$onShow$16()V

    return-void
.end method

.method public static synthetic $r8$lambda$AXhTWBlmBO16VdJc1CoobOtoF3E(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;Landroid/view/View;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->lambda$new$0(Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$AZ3ZQlOXHPGA6dKogTmf9YcHp7o(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->lambda$new$7()V

    return-void
.end method

.method public static synthetic $r8$lambda$BOux35gVm73huOkzScPjzJ3DNE0(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->lambda$onNextPressed$10(Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$C0UnXMTbRw-wrQUo-FJZ6SF5h8A(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->lambda$onNextPressed$12(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IDJ9sYwXGDNEBSdkcAbYamnDKyc(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SUPa56ZEdpYp-PhTm7-2TEmBFVA(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->lambda$onNextPressed$13(Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZDF1oP-RbWaIcNjomO30PvqRUvA(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->lambda$onNextPressed$9(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZilxKWCtTlIBLsW965W8aOGLbfw(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;Landroid/os/Bundle;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->lambda$resendCode$15(Landroid/os/Bundle;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$c2F4HEjKzlNpbO7OTB1OkdvMQEw(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->lambda$new$6(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$d-dvFXDqF1Qj0jZlGY0Gmq1sAsE(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->lambda$new$8()V

    return-void
.end method

.method public static synthetic $r8$lambda$dOyaJxAqR8VQ54azfD2k0ZHC0mU(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;Lorg/telegram/tgnet/TLObject;Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->lambda$new$4(Lorg/telegram/tgnet/TLObject;Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$h4QlFQqohNoD9affIQsXGmMJdBE(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;Lorg/telegram/tgnet/TLRPC$TL_error;Landroid/os/Bundle;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->lambda$resendCode$14(Lorg/telegram/tgnet/TLRPC$TL_error;Landroid/os/Bundle;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jQTjCeET-blZRmkZZgC1UAYq2Dw(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->lambda$onNextPressed$11()V

    return-void
.end method

.method public static synthetic $r8$lambda$sc_akOtErT1CtviPsgE5YGPH8ZE(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->lambda$new$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$trGDnTPoE7zd4hgy2xpgFmSrHb8(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;Landroid/os/Bundle;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->lambda$new$5(Landroid/os/Bundle;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wbKra1xwGJZaemJlIn9C2xH249Q(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->lambda$new$2(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;I)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    iput-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/SlideView;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    iput-boolean v4, v0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->pasteShown:Z

    const/4 v5, 0x0

    iput-boolean v5, v0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->errorShown:Z

    iput-boolean v5, v0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->pasting:Z

    iput-boolean v5, v0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->pasted:Z

    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v6, v0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->timerSync:Ljava/lang/Object;

    const v6, 0xea60

    iput v6, v0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->time:I

    const/16 v6, 0x3a98

    iput v6, v0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->codeTime:I

    const-string v6, ""

    iput-object v6, v0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->lastError:Ljava/lang/String;

    new-instance v6, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$$ExternalSyntheticLambda1;

    invoke-direct {v6, v0}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;)V

    iput-object v6, v0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->checkPasteRunnable:Ljava/lang/Runnable;

    new-instance v6, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$$ExternalSyntheticLambda2;

    invoke-direct {v6, v0}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;)V

    iput-object v6, v0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->dismissField:Ljava/lang/Runnable;

    const/high16 v6, -0x3fc00000    # -3.0f

    iput v6, v0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->shiftDp:F

    iput v3, v0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->currentType:I

    const/16 v6, 0x10

    if-ne v3, v6, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v6, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v6, v2}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    sget v7, Lorg/telegram/messenger/R$raw;->bubble:I

    const/16 v8, 0x5f

    invoke-virtual {v6, v7, v8, v8}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isSmallScreen()Z

    move-result v7

    if-nez v7, :cond_2

    sget-object v7, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v8, v7, Landroid/graphics/Point;->x:I

    iget v7, v7, Landroid/graphics/Point;->y:I

    if-le v8, v7, :cond_1

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v7, 0x1

    :goto_2
    if-eqz v7, :cond_3

    const/16 v9, 0x8

    goto :goto_3

    :cond_3
    const/4 v9, 0x0

    :goto_3
    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    const/4 v15, 0x0

    const/16 v16, 0x5

    const/16 v10, 0x5f

    const/16 v11, 0x5f

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/16 v14, 0xa

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v0, v6, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->titleTextView:Landroid/widget/TextView;

    const/high16 v9, 0x41900000    # 18.0f

    invoke-virtual {v6, v4, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-virtual {v6, v11, v12}, Landroid/widget/TextView;->setLineSpacing(FF)V

    const/16 v11, 0x31

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setGravity(I)V

    if-nez v3, :cond_4

    sget v11, Lorg/telegram/messenger/R$string;->SMSWordTitle:I

    goto :goto_4

    :cond_4
    sget v11, Lorg/telegram/messenger/R$string;->SMSPhraseTitle:I

    :goto_4
    invoke-static {v11}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v7, :cond_5

    const/16 v7, 0x19

    const/16 v17, 0x19

    goto :goto_5

    :cond_5
    const/16 v17, 0x0

    :goto_5
    const/16 v18, 0x8

    const/16 v19, 0x0

    const/4 v13, -0x2

    const/4 v14, -0x2

    const/4 v15, 0x1

    const/16 v16, 0x8

    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->confirmTextView:Landroid/widget/TextView;

    const/high16 v7, 0x41600000    # 14.0f

    invoke-virtual {v6, v4, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setGravity(I)V

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v6, v11, v12}, Landroid/widget/TextView;->setLineSpacing(FF)V

    const/16 v19, 0x10

    const/16 v17, 0x5

    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v0, v6, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Lorg/telegram/ui/Components/OutlineTextContainerView;

    invoke-direct {v6, v2}, Lorg/telegram/ui/Components/OutlineTextContainerView;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->outlineField:Lorg/telegram/ui/Components/OutlineTextContainerView;

    if-nez v3, :cond_6

    sget v11, Lorg/telegram/messenger/R$string;->SMSWord:I

    goto :goto_6

    :cond_6
    sget v11, Lorg/telegram/messenger/R$string;->SMSPhrase:I

    :goto_6
    invoke-static {v11}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Lorg/telegram/ui/Components/OutlineTextContainerView;->setText(Ljava/lang/String;)V

    new-instance v11, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$1;

    invoke-direct {v11, v0, v2, v1}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$1;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;Landroid/content/Context;Lorg/telegram/ui/LoginActivity;)V

    iput-object v11, v0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->codeField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v11}, Landroid/widget/TextView;->setSingleLine()V

    invoke-virtual {v11, v4}, Landroid/widget/TextView;->setLines(I)V

    const/high16 v13, 0x41a00000    # 20.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    invoke-virtual {v11, v13}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorSize(I)V

    const/high16 v13, 0x3fc00000    # 1.5f

    invoke-virtual {v11, v13}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorWidth(F)V

    const v14, 0x10000005

    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setImeOptions(I)V

    invoke-virtual {v11, v4, v9}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextSize(IF)V

    invoke-virtual {v11, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    const/4 v9, 0x0

    invoke-virtual {v11, v9}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    if-nez v3, :cond_7

    sget v9, Lorg/telegram/messenger/R$string;->SMSWordHint:I

    goto :goto_7

    :cond_7
    sget v9, Lorg/telegram/messenger/R$string;->SMSPhraseHint:I

    :goto_7
    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    new-instance v9, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$2;

    invoke-direct {v9, v0, v1}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$2;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;Lorg/telegram/ui/LoginActivity;)V

    invoke-virtual {v11, v9}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {v11, v4}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setEllipsizeByGradient(Z)V

    invoke-virtual {v11, v4}, Landroid/widget/TextView;->setInputType(I)V

    sget-object v9, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v11, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    sget-boolean v9, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v9, :cond_8

    const/4 v9, 0x5

    goto :goto_8

    :cond_8
    const/4 v9, 0x3

    :goto_8
    invoke-virtual {v11, v9}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v9, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$$ExternalSyntheticLambda3;

    invoke-direct {v9, v0}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;)V

    invoke-virtual {v11, v9}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v9, v0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->pasteTextView:Landroid/widget/TextView;

    const/high16 v14, 0x41400000    # 12.0f

    invoke-virtual {v9, v4, v14}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v14

    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    sget v14, Lorg/telegram/messenger/R$string;->Paste:I

    invoke-static {v14}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v14, 0x41200000    # 10.0f

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    invoke-virtual {v9, v15, v5, v14, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v5, 0x11

    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setGravity(I)V

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText2:I

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/LoginActivity;->access$17700(Lorg/telegram/ui/LoginActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v14

    invoke-static {v5, v14}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v5

    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v14, 0x40c00000    # 6.0f

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    const v15, 0x3df5c28f    # 0.12f

    invoke-static {v5, v15}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v15

    const v8, 0x3e19999a    # 0.15f

    invoke-static {v5, v8}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v5

    invoke-static {v14, v15, v5}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v9, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v5, 0x3dcccccd    # 0.1f

    invoke-static {v9, v5, v13}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;FF)V

    const/high16 v5, 0x41800000    # 16.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    const v13, 0x415570a4    # 13.34f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    invoke-virtual {v11, v8, v14, v15, v13}, Landroid/view/View;->setPadding(IIII)V

    new-instance v8, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$$ExternalSyntheticLambda4;

    invoke-direct {v8, v0}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;)V

    invoke-virtual {v9, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/4 v13, -0x1

    const/high16 v14, -0x40000000    # -2.0f

    const/16 v15, 0x77

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v6, v11, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v6, v11}, Lorg/telegram/ui/Components/OutlineTextContainerView;->attachEditText(Landroid/widget/EditText;)V

    const/high16 v18, 0x41200000    # 10.0f

    const/4 v13, -0x2

    const/high16 v14, 0x41d00000    # 26.0f

    const/16 v15, 0x15

    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v6, v9, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v8, v0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->fieldContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v9, -0x1

    invoke-static {v9, v13, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v8, v6, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v20, 0x10

    const/16 v21, 0x0

    const/4 v15, -0x1

    const/16 v16, -0x2

    const/16 v17, 0x1

    const/16 v18, 0x10

    const/16 v19, 0x3

    invoke-static/range {v15 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v8, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$$ExternalSyntheticLambda5;

    invoke-direct {v6, v0}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;)V

    invoke-virtual {v11, v6}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    new-instance v6, Landroid/widget/FrameLayout;

    invoke-direct {v6, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->infoContainer:Landroid/widget/FrameLayout;

    invoke-static {v9, v13}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v8, v6, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v8, Lorg/telegram/ui/LoginActivity$LoadingTextView;

    invoke-direct {v8, v1, v2}, Lorg/telegram/ui/LoginActivity$LoadingTextView;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;)V

    iput-object v8, v0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->prevTypeTextView:Landroid/widget/TextView;

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteValueText:I

    invoke-static {v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v13

    invoke-virtual {v8, v13}, Landroid/widget/TextView;->setLinkTextColor(I)V

    invoke-virtual {v1, v11}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v13

    invoke-virtual {v8, v13}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v8, v4, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v8, v13, v12}, Landroid/widget/TextView;->setLineSpacing(FF)V

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    const/high16 v14, 0x41000000    # 8.0f

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    invoke-virtual {v8, v13, v15, v9, v14}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v9, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$$ExternalSyntheticLambda6;

    invoke-direct {v9, v0}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v18, -0x2

    const/16 v19, -0x2

    const/16 v20, 0x1

    const/16 v22, 0x12

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v8, v0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->errorTextView:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setPivotY(F)V

    if-nez v3, :cond_9

    sget v13, Lorg/telegram/messenger/R$string;->SMSWordError:I

    goto :goto_9

    :cond_9
    sget v13, Lorg/telegram/messenger/R$string;->SMSPhraseError:I

    :goto_9
    invoke-static {v13}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v13, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-virtual {v1, v13}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v13

    invoke-virtual {v8, v13}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v13, 0x41500000    # 13.0f

    invoke-virtual {v8, v4, v13}, Landroid/widget/TextView;->setTextSize(IF)V

    const/high16 v23, 0x41800000    # 16.0f

    const/high16 v24, 0x41000000    # 8.0f

    const/16 v18, -0x1

    const/high16 v19, -0x40000000    # -2.0f

    const/16 v20, 0x77

    const/high16 v21, 0x41800000    # 16.0f

    const/high16 v22, 0x41000000    # 8.0f

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v6, v8, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setAlpha(F)V

    const v14, 0x3f4ccccd    # 0.8f

    invoke-virtual {v8, v14}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v8, v14}, Landroid/view/View;->setScaleY(F)V

    const/high16 v14, 0x40800000    # 4.0f

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    neg-int v14, v14

    int-to-float v14, v14

    invoke-virtual {v8, v14}, Landroid/view/View;->setTranslationY(F)V

    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v8, v0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->infoTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v9}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setPivotY(F)V

    if-nez v3, :cond_a

    sget v3, Lorg/telegram/messenger/R$string;->SMSWordPasteHint:I

    goto :goto_a

    :cond_a
    sget v3, Lorg/telegram/messenger/R$string;->SMSPhrasePasteHint:I

    :goto_a
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v8, v4, v13}, Landroid/widget/TextView;->setTextSize(IF)V

    const/high16 v23, 0x41800000    # 16.0f

    const/high16 v24, 0x41000000    # 8.0f

    const/16 v18, -0x1

    const/high16 v19, -0x40000000    # -2.0f

    const/16 v20, 0x77

    const/high16 v21, 0x41800000    # 16.0f

    const/high16 v22, 0x41000000    # 8.0f

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v6, v8, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$3;

    invoke-direct {v3, v0, v2, v1}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$3;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;Landroid/content/Context;Lorg/telegram/ui/LoginActivity;)V

    iput-object v3, v0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->timeText:Lorg/telegram/ui/LoginActivity$LoadingTextView;

    invoke-static {v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setLinkTextColor(I)V

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v3, v1, v12}, Landroid/widget/TextView;->setLineSpacing(FF)V

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/high16 v6, 0x41000000    # 8.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v3, v1, v6, v7, v5}, Landroid/view/View;->setPadding(IIII)V

    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {v3, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v1, 0x13

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v1, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$$ExternalSyntheticLambda7;

    invoke-direct {v1, v0}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;)V

    invoke-virtual {v3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v2, v4, :cond_b

    const/16 v2, 0x38

    goto :goto_b

    :cond_b
    const/16 v2, 0x3c

    :goto_b
    int-to-float v5, v2

    const/high16 v9, 0x42700000    # 60.0f

    const/high16 v10, 0x41e00000    # 28.0f

    const/4 v4, -0x1

    const/16 v6, 0x50

    const/high16 v7, 0x40c00000    # 6.0f

    const/4 v8, 0x0

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v2, 0x50

    const/4 v4, -0x1

    invoke-static {v4, v4, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v3}, Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;->attach(Landroid/view/View;)Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;

    return-void
.end method

.method static synthetic access$16702(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->pasting:Z

    return p1
.end method

.method static synthetic access$16800(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->pasted:Z

    return p0
.end method

.method static synthetic access$16802(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->pasted:Z

    return p1
.end method

.method static synthetic access$16900(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->beginning:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$17000(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->trimLeft(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$17100(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->checkPaste(Z)V

    return-void
.end method

.method static synthetic access$17200(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->dismissField:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$17300(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->animateError(Z)V

    return-void
.end method

.method static synthetic access$17400(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->beginsOk(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$17500(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->onInputError(Z)V

    return-void
.end method

.method static synthetic access$17600(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;)Lorg/telegram/ui/Components/EditTextBoldCursor;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->codeField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    return-object p0
.end method

.method static synthetic access$17800(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->isResendingCode:Z

    return p0
.end method

.method static synthetic access$17900(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->time:I

    return p0
.end method

.method static synthetic access$17926(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;D)I
    .locals 2

    iget v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->time:I

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v0, p1

    double-to-int p1, v0

    iput p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->time:I

    return p1
.end method

.method static synthetic access$18000(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;)Ljava/util/Timer;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->timeTimer:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic access$18200(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;)D
    .locals 2

    iget-wide v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->lastCurrentTime:D

    return-wide v0
.end method

.method static synthetic access$18202(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;D)D
    .locals 0

    iput-wide p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->lastCurrentTime:D

    return-wide p1
.end method

.method static synthetic access$18300(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;)Lorg/telegram/ui/LoginActivity$LoadingTextView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->timeText:Lorg/telegram/ui/LoginActivity$LoadingTextView;

    return-object p0
.end method

.method static synthetic access$18400(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->nextType:I

    return p0
.end method

.method static synthetic access$18500(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->destroyTimer()V

    return-void
.end method

.method private animateError(Z)V
    .locals 8

    iput-boolean p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->errorShown:Z

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->outlineField:Lorg/telegram/ui/Components/OutlineTextContainerView;

    invoke-virtual {v2, p1}, Lorg/telegram/ui/Components/OutlineTextContainerView;->animateError(F)V

    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->errorTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const v3, 0x3dcccccd    # 0.1f

    mul-float v4, p1, v3

    const v5, 0x3f666666    # 0.9f

    add-float/2addr v4, v5

    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    sub-float p1, v1, p1

    const/high16 v4, -0x3f600000    # -5.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    mul-float p1, p1, v6

    invoke-virtual {v2, p1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v6, 0x122

    invoke-virtual {p1, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-boolean p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->pasteShown:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->errorShown:Z

    if-nez p1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->infoTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    mul-float v3, v3, v0

    add-float/2addr v3, v5

    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sub-float/2addr v1, v0

    iget-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->errorShown:Z

    if-eqz v0, :cond_2

    const/high16 v4, 0x40a00000    # 5.0f

    :cond_2
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    mul-float v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private beginsOk(Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->beginning:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->trimLeft(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->beginning:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-gtz v2, :cond_1

    return v1

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method private checkPaste(Z)V
    .locals 9

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->checkPasteRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->codeField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->pasteShown:Z

    if-eq v1, v0, :cond_12

    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->pasteShown:Z

    const/high16 v1, -0x3f600000    # -5.0f

    const/high16 v2, 0x40a00000    # 5.0f

    const v3, 0x3f666666    # 0.9f

    const v4, 0x3f333333    # 0.7f

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz p1, :cond_9

    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->pasteTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-eqz v0, :cond_1

    const/high16 v7, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    invoke-virtual {p1, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-eqz v0, :cond_2

    const/high16 v7, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_2
    const v7, 0x3f333333    # 0.7f

    :goto_2
    invoke-virtual {p1, v7}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-eqz v0, :cond_3

    const/high16 v4, 0x3f800000    # 1.0f

    :cond_3
    invoke-virtual {p1, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v7, 0x12c

    invoke-virtual {p1, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->infoTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-boolean v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->pasteShown:Z

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->errorShown:Z

    if-nez v4, :cond_4

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_4
    const v4, 0x3f666666    # 0.9f

    :goto_3
    invoke-virtual {p1, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-boolean v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->pasteShown:Z

    if-eqz v4, :cond_5

    iget-boolean v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->errorShown:Z

    if-nez v4, :cond_5

    const/high16 v3, 0x3f800000    # 1.0f

    :cond_5
    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-boolean v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->pasteShown:Z

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->errorShown:Z

    if-nez v3, :cond_6

    goto :goto_4

    :cond_6
    const/4 v6, 0x0

    :goto_4
    invoke-virtual {p1, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-boolean v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->pasteShown:Z

    if-eqz v3, :cond_7

    iget-boolean v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->errorShown:Z

    if-nez v3, :cond_7

    goto :goto_5

    :cond_7
    iget-boolean v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->errorShown:Z

    if-eqz v3, :cond_8

    const/high16 v1, 0x40a00000    # 5.0f

    :cond_8
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v5, v1

    :goto_5
    invoke-virtual {p1, v5}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_b

    :cond_9
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->pasteTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_a

    const/high16 v7, 0x3f800000    # 1.0f

    goto :goto_6

    :cond_a
    const/4 v7, 0x0

    :goto_6
    invoke-virtual {p1, v7}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->pasteTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_b

    const/high16 v7, 0x3f800000    # 1.0f

    goto :goto_7

    :cond_b
    const v7, 0x3f333333    # 0.7f

    :goto_7
    invoke-virtual {p1, v7}, Landroid/view/View;->setScaleX(F)V

    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->pasteTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_c

    const/high16 v4, 0x3f800000    # 1.0f

    :cond_c
    invoke-virtual {p1, v4}, Landroid/view/View;->setScaleY(F)V

    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->infoTextView:Landroid/widget/TextView;

    iget-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->pasteShown:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->errorShown:Z

    if-nez v0, :cond_d

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_8

    :cond_d
    const v0, 0x3f666666    # 0.9f

    :goto_8
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->infoTextView:Landroid/widget/TextView;

    iget-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->pasteShown:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->errorShown:Z

    if-nez v0, :cond_e

    const/high16 v3, 0x3f800000    # 1.0f

    :cond_e
    invoke-virtual {p1, v3}, Landroid/view/View;->setScaleY(F)V

    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->infoTextView:Landroid/widget/TextView;

    iget-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->pasteShown:Z

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->errorShown:Z

    if-nez v0, :cond_f

    goto :goto_9

    :cond_f
    const/4 v6, 0x0

    :goto_9
    invoke-virtual {p1, v6}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->infoTextView:Landroid/widget/TextView;

    iget-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->pasteShown:Z

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->errorShown:Z

    if-nez v0, :cond_10

    goto :goto_a

    :cond_10
    iget-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->errorShown:Z

    if-eqz v0, :cond_11

    const/high16 v1, 0x40a00000    # 5.0f

    :cond_11
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v5, v0

    :goto_a
    invoke-virtual {p1, v5}, Landroid/view/View;->setTranslationY(F)V

    :cond_12
    :goto_b
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->checkPasteRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x1388

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private createTimer()V
    .locals 9

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->timeTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->timeText:Lorg/telegram/ui/LoginActivity$LoadingTextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->timeText:Lorg/telegram/ui/LoginActivity$LoadingTextView;

    sget v2, Lorg/telegram/messenger/R$id;->color_key_tag:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    new-instance v3, Ljava/util/Timer;

    invoke-direct {v3}, Ljava/util/Timer;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->timeTimer:Ljava/util/Timer;

    new-instance v4, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$4;

    invoke-direct {v4, p0}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$4;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;)V

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x3e8

    invoke-virtual/range {v3 .. v8}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method private destroyTimer()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->timeText:Lorg/telegram/ui/LoginActivity$LoadingTextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->timeText:Lorg/telegram/ui/LoginActivity$LoadingTextView;

    sget v2, Lorg/telegram/messenger/R$id;->color_key_tag:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->timerSync:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->timeTimer:Ljava/util/Timer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->timeTimer:Ljava/util/Timer;

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

.method private synthetic lambda$new$0(Landroid/view/View;Z)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->outlineField:Lorg/telegram/ui/Components/OutlineTextContainerView;

    if-eqz p2, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/OutlineTextContainerView;->animateSelection(F)V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 5

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "clipboard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ClipboardManager;

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_0
    const/4 v1, 0x1

    if-eqz p1, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->codeField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    iput-boolean v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->pasted:Z

    iput-boolean v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->pasting:Z

    if-eqz v2, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->codeField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->codeField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-interface {v2, v3, v4, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    :cond_0
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->pasting:Z

    :cond_1
    invoke-direct {p0, v1}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->checkPaste(Z)V

    return-void
.end method

.method private synthetic lambda$new$2(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x5

    if-ne p2, p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->onNextPressed(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$new$3(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->onBackPressed(Z)Z

    return-void
.end method

.method private synthetic lambda$new$4(Lorg/telegram/tgnet/TLObject;Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->isResendingCode:Z

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->timeText:Lorg/telegram/ui/LoginActivity$LoadingTextView;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    if-eqz p1, :cond_0

    iput-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->nextCodeParams:Landroid/os/Bundle;

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;

    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->nextCodeAuth:Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;

    iget-object p3, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p3, p2, p1}, Lorg/telegram/ui/LoginActivity;->access$7800(Lorg/telegram/ui/LoginActivity;Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$auth_SentCode;)V

    goto/16 :goto_4

    :cond_0
    if-eqz p3, :cond_7

    iget-object p1, p3, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    if-eqz p1, :cond_7

    const-string p2, "PHONE_NUMBER_INVALID"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget p2, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$string;->InvalidPhoneNumber:I

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {p1, p2, v0}, Lorg/telegram/ui/LoginActivity;->access$6100(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_1
    iget-object p1, p3, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p2, "PHONE_CODE_EMPTY"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p3, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p2, "PHONE_CODE_INVALID"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    iget-object p1, p3, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p2, "PHONE_CODE_EXPIRED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->onBackPressed(Z)Z

    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->this$0:Lorg/telegram/ui/LoginActivity;

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1, p1}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget p2, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$string;->CodeExpired:I

    goto :goto_0

    :cond_3
    iget-object p1, p3, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p2, "FLOOD_WAIT"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget p2, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$string;->FloodWait:I

    goto :goto_0

    :cond_4
    iget p1, p3, Lorg/telegram/tgnet/TLRPC$TL_error;->code:I

    const/16 p2, -0x3e8

    if-eq p1, p2, :cond_6

    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget p2, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lorg/telegram/messenger/R$string;->ErrorOccurred:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p3, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget p2, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$string;->InvalidCode:I

    goto/16 :goto_0

    :cond_6
    :goto_3
    iget-object p1, p3, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->lastError:Ljava/lang/String;

    :cond_7
    :goto_4
    return-void
.end method

.method private synthetic lambda$new$5(Landroid/os/Bundle;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    new-instance v0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0, p2, p1, p3}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;Lorg/telegram/tgnet/TLObject;Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$6(Landroid/view/View;)V
    .locals 4

    iget p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->time:I

    if-lez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->timeTimer:Ljava/util/Timer;

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->nextCodeParams:Landroid/os/Bundle;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->nextCodeAuth:Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v1, p1, v0}, Lorg/telegram/ui/LoginActivity;->access$7800(Lorg/telegram/ui/LoginActivity;Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$auth_SentCode;)V

    return-void

    :cond_1
    iget p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->nextType:I

    const/16 v0, 0xb

    const/4 v1, 0x4

    if-eq p1, v1, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    if-eq p1, v0, :cond_3

    const/16 v2, 0xf

    if-ne p1, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_6

    const/4 p1, 0x0

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->setWaitingForSms(Z)V

    iput-boolean p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->waitingForEvent:Z

    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->resendCode()V

    goto :goto_4

    :cond_3
    :goto_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->isResendingCode:Z

    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->timeText:Lorg/telegram/ui/LoginActivity$LoadingTextView;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->timeText:Lorg/telegram/ui/LoginActivity$LoadingTextView;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteValueText:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->timeText:Lorg/telegram/ui/LoginActivity$LoadingTextView;

    const/high16 v3, 0x41700000    # 15.0f

    invoke-virtual {v2, p1, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->nextType:I

    if-eq p1, v1, :cond_5

    if-ne p1, v0, :cond_4

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->timeText:Lorg/telegram/ui/LoginActivity$LoadingTextView;

    sget v0, Lorg/telegram/messenger/R$string;->SendingSms:I

    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_5
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->timeText:Lorg/telegram/ui/LoginActivity$LoadingTextView;

    sget v0, Lorg/telegram/messenger/R$string;->Calling:I

    goto :goto_1

    :goto_3
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->phone:Ljava/lang/String;

    const-string v1, "phone"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->emailPhone:Ljava/lang/String;

    const-string v1, "ephone"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->requestPhone:Ljava/lang/String;

    const-string v1, "phoneFormated"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->currentType:I

    const-string v1, "prevType"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;-><init>()V

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->requestPhone:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;->phone_number:Ljava/lang/String;

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->phoneHash:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;->phone_code_hash:Ljava/lang/String;

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v1}, Lorg/telegram/ui/LoginActivity;->access$18700(Lorg/telegram/ui/LoginActivity;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;Landroid/os/Bundle;)V

    const/16 p1, 0xa

    invoke-virtual {v1, v0, v2, p1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    :cond_6
    :goto_4
    return-void
.end method

.method private synthetic lambda$new$7()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->checkPaste(Z)V

    return-void
.end method

.method private synthetic lambda$new$8()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->animateError(Z)V

    return-void
.end method

.method private synthetic lambda$onNextPressed$10(Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    new-instance v0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0, p3, p2, p1}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onNextPressed$11()V
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->codeField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->beginning:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->codeField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->trimLeftLen(Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->beginning:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    if-ltz v3, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x20

    if-ne v4, v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->codeField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    add-int/2addr v3, v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v3, v0, v1}, Lorg/telegram/messenger/Utilities;->clamp(III)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->codeField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {v4, v0, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(II)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->codeField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(II)V

    :goto_1
    return-void
.end method

.method private synthetic lambda$onNextPressed$12(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->this$0:Lorg/telegram/ui/LoginActivity;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/LoginActivity;->access$9100(Lorg/telegram/ui/LoginActivity;ZZ)V

    const/4 v0, 0x3

    if-nez p1, :cond_2

    iput-boolean v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->nextPressed:Z

    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1, v1, v2}, Lorg/telegram/ui/LoginActivity;->access$2700(Lorg/telegram/ui/LoginActivity;ZZ)V

    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->destroyTimer()V

    instance-of p1, p2, Lorg/telegram/tgnet/TLRPC$TL_auth_authorizationSignUpRequired;

    if-eqz p1, :cond_1

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_auth_authorizationSignUpRequired;

    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_auth_authorizationSignUpRequired;->terms_of_service:Lorg/telegram/tgnet/TLRPC$TL_help_termsOfService;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p2, p1}, Lorg/telegram/ui/LoginActivity;->access$7602(Lorg/telegram/ui/LoginActivity;Lorg/telegram/tgnet/TLRPC$TL_help_termsOfService;)Lorg/telegram/tgnet/TLRPC$TL_help_termsOfService;

    :cond_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->requestPhone:Ljava/lang/String;

    const-string v3, "phoneFormated"

    invoke-virtual {p1, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->phoneHash:Ljava/lang/String;

    const-string v3, "phoneHash"

    invoke-virtual {p1, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;->phone_code:Ljava/lang/String;

    const-string p3, "code"

    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->this$0:Lorg/telegram/ui/LoginActivity;

    const/4 p3, 0x5

    invoke-virtual {p2, p3, v2, p1, v1}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->this$0:Lorg/telegram/ui/LoginActivity;

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;

    invoke-static {p1, p2}, Lorg/telegram/ui/LoginActivity;->access$7700(Lorg/telegram/ui/LoginActivity;Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;)V

    goto :goto_0

    :cond_2
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    iput-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->lastError:Ljava/lang/String;

    const-string v3, "SESSION_PASSWORD_NEEDED"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    new-instance p1, Lorg/telegram/tgnet/tl/TL_account$getPassword;

    invoke-direct {p1}, Lorg/telegram/tgnet/tl/TL_account$getPassword;-><init>()V

    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p2}, Lorg/telegram/ui/LoginActivity;->access$18600(Lorg/telegram/ui/LoginActivity;)I

    move-result p2

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance v2, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$$ExternalSyntheticLambda14;

    invoke-direct {v2, p0, p3}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;)V

    const/16 p3, 0xa

    invoke-virtual {p2, p1, v2, p3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->destroyTimer()V

    :goto_0
    iget p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->currentType:I

    if-ne p1, v0, :cond_9

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->endIncomingCall()V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->setWaitingForCall(Z)V

    goto/16 :goto_4

    :cond_3
    iput-boolean v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->nextPressed:Z

    iget p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->currentType:I

    if-eq p2, v0, :cond_9

    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p3, "PHONE_NUMBER_INVALID"

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget p2, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/R$string;->InvalidPhoneNumber:I

    const-string v0, "InvalidPhoneNumber"

    :goto_1
    invoke-static {v0, p3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lorg/telegram/ui/LoginActivity;->access$6100(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_4
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p3, "PHONE_CODE_EMPTY"

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_8

    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p3, "PHONE_CODE_INVALID"

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_5

    goto :goto_3

    :cond_5
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p3, "PHONE_CODE_EXPIRED"

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-virtual {p0, v2}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->onBackPressed(Z)Z

    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->this$0:Lorg/telegram/ui/LoginActivity;

    const/4 p2, 0x0

    invoke-virtual {p1, v1, v2, p2, v2}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget p2, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/R$string;->CodeExpired:I

    const-string v0, "CodeExpired"

    goto :goto_1

    :cond_6
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p3, "FLOOD_WAIT"

    invoke-virtual {p2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget p2, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/R$string;->FloodWait:I

    const-string v0, "FloodWait"

    goto :goto_1

    :cond_7
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget p3, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lorg/telegram/messenger/R$string;->ErrorOccurred:I

    const-string v2, "ErrorOccurred"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p3, p1}, Lorg/telegram/ui/LoginActivity;->access$6100(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->codeField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->codeField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    goto :goto_4

    :cond_8
    :goto_3
    invoke-direct {p0, v1}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->onInputError(Z)V

    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->codeField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance p2, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$$ExternalSyntheticLambda15;

    invoke-direct {p2, p0}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_9
    :goto_4
    return-void
.end method

.method private synthetic lambda$onNextPressed$13(Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    new-instance v0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0, p3, p2, p1}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onNextPressed$9(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;)V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->nextPressed:Z

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->this$0:Lorg/telegram/ui/LoginActivity;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lorg/telegram/ui/LoginActivity;->access$2700(Lorg/telegram/ui/LoginActivity;ZZ)V

    if-nez p1, :cond_1

    check-cast p2, Lorg/telegram/tgnet/tl/TL_account$Password;

    invoke-static {p2, v2}, Lorg/telegram/ui/TwoStepVerificationActivity;->canHandleCurrentPassword(Lorg/telegram/tgnet/tl/TL_account$Password;Z)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->UpdateAppAlert:I

    const-string p3, "UpdateAppAlert"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v2}, Lorg/telegram/ui/Components/AlertsCreator;->showUpdateAppAlert(Landroid/content/Context;Ljava/lang/String;Z)Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void

    :cond_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Lorg/telegram/tgnet/SerializedData;

    invoke-virtual {p2}, Lorg/telegram/tgnet/TLObject;->getObjectSize()I

    move-result v3

    invoke-direct {v1, v3}, Lorg/telegram/tgnet/SerializedData;-><init>(I)V

    invoke-virtual {p2, v1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    invoke-virtual {v1}, Lorg/telegram/tgnet/SerializedData;->toByteArray()[B

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object p2

    const-string v1, "password"

    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->requestPhone:Ljava/lang/String;

    const-string v1, "phoneFormated"

    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->phoneHash:Ljava/lang/String;

    const-string v1, "phoneHash"

    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;->phone_code:Ljava/lang/String;

    const-string p3, "code"

    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->this$0:Lorg/telegram/ui/LoginActivity;

    const/4 p3, 0x6

    invoke-virtual {p2, p3, v2, p1, v0}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget p3, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-static {p2, p3, p1}, Lorg/telegram/ui/LoginActivity;->access$6100(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onShow$16()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->codeField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->codeField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->codeField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    :cond_0
    return-void
.end method

.method private synthetic lambda$resendCode$14(Lorg/telegram/tgnet/TLRPC$TL_error;Landroid/os/Bundle;Lorg/telegram/tgnet/TLObject;)V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->nextPressed:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->this$0:Lorg/telegram/ui/LoginActivity;

    check-cast p3, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;

    invoke-static {p1, p2, p3}, Lorg/telegram/ui/LoginActivity;->access$7800(Lorg/telegram/ui/LoginActivity;Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$auth_SentCode;)V

    goto/16 :goto_2

    :cond_0
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    if-eqz p2, :cond_6

    const-string p3, "PHONE_NUMBER_INVALID"

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget p2, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/R$string;->InvalidPhoneNumber:I

    :goto_0
    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lorg/telegram/ui/LoginActivity;->access$6100(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_1
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p3, "PHONE_CODE_EMPTY"

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_5

    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p3, "PHONE_CODE_INVALID"

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p3, "PHONE_CODE_EXPIRED"

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->onBackPressed(Z)Z

    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->this$0:Lorg/telegram/ui/LoginActivity;

    const/4 p3, 0x0

    invoke-virtual {p2, v0, p1, p3, p1}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget p2, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/R$string;->CodeExpired:I

    goto :goto_0

    :cond_3
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p3, "FLOOD_WAIT"

    invoke-virtual {p2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget p2, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/R$string;->FloodWait:I

    goto :goto_0

    :cond_4
    iget p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->code:I

    const/16 p3, -0x3e8

    if-eq p2, p3, :cond_6

    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget p3, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lorg/telegram/messenger/R$string;->ErrorOccurred:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p3, p1}, Lorg/telegram/ui/LoginActivity;->access$6100(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget p2, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/R$string;->InvalidCode:I

    goto/16 :goto_0

    :cond_6
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1, v0}, Lorg/telegram/ui/LoginActivity;->access$6200(Lorg/telegram/ui/LoginActivity;Z)V

    return-void
.end method

.method private synthetic lambda$resendCode$15(Landroid/os/Bundle;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    new-instance v0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$$ExternalSyntheticLambda17;

    invoke-direct {v0, p0, p3, p1, p2}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;Lorg/telegram/tgnet/TLRPC$TL_error;Landroid/os/Bundle;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private onInputError(Z)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->codeField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v1, 0x3

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    iget v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->currentType:I

    const/16 v1, 0x10

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    :goto_1
    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->errorTextView:Landroid/widget/TextView;

    if-nez v0, :cond_2

    sget v0, Lorg/telegram/messenger/R$string;->SMSWordBeginningError:I

    goto :goto_2

    :cond_2
    sget v0, Lorg/telegram/messenger/R$string;->SMSPhraseBeginningError:I

    :goto_2
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->codeField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->errorTextView:Landroid/widget/TextView;

    const-string v0, ""

    goto :goto_3

    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->errorTextView:Landroid/widget/TextView;

    if-nez v0, :cond_5

    sget v0, Lorg/telegram/messenger/R$string;->SMSWordError:I

    goto :goto_2

    :cond_5
    sget v0, Lorg/telegram/messenger/R$string;->SMSPhraseError:I

    goto :goto_2

    :goto_4
    iget-boolean p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->errorShown:Z

    if-nez p1, :cond_6

    iget-boolean p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->pasted:Z

    if-nez p1, :cond_6

    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->codeField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    iget v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->shiftDp:F

    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;F)V

    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->errorTextView:Landroid/widget/TextView;

    iget v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->shiftDp:F

    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;F)V

    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->dismissField:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    invoke-direct {p0, v2}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->animateError(Z)V

    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->dismissField:Ljava/lang/Runnable;

    const-wide/16 v0, 0x2710

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    iget p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->shiftDp:F

    neg-float p1, p1

    iput p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->shiftDp:F

    return-void
.end method

.method private resendCode()V
    .locals 4

    iget-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->nextPressed:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->isResendingCode:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->access$4800(Lorg/telegram/ui/LoginActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->isResendingCode:Z

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->timeText:Lorg/telegram/ui/LoginActivity$LoadingTextView;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->timeText:Lorg/telegram/ui/LoginActivity$LoadingTextView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteValueText:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->phone:Ljava/lang/String;

    const-string v3, "phone"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->emailPhone:Ljava/lang/String;

    const-string v3, "ephone"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->requestPhone:Ljava/lang/String;

    const-string v3, "phoneFormated"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->nextPressed:Z

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;-><init>()V

    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->requestPhone:Ljava/lang/String;

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;->phone_number:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->phoneHash:Ljava/lang/String;

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;->phone_code_hash:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v2}, Lorg/telegram/ui/LoginActivity;->access$18100(Lorg/telegram/ui/LoginActivity;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$$ExternalSyntheticLambda12;

    invoke-direct {v3, p0, v1}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;Landroid/os/Bundle;)V

    const/16 v1, 0xa

    invoke-virtual {v2, v0, v3, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v1, v0}, Lorg/telegram/ui/LoginActivity;->access$6800(Lorg/telegram/ui/LoginActivity;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private trimLeft(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-gt v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-gtz v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    :cond_1
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_2
    return-object p1
.end method

.method private trimLeftLen(Ljava/lang/String;)I
    .locals 4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-gt v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method


# virtual methods
.method public getHeaderName()Ljava/lang/String;
    .locals 2

    sget v0, Lorg/telegram/messenger/R$string;->NewPassword:I

    const-string v1, "NewPassword"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public needBackButton()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onBackPressed(Z)Z
    .locals 4

    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->this$0:Lorg/telegram/ui/LoginActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/telegram/ui/LoginActivity;->access$6200(Lorg/telegram/ui/LoginActivity;Z)V

    iget p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->prevType:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v3, p1, v0, v2, v0}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    return v1

    :cond_0
    iput-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->currentParams:Landroid/os/Bundle;

    iput-boolean v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->nextPressed:Z

    return v0
.end method

.method public onCancelPressed()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->nextPressed:Z

    return-void
.end method

.method public onHide()V
    .locals 1

    invoke-super {p0}, Lorg/telegram/ui/Components/SlideView;->onHide()V

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->checkPasteRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onNextPressed(Ljava/lang/String;)V
    .locals 4

    iget-boolean p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->nextPressed:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->codeField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->onInputError(Z)V

    return-void

    :cond_1
    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->beginsOk(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    invoke-direct {p0, v1}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->onInputError(Z)V

    return-void

    :cond_2
    iput-boolean v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->nextPressed:Z

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;-><init>()V

    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->requestPhone:Ljava/lang/String;

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;->phone_number:Ljava/lang/String;

    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;->phone_code:Ljava/lang/String;

    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->phoneHash:Ljava/lang/String;

    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;->phone_code_hash:Ljava/lang/String;

    iget p1, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;->flags:I

    or-int/2addr p1, v1

    iput p1, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;->flags:I

    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance v2, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;)V

    const/16 v3, 0xa

    invoke-virtual {p1, v0, v2, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0, p1, v1}, Lorg/telegram/ui/LoginActivity;->access$5300(Lorg/telegram/ui/LoginActivity;IZ)V

    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1, v1, v1}, Lorg/telegram/ui/LoginActivity;->access$2700(Lorg/telegram/ui/LoginActivity;ZZ)V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lorg/telegram/ui/Components/SlideView;->onResume()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->checkPaste(Z)V

    return-void
.end method

.method public onShow()V
    .locals 3

    invoke-super {p0}, Lorg/telegram/ui/Components/SlideView;->onShow()V

    new-instance v0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;)V

    invoke-static {}, Lorg/telegram/ui/LoginActivity;->access$7300()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public restoreStateParams(Landroid/os/Bundle;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "recoveryview_word"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->currentType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->currentParams:Landroid/os/Bundle;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->setParams(Landroid/os/Bundle;Z)V

    :cond_0
    return-void
.end method

.method public saveStateParams(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->currentParams:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "recoveryview_word"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->currentType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->currentParams:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public setParams(Landroid/os/Bundle;Z)V
    .locals 10

    const/4 p2, 0x2

    const/4 v0, 0x0

    const/16 v1, 0x11

    const/16 v2, 0x10

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    if-nez p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->nextCodeParams:Landroid/os/Bundle;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->nextCodeAuth:Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->timeText:Lorg/telegram/ui/LoginActivity$LoadingTextView;

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteValueText:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    iget p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->nextType:I

    if-ne p1, v1, :cond_0

    sget p1, Lorg/telegram/messenger/R$string;->ReturnEnteringPhrase:I

    goto :goto_0

    :cond_0
    if-ne p1, v2, :cond_1

    sget p1, Lorg/telegram/messenger/R$string;->ReturnEnteringWord:I

    goto :goto_0

    :cond_1
    sget p1, Lorg/telegram/messenger/R$string;->ReturnEnteringSMS:I

    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->timeText:Lorg/telegram/ui/LoginActivity$LoadingTextView;

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-static {p1, v4, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceArrows(Ljava/lang/CharSequence;ZFF)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void

    :cond_3
    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->codeField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->currentParams:Landroid/os/Bundle;

    const/4 v5, 0x0

    iput-object v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->beginning:Ljava/lang/String;

    const-string v6, "nextType"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->nextType:I

    const-string v6, "prevType"

    invoke-virtual {p1, v6, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->prevType:I

    const-string v6, "ephone"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->emailPhone:Ljava/lang/String;

    iget-object v6, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->currentParams:Landroid/os/Bundle;

    const-string v7, "beginning"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->currentParams:Landroid/os/Bundle;

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->beginning:Ljava/lang/String;

    :cond_4
    const-string v6, "phoneFormated"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->requestPhone:Ljava/lang/String;

    const-string v6, "phoneHash"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->phoneHash:Ljava/lang/String;

    iget-object v6, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->currentParams:Landroid/os/Bundle;

    const-string v7, "phone"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->phone:Ljava/lang/String;

    const-string v6, "timeout"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->time:I

    iget p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->prevType:I

    const/16 v6, 0x8

    const/4 v7, 0x3

    const/4 v8, 0x4

    const/high16 v9, -0x40800000    # -1.0f

    if-ne p1, v1, :cond_5

    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->prevTypeTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->prevTypeTextView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/R$string;->BackEnteringPhrase:I

    :goto_1
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v1, v4, v9, v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceArrows(Ljava/lang/CharSequence;ZFF)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_5
    if-ne p1, v2, :cond_6

    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->prevTypeTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->prevTypeTextView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/R$string;->BackEnteringWord:I

    goto :goto_1

    :cond_6
    if-eq p1, v4, :cond_8

    if-eq p1, p2, :cond_8

    if-eq p1, v8, :cond_8

    if-eq p1, v7, :cond_8

    const/16 v1, 0xf

    if-ne p1, v1, :cond_7

    goto :goto_2

    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->prevTypeTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_8
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->prevTypeTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->prevTypeTextView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/R$string;->BackEnteringCode:I

    goto :goto_1

    :goto_3
    iput-object v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->nextCodeParams:Landroid/os/Bundle;

    iput-object v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->nextCodeAuth:Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;

    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->nextPressed:Z

    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->isResendingCode:Z

    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1, v0}, Lorg/telegram/ui/LoginActivity;->access$4802(Lorg/telegram/ui/LoginActivity;Z)Z

    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->timeText:Lorg/telegram/ui/LoginActivity$LoadingTextView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    iget p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->currentType:I

    if-ne p1, v2, :cond_9

    const/4 p1, 0x0

    goto :goto_4

    :cond_9
    const/4 p1, 0x1

    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/telegram/PhoneFormat/PhoneFormat;->getInstance()Lorg/telegram/PhoneFormat/PhoneFormat;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->phone:Ljava/lang/String;

    invoke-static {v3}, Lorg/telegram/PhoneFormat/PhoneFormat;->stripExceptNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/PhoneFormat/PhoneFormat;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->beginning:Ljava/lang/String;

    if-nez v2, :cond_b

    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->confirmTextView:Landroid/widget/TextView;

    if-nez p1, :cond_a

    sget p1, Lorg/telegram/messenger/R$string;->SMSWordText:I

    goto :goto_5

    :cond_a
    sget p1, Lorg/telegram/messenger/R$string;->SMSPhraseText:I

    :goto_5
    new-array v3, v4, [Ljava/lang/Object;

    aput-object v1, v3, v0

    invoke-static {p1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    :cond_b
    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->confirmTextView:Landroid/widget/TextView;

    if-nez p1, :cond_c

    sget p1, Lorg/telegram/messenger/R$string;->SMSWordBeginningText:I

    goto :goto_6

    :cond_c
    sget p1, Lorg/telegram/messenger/R$string;->SMSPhraseBeginningText:I

    :goto_6
    new-array v5, p2, [Ljava/lang/Object;

    aput-object v1, v5, v0

    aput-object v2, v5, v4

    invoke-static {p1, v5}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_7
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->this$0:Lorg/telegram/ui/LoginActivity;

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->codeField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {p1, v1}, Lorg/telegram/ui/LoginActivity;->access$4000(Lorg/telegram/ui/LoginActivity;Landroid/view/View;)Z

    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->codeField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieImageView;->getAnimatedDrawable()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieImageView;->getAnimatedDrawable()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object p1

    invoke-virtual {p1, v0, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZ)V

    :cond_d
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$$ExternalSyntheticLambda8;

    invoke-direct {v1, p1}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Components/RLottieImageView;)V

    const-wide/16 v2, 0x1f4

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    invoke-direct {p0, v0}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->checkPaste(Z)V

    invoke-direct {p0, v0}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->animateError(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-double v0, v0

    iput-wide v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->lastCurrentTime:D

    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->timeText:Lorg/telegram/ui/LoginActivity$LoadingTextView;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->nextType:I

    if-eq p1, p2, :cond_f

    if-eq p1, v8, :cond_f

    if-ne p1, v7, :cond_e

    goto :goto_8

    :cond_e
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->timeText:Lorg/telegram/ui/LoginActivity$LoadingTextView;

    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_9

    :cond_f
    :goto_8
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->createTimer()V

    :goto_9
    return-void
.end method

.method public updateColors()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->titleTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->confirmTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText6:I

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->codeField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->codeField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteInputFieldActivated:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->codeField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteHintText:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHintTextColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->outlineField:Lorg/telegram/ui/Components/OutlineTextContainerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/OutlineTextContainerView;->updateColor()V

    return-void
.end method
