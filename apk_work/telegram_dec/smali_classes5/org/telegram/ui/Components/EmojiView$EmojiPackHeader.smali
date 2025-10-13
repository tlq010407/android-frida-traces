.class Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/EmojiView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EmojiPackHeader"
.end annotation


# instance fields
.field addButtonView:Landroid/widget/TextView;

.field buttonsView:Landroid/widget/FrameLayout;

.field private currentButtonState:I

.field divider:Z

.field private dividerPaint:Landroid/graphics/Paint;

.field headerView:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field lockView:Lorg/telegram/ui/Components/RLottieImageView;

.field markView:Landroid/widget/TextView;

.field private pack:Lorg/telegram/ui/Components/EmojiView$EmojiPack;

.field premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

.field removeButtonView:Landroid/widget/TextView;

.field private stateAnimator:Landroid/animation/AnimatorSet;

.field final synthetic this$0:Lorg/telegram/ui/Components/EmojiView;

.field private toInstall:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

.field private toUninstall:Lorg/telegram/tgnet/TLRPC$InputStickerSet;


# direct methods
.method public static synthetic $r8$lambda$8W1TQ7iAFR4ae6YRnyiN273RjeI(Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->lambda$new$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$T0QXOqA9aeQuAFPwKWYerd-zYco(Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->lambda$new$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$a9pUedPBmC-eRvo3E4460Ghh_3s(Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$b_drs1SfxPi6s4hfOQ82aM5OBj8(Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->lambda$uninstall$8(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V

    return-void
.end method

.method public static synthetic $r8$lambda$e-qg9IIXrrYFWRs20LAl-NolSbE(Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->lambda$setStickerSet$6(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gs5uNgBTU9XBuW7y0w7sy2T3wL4(Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->lambda$install$7()V

    return-void
.end method

.method public static synthetic $r8$lambda$lA--fqkJpelgnVoZBdWg3AT3Ow0(Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sdEerzZOIiRHeSp6Q8CQo7bSCCE(Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->lambda$setStickerSet$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sgjcbai1hYbYEWyVujv6YzRov7o(Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->lambda$new$4(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iput-object v1, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v3, v2}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->lockView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v4, Lorg/telegram/messenger/R$raw;->unlock_icon:I

    const/16 v5, 0x18

    invoke-virtual {v3, v4, v5, v5}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->lockView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelStickerSetName:I

    invoke-static {v1, v5}, Lorg/telegram/ui/Components/EmojiView;->access$1900(Lorg/telegram/ui/Components/EmojiView;I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->lockView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/high16 v6, 0x41a00000    # 20.0f

    const/high16 v7, 0x41a00000    # 20.0f

    const v8, 0x800003

    const/high16 v9, 0x41200000    # 10.0f

    const/high16 v10, 0x41700000    # 15.0f

    invoke-static/range {v6 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameRelatively(FFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v3, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->headerView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v6, 0xf

    invoke-virtual {v3, v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->headerView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-static {v1, v5}, Lorg/telegram/ui/Components/EmojiView;->access$1900(Lorg/telegram/ui/Components/EmojiView;I)I

    move-result v6

    invoke-virtual {v3, v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->headerView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->headerView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    new-instance v6, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader$$ExternalSyntheticLambda0;

    invoke-direct {v6, v0}, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->markView:Landroid/widget/TextView;

    const/4 v6, 0x1

    const/high16 v7, 0x41300000    # 11.0f

    invoke-virtual {v3, v6, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->markView:Landroid/widget/TextView;

    invoke-static {v1, v5}, Lorg/telegram/ui/Components/EmojiView;->access$1900(Lorg/telegram/ui/Components/EmojiView;I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->markView:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->markView:Landroid/widget/TextView;

    const/high16 v5, 0x41000000    # 8.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelIcon:I

    invoke-static {v1, v9}, Lorg/telegram/ui/Components/EmojiView;->access$1900(Lorg/telegram/ui/Components/EmojiView;I)I

    move-result v9

    const v10, 0x3df5c28f    # 0.12f

    invoke-static {v9, v10}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v9

    invoke-static {v8, v9}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->markView:Landroid/widget/TextView;

    const/high16 v8, 0x40c00000    # 6.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    const/high16 v10, 0x3fc00000    # 1.5f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-virtual {v3, v9, v11, v8, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->markView:Landroid/widget/TextView;

    sget v8, Lorg/telegram/messenger/R$string;->GroupEmoji:I

    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->headerView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v3, v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setEllipsizeByGradient(Z)V

    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->headerView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/high16 v8, -0x40000000    # -2.0f

    const/high16 v9, -0x40800000    # -1.0f

    const v10, 0x800003

    const/high16 v11, 0x41700000    # 15.0f

    const/high16 v12, 0x41700000    # 15.0f

    invoke-static/range {v8 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameRelatively(FFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v0, v3, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->markView:Landroid/widget/TextView;

    const/high16 v8, -0x40000000    # -2.0f

    const/high16 v9, -0x40000000    # -2.0f

    const/high16 v12, 0x41200000    # 10.0f

    invoke-static/range {v8 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameRelatively(FFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v0, v3, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->buttonsView:Landroid/widget/FrameLayout;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    const/4 v10, 0x0

    invoke-virtual {v3, v8, v9, v7, v10}, Landroid/view/View;->setPadding(IIII)V

    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->buttonsView:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v10}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->buttonsView:Landroid/widget/FrameLayout;

    new-instance v7, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader$$ExternalSyntheticLambda1;

    invoke-direct {v7, v0}, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;)V

    invoke-virtual {v3, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->buttonsView:Landroid/widget/FrameLayout;

    const/high16 v7, -0x40800000    # -1.0f

    const v8, 0x800075

    const/high16 v9, -0x40000000    # -2.0f

    invoke-static {v9, v7, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameRelatively(FFI)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v0, v3, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->addButtonView:Landroid/widget/TextView;

    const/high16 v7, 0x41600000    # 14.0f

    invoke-virtual {v3, v6, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->addButtonView:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->addButtonView:Landroid/widget/TextView;

    sget v8, Lorg/telegram/messenger/R$string;->Add:I

    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->addButtonView:Landroid/widget/TextView;

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_buttonText:I

    invoke-static {v1, v8}, Lorg/telegram/ui/Components/EmojiView;->access$1900(Lorg/telegram/ui/Components/EmojiView;I)I

    move-result v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->addButtonView:Landroid/widget/TextView;

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-static {v1, v8}, Lorg/telegram/ui/Components/EmojiView;->access$1900(Lorg/telegram/ui/Components/EmojiView;I)I

    move-result v11

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButtonPressed:I

    invoke-static {v1, v12}, Lorg/telegram/ui/Components/EmojiView;->access$1900(Lorg/telegram/ui/Components/EmojiView;I)I

    move-result v12

    const/high16 v13, 0x41800000    # 16.0f

    new-array v14, v6, [F

    aput v13, v14, v10

    invoke-static {v11, v12, v14}, Lorg/telegram/ui/ActionBar/Theme$AdaptiveRipple;->createRect(II[F)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->addButtonView:Landroid/widget/TextView;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    invoke-virtual {v3, v11, v10, v12, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->addButtonView:Landroid/widget/TextView;

    const/16 v11, 0x11

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->addButtonView:Landroid/widget/TextView;

    new-instance v12, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader$$ExternalSyntheticLambda2;

    invoke-direct {v12, v0}, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;)V

    invoke-virtual {v3, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->buttonsView:Landroid/widget/FrameLayout;

    iget-object v12, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->addButtonView:Landroid/widget/TextView;

    const/high16 v14, 0x41d00000    # 26.0f

    const v15, 0x800035

    invoke-static {v9, v14, v15}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameRelatively(FFI)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v12, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->removeButtonView:Landroid/widget/TextView;

    invoke-virtual {v3, v6, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->removeButtonView:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->removeButtonView:Landroid/widget/TextView;

    sget v5, Lorg/telegram/messenger/R$string;->StickersRemove:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->removeButtonView:Landroid/widget/TextView;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_removeButtonText:I

    invoke-static {v1, v5}, Lorg/telegram/ui/Components/EmojiView;->access$1900(Lorg/telegram/ui/Components/EmojiView;I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->removeButtonView:Landroid/widget/TextView;

    invoke-static {v1, v8}, Lorg/telegram/ui/Components/EmojiView;->access$1900(Lorg/telegram/ui/Components/EmojiView;I)I

    move-result v5

    const v7, 0x1affffff

    and-int/2addr v5, v7

    new-array v6, v6, [F

    aput v13, v6, v10

    invoke-static {v10, v5, v6}, Lorg/telegram/ui/ActionBar/Theme$AdaptiveRipple;->createRect(II[F)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->removeButtonView:Landroid/widget/TextView;

    const/high16 v5, 0x41400000    # 12.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v3, v6, v10, v5, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->removeButtonView:Landroid/widget/TextView;

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->removeButtonView:Landroid/widget/TextView;

    const/high16 v5, 0x40800000    # 4.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setTranslationX(F)V

    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->removeButtonView:Landroid/widget/TextView;

    new-instance v5, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader$$ExternalSyntheticLambda3;

    invoke-direct {v5, v0}, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->buttonsView:Landroid/widget/FrameLayout;

    iget-object v5, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->removeButtonView:Landroid/widget/TextView;

    invoke-static {v9, v14, v15}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameRelatively(FFI)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/EmojiView;->access$800(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    invoke-direct {v3, v2, v5, v10, v1}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;-><init>(Landroid/content/Context;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->setIcon(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    sget v2, Lorg/telegram/messenger/R$string;->Unlock:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader$$ExternalSyntheticLambda4;

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;)V

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->setButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    :try_start_0
    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->getIconView()Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->getTextView()Lorg/telegram/ui/Components/AnimatedTextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const/high16 v2, -0x41000000    # -0.5f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    invoke-virtual {v1, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v1, v3, v10, v2, v10}, Landroid/view/View;->setPadding(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->buttonsView:Landroid/widget/FrameLayout;

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    invoke-static {v9, v14, v15}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameRelatively(FFI)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v10}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void
.end method

.method private getFragment()Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$400(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$400(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader$1;-><init>(Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;)V

    return-object v0
.end method

.method private install(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V
    .locals 4

    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->getFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, p1, v2, v3, v1}, Lorg/telegram/ui/Components/EmojiPacksAlert;->installSet(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLObject;ZLorg/telegram/messenger/Utilities$Callback;Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$install$7()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->pack:Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->installed:Z

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->updateState(Z)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->pack:Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/EmojiView;->openEmojiPackAlert(Lorg/telegram/tgnet/TLRPC$StickerSet;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->addButtonView:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->addButtonView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->addButtonView:Landroid/widget/TextView;

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->removeButtonView:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->removeButtonView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->removeButtonView:Landroid/widget/TextView;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private synthetic lambda$new$2(Landroid/view/View;)V
    .locals 9

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->pack:Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    if-eqz p1, :cond_8

    iget-object v0, p1, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p1, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->installed:Z

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget-object p1, p1, Lorg/telegram/ui/Components/EmojiView;->installedEmojiSets:Ljava/util/ArrayList;

    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget-object p1, p1, Lorg/telegram/ui/Components/EmojiView;->installedEmojiSets:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->pack:Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->updateState(Z)V

    const/4 p1, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView;->access$700(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView;->access$700(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lorg/telegram/ui/Components/EmojiView$EmojiPackExpand;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView;->access$700(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v3}, Lorg/telegram/ui/Components/EmojiView;->access$700(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v3

    if-ltz v3, :cond_2

    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v4}, Lorg/telegram/ui/Components/EmojiView;->access$1000(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->access$13400(Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;)Landroid/util/SparseIntArray;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    if-ltz v4, :cond_2

    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$8100(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$8100(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->pack:Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$8100(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    iget-object v4, v4, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->pack:Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    iget-object v6, v6, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v6, v6, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    cmp-long v8, v4, v6

    if-nez v8, :cond_2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    move-object v0, v2

    :goto_1
    if-eqz v0, :cond_4

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v3}, Lorg/telegram/ui/Components/EmojiView;->access$1000(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v0, v2}, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->expand(ILandroid/view/View;)V

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->toInstall:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;-><init>()V

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->pack:Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    iget-object v2, v2, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v3, v2, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    iput-wide v3, v0, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->id:J

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$StickerSet;->access_hash:J

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->access_hash:J

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget v2, v2, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lorg/telegram/messenger/MediaDataController;->getStickerSet(Lorg/telegram/tgnet/TLRPC$InputStickerSet;Z)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-nez v2, :cond_6

    goto :goto_2

    :cond_6
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->install(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V

    goto :goto_3

    :cond_7
    :goto_2
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget v1, v1, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->groupStickersDidLoad:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget v1, v1, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    iput-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->toInstall:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    invoke-virtual {v1, v0, p1}, Lorg/telegram/messenger/MediaDataController;->getStickerSet(Lorg/telegram/tgnet/TLRPC$InputStickerSet;Z)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    :cond_8
    :goto_3
    return-void
.end method

.method private synthetic lambda$new$3(Landroid/view/View;)V
    .locals 5

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->pack:Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    if-eqz p1, :cond_5

    iget-object v0, p1, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p1, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->installed:Z

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget-object p1, p1, Lorg/telegram/ui/Components/EmojiView;->installedEmojiSets:Ljava/util/ArrayList;

    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->updateState(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$2900(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiTabsStrip;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$2900(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiTabsStrip;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EmojiView;->getEmojipacks()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/EmojiTabsStrip;->updateEmojiPacks(Ljava/util/ArrayList;)V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$7500(Lorg/telegram/ui/Components/EmojiView;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->toUninstall:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    if-eqz v0, :cond_2

    return-void

    :cond_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;-><init>()V

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->pack:Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    iget-object v2, v2, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v3, v2, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    iput-wide v3, v0, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->id:J

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$StickerSet;->access_hash:J

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->access_hash:J

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget v2, v2, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v2

    invoke-virtual {v2, v0, p1}, Lorg/telegram/messenger/MediaDataController;->getStickerSet(Lorg/telegram/tgnet/TLRPC$InputStickerSet;Z)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->uninstall(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V

    goto :goto_1

    :cond_4
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget p1, p1, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->groupStickersDidLoad:I

    invoke-virtual {p1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget p1, p1, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    iput-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->toUninstall:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/MediaDataController;->getStickerSet(Lorg/telegram/tgnet/TLRPC$InputStickerSet;Z)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    :cond_5
    :goto_1
    return-void
.end method

.method private synthetic lambda$new$4(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$13300(Lorg/telegram/ui/Components/EmojiView;)V

    return-void
.end method

.method private synthetic lambda$setStickerSet$5(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$13300(Lorg/telegram/ui/Components/EmojiView;)V

    return-void
.end method

.method private synthetic lambda$setStickerSet$6(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$13300(Lorg/telegram/ui/Components/EmojiView;)V

    return-void
.end method

.method private synthetic lambda$uninstall$8(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->pack:Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->installed:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiView;->installedEmojiSets:Ljava/util/ArrayList;

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiView;->installedEmojiSets:Ljava/util/ArrayList;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->updateState(Z)V

    return-void
.end method

.method private uninstall(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V
    .locals 4

    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->getFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, p1, v2, v1, v3}, Lorg/telegram/ui/Components/EmojiPacksAlert;->uninstallSet(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;ZLjava/lang/Runnable;Z)V

    return-void
.end method


# virtual methods
.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 2

    sget p2, Lorg/telegram/messenger/NotificationCenter;->groupStickersDidLoad:I

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->toInstall:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget p1, p1, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    iget-object p3, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->toInstall:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    iget-wide v0, p3, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/MediaDataController;->getStickerSetById(J)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p3, p1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-eqz p3, :cond_0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->install(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->toInstall:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->toUninstall:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget p1, p1, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    iget-object p3, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->toUninstall:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    iget-wide v0, p3, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/MediaDataController;->getStickerSetById(J)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p3, p1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-eqz p3, :cond_1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->uninstall(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->toUninstall:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget v0, v0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->groupStickersDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->divider:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->dividerPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->dividerPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->dividerPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->this$0:Lorg/telegram/ui/Components/EmojiView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/EmojiView;->access$1900(Lorg/telegram/ui/Components/EmojiView;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v4, v0

    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->dividerPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->buttonsView:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    const/high16 p2, 0x41300000    # 11.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    add-int/2addr p1, p2

    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->markView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->markView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    add-int/2addr p1, p2

    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->headerView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightPadding(I)V

    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->markView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->markView:Landroid/widget/TextView;

    iget-object p3, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->headerView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextWidth()I

    move-result p3

    const/high16 p4, 0x40800000    # 4.0f

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p5

    add-int/2addr p3, p5

    int-to-float p3, p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setTranslationX(F)V

    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->headerView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getMaxTextWidth()I

    move-result p2

    sub-int/2addr p2, p1

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    add-int/2addr p2, p1

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->markView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p1

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->markView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->headerView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->currentButtonState:I

    if-nez v0, :cond_0

    const/high16 v0, 0x41200000    # 10.0f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x41700000    # 15.0f

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    iget v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->currentButtonState:I

    if-nez v0, :cond_1

    const/high16 v0, 0x42000000    # 32.0f

    goto :goto_1

    :cond_1
    const/high16 v0, 0x42280000    # 42.0f

    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setStickerSet(Lorg/telegram/ui/Components/EmojiView$EmojiPack;Z)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->pack:Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    iput-boolean p2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->divider:Z

    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->headerView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v0, p1, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->markView:Landroid/widget/TextView;

    iget-boolean v0, p1, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->forGroup:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-boolean p2, p1, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->installed:Z

    if-eqz p2, :cond_2

    iget-object p1, p1, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$StickerSet;->official:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    sget p2, Lorg/telegram/messenger/R$string;->Restore:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;)V

    :goto_1
    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->setButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    sget p2, Lorg/telegram/messenger/R$string;->Unlock:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;)V

    goto :goto_1

    :goto_2
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->updateState(Z)V

    return-void
.end method

.method public updateState(IZ)V
    .locals 22

    .line 0
    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v1, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    iget v8, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->currentButtonState:I

    if-nez v8, :cond_1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    :goto_1
    if-eq v7, v8, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->requestLayout()V

    :cond_2
    iput v1, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->currentButtonState:I

    iget-object v7, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->stateAnimator:Landroid/animation/AnimatorSet;

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v7, 0x0

    iput-object v7, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->stateAnimator:Landroid/animation/AnimatorSet;

    :cond_3
    iget-object v7, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    if-ne v1, v6, :cond_4

    const/4 v8, 0x1

    goto :goto_2

    :cond_4
    const/4 v8, 0x0

    :goto_2
    invoke-virtual {v7, v8}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->setEnabled(Z)V

    iget-object v7, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->addButtonView:Landroid/widget/TextView;

    if-ne v1, v4, :cond_5

    const/4 v8, 0x1

    goto :goto_3

    :cond_5
    const/4 v8, 0x0

    :goto_3
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v7, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->removeButtonView:Landroid/widget/TextView;

    if-ne v1, v3, :cond_6

    const/4 v8, 0x1

    goto :goto_4

    :cond_6
    const/4 v8, 0x0

    :goto_4
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    const/high16 v7, 0x41800000    # 16.0f

    if-eqz p2, :cond_13

    new-instance v11, Landroid/animation/AnimatorSet;

    invoke-direct {v11}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v11, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->stateAnimator:Landroid/animation/AnimatorSet;

    iget-object v12, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->lockView:Lorg/telegram/ui/Components/RLottieImageView;

    sget-object v13, Landroid/widget/FrameLayout;->TRANSLATION_X:Landroid/util/Property;

    if-ne v1, v6, :cond_7

    const/4 v14, 0x0

    goto :goto_5

    :cond_7
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    neg-int v14, v14

    int-to-float v14, v14

    :goto_5
    new-array v15, v6, [F

    aput v14, v15, v5

    invoke-static {v12, v13, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    iget-object v14, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->lockView:Lorg/telegram/ui/Components/RLottieImageView;

    sget-object v15, Landroid/widget/FrameLayout;->ALPHA:Landroid/util/Property;

    if-ne v1, v6, :cond_8

    const/high16 v16, 0x3f800000    # 1.0f

    goto :goto_6

    :cond_8
    const/16 v16, 0x0

    :goto_6
    new-array v8, v6, [F

    aput v16, v8, v5

    invoke-static {v14, v15, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    iget-object v14, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->headerView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-ne v1, v6, :cond_9

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    goto :goto_7

    :cond_9
    const/4 v7, 0x0

    :goto_7
    new-array v9, v6, [F

    aput v7, v9, v5

    invoke-static {v14, v13, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    iget-object v9, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    if-ne v1, v6, :cond_a

    const/high16 v13, 0x3f800000    # 1.0f

    goto :goto_8

    :cond_a
    const/4 v13, 0x0

    :goto_8
    new-array v14, v6, [F

    aput v13, v14, v5

    invoke-static {v9, v15, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    iget-object v13, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    sget-object v14, Landroid/widget/FrameLayout;->SCALE_X:Landroid/util/Property;

    if-ne v1, v6, :cond_b

    const/high16 v18, 0x3f800000    # 1.0f

    goto :goto_9

    :cond_b
    const v18, 0x3f19999a    # 0.6f

    :goto_9
    new-array v10, v6, [F

    aput v18, v10, v5

    invoke-static {v13, v14, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    iget-object v13, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    sget-object v2, Landroid/widget/FrameLayout;->SCALE_Y:Landroid/util/Property;

    if-ne v1, v6, :cond_c

    const/high16 v19, 0x3f800000    # 1.0f

    goto :goto_a

    :cond_c
    const v19, 0x3f19999a    # 0.6f

    :goto_a
    new-array v3, v6, [F

    aput v19, v3, v5

    invoke-static {v13, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v13, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->addButtonView:Landroid/widget/TextView;

    if-ne v1, v4, :cond_d

    const/high16 v19, 0x3f800000    # 1.0f

    goto :goto_b

    :cond_d
    const/16 v19, 0x0

    :goto_b
    new-array v4, v6, [F

    aput v19, v4, v5

    invoke-static {v13, v15, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iget-object v13, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->addButtonView:Landroid/widget/TextView;

    const/4 v5, 0x2

    if-ne v1, v5, :cond_e

    const/high16 v20, 0x3f800000    # 1.0f

    goto :goto_c

    :cond_e
    const v20, 0x3f19999a    # 0.6f

    :goto_c
    new-array v5, v6, [F

    const/16 v19, 0x0

    aput v20, v5, v19

    invoke-static {v13, v14, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    iget-object v13, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->addButtonView:Landroid/widget/TextView;

    const/4 v6, 0x2

    move-object/from16 p2, v11

    if-ne v1, v6, :cond_f

    const/4 v6, 0x1

    const/high16 v21, 0x3f800000    # 1.0f

    goto :goto_d

    :cond_f
    const/4 v6, 0x1

    const v21, 0x3f19999a    # 0.6f

    :goto_d
    new-array v11, v6, [F

    aput v21, v11, v19

    invoke-static {v13, v2, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    iget-object v13, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->removeButtonView:Landroid/widget/TextView;

    const/4 v6, 0x3

    move-object/from16 v21, v11

    if-ne v1, v6, :cond_10

    const/4 v6, 0x1

    const/high16 v16, 0x3f800000    # 1.0f

    goto :goto_e

    :cond_10
    const/4 v6, 0x1

    const/16 v16, 0x0

    :goto_e
    new-array v11, v6, [F

    aput v16, v11, v19

    invoke-static {v13, v15, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    iget-object v13, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->removeButtonView:Landroid/widget/TextView;

    const/4 v15, 0x3

    if-ne v1, v15, :cond_11

    const/high16 v16, 0x3f800000    # 1.0f

    goto :goto_f

    :cond_11
    const v16, 0x3f19999a    # 0.6f

    :goto_f
    new-array v15, v6, [F

    aput v16, v15, v19

    invoke-static {v13, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    iget-object v14, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->removeButtonView:Landroid/widget/TextView;

    const/4 v15, 0x3

    if-ne v1, v15, :cond_12

    const/high16 v17, 0x3f800000    # 1.0f

    goto :goto_10

    :cond_12
    const v17, 0x3f19999a    # 0.6f

    :goto_10
    new-array v15, v6, [F

    aput v17, v15, v19

    invoke-static {v14, v2, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const/16 v14, 0xc

    new-array v14, v14, [Landroid/animation/Animator;

    aput-object v12, v14, v19

    aput-object v8, v14, v6

    const/4 v6, 0x2

    aput-object v7, v14, v6

    const/4 v6, 0x3

    aput-object v9, v14, v6

    const/4 v6, 0x4

    aput-object v10, v14, v6

    const/4 v6, 0x5

    aput-object v3, v14, v6

    const/4 v3, 0x6

    aput-object v4, v14, v3

    const/4 v3, 0x7

    aput-object v5, v14, v3

    const/16 v3, 0x8

    aput-object v21, v14, v3

    const/16 v3, 0x9

    aput-object v11, v14, v3

    const/16 v3, 0xa

    aput-object v13, v14, v3

    const/16 v3, 0xb

    aput-object v2, v14, v3

    move-object/from16 v2, p2

    invoke-virtual {v2, v14}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->stateAnimator:Landroid/animation/AnimatorSet;

    new-instance v3, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader$2;

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader$2;-><init>(Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;I)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->stateAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->stateAnimator:Landroid/animation/AnimatorSet;

    new-instance v2, Landroid/view/animation/OvershootInterpolator;

    const v3, 0x3f828f5c    # 1.02f

    invoke-direct {v2, v3}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->stateAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_1f

    :cond_13
    const/16 v3, 0x8

    const/16 v19, 0x0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->lockView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v4, 0x1

    if-ne v1, v4, :cond_14

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_11

    :cond_14
    const/4 v5, 0x0

    :goto_11
    invoke-virtual {v2, v5}, Landroid/view/View;->setAlpha(F)V

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->lockView:Lorg/telegram/ui/Components/RLottieImageView;

    if-ne v1, v4, :cond_15

    const/4 v5, 0x0

    goto :goto_12

    :cond_15
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    :goto_12
    invoke-virtual {v2, v5}, Landroid/view/View;->setTranslationX(F)V

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->headerView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-ne v1, v4, :cond_16

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    goto :goto_13

    :cond_16
    const/4 v5, 0x0

    :goto_13
    invoke-virtual {v2, v5}, Landroid/view/View;->setTranslationX(F)V

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    if-ne v1, v4, :cond_17

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_14

    :cond_17
    const/4 v5, 0x0

    :goto_14
    invoke-virtual {v2, v5}, Landroid/view/View;->setAlpha(F)V

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    if-ne v1, v4, :cond_18

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_15

    :cond_18
    const v5, 0x3f19999a    # 0.6f

    :goto_15
    invoke-virtual {v2, v5}, Landroid/view/View;->setScaleX(F)V

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    if-ne v1, v4, :cond_19

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_16

    :cond_19
    const v5, 0x3f19999a    # 0.6f

    :goto_16
    invoke-virtual {v2, v5}, Landroid/view/View;->setScaleY(F)V

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    if-ne v1, v4, :cond_1a

    const/4 v4, 0x0

    goto :goto_17

    :cond_1a
    const/16 v4, 0x8

    :goto_17
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->addButtonView:Landroid/widget/TextView;

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1b

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_18

    :cond_1b
    const/4 v5, 0x0

    :goto_18
    invoke-virtual {v2, v5}, Landroid/view/View;->setAlpha(F)V

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->addButtonView:Landroid/widget/TextView;

    if-ne v1, v4, :cond_1c

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_19

    :cond_1c
    const v5, 0x3f19999a    # 0.6f

    :goto_19
    invoke-virtual {v2, v5}, Landroid/view/View;->setScaleX(F)V

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->addButtonView:Landroid/widget/TextView;

    if-ne v1, v4, :cond_1d

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_1a

    :cond_1d
    const v5, 0x3f19999a    # 0.6f

    :goto_1a
    invoke-virtual {v2, v5}, Landroid/view/View;->setScaleY(F)V

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->addButtonView:Landroid/widget/TextView;

    if-ne v1, v4, :cond_1e

    const/4 v4, 0x0

    goto :goto_1b

    :cond_1e
    const/16 v4, 0x8

    :goto_1b
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->removeButtonView:Landroid/widget/TextView;

    const/4 v4, 0x3

    if-ne v1, v4, :cond_1f

    const/high16 v9, 0x3f800000    # 1.0f

    goto :goto_1c

    :cond_1f
    const/4 v9, 0x0

    :goto_1c
    invoke-virtual {v2, v9}, Landroid/view/View;->setAlpha(F)V

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->removeButtonView:Landroid/widget/TextView;

    if-ne v1, v4, :cond_20

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_1d

    :cond_20
    const v5, 0x3f19999a    # 0.6f

    :goto_1d
    invoke-virtual {v2, v5}, Landroid/view/View;->setScaleX(F)V

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->removeButtonView:Landroid/widget/TextView;

    if-ne v1, v4, :cond_21

    const/high16 v8, 0x3f800000    # 1.0f

    goto :goto_1e

    :cond_21
    const v8, 0x3f19999a    # 0.6f

    :goto_1e
    invoke-virtual {v2, v8}, Landroid/view/View;->setScaleY(F)V

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->removeButtonView:Landroid/widget/TextView;

    if-ne v1, v4, :cond_22

    const/4 v3, 0x0

    :cond_22
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_1f
    return-void
.end method

.method public updateState(Z)V
    .locals 6

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->pack:Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->installed:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget-object v1, v1, Lorg/telegram/ui/Components/EmojiView;->installedEmojiSets:Ljava/util/ArrayList;

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->pack:Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    iget-boolean v1, v1, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->free:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget v1, v1, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$7600(Lorg/telegram/ui/Components/EmojiView;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->pack:Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    iget-boolean v1, v1, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->featured:Z

    if-eqz v1, :cond_5

    if-eqz v0, :cond_4

    const/4 v2, 0x3

    goto :goto_2

    :cond_4
    const/4 v2, 0x2

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p0, v2, p1}, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->updateState(IZ)V

    return-void
.end method
