.class public abstract Lorg/telegram/ui/Stories/recorder/CaptionContainerView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Stories/recorder/CaptionContainerView$BounceableImageView;,
        Lorg/telegram/ui/Stories/recorder/CaptionContainerView$PeriodDrawable;
    }
.end annotation


# instance fields
.field public applyButton:Landroid/widget/ImageView;

.field private applyButtonCheck:Landroid/graphics/drawable/Drawable;

.field private applyButtonDrawable:Lorg/telegram/ui/Components/CombinedDrawable;

.field protected final backgroundBlur:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

.field protected final backgroundPaint:Landroid/graphics/Paint;

.field beforeScrollY:I

.field private blurBitmap:Landroid/graphics/Bitmap;

.field private blurBitmapMatrix:Landroid/graphics/Matrix;

.field private blurBitmapShader:Landroid/graphics/BitmapShader;

.field private final blurManager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

.field private blurPaint:Landroid/graphics/Paint;

.field private final bounce:Lorg/telegram/ui/Components/ButtonBounce;

.field public final bounds:Landroid/graphics/RectF;

.field protected final captionBlur:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

.field private final clickBounds:Landroid/graphics/RectF;

.field private codePointCount:I

.field private collapseGradient:Landroid/graphics/RadialGradient;

.field private collapseGradientMatrix:Landroid/graphics/Matrix;

.field private collapseOutGradient:Landroid/graphics/RadialGradient;

.field private collapseOutPaint:Landroid/graphics/Paint;

.field private collapsePaint:Landroid/graphics/Paint;

.field public collapsed:Z

.field public collapsedFromX:I

.field public final collapsedT:Lorg/telegram/ui/Components/AnimatedFloat;

.field private final containerView:Landroid/widget/FrameLayout;

.field protected currentAccount:I

.field private dialogId:J

.field public final editText:Lorg/telegram/ui/Components/EditTextEmoji;

.field private final fadeGradient:Landroid/graphics/LinearGradient;

.field private final fadePaint:Landroid/graphics/Paint;

.field private getUiBlurBitmap:Lorg/telegram/messenger/Utilities$CallbackVoidReturn;

.field goingToScrollY:I

.field private hasReply:Z

.field private final heightAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

.field private hintTextBitmap:Landroid/graphics/Bitmap;

.field private final hintTextBitmapPaint:Landroid/graphics/Paint;

.field private final hintTextPaint:Landroid/text/TextPaint;

.field private ignoreDraw:Z

.field private ignoreTextChange:Z

.field public ignoreTouches:Z

.field private keyboardAnimator:Landroid/animation/ValueAnimator;

.field public final keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

.field public keyboardShown:Z

.field public keyboardT:F

.field private lastHeight:I

.field private lastHeightTranslation:F

.field public limitTextContainer:Landroid/widget/FrameLayout;

.field public limitTextView:Lorg/telegram/ui/Components/AnimatedTextView;

.field private final matrix:Landroid/graphics/Matrix;

.field private mentionBackgroundBlur:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

.field public mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

.field private onHeightUpdate:Lorg/telegram/messenger/Utilities$Callback;

.field private onKeyboardOpen:Lorg/telegram/messenger/Utilities$Callback;

.field parentKeyboardAnimator:Landroid/animation/ObjectAnimator;

.field private final rectF:Landroid/graphics/RectF;

.field protected final replyBackgroundBlur:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

.field private replyClipPath:Landroid/graphics/Path;

.field private replyLinePaint:Landroid/graphics/Paint;

.field private replyLinePath:Landroid/graphics/Path;

.field private replyLinePathRadii:[F

.field private replyText:Lorg/telegram/ui/Components/Text;

.field protected final replyTextBlur:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

.field private replyTitle:Lorg/telegram/ui/Components/Text;

.field protected resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private final rootView:Landroid/widget/FrameLayout;

.field private scrollAnimator:Landroid/animation/ObjectAnimator;

.field private shiftDp:I

.field private final sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

.field private final textChangeRunnable:Ljava/lang/Runnable;

.field public toKeyboardShow:Z

.field private updateShowKeyboard:Ljava/lang/Runnable;

.field waitingForScrollYChange:Z


# direct methods
.method public static synthetic $r8$lambda$6dlvyo-L0dWTlYhKTzZ64DbL3Po(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$COvKjtoO1oTZZYcVT8CGOK_z6hI(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->lambda$updateShowKeyboard$3(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$X1CBbNn3fjSzpbpV-Cf-3XJF5ME(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->lambda$new$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$ZZBQ4US3-vnL-6PshMFYpaSUJ4g(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kcmK-ovrL0FE1ULmb9348AqtDP8(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;Landroid/graphics/Canvas;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->drawHint(Landroid/graphics/Canvas;Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/FrameLayout;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/BlurringShader$BlurManager;)V
    .locals 32

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v7, p2

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v8, Landroid/graphics/Paint;

    const/4 v13, 0x1

    invoke-direct {v8, v13}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v8, v9, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->backgroundPaint:Landroid/graphics/Paint;

    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14, v13}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v14, v9, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->fadePaint:Landroid/graphics/Paint;

    new-instance v6, Landroid/graphics/LinearGradient;

    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, -0x10000

    const/4 v4, 0x0

    filled-new-array {v1, v4}, [I

    move-result-object v20

    const v5, 0x3d4ccccd    # 0.05f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x2

    new-array v1, v3, [F

    fill-array-data v1, :array_0

    sget-object v22, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v16, 0x0

    move-object v15, v6

    move/from16 v19, v0

    move-object/from16 v21, v1

    invoke-direct/range {v15 .. v22}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v6, v9, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->fadeGradient:Landroid/graphics/LinearGradient;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, v9, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->matrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, v9, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->hintTextPaint:Landroid/text/TextPaint;

    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v15, v9, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->hintTextBitmapPaint:Landroid/graphics/Paint;

    const/4 v0, -0x4

    iput v0, v9, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->shiftDp:I

    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v0, v9, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->currentAccount:I

    new-instance v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$$ExternalSyntheticLambda0;

    invoke-direct {v0, v9}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;)V

    iput-object v0, v9, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->textChangeRunnable:Ljava/lang/Runnable;

    new-instance v0, Lorg/telegram/ui/Components/ButtonBounce;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-direct {v0, v9, v2, v1}, Lorg/telegram/ui/Components/ButtonBounce;-><init>(Landroid/view/View;FF)V

    iput-object v0, v9, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    new-instance v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$$ExternalSyntheticLambda1;

    invoke-direct {v0, v9}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;)V

    iput-object v0, v9, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->updateShowKeyboard:Ljava/lang/Runnable;

    new-instance v1, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x12c

    move-object/from16 v22, v0

    move-object v0, v1

    move-object v13, v1

    move-object/from16 v1, p0

    const/16 v21, 0x2

    const/high16 v23, 0x3f800000    # 1.0f

    move-wide/from16 v2, v16

    move-wide/from16 v4, v18

    move-object/from16 v24, v6

    move-object/from16 v6, v22

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v13, v9, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->heightAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 v13, 0x0

    iput-boolean v13, v9, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->ignoreDraw:Z

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, v9, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->rectF:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, v9, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounds:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, v9, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->clickBounds:Landroid/graphics/RectF;

    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    const-wide/16 v1, 0x1f4

    invoke-direct {v0, v9, v1, v2, v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JLandroid/animation/TimeInterpolator;)V

    iput-object v0, v9, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->collapsedT:Lorg/telegram/ui/Components/AnimatedFloat;

    iput-object v11, v9, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iput-object v7, v9, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->rootView:Landroid/widget/FrameLayout;

    move-object/from16 v3, p3

    iput-object v3, v9, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    move-object/from16 v0, p4

    iput-object v0, v9, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->containerView:Landroid/widget/FrameLayout;

    iput-object v12, v9, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurManager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    new-instance v0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->customBlur()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-direct {v0, v12, v9, v13, v1}, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;-><init>(Lorg/telegram/ui/Components/BlurringShader$BlurManager;Landroid/view/View;IZ)V

    iput-object v0, v9, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->backgroundBlur:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    new-instance v0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    const/16 v5, 0x8

    invoke-direct {v0, v12, v9, v5}, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;-><init>(Lorg/telegram/ui/Components/BlurringShader$BlurManager;Landroid/view/View;I)V

    iput-object v0, v9, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->replyBackgroundBlur:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    new-instance v0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    const/16 v1, 0x9

    invoke-direct {v0, v12, v9, v1}, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;-><init>(Lorg/telegram/ui/Components/BlurringShader$BlurManager;Landroid/view/View;I)V

    iput-object v0, v9, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->replyTextBlur:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    const/high16 v0, -0x80000000

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$$ExternalSyntheticLambda2;

    invoke-direct {v1, v9}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;)V

    invoke-direct {v0, v7, v1}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;-><init>(Landroid/view/View;Lorg/telegram/messenger/Utilities$Callback;)V

    iput-object v0, v9, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    new-instance v8, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$1;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->getEditTextStyle()I

    move-result v7

    new-instance v16, Lorg/telegram/ui/Stories/DarkThemeResourceProvider;

    invoke-direct/range {v16 .. v16}, Lorg/telegram/ui/Stories/DarkThemeResourceProvider;-><init>()V

    const/4 v4, 0x0

    const/16 v17, 0x1

    move-object v0, v8

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v5, v7

    move/from16 v6, v17

    move-object/from16 v7, v16

    move-object v13, v8

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$1;-><init>(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;Landroid/content/Context;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/ActionBar/BaseFragment;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/BlurringShader$BlurManager;)V

    iput-object v13, v9, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    const/4 v0, 0x1

    invoke-virtual {v13, v0}, Lorg/telegram/ui/Components/EditTextEmoji;->setFocusable(Z)V

    invoke-virtual {v13, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    invoke-virtual {v13}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v1

    iput-boolean v0, v1, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintLayoutYFix:Z

    invoke-virtual {v13}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$$ExternalSyntheticLambda3;

    invoke-direct {v2, v9}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;)V

    iput-object v2, v1, Lorg/telegram/ui/Components/EditTextBoldCursor;->drawHint:Lorg/telegram/messenger/Utilities$Callback2;

    invoke-virtual {v13}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSupportRtlHint(Z)V

    new-instance v0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    invoke-virtual {v13}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->customBlur()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    :goto_0
    invoke-direct {v0, v12, v1, v3}, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;-><init>(Lorg/telegram/ui/Components/BlurringShader$BlurManager;Landroid/view/View;I)V

    iput-object v0, v9, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->captionBlur:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    invoke-virtual {v13}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextCaption;->setHintColor(I)V

    invoke-virtual {v13}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/R$string;->AddCaption:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHintText(Ljava/lang/CharSequence;Z)V

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {v13}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    const/high16 v2, -0x3e500000    # -22.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->isAtTop()Z

    move-result v0

    const/16 v2, 0x30

    if-eqz v0, :cond_1

    invoke-virtual {v13}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    :cond_1
    invoke-virtual {v13}, Lorg/telegram/ui/Components/EditTextEmoji;->getEmojiButton()Landroid/view/View;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v13}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    new-instance v4, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$2;

    invoke-direct {v4, v9}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$2;-><init>(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;)V

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {v13}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLinkTextColor(I)V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->isAtTop()Z

    move-result v0

    const/16 v4, 0x50

    if-eqz v0, :cond_2

    const/16 v0, 0x30

    goto :goto_1

    :cond_2
    const/16 v0, 0x50

    :goto_1
    or-int/lit8 v27, v0, 0x7

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->additionalRightMargin()I

    move-result v0

    add-int/lit8 v0, v0, 0xc

    int-to-float v0, v0

    const/high16 v29, 0x41400000    # 12.0f

    const/high16 v31, 0x41400000    # 12.0f

    const/16 v25, -0x1

    const/high16 v26, -0x40000000    # -2.0f

    const/high16 v28, 0x41400000    # 12.0f

    move/from16 v30, v0

    invoke-static/range {v25 .. v31}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v9, v13, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$BounceableImageView;

    invoke-direct {v0, v10}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$BounceableImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, v9, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->applyButton:Landroid/widget/ImageView;

    const/high16 v5, 0x3fa00000    # 1.25f

    const v6, 0x3d4ccccd    # 0.05f

    invoke-static {v0, v6, v5}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;FF)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lorg/telegram/messenger/R$drawable;->input_done:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v9, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->applyButtonCheck:Landroid/graphics/drawable/Drawable;

    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_dialogFloatingIcon:I

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    new-instance v0, Lorg/telegram/ui/Components/CombinedDrawable;

    const/high16 v5, 0x41800000    # 16.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_editMediaButton:I

    invoke-static {v6, v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v6

    invoke-static {v5, v6}, Lorg/telegram/ui/ActionBar/Theme;->createCircleDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v5

    iget-object v6, v9, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->applyButtonCheck:Landroid/graphics/drawable/Drawable;

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    const/4 v8, 0x0

    invoke-direct {v0, v5, v6, v8, v7}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    iput-object v0, v9, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->applyButtonDrawable:Lorg/telegram/ui/Components/CombinedDrawable;

    const/high16 v5, 0x42000000    # 32.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v0, v6, v5}, Lorg/telegram/ui/Components/CombinedDrawable;->setCustomSize(II)V

    iget-object v0, v9, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->applyButton:Landroid/widget/ImageView;

    iget-object v5, v9, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->applyButtonDrawable:Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v9, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->applyButton:Landroid/widget/ImageView;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, v9, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->applyButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, v9, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->applyButton:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v9, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->applyButton:Landroid/widget/ImageView;

    new-instance v3, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$$ExternalSyntheticLambda4;

    invoke-direct {v3, v9}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v9, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->applyButton:Landroid/widget/ImageView;

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, v9, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->applyButton:Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->isAtTop()Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x30

    goto :goto_2

    :cond_3
    const/16 v3, 0x50

    :goto_2
    or-int/lit8 v3, v3, 0x5

    const/16 v5, 0x2c

    invoke-static {v5, v5, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v9, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/Components/AnimatedTextView;

    const/4 v3, 0x1

    const/4 v5, 0x0

    invoke-direct {v0, v10, v5, v3, v3}, Lorg/telegram/ui/Components/AnimatedTextView;-><init>(Landroid/content/Context;ZZZ)V

    iput-object v0, v9, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->limitTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/16 v3, 0x11

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/AnimatedTextView;->setGravity(I)V

    iget-object v0, v9, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->limitTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/high16 v3, 0x41700000    # 15.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextSize(F)V

    iget-object v0, v9, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->limitTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    iget-object v0, v9, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->limitTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x140

    const v17, 0x3ecccccd    # 0.4f

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v22}, Lorg/telegram/ui/Components/AnimatedTextView;->setAnimationProperties(FJJLandroid/animation/TimeInterpolator;)V

    iget-object v0, v9, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->limitTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView;->setTypeface(Landroid/graphics/Typeface;)V

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v10}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v9, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->limitTextContainer:Landroid/widget/FrameLayout;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, v9, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->limitTextContainer:Landroid/widget/FrameLayout;

    iget-object v1, v9, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->limitTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->isAtTop()Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0x30

    goto :goto_3

    :cond_4
    const/16 v3, 0x50

    :goto_3
    or-int/lit8 v3, v3, 0x5

    const/16 v6, 0x34

    const/16 v7, 0x10

    invoke-static {v6, v7, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v9, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->limitTextContainer:Landroid/widget/FrameLayout;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->isAtTop()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_4

    :cond_5
    const/16 v2, 0x50

    :goto_4
    or-int/lit8 v17, v2, 0x5

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->isAtTop()Z

    move-result v1

    const/16 v4, 0x32

    if-eqz v1, :cond_6

    const/16 v1, 0x32

    goto :goto_5

    :cond_6
    const/4 v1, 0x0

    :goto_5
    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->isAtTop()Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v4, 0x0

    :cond_7
    int-to-float v2, v4

    const/16 v15, 0x34

    const/high16 v16, 0x41800000    # 16.0f

    const/16 v18, 0x0

    const/16 v20, 0x0

    move/from16 v19, v1

    move/from16 v21, v2

    invoke-static/range {v15 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void

    :array_0
    .array-data 4
        0x3d4ccccd    # 0.05f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$000(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;)Landroid/graphics/RectF;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->rectF:Landroid/graphics/RectF;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;Landroid/graphics/Canvas;Landroid/graphics/RectF;FFLandroid/view/View;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFLandroid/view/View;)V

    return-void
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;IILjava/lang/CharSequence;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->replaceWithText(IILjava/lang/CharSequence;Z)V

    return-void
.end method

.method static synthetic access$200(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;)Landroid/animation/ObjectAnimator;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->scrollAnimator:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method static synthetic access$202(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->scrollAnimator:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic access$300(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->createMentionsContainer()V

    return-void
.end method

.method static synthetic access$400(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;)J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->dialogId:J

    return-wide v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->codePointCount:I

    return p0
.end method

.method static synthetic access$502(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->codePointCount:I

    return p1
.end method

.method static synthetic access$600(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->shiftDp:I

    return p0
.end method

.method static synthetic access$602(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->shiftDp:I

    return p1
.end method

.method static synthetic access$700(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->ignoreTextChange:Z

    return p0
.end method

.method static synthetic access$702(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->ignoreTextChange:Z

    return p1
.end method

.method static synthetic access$800(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->textChangeRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;)Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->mentionBackgroundBlur:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    return-object p0
.end method

.method private animateScrollTo(Z)V
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->scrollAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    const/4 v3, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EditTextEmoji;->length()I

    move-result v4

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/EditTextEmoji;->setSelection(I)V

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v2

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setForceCursorEnd(Z)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    if-eqz p1, :cond_3

    sub-int v3, v2, v4

    :cond_3
    filled-new-array {v1, v3}, [I

    move-result-object p1

    const-string v1, "scrollY"

    invoke-static {v0, v1, p1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->scrollAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0x168

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->scrollAnimator:Landroid/animation/ObjectAnimator;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->scrollAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    :cond_4
    :goto_1
    return-void
.end method

.method private createMentionsContainer()V
    .locals 11

    new-instance v10, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$3;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v3

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v7

    new-instance v9, Lorg/telegram/ui/Stories/DarkThemeResourceProvider;

    invoke-direct {v9}, Lorg/telegram/ui/Stories/DarkThemeResourceProvider;-><init>()V

    const-wide/16 v5, 0x0

    const/4 v8, 0x0

    move-object v0, v10

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$3;-><init>(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;Landroid/content/Context;JJLorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v10, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    new-instance v0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurManager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v10, v2}, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;-><init>(Lorg/telegram/ui/Components/BlurringShader$BlurManager;Landroid/view/View;I)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->mentionBackgroundBlur:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$4;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$4;-><init>(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/MentionsContainerView;->withDelegate(Lorg/telegram/ui/Components/MentionsContainerView$Delegate;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->containerView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    const/4 v2, -0x1

    const/16 v3, 0x53

    invoke-static {v2, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->setupMentionContainer()V

    return-void
.end method

.method private drawBackground(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFLandroid/view/View;)V
    .locals 5

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardT:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurBitmapShader:Landroid/graphics/BitmapShader;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurBitmapMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurBitmapMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->rootView:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->rootView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x8

    if-ge v0, v3, :cond_1

    if-eqz p5, :cond_1

    invoke-virtual {p5}, Landroid/view/View;->getX()F

    move-result v3

    add-float/2addr v1, v3

    invoke-virtual {p5}, Landroid/view/View;->getY()F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {p5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p5

    instance-of v3, p5, Landroid/view/View;

    if-eqz v3, :cond_0

    check-cast p5, Landroid/view/View;

    goto :goto_1

    :cond_0
    const/4 p5, 0x0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object p5, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurBitmapMatrix:Landroid/graphics/Matrix;

    neg-float v0, v1

    neg-float v1, v2

    invoke-virtual {p5, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object p5, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurBitmapShader:Landroid/graphics/BitmapShader;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurBitmapMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p5, v0}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object p5, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurPaint:Landroid/graphics/Paint;

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardT:F

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float v0, v0, v1

    mul-float v0, v0, p4

    float-to-int v0, v0

    invoke-virtual {p5, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p5, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p3, p5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_2
    iget-object p5, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->backgroundPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_3

    const/high16 p4, 0x43000000    # 128.0f

    goto :goto_2

    :cond_3
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardT:F

    const/16 v1, 0x80

    const/16 v2, 0x99

    invoke-static {v1, v2, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v0

    int-to-float v0, v0

    mul-float p4, p4, v0

    :goto_2
    float-to-int p4, p4

    invoke-virtual {p5, p4}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p4, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p3, p4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawHint(Landroid/graphics/Canvas;Ljava/lang/Runnable;)V
    .locals 11

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->customBlur()Z

    move-result v0

    const/high16 v7, 0x3f800000    # 1.0f

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->hintTextBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v8

    iget v0, v8, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintLayoutX:F

    neg-float v0, v0

    const/4 v10, 0x0

    invoke-virtual {p1, v0, v10}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->hintTextBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v3, v0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->hintTextBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v4, v0

    const/16 v5, 0xff

    const/16 v6, 0x1f

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->rectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->hintTextBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->hintTextBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    invoke-virtual {v0, v10, v7, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->captionBlur:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->rectF:Landroid/graphics/RectF;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    neg-float v0, v0

    invoke-virtual {v8}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float v6, v0, v2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    neg-float v0, v0

    invoke-virtual {v8}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    invoke-virtual {v8}, Lorg/telegram/ui/Components/EditTextBoldCursor;->getExtendedPaddingTop()I

    move-result v2

    int-to-float v2, v2

    sub-float v7, v0, v2

    const/4 v8, 0x1

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v9}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->drawBlur(Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;Landroid/graphics/Canvas;Landroid/graphics/RectF;FZFFZF)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->hintTextBitmapPaint:Landroid/graphics/Paint;

    const/16 v1, 0xa5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->hintTextBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->hintTextBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v10, v10, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->captionBlur:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    invoke-virtual {v0, v7}, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->getPaint(F)Landroid/graphics/Paint;

    move-result-object v7

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    if-eqz v7, :cond_2

    const/4 v1, -0x1

    goto :goto_0

    :cond_2
    const v1, -0x7f000001

    :goto_0
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextCaption;->setHintColor(I)V

    if-nez v7, :cond_3

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v4, v0

    const/16 v5, 0xff

    const/16 v6, 0x1f

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v4, v0

    move-object v0, p1

    move-object v5, v7

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :goto_1
    return-void
.end method

.method private drawReply(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    iget-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->hasReply:Z

    if-eqz v1, :cond_a

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->replyBackgroundBlur:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    if-eqz v1, :cond_a

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->replyTextBlur:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    if-nez v1, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->collapsed:Z

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardShown:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounds:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    const/high16 v3, 0x42380000    # 46.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    :goto_0
    int-to-float v3, v3

    sub-float/2addr v1, v3

    goto :goto_1

    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounds:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    const/high16 v3, 0x42a40000    # 82.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_0

    :goto_1
    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->collapsedT:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x42480000    # 50.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v1, v3

    move v9, v1

    move v10, v2

    goto :goto_2

    :cond_2
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounds:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    move v9, v1

    const/high16 v10, 0x3f800000    # 1.0f

    :goto_2
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->replyBackgroundBlur:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    invoke-virtual {v1, v10}, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->getPaint(F)Landroid/graphics/Paint;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->replyTextBlur:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    invoke-virtual {v2, v10}, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->getPaint(F)Landroid/graphics/Paint;

    move-result-object v11

    sget-object v12, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v2, v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v9

    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounds:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v5, v3

    const/high16 v3, 0x42500000    # 52.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v9

    invoke-virtual {v12, v2, v4, v5, v3}, Landroid/graphics/RectF;->set(FFFF)V

    const/high16 v13, 0x40a00000    # 5.0f

    if-eqz v1, :cond_3

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v8, v12, v2, v3, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_3
    if-eqz v11, :cond_4

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounds:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v3, v1, Landroid/graphics/RectF;->top:F

    iget v4, v1, Landroid/graphics/RectF;->right:F

    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    const/16 v6, 0xff

    const/16 v7, 0x1f

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    :cond_4
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->replyClipPath:Landroid/graphics/Path;

    if-nez v1, :cond_5

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->replyClipPath:Landroid/graphics/Path;

    goto :goto_3

    :cond_5
    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    :goto_3
    const/high16 v1, 0x41a80000    # 21.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iget v2, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardT:F

    const/4 v7, 0x0

    invoke-static {v1, v7, v2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->replyClipPath:Landroid/graphics/Path;

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounds:Landroid/graphics/RectF;

    sget-object v14, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v3, v1, v1, v14}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->replyClipPath:Landroid/graphics/Path;

    invoke-virtual {v8, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->replyTitle:Lorg/telegram/ui/Components/Text;

    const/high16 v15, 0x41a00000    # 20.0f

    const/high16 v16, 0x42200000    # 40.0f

    if-eqz v1, :cond_6

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/Text;->ellipsize(F)Lorg/telegram/ui/Components/Text;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v2

    const/high16 v2, 0x41b00000    # 22.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float v4, v9, v2

    const/4 v5, -0x1

    const/high16 v6, 0x3f800000    # 1.0f

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Components/Text;->draw(Landroid/graphics/Canvas;FFIF)V

    :cond_6
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->replyLinePath:Landroid/graphics/Path;

    if-nez v1, :cond_7

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->replyLinePath:Landroid/graphics/Path;

    const/16 v1, 0x8

    new-array v1, v1, [F

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->replyLinePathRadii:[F

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x1

    aput v2, v1, v3

    aput v2, v1, v7

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->replyLinePathRadii:[F

    const/4 v2, 0x3

    const/4 v3, 0x0

    aput v3, v1, v2

    const/4 v2, 0x2

    aput v3, v1, v2

    const/4 v2, 0x5

    aput v3, v1, v2

    const/4 v2, 0x4

    aput v3, v1, v2

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x7

    aput v2, v1, v3

    const/4 v3, 0x6

    aput v2, v1, v3

    goto :goto_4

    :cond_7
    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    :goto_4
    iget v1, v12, Landroid/graphics/RectF;->left:F

    iget v2, v12, Landroid/graphics/RectF;->top:F

    const/high16 v3, 0x40400000    # 3.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v1

    iget v4, v12, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v12, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->replyLinePath:Landroid/graphics/Path;

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->replyLinePathRadii:[F

    invoke-virtual {v1, v12, v2, v14}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->replyLinePaint:Landroid/graphics/Paint;

    if-nez v1, :cond_8

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->replyLinePaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    :cond_8
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->replyLinePaint:Landroid/graphics/Paint;

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float v10, v10, v2

    float-to-int v2, v10

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->replyLinePath:Landroid/graphics/Path;

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->replyLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-eqz v11, :cond_9

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v8, v1, v11}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_9
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->replyText:Lorg/telegram/ui/Components/Text;

    if-eqz v1, :cond_a

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/Text;->ellipsize(F)Lorg/telegram/ui/Components/Text;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v2

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float v4, v9, v2

    const/4 v5, -0x1

    const/high16 v6, 0x3f800000    # 1.0f

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Components/Text;->draw(Landroid/graphics/Canvas;FFIF)V

    :cond_a
    :goto_5
    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->closeKeyboard()V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->textChangeRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->textChangeRunnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 0

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->onTextChange()V

    return-void
.end method

.method private synthetic lambda$new$2()V
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->toKeyboardShow:Z

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->updateShowKeyboard(ZZ)V

    return-void
.end method

.method private synthetic lambda$updateShowKeyboard$3(Landroid/animation/ValueAnimator;)V
    .locals 5

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardT:F

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object p1

    const/high16 v0, -0x3e500000    # -22.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->getEditTextLeft()I

    move-result v1

    add-int/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iget v3, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardT:F

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    const/high16 v0, -0x3f000000    # -8.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardT:F

    const/4 v3, 0x0

    invoke-static {v3, v0, v2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->isAtTop()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, -0x3ee00000    # -10.0f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x41200000    # 10.0f

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardT:F

    invoke-static {v3, v0, v2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->limitTextContainer:Landroid/widget/FrameLayout;

    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    neg-int v2, v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iget v4, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardT:F

    invoke-static {v2, v1, v4}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationX(F)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->limitTextContainer:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    neg-int v0, v0

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardT:F

    invoke-static {v0, v3, v1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EditTextEmoji;->getEmojiButton()Landroid/view/View;

    move-result-object p1

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardT:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->applyButton:Landroid/widget/ImageView;

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardT:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x4030000000000000L    # 16.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardT:F

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->onUpdateShowKeyboard(F)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    if-eqz p1, :cond_1

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardT:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private replaceWithText(IILjava/lang/CharSequence;Z)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EditTextEmoji;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    add-int/2addr p2, p1

    invoke-virtual {v0, p1, p2, p3}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    if-eqz p4, :cond_1

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p2

    const/4 p4, 0x0

    invoke-static {v0, p2, p4}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/EditTextEmoji;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p3

    add-int/2addr p1, p3

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/EditTextEmoji;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method private updateShowKeyboard(ZZ)V
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardShown:Z

    if-ne v2, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardShown:Z

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardAnimator:Landroid/animation/ValueAnimator;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    iput-object v3, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardAnimator:Landroid/animation/ValueAnimator;

    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->onKeyboardOpen:Lorg/telegram/messenger/Utilities$Callback;

    if-eqz v2, :cond_2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->beforeUpdateShownKeyboard(Z)V

    const/4 v2, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz p2, :cond_8

    if-eqz p1, :cond_4

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    if-eqz p2, :cond_3

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->applyButton:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_4
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object p2

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getScrollY()I

    move-result v5

    neg-int v5, v5

    invoke-virtual {p2, v1, v5}, Landroid/view/View;->scrollBy(II)V

    :goto_0
    iget p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardT:F

    if-eqz p1, :cond_5

    const/high16 v2, 0x3f800000    # 1.0f

    :cond_5
    const/4 v4, 0x2

    new-array v4, v4, [F

    aput p2, v4, v1

    aput v2, v4, v0

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;)V

    invoke-virtual {p2, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    if-nez p1, :cond_6

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object p2

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setAllowDrawCursor(Z)V

    :cond_6
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$5;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$5;-><init>(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;Z)V

    invoke-virtual {p2, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_7

    sget-object v2, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->keyboardInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0xfa

    :goto_1
    invoke-virtual {p2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto :goto_2

    :cond_7
    new-instance v2, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v2}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    invoke-virtual {p2, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x1a4

    goto :goto_1

    :goto_2
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_6

    :cond_8
    if-eqz p1, :cond_9

    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_9
    const/4 p2, 0x0

    :goto_3
    iput p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardT:F

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object p2

    const/high16 v5, -0x3e500000    # -22.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->getEditTextLeft()I

    move-result v6

    add-int/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    iget v8, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardT:F

    invoke-static {v5, v7, v8}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p2, v5}, Landroid/view/View;->setTranslationX(F)V

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    const/high16 v5, -0x3f000000    # -8.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    iget v7, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardT:F

    invoke-static {v1, v5, v7}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p2, v5}, Landroid/view/View;->setTranslationX(F)V

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->isAtTop()Z

    move-result v5

    if-eqz v5, :cond_a

    const/high16 v5, -0x3ee00000    # -10.0f

    goto :goto_4

    :cond_a
    const/high16 v5, 0x41200000    # 10.0f

    :goto_4
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    iget v7, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardT:F

    invoke-static {v1, v5, v7}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p2, v5}, Landroid/view/View;->setTranslationY(F)V

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->limitTextContainer:Landroid/widget/FrameLayout;

    const/high16 v5, 0x41000000    # 8.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    neg-int v7, v7

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    iget v8, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardT:F

    invoke-static {v7, v6, v8}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p2, v6}, Landroid/view/View;->setTranslationX(F)V

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->limitTextContainer:Landroid/widget/FrameLayout;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    neg-int v5, v5

    iget v6, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardT:F

    invoke-static {v5, v1, v6}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p2, v5}, Landroid/view/View;->setTranslationY(F)V

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/EditTextEmoji;->getEmojiButton()Landroid/view/View;

    move-result-object p2

    iget v5, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardT:F

    invoke-virtual {p2, v5}, Landroid/view/View;->setAlpha(F)V

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->applyButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_b

    const/4 v5, 0x0

    goto :goto_5

    :cond_b
    const/16 v5, 0x8

    :goto_5
    invoke-virtual {p2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->applyButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_c

    const/high16 v2, 0x3f800000    # 1.0f

    :cond_c
    invoke-virtual {p2, v2}, Landroid/view/View;->setAlpha(F)V

    iget p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardT:F

    invoke-virtual {p0, p2}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->onUpdateShowKeyboard(F)V

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setAllowDrawCursor(Z)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->afterUpdateShownKeyboard(Z)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :goto_6
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->animateScrollTo(Z)V

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/EditTextEmoji;->setSuggestionsEnabled(Z)V

    if-nez p1, :cond_d

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object p2

    invoke-virtual {p2, v1, v0}, Lorg/telegram/ui/Components/EditTextEffects;->setSpoilersRevealed(ZZ)V

    :cond_d
    if-eqz p1, :cond_12

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result p1

    if-lt p1, v0, :cond_12

    invoke-static {}, Lorg/telegram/messenger/LiteMode;->isPowerSaverApplied()Z

    move-result p1

    if-nez p1, :cond_12

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurBitmap:Landroid/graphics/Bitmap;

    const/high16 p2, 0x41400000    # 12.0f

    if-nez p1, :cond_e

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->rootView:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, p2

    float-to-int p1, p1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->rootView:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, p2

    float-to-int v2, v2

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurBitmap:Landroid/graphics/Bitmap;

    :cond_e
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->ignoreDraw:Z

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->drawBlurBitmap(Landroid/graphics/Bitmap;F)V

    iput-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->ignoreDraw:Z

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_11

    new-instance p1, Landroid/graphics/BitmapShader;

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurBitmap:Landroid/graphics/Bitmap;

    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {p1, p2, v0, v0}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurBitmapShader:Landroid/graphics/BitmapShader;

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurBitmapMatrix:Landroid/graphics/Matrix;

    if-nez p1, :cond_f

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurBitmapMatrix:Landroid/graphics/Matrix;

    goto :goto_7

    :cond_f
    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    :goto_7
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurBitmapShader:Landroid/graphics/BitmapShader;

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurBitmapMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurPaint:Landroid/graphics/Paint;

    if-nez p1, :cond_10

    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x3

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurPaint:Landroid/graphics/Paint;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    :cond_10
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurPaint:Landroid/graphics/Paint;

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_8

    :cond_11
    iput-object v3, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurBitmap:Landroid/graphics/Bitmap;

    :cond_12
    :goto_8
    return-void
.end method


# virtual methods
.method protected additionalKeyboardHeight()I
    .locals 1

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    return v0
.end method

.method public additionalRightMargin()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected abstract afterUpdateShownKeyboard(Z)V
.end method

.method protected abstract beforeUpdateShownKeyboard(Z)V
.end method

.method protected abstract captionLimitToast()Z
.end method

.method public clear()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->ignoreTextChange:Z

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextEmoji;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public clearFocus()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    return-void
.end method

.method protected clipChild(Landroid/view/View;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public closeKeyboard()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->closeKeyboard()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextEmoji;->hidePopup(Z)V

    return-void
.end method

.method protected abstract customBlur()Z
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 30

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    iget-boolean v0, v10, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->ignoreDraw:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v10, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-boolean v1, v10, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->collapsed:Z

    if-eqz v1, :cond_1

    const/high16 v0, 0x42200000    # 40.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    goto :goto_0

    :cond_1
    iget-boolean v1, v10, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardShown:Z

    if-eqz v1, :cond_2

    const/high16 v1, 0x42380000    # 46.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    :cond_2
    const/high16 v1, 0x42a40000    # 82.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_0
    iget-boolean v1, v10, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->collapsed:Z

    if-nez v1, :cond_3

    iget-boolean v1, v10, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->hasReply:Z

    if-eqz v1, :cond_3

    const/high16 v1, 0x42480000    # 50.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, v10, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->heightAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v1

    float-to-int v1, v1

    iget v3, v10, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->lastHeight:I

    if-eq v1, v3, :cond_5

    invoke-virtual {v10, v1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->onEditHeightChange(I)V

    iget-object v3, v10, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->onHeightUpdate:Lorg/telegram/messenger/Utilities$Callback;

    if-eqz v3, :cond_4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    :cond_4
    iput v0, v10, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->lastHeight:I

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->updateMentionsLayoutPosition()V

    const/high16 v0, 0x41400000    # 12.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget v3, v10, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardT:F

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->forceRound()F

    move-result v4

    const/high16 v13, 0x3f800000    # 1.0f

    sub-float v4, v13, v4

    mul-float v3, v3, v4

    const/4 v14, 0x0

    invoke-static {v0, v14, v3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->isAtTop()Z

    move-result v3

    const/high16 v4, 0x41c00000    # 24.0f

    const/4 v15, 0x0

    if-eqz v3, :cond_6

    iget-object v2, v10, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounds:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v0

    int-to-float v1, v1

    add-float/2addr v1, v0

    invoke-virtual {v2, v0, v0, v3, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, v10, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->clickBounds:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v0

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v1, v4

    invoke-virtual {v2, v0, v0, v3, v1}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_1

    :cond_6
    const/high16 v3, -0x40800000    # -1.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    iget v5, v10, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardT:F

    mul-float v3, v3, v5

    add-float/2addr v3, v2

    int-to-float v2, v1

    sub-float/2addr v3, v2

    iget v5, v10, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->lastHeightTranslation:F

    sub-float/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v5, v5, v13

    if-ltz v5, :cond_7

    iget-boolean v5, v10, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->collapsed:Z

    if-nez v5, :cond_7

    iget-object v5, v10, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v5

    iput v3, v10, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->lastHeightTranslation:F

    invoke-virtual {v5, v3}, Landroid/view/View;->setTranslationY(F)V

    :cond_7
    iget-object v3, v10, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounds:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v0

    sub-float/2addr v5, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v0

    invoke-virtual {v3, v0, v5, v2, v6}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, v10, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->clickBounds:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v2, v1

    int-to-float v1, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v15, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, v10, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    const v1, 0x3c9374bc    # 0.018f

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ButtonBounce;->getScale(F)F

    move-result v0

    iget-object v1, v10, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, v10, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {v11, v0, v0, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    const/high16 v0, 0x41a80000    # 21.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget v1, v10, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardT:F

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->forceRound()F

    move-result v2

    sub-float v2, v13, v2

    mul-float v1, v1, v2

    invoke-static {v0, v14, v1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v0

    int-to-float v9, v0

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->customBlur()Z

    move-result v0

    const/4 v8, 0x1

    if-eqz v0, :cond_8

    iget-object v1, v10, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->backgroundBlur:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    iget-object v3, v10, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounds:Landroid/graphics/RectF;

    const/16 v16, 0x1

    const/high16 v17, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move v4, v9

    const/4 v12, 0x1

    move/from16 v8, v16

    move v14, v9

    move/from16 v9, v17

    invoke-virtual/range {v0 .. v9}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->drawBlur(Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;Landroid/graphics/Canvas;Landroid/graphics/RectF;FZFFZF)V

    iget-object v0, v10, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->backgroundPaint:Landroid/graphics/Paint;

    iget v1, v10, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardT:F

    const/16 v2, 0x26

    const/16 v3, 0x40

    invoke-static {v2, v3, v1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v1

    :goto_2
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, v10, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounds:Landroid/graphics/RectF;

    iget-object v1, v10, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v11, v0, v14, v14, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_4

    :cond_8
    move v14, v9

    const/4 v12, 0x1

    iget-object v0, v10, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->backgroundBlur:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    invoke-virtual {v0, v13, v15, v15}, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->getPaints(FFF)[Landroid/graphics/Paint;

    move-result-object v0

    if-eqz v0, :cond_c

    aget-object v1, v0, v12

    if-nez v1, :cond_9

    goto :goto_3

    :cond_9
    const/4 v1, 0x0

    aget-object v2, v0, v1

    if-eqz v2, :cond_a

    iget-object v1, v10, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v11, v1, v14, v14, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_a
    aget-object v0, v0, v12

    if-eqz v0, :cond_b

    iget-object v1, v10, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v11, v1, v14, v14, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_b
    iget-object v0, v10, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->backgroundPaint:Landroid/graphics/Paint;

    const/16 v1, 0x33

    goto :goto_2

    :cond_c
    :goto_3
    iget-object v0, v10, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->backgroundPaint:Landroid/graphics/Paint;

    const/16 v1, 0x80

    goto :goto_2

    :goto_4
    iget-object v0, v10, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->collapsedT:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v0

    iget-object v1, v10, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->collapsedT:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v2, v10, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->collapsed:Z

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v1

    sub-float v2, v0, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3a83126f    # 0.001f

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_f

    cmpg-float v0, v0, v15

    if-gtz v0, :cond_d

    const/4 v8, 0x1

    goto :goto_5

    :cond_d
    const/4 v8, 0x0

    :goto_5
    cmpg-float v0, v1, v15

    if-gtz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_6

    :cond_e
    const/4 v0, 0x0

    :goto_6
    if-eq v8, v0, :cond_10

    :cond_f
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->invalidateDrawOver2()V

    :cond_10
    const/16 v0, 0x1f

    const/16 v2, 0xff

    cmpl-float v3, v1, v15

    if-lez v3, :cond_11

    iget-object v3, v10, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v11, v3, v2, v0}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    :cond_11
    invoke-direct/range {p0 .. p1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->drawReply(Landroid/graphics/Canvas;)V

    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    cmpl-float v3, v1, v15

    if-lez v3, :cond_15

    iget v3, v10, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->collapsedFromX:I

    const v4, 0x7fffffff

    const/high16 v5, 0x41a00000    # 20.0f

    if-ne v3, v4, :cond_12

    iget-object v3, v10, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    goto :goto_7

    :cond_12
    const/high16 v4, -0x80000000

    if-ne v3, v4, :cond_13

    iget-object v3, v10, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    goto :goto_7

    :cond_13
    int-to-float v3, v3

    :goto_7
    iget-object v4, v10, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget-object v5, v10, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounds:Landroid/graphics/RectF;

    iget v6, v5, Landroid/graphics/RectF;->left:F

    iget v5, v5, Landroid/graphics/RectF;->top:F

    invoke-static {v6, v5, v3, v4}, Lcom/google/zxing/common/detector/MathUtils;->distance(FFFF)F

    move-result v5

    iget-object v6, v10, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounds:Landroid/graphics/RectF;

    iget v7, v6, Landroid/graphics/RectF;->left:F

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    invoke-static {v7, v6, v3, v4}, Lcom/google/zxing/common/detector/MathUtils;->distance(FFFF)F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iget-object v6, v10, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounds:Landroid/graphics/RectF;

    iget v7, v6, Landroid/graphics/RectF;->right:F

    iget v6, v6, Landroid/graphics/RectF;->top:F

    invoke-static {v7, v6, v3, v4}, Lcom/google/zxing/common/detector/MathUtils;->distance(FFFF)F

    move-result v6

    iget-object v7, v10, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounds:Landroid/graphics/RectF;

    iget v8, v7, Landroid/graphics/RectF;->right:F

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    invoke-static {v8, v7, v3, v4}, Lcom/google/zxing/common/detector/MathUtils;->distance(FFFF)F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    mul-float v5, v5, v1

    iget-object v6, v10, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->collapsePaint:Landroid/graphics/Paint;

    if-nez v6, :cond_14

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6, v12}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v6, v10, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->collapsePaint:Landroid/graphics/Paint;

    new-instance v7, Landroid/graphics/PorterDuffXfermode;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v8}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    new-instance v6, Landroid/graphics/RadialGradient;

    const/4 v7, -0x1

    const/4 v9, 0x0

    filled-new-array {v7, v7, v9}, [I

    move-result-object v22

    const/4 v9, 0x3

    new-array v15, v9, [F

    fill-array-data v15, :array_0

    sget-object v29, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/16 v20, 0x0

    const/high16 v21, 0x42000000    # 32.0f

    const/16 v19, 0x0

    move-object/from16 v18, v6

    move-object/from16 v23, v15

    move-object/from16 v24, v29

    invoke-direct/range {v18 .. v24}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v6, v10, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->collapseGradient:Landroid/graphics/RadialGradient;

    iget-object v9, v10, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->collapsePaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    iput-object v6, v10, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->collapseGradientMatrix:Landroid/graphics/Matrix;

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6, v12}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v6, v10, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->collapseOutPaint:Landroid/graphics/Paint;

    new-instance v9, Landroid/graphics/PorterDuffXfermode;

    invoke-direct {v9, v8}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    new-instance v6, Landroid/graphics/RadialGradient;

    const/4 v8, 0x0

    filled-new-array {v8, v8, v7}, [I

    move-result-object v27

    const/4 v7, 0x3

    new-array v7, v7, [F

    fill-array-data v7, :array_1

    const/16 v25, 0x0

    const/high16 v26, 0x42000000    # 32.0f

    const/16 v24, 0x0

    move-object/from16 v23, v6

    move-object/from16 v28, v7

    invoke-direct/range {v23 .. v29}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v6, v10, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->collapseOutGradient:Landroid/graphics/RadialGradient;

    iget-object v7, v10, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->collapseOutPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_14
    iget-object v6, v10, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->collapseGradientMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v6}, Landroid/graphics/Matrix;->reset()V

    iget-object v6, v10, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->collapseGradientMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v6, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v6, v10, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->collapseGradientMatrix:Landroid/graphics/Matrix;

    invoke-static {v13, v5}, Ljava/lang/Math;->max(FF)F

    move-result v7

    const/high16 v8, 0x41800000    # 16.0f

    div-float/2addr v7, v8

    invoke-static {v13, v5}, Ljava/lang/Math;->max(FF)F

    move-result v9

    div-float/2addr v9, v8

    invoke-virtual {v6, v7, v9}, Landroid/graphics/Matrix;->preScale(FF)Z

    iget-object v6, v10, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->collapseGradient:Landroid/graphics/RadialGradient;

    iget-object v7, v10, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->collapseGradientMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v6, v7}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v6, v10, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounds:Landroid/graphics/RectF;

    iget-object v7, v10, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->collapsePaint:Landroid/graphics/Paint;

    invoke-virtual {v11, v6, v14, v14, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    iget-object v6, v10, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v11, v6, v2, v0}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    iget-object v0, v10, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v10, v11, v0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->drawOver(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    iget-object v0, v10, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->collapseGradientMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, v10, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->collapseGradientMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, v10, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->collapseGradientMatrix:Landroid/graphics/Matrix;

    invoke-static {v13, v5}, Ljava/lang/Math;->max(FF)F

    move-result v2

    div-float/2addr v2, v8

    invoke-static {v13, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    div-float/2addr v3, v8

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    iget-object v0, v10, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->collapseOutGradient:Landroid/graphics/RadialGradient;

    iget-object v2, v10, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->collapseGradientMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, v10, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounds:Landroid/graphics/RectF;

    iget-object v2, v10, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->collapseOutPaint:Landroid/graphics/Paint;

    invoke-virtual {v11, v0, v14, v14, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->drawOver2FromParent()Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, v10, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v10, v11, v0, v1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->drawOver2(Landroid/graphics/Canvas;Landroid/graphics/RectF;F)V

    :cond_15
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->ignoreTouches:Z

    const/4 v1, 0x0

    if-nez v0, :cond_9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p0, v0, v2}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->ignoreTouches(FF)Z

    move-result v0

    if-nez v0, :cond_9

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->clickBounds:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardShown:Z

    if-nez v0, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardShown:Z

    if-nez v0, :cond_6

    instance-of v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionStory;

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Lorg/telegram/ui/Stories/recorder/CaptionStory;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/CaptionStory;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_5

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/view/View;->isClickable()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v4

    const/high16 v5, 0x3f000000    # 0.5f

    cmpg-float v4, v4, v5

    if-ltz v4, :cond_4

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    if-ne v4, v3, :cond_3

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v6

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v7

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v8

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v8, v3

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_4
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->ignore(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object p1

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setForceCursorEnd(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EditTextEmoji;->openKeyboard()V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setScrollY(I)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    return v2

    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v2, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_8

    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    :cond_8
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_9
    :goto_2
    return v1
.end method

.method protected abstract drawBlur(Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;Landroid/graphics/Canvas;Landroid/graphics/RectF;FZFFZF)V
.end method

.method protected drawBlurBitmap(Landroid/graphics/Bitmap;F)V
    .locals 0

    float-to-int p2, p2

    invoke-static {p1, p2}, Lorg/telegram/messenger/Utilities;->stackBlurBitmap(Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 11

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    if-ne p2, v0, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->isAtTop()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    const/high16 v3, 0x42a40000    # 82.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v0, v3

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v3}, Landroid/view/View;->getScrollY()I

    move-result v3

    sub-int/2addr v0, v3

    const/4 v3, 0x0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    iget v3, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardT:F

    sub-float v3, v1, v3

    mul-float v0, v0, v3

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v7, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v8, v3

    const/16 v9, 0xff

    const/16 v10, 0x1f

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, p1

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounds:Landroid/graphics/RectF;

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p3}, Landroid/graphics/Matrix;->reset()V

    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->matrix:Landroid/graphics/Matrix;

    iget-object p4, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounds:Landroid/graphics/RectF;

    iget p4, p4, Landroid/graphics/RectF;->top:F

    sub-float/2addr p4, v1

    invoke-virtual {p3, v2, p4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->fadeGradient:Landroid/graphics/LinearGradient;

    iget-object p4, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p3, p4}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounds:Landroid/graphics/RectF;

    iget v4, p3, Landroid/graphics/RectF;->left:F

    iget v5, p3, Landroid/graphics/RectF;->top:F

    iget v6, p3, Landroid/graphics/RectF;->right:F

    const/high16 p3, 0x41200000    # 10.0f

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    int-to-float p4, p4

    add-float v7, v5, p4

    iget-object v8, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->fadePaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object p4, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p4}, Landroid/graphics/Matrix;->reset()V

    iget-object p4, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->matrix:Landroid/graphics/Matrix;

    const/high16 v0, 0x43340000    # 180.0f

    invoke-virtual {p4, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    iget-object p4, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->matrix:Landroid/graphics/Matrix;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p4, v2, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object p4, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->fadeGradient:Landroid/graphics/LinearGradient;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p4, v0}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object p4, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounds:Landroid/graphics/RectF;

    iget v1, p4, Landroid/graphics/RectF;->left:F

    iget p4, p4, Landroid/graphics/RectF;->bottom:F

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    int-to-float p3, p3

    sub-float v2, p4, p3

    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounds:Landroid/graphics/RectF;

    iget v3, p3, Landroid/graphics/RectF;->right:F

    iget v4, p3, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->fadePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return p2

    :cond_1
    invoke-virtual {p0, p2}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->clipChild(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounds:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    goto :goto_1

    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method public drawOver(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 0

    return-void
.end method

.method public drawOver2(Landroid/graphics/Canvas;Landroid/graphics/RectF;F)V
    .locals 0

    return-void
.end method

.method public drawOver2FromParent()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected forceRound()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBounds()Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounds:Landroid/graphics/RectF;

    return-object v0
.end method

.method protected getCaptionDefaultLimit()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getCaptionLimit()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->getCaptionPremiumLimit()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->getCaptionDefaultLimit()I

    move-result v0

    :goto_0
    return v0
.end method

.method protected getCaptionPremiumLimit()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCodePointCount()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->codePointCount:I

    return v0
.end method

.method public getEditTextHeight()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->heightAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getEditTextHeightClosedKeyboard()I
    .locals 2

    const/high16 v0, 0x42a40000    # 82.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method protected getEditTextLeft()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getEditTextStyle()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getOver2Alpha()F
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->collapsedT:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v0

    return v0
.end method

.method public getSelectionLength()I
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sub-int/2addr v0, v1

    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return v1
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method protected abstract ignoreTouches(FF)Z
.end method

.method public invalidateBlur()V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEmojiButton()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEmojiView()Lorg/telegram/ui/Components/EmojiView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->customBlur()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEmojiView()Lorg/telegram/ui/Components/EmojiView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public invalidateDrawOver2()V
    .locals 0

    return-void
.end method

.method protected isAtTop()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isCaptionOverLimit()Z
    .locals 2

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->getCodePointCount()I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->getCaptionLimit()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 5

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->customBlur()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->hintTextBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->hintTextBitmap:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->hintTextPaint:Landroid/text/TextPaint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->hintTextPaint:Landroid/text/TextPaint;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    sget v0, Lorg/telegram/messenger/R$string;->AddCaption:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->hintTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->hintTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->hintTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->hintTextBitmap:Landroid/graphics/Bitmap;

    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->hintTextBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->hintTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->ascent:F

    float-to-int v2, v2

    neg-int v2, v2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->hintTextPaint:Landroid/text/TextPaint;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public onBackPressed()Z
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    iget-boolean v1, v0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiExpanded:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEmojiView()Lorg/telegram/ui/Components/EmojiView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->keyboardVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEmojiView()Lorg/telegram/ui/Components/EmojiView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView;->hideSearchKeyboard()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->collapseEmojiView()V

    :goto_0
    return v2

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/EditTextEmoji;->hidePopup(Z)V

    return v2

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->isKeyboardVisible()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->keyboardVisible()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    iget-boolean v0, v0, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->ignoring:Z

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->closeKeyboard()V

    return v2

    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method protected onCaptionLimitUpdate(Z)V
    .locals 0

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurBitmapShader:Landroid/graphics/BitmapShader;

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->hintTextBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->hintTextBitmap:Landroid/graphics/Bitmap;

    :cond_1
    return-void
.end method

.method protected onEditHeightChange(I)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->onResume()V

    return-void
.end method

.method protected onTextChange()V
    .locals 0

    return-void
.end method

.method protected abstract onUpdateShowKeyboard(F)V
.end method

.method public setAccount(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->currentAccount:I

    return-void
.end method

.method public setCollapsed(ZI)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->collapsed:Z

    iput p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->collapsedFromX:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setDialogId(J)V
    .locals 0

    iput-wide p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->dialogId:J

    return-void
.end method

.method public setOnHeightUpdate(Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/Utilities$Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->onHeightUpdate:Lorg/telegram/messenger/Utilities$Callback;

    return-void
.end method

.method public setOnKeyboardOpen(Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/Utilities$Callback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->onKeyboardOpen:Lorg/telegram/messenger/Utilities$Callback;

    return-void
.end method

.method public setPressed(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setPressed(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardShown:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    return-void
.end method

.method public setReply(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 4

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->hasReply:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->hasReply:Z

    new-instance v0, Lorg/telegram/ui/Components/Text;

    const-string v1, ""

    if-nez p1, :cond_1

    move-object p1, v1

    :cond_1
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v2

    const/high16 v3, 0x41600000    # 14.0f

    invoke-direct {v0, p1, v3, v2}, Lorg/telegram/ui/Components/Text;-><init>(Ljava/lang/CharSequence;FLandroid/graphics/Typeface;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->replyTitle:Lorg/telegram/ui/Components/Text;

    new-instance p1, Lorg/telegram/ui/Components/Text;

    if-nez p2, :cond_2

    move-object p2, v1

    :cond_2
    invoke-direct {p1, p2, v3}, Lorg/telegram/ui/Components/Text;-><init>(Ljava/lang/CharSequence;F)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->replyText:Lorg/telegram/ui/Components/Text;

    :goto_0
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->ignoreTextChange:Z

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/EditTextEmoji;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setUiBlurBitmap(Lorg/telegram/messenger/Utilities$CallbackVoidReturn;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/Utilities$CallbackVoidReturn<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->getUiBlurBitmap:Lorg/telegram/messenger/Utilities$CallbackVoidReturn;

    return-void
.end method

.method protected setupMentionContainer()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Adapters/MentionsAdapter;->setAllowStickers(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Adapters/MentionsAdapter;->setAllowBots(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Adapters/MentionsAdapter;->setAllowChats(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Adapters/MentionsAdapter;->setSearchInDailogs(Z)V

    return-void
.end method

.method public updateColors(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 4

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->applyButtonCheck:Landroid/graphics/drawable/Drawable;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogFloatingIcon:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->applyButtonDrawable:Lorg/telegram/ui/Components/CombinedDrawable;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_editMediaButton:I

    invoke-static {v2, p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    invoke-static {v1, p1}, Lorg/telegram/ui/ActionBar/Theme;->createCircleDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/CombinedDrawable;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected updateEditTextLeft()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    const/high16 v1, -0x3e500000    # -22.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->getEditTextLeft()I

    move-result v2

    add-int/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iget v3, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardT:F

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method

.method public updateKeyboard(I)V
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->notifyHeightChanged()V

    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EditTextEmoji;->isPopupShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->additionalKeyboardHeight()I

    move-result p1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EditTextEmoji;->getEmojiPadding()I

    move-result v2

    :goto_0
    add-int/2addr p1, v2

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EditTextEmoji;->isWaitingForKeyboardOpen()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->additionalKeyboardHeight()I

    move-result p1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EditTextEmoji;->getKeyboardHeight()I

    move-result v2

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    if-nez v2, :cond_3

    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getBottomPadding()I

    move-result v2

    :goto_2
    sub-int/2addr p1, v2

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->isAtTop()Z

    move-result v3

    const/high16 v4, 0x41a00000    # 20.0f

    if-nez v3, :cond_6

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->parentKeyboardAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/animation/Animator;->removeAllListeners()V

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->parentKeyboardAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/Animator;->cancel()V

    const/4 v3, 0x0

    iput-object v3, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->parentKeyboardAnimator:Landroid/animation/ObjectAnimator;

    :cond_4
    sget-object v3, Landroid/widget/FrameLayout;->TRANSLATION_Y:Landroid/util/Property;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v5

    neg-int v6, p1

    int-to-float v6, v6

    const/4 v7, 0x2

    new-array v7, v7, [F

    aput v5, v7, v1

    aput v6, v7, v0

    invoke-static {v2, v3, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->parentKeyboardAnimator:Landroid/animation/ObjectAnimator;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    if-le p1, v2, :cond_5

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->parentKeyboardAnimator:Landroid/animation/ObjectAnimator;

    sget-object v3, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->keyboardInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->parentKeyboardAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v5, 0xfa

    :goto_3
    invoke-virtual {v2, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    goto :goto_4

    :cond_5
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->parentKeyboardAnimator:Landroid/animation/ObjectAnimator;

    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->parentKeyboardAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v5, 0x280

    goto :goto_3

    :goto_4
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->parentKeyboardAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    :cond_6
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    if-le p1, v2, :cond_7

    const/4 v1, 0x1

    :cond_7
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->toKeyboardShow:Z

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->updateShowKeyboard:Ljava/lang/Runnable;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->updateShowKeyboard:Ljava/lang/Runnable;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    if-ge p1, v1, :cond_8

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/EditTextEmoji;->hidePopup(Z)V

    :cond_8
    return-void
.end method

.method public updateMentionsLayoutPosition()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->heightAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method
