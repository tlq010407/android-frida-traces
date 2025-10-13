.class public Lorg/telegram/ui/Components/PasscodeView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;,
        Lorg/telegram/ui/Components/PasscodeView$PasscodeButton;,
        Lorg/telegram/ui/Components/PasscodeView$PasscodeViewDelegate;,
        Lorg/telegram/ui/Components/PasscodeView$InnerAnimator;
    }
.end annotation


# static fields
.field private static final ids:[I


# instance fields
.field private final BUTTON_SIZE:I

.field private final BUTTON_X_MARGIN:I

.field private final BUTTON_Y_MARGIN:I

.field private backgroundAnimationSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private backgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private backgroundFrameLayout:Landroid/widget/FrameLayout;

.field private backgroundFrameLayoutColor:I

.field private backgroundSpringNextQueue:Ljava/util/LinkedList;

.field private backgroundSpringQueue:Ljava/util/LinkedList;

.field private border:Landroid/view/View;

.field private checkImage:Landroid/widget/ImageView;

.field private checkRunnable:Ljava/lang/Runnable;

.field private delegate:Lorg/telegram/ui/Components/PasscodeView$PasscodeViewDelegate;

.field private fingerprintImage:Landroid/widget/ImageView;

.field private fingerprintView:Lorg/telegram/ui/Components/PasscodeView$PasscodeButton;

.field private imageView:Lorg/telegram/ui/Components/RLottieImageView;

.field private imageY:I

.field private innerAnimators:Ljava/util/ArrayList;

.field private keyboardHeight:I

.field private keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

.field private lastValue:I

.field private numberFrameLayouts:Ljava/util/ArrayList;

.field private numbersContainer:Landroid/widget/FrameLayout;

.field public numbersFrameLayout:Landroid/widget/FrameLayout;

.field private numbersTitleContainer:Landroid/widget/FrameLayout;

.field private passcodeTextView:Landroid/widget/TextView;

.field private passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

.field private passwordEditText2:Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;

.field private passwordFrameLayout:Landroid/widget/FrameLayout;

.field private pinAnimator:Landroid/animation/ValueAnimator;

.field private pinShown:Z

.field private pos:[I

.field private rect:Landroid/graphics/Rect;

.field resumeCount:I

.field private retryTextView:Landroid/widget/TextView;

.field private shiftDp:I

.field private shownT:F

.field private subtitleView:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$1w_uAz6Sj8H2M659bmD3-93DxjY(Lorg/telegram/ui/Components/PasscodeView;Lorg/telegram/ui/Components/MotionBackgroundDrawable;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Components/PasscodeView;->lambda$animateBackground$8(Lorg/telegram/ui/Components/MotionBackgroundDrawable;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$2F-li5gQf7dRPfhA6cm6fXWN1L4(Lorg/telegram/ui/Components/PasscodeView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PasscodeView;->lambda$showPin$14(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3tFBSsYu3h6U-hL7qNVARC6D2nE(Lorg/telegram/ui/Components/PasscodeView;Landroid/view/View;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PasscodeView;->lambda$new$3(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$8Aeplxlmafs07aBjE7NT6rkAkjk(Lorg/telegram/ui/Components/PasscodeView;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/PasscodeView;->lambda$new$0(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$AGkLwZKMMUsJntDEZSpLD4gOXIY(Lorg/telegram/ui/Components/PasscodeView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/PasscodeView;->lambda$onResume$12()V

    return-void
.end method

.method public static synthetic $r8$lambda$ES7Ii9gkV2TRjs5CsyVu9FqOfag(Lorg/telegram/ui/Components/MotionBackgroundDrawable;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/telegram/ui/Components/PasscodeView;->lambda$animateBackground$9(Lorg/telegram/ui/Components/MotionBackgroundDrawable;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method

.method public static synthetic $r8$lambda$H5Dfq1BJIWmILnuepA0ZvnztQII(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/PasscodeView;->lambda$onShow$15(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$JC34unNRAdNe0g5MSb_wqES0iHE(Lorg/telegram/ui/Components/PasscodeView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PasscodeView;->lambda$new$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NlUHzBjXF_D6_VgUT7Jgxnw7KVU(Lorg/telegram/ui/Components/PasscodeView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PasscodeView;->lambda$new$6(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ODjCPCt_gcwu6tuWtb2RZAcyXb0(Lorg/telegram/ui/Components/PasscodeView;ZLorg/telegram/ui/Components/MotionBackgroundDrawable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/PasscodeView;->lambda$new$4(ZLorg/telegram/ui/Components/MotionBackgroundDrawable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VHY62Zz9aBUWlUE7Iq-wXE7h8eA(Lorg/telegram/ui/Components/PasscodeView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PasscodeView;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Vrs1xp_tNzl11spFsM3gEMcHLXE(Lorg/telegram/ui/Components/PasscodeView;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PasscodeView;->lambda$onAttachedToWindow$13(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XwH3rO00AdjVez4H4tXn9ep16PU(Ljava/lang/Integer;Ljava/lang/Integer;)I
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/PasscodeView;->lambda$new$5(Ljava/lang/Integer;Ljava/lang/Integer;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$aSJvw-eTmOfBKBla-ypRJPpD0lI(Lorg/telegram/ui/Components/PasscodeView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/PasscodeView;->lambda$processDone$11()V

    return-void
.end method

.method public static synthetic $r8$lambda$uXvUT2VDeosidrMfLoJ6kuJ0xrU(Lorg/telegram/ui/Components/PasscodeView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PasscodeView;->lambda$processDone$10(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vudPI5KWfxjpDdhLX42Lk1slYC0(Landroidx/dynamicanimation/animation/FloatValueHolder;Lorg/telegram/ui/Components/MotionBackgroundDrawable;)Ljava/lang/Float;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/PasscodeView;->lambda$animateBackground$7(Landroidx/dynamicanimation/animation/FloatValueHolder;Lorg/telegram/ui/Components/MotionBackgroundDrawable;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 12

    sget v0, Lorg/telegram/messenger/R$id;->passcode_btn_0:I

    sget v1, Lorg/telegram/messenger/R$id;->passcode_btn_1:I

    sget v2, Lorg/telegram/messenger/R$id;->passcode_btn_2:I

    sget v3, Lorg/telegram/messenger/R$id;->passcode_btn_3:I

    sget v4, Lorg/telegram/messenger/R$id;->passcode_btn_4:I

    sget v5, Lorg/telegram/messenger/R$id;->passcode_btn_5:I

    sget v6, Lorg/telegram/messenger/R$id;->passcode_btn_6:I

    sget v7, Lorg/telegram/messenger/R$id;->passcode_btn_7:I

    sget v8, Lorg/telegram/messenger/R$id;->passcode_btn_8:I

    sget v9, Lorg/telegram/messenger/R$id;->passcode_btn_9:I

    sget v10, Lorg/telegram/messenger/R$id;->passcode_btn_backspace:I

    sget v11, Lorg/telegram/messenger/R$id;->passcode_btn_fingerprint:I

    filled-new-array/range {v0 .. v11}, [I

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Components/PasscodeView;->ids:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x1c

    iput v2, v0, Lorg/telegram/ui/Components/PasscodeView;->BUTTON_X_MARGIN:I

    const/16 v2, 0x10

    iput v2, v0, Lorg/telegram/ui/Components/PasscodeView;->BUTTON_Y_MARGIN:I

    const/16 v2, 0x3c

    iput v2, v0, Lorg/telegram/ui/Components/PasscodeView;->BUTTON_SIZE:I

    const/4 v3, 0x0

    iput v3, v0, Lorg/telegram/ui/Components/PasscodeView;->keyboardHeight:I

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v0, Lorg/telegram/ui/Components/PasscodeView;->rect:Landroid/graphics/Rect;

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, v0, Lorg/telegram/ui/Components/PasscodeView;->backgroundSpringQueue:Ljava/util/LinkedList;

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, v0, Lorg/telegram/ui/Components/PasscodeView;->backgroundSpringNextQueue:Ljava/util/LinkedList;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lorg/telegram/ui/Components/PasscodeView;->innerAnimators:Ljava/util/ArrayList;

    const/16 v4, -0xc

    iput v4, v0, Lorg/telegram/ui/Components/PasscodeView;->shiftDp:I

    new-instance v4, Lorg/telegram/ui/Components/PasscodeView$6;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Components/PasscodeView$6;-><init>(Lorg/telegram/ui/Components/PasscodeView;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/PasscodeView;->checkRunnable:Ljava/lang/Runnable;

    iput v3, v0, Lorg/telegram/ui/Components/PasscodeView;->resumeCount:I

    const/4 v4, 0x1

    iput-boolean v4, v0, Lorg/telegram/ui/Components/PasscodeView;->pinShown:Z

    const/4 v5, 0x2

    new-array v5, v5, [I

    iput-object v5, v0, Lorg/telegram/ui/Components/PasscodeView;->pos:[I

    invoke-virtual {v0, v3}, Landroid/view/View;->setWillNotDraw(Z)V

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    new-instance v5, Lorg/telegram/ui/Components/PasscodeView$1;

    invoke-direct {v5, v0, v1}, Lorg/telegram/ui/Components/PasscodeView$1;-><init>(Lorg/telegram/ui/Components/PasscodeView;Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/Components/PasscodeView;->backgroundFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v3}, Landroid/view/View;->setWillNotDraw(Z)V

    iget-object v5, v0, Lorg/telegram/ui/Components/PasscodeView;->backgroundFrameLayout:Landroid/widget/FrameLayout;

    const/4 v6, -0x1

    const/high16 v7, -0x40800000    # -1.0f

    invoke-static {v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v0, v5, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v5, v1}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/Components/PasscodeView;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v8, Lorg/telegram/messenger/R$raw;->passcode_lock:I

    const/16 v9, 0x3a

    invoke-virtual {v5, v8, v9, v9}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    iget-object v5, v0, Lorg/telegram/ui/Components/PasscodeView;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v5, v3}, Lorg/telegram/ui/Components/RLottieImageView;->setAutoRepeat(Z)V

    iget-object v5, v0, Lorg/telegram/ui/Components/PasscodeView;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/16 v8, 0x33

    invoke-static {v9, v9, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v0, v5, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/FrameLayout;

    invoke-direct {v5, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/Components/PasscodeView;->passwordFrameLayout:Landroid/widget/FrameLayout;

    iget-object v9, v0, Lorg/telegram/ui/Components/PasscodeView;->backgroundFrameLayout:Landroid/widget/FrameLayout;

    invoke-static {v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v9, v5, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/Components/PasscodeView;->passcodeTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v5, v0, Lorg/telegram/ui/Components/PasscodeView;->passcodeTextView:Landroid/widget/TextView;

    const v9, 0x4192a3d7    # 18.33f

    invoke-virtual {v5, v4, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v5, v0, Lorg/telegram/ui/Components/PasscodeView;->passcodeTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v5, v0, Lorg/telegram/ui/Components/PasscodeView;->passcodeTextView:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v5, v0, Lorg/telegram/ui/Components/PasscodeView;->passcodeTextView:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Landroid/view/View;->setAlpha(F)V

    iget-object v5, v0, Lorg/telegram/ui/Components/PasscodeView;->passwordFrameLayout:Landroid/widget/FrameLayout;

    iget-object v9, v0, Lorg/telegram/ui/Components/PasscodeView;->passcodeTextView:Landroid/widget/TextView;

    const/4 v15, 0x0

    const/high16 v16, 0x43000000    # 128.0f

    const/4 v10, -0x2

    const/high16 v11, -0x40000000    # -2.0f

    const/16 v12, 0x51

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/Components/PasscodeView;->retryTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v5, v0, Lorg/telegram/ui/Components/PasscodeView;->retryTextView:Landroid/widget/TextView;

    const/high16 v9, 0x41700000    # 15.0f

    invoke-virtual {v5, v4, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v5, v0, Lorg/telegram/ui/Components/PasscodeView;->retryTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v5, v0, Lorg/telegram/ui/Components/PasscodeView;->retryTextView:Landroid/widget/TextView;

    const/4 v10, 0x4

    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, v0, Lorg/telegram/ui/Components/PasscodeView;->backgroundFrameLayout:Landroid/widget/FrameLayout;

    iget-object v10, v0, Lorg/telegram/ui/Components/PasscodeView;->retryTextView:Landroid/widget/TextView;

    const/4 v11, -0x2

    const/16 v12, 0x11

    invoke-static {v11, v11, v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v5, v10, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;

    invoke-direct {v5, v0, v1}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;-><init>(Lorg/telegram/ui/Components/PasscodeView;Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText2:Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;

    iget-object v10, v0, Lorg/telegram/ui/Components/PasscodeView;->passwordFrameLayout:Landroid/widget/FrameLayout;

    const/high16 v18, 0x428c0000    # 70.0f

    const/high16 v19, 0x42380000    # 46.0f

    const/4 v13, -0x1

    const/high16 v14, -0x40000000    # -2.0f

    const/16 v15, 0x51

    const/high16 v16, 0x428c0000    # 70.0f

    const/16 v17, 0x0

    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v10, v5, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-direct {v5, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/high16 v10, 0x42100000    # 36.0f

    invoke-virtual {v5, v4, v10}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextSize(IF)V

    iget-object v5, v0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    iget-object v5, v0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v5, v0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setLines(I)V

    iget-object v5, v0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v5, v0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v5, v0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v10, 0x6

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setImeOptions(I)V

    iget-object v5, v0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget-object v10, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v5, v0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v5, v0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    iget-object v5, v0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/high16 v10, 0x42000000    # 32.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-virtual {v5, v10}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorSize(I)V

    iget-object v5, v0, Lorg/telegram/ui/Components/PasscodeView;->passwordFrameLayout:Landroid/widget/FrameLayout;

    iget-object v10, v0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/16 v19, 0x0

    const/4 v13, -0x1

    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v5, v10, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, v0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v10, Lorg/telegram/ui/Components/PasscodeView$$ExternalSyntheticLambda2;

    invoke-direct {v10, v0}, Lorg/telegram/ui/Components/PasscodeView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/PasscodeView;)V

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v5, v0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v10, Lorg/telegram/ui/Components/PasscodeView$2;

    invoke-direct {v10, v0}, Lorg/telegram/ui/Components/PasscodeView$2;-><init>(Lorg/telegram/ui/Components/PasscodeView;)V

    invoke-virtual {v5, v10}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v5, v0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v10, Lorg/telegram/ui/Components/PasscodeView$3;

    invoke-direct {v10, v0}, Lorg/telegram/ui/Components/PasscodeView$3;-><init>(Lorg/telegram/ui/Components/PasscodeView;)V

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/Components/PasscodeView;->checkImage:Landroid/widget/ImageView;

    sget v10, Lorg/telegram/messenger/R$drawable;->passcode_check:I

    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v5, v0, Lorg/telegram/ui/Components/PasscodeView;->checkImage:Landroid/widget/ImageView;

    sget-object v10, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v5, v0, Lorg/telegram/ui/Components/PasscodeView;->checkImage:Landroid/widget/ImageView;

    sget v13, Lorg/telegram/messenger/R$drawable;->bar_selector_lock:I

    invoke-virtual {v5, v13}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v5, v0, Lorg/telegram/ui/Components/PasscodeView;->passwordFrameLayout:Landroid/widget/FrameLayout;

    iget-object v14, v0, Lorg/telegram/ui/Components/PasscodeView;->checkImage:Landroid/widget/ImageView;

    const/high16 v20, 0x41200000    # 10.0f

    const/high16 v21, 0x40800000    # 4.0f

    const/16 v15, 0x3c

    const/high16 v16, 0x42700000    # 60.0f

    const/16 v17, 0x55

    const/16 v18, 0x0

    invoke-static/range {v15 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v15

    invoke-virtual {v5, v14, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, v0, Lorg/telegram/ui/Components/PasscodeView;->checkImage:Landroid/widget/ImageView;

    sget v14, Lorg/telegram/messenger/R$string;->Done:I

    invoke-static {v14}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v5, v0, Lorg/telegram/ui/Components/PasscodeView;->checkImage:Landroid/widget/ImageView;

    new-instance v14, Lorg/telegram/ui/Components/PasscodeView$$ExternalSyntheticLambda3;

    invoke-direct {v14, v0}, Lorg/telegram/ui/Components/PasscodeView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/PasscodeView;)V

    invoke-virtual {v5, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/Components/PasscodeView;->fingerprintImage:Landroid/widget/ImageView;

    sget v14, Lorg/telegram/messenger/R$drawable;->fingerprint:I

    invoke-virtual {v5, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v5, v0, Lorg/telegram/ui/Components/PasscodeView;->fingerprintImage:Landroid/widget/ImageView;

    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v5, v0, Lorg/telegram/ui/Components/PasscodeView;->fingerprintImage:Landroid/widget/ImageView;

    invoke-virtual {v5, v13}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v5, v0, Lorg/telegram/ui/Components/PasscodeView;->passwordFrameLayout:Landroid/widget/FrameLayout;

    iget-object v10, v0, Lorg/telegram/ui/Components/PasscodeView;->fingerprintImage:Landroid/widget/ImageView;

    const/high16 v19, 0x40800000    # 4.0f

    const/16 v13, 0x3c

    const/high16 v14, 0x42700000    # 60.0f

    const/16 v15, 0x53

    const/high16 v16, 0x41200000    # 10.0f

    const/16 v17, 0x0

    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v5, v10, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, v0, Lorg/telegram/ui/Components/PasscodeView;->fingerprintImage:Landroid/widget/ImageView;

    sget v10, Lorg/telegram/messenger/R$string;->AccDescrFingerprint:I

    invoke-static {v10}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v5, v0, Lorg/telegram/ui/Components/PasscodeView;->fingerprintImage:Landroid/widget/ImageView;

    new-instance v10, Lorg/telegram/ui/Components/PasscodeView$$ExternalSyntheticLambda4;

    invoke-direct {v10, v0}, Lorg/telegram/ui/Components/PasscodeView$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/PasscodeView;)V

    invoke-virtual {v5, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v5, Landroid/view/View;

    invoke-direct {v5, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/Components/PasscodeView;->border:Landroid/view/View;

    const v10, 0x30ffffff

    invoke-virtual {v5, v10}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v5, v0, Lorg/telegram/ui/Components/PasscodeView;->passwordFrameLayout:Landroid/widget/FrameLayout;

    iget-object v10, v0, Lorg/telegram/ui/Components/PasscodeView;->border:Landroid/view/View;

    sget v13, Lorg/telegram/messenger/AndroidUtilities;->density:F

    const/high16 v14, 0x3f800000    # 1.0f

    div-float/2addr v14, v13

    const/16 v13, 0x57

    invoke-static {v7, v14, v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(FFI)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v5, v10, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/FrameLayout;

    invoke-direct {v5, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/Components/PasscodeView;->numbersContainer:Landroid/widget/FrameLayout;

    iget-object v7, v0, Lorg/telegram/ui/Components/PasscodeView;->backgroundFrameLayout:Landroid/widget/FrameLayout;

    invoke-static {v6, v6, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v7, v5, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Lorg/telegram/ui/Components/PasscodeView$4;

    invoke-direct {v5, v0, v1}, Lorg/telegram/ui/Components/PasscodeView$4;-><init>(Lorg/telegram/ui/Components/PasscodeView;Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/Components/PasscodeView;->numbersFrameLayout:Landroid/widget/FrameLayout;

    iget-object v7, v0, Lorg/telegram/ui/Components/PasscodeView;->numbersContainer:Landroid/widget/FrameLayout;

    invoke-static {v11, v11, v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v7, v5, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/FrameLayout;

    invoke-direct {v5, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/Components/PasscodeView;->numbersTitleContainer:Landroid/widget/FrameLayout;

    iget-object v7, v0, Lorg/telegram/ui/Components/PasscodeView;->numbersFrameLayout:Landroid/widget/FrameLayout;

    const/16 v10, 0x31

    invoke-static {v11, v11, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v7, v5, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v4, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    sget v7, Lorg/telegram/messenger/R$string;->UnlockToUse:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, v0, Lorg/telegram/ui/Components/PasscodeView;->numbersTitleContainer:Landroid/widget/FrameLayout;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v9, -0x2

    const/high16 v10, -0x40000000    # -2.0f

    const/16 v11, 0x31

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v7, v5, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/Components/PasscodeView;->subtitleView:Landroid/widget/TextView;

    const/high16 v7, 0x41600000    # 14.0f

    invoke-virtual {v5, v4, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v4, v0, Lorg/telegram/ui/Components/PasscodeView;->subtitleView:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v4, v0, Lorg/telegram/ui/Components/PasscodeView;->subtitleView:Landroid/widget/TextView;

    sget v5, Lorg/telegram/messenger/R$string;->EnterPINorFingerprint:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v0, Lorg/telegram/ui/Components/PasscodeView;->numbersTitleContainer:Landroid/widget/FrameLayout;

    iget-object v5, v0, Lorg/telegram/ui/Components/PasscodeView;->subtitleView:Landroid/widget/TextView;

    const/4 v9, -0x2

    const/high16 v13, 0x41b80000    # 23.0f

    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, v0, Lorg/telegram/ui/Components/PasscodeView;->numberFrameLayouts:Ljava/util/ArrayList;

    const/4 v4, 0x0

    :goto_0
    const/16 v6, 0xc

    const/16 v7, 0xb

    if-ge v4, v6, :cond_5

    new-instance v6, Lorg/telegram/ui/Components/PasscodeView$PasscodeButton;

    invoke-direct {v6, v1}, Lorg/telegram/ui/Components/PasscodeView$PasscodeButton;-><init>(Landroid/content/Context;)V

    const v9, 0x3e19999a    # 0.15f

    const/high16 v10, 0x3fc00000    # 1.5f

    invoke-static {v6, v9, v10}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;FF)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const v9, 0x26ffffff

    const/high16 v10, 0x41f00000    # 30.0f

    if-ne v4, v7, :cond_1

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-static {v7, v3, v9}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    sget v7, Lorg/telegram/messenger/R$drawable;->filled_clear:I

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/PasscodeView$PasscodeButton;->setImage(I)V

    new-instance v7, Lorg/telegram/ui/Components/PasscodeView$$ExternalSyntheticLambda5;

    invoke-direct {v7, v0}, Lorg/telegram/ui/Components/PasscodeView$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/PasscodeView;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    sget v7, Lorg/telegram/messenger/R$string;->AccDescrBackspace:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    sget v7, Lorg/telegram/messenger/R$id;->passcode_btn_0:I

    :goto_1
    invoke-direct {v0, v6, v7}, Lorg/telegram/ui/Components/PasscodeView;->setNextFocus(Landroid/view/View;I)V

    goto :goto_2

    :cond_1
    if-ne v4, v5, :cond_2

    iput-object v6, v0, Lorg/telegram/ui/Components/PasscodeView;->fingerprintView:Lorg/telegram/ui/Components/PasscodeView$PasscodeButton;

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-static {v7, v3, v9}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    sget v7, Lorg/telegram/messenger/R$string;->AccDescrFingerprint:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    sget v7, Lorg/telegram/messenger/R$drawable;->fingerprint:I

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/PasscodeView$PasscodeButton;->setImage(I)V

    sget v7, Lorg/telegram/messenger/R$id;->passcode_btn_1:I

    goto :goto_1

    :cond_2
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    const v10, 0x4cffffff    # 1.3421772E8f

    invoke-static {v7, v9, v10}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ""

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v6, v4}, Lorg/telegram/ui/Components/PasscodeView$PasscodeButton;->setNum(I)V

    if-nez v4, :cond_3

    sget v7, Lorg/telegram/messenger/R$id;->passcode_btn_backspace:I

    goto :goto_1

    :cond_3
    const/16 v7, 0x9

    if-ne v4, v7, :cond_4

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/PasscodeView;->hasFingerprint()Z

    move-result v7

    if-eqz v7, :cond_0

    sget v7, Lorg/telegram/messenger/R$id;->passcode_btn_fingerprint:I

    goto :goto_1

    :cond_4
    sget-object v7, Lorg/telegram/ui/Components/PasscodeView;->ids:[I

    add-int/lit8 v9, v4, 0x1

    aget v7, v7, v9

    goto :goto_1

    :goto_2
    sget-object v7, Lorg/telegram/ui/Components/PasscodeView;->ids:[I

    aget v7, v7, v4

    invoke-virtual {v6, v7}, Landroid/view/View;->setId(I)V

    new-instance v7, Lorg/telegram/ui/Components/PasscodeView$$ExternalSyntheticLambda6;

    invoke-direct {v7, v0}, Lorg/telegram/ui/Components/PasscodeView$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/PasscodeView;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v7, v0, Lorg/telegram/ui/Components/PasscodeView;->numberFrameLayouts:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_5
    :goto_3
    if-ltz v7, :cond_6

    iget-object v1, v0, Lorg/telegram/ui/Components/PasscodeView;->numberFrameLayouts:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iget-object v3, v0, Lorg/telegram/ui/Components/PasscodeView;->numbersFrameLayout:Landroid/widget/FrameLayout;

    invoke-static {v2, v2, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v7, v7, -0x1

    goto :goto_3

    :cond_6
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/PasscodeView;->checkFingerprintButton()V

    return-void
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/PasscodeView;)Lorg/telegram/ui/Components/EditTextBoldCursor;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    return-object p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/PasscodeView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PasscodeView;->processDone(Z)V

    return-void
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/PasscodeView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/PasscodeView;->checkRetryTextView()V

    return-void
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/PasscodeView;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/PasscodeView;->checkRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/PasscodeView;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/PasscodeView;->passcodeTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/PasscodeView;)Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText2:Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;

    return-object p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Components/PasscodeView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PasscodeView;->showPin(Z)V

    return-void
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Components/PasscodeView;)Lorg/telegram/ui/Components/RLottieImageView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/PasscodeView;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    return-object p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Components/PasscodeView;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/PasscodeView;->innerAnimators:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Components/PasscodeView;)[I
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/PasscodeView;->pos:[I

    return-object p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/Components/PasscodeView;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/PasscodeView;->backgroundFrameLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/Components/PasscodeView;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/PasscodeView;->shownT:F

    return p0
.end method

.method static synthetic access$2502(Lorg/telegram/ui/Components/PasscodeView;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/PasscodeView;->shownT:F

    return p1
.end method

.method static synthetic access$2600(Lorg/telegram/ui/Components/PasscodeView;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/PasscodeView;->retryTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/Components/PasscodeView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/PasscodeView;->imageY:I

    return p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/PasscodeView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/PasscodeView;->checkTitle()V

    return-void
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/PasscodeView;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/PasscodeView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/PasscodeView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/PasscodeView;->keyboardHeight:I

    return p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/PasscodeView;Lorg/telegram/ui/Components/MotionBackgroundDrawable;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PasscodeView;->animateBackground(Lorg/telegram/ui/Components/MotionBackgroundDrawable;)V

    return-void
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/PasscodeView;)Ljava/util/LinkedList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/PasscodeView;->backgroundSpringQueue:Ljava/util/LinkedList;

    return-object p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/PasscodeView;)Ljava/util/LinkedList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/PasscodeView;->backgroundSpringNextQueue:Ljava/util/LinkedList;

    return-object p0
.end method

.method private animateBackground(Lorg/telegram/ui/Components/MotionBackgroundDrawable;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView;->backgroundAnimationSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView;->backgroundAnimationSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    :cond_0
    new-instance v0, Landroidx/dynamicanimation/animation/FloatValueHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/animation/FloatValueHolder;-><init>(F)V

    new-instance v1, Lorg/telegram/ui/Components/PasscodeView$$ExternalSyntheticLambda14;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/PasscodeView$$ExternalSyntheticLambda14;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setAnimationProgressProvider(Lorg/telegram/messenger/GenericProvider;)V

    new-instance v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-direct {v1, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    new-instance v0, Landroidx/dynamicanimation/animation/SpringForce;

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-direct {v0, v2}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    const/high16 v2, 0x43960000    # 300.0f

    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/PasscodeView;->backgroundAnimationSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v1, Lorg/telegram/ui/Components/PasscodeView$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/PasscodeView$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/Components/PasscodeView;Lorg/telegram/ui/Components/MotionBackgroundDrawable;)V

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView;->backgroundAnimationSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v1, Lorg/telegram/ui/Components/PasscodeView$$ExternalSyntheticLambda16;

    invoke-direct {v1, p1}, Lorg/telegram/ui/Components/PasscodeView$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/Components/MotionBackgroundDrawable;)V

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    iget-object p1, p0, Lorg/telegram/ui/Components/PasscodeView;->backgroundAnimationSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    return-void
.end method

.method private checkFingerprint()V
    .locals 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Components/PasscodeView;->fingerprintView:Lorg/telegram/ui/Components/PasscodeView$PasscodeButton;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    sget-boolean v1, Lorg/telegram/messenger/ApplicationLoader;->mainInterfacePaused:Z

    if-nez v1, :cond_2

    instance-of v1, v0, Lorg/telegram/ui/LaunchActivity;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {v0, p0}, Lorg/telegram/ui/LaunchActivity;->allowShowFingerprintDialog(Lorg/telegram/ui/Components/PasscodeView;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/biometric/BiometricManager;->from(Landroid/content/Context;)Landroidx/biometric/BiometricManager;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroidx/biometric/BiometricManager;->canAuthenticate(I)I

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lorg/telegram/messenger/FingerprintController;->isKeyReady()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lorg/telegram/messenger/FingerprintController;->checkDeviceFingerprintsChanged()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/content/ContextCompat;->getMainExecutor(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v2, Landroidx/biometric/BiometricPrompt;

    sget-object v3, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    new-instance v4, Lorg/telegram/ui/Components/PasscodeView$8;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Components/PasscodeView$8;-><init>(Lorg/telegram/ui/Components/PasscodeView;)V

    invoke-direct {v2, v3, v0, v4}, Landroidx/biometric/BiometricPrompt;-><init>(Landroidx/fragment/app/FragmentActivity;Ljava/util/concurrent/Executor;Landroidx/biometric/BiometricPrompt$AuthenticationCallback;)V

    new-instance v0, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;

    invoke-direct {v0}, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;-><init>()V

    sget v3, Lorg/telegram/messenger/R$string;->UnlockToUse:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/R$string;->UsePIN:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;->setNegativeButtonText(Ljava/lang/CharSequence;)Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;->setAllowedAuthenticators(I)Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;->build()Landroidx/biometric/BiometricPrompt$PromptInfo;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/biometric/BiometricPrompt;->authenticate(Landroidx/biometric/BiometricPrompt$PromptInfo;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/PasscodeView;->showPin(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private checkFingerprintButton()V
    .locals 6

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    const/4 v3, 0x1

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-lt v1, v2, :cond_1

    if-eqz v0, :cond_1

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->useFingerprintLock:Z

    if-eqz v0, :cond_1

    :try_start_0
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat;->from(Landroid/content/Context;)Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat;->isHardwareDetected()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat;->hasEnrolledFingerprints()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/telegram/messenger/FingerprintController;->isKeyReady()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/telegram/messenger/FingerprintController;->checkDeviceFingerprintsChanged()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView;->fingerprintView:Lorg/telegram/ui/Components/PasscodeView$PasscodeButton;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v5, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    const/4 v5, 0x1

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_2
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView;->fingerprintView:Lorg/telegram/ui/Components/PasscodeView$PasscodeButton;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView;->fingerprintView:Lorg/telegram/ui/Components/PasscodeView$PasscodeButton;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    sget v0, Lorg/telegram/messenger/SharedConfig;->passcodeType:I

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView;->fingerprintImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lorg/telegram/ui/Components/PasscodeView;->fingerprintView:Lorg/telegram/ui/Components/PasscodeView$PasscodeButton;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView;->subtitleView:Landroid/widget/TextView;

    if-eqz v5, :cond_3

    sget v1, Lorg/telegram/messenger/R$string;->EnterPINorFingerprint:I

    goto :goto_2

    :cond_3
    sget v1, Lorg/telegram/messenger/R$string;->EnterPIN:I

    :goto_2
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private checkRetryTextView()V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sget-wide v4, Lorg/telegram/messenger/SharedConfig;->lastUptimeMillis:J

    const-wide/16 v6, 0x0

    cmp-long v8, v2, v4

    if-lez v8, :cond_0

    sget-wide v4, Lorg/telegram/messenger/SharedConfig;->passcodeRetryInMs:J

    sget-wide v8, Lorg/telegram/messenger/SharedConfig;->lastUptimeMillis:J

    sub-long v8, v2, v8

    sub-long/2addr v4, v8

    sput-wide v4, Lorg/telegram/messenger/SharedConfig;->passcodeRetryInMs:J

    cmp-long v8, v4, v6

    if-gez v8, :cond_0

    sput-wide v6, Lorg/telegram/messenger/SharedConfig;->passcodeRetryInMs:J

    :cond_0
    sput-wide v2, Lorg/telegram/messenger/SharedConfig;->lastUptimeMillis:J

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->saveConfig()V

    sget-wide v2, Lorg/telegram/messenger/SharedConfig;->passcodeRetryInMs:J

    const/4 v4, 0x4

    cmp-long v5, v2, v6

    if-lez v5, :cond_3

    long-to-double v2, v2

    const-wide v5, 0x408f400000000000L    # 1000.0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v5

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v3, p0, Lorg/telegram/ui/Components/PasscodeView;->lastValue:I

    if-eq v2, v3, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/Components/PasscodeView;->retryTextView:Landroid/widget/TextView;

    sget v5, Lorg/telegram/messenger/R$string;->TooManyTries:I

    new-array v6, v0, [Ljava/lang/Object;

    const-string v7, "Seconds"

    invoke-static {v7, v2, v6}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v6, v1, v0

    invoke-static {v5, v1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput v2, p0, Lorg/telegram/ui/Components/PasscodeView;->lastValue:I

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/PasscodeView;->retryTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Components/PasscodeView;->retryTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/PasscodeView;->showPin(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView;->checkRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView;->checkRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x64

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/Components/PasscodeView;->checkRunnable:Ljava/lang/Runnable;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-object v2, p0, Lorg/telegram/ui/Components/PasscodeView;->retryTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/Components/PasscodeView;->retryTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/PasscodeView;->showPin(Z)V

    sget v0, Lorg/telegram/messenger/SharedConfig;->passcodeType:I

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    :cond_4
    :goto_0
    return-void
.end method

.method private checkTitle()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText2:Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->length()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Components/PasscodeView;->numbersTitleContainer:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v1, p0, Lorg/telegram/ui/Components/PasscodeView;->numbersTitleContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_2

    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    const/high16 v3, 0x3f800000    # 1.0f

    :goto_2
    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const v3, 0x3f4ccccd    # 0.8f

    if-eqz v0, :cond_3

    const v4, 0x3f4ccccd    # 0.8f

    goto :goto_3

    :cond_3
    const/high16 v4, 0x3f800000    # 1.0f

    :goto_3
    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    if-eqz v0, :cond_4

    const v2, 0x3f4ccccd    # 0.8f

    :cond_4
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x140

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_5
    return-void
.end method

.method private hasFingerprint()Z
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    const/4 v3, 0x0

    if-lt v1, v2, :cond_1

    if-eqz v0, :cond_1

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->useFingerprintLock:Z

    if-eqz v0, :cond_1

    :try_start_0
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat;->from(Landroid/content/Context;)Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat;->isHardwareDetected()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat;->hasEnrolledFingerprints()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/telegram/messenger/FingerprintController;->isKeyReady()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/telegram/messenger/FingerprintController;->checkDeviceFingerprintsChanged()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    return v3

    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_1
    return v3
.end method

.method private static synthetic lambda$animateBackground$7(Landroidx/dynamicanimation/animation/FloatValueHolder;Lorg/telegram/ui/Components/MotionBackgroundDrawable;)Ljava/lang/Float;
    .locals 0

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/FloatValueHolder;->getValue()F

    move-result p0

    const/high16 p1, 0x42c80000    # 100.0f

    div-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$animateBackground$8(Lorg/telegram/ui/Components/MotionBackgroundDrawable;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    const/4 p2, 0x0

    iput-object p2, p0, Lorg/telegram/ui/Components/PasscodeView;->backgroundAnimationSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setAnimationProgressProvider(Lorg/telegram/messenger/GenericProvider;)V

    if-nez p3, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setPosAnimationProgress(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/PasscodeView;->backgroundSpringQueue:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/PasscodeView;->backgroundSpringQueue:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    iget-object p1, p0, Lorg/telegram/ui/Components/PasscodeView;->backgroundSpringNextQueue:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private static synthetic lambda$animateBackground$9(Lorg/telegram/ui/Components/MotionBackgroundDrawable;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->updateAnimation(Z)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x6

    const/4 p3, 0x0

    if-ne p2, p1, :cond_0

    invoke-direct {p0, p3}, Lorg/telegram/ui/Components/PasscodeView;->processDone(Z)V

    const/4 p1, 0x1

    return p1

    :cond_0
    return p3
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PasscodeView;->processDone(Z)V

    return-void
.end method

.method private synthetic lambda$new$2(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/PasscodeView;->checkFingerprint()V

    return-void
.end method

.method private synthetic lambda$new$3(Landroid/view/View;)Z
    .locals 2

    iget-object p1, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText2:Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->access$1200(Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;Z)V

    iget-object p1, p0, Lorg/telegram/ui/Components/PasscodeView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, p1, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    if-eqz v1, :cond_0

    check-cast p1, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->switchToPrevPosition(Z)V

    :cond_0
    return v0
.end method

.method private synthetic lambda$new$4(ZLorg/telegram/ui/Components/MotionBackgroundDrawable;)V
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->switchToNextPosition(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->switchToPrevPosition(Z)V

    :goto_0
    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/PasscodeView;->animateBackground(Lorg/telegram/ui/Components/MotionBackgroundDrawable;)V

    return-void
.end method

.method private static synthetic lambda$new$5(Ljava/lang/Integer;Ljava/lang/Integer;)I
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sub-int/2addr p1, p0

    return p1
.end method

.method private synthetic lambda$new$6(Landroid/view/View;)V
    .locals 6

    iget-boolean v0, p0, Lorg/telegram/ui/Components/PasscodeView;->pinShown:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v1, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText2:Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->eraseLastCharacter()Z

    move-result v1

    goto :goto_2

    :pswitch_1
    invoke-direct {p0}, Lorg/telegram/ui/Components/PasscodeView;->checkFingerprint()V

    goto :goto_1

    :pswitch_2
    iget-object v1, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText2:Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;

    const-string v2, "9"

    :goto_0
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->appendCharacter(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_3
    iget-object v1, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText2:Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;

    const-string v2, "8"

    goto :goto_0

    :pswitch_4
    iget-object v1, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText2:Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;

    const-string v2, "7"

    goto :goto_0

    :pswitch_5
    iget-object v1, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText2:Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;

    const-string v2, "6"

    goto :goto_0

    :pswitch_6
    iget-object v1, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText2:Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;

    const-string v2, "5"

    goto :goto_0

    :pswitch_7
    iget-object v1, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText2:Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;

    const-string v2, "4"

    goto :goto_0

    :pswitch_8
    iget-object v1, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText2:Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;

    const-string v2, "3"

    goto :goto_0

    :pswitch_9
    iget-object v1, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText2:Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;

    const-string v2, "2"

    goto :goto_0

    :pswitch_a
    iget-object v1, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText2:Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;

    const-string v2, "1"

    goto :goto_0

    :pswitch_b
    iget-object v1, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText2:Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;

    const-string v2, "0"

    goto :goto_0

    :goto_1
    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText2:Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->length()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/PasscodeView;->processDone(Z)V

    :cond_1
    const/16 v2, 0xb

    if-ne p1, v2, :cond_2

    goto/16 :goto_8

    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Components/PasscodeView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v3, v2, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    if-eqz v3, :cond_9

    check-cast v2, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setAnimationProgressProvider(Lorg/telegram/messenger/GenericProvider;)V

    invoke-virtual {v2}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->getPosAnimationProgress()F

    move-result v3

    const/16 v4, 0xa

    const/4 v5, 0x1

    if-ne p1, v4, :cond_4

    if-eqz v1, :cond_3

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->switchToPrevPosition(Z)V

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    :goto_3
    const/4 p1, 0x0

    goto :goto_4

    :cond_4
    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->switchToNextPosition(Z)V

    const/4 p1, 0x1

    :goto_4
    if-eqz v5, :cond_9

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v3, v1

    if-ltz v1, :cond_5

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/PasscodeView;->animateBackground(Lorg/telegram/ui/Components/MotionBackgroundDrawable;)V

    goto/16 :goto_8

    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/Components/PasscodeView;->backgroundSpringQueue:Ljava/util/LinkedList;

    new-instance v3, Lorg/telegram/ui/Components/PasscodeView$$ExternalSyntheticLambda12;

    invoke-direct {v3, p0, p1, v2}, Lorg/telegram/ui/Components/PasscodeView$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/Components/PasscodeView;ZLorg/telegram/ui/Components/MotionBackgroundDrawable;)V

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/telegram/ui/Components/PasscodeView;->backgroundSpringNextQueue:Ljava/util/LinkedList;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_5
    iget-object v3, p0, Lorg/telegram/ui/Components/PasscodeView;->backgroundSpringQueue:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-ge v0, v3, :cond_7

    iget-object v3, p0, Lorg/telegram/ui/Components/PasscodeView;->backgroundSpringQueue:Ljava/util/LinkedList;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    iget-object v4, p0, Lorg/telegram/ui/Components/PasscodeView;->backgroundSpringNextQueue:Ljava/util/LinkedList;

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eq v4, p1, :cond_6

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_7
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    iget-object v1, p0, Lorg/telegram/ui/Components/PasscodeView;->backgroundSpringQueue:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_8
    new-instance p1, Lorg/telegram/ui/Components/PasscodeView$$ExternalSyntheticLambda13;

    invoke-direct {p1}, Lorg/telegram/ui/Components/PasscodeView$$ExternalSyntheticLambda13;-><init>()V

    invoke-static {v2, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/PasscodeView;->backgroundSpringNextQueue:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    goto :goto_7

    :cond_9
    :goto_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private synthetic lambda$onAttachedToWindow$13(Ljava/lang/Integer;)V
    .locals 8

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    sub-int/2addr p1, v1

    sget v1, Lorg/telegram/messenger/SharedConfig;->passcodeType:I

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    if-gt p1, v3, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v3, p1

    int-to-float v3, v3

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v3, v6

    iget-object v7, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    if-eqz v0, :cond_3

    const/high16 v6, 0x3f800000    # 1.0f

    :cond_3
    div-float/2addr v7, v6

    sub-float/2addr v3, v7

    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v3, v0

    :goto_1
    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v6, 0x140

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    if-gt p1, v2, :cond_4

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    :cond_5
    return-void
.end method

.method private synthetic lambda$onResume$12()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView;->retryTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    :cond_0
    return-void
.end method

.method private static synthetic lambda$onShow$15(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$processDone$10(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/PasscodeView;->shownT:F

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/PasscodeView;->onAnimationUpdate(F)V

    iget p1, p0, Lorg/telegram/ui/Components/PasscodeView;->shownT:F

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$processDone$11()V
    .locals 3

    iget v0, p0, Lorg/telegram/ui/Components/PasscodeView;->shownT:F

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x0

    const/4 v2, 0x1

    aput v0, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/PasscodeView$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/PasscodeView$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Components/PasscodeView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lorg/telegram/ui/Components/PasscodeView$5;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/PasscodeView$5;-><init>(Lorg/telegram/ui/Components/PasscodeView;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v1, 0x1a4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private synthetic lambda$showPin$14(Landroid/animation/ValueAnimator;)V
    .locals 5

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView;->numbersFrameLayout:Landroid/widget/FrameLayout;

    const v1, 0x3f4ccccd    # 0.8f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView;->numbersFrameLayout:Landroid/widget/FrameLayout;

    invoke-static {v1, v2, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView;->numbersFrameLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-static {v1, v2, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView;->passcodeTextView:Landroid/widget/TextView;

    const v3, 0x3f666666    # 0.9f

    invoke-static {v2, v3, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView;->passcodeTextView:Landroid/widget/TextView;

    invoke-static {v2, v3, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleY(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView;->passcodeTextView:Landroid/widget/TextView;

    invoke-static {v2, v1, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText2:Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;

    invoke-static {v1, v2, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private onPasscodeError()V
    .locals 2

    sget-object v0, Lorg/telegram/messenger/BotWebViewVibrationEffect;->NOTIFICATION_ERROR:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    invoke-virtual {v0}, Lorg/telegram/messenger/BotWebViewVibrationEffect;->vibrate()V

    const/high16 v0, 0x40000000    # 2.0f

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/PasscodeView;->shakeTextView(FI)V

    return-void
.end method

.method private processDone(Z)V
    .locals 6

    if-nez p1, :cond_7

    sget-wide v0, Lorg/telegram/messenger/SharedConfig;->passcodeRetryInMs:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    return-void

    :cond_0
    sget p1, Lorg/telegram/messenger/SharedConfig;->passcodeType:I

    const-string v0, ""

    const/4 v1, 0x1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText2:Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->getString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    if-ne p1, v1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    move-object p1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3

    invoke-direct {p0}, Lorg/telegram/ui/Components/PasscodeView;->onPasscodeError()V

    return-void

    :cond_3
    invoke-static {p1}, Lorg/telegram/messenger/SharedConfig;->checkPasscode(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_7

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->increaseBadPasscodeTries()V

    sget-wide v4, Lorg/telegram/messenger/SharedConfig;->passcodeRetryInMs:J

    cmp-long p1, v4, v2

    if-lez p1, :cond_4

    invoke-direct {p0}, Lorg/telegram/ui/Components/PasscodeView;->checkRetryTextView()V

    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText2:Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;

    invoke-static {p1, v1}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->access$1200(Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;Z)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/PasscodeView;->onPasscodeError()V

    iget-object p1, p0, Lorg/telegram/ui/Components/PasscodeView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, p1, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    if-eqz v0, :cond_6

    check-cast p1, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView;->backgroundAnimationSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setPosAnimationProgress(F)V

    :cond_5
    invoke-virtual {p1}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->getPosAnimationProgress()F

    move-result v0

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_6

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rotatePreview(Z)V

    :cond_6
    return-void

    :cond_7
    const/4 p1, 0x0

    sput p1, Lorg/telegram/messenger/SharedConfig;->badPasscodeTries:I

    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_8

    invoke-static {}, Lorg/telegram/messenger/FingerprintController;->isKeyReady()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lorg/telegram/messenger/FingerprintController;->checkDeviceFingerprintsChanged()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lorg/telegram/messenger/FingerprintController;->deleteInvalidKey()V

    :cond_8
    sput-boolean p1, Lorg/telegram/messenger/SharedConfig;->appLocked:Z

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->saveConfig()V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didSetPasscode:I

    new-array v2, p1, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView;->delegate:Lorg/telegram/ui/Components/PasscodeView$PasscodeViewDelegate;

    if-eqz v0, :cond_9

    invoke-interface {v0, p0}, Lorg/telegram/ui/Components/PasscodeView$PasscodeViewDelegate;->didAcceptedPassword(Lorg/telegram/ui/Components/PasscodeView;)V

    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->getAnimatedDrawable()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    const/16 v1, 0x47

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->getAnimatedDrawable()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    const/16 v1, 0x25

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZ)V

    iget-object p1, p0, Lorg/telegram/ui/Components/PasscodeView;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    new-instance p1, Lorg/telegram/ui/Components/PasscodeView$$ExternalSyntheticLambda9;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/PasscodeView$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Components/PasscodeView;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setNextFocus(Landroid/view/View;I)V
    .locals 2

    invoke-virtual {p1, p2}, Landroid/view/View;->setNextFocusForwardId(I)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_0

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/PasscodeView$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method private shakeTextView(FI)V
    .locals 0

    const/4 p1, 0x6

    if-ne p2, p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/PasscodeView;->numbersTitleContainer:Landroid/widget/FrameLayout;

    iget p2, p0, Lorg/telegram/ui/Components/PasscodeView;->shiftDp:I

    neg-int p2, p2

    iput p2, p0, Lorg/telegram/ui/Components/PasscodeView;->shiftDp:I

    int-to-float p2, p2

    invoke-static {p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;F)V

    return-void
.end method

.method private showPin(Z)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView;->pinAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/PasscodeView;->pinShown:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView;->numbersFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    if-eqz p1, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    aput v1, v2, v0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/PasscodeView;->pinAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Components/PasscodeView$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/PasscodeView$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Components/PasscodeView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView;->pinAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Components/PasscodeView$7;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/PasscodeView$7;-><init>(Lorg/telegram/ui/Components/PasscodeView;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/PasscodeView;->pinAnimator:Landroid/animation/ValueAnimator;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/PasscodeView;->pinAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x140

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lorg/telegram/ui/Components/PasscodeView;->pinAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->didGenerateFingerprintKeyPair:I

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/Components/PasscodeView;->checkFingerprintButton()V

    aget-object p1, p3, v0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->appLocked:Z

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lorg/telegram/ui/Components/PasscodeView;->checkFingerprint()V

    goto :goto_0

    :cond_0
    sget p2, Lorg/telegram/messenger/NotificationCenter;->passcodeDismissed:I

    if-ne p1, p2, :cond_1

    aget-object p1, p3, v0

    if-eq p1, p0, :cond_1

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onAnimationUpdate(F)V
    .locals 0

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didGenerateFingerprintKeyPair:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->passcodeDismissed:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView;->keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    new-instance v2, Lorg/telegram/ui/Components/PasscodeView$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/PasscodeView$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/PasscodeView;)V

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;-><init>(Landroid/view/View;Lorg/telegram/messenger/Utilities$Callback;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PasscodeView;->keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    :cond_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView;->keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->keyboardVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didGenerateFingerprintKeyPair:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->passcodeDismissed:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method protected onHidden()V
    .locals 0

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 7

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int/2addr v1, v2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getViewInset(Landroid/view/View;)I

    move-result v0

    sub-int/2addr v1, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView;->rect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView;->rect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v0

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/telegram/ui/Components/PasscodeView;->keyboardHeight:I

    sget v0, Lorg/telegram/messenger/SharedConfig;->passcodeType:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_3

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    iget v5, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    add-int/2addr v0, v5

    iget v5, p0, Lorg/telegram/ui/Components/PasscodeView;->keyboardHeight:I

    div-int/2addr v5, v1

    sub-int/2addr v0, v5

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v5, v6, :cond_2

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :cond_2
    sub-int/2addr v0, v3

    iput v0, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    iget-object p1, p0, Lorg/telegram/ui/Components/PasscodeView;->passcodeTextView:Landroid/widget/TextView;

    iget-object p2, p0, Lorg/telegram/ui/Components/PasscodeView;->pos:[I

    invoke-virtual {p1, p2}, Landroid/view/View;->getLocationInWindow([I)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result p1

    const/high16 p2, 0x42c80000    # 100.0f

    if-nez p1, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne p1, v1, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/Components/PasscodeView;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    iget-object p3, p0, Lorg/telegram/ui/Components/PasscodeView;->pos:[I

    aget p3, p3, v2

    :goto_1
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    sub-int/2addr p3, p2

    iput p3, p0, Lorg/telegram/ui/Components/PasscodeView;->imageY:I

    int-to-float p2, p3

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/PasscodeView;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    iget-object p3, p0, Lorg/telegram/ui/Components/PasscodeView;->pos:[I

    aget p3, p3, v2

    goto :goto_1

    :goto_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 18

    move-object/from16 v0, p0

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v3, v5, :cond_0

    const/4 v6, 0x0

    goto :goto_0

    :cond_0
    sget v6, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_0
    sub-int/2addr v2, v6

    const/high16 v6, 0x41e00000    # 28.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    const/high16 v7, 0x41800000    # 16.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    const/high16 v8, 0x42700000    # 60.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v9

    const/4 v10, 0x1

    const/4 v11, 0x2

    if-nez v9, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->orientation:I

    if-ne v9, v11, :cond_1

    const/4 v9, 0x1

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    :goto_1
    iget-object v12, v0, Lorg/telegram/ui/Components/PasscodeView;->border:Landroid/view/View;

    if-eqz v12, :cond_3

    sget v13, Lorg/telegram/messenger/SharedConfig;->passcodeType:I

    if-ne v13, v10, :cond_2

    const/4 v10, 0x0

    goto :goto_2

    :cond_2
    const/16 v10, 0x8

    :goto_2
    invoke-virtual {v12, v10}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    const/high16 v12, 0x42200000    # 40.0f

    const/high16 v13, 0x41e80000    # 29.0f

    const/high16 v14, 0x42a40000    # 82.0f

    const/high16 v15, 0x40000000    # 2.0f

    if-eqz v9, :cond_8

    iget-object v4, v0, Lorg/telegram/ui/Components/PasscodeView;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v16, Lorg/telegram/messenger/SharedConfig;->passcodeType:I

    int-to-float v10, v1

    if-nez v16, :cond_4

    div-float/2addr v10, v15

    :cond_4
    div-float/2addr v10, v15

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    int-to-float v13, v13

    sub-float/2addr v10, v13

    invoke-virtual {v4, v10}, Landroid/view/View;->setTranslationX(F)V

    iget-object v4, v0, Lorg/telegram/ui/Components/PasscodeView;->passwordFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    sget v10, Lorg/telegram/messenger/SharedConfig;->passcodeType:I

    if-nez v10, :cond_5

    div-int/lit8 v10, v1, 0x2

    goto :goto_3

    :cond_5
    move v10, v1

    :goto_3
    iput v10, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/high16 v10, 0x43340000    # 180.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    iput v10, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/high16 v10, 0x430c0000    # 140.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    sub-int v10, v2, v10

    div-int/2addr v10, v11

    sget v13, Lorg/telegram/messenger/SharedConfig;->passcodeType:I

    if-nez v13, :cond_6

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    goto :goto_4

    :cond_6
    const/4 v12, 0x0

    :goto_4
    add-int/2addr v10, v12

    iput v10, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v10, v0, Lorg/telegram/ui/Components/PasscodeView;->passwordFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v10, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, v0, Lorg/telegram/ui/Components/PasscodeView;->numbersContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    iput v2, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    div-int/2addr v1, v11

    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v2, v2

    if-lt v3, v5, :cond_7

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_5

    :cond_7
    const/4 v3, 0x0

    :goto_5
    add-int/2addr v2, v3

    iput v2, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object v1, v0, Lorg/telegram/ui/Components/PasscodeView;->numbersContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/PasscodeView;->numbersFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    mul-int/lit8 v3, v8, 0x4

    add-int/2addr v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v5

    mul-int v5, v5, v7

    add-int/2addr v2, v5

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    mul-int/lit8 v2, v8, 0x3

    invoke-static {v3, v11}, Ljava/lang/Math;->max(II)I

    move-result v4

    mul-int v4, v4, v6

    add-int/2addr v2, v4

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/16 v2, 0x11

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v2, v0, Lorg/telegram/ui/Components/PasscodeView;->numbersFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v12, 0x0

    goto/16 :goto_c

    :cond_8
    iget-object v3, v0, Lorg/telegram/ui/Components/PasscodeView;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    int-to-float v4, v1

    div-float/2addr v4, v15

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/view/View;->setTranslationX(F)V

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_b

    const/high16 v4, 0x43f90000    # 498.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    if-le v1, v5, :cond_9

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v1, v5

    div-int/2addr v1, v11

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    move/from16 v17, v4

    move v4, v1

    move/from16 v1, v17

    goto :goto_6

    :cond_9
    const/4 v4, 0x0

    :goto_6
    const/high16 v5, 0x44040000    # 528.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    if-le v2, v10, :cond_a

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v3, v2, 0x2

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    :cond_a
    move/from16 v17, v4

    move v4, v3

    move/from16 v3, v17

    goto :goto_7

    :cond_b
    move v4, v3

    const/4 v3, 0x0

    :goto_7
    iget-object v5, v0, Lorg/telegram/ui/Components/PasscodeView;->passwordFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    div-int/lit8 v10, v2, 0x3

    sget v13, Lorg/telegram/messenger/SharedConfig;->passcodeType:I

    if-nez v13, :cond_c

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    goto :goto_8

    :cond_c
    const/4 v12, 0x0

    :goto_8
    add-int/2addr v10, v12

    iput v10, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v1, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v4, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget-object v10, v0, Lorg/telegram/ui/Components/PasscodeView;->passwordFrameLayout:Landroid/widget/FrameLayout;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v4, v0, Lorg/telegram/ui/Components/PasscodeView;->passwordFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v4, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v5, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    add-int/2addr v4, v5

    iget-object v5, v0, Lorg/telegram/ui/Components/PasscodeView;->numbersFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    mul-int/lit8 v12, v8, 0x4

    add-int/2addr v10, v12

    const/4 v12, 0x0

    const/4 v13, 0x3

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v15

    mul-int v15, v15, v7

    add-int/2addr v10, v15

    iput v10, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    mul-int/lit8 v10, v8, 0x3

    invoke-static {v12, v11}, Ljava/lang/Math;->max(II)I

    move-result v13

    mul-int v13, v13, v6

    add-int/2addr v10, v13

    iput v10, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v10

    if-eqz v10, :cond_d

    const/16 v10, 0x11

    :goto_9
    iput v10, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_a

    :cond_d
    const/16 v10, 0x31

    goto :goto_9

    :goto_a
    iget-object v10, v0, Lorg/telegram/ui/Components/PasscodeView;->numbersFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v10, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v5, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    sub-int v5, v2, v5

    iget-object v10, v0, Lorg/telegram/ui/Components/PasscodeView;->numbersContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout$LayoutParams;

    iput v3, v10, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_e

    sub-int/2addr v2, v5

    div-int/2addr v2, v11

    iput v2, v10, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_b

    :cond_e
    iput v4, v10, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    :goto_b
    iput v1, v10, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/4 v1, -0x1

    iput v1, v10, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v1, v0, Lorg/telegram/ui/Components/PasscodeView;->numbersContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_c
    if-eqz v9, :cond_f

    const/high16 v14, 0x42500000    # 52.0f

    :cond_f
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/4 v4, 0x0

    :goto_d
    const/16 v2, 0xc

    if-ge v4, v2, :cond_13

    const/16 v2, 0xa

    if-nez v4, :cond_10

    goto :goto_e

    :cond_10
    const/16 v3, 0xb

    if-ne v4, v2, :cond_11

    const/16 v2, 0xb

    goto :goto_e

    :cond_11
    if-ne v4, v3, :cond_12

    const/16 v2, 0x9

    goto :goto_e

    :cond_12
    add-int/lit8 v2, v4, -0x1

    :goto_e
    div-int/lit8 v3, v2, 0x3

    const/4 v5, 0x3

    rem-int/2addr v2, v5

    iget-object v9, v0, Lorg/telegram/ui/Components/PasscodeView;->numberFrameLayouts:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/widget/FrameLayout;

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout$LayoutParams;

    add-int v11, v8, v7

    mul-int v11, v11, v3

    add-int/2addr v11, v1

    iput v11, v10, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int v3, v8, v6

    mul-int v3, v3, v2

    iput v3, v10, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v9, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_13
    invoke-super/range {p0 .. p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView;->checkRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-direct {p0}, Lorg/telegram/ui/Components/PasscodeView;->checkRetryTextView()V

    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView;->retryTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lorg/telegram/messenger/SharedConfig;->passcodeType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    :cond_0
    new-instance v0, Lorg/telegram/ui/Components/PasscodeView$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/PasscodeView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/PasscodeView;)V

    const-wide/16 v1, 0xc8

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/Components/PasscodeView;->checkFingerprint()V

    :cond_2
    return-void
.end method

.method public onShow(ZZ)V
    .locals 7

    .line 0
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Components/PasscodeView;->onShow(ZZIILjava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onShow(ZZIILjava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 15

    .line 0
    move-object v0, p0

    move-object/from16 v1, p5

    invoke-direct {p0}, Lorg/telegram/ui/Components/PasscodeView;->checkFingerprintButton()V

    invoke-direct {p0}, Lorg/telegram/ui/Components/PasscodeView;->checkRetryTextView()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/SharedConfig;->passcodeType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    if-nez p2, :cond_1

    iget-object v2, v0, Lorg/telegram/ui/Components/PasscodeView;->retryTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    iget-object v2, v0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->clearFocus()V

    invoke-virtual {v2}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    return-void

    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/view/View;->setTranslationY(F)V

    const/4 v3, 0x0

    iput-object v3, v0, Lorg/telegram/ui/Components/PasscodeView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    iput v3, v0, Lorg/telegram/ui/Components/PasscodeView;->backgroundFrameLayoutColor:I

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCachedWallpaper()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    instance-of v5, v5, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    const/high16 v6, 0x22000000

    const/high16 v7, -0x41000000    # -0.5f

    if-eqz v5, :cond_3

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v5

    xor-int/2addr v5, v4

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCachedWallpaper()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, v0, Lorg/telegram/ui/Components/PasscodeView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v8, v0, Lorg/telegram/ui/Components/PasscodeView;->backgroundFrameLayout:Landroid/widget/FrameLayout;

    iput v7, v0, Lorg/telegram/ui/Components/PasscodeView;->backgroundFrameLayoutColor:I

    invoke-virtual {v8, v7}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_5

    :cond_3
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCustomTheme()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getSelectedBackgroundSlug()Ljava/lang/String;

    move-result-object v5

    const-string v8, "CJz3BZ6YGEYBAAAABboWp6SAv04"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getSelectedBackgroundSlug()Ljava/lang/String;

    move-result-object v5

    const-string v8, "qeZWES8rGVIEAAAARfWlK1lnfiI"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCurrentGradientWallpaper()Lorg/telegram/ui/Components/BackgroundGradientDrawable;

    move-result-object v5

    iput-object v5, v0, Lorg/telegram/ui/Components/PasscodeView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_4

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCachedWallpaper()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, v0, Lorg/telegram/ui/Components/PasscodeView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    :cond_4
    iget-object v5, v0, Lorg/telegram/ui/Components/PasscodeView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v5, v5, Lorg/telegram/ui/Components/BackgroundGradientDrawable;

    if-eqz v5, :cond_8

    goto :goto_1

    :cond_5
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getSelectedBackgroundSlug()Ljava/lang/String;

    move-result-object v5

    const-string v8, "d"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isPatternWallpaper()Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_3

    :cond_6
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCachedWallpaper()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, v0, Lorg/telegram/ui/Components/PasscodeView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v8, v5, Lorg/telegram/ui/Components/BackgroundGradientDrawable;

    if-eqz v8, :cond_7

    :goto_1
    iget-object v5, v0, Lorg/telegram/ui/Components/PasscodeView;->backgroundFrameLayout:Landroid/widget/FrameLayout;

    iput v6, v0, Lorg/telegram/ui/Components/PasscodeView;->backgroundFrameLayoutColor:I

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_4

    :cond_7
    if-eqz v5, :cond_9

    :cond_8
    iget-object v5, v0, Lorg/telegram/ui/Components/PasscodeView;->backgroundFrameLayout:Landroid/widget/FrameLayout;

    :goto_2
    iput v7, v0, Lorg/telegram/ui/Components/PasscodeView;->backgroundFrameLayoutColor:I

    invoke-virtual {v5, v7}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_4

    :cond_9
    :goto_3
    iget-object v5, v0, Lorg/telegram/ui/Components/PasscodeView;->backgroundFrameLayout:Landroid/widget/FrameLayout;

    const v7, -0xae8362

    goto :goto_2

    :goto_4
    const/4 v5, 0x0

    :goto_5
    iget-object v7, v0, Lorg/telegram/ui/Components/PasscodeView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v8, v7, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    if-eqz v8, :cond_d

    check-cast v7, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->getColors()[I

    move-result-object v8

    if-eqz v5, :cond_b

    array-length v5, v8

    new-array v5, v5, [I

    const/4 v9, 0x0

    :goto_6
    array-length v10, v8

    if-ge v9, v10, :cond_a

    aget v10, v8, v9

    const v11, 0x3e0f5c29    # 0.14f

    invoke-static {v10, v11, v2}, Lorg/telegram/ui/ActionBar/Theme;->adaptHSV(IFF)I

    move-result v10

    aput v10, v5, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_a
    move-object v8, v5

    :cond_b
    new-instance v5, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    aget v10, v8, v3

    aget v11, v8, v4

    const/4 v9, 0x2

    aget v12, v8, v9

    const/4 v9, 0x3

    aget v13, v8, v9

    const/4 v14, 0x0

    move-object v9, v5

    invoke-direct/range {v9 .. v14}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;-><init>(IIIIZ)V

    iput-object v5, v0, Lorg/telegram/ui/Components/PasscodeView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->hasPattern()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-virtual {v7}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->getIntensity()I

    move-result v5

    if-gez v5, :cond_c

    iget-object v5, v0, Lorg/telegram/ui/Components/PasscodeView;->backgroundFrameLayout:Landroid/widget/FrameLayout;

    const/high16 v6, 0x7f000000

    :goto_7
    iput v6, v0, Lorg/telegram/ui/Components/PasscodeView;->backgroundFrameLayoutColor:I

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_8

    :cond_c
    iget-object v5, v0, Lorg/telegram/ui/Components/PasscodeView;->backgroundFrameLayout:Landroid/widget/FrameLayout;

    goto :goto_7

    :goto_8
    iget-object v5, v0, Lorg/telegram/ui/Components/PasscodeView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v5, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    iget-object v6, v0, Lorg/telegram/ui/Components/PasscodeView;->backgroundFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setParentView(Landroid/view/View;)V

    :cond_d
    iget-object v5, v0, Lorg/telegram/ui/Components/PasscodeView;->passcodeTextView:Landroid/widget/TextView;

    sget v6, Lorg/telegram/messenger/R$string;->AppLocked:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v5, Lorg/telegram/messenger/SharedConfig;->passcodeType:I

    const/16 v6, 0x8

    if-nez v5, :cond_f

    iget-object v4, v0, Lorg/telegram/ui/Components/PasscodeView;->retryTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_e

    iget-object v4, v0, Lorg/telegram/ui/Components/PasscodeView;->numbersFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_e
    iget-object v4, v0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, v0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText2:Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, v0, Lorg/telegram/ui/Components/PasscodeView;->checkImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v4, v0, Lorg/telegram/ui/Components/PasscodeView;->fingerprintImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_9

    :cond_f
    if-ne v5, v4, :cond_10

    iget-object v5, v0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-array v7, v3, [Landroid/text/InputFilter;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    iget-object v5, v0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/16 v7, 0x81

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setInputType(I)V

    iget-object v5, v0, Lorg/telegram/ui/Components/PasscodeView;->numbersFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, v0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v5, v4}, Landroid/view/View;->setFocusable(Z)V

    iget-object v5, v0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v5, v4}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object v4, v0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, v0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText2:Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, v0, Lorg/telegram/ui/Components/PasscodeView;->checkImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v4, v0, Lorg/telegram/ui/Components/PasscodeView;->fingerprintImage:Landroid/widget/ImageView;

    iget-object v5, v0, Lorg/telegram/ui/Components/PasscodeView;->fingerprintView:Lorg/telegram/ui/Components/PasscodeView$PasscodeButton;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_10
    :goto_9
    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, v0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    iget-object v4, v0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText2:Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;

    invoke-static {v4, v3}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->access$1200(Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;Z)V

    if-eqz p2, :cond_11

    invoke-virtual {p0, v2}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Components/PasscodeView$9;

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-direct {v3, p0, v4, v5, v1}, Lorg/telegram/ui/Components/PasscodeView$9;-><init>(Lorg/telegram/ui/Components/PasscodeView;IILjava/lang/Runnable;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    goto :goto_a

    :cond_11
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p0, v2}, Landroid/view/View;->setAlpha(F)V

    iput v2, v0, Lorg/telegram/ui/Components/PasscodeView;->shownT:F

    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/PasscodeView;->onAnimationUpdate(F)V

    iget-object v4, v0, Lorg/telegram/ui/Components/PasscodeView;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v4, v2}, Landroid/view/View;->setScaleX(F)V

    iget-object v4, v0, Lorg/telegram/ui/Components/PasscodeView;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v4, v2}, Landroid/view/View;->setScaleY(F)V

    iget-object v2, v0, Lorg/telegram/ui/Components/PasscodeView;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RLottieImageView;->stopAnimation()V

    iget-object v2, v0, Lorg/telegram/ui/Components/PasscodeView;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RLottieImageView;->getAnimatedDrawable()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v2

    const/16 v4, 0x26

    invoke-virtual {v2, v4, v3}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZ)V

    if-eqz v1, :cond_12

    invoke-interface/range {p5 .. p5}, Ljava/lang/Runnable;->run()V

    :cond_12
    :goto_a
    new-instance v1, Lorg/telegram/ui/Components/PasscodeView$$ExternalSyntheticLambda8;

    invoke-direct {v1}, Lorg/telegram/ui/Components/PasscodeView$$ExternalSyntheticLambda8;-><init>()V

    invoke-virtual {p0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Components/PasscodeView$PasscodeViewDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/PasscodeView;->delegate:Lorg/telegram/ui/Components/PasscodeView$PasscodeViewDelegate;

    return-void
.end method
