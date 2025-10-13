.class public Lorg/telegram/ui/Components/UndoView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/UndoView$LinkMovementMethodMy;
    }
.end annotation


# static fields
.field public static ACTION_RINGTONE_ADDED:I = 0x53


# instance fields
.field private additionalTranslationY:F

.field private avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

.field backgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private currentAccount:I

.field private currentAction:I

.field private currentActionRunnable:Ljava/lang/Runnable;

.field private currentCancelRunnable:Ljava/lang/Runnable;

.field private currentDialogIds:Ljava/util/ArrayList;

.field private currentInfoObject:Ljava/lang/Object;

.field private currentInfoObject2:Ljava/lang/Object;

.field enterOffset:F

.field private enterOffsetMargin:I

.field private fromTop:Z

.field private hideAnimationType:I

.field private infoText:Ljava/lang/CharSequence;

.field private infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

.field private infoTextViewEmojiCacheType:I

.field private isShown:Z

.field private lastUpdateTime:J

.field private leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

.field private parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private prevSeconds:I

.field private progressPaint:Landroid/graphics/Paint;

.field private rect:Landroid/graphics/RectF;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private subinfoTextView:Landroid/widget/TextView;

.field private textPaint:Landroid/text/TextPaint;

.field private textWidth:I

.field textWidthOut:I

.field timeLayout:Landroid/text/StaticLayout;

.field timeLayoutOut:Landroid/text/StaticLayout;

.field private timeLeft:J

.field private timeLeftString:Ljava/lang/String;

.field timeReplaceProgress:F

.field private undoButton:Landroid/widget/LinearLayout;

.field private undoImageView:Landroid/widget/ImageView;

.field private undoTextView:Landroid/widget/TextView;

.field private undoViewHeight:I


# direct methods
.method public static synthetic $r8$lambda$6d5vqfSMidtBNRUIWml-OqbnglA(Lorg/telegram/ui/Components/UndoView;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/UndoView;->lambda$showWithAction$5(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7UeKwoW5noxdvQvM8k0N8hC3rLU(Lorg/telegram/ui/Components/UndoView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/UndoView;->lambda$showWithAction$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JLv2btTJNgmct5KVAEmTVxqbKC0(Lorg/telegram/ui/Components/UndoView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/UndoView;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ObNJKqvGU8xXsV6D0ktsjRDi0mw(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/UndoView;->lambda$new$1(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$SGadTwNKFYYR41YEuJowZRAkuAU(Lorg/telegram/ui/Components/UndoView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/UndoView;->lambda$showWithAction$7()V

    return-void
.end method

.method public static synthetic $r8$lambda$l8XtLSzZxmJyp89hFOLv7CHxCiE(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/UndoView;->lambda$showWithAction$3(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$pRV1L_28TR1KN0lQU0QgCwyHuGQ(Lorg/telegram/ui/Components/UndoView;Lorg/telegram/tgnet/TLRPC$Message;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/UndoView;->lambda$showWithAction$6(Lorg/telegram/tgnet/TLRPC$Message;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xcxxkyMYuOhNs747Be0OLVKUxro(Lorg/telegram/ui/Components/UndoView;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/UndoView;->lambda$showWithAction$4(Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 0
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v0}, Lorg/telegram/ui/Components/UndoView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 2

    .line 0
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/telegram/ui/Components/UndoView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 18

    .line 0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    iput v3, v0, Lorg/telegram/ui/Components/UndoView;->infoTextViewEmojiCacheType:I

    sget v4, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v4, v0, Lorg/telegram/ui/Components/UndoView;->currentAccount:I

    const/4 v4, -0x1

    iput v4, v0, Lorg/telegram/ui/Components/UndoView;->currentAction:I

    const/4 v4, 0x1

    iput v4, v0, Lorg/telegram/ui/Components/UndoView;->hideAnimationType:I

    const/high16 v5, 0x41000000    # 8.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    iput v5, v0, Lorg/telegram/ui/Components/UndoView;->enterOffsetMargin:I

    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v0, Lorg/telegram/ui/Components/UndoView;->timeReplaceProgress:F

    iput-object v2, v0, Lorg/telegram/ui/Components/UndoView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object/from16 v5, p2

    iput-object v5, v0, Lorg/telegram/ui/Components/UndoView;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    move/from16 v5, p3

    iput-boolean v5, v0, Lorg/telegram/ui/Components/UndoView;->fromTop:Z

    new-instance v5, Lorg/telegram/ui/Components/UndoView$1;

    invoke-direct {v5, v0, v1, v2}, Lorg/telegram/ui/Components/UndoView$1;-><init>(Lorg/telegram/ui/Components/UndoView;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v5, v0, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/high16 v2, 0x41700000    # 15.0f

    invoke-virtual {v5, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v5, v0, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_undo_infoColor:I

    invoke-direct {v0, v6}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(I)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v5, v0, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_undo_cancelColor:I

    invoke-direct {v0, v7}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setLinkTextColor(I)V

    iget-object v5, v0, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    new-instance v8, Lorg/telegram/ui/Components/UndoView$LinkMovementMethodMy;

    invoke-direct {v8, v0}, Lorg/telegram/ui/Components/UndoView$LinkMovementMethodMy;-><init>(Lorg/telegram/ui/Components/UndoView;)V

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v5, v0, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v8, -0x2

    const/high16 v9, -0x40000000    # -2.0f

    const/16 v10, 0x33

    const/high16 v11, 0x42340000    # 45.0f

    const/high16 v12, 0x41500000    # 13.0f

    invoke-static/range {v8 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v0, v5, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    const/high16 v8, 0x41500000    # 13.0f

    invoke-virtual {v5, v4, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v5, v0, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    invoke-direct {v0, v6}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v5, v0, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setLinkTextColor(I)V

    iget-object v5, v0, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setHighlightColor(I)V

    iget-object v5, v0, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v5, v0, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v5, v0, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    new-instance v8, Lorg/telegram/messenger/AndroidUtilities$LinkMovementMethodMy;

    invoke-direct {v8}, Lorg/telegram/messenger/AndroidUtilities$LinkMovementMethodMy;-><init>()V

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v5, v0, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    const/high16 v13, 0x41000000    # 8.0f

    const/4 v8, -0x2

    const/high16 v11, 0x42680000    # 58.0f

    const/high16 v12, 0x41d80000    # 27.0f

    invoke-static/range {v8 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v0, v5, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v5, v1}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget-object v8, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v5, v0, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_undo_background:I

    invoke-direct {v0, v8}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(I)I

    move-result v9

    const/high16 v10, -0x1000000

    or-int/2addr v9, v10

    const-string v11, "info1.**"

    invoke-virtual {v5, v11, v9}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    iget-object v5, v0, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v0, v8}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(I)I

    move-result v9

    or-int/2addr v9, v10

    const-string v10, "info2.**"

    invoke-virtual {v5, v10, v9}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    iget-object v5, v0, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v0, v6}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(I)I

    move-result v9

    const-string v10, "luc12.**"

    invoke-virtual {v5, v10, v9}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    iget-object v5, v0, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v0, v6}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(I)I

    move-result v9

    const-string v10, "luc11.**"

    invoke-virtual {v5, v10, v9}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    iget-object v5, v0, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v0, v6}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(I)I

    move-result v9

    const-string v10, "luc10.**"

    invoke-virtual {v5, v10, v9}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    iget-object v5, v0, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v0, v6}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(I)I

    move-result v9

    const-string v10, "luc9.**"

    invoke-virtual {v5, v10, v9}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    iget-object v5, v0, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v0, v6}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(I)I

    move-result v9

    const-string v10, "luc8.**"

    invoke-virtual {v5, v10, v9}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    iget-object v5, v0, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v0, v6}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(I)I

    move-result v9

    const-string v10, "luc7.**"

    invoke-virtual {v5, v10, v9}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    iget-object v5, v0, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v0, v6}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(I)I

    move-result v9

    const-string v10, "luc6.**"

    invoke-virtual {v5, v10, v9}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    iget-object v5, v0, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v0, v6}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(I)I

    move-result v9

    const-string v10, "luc5.**"

    invoke-virtual {v5, v10, v9}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    iget-object v5, v0, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v0, v6}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(I)I

    move-result v9

    const-string v10, "luc4.**"

    invoke-virtual {v5, v10, v9}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    iget-object v5, v0, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v0, v6}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(I)I

    move-result v9

    const-string v10, "luc3.**"

    invoke-virtual {v5, v10, v9}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    iget-object v5, v0, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v0, v6}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(I)I

    move-result v9

    const-string v10, "luc2.**"

    invoke-virtual {v5, v10, v9}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    iget-object v5, v0, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v0, v6}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(I)I

    move-result v9

    const-string v10, "luc1.**"

    invoke-virtual {v5, v10, v9}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    iget-object v5, v0, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v0, v6}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(I)I

    move-result v9

    const-string v10, "Oval.**"

    invoke-virtual {v5, v10, v9}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    iget-object v5, v0, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v15, 0x0

    const/16 v9, 0x36

    const/high16 v10, -0x40000000    # -2.0f

    const/16 v11, 0x13

    const/high16 v12, 0x40400000    # 3.0f

    const/4 v13, 0x0

    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v0, v5, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v5, v1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/Components/UndoView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-virtual {v5, v9}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    iget-object v5, v0, Lorg/telegram/ui/Components/UndoView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v9, 0x1e

    const/high16 v10, 0x41f00000    # 30.0f

    const/high16 v12, 0x41700000    # 15.0f

    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v0, v5, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/Components/UndoView;->undoButton:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v5, v0, Lorg/telegram/ui/Components/UndoView;->undoButton:Landroid/widget/LinearLayout;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(I)I

    move-result v9

    const v10, 0x22ffffff

    and-int/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    invoke-static {v9, v11, v12}, Lorg/telegram/ui/ActionBar/Theme;->createRadSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v5, v0, Lorg/telegram/ui/Components/UndoView;->undoButton:Landroid/widget/LinearLayout;

    const/high16 v16, 0x41300000    # 11.0f

    const/16 v17, 0x0

    const/4 v11, -0x2

    const/high16 v12, -0x40000000    # -2.0f

    const/16 v13, 0x15

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v0, v5, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, v0, Lorg/telegram/ui/Components/UndoView;->undoButton:Landroid/widget/LinearLayout;

    new-instance v9, Lorg/telegram/ui/Components/UndoView$$ExternalSyntheticLambda0;

    invoke-direct {v9, v0}, Lorg/telegram/ui/Components/UndoView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/UndoView;)V

    invoke-virtual {v5, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/Components/UndoView;->undoImageView:Landroid/widget/ImageView;

    sget v9, Lorg/telegram/messenger/R$drawable;->chats_undo:I

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v5, v0, Lorg/telegram/ui/Components/UndoView;->undoImageView:Landroid/widget/ImageView;

    new-instance v9, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(I)I

    move-result v11

    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v9, v11, v12}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v5, v0, Lorg/telegram/ui/Components/UndoView;->undoButton:Landroid/widget/LinearLayout;

    iget-object v9, v0, Lorg/telegram/ui/Components/UndoView;->undoImageView:Landroid/widget/ImageView;

    const/16 v16, 0x0

    const/16 v17, 0x4

    const/4 v11, -0x2

    const/4 v12, -0x2

    const/16 v13, 0x13

    const/4 v14, 0x4

    const/4 v15, 0x4

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v5, v9, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/Components/UndoView;->undoTextView:Landroid/widget/TextView;

    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {v5, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, v0, Lorg/telegram/ui/Components/UndoView;->undoTextView:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/UndoView;->undoTextView:Landroid/widget/TextView;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/UndoView;->undoTextView:Landroid/widget/TextView;

    sget v5, Lorg/telegram/messenger/R$string;->Undo:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/UndoView;->undoButton:Landroid/widget/LinearLayout;

    iget-object v5, v0, Lorg/telegram/ui/Components/UndoView;->undoTextView:Landroid/widget/TextView;

    const/16 v16, 0x8

    const/4 v11, -0x2

    const/4 v14, 0x6

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v1, v5, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/graphics/RectF;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    const/high16 v7, 0x42040000    # 33.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    invoke-direct {v1, v5, v2, v9, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, v0, Lorg/telegram/ui/Components/UndoView;->rect:Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v0, Lorg/telegram/ui/Components/UndoView;->progressPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/UndoView;->progressPaint:Landroid/graphics/Paint;

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, v0, Lorg/telegram/ui/Components/UndoView;->progressPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/UndoView;->progressPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v6}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1, v4}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v1, v0, Lorg/telegram/ui/Components/UndoView;->textPaint:Landroid/text/TextPaint;

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, v0, Lorg/telegram/ui/Components/UndoView;->textPaint:Landroid/text/TextPaint;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v1, v0, Lorg/telegram/ui/Components/UndoView;->textPaint:Landroid/text/TextPaint;

    invoke-direct {v0, v6}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setWillNotDraw(Z)V

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-direct {v0, v8}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(I)I

    move-result v2

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/UndoView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v1, Lorg/telegram/ui/Components/UndoView$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lorg/telegram/ui/Components/UndoView$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/UndoView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/UndoView;->infoTextViewEmojiCacheType:I

    return p0
.end method

.method private getThemedColor(I)I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/UndoView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method

.method private hasSubInfo()Z
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Components/UndoView;->currentAction:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_2

    const/16 v1, 0x18

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/16 v1, 0xd

    if-eq v0, v1, :cond_2

    const/16 v1, 0xe

    if-eq v0, v1, :cond_2

    const/16 v1, 0x4a

    if-eq v0, v1, :cond_2

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/UndoView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogFilters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/UndoView;->currentAction:I

    sget v1, Lorg/telegram/ui/Components/UndoView;->ACTION_RINGTONE_ADDED:I

    if-eq v0, v1, :cond_2

    const/16 v1, 0x55

    if-eq v0, v1, :cond_2

    const/16 v1, 0x58

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/UndoView;->currentInfoObject2:Ljava/lang/Object;

    if-eqz v0, :cond_1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isTooltipAction()Z
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Components/UndoView;->currentAction:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    const/16 v1, 0x57

    if-eq v0, v1, :cond_1

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    const/16 v1, 0xe

    if-eq v0, v1, :cond_1

    const/16 v1, 0x13

    if-eq v0, v1, :cond_1

    const/16 v1, 0x14

    if-eq v0, v1, :cond_1

    const/16 v1, 0x15

    if-eq v0, v1, :cond_1

    const/16 v1, 0x16

    if-eq v0, v1, :cond_1

    const/16 v1, 0x17

    if-eq v0, v1, :cond_1

    const/16 v1, 0x1e

    if-eq v0, v1, :cond_1

    const/16 v1, 0x1f

    if-eq v0, v1, :cond_1

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    const/16 v1, 0x66

    if-eq v0, v1, :cond_1

    const/16 v1, 0x21

    if-eq v0, v1, :cond_1

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1

    const/16 v1, 0x23

    if-eq v0, v1, :cond_1

    const/16 v1, 0x24

    if-eq v0, v1, :cond_1

    const/16 v1, 0x4a

    if-eq v0, v1, :cond_1

    const/16 v1, 0x25

    if-eq v0, v1, :cond_1

    const/16 v1, 0x26

    if-eq v0, v1, :cond_1

    const/16 v1, 0x27

    if-eq v0, v1, :cond_1

    const/16 v1, 0x28

    if-eq v0, v1, :cond_1

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_1

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_1

    const/16 v1, 0x4d

    if-eq v0, v1, :cond_1

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_1

    const/16 v1, 0x4e

    if-eq v0, v1, :cond_1

    const/16 v1, 0x4f

    if-eq v0, v1, :cond_1

    const/16 v1, 0x64

    if-eq v0, v1, :cond_1

    const/16 v1, 0x65

    if-eq v0, v1, :cond_1

    sget v1, Lorg/telegram/ui/Components/UndoView;->ACTION_RINGTONE_ADDED:I

    if-ne v0, v1, :cond_0

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

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/UndoView;->canUndo()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/UndoView;->hide(ZI)V

    return-void
.end method

.method private static synthetic lambda$new$1(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$showWithAction$2(Landroid/view/View;)V
    .locals 1

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/UndoView;->hide(ZI)V

    return-void
.end method

.method private static synthetic lambda$showWithAction$3(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$showWithAction$4(Lorg/telegram/tgnet/TLObject;)V
    .locals 2

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$PaymentReceipt;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/UndoView;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    new-instance v1, Lorg/telegram/ui/PaymentFormActivity;

    check-cast p1, Lorg/telegram/tgnet/TLRPC$PaymentReceipt;

    invoke-direct {v1, p1}, Lorg/telegram/ui/PaymentFormActivity;-><init>(Lorg/telegram/tgnet/TLRPC$PaymentReceipt;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_0
    return-void
.end method

.method private synthetic lambda$showWithAction$5(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    new-instance p2, Lorg/telegram/ui/Components/UndoView$$ExternalSyntheticLambda7;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Components/UndoView$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/UndoView;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$showWithAction$6(Lorg/telegram/tgnet/TLRPC$Message;Landroid/view/View;)V
    .locals 2

    const/4 p2, 0x1

    invoke-virtual {p0, p2, p2}, Lorg/telegram/ui/Components/UndoView;->hide(ZI)V

    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentReceipt;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentReceipt;-><init>()V

    iget v0, p1, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iput v0, p2, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentReceipt;->msg_id:I

    iget-object v0, p0, Lorg/telegram/ui/Components/UndoView;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessagesController;->getInputPeer(Lorg/telegram/tgnet/TLRPC$Peer;)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p1

    iput-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentReceipt;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget-object p1, p0, Lorg/telegram/ui/Components/UndoView;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/Components/UndoView$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/UndoView$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/UndoView;)V

    const/4 v1, 0x2

    invoke-virtual {p1, p2, v0, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    return-void
.end method

.method private synthetic lambda$showWithAction$7()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v1, 0x3

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private updatePosition()V
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Components/UndoView;->enterOffset:F

    iget v1, p0, Lorg/telegram/ui/Components/UndoView;->enterOffsetMargin:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/Components/UndoView;->additionalTranslationY:F

    sub-float/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/UndoView;->invalidate()V

    return-void
.end method


# virtual methods
.method protected canUndo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public didPressUrl(Landroid/text/style/CharacterStyle;)V
    .locals 0

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    iget v0, p0, Lorg/telegram/ui/Components/UndoView;->additionalTranslationY:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lorg/telegram/ui/Components/UndoView;->enterOffset:F

    sub-float/2addr v0, v2

    const/high16 v2, 0x41100000    # 9.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    cmpl-float v2, v0, v1

    if-lez v2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v1, v2, v0}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/UndoView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getCurrentInfoObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/UndoView;->currentInfoObject:Ljava/lang/Object;

    return-object v0
.end method

.method public getEnterOffset()F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/UndoView;->enterOffset:F

    return v0
.end method

.method public hide(ZI)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_d

    iget-boolean v2, p0, Lorg/telegram/ui/Components/UndoView;->isShown:Z

    if-nez v2, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/telegram/ui/Components/UndoView;->currentInfoObject:Ljava/lang/Object;

    iput-object v2, p0, Lorg/telegram/ui/Components/UndoView;->currentInfoObject2:Ljava/lang/Object;

    iput-boolean v0, p0, Lorg/telegram/ui/Components/UndoView;->isShown:Z

    iget-object v3, p0, Lorg/telegram/ui/Components/UndoView;->currentActionRunnable:Ljava/lang/Runnable;

    if-eqz v3, :cond_2

    if-eqz p1, :cond_1

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    :cond_1
    iput-object v2, p0, Lorg/telegram/ui/Components/UndoView;->currentActionRunnable:Ljava/lang/Runnable;

    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/Components/UndoView;->currentCancelRunnable:Ljava/lang/Runnable;

    if-eqz v3, :cond_4

    if-nez p1, :cond_3

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    :cond_3
    iput-object v2, p0, Lorg/telegram/ui/Components/UndoView;->currentCancelRunnable:Ljava/lang/Runnable;

    :cond_4
    iget v2, p0, Lorg/telegram/ui/Components/UndoView;->currentAction:I

    const/16 v3, 0x1a

    if-eqz v2, :cond_5

    if-eq v2, v1, :cond_5

    if-eq v2, v3, :cond_5

    const/16 v4, 0x1b

    if-ne v2, v4, :cond_8

    :cond_5
    const/4 v2, 0x0

    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/Components/UndoView;->currentDialogIds:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_8

    iget-object v4, p0, Lorg/telegram/ui/Components/UndoView;->currentDialogIds:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget v6, p0, Lorg/telegram/ui/Components/UndoView;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget v7, p0, Lorg/telegram/ui/Components/UndoView;->currentAction:I

    if-eqz v7, :cond_7

    if-ne v7, v3, :cond_6

    goto :goto_1

    :cond_6
    const/4 v7, 0x0

    goto :goto_2

    :cond_7
    :goto_1
    const/4 v7, 0x1

    :goto_2
    invoke-virtual {v6, v4, v5, v7, p1}, Lorg/telegram/messenger/MessagesController;->removeDialogAction(JZZ)V

    iget v6, p0, Lorg/telegram/ui/Components/UndoView;->currentAction:I

    invoke-virtual {p0, v4, v5, v6}, Lorg/telegram/ui/Components/UndoView;->onRemoveDialogAction(JI)V

    add-int/2addr v2, v1

    goto :goto_0

    :cond_8
    const/high16 p1, 0x3f800000    # 1.0f

    const/high16 v2, -0x40800000    # -1.0f

    if-eqz p2, :cond_b

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    if-ne p2, v1, :cond_a

    iget-boolean p2, p0, Lorg/telegram/ui/Components/UndoView;->fromTop:Z

    if-eqz p2, :cond_9

    const/high16 p1, -0x40800000    # -1.0f

    :cond_9
    iget p2, p0, Lorg/telegram/ui/Components/UndoView;->enterOffsetMargin:I

    iget v2, p0, Lorg/telegram/ui/Components/UndoView;->undoViewHeight:I

    add-int/2addr p2, v2

    int-to-float p2, p2

    mul-float p1, p1, p2

    new-array p2, v1, [F

    aput p1, p2, v0

    const-string p1, "enterOffset"

    invoke-static {p0, p1, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    new-array p2, v1, [Landroid/animation/Animator;

    aput-object p1, p2, v0

    invoke-virtual {v3, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 p1, 0xfa

    :goto_3
    invoke-virtual {v3, p1, p2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    goto :goto_4

    :cond_a
    sget-object p1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const p2, 0x3f4ccccd    # 0.8f

    new-array v2, v1, [F

    aput p2, v2, v0

    invoke-static {p0, p1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    sget-object v2, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v4, v1, [F

    aput p2, v4, v0

    invoke-static {p0, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v1, [F

    const/4 v5, 0x0

    aput v5, v4, v0

    invoke-static {p0, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/Animator;

    aput-object p1, v4, v0

    aput-object p2, v4, v1

    const/4 p1, 0x2

    aput-object v2, v4, p1

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 p1, 0xb4

    goto :goto_3

    :goto_4
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v3, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p1, Lorg/telegram/ui/Components/UndoView$2;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/UndoView$2;-><init>(Lorg/telegram/ui/Components/UndoView;)V

    invoke-virtual {v3, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_5

    :cond_b
    iget-boolean p2, p0, Lorg/telegram/ui/Components/UndoView;->fromTop:Z

    if-eqz p2, :cond_c

    const/high16 p1, -0x40800000    # -1.0f

    :cond_c
    iget p2, p0, Lorg/telegram/ui/Components/UndoView;->enterOffsetMargin:I

    iget v0, p0, Lorg/telegram/ui/Components/UndoView;->undoViewHeight:I

    add-int/2addr p2, v0

    int-to-float p2, p2

    mul-float p1, p1, p2

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/UndoView;->setEnterOffset(F)V

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    :goto_5
    return-void
.end method

.method public invalidate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->invalidate()V

    iget-object v0, p0, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    iget-object v0, p0, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public isMultilineSubInfo()Z
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Components/UndoView;->currentAction:I

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    const/16 v1, 0xf

    if-eq v0, v1, :cond_1

    const/16 v1, 0x18

    if-eq v0, v1, :cond_1

    const/16 v1, 0x4a

    if-eq v0, v1, :cond_1

    sget v1, Lorg/telegram/ui/Components/UndoView;->ACTION_RINGTONE_ADDED:I

    if-ne v0, v1, :cond_0

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

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    const/4 v7, 0x1

    iget v3, v0, Lorg/telegram/ui/Components/UndoView;->additionalTranslationY:F

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    iget v6, v0, Lorg/telegram/ui/Components/UndoView;->enterOffset:F

    sub-float/2addr v3, v6

    iget v6, v0, Lorg/telegram/ui/Components/UndoView;->enterOffsetMargin:I

    int-to-float v6, v6

    add-float/2addr v3, v6

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v3, v6

    cmpl-float v6, v3, v5

    if-lez v6, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v1, v5, v5, v6, v3}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    :cond_0
    iget-object v3, v0, Lorg/telegram/ui/Components/UndoView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    :cond_1
    iget-object v3, v0, Lorg/telegram/ui/Components/UndoView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_0
    iget v3, v0, Lorg/telegram/ui/Components/UndoView;->currentAction:I

    const-wide/16 v8, 0x0

    if-eq v3, v7, :cond_2

    if-eqz v3, :cond_2

    const/16 v6, 0x1b

    if-eq v3, v6, :cond_2

    const/16 v6, 0x1a

    if-eq v3, v6, :cond_2

    const/16 v6, 0x51

    if-eq v3, v6, :cond_2

    const/16 v6, 0x58

    if-ne v3, v6, :cond_c

    :cond_2
    iget-wide v10, v0, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    cmp-long v3, v10, v8

    if-lez v3, :cond_3

    long-to-float v3, v10

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float/2addr v3, v6

    float-to-double v10, v3

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v3, v10

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    iget v6, v0, Lorg/telegram/ui/Components/UndoView;->prevSeconds:I

    if-eq v6, v3, :cond_5

    iput v3, v0, Lorg/telegram/ui/Components/UndoView;->prevSeconds:I

    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v6, v7, [Ljava/lang/Object;

    aput-object v3, v6, v2

    const-string v2, "%d"

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/ui/Components/UndoView;->timeLeftString:Ljava/lang/String;

    iget-object v3, v0, Lorg/telegram/ui/Components/UndoView;->timeLayout:Landroid/text/StaticLayout;

    if-eqz v3, :cond_4

    iput-object v3, v0, Lorg/telegram/ui/Components/UndoView;->timeLayoutOut:Landroid/text/StaticLayout;

    iput v5, v0, Lorg/telegram/ui/Components/UndoView;->timeReplaceProgress:F

    iget v3, v0, Lorg/telegram/ui/Components/UndoView;->textWidth:I

    iput v3, v0, Lorg/telegram/ui/Components/UndoView;->textWidthOut:I

    :cond_4
    iget-object v3, v0, Lorg/telegram/ui/Components/UndoView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, v0, Lorg/telegram/ui/Components/UndoView;->textWidth:I

    new-instance v2, Landroid/text/StaticLayout;

    iget-object v11, v0, Lorg/telegram/ui/Components/UndoView;->timeLeftString:Ljava/lang/String;

    iget-object v12, v0, Lorg/telegram/ui/Components/UndoView;->textPaint:Landroid/text/TextPaint;

    sget-object v14, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v13, 0x7fffffff

    const/high16 v15, 0x3f800000    # 1.0f

    move-object v10, v2

    invoke-direct/range {v10 .. v17}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v2, v0, Lorg/telegram/ui/Components/UndoView;->timeLayout:Landroid/text/StaticLayout;

    :cond_5
    iget v2, v0, Lorg/telegram/ui/Components/UndoView;->timeReplaceProgress:F

    cmpg-float v3, v2, v4

    if-gez v3, :cond_7

    const v3, 0x3dda740e

    add-float/2addr v2, v3

    iput v2, v0, Lorg/telegram/ui/Components/UndoView;->timeReplaceProgress:F

    cmpl-float v2, v2, v4

    if-lez v2, :cond_6

    iput v4, v0, Lorg/telegram/ui/Components/UndoView;->timeReplaceProgress:F

    goto :goto_2

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/UndoView;->invalidate()V

    :cond_7
    :goto_2
    iget-object v2, v0, Lorg/telegram/ui/Components/UndoView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/Components/UndoView;->timeLayoutOut:Landroid/text/StaticLayout;

    const/high16 v5, 0x41200000    # 10.0f

    const v6, 0x4189999a    # 17.2f

    if-eqz v3, :cond_8

    iget v3, v0, Lorg/telegram/ui/Components/UndoView;->timeReplaceProgress:F

    cmpg-float v10, v3, v4

    if-gez v10, :cond_8

    iget-object v10, v0, Lorg/telegram/ui/Components/UndoView;->textPaint:Landroid/text/TextPaint;

    int-to-float v11, v2

    sub-float v3, v4, v3

    mul-float v11, v11, v3

    float-to-int v3, v11

    invoke-virtual {v10, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v3, v0, Lorg/telegram/ui/Components/UndoView;->rect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget v10, v0, Lorg/telegram/ui/Components/UndoView;->textWidth:I

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    sub-float/2addr v3, v10

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    iget v12, v0, Lorg/telegram/ui/Components/UndoView;->timeReplaceProgress:F

    mul-float v11, v11, v12

    add-float/2addr v10, v11

    invoke-virtual {v1, v3, v10}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v3, v0, Lorg/telegram/ui/Components/UndoView;->timeLayoutOut:Landroid/text/StaticLayout;

    invoke-virtual {v3, v1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    iget-object v3, v0, Lorg/telegram/ui/Components/UndoView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_8
    iget-object v3, v0, Lorg/telegram/ui/Components/UndoView;->timeLayout:Landroid/text/StaticLayout;

    if-eqz v3, :cond_b

    iget v3, v0, Lorg/telegram/ui/Components/UndoView;->timeReplaceProgress:F

    cmpl-float v10, v3, v4

    if-eqz v10, :cond_9

    iget-object v10, v0, Lorg/telegram/ui/Components/UndoView;->textPaint:Landroid/text/TextPaint;

    int-to-float v11, v2

    mul-float v11, v11, v3

    float-to-int v3, v11

    invoke-virtual {v10, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v3, v0, Lorg/telegram/ui/Components/UndoView;->rect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget v10, v0, Lorg/telegram/ui/Components/UndoView;->textWidth:I

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    sub-float/2addr v3, v10

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    iget v10, v0, Lorg/telegram/ui/Components/UndoView;->timeReplaceProgress:F

    sub-float v10, v4, v10

    mul-float v5, v5, v10

    sub-float/2addr v6, v5

    invoke-virtual {v1, v3, v6}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v3, v0, Lorg/telegram/ui/Components/UndoView;->timeLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3, v1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    iget v3, v0, Lorg/telegram/ui/Components/UndoView;->timeReplaceProgress:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_a

    iget-object v3, v0, Lorg/telegram/ui/Components/UndoView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_b
    iget-object v2, v0, Lorg/telegram/ui/Components/UndoView;->rect:Landroid/graphics/RectF;

    iget-wide v3, v0, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    long-to-float v3, v3

    const v4, 0x459c4000    # 5000.0f

    div-float/2addr v3, v4

    const/high16 v4, -0x3c4c0000    # -360.0f

    mul-float v4, v4, v3

    iget-object v6, v0, Lorg/telegram/ui/Components/UndoView;->progressPaint:Landroid/graphics/Paint;

    const/high16 v3, -0x3d4c0000    # -90.0f

    const/4 v5, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :cond_c
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, v0, Lorg/telegram/ui/Components/UndoView;->lastUpdateTime:J

    sub-long v3, v1, v3

    iget-wide v5, v0, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    sub-long/2addr v5, v3

    iput-wide v5, v0, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    iput-wide v1, v0, Lorg/telegram/ui/Components/UndoView;->lastUpdateTime:J

    cmp-long v1, v5, v8

    if-gtz v1, :cond_d

    iget v1, v0, Lorg/telegram/ui/Components/UndoView;->hideAnimationType:I

    invoke-virtual {v0, v7, v1}, Lorg/telegram/ui/Components/UndoView;->hide(ZI)V

    :cond_d
    iget v1, v0, Lorg/telegram/ui/Components/UndoView;->currentAction:I

    const/16 v2, 0x52

    if-eq v1, v2, :cond_e

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/UndoView;->invalidate()V

    :cond_e
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    iget v0, p0, Lorg/telegram/ui/Components/UndoView;->undoViewHeight:I

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    iget-object p1, p0, Lorg/telegram/ui/Components/UndoView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, p2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method protected onRemoveDialogAction(JI)V
    .locals 0

    return-void
.end method

.method public setAdditionalTranslationY(F)V
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/UndoView;->additionalTranslationY:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lorg/telegram/ui/Components/UndoView;->additionalTranslationY:F

    invoke-direct {p0}, Lorg/telegram/ui/Components/UndoView;->updatePosition()V

    :cond_0
    return-void
.end method

.method public setColors(II)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/UndoView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/Theme;->setDrawableColor(Landroid/graphics/drawable/Drawable;I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p2, p0, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/high16 v0, -0x1000000

    or-int/2addr p1, v0

    const-string v0, "info1.**"

    invoke-virtual {p2, v0, p1}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    iget-object p2, p0, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const-string v0, "info2.**"

    invoke-virtual {p2, v0, p1}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    return-void
.end method

.method public setEnterOffset(F)V
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/UndoView;->enterOffset:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lorg/telegram/ui/Components/UndoView;->enterOffset:F

    invoke-direct {p0}, Lorg/telegram/ui/Components/UndoView;->updatePosition()V

    :cond_0
    return-void
.end method

.method public setEnterOffsetMargin(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/UndoView;->enterOffsetMargin:I

    return-void
.end method

.method public setHideAnimationType(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/UndoView;->hideAnimationType:I

    return-void
.end method

.method public setInfoText(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/UndoView;->infoText:Ljava/lang/CharSequence;

    return-void
.end method

.method public showWithAction(JILjava/lang/Object;)V
    .locals 8

    .line 0
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v7}, Lorg/telegram/ui/Components/UndoView;->showWithAction(JILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public showWithAction(JILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 7

    .line 0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, p0

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Components/UndoView;->showWithAction(Ljava/util/ArrayList;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public showWithAction(JILjava/lang/Object;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 8

    .line 0
    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move-object v4, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lorg/telegram/ui/Components/UndoView;->showWithAction(JILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public showWithAction(JILjava/lang/Runnable;)V
    .locals 8

    .line 0
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v7}, Lorg/telegram/ui/Components/UndoView;->showWithAction(JILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public showWithAction(JILjava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 8

    .line 0
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lorg/telegram/ui/Components/UndoView;->showWithAction(JILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public showWithAction(Ljava/util/ArrayList;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 26

    .line 0
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    const/16 v14, 0x3a

    const/high16 v16, 0x42400000    # 48.0f

    const/high16 v17, 0x41500000    # 13.0f

    const/16 v11, 0x50

    const/16 v10, 0x3c

    const/16 v9, 0x3b

    const/16 v12, 0x39

    const/16 v13, 0x38

    const/16 v15, 0x34

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->shouldShowClipboardToast()Z

    move-result v19

    const/16 v7, 0x21

    if-nez v19, :cond_1

    iget v8, v1, Lorg/telegram/ui/Components/UndoView;->currentAction:I

    if-eq v8, v15, :cond_0

    if-eq v8, v13, :cond_0

    if-eq v8, v12, :cond_0

    if-eq v8, v14, :cond_0

    if-eq v8, v9, :cond_0

    if-eq v8, v10, :cond_0

    if-eq v8, v11, :cond_0

    if-ne v8, v7, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v8, v1, Lorg/telegram/ui/Components/UndoView;->currentActionRunnable:Ljava/lang/Runnable;

    if-eqz v8, :cond_2

    invoke-interface {v8}, Ljava/lang/Runnable;->run()V

    :cond_2
    const/4 v8, 0x1

    iput-boolean v8, v1, Lorg/telegram/ui/Components/UndoView;->isShown:Z

    iput-object v5, v1, Lorg/telegram/ui/Components/UndoView;->currentActionRunnable:Ljava/lang/Runnable;

    iput-object v6, v1, Lorg/telegram/ui/Components/UndoView;->currentCancelRunnable:Ljava/lang/Runnable;

    iput-object v0, v1, Lorg/telegram/ui/Components/UndoView;->currentDialogIds:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v8, v21

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    iput v2, v1, Lorg/telegram/ui/Components/UndoView;->currentAction:I

    const-wide/16 v12, 0x1388

    iput-wide v12, v1, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    iput-object v3, v1, Lorg/telegram/ui/Components/UndoView;->currentInfoObject:Ljava/lang/Object;

    iput-object v4, v1, Lorg/telegram/ui/Components/UndoView;->currentInfoObject2:Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    iput-wide v12, v1, Lorg/telegram/ui/Components/UndoView;->lastUpdateTime:J

    iget-object v12, v1, Lorg/telegram/ui/Components/UndoView;->undoTextView:Landroid/widget/TextView;

    sget v13, Lorg/telegram/messenger/R$string;->Undo:I

    invoke-static {v13}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v12, v1, Lorg/telegram/ui/Components/UndoView;->undoImageView:Landroid/widget/ImageView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v12, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v12, v13, v13, v13, v13}, Landroid/view/View;->setPadding(IIII)V

    iget-object v12, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-virtual {v12, v13}, Landroid/view/View;->setScaleX(F)V

    iget-object v12, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v12, v13}, Landroid/view/View;->setScaleY(F)V

    iget-object v12, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/high16 v13, 0x41700000    # 15.0f

    const/4 v9, 0x1

    invoke-virtual {v12, v9, v13}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v9, v1, Lorg/telegram/ui/Components/UndoView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v12, 0x8

    invoke-virtual {v9, v12}, Landroid/view/View;->setVisibility(I)V

    iget-object v9, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/16 v14, 0x33

    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v9, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v14, 0x42680000    # 58.0f

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    iput v15, v9, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget-object v9, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v15, -0x2

    iput v15, v9, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    iput v15, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const/4 v15, 0x0

    iput v15, v9, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget-object v13, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget-object v14, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v13, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v14, 0x13

    iput v14, v13, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iput v15, v13, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iput v15, v13, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const/high16 v14, 0x40400000    # 3.0f

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    iput v14, v13, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    const/high16 v14, 0x42580000    # 54.0f

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    iput v14, v13, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/4 v14, -0x2

    iput v14, v13, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v14, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setMinHeight(I)V

    const/4 v14, 0x0

    if-nez v5, :cond_3

    if-eqz v6, :cond_4

    :cond_3
    sget v6, Lorg/telegram/ui/Components/UndoView;->ACTION_RINGTONE_ADDED:I

    if-ne v2, v6, :cond_5

    :cond_4
    new-instance v6, Lorg/telegram/ui/Components/UndoView$$ExternalSyntheticLambda2;

    invoke-direct {v6, v1}, Lorg/telegram/ui/Components/UndoView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/UndoView;)V

    invoke-virtual {v1, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v14}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    :cond_5
    invoke-virtual {v1, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v6, Lorg/telegram/ui/Components/UndoView$$ExternalSyntheticLambda3;

    invoke-direct {v6}, Lorg/telegram/ui/Components/UndoView$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {v1, v6}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :goto_0
    iget-object v6, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v6, v14}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/UndoView;->isTooltipAction()Z

    move-result v6

    move-object/from16 v22, v13

    const-wide/16 v12, 0xfa0

    const/high16 v23, 0x41000000    # 8.0f

    const/high16 v24, 0x40c00000    # 6.0f

    const-string v15, ""

    move-object/from16 v25, v8

    const/16 v7, 0x24

    if-eqz v6, :cond_56

    sget v0, Lorg/telegram/ui/Components/UndoView;->ACTION_RINGTONE_ADDED:I

    if-ne v2, v0, :cond_7

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    sget v0, Lorg/telegram/messenger/R$string;->SoundAdded:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/R$string;->SoundAddedSubtitle:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    iput-object v14, v1, Lorg/telegram/ui/Components/UndoView;->currentActionRunnable:Ljava/lang/Runnable;

    sget v3, Lorg/telegram/messenger/R$raw;->sound_download:I

    iput-wide v12, v1, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    move-object v14, v2

    move v2, v3

    :cond_6
    :goto_1
    const/16 v12, 0x24

    goto/16 :goto_37

    :cond_7
    const/16 v0, 0x4a

    if-ne v2, v0, :cond_8

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    sget v0, Lorg/telegram/messenger/R$string;->ReportChatSent:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/R$string;->ReportSentInfo:I

    new-array v4, v2, [Ljava/lang/Object;

    const-string v2, "ReportSentInfo"

    invoke-static {v2, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    sget v2, Lorg/telegram/messenger/R$raw;->ic_admin:I

    iput-wide v12, v1, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    goto :goto_1

    :cond_8
    const/16 v0, 0x22

    if-ne v2, v0, :cond_a

    move-object v0, v3

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    move-object v2, v4

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isChannelOrGiga(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_9

    sget v2, Lorg/telegram/messenger/R$string;->VoipChannelInvitedUser:I

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const-string v3, "VoipChannelInvitedUser"

    invoke-static {v3, v2, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    goto :goto_3

    :cond_9
    const/4 v4, 0x1

    const/4 v6, 0x0

    sget v2, Lorg/telegram/messenger/R$string;->VoipGroupInvitedUser:I

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v3

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v3, v5, v6

    const-string v3, "VoipGroupInvitedUser"

    invoke-static {v3, v2, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :goto_3
    new-instance v3, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v3}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    const/high16 v4, 0x41400000    # 12.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/AvatarDrawable;->setTextSize(I)V

    iget v4, v1, Lorg/telegram/ui/Components/UndoView;->currentAccount:I

    invoke-virtual {v3, v4, v0}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILorg/telegram/tgnet/TLRPC$User;)V

    iget-object v4, v1, Lorg/telegram/ui/Components/UndoView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v4, v0, v3}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    const-wide/16 v3, 0xbb8

    iput-wide v3, v1, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    move-object v0, v2

    :goto_4
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_a
    const/16 v0, 0x2c

    if-ne v2, v0, :cond_f

    move-object v0, v4

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Chat;

    instance-of v2, v3, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v2, :cond_c

    move-object v2, v3

    check-cast v2, Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannelOrGiga(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget v0, Lorg/telegram/messenger/R$string;->VoipChannelUserJoined:I

    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-static {v0, v5}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    goto :goto_6

    :cond_b
    const/4 v4, 0x1

    const/4 v6, 0x0

    sget v0, Lorg/telegram/messenger/R$string;->VoipChatUserJoined:I

    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v2

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v2, v5, v6

    invoke-static {v0, v5}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_c
    instance-of v2, v3, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v2, :cond_e

    move-object v2, v3

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannelOrGiga(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_d

    sget v0, Lorg/telegram/messenger/R$string;->VoipChannelChatJoined:I

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-static {v0, v5}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_d
    const/4 v4, 0x1

    const/4 v6, 0x0

    sget v0, Lorg/telegram/messenger/R$string;->VoipChatChatJoined:I

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v2, v5, v6

    invoke-static {v0, v5}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_e
    move-object v0, v15

    :goto_6
    new-instance v2, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v2}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    const/high16 v4, 0x41400000    # 12.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/AvatarDrawable;->setTextSize(I)V

    iget v4, v1, Lorg/telegram/ui/Components/UndoView;->currentAccount:I

    check-cast v3, Lorg/telegram/tgnet/TLObject;

    invoke-virtual {v2, v4, v3}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILorg/telegram/tgnet/TLObject;)V

    iget-object v4, v1, Lorg/telegram/ui/Components/UndoView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v4, v3, v2}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    const-wide/16 v2, 0xbb8

    iput-wide v2, v1, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    goto/16 :goto_4

    :cond_f
    const/16 v5, 0x25

    if-ne v2, v5, :cond_12

    new-instance v0, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/AvatarDrawable;->setTextSize(I)V

    instance-of v2, v3, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v2, :cond_10

    move-object v2, v3

    check-cast v2, Lorg/telegram/tgnet/TLRPC$User;

    iget v3, v1, Lorg/telegram/ui/Components/UndoView;->currentAccount:I

    invoke-virtual {v0, v3, v2}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILorg/telegram/tgnet/TLRPC$User;)V

    iget-object v3, v1, Lorg/telegram/ui/Components/UndoView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v3, v2, v0}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v0, v2}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_10
    move-object v2, v3

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Chat;

    iget v3, v1, Lorg/telegram/ui/Components/UndoView;->currentAccount:I

    invoke-virtual {v0, v3, v2}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILorg/telegram/tgnet/TLRPC$Chat;)V

    iget-object v3, v1, Lorg/telegram/ui/Components/UndoView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v3, v2, v0}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    :goto_7
    move-object v2, v4

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isChannelOrGiga(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_11

    sget v2, Lorg/telegram/messenger/R$string;->VoipChannelUserChanged:I

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const-string v0, "VoipChannelUserChanged"

    invoke-static {v0, v2, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_8
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    goto :goto_9

    :cond_11
    const/4 v3, 0x1

    const/4 v5, 0x0

    sget v2, Lorg/telegram/messenger/R$string;->VoipGroupUserChanged:I

    new-array v4, v3, [Ljava/lang/Object;

    aput-object v0, v4, v5

    const-string v0, "VoipGroupUserChanged"

    invoke-static {v0, v2, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :goto_9
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    const-wide/16 v5, 0xbb8

    iput-wide v5, v1, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    goto/16 :goto_4

    :cond_12
    const-wide/16 v5, 0xbb8

    const/16 v8, 0x21

    if-ne v2, v8, :cond_13

    sget v0, Lorg/telegram/messenger/R$string;->VoipGroupCopyInviteLinkCopied:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/R$raw;->voip_invite:I

    iput-wide v5, v1, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    goto/16 :goto_1

    :cond_13
    const/16 v5, 0x4d

    if-ne v2, v5, :cond_14

    move-object v0, v3

    check-cast v0, Ljava/lang/CharSequence;

    sget v2, Lorg/telegram/messenger/R$raw;->payment_success:I

    const-wide/16 v5, 0x1388

    iput-wide v5, v1, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    iget-object v3, v1, Lorg/telegram/ui/Components/UndoView;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v3, :cond_6

    instance-of v3, v4, Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v3, :cond_6

    move-object v3, v4

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v1, v14}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v4, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v4, v14}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    new-instance v4, Lorg/telegram/ui/Components/UndoView$$ExternalSyntheticLambda4;

    invoke-direct {v4, v1, v3}, Lorg/telegram/ui/Components/UndoView$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/UndoView;Lorg/telegram/tgnet/TLRPC$Message;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    :cond_14
    const/16 v5, 0x1e

    if-ne v2, v5, :cond_16

    instance-of v0, v3, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_15

    move-object v0, v3

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_15
    move-object v0, v3

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    :goto_a
    sget v2, Lorg/telegram/messenger/R$string;->VoipGroupUserCantNowSpeak:I

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v4, v3

    const-string v0, "VoipGroupUserCantNowSpeak"

    invoke-static {v0, v2, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_b
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/R$raw;->voip_muted:I

    :goto_c
    const-wide/16 v3, 0xbb8

    :goto_d
    iput-wide v3, v1, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    goto/16 :goto_1

    :cond_16
    const/16 v5, 0x23

    if-ne v2, v5, :cond_19

    instance-of v0, v3, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_17

    move-object v0, v3

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :cond_17
    instance-of v0, v3, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_18

    move-object v0, v3

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    goto :goto_e

    :cond_18
    move-object v0, v15

    :goto_e
    sget v2, Lorg/telegram/messenger/R$string;->VoipGroupUserCantNowSpeakForYou:I

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v4, v3

    const-string v0, "VoipGroupUserCantNowSpeakForYou"

    invoke-static {v0, v2, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_19
    const/16 v5, 0x1f

    if-ne v2, v5, :cond_1b

    instance-of v0, v3, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_1a

    move-object v0, v3

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    :cond_1a
    move-object v0, v3

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    :goto_f
    sget v2, Lorg/telegram/messenger/R$string;->VoipGroupUserCanNowSpeak:I

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v4, v3

    const-string v0, "VoipGroupUserCanNowSpeak"

    invoke-static {v0, v2, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_10
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/R$raw;->voip_unmuted:I

    goto :goto_c

    :cond_1b
    const/16 v5, 0x26

    if-ne v2, v5, :cond_1d

    instance-of v0, v3, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_1c

    move-object v0, v3

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Chat;

    sget v2, Lorg/telegram/messenger/R$string;->VoipGroupYouCanNowSpeakIn:I

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v4, v3

    const-string v0, "VoipGroupYouCanNowSpeakIn"

    invoke-static {v0, v2, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_11
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    goto :goto_12

    :cond_1c
    sget v0, Lorg/telegram/messenger/R$string;->VoipGroupYouCanNowSpeak:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :goto_12
    sget v2, Lorg/telegram/messenger/R$raw;->voip_allow_talk:I

    goto/16 :goto_c

    :cond_1d
    const/16 v5, 0x2a

    if-ne v2, v5, :cond_1f

    move-object v0, v3

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannelOrGiga(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_1e

    sget v0, Lorg/telegram/messenger/R$string;->VoipChannelSoundMuted:I

    :goto_13
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    goto :goto_14

    :cond_1e
    sget v0, Lorg/telegram/messenger/R$string;->VoipGroupSoundMuted:I

    goto :goto_13

    :goto_14
    sget v2, Lorg/telegram/messenger/R$raw;->ic_mute:I

    goto/16 :goto_c

    :cond_1f
    const/16 v5, 0x2b

    if-ne v2, v5, :cond_21

    move-object v0, v3

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannelOrGiga(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_20

    sget v0, Lorg/telegram/messenger/R$string;->VoipChannelSoundUnmuted:I

    :goto_15
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    goto :goto_16

    :cond_20
    sget v0, Lorg/telegram/messenger/R$string;->VoipGroupSoundUnmuted:I

    goto :goto_15

    :goto_16
    sget v2, Lorg/telegram/messenger/R$raw;->ic_unmute:I

    goto/16 :goto_c

    :cond_21
    iget v5, v1, Lorg/telegram/ui/Components/UndoView;->currentAction:I

    const/16 v6, 0x27

    if-eq v5, v6, :cond_52

    const/16 v6, 0x64

    if-ne v5, v6, :cond_22

    goto/16 :goto_34

    :cond_22
    const/16 v6, 0x28

    if-eq v5, v6, :cond_50

    const/16 v6, 0x65

    if-ne v5, v6, :cond_23

    goto/16 :goto_31

    :cond_23
    if-ne v2, v7, :cond_25

    instance-of v0, v3, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_24

    move-object v0, v3

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    :cond_24
    move-object v0, v3

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    :goto_17
    sget v2, Lorg/telegram/messenger/R$string;->VoipGroupUserCanNowSpeakForYou:I

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v4, v3

    const-string v0, "VoipGroupUserCanNowSpeakForYou"

    invoke-static {v0, v2, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_10

    :cond_25
    const/16 v6, 0x20

    if-eq v2, v6, :cond_4d

    const/16 v6, 0x66

    if-ne v2, v6, :cond_26

    goto/16 :goto_2d

    :cond_26
    const/16 v6, 0x9

    if-eq v2, v6, :cond_4b

    const/16 v6, 0xa

    if-ne v2, v6, :cond_27

    goto/16 :goto_2b

    :cond_27
    const/16 v6, 0x8

    if-ne v2, v6, :cond_28

    move-object v0, v3

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    sget v2, Lorg/telegram/messenger/R$string;->NowInContacts:I

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v4, v8

    const-string v0, "NowInContacts"

    invoke-static {v0, v2, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget v20, Lorg/telegram/messenger/R$raw;->contact_check:I

    move/from16 v2, v20

    goto/16 :goto_1

    :cond_28
    const/4 v8, 0x0

    const/16 v12, 0x57

    if-ne v2, v12, :cond_29

    sget v0, Lorg/telegram/messenger/R$string;->ProxyAddedSuccess:I

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_18
    sget v2, Lorg/telegram/messenger/R$raw;->contact_check:I

    goto/16 :goto_1

    :cond_29
    const/16 v8, 0x16

    if-ne v2, v8, :cond_2f

    invoke-static {v10, v11}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v0

    if-eqz v0, :cond_2b

    if-nez v3, :cond_2a

    sget v0, Lorg/telegram/messenger/R$string;->MainProfilePhotoSetHint:I

    goto :goto_19

    :cond_2a
    sget v0, Lorg/telegram/messenger/R$string;->MainProfileVideoSetHint:I

    goto :goto_19

    :cond_2b
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    neg-long v4, v10

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_2d

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v0, :cond_2d

    if-nez v3, :cond_2c

    sget v0, Lorg/telegram/messenger/R$string;->MainChannelProfilePhotoSetHint:I

    goto :goto_19

    :cond_2c
    sget v0, Lorg/telegram/messenger/R$string;->MainChannelProfileVideoSetHint:I

    goto :goto_19

    :cond_2d
    if-nez v3, :cond_2e

    sget v0, Lorg/telegram/messenger/R$string;->MainGroupProfilePhotoSetHint:I

    goto :goto_19

    :cond_2e
    sget v0, Lorg/telegram/messenger/R$string;->MainGroupProfileVideoSetHint:I

    goto :goto_19

    :cond_2f
    const/16 v8, 0x17

    if-ne v2, v8, :cond_30

    sget v0, Lorg/telegram/messenger/R$string;->ChatWasMovedToMainList:I

    :goto_19
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    :cond_30
    const/4 v8, 0x6

    if-ne v2, v8, :cond_31

    sget v0, Lorg/telegram/messenger/R$string;->ArchiveHidden:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/R$string;->ArchiveHiddenInfo:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v14

    sget v2, Lorg/telegram/messenger/R$raw;->chats_swipearchive:I

    const/16 v12, 0x30

    goto/16 :goto_37

    :cond_31
    const/16 v8, 0xd

    if-ne v5, v8, :cond_32

    sget v2, Lorg/telegram/messenger/R$string;->QuizWellDone:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->QuizWellDoneInfo:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v14

    sget v3, Lorg/telegram/messenger/R$raw;->wallet_congrats:I

    :goto_1a
    move-object v0, v2

    move v2, v3

    const/16 v12, 0x2c

    goto/16 :goto_37

    :cond_32
    const/16 v8, 0xe

    if-ne v5, v8, :cond_33

    sget v2, Lorg/telegram/messenger/R$string;->QuizWrongAnswer:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->QuizWrongAnswerInfo:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v14

    sget v3, Lorg/telegram/messenger/R$raw;->wallet_science:I

    goto :goto_1a

    :cond_33
    const/4 v0, 0x7

    if-ne v2, v0, :cond_34

    sget v0, Lorg/telegram/messenger/R$string;->ArchivePinned:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget v2, v1, Lorg/telegram/ui/Components/UndoView;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->dialogFilters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3b

    sget v2, Lorg/telegram/messenger/R$string;->ArchivePinnedInfo:I

    :goto_1b
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v14

    goto :goto_1f

    :cond_34
    const/16 v0, 0x14

    if-eq v2, v0, :cond_3f

    const/16 v5, 0x15

    if-ne v2, v5, :cond_35

    goto/16 :goto_23

    :cond_35
    const/16 v0, 0x13

    if-ne v2, v0, :cond_36

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoText:Ljava/lang/CharSequence;

    sget v2, Lorg/telegram/messenger/R$raw;->ic_delete:I

    goto/16 :goto_1

    :cond_36
    const/16 v0, 0x52

    if-ne v2, v0, :cond_38

    move-object v0, v3

    check-cast v0, Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-boolean v0, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    if-eqz v0, :cond_37

    sget v0, Lorg/telegram/messenger/R$string;->AttachMediaVideoDeselected:I

    :goto_1c
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    :cond_37
    sget v0, Lorg/telegram/messenger/R$string;->AttachMediaPhotoDeselected:I

    goto :goto_1c

    :cond_38
    const/16 v0, 0x4e

    if-eq v2, v0, :cond_3c

    const/16 v0, 0x4f

    if-ne v2, v0, :cond_39

    goto :goto_20

    :cond_39
    const/4 v0, 0x3

    if-ne v2, v0, :cond_3a

    sget v0, Lorg/telegram/messenger/R$string;->ChatArchived:I

    :goto_1d
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1e

    :cond_3a
    sget v0, Lorg/telegram/messenger/R$string;->ChatsArchived:I

    goto :goto_1d

    :goto_1e
    iget v2, v1, Lorg/telegram/ui/Components/UndoView;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->dialogFilters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3b

    sget v2, Lorg/telegram/messenger/R$string;->ChatArchivedInfo:I

    goto :goto_1b

    :cond_3b
    :goto_1f
    sget v2, Lorg/telegram/messenger/R$raw;->chats_infotip:I

    goto/16 :goto_1

    :cond_3c
    :goto_20
    move-object v0, v3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v3, 0x4e

    if-ne v2, v3, :cond_3d

    const/4 v2, 0x0

    new-array v5, v2, [Ljava/lang/Object;

    const-string v8, "PinnedDialogsCount"

    invoke-static {v8, v0, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_21

    :cond_3d
    const/4 v2, 0x0

    new-array v5, v2, [Ljava/lang/Object;

    const-string v2, "UnpinnedDialogsCount"

    invoke-static {v2, v0, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_21
    iget v2, v1, Lorg/telegram/ui/Components/UndoView;->currentAction:I

    if-ne v2, v3, :cond_3e

    sget v2, Lorg/telegram/messenger/R$raw;->ic_pin:I

    goto :goto_22

    :cond_3e
    sget v2, Lorg/telegram/messenger/R$raw;->ic_unpin:I

    :goto_22
    instance-of v3, v4, Ljava/lang/Integer;

    if-eqz v3, :cond_6

    move-object v3, v4

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    goto/16 :goto_d

    :cond_3f
    :goto_23
    check-cast v4, Lorg/telegram/messenger/MessagesController$DialogFilter;

    iget-object v5, v4, Lorg/telegram/messenger/MessagesController$DialogFilter;->name:Ljava/lang/String;

    iget-object v8, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v8

    const/4 v12, 0x0

    invoke-static {v5, v8, v12}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v5

    iget-object v8, v4, Lorg/telegram/messenger/MessagesController$DialogFilter;->entities:Ljava/util/ArrayList;

    iget-object v12, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v12

    invoke-virtual {v12}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v12

    invoke-static {v5, v8, v12}, Lorg/telegram/messenger/MessageObject;->replaceAnimatedEmoji(Ljava/lang/CharSequence;Ljava/util/ArrayList;Landroid/graphics/Paint$FontMetricsInt;)Landroid/text/Spannable;

    move-result-object v5

    iget-boolean v4, v4, Lorg/telegram/messenger/MessagesController$DialogFilter;->title_noanimate:Z

    if-eqz v4, :cond_40

    const/16 v4, 0x1a

    goto :goto_24

    :cond_40
    const/4 v4, 0x0

    :goto_24
    iput v4, v1, Lorg/telegram/ui/Components/UndoView;->infoTextViewEmojiCacheType:I

    const-wide/16 v12, 0x0

    cmp-long v4, v10, v12

    if-eqz v4, :cond_47

    invoke-static {v10, v11}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v3

    if-eqz v3, :cond_41

    iget v3, v1, Lorg/telegram/ui/Components/UndoView;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-static {v10, v11}, Lorg/telegram/messenger/DialogObject;->getEncryptedChatId(J)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v3

    iget-wide v10, v3, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:J

    :cond_41
    invoke-static {v10, v11}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v3

    if-eqz v3, :cond_45

    iget v3, v1, Lorg/telegram/ui/Components/UndoView;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v8

    if-eqz v8, :cond_42

    sget v3, Lorg/telegram/messenger/R$string;->SavedMessages:I

    :goto_25
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_26

    :cond_42
    invoke-static {v3}, Lorg/telegram/messenger/UserObject;->isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v3

    if-eqz v3, :cond_43

    sget v3, Lorg/telegram/messenger/R$string;->RepliesTitle:I

    goto :goto_25

    :cond_43
    :goto_26
    if-ne v2, v0, :cond_44

    sget v3, Lorg/telegram/messenger/R$string;->FilterUserAddedToExisting:I

    const/4 v8, 0x2

    new-array v10, v8, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v4, v10, v11

    const/4 v12, 0x1

    aput-object v5, v10, v12

    invoke-static {v3, v10}, Lorg/telegram/messenger/LocaleController;->formatSpannable(I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v3

    :goto_27
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    goto/16 :goto_28

    :cond_44
    const/4 v8, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x1

    sget v3, Lorg/telegram/messenger/R$string;->FilterUserRemovedFrom:I

    new-array v10, v8, [Ljava/lang/Object;

    aput-object v4, v10, v11

    aput-object v5, v10, v12

    invoke-static {v3, v10}, Lorg/telegram/messenger/LocaleController;->formatSpannable(I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_27

    :cond_45
    iget v3, v1, Lorg/telegram/ui/Components/UndoView;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    neg-long v10, v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    if-ne v2, v0, :cond_46

    sget v4, Lorg/telegram/messenger/R$string;->FilterChatAddedToExisting:I

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v8, 0x2

    new-array v10, v8, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v3, v10, v11

    const/4 v12, 0x1

    aput-object v5, v10, v12

    invoke-static {v4, v10}, Lorg/telegram/messenger/LocaleController;->formatSpannable(I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_27

    :cond_46
    const/4 v8, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x1

    sget v4, Lorg/telegram/messenger/R$string;->FilterChatRemovedFrom:I

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    new-array v10, v8, [Ljava/lang/Object;

    aput-object v3, v10, v11

    aput-object v5, v10, v12

    invoke-static {v4, v10}, Lorg/telegram/messenger/LocaleController;->formatSpannable(I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_27

    :cond_47
    const/4 v11, 0x0

    if-ne v2, v0, :cond_48

    sget v4, Lorg/telegram/messenger/R$string;->FilterChatsAddedToExisting:I

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    new-array v8, v11, [Ljava/lang/Object;

    const-string v10, "ChatsSelected"

    invoke-static {v10, v3, v8}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x2

    new-array v10, v8, [Ljava/lang/Object;

    aput-object v3, v10, v11

    const/4 v3, 0x1

    aput-object v5, v10, v3

    invoke-static {v4, v10}, Lorg/telegram/messenger/LocaleController;->formatSpannable(I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_27

    :cond_48
    sget v4, Lorg/telegram/messenger/R$string;->FilterChatsRemovedFrom:I

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    new-array v8, v11, [Ljava/lang/Object;

    const-string v10, "ChatsSelected"

    invoke-static {v10, v3, v8}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x2

    new-array v10, v8, [Ljava/lang/Object;

    aput-object v3, v10, v11

    const/4 v3, 0x1

    aput-object v5, v10, v3

    invoke-static {v4, v10}, Lorg/telegram/messenger/LocaleController;->formatSpannable(I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v3

    goto/16 :goto_27

    :goto_28
    if-ne v2, v0, :cond_49

    sget v0, Lorg/telegram/messenger/R$raw;->folder_in:I

    goto :goto_29

    :cond_49
    sget v0, Lorg/telegram/messenger/R$raw;->folder_out:I

    :goto_29
    move v2, v0

    :cond_4a
    :goto_2a
    move-object v0, v3

    goto/16 :goto_1

    :cond_4b
    :goto_2b
    move-object v0, v3

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    const/16 v3, 0x9

    if-ne v2, v3, :cond_4c

    sget v2, Lorg/telegram/messenger/R$string;->EditAdminTransferChannelToast:I

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const-string v0, "EditAdminTransferChannelToast"

    invoke-static {v0, v2, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_2c
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    goto/16 :goto_18

    :cond_4c
    const/4 v3, 0x1

    const/4 v5, 0x0

    sget v2, Lorg/telegram/messenger/R$string;->EditAdminTransferGroupToast:I

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    new-array v4, v3, [Ljava/lang/Object;

    aput-object v0, v4, v5

    const-string v0, "EditAdminTransferGroupToast"

    invoke-static {v0, v2, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2c

    :cond_4d
    :goto_2d
    instance-of v0, v3, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_4e

    move-object v0, v3

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2e

    :cond_4e
    move-object v0, v3

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    :goto_2e
    const/16 v3, 0x66

    if-ne v2, v3, :cond_4f

    sget v2, Lorg/telegram/messenger/R$string;->VoipConferenceKicked:I

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_2f
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    goto :goto_30

    :cond_4f
    const/4 v3, 0x1

    const/4 v5, 0x0

    sget v2, Lorg/telegram/messenger/R$string;->VoipGroupRemovedFromGroup:I

    new-array v4, v3, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2f

    :goto_30
    sget v2, Lorg/telegram/messenger/R$raw;->voip_group_removed:I

    goto/16 :goto_c

    :cond_50
    :goto_31
    const/16 v0, 0x28

    if-ne v5, v0, :cond_51

    sget v0, Lorg/telegram/messenger/R$string;->VoipGroupAudioRecordSaved:I

    :goto_32
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_33

    :cond_51
    sget v0, Lorg/telegram/messenger/R$string;->VoipGroupVideoRecordSaved:I

    goto :goto_32

    :goto_33
    sget v2, Lorg/telegram/messenger/R$raw;->voip_record_saved:I

    iput-wide v12, v1, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    iget-object v3, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    new-instance v4, Lorg/telegram/messenger/AndroidUtilities$LinkMovementMethodMy;

    invoke-direct {v4}, Lorg/telegram/messenger/AndroidUtilities$LinkMovementMethodMy;-><init>()V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string v4, "**"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const-string v5, "**"

    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v4, :cond_4a

    if-ltz v0, :cond_4a

    if-eq v4, v0, :cond_4a

    const/4 v5, 0x2

    add-int/lit8 v8, v0, 0x2

    invoke-virtual {v3, v0, v8, v15}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v8, v4, 0x2

    invoke-virtual {v3, v4, v8, v15}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :try_start_0
    new-instance v5, Lorg/telegram/ui/Components/URLSpanNoUnderline;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "tg://openmessage?user_id="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v1, Lorg/telegram/ui/Components/UndoView;->currentAccount:I

    invoke-static {v10}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Lorg/telegram/ui/Components/URLSpanNoUnderline;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x2

    sub-int/2addr v0, v8

    const/16 v8, 0x21

    invoke-virtual {v3, v5, v4, v0, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2a

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_2a

    :cond_52
    :goto_34
    const/16 v0, 0x27

    if-ne v5, v0, :cond_53

    sget v0, Lorg/telegram/messenger/R$string;->VoipGroupAudioRecordStarted:I

    :goto_35
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_36

    :cond_53
    sget v0, Lorg/telegram/messenger/R$string;->VoipGroupVideoRecordStarted:I

    goto :goto_35

    :goto_36
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/R$raw;->voip_record_start:I

    goto/16 :goto_c

    :goto_37
    iget-object v3, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    if-eqz v2, :cond_54

    invoke-virtual {v0, v2, v12, v12}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->getAnimatedDrawable()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->setPlayInDirectionOfCustomEndFrame(Z)V

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->getFramesCount()I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RLottieImageView;->setProgress(F)V

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    goto :goto_38

    :cond_54
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_38
    const/high16 v3, 0x42680000    # 58.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v9, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    if-eqz v14, :cond_55

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v9, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/high16 v3, 0x41600000    # 14.0f

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v2, 0x8

    goto :goto_39

    :cond_55
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v9, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/high16 v3, 0x41700000    # 15.0f

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :goto_39
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->undoButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5a

    :cond_56
    iget v6, v1, Lorg/telegram/ui/Components/UndoView;->currentAction:I

    const/16 v8, 0x2d

    if-eq v6, v8, :cond_80

    const/16 v8, 0x2e

    if-eq v6, v8, :cond_80

    const/16 v8, 0x2f

    if-eq v6, v8, :cond_80

    const/16 v8, 0x34

    if-eq v6, v8, :cond_80

    const/16 v8, 0x35

    if-eq v6, v8, :cond_80

    const/16 v8, 0x36

    if-eq v6, v8, :cond_80

    const/16 v8, 0x37

    if-eq v6, v8, :cond_80

    const/16 v8, 0x38

    if-eq v6, v8, :cond_80

    const/16 v8, 0x39

    if-eq v6, v8, :cond_80

    const/16 v8, 0x3a

    if-eq v6, v8, :cond_80

    const/16 v8, 0x3b

    if-eq v6, v8, :cond_80

    const/16 v8, 0x3c

    if-eq v6, v8, :cond_80

    const/16 v8, 0x47

    if-eq v6, v8, :cond_80

    const/16 v8, 0x46

    if-eq v6, v8, :cond_80

    const/16 v8, 0x4b

    if-eq v6, v8, :cond_80

    const/16 v8, 0x4c

    if-eq v6, v8, :cond_80

    const/16 v8, 0x29

    if-eq v6, v8, :cond_80

    const/16 v8, 0x4e

    if-eq v6, v8, :cond_80

    const/16 v8, 0x4f

    if-eq v6, v8, :cond_80

    const/16 v8, 0x3d

    if-eq v6, v8, :cond_80

    const/16 v8, 0x50

    if-ne v6, v8, :cond_57

    goto/16 :goto_5b

    :cond_57
    const/16 v8, 0x18

    if-eq v6, v8, :cond_58

    const/16 v8, 0x19

    if-ne v6, v8, :cond_59

    :cond_58
    const/16 v2, 0x8

    const/4 v5, 0x0

    goto/16 :goto_54

    :cond_59
    const/16 v8, 0xb

    if-ne v6, v8, :cond_5a

    move-object v0, v3

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_authorization;

    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v3, Lorg/telegram/messenger/R$string;->AuthAnotherClientOk:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v3, Lorg/telegram/messenger/R$raw;->contact_check:I

    invoke-virtual {v2, v3, v7, v7}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    const/high16 v2, 0x42680000    # 58.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, v9, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_authorization;->app_name:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/high16 v2, 0x41600000    # 14.0f

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->undoTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->undoImageView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->undoButton:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_3a
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_59

    :cond_5a
    const/16 v8, 0xf

    const/high16 v18, 0x41d00000    # 26.0f

    if-ne v6, v8, :cond_5c

    const-wide/16 v2, 0x2710

    iput-wide v2, v1, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->undoTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->Open:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v2, Lorg/telegram/messenger/R$string;->FilterAvailableTitle:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v2, Lorg/telegram/messenger/R$raw;->filter_new:I

    invoke-virtual {v0, v2, v7, v7}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->undoTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->undoTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v0, v2

    const/high16 v2, 0x42680000    # 58.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, v9, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v0, v9, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sget v0, Lorg/telegram/messenger/R$string;->FilterAvailableText:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/16 v3, 0x2a

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v4, :cond_5b

    if-ltz v0, :cond_5b

    if-eq v4, v0, :cond_5b

    const/4 v3, 0x1

    add-int/lit8 v8, v0, 0x1

    invoke-virtual {v2, v0, v8, v15}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v2, v4, v8, v15}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v6, Lorg/telegram/ui/Components/URLSpanNoUnderline;

    const-string v7, "tg://settings/folders"

    invoke-direct {v6, v7}, Lorg/telegram/ui/Components/URLSpanNoUnderline;-><init>(Ljava/lang/String;)V

    sub-int/2addr v0, v3

    const/16 v3, 0x21

    invoke-virtual {v2, v6, v4, v0, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_5b
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->undoButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->undoImageView:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3a

    :cond_5c
    const/16 v8, 0x10

    if-eq v6, v8, :cond_5d

    const/16 v8, 0x11

    if-ne v6, v8, :cond_5e

    :cond_5d
    move-object/from16 v2, v22

    goto/16 :goto_4e

    :cond_5e
    const/16 v8, 0x12

    if-ne v6, v8, :cond_5f

    move-object v0, v3

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x32

    mul-int/lit16 v2, v2, 0x640

    const/16 v3, 0x2710

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/16 v3, 0xfa0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v1, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/high16 v3, 0x41600000    # 14.0f

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->undoTextView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->undoButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const/high16 v2, 0x42680000    # 58.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v9, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v9, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const/high16 v0, 0x40e00000    # 7.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v9, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    const/4 v0, -0x1

    iput v0, v9, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v0, 0x33

    move-object/from16 v2, v22

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v2, Lorg/telegram/messenger/R$raw;->chats_infotip:I

    invoke-virtual {v0, v2, v7, v7}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RLottieImageView;->setProgress(F)V

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    new-instance v2, Lorg/telegram/messenger/AndroidUtilities$LinkMovementMethodMy;

    invoke-direct {v2}, Lorg/telegram/messenger/AndroidUtilities$LinkMovementMethodMy;-><init>()V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto/16 :goto_5a

    :cond_5f
    const/16 v8, 0xc

    if-ne v6, v8, :cond_61

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v2, Lorg/telegram/messenger/R$string;->ColorThemeChanged:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v2, Lorg/telegram/messenger/R$drawable;->toast_pallete:I

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RLottieImageView;->setImageResource(I)V

    const/high16 v2, 0x42680000    # 58.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v9, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v9, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sget v0, Lorg/telegram/messenger/R$string;->ColorThemeChangedInfo:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/16 v3, 0x2a

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v4, :cond_60

    if-ltz v0, :cond_60

    if-eq v4, v0, :cond_60

    const/4 v3, 0x1

    add-int/lit8 v8, v0, 0x1

    invoke-virtual {v2, v0, v8, v15}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v2, v4, v8, v15}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v6, Lorg/telegram/ui/Components/URLSpanNoUnderline;

    const-string v7, "tg://settings/themes"

    invoke-direct {v6, v7}, Lorg/telegram/ui/Components/URLSpanNoUnderline;-><init>(Ljava/lang/String;)V

    sub-int/2addr v0, v3

    const/16 v3, 0x21

    invoke-virtual {v2, v6, v4, v0, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_60
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->undoTextView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->undoButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5a

    :cond_61
    const/4 v8, 0x0

    const/16 v12, 0x54

    if-ne v6, v12, :cond_62

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/high16 v2, 0x41700000    # 15.0f

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v2, Lorg/telegram/messenger/R$string;->UnlockPremiumTranscriptionHint:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v2, Lorg/telegram/messenger/R$raw;->voice_to_text:I

    invoke-virtual {v0, v2, v7, v7}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RLottieImageView;->setProgress(F)V

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->undoTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->PremiumMore:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v2, 0x42680000    # 58.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v9, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->undoTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->undoTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v0, v2

    iput v0, v9, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v9, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iput v0, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const/4 v0, -0x2

    iput v0, v9, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->undoTextView:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->undoButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->undoImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_5a

    :cond_62
    const/4 v5, 0x0

    const/16 v12, 0x55

    if-ne v6, v12, :cond_63

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/high16 v2, 0x41700000    # 15.0f

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v2, Lorg/telegram/messenger/R$string;->SwipeToReplyHint:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v2, Lorg/telegram/messenger/R$raw;->hint_swipe_reply:I

    const/16 v3, 0x40

    const/16 v4, 0x40

    invoke-virtual {v0, v2, v3, v4}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RLottieImageView;->setProgress(F)V

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->SwipeToReplyHintMessage:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v2, 0x42680000    # 58.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v9, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->undoTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->undoTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v0, v2

    iput v0, v9, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const/4 v0, -0x2

    iput v0, v9, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_39

    :cond_63
    const/16 v8, 0x5a

    if-eq v6, v8, :cond_78

    const/16 v8, 0x5b

    if-eq v6, v8, :cond_78

    const/16 v8, 0x5c

    if-eq v6, v8, :cond_78

    const/16 v8, 0x5d

    if-eq v6, v8, :cond_78

    const/16 v8, 0x5e

    if-ne v6, v8, :cond_64

    goto/16 :goto_49

    :cond_64
    const/4 v8, 0x2

    if-eq v6, v8, :cond_65

    const/4 v8, 0x4

    if-ne v6, v8, :cond_66

    :cond_65
    const/4 v4, 0x2

    goto/16 :goto_45

    :cond_66
    const/16 v6, 0x52

    if-ne v2, v6, :cond_6b

    const/high16 v2, 0x42680000    # 58.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v9, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move-object v0, v3

    check-cast v0, Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    iget-boolean v3, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    if-eqz v3, :cond_67

    sget v3, Lorg/telegram/messenger/R$string;->AttachMediaVideoDeselected:I

    :goto_3b
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_3c

    :cond_67
    sget v3, Lorg/telegram/messenger/R$string;->AttachMediaPhotoDeselected:I

    goto :goto_3b

    :goto_3c
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->undoButton:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/high16 v4, 0x41700000    # 15.0f

    const/4 v6, 0x1

    invoke-virtual {v2, v6, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    iget-object v2, v0, Lorg/telegram/messenger/MediaController$MediaEditState;->thumbPath:Ljava/lang/String;

    if-eqz v2, :cond_68

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->chat_attachEmptyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2, v14, v3}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_5a

    :cond_68
    iget-object v2, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    if-eqz v2, :cond_6a

    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget v3, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->orientation:I

    iget v4, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->invert:I

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lorg/telegram/ui/Components/BackupImageView;->setOrientation(IIZ)V

    iget-boolean v2, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    if-eqz v2, :cond_69

    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "vthumb://"

    :goto_3d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->chat_attachEmptyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0, v14, v3}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_5a

    :cond_69
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "thumb://"

    goto :goto_3d

    :cond_6a
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->chat_attachEmptyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_5a

    :cond_6b
    const/high16 v5, 0x42340000    # 45.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    iput v5, v9, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    iput v5, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const/4 v5, 0x0

    iput v5, v9, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget-object v6, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/high16 v7, 0x41700000    # 15.0f

    const/4 v8, 0x1

    invoke-virtual {v6, v8, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v6, v1, Lorg/telegram/ui/Components/UndoView;->undoButton:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget-object v6, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v5, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    iget v2, v1, Lorg/telegram/ui/Components/UndoView;->currentAction:I

    const/16 v5, 0x58

    if-ne v2, v5, :cond_6e

    move-object v2, v3

    check-cast v2, Ljava/lang/String;

    move-object v3, v4

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_6c

    iget-object v4, v1, Lorg/telegram/ui/Components/UndoView;->undoTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    iget-object v5, v1, Lorg/telegram/ui/Components/UndoView;->undoTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v4, v5

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    iput v5, v9, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v4, v9, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    iput v5, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v5, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v4, v5, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget-object v4, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v5, Lorg/telegram/messenger/R$string;->FolderLinkDeletedTitle:I

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v7, v6

    const-string v2, "FolderLinkDeletedTitle"

    invoke-static {v2, v5, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    new-array v4, v6, [Ljava/lang/Object;

    const-string v5, "FolderLinkDeletedSubtitle"

    invoke-static {v5, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_3e
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_41

    :cond_6c
    iget-object v3, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v3, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v4, Lorg/telegram/messenger/R$string;->FolderLinkDeleted:I

    if-nez v2, :cond_6d

    move-object v2, v15

    :cond_6d
    const/16 v5, 0x2731

    const/16 v6, 0x2a

    invoke-virtual {v2, v6, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v6, v5

    const-string v2, "FolderLinkDeleted"

    invoke-static {v2, v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_41

    :cond_6e
    const/16 v3, 0x51

    if-eq v2, v3, :cond_74

    if-eqz v2, :cond_74

    const/16 v3, 0x1a

    if-ne v2, v3, :cond_6f

    goto :goto_40

    :cond_6f
    const/16 v3, 0x1b

    if-ne v2, v3, :cond_70

    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v3, Lorg/telegram/messenger/R$string;->ChatsDeletedUndo:I

    :goto_3f
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_3e

    :cond_70
    invoke-static {v10, v11}, Lorg/telegram/messenger/DialogObject;->isChatDialog(J)Z

    move-result v2

    if-eqz v2, :cond_73

    iget v2, v1, Lorg/telegram/ui/Components/UndoView;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    neg-long v3, v10

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isMonoForum(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    if-eqz v3, :cond_71

    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v3, Lorg/telegram/messenger/R$string;->MonoforumDeletedUndo:I

    goto :goto_3f

    :cond_71
    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    if-eqz v3, :cond_72

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v2, :cond_72

    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v3, Lorg/telegram/messenger/R$string;->ChannelDeletedUndo:I

    goto :goto_3f

    :cond_72
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v3, Lorg/telegram/messenger/R$string;->GroupDeletedUndo:I

    goto :goto_3f

    :cond_73
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v3, Lorg/telegram/messenger/R$string;->ChatDeletedUndo:I

    goto :goto_3f

    :cond_74
    :goto_40
    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v3, Lorg/telegram/messenger/R$string;->HistoryClearedUndo:I

    goto :goto_3f

    :goto_41
    iget v2, v1, Lorg/telegram/ui/Components/UndoView;->currentAction:I

    const/16 v3, 0x51

    if-eq v2, v3, :cond_7f

    const/4 v2, 0x0

    :goto_42
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_7f

    iget v3, v1, Lorg/telegram/ui/Components/UndoView;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget v6, v1, Lorg/telegram/ui/Components/UndoView;->currentAction:I

    const/16 v7, 0x1a

    if-eqz v6, :cond_76

    if-ne v6, v7, :cond_75

    goto :goto_43

    :cond_75
    const/4 v6, 0x0

    goto :goto_44

    :cond_76
    :goto_43
    const/4 v6, 0x1

    :goto_44
    invoke-virtual {v3, v4, v5, v6}, Lorg/telegram/messenger/MessagesController;->addDialogAction(JZ)V

    const/4 v3, 0x1

    add-int/2addr v2, v3

    goto :goto_42

    :goto_45
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    if-ne v2, v4, :cond_77

    sget v2, Lorg/telegram/messenger/R$string;->ChatArchived:I

    :goto_46
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v2, 0x42680000    # 58.0f

    goto :goto_47

    :cond_77
    sget v2, Lorg/telegram/messenger/R$string;->ChatsArchived:I

    goto :goto_46

    :goto_47
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v9, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const/4 v2, 0x0

    iput v2, v9, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/high16 v4, 0x41700000    # 15.0f

    const/4 v5, 0x1

    invoke-virtual {v0, v5, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->undoButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v2, Lorg/telegram/messenger/R$raw;->chats_archived:I

    :goto_48
    invoke-virtual {v0, v2, v7, v7}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    goto/16 :goto_59

    :cond_78
    :goto_49
    packed-switch v6, :pswitch_data_0

    :goto_4a
    const/high16 v3, 0x42680000    # 58.0f

    goto :goto_4d

    :pswitch_0
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v3, Lorg/telegram/messenger/R$string;->BoostingOnlyRecipientCode:I

    :goto_4b
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_4c
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4a

    :pswitch_1
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-static {}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->boostsPerSentGift()I

    move-result v3

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "BoostingWaitWarningPlural"

    invoke-static {v6, v3, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    goto :goto_4c

    :pswitch_2
    const/4 v4, 0x0

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-static {}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->giveawayCountriesMax()J

    move-result-wide v5

    long-to-int v3, v5

    new-array v5, v4, [Ljava/lang/Object;

    const-string v4, "BoostingSelectUpToWarningCountriesPlural"

    invoke-static {v4, v3, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_4c

    :pswitch_3
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v3, Lorg/telegram/messenger/R$string;->BoostingSelectUpToWarningUsers:I

    goto :goto_4b

    :pswitch_4
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-static {}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->giveawayAddPeersMax()J

    move-result-wide v3

    long-to-int v4, v3

    const/4 v3, 0x0

    new-array v5, v3, [Ljava/lang/Object;

    const-string v3, "BoostingSelectUpToWarningChannelsGroupsPlural"

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_4c

    :goto_4d
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v9, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v9, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/high16 v3, 0x41700000    # 15.0f

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->undoButton:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v2, Lorg/telegram/messenger/R$raw;->chats_infotip:I

    goto/16 :goto_48

    :goto_4e
    iput-wide v12, v1, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/high16 v5, 0x41600000    # 14.0f

    const/4 v6, 0x1

    invoke-virtual {v0, v6, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/16 v5, 0x10

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/high16 v5, 0x41f00000    # 30.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setMinHeight(I)V

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    const-string v3, "\ud83c\udfb2"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_79

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v2, Lorg/telegram/messenger/R$string;->DiceInfo2:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v2, Lorg/telegram/messenger/R$drawable;->dice:I

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RLottieImageView;->setImageResource(I)V

    goto/16 :goto_51

    :cond_79
    const-string v3, "\ud83c\udfaf"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7a

    iget-object v3, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v5, Lorg/telegram/messenger/R$string;->DartInfo:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    :goto_4f
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_50

    :cond_7a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DiceEmojiInfo_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getServerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7b

    iget-object v5, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v3, v6, v7}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_50

    :cond_7b
    const/4 v7, 0x0

    iget-object v3, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v5, Lorg/telegram/messenger/R$string;->DiceEmojiInfo:I

    const/4 v6, 0x1

    new-array v8, v6, [Ljava/lang/Object;

    aput-object v0, v8, v7

    const-string v6, "DiceEmojiInfo"

    invoke-static {v6, v5, v8}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v6

    invoke-static {v5, v6, v7}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v5

    goto :goto_4f

    :goto_50
    iget-object v3, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-static {v0}, Lorg/telegram/messenger/Emoji;->getEmojiDrawable(Ljava/lang/CharSequence;)Lorg/telegram/messenger/Emoji$EmojiDrawable;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/high16 v3, 0x41600000    # 14.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v9, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    :goto_51
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->undoTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->SendDice:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v0, v1, Lorg/telegram/ui/Components/UndoView;->currentAction:I

    const/16 v2, 0x10

    if-ne v0, v2, :cond_7c

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->undoTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->undoTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->undoTextView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->undoTextView:Landroid/widget/TextView;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_undo_cancelColor:I

    invoke-direct {v1, v5}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->undoImageView:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->undoButton:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_52
    const/high16 v3, 0x42680000    # 58.0f

    goto :goto_53

    :cond_7c
    const/16 v4, 0x8

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->undoTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->undoButton:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_52

    :goto_53
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iput v3, v9, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v0, v9, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const/high16 v0, 0x40e00000    # 7.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v9, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    const/4 v0, -0x1

    iput v0, v9, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5a

    :goto_54
    move-object v0, v3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move-object v3, v4

    check-cast v3, Lorg/telegram/tgnet/TLRPC$User;

    iget-object v4, v1, Lorg/telegram/ui/Components/UndoView;->undoImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v4, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    if-eqz v0, :cond_7e

    iget-object v4, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v4, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/high16 v5, 0x41600000    # 14.0f

    const/4 v6, 0x1

    invoke-virtual {v4, v6, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v4, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/RLottieImageView;->clearLayerColors()V

    iget-object v4, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_undo_infoColor:I

    invoke-direct {v1, v5}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(I)I

    move-result v6

    const-string v7, "BODY.**"

    invoke-virtual {v4, v7, v6}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    iget-object v4, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v1, v5}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(I)I

    move-result v6

    const-string v7, "Wibe Big.**"

    invoke-virtual {v4, v7, v6}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    iget-object v4, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v1, v5}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(I)I

    move-result v6

    const-string v7, "Wibe Big 3.**"

    invoke-virtual {v4, v7, v6}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    iget-object v4, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v1, v5}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(I)I

    move-result v5

    const-string v6, "Wibe Small.**"

    invoke-virtual {v4, v6, v5}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    iget-object v4, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v5, Lorg/telegram/messenger/R$string;->ProximityAlertSet:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v5, Lorg/telegram/messenger/R$raw;->ic_unmute:I

    const/16 v6, 0x1c

    invoke-virtual {v4, v5, v6, v6}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    iget-object v4, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v4, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    const/4 v6, 0x3

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setMaxLines(I)V

    if-eqz v3, :cond_7d

    iget-object v4, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    sget v6, Lorg/telegram/messenger/R$string;->ProximityAlertSetInfoUser:I

    invoke-static {v3}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v3

    int-to-float v0, v0

    const/4 v7, 0x2

    invoke-static {v0, v7}, Lorg/telegram/messenger/LocaleController;->formatDistance(FI)Ljava/lang/String;

    move-result-object v0

    new-array v8, v7, [Ljava/lang/Object;

    aput-object v3, v8, v5

    const/4 v3, 0x1

    aput-object v0, v8, v3

    const-string v0, "ProximityAlertSetInfoUser"

    invoke-static {v0, v6, v8}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_55
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_56

    :cond_7d
    const/4 v3, 0x1

    const/4 v7, 0x2

    iget-object v4, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    sget v6, Lorg/telegram/messenger/R$string;->ProximityAlertSetInfoGroup2:I

    int-to-float v0, v0

    invoke-static {v0, v7}, Lorg/telegram/messenger/LocaleController;->formatDistance(FI)Ljava/lang/String;

    move-result-object v0

    new-array v7, v3, [Ljava/lang/Object;

    aput-object v0, v7, v5

    const-string v0, "ProximityAlertSetInfoGroup2"

    invoke-static {v0, v6, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_55

    :goto_56
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->undoButton:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    :goto_57
    const/high16 v2, 0x42680000    # 58.0f

    goto/16 :goto_58

    :cond_7e
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/high16 v3, 0x41700000    # 15.0f

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->clearLayerColors()V

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_undo_infoColor:I

    invoke-direct {v1, v3}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(I)I

    move-result v4

    const-string v5, "Body Main.**"

    invoke-virtual {v0, v5, v4}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v1, v3}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(I)I

    move-result v4

    const-string v5, "Body Top.**"

    invoke-virtual {v0, v5, v4}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v1, v3}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(I)I

    move-result v4

    const-string v5, "Line.**"

    invoke-virtual {v0, v5, v4}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v1, v3}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(I)I

    move-result v4

    const-string v5, "Curve Big.**"

    invoke-virtual {v0, v5, v4}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v1, v3}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(I)I

    move-result v3

    const-string v4, "Curve Small.**"

    invoke-virtual {v0, v4, v3}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    const/high16 v3, 0x41600000    # 14.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v3, Lorg/telegram/messenger/R$string;->ProximityAlertCancelled:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v3, Lorg/telegram/messenger/R$raw;->ic_mute:I

    const/16 v4, 0x1c

    invoke-virtual {v0, v3, v4, v4}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->undoTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_undo_cancelColor:I

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->undoButton:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_57

    :goto_58
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v9, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    :goto_59
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RLottieImageView;->setProgress(F)V

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    :cond_7f
    :goto_5a
    const/4 v0, 0x0

    const/high16 v2, 0x41600000    # 14.0f

    goto/16 :goto_77

    :cond_80
    :goto_5b
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->undoImageView:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget-object v6, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget v0, v1, Lorg/telegram/ui/Components/UndoView;->currentAction:I

    const/16 v6, 0x4c

    const/high16 v8, 0x41100000    # 9.0f

    const-wide/16 v17, -0x1

    if-ne v0, v6, :cond_81

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v2, Lorg/telegram/messenger/R$string;->BroadcastGroupConvertSuccess:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v2, Lorg/telegram/messenger/R$raw;->gigagroup_convert:I

    :goto_5c
    invoke-virtual {v0, v2, v7, v7}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    :goto_5d
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/high16 v2, 0x41600000    # 14.0f

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    move-wide/from16 v3, v17

    const/4 v0, 0x1

    goto/16 :goto_76

    :cond_81
    const/16 v6, 0x4b

    if-ne v0, v6, :cond_82

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v2, Lorg/telegram/messenger/R$string;->GigagroupConvertCancelHint:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v2, Lorg/telegram/messenger/R$raw;->chats_infotip:I

    goto :goto_5c

    :cond_82
    const/16 v6, 0x46

    if-ne v2, v6, :cond_83

    move-object v0, v3

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    move-object v0, v4

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->formatTTLString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v4, Lorg/telegram/messenger/R$string;->AutoDeleteHintOnText:I

    const/4 v6, 0x1

    new-array v10, v6, [Ljava/lang/Object;

    aput-object v0, v10, v3

    const-string v0, "AutoDeleteHintOnText"

    invoke-static {v0, v4, v10}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v2, Lorg/telegram/messenger/R$raw;->fire_on:I

    invoke-virtual {v0, v2, v7, v7}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput-wide v12, v1, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v3, v2}, Landroid/view/View;->setPadding(IIII)V

    move-wide/from16 v3, v17

    const/4 v0, 0x1

    const/high16 v2, 0x41600000    # 14.0f

    goto/16 :goto_76

    :cond_83
    const/16 v2, 0x47

    if-ne v0, v2, :cond_84

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v2, Lorg/telegram/messenger/R$string;->AutoDeleteHintOffText:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v2, Lorg/telegram/messenger/R$raw;->fire_off:I

    invoke-virtual {v0, v2, v7, v7}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/high16 v2, 0x41600000    # 14.0f

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    const-wide/16 v2, 0xbb8

    iput-wide v2, v1, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v3, v2}, Landroid/view/View;->setPadding(IIII)V

    const/high16 v2, 0x41600000    # 14.0f

    goto/16 :goto_72

    :cond_84
    const/16 v2, 0x2d

    if-ne v0, v2, :cond_85

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v2, Lorg/telegram/messenger/R$string;->ImportMutualError:I

    :goto_5e
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v2, Lorg/telegram/messenger/R$raw;->error:I

    goto/16 :goto_5c

    :cond_85
    const/16 v2, 0x2e

    if-ne v0, v2, :cond_86

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v2, Lorg/telegram/messenger/R$string;->ImportNotAdmin:I

    goto :goto_5e

    :cond_86
    const/16 v2, 0x2f

    if-ne v0, v2, :cond_87

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v2, Lorg/telegram/messenger/R$string;->ImportedInfo:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v2, Lorg/telegram/messenger/R$raw;->imported:I

    invoke-virtual {v0, v2, v7, v7}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v3, v2}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_5d

    :cond_87
    const/high16 v2, 0x41600000    # 14.0f

    const/16 v6, 0x34

    if-eq v0, v6, :cond_a1

    const/16 v6, 0x38

    if-eq v0, v6, :cond_a1

    const/16 v6, 0x39

    if-eq v0, v6, :cond_a1

    const/16 v6, 0x3a

    if-eq v0, v6, :cond_a1

    const/16 v6, 0x3b

    if-eq v0, v6, :cond_a1

    const/16 v6, 0x3c

    if-eq v0, v6, :cond_a1

    const/16 v6, 0x50

    if-ne v0, v6, :cond_88

    goto/16 :goto_73

    :cond_88
    const/16 v6, 0x36

    if-ne v0, v6, :cond_89

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v3, Lorg/telegram/messenger/R$string;->ChannelNotifyMembersInfoOn:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v3, Lorg/telegram/messenger/R$raw;->silent_unmute:I

    :goto_5f
    const/16 v4, 0x1e

    invoke-virtual {v0, v3, v4, v4}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    :goto_60
    const-wide/16 v3, 0xbb8

    iput-wide v3, v1, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/high16 v3, 0x41700000    # 15.0f

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_72

    :cond_89
    const/16 v6, 0x37

    if-ne v0, v6, :cond_8a

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v3, Lorg/telegram/messenger/R$string;->ChannelNotifyMembersInfoOff:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v3, Lorg/telegram/messenger/R$raw;->silent_mute:I

    goto :goto_5f

    :cond_8a
    const/16 v6, 0x29

    if-ne v0, v6, :cond_8e

    if-nez v4, :cond_8d

    iget v0, v1, Lorg/telegram/ui/Components/UndoView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    iget-wide v3, v0, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    cmp-long v0, v10, v3

    if-nez v0, :cond_8b

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v3, Lorg/telegram/messenger/R$string;->InvLinkToSavedMessages:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_62

    :cond_8b
    invoke-static {v10, v11}, Lorg/telegram/messenger/DialogObject;->isChatDialog(J)Z

    move-result v0

    if-eqz v0, :cond_8c

    iget v0, v1, Lorg/telegram/ui/Components/UndoView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    neg-long v3, v10

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    iget-object v3, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v4, Lorg/telegram/messenger/R$string;->InvLinkToGroup:I

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v6, 0x1

    new-array v8, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v8, v6

    const-string v0, "InvLinkToGroup"

    invoke-static {v0, v4, v8}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_61
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_62

    :cond_8c
    iget v0, v1, Lorg/telegram/ui/Components/UndoView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    move-object/from16 v6, v25

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    iget-object v3, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v4, Lorg/telegram/messenger/R$string;->InvLinkToUser:I

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x1

    new-array v8, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v8, v6

    const-string v0, "InvLinkToUser"

    invoke-static {v0, v4, v8}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_61

    :cond_8d
    const/4 v6, 0x0

    move-object v0, v4

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v3, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v4, Lorg/telegram/messenger/R$string;->InvLinkToChats:I

    new-array v8, v6, [Ljava/lang/Object;

    const-string v10, "Chats"

    invoke-static {v10, v0, v8}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x1

    new-array v10, v8, [Ljava/lang/Object;

    aput-object v0, v10, v6

    const-string v0, "InvLinkToChats"

    invoke-static {v0, v4, v10}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_61

    :goto_62
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v3, Lorg/telegram/messenger/R$raw;->contact_check:I

    invoke-virtual {v0, v3, v7, v7}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    const-wide/16 v3, 0xbb8

    goto/16 :goto_71

    :cond_8e
    move-object/from16 v6, v25

    const/16 v7, 0x35

    if-ne v0, v7, :cond_9c

    move-object v0, v3

    check-cast v0, Ljava/lang/Integer;

    if-eqz v4, :cond_91

    instance-of v3, v4, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    if-eqz v3, :cond_8f

    goto :goto_64

    :cond_8f
    move-object v3, v4

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_90

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/4 v4, 0x0

    new-array v6, v4, [Ljava/lang/Object;

    const-string v7, "FwdMessageToManyChats"

    invoke-static {v7, v3, v6}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_63
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6c

    :cond_90
    const/4 v4, 0x0

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    new-array v6, v4, [Ljava/lang/Object;

    const-string v4, "FwdMessagesToManyChats"

    invoke-static {v4, v3, v6}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_63

    :cond_91
    :goto_64
    iget v3, v1, Lorg/telegram/ui/Components/UndoView;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    iget-wide v7, v3, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    cmp-long v3, v10, v7

    if-nez v3, :cond_93

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_92

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v3, Lorg/telegram/messenger/R$string;->FwdMessageToSavedMessages:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/Components/BulletinFactory$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lorg/telegram/ui/Components/BulletinFactory$$ExternalSyntheticLambda0;-><init>()V

    :goto_65
    invoke-static {v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    goto/16 :goto_6e

    :cond_92
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v3, Lorg/telegram/messenger/R$string;->FwdMessagesToSavedMessages:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/Components/BulletinFactory$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lorg/telegram/ui/Components/BulletinFactory$$ExternalSyntheticLambda0;-><init>()V

    goto :goto_65

    :goto_66
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v3, Lorg/telegram/messenger/R$raw;->saved_messages:I

    :goto_67
    const/16 v4, 0x1e

    invoke-virtual {v0, v3, v4, v4}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    goto/16 :goto_6d

    :cond_93
    invoke-static {v10, v11}, Lorg/telegram/messenger/DialogObject;->isChatDialog(J)Z

    move-result v3

    if-eqz v3, :cond_9a

    iget v3, v1, Lorg/telegram/ui/Components/UndoView;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    neg-long v6, v10

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    invoke-static {v3}, Lorg/telegram/messenger/ChatObject;->isMonoForum(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v6

    if-eqz v6, :cond_94

    iget v6, v1, Lorg/telegram/ui/Components/UndoView;->currentAccount:I

    invoke-static {v6, v3}, Lorg/telegram/ui/Components/Forum/ForumUtilities;->getMonoForumTitle(ILorg/telegram/tgnet/TLRPC$Chat;)Ljava/lang/String;

    move-result-object v14

    :cond_94
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v6, 0x1

    if-ne v0, v6, :cond_97

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v7, Lorg/telegram/messenger/R$string;->FwdMessageToGroup:I

    if-eqz v14, :cond_95

    goto :goto_68

    :cond_95
    if-eqz v4, :cond_96

    iget-object v14, v4, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->title:Ljava/lang/String;

    goto :goto_68

    :cond_96
    iget-object v14, v3, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    :goto_68
    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v14, v3, v4

    const-string v4, "FwdMessageToGroup"

    invoke-static {v4, v7, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_63

    :cond_97
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v6, Lorg/telegram/messenger/R$string;->FwdMessagesToGroup:I

    if-eqz v14, :cond_98

    :goto_69
    const/4 v3, 0x1

    goto :goto_6a

    :cond_98
    if-eqz v4, :cond_99

    iget-object v14, v4, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->title:Ljava/lang/String;

    goto :goto_69

    :cond_99
    iget-object v14, v3, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    goto :goto_69

    :goto_6a
    new-array v4, v3, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v14, v4, v7

    const-string v7, "FwdMessagesToGroup"

    invoke-static {v7, v6, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :goto_6b
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6c

    :cond_9a
    const/4 v3, 0x1

    iget v4, v1, Lorg/telegram/ui/Components/UndoView;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_9b

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v6, Lorg/telegram/messenger/R$string;->FwdMessageToUser:I

    invoke-static {v4}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v4

    new-array v7, v3, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    const-string v4, "FwdMessageToUser"

    invoke-static {v4, v6, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_6b

    :cond_9b
    const/4 v8, 0x0

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v6, Lorg/telegram/messenger/R$string;->FwdMessagesToUser:I

    invoke-static {v4}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v4

    new-array v7, v3, [Ljava/lang/Object;

    aput-object v4, v7, v8

    const-string v3, "FwdMessagesToUser"

    invoke-static {v3, v6, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_63

    :goto_6c
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v3, Lorg/telegram/messenger/R$raw;->forward:I

    const/16 v4, 0x1e

    invoke-virtual {v0, v3, v4, v4}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    const-wide/16 v17, 0x12c

    :goto_6d
    const-wide/16 v3, 0xbb8

    goto/16 :goto_71

    :cond_9c
    const/16 v7, 0x3d

    if-ne v0, v7, :cond_a0

    move-object v0, v3

    check-cast v0, Ljava/lang/Integer;

    if-nez v4, :cond_9f

    iget v0, v1, Lorg/telegram/ui/Components/UndoView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    iget-wide v3, v0, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    cmp-long v0, v10, v3

    if-nez v0, :cond_9d

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v3, Lorg/telegram/messenger/R$string;->BackgroundToSavedMessages:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    :goto_6e
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_66

    :cond_9d
    invoke-static {v10, v11}, Lorg/telegram/messenger/DialogObject;->isChatDialog(J)Z

    move-result v0

    if-eqz v0, :cond_9e

    iget v0, v1, Lorg/telegram/ui/Components/UndoView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    neg-long v3, v10

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    iget-object v3, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v4, Lorg/telegram/messenger/R$string;->BackgroundToGroup:I

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v7, v6

    const-string v0, "BackgroundToGroup"

    invoke-static {v0, v4, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_70

    :cond_9e
    iget v0, v1, Lorg/telegram/ui/Components/UndoView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    iget-object v3, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v4, Lorg/telegram/messenger/R$string;->BackgroundToUser:I

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v7, v6

    const-string v0, "BackgroundToUser"

    invoke-static {v0, v4, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_70

    :goto_6f
    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v3, Lorg/telegram/messenger/R$raw;->forward:I

    goto/16 :goto_67

    :cond_9f
    move-object v0, v4

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v3, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v4, Lorg/telegram/messenger/R$string;->BackgroundToChats:I

    const/4 v6, 0x0

    new-array v7, v6, [Ljava/lang/Object;

    const-string v8, "Chats"

    invoke-static {v8, v0, v7}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Object;

    aput-object v0, v8, v6

    const-string v0, "BackgroundToChats"

    invoke-static {v0, v4, v8}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_70
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6f

    :goto_71
    iput-wide v3, v1, Lorg/telegram/ui/Components/UndoView;->timeLeft:J

    :cond_a0
    :goto_72
    move-wide/from16 v3, v17

    const/4 v0, 0x0

    goto :goto_76

    :cond_a1
    :goto_73
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->shouldShowClipboardToast()Z

    move-result v0

    if-nez v0, :cond_a2

    return-void

    :cond_a2
    sget v0, Lorg/telegram/messenger/R$raw;->copy:I

    iget v3, v1, Lorg/telegram/ui/Components/UndoView;->currentAction:I

    const/16 v4, 0x50

    if-ne v3, v4, :cond_a3

    iget-object v3, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v4, Lorg/telegram/messenger/R$string;->EmailCopied:I

    goto :goto_74

    :cond_a3
    const/16 v4, 0x3c

    if-ne v3, v4, :cond_a4

    iget-object v3, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v4, Lorg/telegram/messenger/R$string;->PhoneCopied:I

    goto :goto_74

    :cond_a4
    const/16 v4, 0x38

    if-ne v3, v4, :cond_a5

    iget-object v3, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v4, Lorg/telegram/messenger/R$string;->UsernameCopied:I

    goto :goto_74

    :cond_a5
    const/16 v4, 0x39

    if-ne v3, v4, :cond_a6

    iget-object v3, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v4, Lorg/telegram/messenger/R$string;->HashtagCopied:I

    goto :goto_74

    :cond_a6
    const/16 v4, 0x34

    if-ne v3, v4, :cond_a7

    iget-object v3, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v4, Lorg/telegram/messenger/R$string;->MessageCopied:I

    goto :goto_74

    :cond_a7
    const/16 v4, 0x3b

    if-ne v3, v4, :cond_a8

    sget v0, Lorg/telegram/messenger/R$raw;->voip_invite:I

    iget-object v3, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v4, Lorg/telegram/messenger/R$string;->LinkCopied:I

    :goto_74
    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_75

    :cond_a8
    iget-object v3, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v4, Lorg/telegram/messenger/R$string;->TextCopied:I

    goto :goto_74

    :goto_75
    iget-object v3, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/16 v4, 0x1e

    invoke-virtual {v3, v0, v4, v4}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    goto/16 :goto_60

    :goto_76
    iget-object v6, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v6, v1, Lorg/telegram/ui/Components/UndoView;->undoTextView:Landroid/widget/TextView;

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_undo_cancelColor:I

    invoke-direct {v1, v7}, Lorg/telegram/ui/Components/UndoView;->getThemedColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v6, v1, Lorg/telegram/ui/Components/UndoView;->undoButton:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    const/high16 v5, 0x42680000    # 58.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    iput v5, v9, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    iput v5, v9, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget-object v5, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/RLottieImageView;->setProgress(F)V

    iget-object v5, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_a9

    iget-object v5, v1, Lorg/telegram/ui/Components/UndoView;->leftImageView:Lorg/telegram/ui/Components/RLottieImageView;

    new-instance v6, Lorg/telegram/ui/Components/UndoView$$ExternalSyntheticLambda5;

    invoke-direct {v6, v1}, Lorg/telegram/ui/Components/UndoView$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/UndoView;)V

    invoke-virtual {v5, v6, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_a9
    :goto_77
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_aa

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ". "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    :cond_aa
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->makeAccessibilityAnnouncement(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/UndoView;->isMultilineSubInfo()Z

    move-result v3

    if-eqz v3, :cond_ac

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-nez v0, :cond_ab

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    :cond_ab
    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v0, v2

    iget-object v2, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/4 v3, 0x0

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 p1, p0

    move-object/from16 p2, v2

    move/from16 p3, v0

    move/from16 p4, v3

    move/from16 p5, v4

    move/from16 p6, v5

    invoke-virtual/range {p1 .. p6}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    iget-object v0, v1, Lorg/telegram/ui/Components/UndoView;->subinfoTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    const/high16 v2, 0x42140000    # 37.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v0, v2

    :goto_78
    iput v0, v1, Lorg/telegram/ui/Components/UndoView;->undoViewHeight:I

    goto/16 :goto_7c

    :cond_ac
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/UndoView;->hasSubInfo()Z

    move-result v3

    if-eqz v3, :cond_ad

    const/high16 v0, 0x42500000    # 52.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    goto :goto_78

    :cond_ad
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_b3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v4, v3

    if-gtz v4, :cond_ae

    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v3, Landroid/graphics/Point;->x:I

    :cond_ae
    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v4, v3

    iget-object v3, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 p1, p0

    move-object/from16 p2, v3

    move/from16 p3, v4

    move/from16 p4, v5

    move/from16 p5, v6

    move/from16 p6, v7

    invoke-virtual/range {p1 .. p6}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    iget-object v3, v1, Lorg/telegram/ui/Components/UndoView;->infoTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iget v4, v1, Lorg/telegram/ui/Components/UndoView;->currentAction:I

    const/16 v5, 0x10

    if-eq v4, v5, :cond_b0

    const/16 v5, 0x11

    if-eq v4, v5, :cond_b0

    const/16 v5, 0x12

    if-eq v4, v5, :cond_b0

    const/16 v5, 0x54

    if-eq v4, v5, :cond_b0

    const/16 v5, 0x56

    if-ne v4, v5, :cond_af

    goto :goto_79

    :cond_af
    const/high16 v7, 0x41e00000    # 28.0f

    goto :goto_7a

    :cond_b0
    :goto_79
    const/high16 v7, 0x41600000    # 14.0f

    :goto_7a
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v3, v2

    iput v3, v1, Lorg/telegram/ui/Components/UndoView;->undoViewHeight:I

    iget v2, v1, Lorg/telegram/ui/Components/UndoView;->currentAction:I

    const/16 v4, 0x12

    if-ne v2, v4, :cond_b1

    const/high16 v0, 0x42500000    # 52.0f

    :goto_7b
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto/16 :goto_78

    :cond_b1
    const/16 v4, 0x19

    if-ne v2, v4, :cond_b2

    const/high16 v0, 0x42480000    # 50.0f

    goto :goto_7b

    :cond_b2
    if-eqz v0, :cond_b3

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int/2addr v3, v0

    iput v3, v1, Lorg/telegram/ui/Components/UndoView;->undoViewHeight:I

    :cond_b3
    :goto_7c
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_b7

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v0, v1, Lorg/telegram/ui/Components/UndoView;->fromTop:Z

    if-eqz v0, :cond_b4

    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_7d

    :cond_b4
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_7d
    iget v2, v1, Lorg/telegram/ui/Components/UndoView;->enterOffsetMargin:I

    iget v3, v1, Lorg/telegram/ui/Components/UndoView;->undoViewHeight:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    mul-float v0, v0, v2

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/UndoView;->setEnterOffset(F)V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iget-boolean v2, v1, Lorg/telegram/ui/Components/UndoView;->fromTop:Z

    if-eqz v2, :cond_b5

    const/high16 v3, -0x40800000    # -1.0f

    goto :goto_7e

    :cond_b5
    const/high16 v3, 0x3f800000    # 1.0f

    :goto_7e
    iget v4, v1, Lorg/telegram/ui/Components/UndoView;->enterOffsetMargin:I

    iget v5, v1, Lorg/telegram/ui/Components/UndoView;->undoViewHeight:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    mul-float v3, v3, v4

    if-eqz v2, :cond_b6

    const/4 v2, 0x2

    const/high16 v9, 0x3f800000    # 1.0f

    goto :goto_7f

    :cond_b6
    const/4 v2, 0x2

    const/high16 v9, -0x40800000    # -1.0f

    :goto_7f
    new-array v2, v2, [F

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v3, 0x1

    aput v9, v2, v3

    const-string v5, "enterOffset"

    invoke-static {v1, v5, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-array v3, v3, [Landroid/animation/Animator;

    aput-object v2, v3, v4

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0xb4

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_b7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x5a
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
