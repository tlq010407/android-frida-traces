.class public abstract Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/FilterChatlistActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InviteLinkCell"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell$ButtonsBox;
    }
.end annotation


# instance fields
.field private actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

.field buttonsBox:Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell$ButtonsBox;

.field private changeAlpha:F

.field private changeAnimator:Landroid/animation/ValueAnimator;

.field copyButton:Landroid/widget/TextView;

.field generateButton:Landroid/widget/TextView;

.field private lastUrl:Ljava/lang/String;

.field linkBox:Landroid/widget/FrameLayout;

.field optionsIcon:Landroid/widget/ImageView;

.field parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private point:[F

.field shareButton:Landroid/widget/TextView;

.field spoilerTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field textView:Lorg/telegram/ui/ActionBar/SimpleTextView;


# direct methods
.method public static synthetic $r8$lambda$0Db-WmZ2XbUZWrbgXfVbgUijwdQ(Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->lambda$new$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4FzDVlbtwjUgshVgkzS7q9jf12I(Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->lambda$setLink$6(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5CU9wCIDpPECMkB979H_ZMjPn7Q(Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->lambda$options$7(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OHVOGeiw6Oz5cUxPPy41tS5Qq3U(Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->lambda$new$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QwGB1SexXUWf8ZrLgm_EUyYIFrM(Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;Landroid/view/KeyEvent;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->lambda$options$10(Landroid/view/KeyEvent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SrftjNGdWN5zMNHicoivSDeRPac(Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$m3jfHepdwJZdJ5zLgRSObo3XDpc(Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qeoY90RV5_zsbvF1CH-nKoTXHYo(Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->lambda$new$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$s8dmxeA5bUTTGe4fRk2aOhIGCns(Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->lambda$new$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uEW_IYYogv8M5QSUncF_NqZeMUs(Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->lambda$options$9(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yF6-vznT8WWZZQHXr7aG_pztKiI(Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->lambda$options$8(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x2

    new-array v3, v2, [F

    iput-object v3, v0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->point:[F

    move-object/from16 v3, p2

    iput-object v3, v0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->linkBox:Landroid/widget/FrameLayout;

    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_graySection:I

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v7

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v8

    invoke-static {v6, v8}, Lorg/telegram/ui/ActionBar/Theme;->blendOver(II)I

    move-result v6

    invoke-static {v5, v7, v6}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, v0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->linkBox:Landroid/widget/FrameLayout;

    new-instance v5, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell$$ExternalSyntheticLambda1;

    invoke-direct {v5, v0}, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, v0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->linkBox:Landroid/widget/FrameLayout;

    const/high16 v10, 0x41b00000    # 22.0f

    const/4 v11, 0x0

    const/4 v5, -0x1

    const/high16 v6, 0x42400000    # 48.0f

    const/16 v7, 0x37

    const/high16 v8, 0x41b00000    # 22.0f

    const/high16 v9, 0x41100000    # 9.0f

    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v3, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->spoilerTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v5, 0x10

    invoke-virtual {v3, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    iget-object v3, v0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->spoilerTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v7

    invoke-virtual {v3, v7}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    new-instance v3, Landroid/text/SpannableString;

    const-string v7, "t.me/folder/N3k/dImA/bIo"

    invoke-direct {v3, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v7, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;

    invoke-direct {v7}, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;-><init>()V

    iget v8, v7, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    or-int/lit16 v8, v8, 0x100

    iput v8, v7, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    new-instance v8, Lorg/telegram/ui/Components/TextStyleSpan;

    invoke-direct {v8, v7}, Lorg/telegram/ui/Components/TextStyleSpan;-><init>(Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;)V

    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v7

    const/16 v9, 0x21

    const/4 v10, 0x0

    invoke-virtual {v3, v8, v10, v7, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v7, v0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->spoilerTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v7, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    iget-object v7, v0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->spoilerTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v7, v8}, Landroid/view/View;->setAlpha(F)V

    iget-object v7, v0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->linkBox:Landroid/widget/FrameLayout;

    iget-object v9, v0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->spoilerTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/high16 v16, 0x42200000    # 40.0f

    const/16 v17, 0x0

    const/4 v11, -0x1

    const/high16 v12, -0x40000000    # -2.0f

    const/16 v13, 0x17

    const/high16 v14, 0x41a00000    # 20.0f

    const/4 v15, 0x0

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v7, v9, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v7, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v7, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v7, v0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v7, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    iget-object v5, v0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    iget-object v5, v0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v5, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    iget-object v3, v0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/view/View;->setAlpha(F)V

    iget-object v3, v0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->linkBox:Landroid/widget/FrameLayout;

    iget-object v6, v0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v11, -0x1

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->optionsIcon:Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lorg/telegram/messenger/R$drawable;->ic_ab_other:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, v0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->optionsIcon:Landroid/widget/ImageView;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v3, v0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->optionsIcon:Landroid/widget/ImageView;

    new-instance v6, Landroid/graphics/PorterDuffColorFilter;

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextGray3:I

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v7

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v7, v9}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v3, v0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->optionsIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/view/View;->setAlpha(F)V

    iget-object v3, v0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->optionsIcon:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, v0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->optionsIcon:Landroid/widget/ImageView;

    sget v7, Lorg/telegram/messenger/R$string;->AccDescrMoreOptions:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->optionsIcon:Landroid/widget/ImageView;

    new-instance v7, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell$$ExternalSyntheticLambda2;

    invoke-direct {v7, v0}, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;)V

    invoke-virtual {v3, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, v0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->linkBox:Landroid/widget/FrameLayout;

    iget-object v7, v0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->optionsIcon:Landroid/widget/ImageView;

    const/high16 v16, 0x40800000    # 4.0f

    const/high16 v17, 0x40800000    # 4.0f

    const/16 v11, 0x28

    const/high16 v12, 0x42200000    # 40.0f

    const/16 v13, 0x15

    const/high16 v14, 0x40800000    # 4.0f

    const/high16 v15, 0x40800000    # 4.0f

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v3, v7, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell$ButtonsBox;

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell$ButtonsBox;-><init>(Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->buttonsBox:Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell$ButtonsBox;

    const/high16 v16, 0x41b00000    # 22.0f

    const/16 v17, 0x0

    const/4 v11, -0x1

    const/high16 v12, 0x42280000    # 42.0f

    const/16 v13, 0x37

    const/high16 v14, 0x41b00000    # 22.0f

    const/high16 v15, 0x428a0000    # 69.0f

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v0, v3, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell$1;

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell$1;-><init>(Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->copyButton:Landroid/widget/TextView;

    const/16 v7, 0x11

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v3, v0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->copyButton:Landroid/widget/TextView;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_buttonText:I

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v11

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, v0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->copyButton:Landroid/widget/TextView;

    const v11, 0x30ffffff

    invoke-static {v11, v6, v6}, Lorg/telegram/ui/ActionBar/Theme;->createRadSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, v0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->copyButton:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v3, v0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->copyButton:Landroid/widget/TextView;

    const/high16 v12, 0x41600000    # 14.0f

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setTextSize(F)V

    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    const-string v13, ".."

    invoke-virtual {v3, v13}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v14

    new-instance v15, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget v8, Lorg/telegram/messenger/R$drawable;->msg_copy_filled:I

    invoke-static {v1, v8}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-direct {v15, v8}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/4 v8, 0x1

    invoke-virtual {v14, v15, v10, v8, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    new-instance v14, Lorg/telegram/ui/Cells/DialogCell$FixedWidthSpan;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    invoke-direct {v14, v15}, Lorg/telegram/ui/Cells/DialogCell$FixedWidthSpan;-><init>(I)V

    invoke-virtual {v3, v14, v8, v2, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    sget v14, Lorg/telegram/messenger/R$string;->LinkActionCopy:I

    invoke-static {v14}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const-string v14, "."

    invoke-virtual {v3, v14}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v15

    new-instance v2, Lorg/telegram/ui/Cells/DialogCell$FixedWidthSpan;

    const/high16 v17, 0x40a00000    # 5.0f

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-direct {v2, v4}, Lorg/telegram/ui/Cells/DialogCell$FixedWidthSpan;-><init>(I)V

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    sub-int/2addr v4, v8

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    invoke-virtual {v15, v2, v4, v8, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iget-object v2, v0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->copyButton:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->copyButton:Landroid/widget/TextView;

    new-instance v3, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell$$ExternalSyntheticLambda3;

    invoke-direct {v3, v0}, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, v0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->copyButton:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/view/View;->setAlpha(F)V

    iget-object v2, v0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->copyButton:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->buttonsBox:Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell$ButtonsBox;

    iget-object v3, v0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->copyButton:Landroid/widget/TextView;

    const/4 v4, 0x3

    const/4 v8, -0x1

    invoke-static {v8, v8, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell$2;

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell$2;-><init>(Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->shareButton:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v2, v0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->shareButton:Landroid/widget/TextView;

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, v0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->shareButton:Landroid/widget/TextView;

    invoke-static {v11, v6, v6}, Lorg/telegram/ui/ActionBar/Theme;->createRadSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, v0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->shareButton:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v2, v0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->shareButton:Landroid/widget/TextView;

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setTextSize(F)V

    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget v13, Lorg/telegram/messenger/R$drawable;->msg_share_filled:I

    invoke-static {v1, v13}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-direct {v4, v13}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/4 v13, 0x1

    invoke-virtual {v3, v4, v10, v13, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    new-instance v3, Lorg/telegram/ui/Cells/DialogCell$FixedWidthSpan;

    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-direct {v3, v4}, Lorg/telegram/ui/Cells/DialogCell$FixedWidthSpan;-><init>(I)V

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v13, v4, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    sget v3, Lorg/telegram/messenger/R$string;->LinkActionShare:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2, v14}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/Cells/DialogCell$FixedWidthSpan;

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    invoke-direct {v4, v14}, Lorg/telegram/ui/Cells/DialogCell$FixedWidthSpan;-><init>(I)V

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v14

    sub-int/2addr v14, v13

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v13

    invoke-virtual {v3, v4, v14, v13, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iget-object v3, v0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->shareButton:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->shareButton:Landroid/widget/TextView;

    new-instance v3, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell$$ExternalSyntheticLambda4;

    invoke-direct {v3, v0}, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, v0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->shareButton:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/view/View;->setAlpha(F)V

    iget-object v2, v0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->shareButton:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->buttonsBox:Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell$ButtonsBox;

    iget-object v3, v0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->shareButton:Landroid/widget/TextView;

    const/4 v4, 0x5

    invoke-static {v8, v8, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->generateButton:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v1, v0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->generateButton:Landroid/widget/TextView;

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, v0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->generateButton:Landroid/widget/TextView;

    invoke-static {v11, v6, v6}, Lorg/telegram/ui/ActionBar/Theme;->createRadSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, v0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->generateButton:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, v0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->generateButton:Landroid/widget/TextView;

    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v1, v0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->generateButton:Landroid/widget/TextView;

    const-string v2, "Generate Invite Link"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->generateButton:Landroid/widget/TextView;

    new-instance v2, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell$$ExternalSyntheticLambda5;

    invoke-direct {v2, v0}, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->generateButton:Landroid/widget/TextView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, v0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->generateButton:Landroid/widget/TextView;

    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->buttonsBox:Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell$ButtonsBox;

    iget-object v2, v0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->generateButton:Landroid/widget/TextView;

    const/high16 v3, -0x40800000    # -1.0f

    invoke-static {v8, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$2400(Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;)[F
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->point:[F

    return-object p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;[F)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->getPointOnScreen(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;[F)V

    return-void
.end method

.method static synthetic access$2602(Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

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

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->copy()V

    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->linkBox:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    return-void
.end method

.method private synthetic lambda$new$2(Landroid/view/View;)V
    .locals 2

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->linkBox:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p1}, Landroidx/appcompat/widget/AppCompatImageHelper$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->linkBox:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const v0, 0x10100a7

    const v1, 0x101009e

    filled-new-array {v0, v1}, [I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    new-instance p1, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell$$ExternalSyntheticLambda6;

    invoke-direct {p1, p0}, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;)V

    const-wide/16 v0, 0xb4

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->options()V

    return-void
.end method

.method private synthetic lambda$new$3(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->copy()V

    return-void
.end method

.method private synthetic lambda$new$4(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->share()V

    return-void
.end method

.method private synthetic lambda$new$5(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->generate()V

    return-void
.end method

.method private synthetic lambda$options$10(Landroid/view/KeyEvent;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$options$7(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->editname()V

    return-void
.end method

.method private synthetic lambda$options$8(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->qrcode()V

    return-void
.end method

.method private synthetic lambda$options$9(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->deleteLink()V

    return-void
.end method

.method private synthetic lambda$setLink$6(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->changeAlpha:F

    invoke-direct {p0}, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->updateChangeAlpha()V

    return-void
.end method

.method private updateChangeAlpha()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->buttonsBox:Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell$ButtonsBox;

    iget v1, p0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->changeAlpha:F

    invoke-virtual {v0, v1}, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell$ButtonsBox;->setT(F)V

    iget-object v0, p0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->copyButton:Landroid/widget/TextView;

    iget v1, p0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->changeAlpha:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->shareButton:Landroid/widget/TextView;

    iget v1, p0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->changeAlpha:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->optionsIcon:Landroid/widget/ImageView;

    iget v1, p0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->changeAlpha:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->generateButton:Landroid/widget/TextView;

    iget v1, p0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->changeAlpha:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v1, v2, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget v1, p0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->changeAlpha:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->spoilerTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget v1, p0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->changeAlpha:F

    sub-float/2addr v2, v1

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method


# virtual methods
.method public copy()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->lastUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->addToClipboard(Ljava/lang/CharSequence;)Z

    iget-object v0, p0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-static {v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->LinkCopied:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BulletinFactory;->createCopyBulletin(Ljava/lang/String;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method protected abstract deleteLink()V
.end method

.method public abstract editname()V
.end method

.method protected generate()V
    .locals 0

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/high16 v0, 0x42fe0000    # 127.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public options()V
    .locals 11

    iget-object v0, p0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->lastUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZ)V

    sget v2, Lorg/telegram/messenger/R$string;->EditName:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v5, Lorg/telegram/messenger/R$drawable;->msg_edit:I

    invoke-virtual {v1, v2, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    const/4 v2, -0x1

    const/16 v5, 0x30

    invoke-static {v2, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    new-instance v6, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell$$ExternalSyntheticLambda7;

    invoke-direct {v6, p0}, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;)V

    invoke-virtual {v1, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v1, v6, v4, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZ)V

    sget v6, Lorg/telegram/messenger/R$string;->GetQRCode:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lorg/telegram/messenger/R$drawable;->msg_qrcode:I

    invoke-virtual {v1, v6, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    invoke-static {v2, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    new-instance v6, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell$$ExternalSyntheticLambda8;

    invoke-direct {v6, p0}, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;)V

    invoke-virtual {v1, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v1, v6, v4, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZ)V

    sget v6, Lorg/telegram/messenger/R$string;->DeleteLink:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    invoke-virtual {v1, v6, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v7

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v8

    invoke-virtual {v1, v7, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setColors(II)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    const v7, 0x3df5c28f    # 0.12f

    invoke-static {v6, v7}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v6

    invoke-virtual {v1, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setSelectorColor(I)V

    new-instance v6, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell$$ExternalSyntheticLambda9;

    invoke-direct {v6, p0}, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;)V

    invoke-virtual {v1, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {v2, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    iget-object v1, p0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v1

    invoke-interface {v1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getOverlayContainerView()Landroid/widget/FrameLayout;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v5, p0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->linkBox:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->point:[F

    invoke-direct {p0, v5, v1, v6}, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->getPointOnScreen(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;[F)V

    iget-object v5, p0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->point:[F

    aget v5, v5, v3

    new-instance v6, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell$4;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, p0, v7, v1}, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell$4;-><init>(Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;Landroid/content/Context;Landroid/widget/FrameLayout;)V

    new-instance v7, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell$5;

    invoke-direct {v7, p0, v6}, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell$5;-><init>(Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;Landroid/view/View;)V

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/high16 v8, -0x40800000    # -1.0f

    invoke-static {v2, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x0

    invoke-virtual {v6, v2}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v6}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    const-wide/16 v9, 0x96

    invoke-virtual {v8, v9, v10}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v8, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    invoke-static {v9, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v0, v8, v9}, Landroid/view/View;->measure(II)V

    new-instance v8, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/4 v9, -0x2

    invoke-direct {v8, v0, v9, v9}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v8, p0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    new-instance v9, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell$6;

    invoke-direct {v9, p0, v6, v1, v7}, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell$6;-><init>(Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;Landroid/view/View;Landroid/widget/FrameLayout;Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    invoke-virtual {v8, v9}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    iget-object v6, p0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v6, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v6, p0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v6, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v3, p0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v6, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v6}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    sget v6, Lorg/telegram/messenger/R$style;->PopupContextAnimation:I

    invoke-virtual {v3, v6}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    iget-object v3, p0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/4 v6, 0x2

    invoke-virtual {v3, v6}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    iget-object v3, p0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    new-instance v3, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell$$ExternalSyntheticLambda10;

    invoke-direct {v3, p0}, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setDispatchKeyEventListener(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$OnDispatchKeyEventListener;)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v5, v3

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr v6, v0

    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int/2addr v6, v0

    int-to-float v0, v6

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v6

    add-float/2addr v0, v6

    add-float/2addr v0, v2

    float-to-int v0, v0

    iget-object v2, p0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->linkBox:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v5, v2

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v2

    add-float/2addr v5, v2

    float-to-int v2, v5

    invoke-virtual {v3, v1, v4, v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->showAtLocation(Landroid/view/View;III)V

    :cond_2
    :goto_0
    return-void
.end method

.method public qrcode()V
    .locals 7

    iget-object v0, p0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->lastUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/telegram/ui/Components/QRCodeBottomSheet;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v1, Lorg/telegram/messenger/R$string;->InviteByQRCode:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->lastUrl:Ljava/lang/String;

    sget v1, Lorg/telegram/messenger/R$string;->QRCodeLinkHelpFolder:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Components/QRCodeBottomSheet;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sget v1, Lorg/telegram/messenger/R$raw;->qr_code_logo:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/QRCodeBottomSheet;->setCenterAnimation(I)V

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    return-void
.end method

.method public setLink(Ljava/lang/String;Z)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->lastUrl:Ljava/lang/String;

    const/16 v2, 0x8

    if-eqz p1, :cond_1

    const-string v3, "http://"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x7

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    const-string v3, "https://"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v3, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    iget v3, p0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->changeAlpha:F

    if-eqz p1, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_8

    iget-object v3, p0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->changeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v3, 0x0

    iput-object v3, p0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->changeAnimator:Landroid/animation/ValueAnimator;

    :cond_3
    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz p2, :cond_5

    iget-object p2, p0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->generateButton:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->optionsIcon:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p2, p0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->copyButton:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->shareButton:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    iget p2, p0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->changeAlpha:F

    if-eqz p1, :cond_4

    const/high16 v3, 0x3f800000    # 1.0f

    :cond_4
    const/4 v2, 0x2

    new-array v2, v2, [F

    aput p2, v2, v1

    aput v3, v2, v0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->changeAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p2, p0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->changeAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell$3;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell$3;-><init>(Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->changeAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->changeAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x140

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->changeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    :cond_5
    if-eqz p1, :cond_6

    const/high16 v3, 0x3f800000    # 1.0f

    :cond_6
    iput v3, p0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->changeAlpha:F

    invoke-direct {p0}, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->updateChangeAlpha()V

    if-nez p1, :cond_7

    iget-object p1, p0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->generateButton:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->optionsIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->copyButton:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->shareButton:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->generateButton:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->optionsIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->copyButton:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->shareButton:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    :goto_1
    return-void
.end method

.method protected share()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->lastUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.TEXT"

    iget-object v2, p0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->lastUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    sget v2, Lorg/telegram/messenger/R$string;->InviteToGroupByLink:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    const/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
