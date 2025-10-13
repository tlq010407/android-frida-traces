.class public Lorg/telegram/ui/Components/ImportingAlert;
.super Lorg/telegram/ui/ActionBar/BottomSheet;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/ImportingAlert$BottomSheetCell;
    }
.end annotation


# instance fields
.field private cell:Lorg/telegram/ui/Components/ImportingAlert$BottomSheetCell;

.field private completed:Z

.field private completedDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

.field private imageView:Lorg/telegram/ui/Components/RLottieImageView;

.field private importCountTextView:[Landroid/widget/TextView;

.field private infoTextView:[Landroid/widget/TextView;

.field private lineProgressView:Lorg/telegram/ui/Components/LineProgressView;

.field private final onFinishCallback:Ljava/lang/Runnable;

.field private parentFragment:Lorg/telegram/ui/ChatActivity;

.field private percentTextView:Landroid/widget/TextView;

.field private stickersShortName:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$0fDImwMlsROjsm2DxSXGEhJncDs(Lorg/telegram/ui/Components/ImportingAlert;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ImportingAlert;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$p4rFIbU4bEou7emz0msKz-oxDHY(Lorg/telegram/ui/Components/ImportingAlert;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ImportingAlert;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v5, 0x2

    new-array v6, v5, [Landroid/widget/TextView;

    iput-object v6, v0, Lorg/telegram/ui/Components/ImportingAlert;->importCountTextView:[Landroid/widget/TextView;

    new-array v6, v5, [Landroid/widget/TextView;

    iput-object v6, v0, Lorg/telegram/ui/Components/ImportingAlert;->infoTextView:[Landroid/widget/TextView;

    new-instance v6, Lorg/telegram/ui/Components/ImportingAlert$$ExternalSyntheticLambda0;

    invoke-direct {v6, v0}, Lorg/telegram/ui/Components/ImportingAlert$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ImportingAlert;)V

    iput-object v6, v0, Lorg/telegram/ui/Components/ImportingAlert;->onFinishCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->setApplyBottomPadding(Z)V

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->setApplyTopPadding(Z)V

    move-object/from16 v7, p3

    iput-object v7, v0, Lorg/telegram/ui/Components/ImportingAlert;->parentFragment:Lorg/telegram/ui/ChatActivity;

    iput-object v2, v0, Lorg/telegram/ui/Components/ImportingAlert;->stickersShortName:Ljava/lang/String;

    new-instance v7, Landroid/widget/FrameLayout;

    invoke-direct {v7, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v7}, Lorg/telegram/ui/ActionBar/BottomSheet;->setCustomView(Landroid/view/View;)V

    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v9, 0x41a00000    # 20.0f

    const/4 v10, 0x1

    invoke-virtual {v8, v10, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-virtual {v0, v9}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v11

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setSingleLine(Z)V

    sget-object v11, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/high16 v17, 0x41880000    # 17.0f

    const/16 v18, 0x0

    const/4 v12, -0x2

    const/high16 v13, -0x40000000    # -2.0f

    const/16 v14, 0x33

    const/high16 v15, 0x41880000    # 17.0f

    const/high16 v16, 0x41a00000    # 20.0f

    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v7, v8, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v11, Lorg/telegram/ui/Components/RLottieDrawable;

    sget v13, Lorg/telegram/messenger/R$raw;->import_finish:I

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, ""

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/high16 v12, 0x42f00000    # 120.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v12, v11

    invoke-direct/range {v12 .. v18}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(ILjava/lang/String;IIZ[I)V

    iput-object v11, v0, Lorg/telegram/ui/Components/ImportingAlert;->completedDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v11, v10}, Lorg/telegram/ui/Components/RLottieDrawable;->setAllowDecodeSingleFrame(Z)V

    new-instance v11, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v11, v1}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    iput-object v11, v0, Lorg/telegram/ui/Components/ImportingAlert;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v11, v10}, Lorg/telegram/ui/Components/RLottieImageView;->setAutoRepeat(Z)V

    iget-object v11, v0, Lorg/telegram/ui/Components/ImportingAlert;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v12, Lorg/telegram/messenger/R$raw;->import_loop:I

    const/16 v13, 0x78

    invoke-virtual {v11, v12, v13, v13}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    iget-object v11, v0, Lorg/telegram/ui/Components/ImportingAlert;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v11}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    iget-object v11, v0, Lorg/telegram/ui/Components/ImportingAlert;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/high16 v17, 0x41880000    # 17.0f

    const/16 v18, 0x0

    const/16 v12, 0xa0

    const/high16 v13, 0x43200000    # 160.0f

    const/16 v14, 0x31

    const/high16 v15, 0x41880000    # 17.0f

    const/high16 v16, 0x429e0000    # 79.0f

    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v7, v11, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v11, v0, Lorg/telegram/ui/Components/ImportingAlert;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v11}, Lorg/telegram/ui/Components/RLottieImageView;->getAnimatedDrawable()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v11

    const/16 v12, 0xb2

    invoke-virtual {v11, v6, v12}, Lorg/telegram/ui/Components/RLottieDrawable;->setOnFinishCallback(Ljava/lang/Runnable;I)V

    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/Components/ImportingAlert;->percentTextView:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v6, v0, Lorg/telegram/ui/Components/ImportingAlert;->percentTextView:Landroid/widget/TextView;

    const/high16 v11, 0x41c00000    # 24.0f

    invoke-virtual {v6, v10, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v6, v0, Lorg/telegram/ui/Components/ImportingAlert;->percentTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v6, v0, Lorg/telegram/ui/Components/ImportingAlert;->percentTextView:Landroid/widget/TextView;

    const/high16 v16, 0x41880000    # 17.0f

    const/16 v17, 0x0

    const/4 v11, -0x2

    const/high16 v12, -0x40000000    # -2.0f

    const/16 v13, 0x31

    const/high16 v14, 0x41880000    # 17.0f

    const/high16 v15, 0x43830000    # 262.0f

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v7, v6, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Lorg/telegram/ui/Components/LineProgressView;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v6, v9}, Lorg/telegram/ui/Components/LineProgressView;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/Components/ImportingAlert;->lineProgressView:Lorg/telegram/ui/Components/LineProgressView;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-virtual {v0, v9}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v9

    invoke-virtual {v6, v9}, Lorg/telegram/ui/Components/LineProgressView;->setProgressColor(I)V

    iget-object v6, v0, Lorg/telegram/ui/Components/ImportingAlert;->lineProgressView:Lorg/telegram/ui/Components/LineProgressView;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_dialogLineProgressBackground:I

    invoke-virtual {v0, v9}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v9

    invoke-virtual {v6, v9}, Lorg/telegram/ui/Components/LineProgressView;->setBackColor(I)V

    iget-object v6, v0, Lorg/telegram/ui/Components/ImportingAlert;->lineProgressView:Lorg/telegram/ui/Components/LineProgressView;

    const/high16 v16, 0x42480000    # 50.0f

    const/4 v11, -0x1

    const/high16 v12, 0x40800000    # 4.0f

    const/16 v13, 0x33

    const/high16 v14, 0x42480000    # 50.0f

    const v15, 0x43998000    # 307.0f

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v7, v6, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Lorg/telegram/ui/Components/ImportingAlert$BottomSheetCell;

    invoke-direct {v6, v1, v3}, Lorg/telegram/ui/Components/ImportingAlert$BottomSheetCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v6, v0, Lorg/telegram/ui/Components/ImportingAlert;->cell:Lorg/telegram/ui/Components/ImportingAlert$BottomSheetCell;

    const/4 v3, 0x0

    invoke-virtual {v6, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, v0, Lorg/telegram/ui/Components/ImportingAlert;->cell:Lorg/telegram/ui/Components/ImportingAlert$BottomSheetCell;

    sget v6, Lorg/telegram/messenger/R$string;->ImportDone:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/telegram/ui/Components/ImportingAlert$BottomSheetCell;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lorg/telegram/ui/Components/ImportingAlert;->cell:Lorg/telegram/ui/Components/ImportingAlert$BottomSheetCell;

    const/4 v6, 0x4

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, v0, Lorg/telegram/ui/Components/ImportingAlert;->cell:Lorg/telegram/ui/Components/ImportingAlert$BottomSheetCell;

    invoke-static {v3}, Lorg/telegram/ui/Components/ImportingAlert$BottomSheetCell;->access$000(Lorg/telegram/ui/Components/ImportingAlert$BottomSheetCell;)Landroid/view/View;

    move-result-object v3

    new-instance v6, Lorg/telegram/ui/Components/ImportingAlert$$ExternalSyntheticLambda1;

    invoke-direct {v6, v0}, Lorg/telegram/ui/Components/ImportingAlert$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/ImportingAlert;)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, v0, Lorg/telegram/ui/Components/ImportingAlert;->cell:Lorg/telegram/ui/Components/ImportingAlert$BottomSheetCell;

    invoke-static {v3}, Lorg/telegram/ui/Components/ImportingAlert$BottomSheetCell;->access$000(Lorg/telegram/ui/Components/ImportingAlert$BottomSheetCell;)Landroid/view/View;

    move-result-object v3

    const/high16 v6, 0x42400000    # 48.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v3, v6}, Landroid/view/View;->setPivotY(F)V

    iget-object v3, v0, Lorg/telegram/ui/Components/ImportingAlert;->cell:Lorg/telegram/ui/Components/ImportingAlert$BottomSheetCell;

    invoke-static {v3}, Lorg/telegram/ui/Components/ImportingAlert$BottomSheetCell;->access$000(Lorg/telegram/ui/Components/ImportingAlert$BottomSheetCell;)Landroid/view/View;

    move-result-object v3

    const v6, 0x3d23d70a    # 0.04f

    invoke-virtual {v3, v6}, Landroid/view/View;->setScaleY(F)V

    iget-object v3, v0, Lorg/telegram/ui/Components/ImportingAlert;->cell:Lorg/telegram/ui/Components/ImportingAlert$BottomSheetCell;

    const/high16 v16, 0x42080000    # 34.0f

    const/high16 v12, 0x42480000    # 50.0f

    const/high16 v14, 0x42080000    # 34.0f

    const/high16 v15, 0x43770000    # 247.0f

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v7, v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_1

    iget-object v6, v0, Lorg/telegram/ui/Components/ImportingAlert;->importCountTextView:[Landroid/widget/TextView;

    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    aput-object v9, v6, v3

    iget-object v6, v0, Lorg/telegram/ui/Components/ImportingAlert;->importCountTextView:[Landroid/widget/TextView;

    aget-object v6, v6, v3

    const/high16 v9, 0x41800000    # 16.0f

    invoke-virtual {v6, v10, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v6, v0, Lorg/telegram/ui/Components/ImportingAlert;->importCountTextView:[Landroid/widget/TextView;

    aget-object v6, v6, v3

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v6, v0, Lorg/telegram/ui/Components/ImportingAlert;->importCountTextView:[Landroid/widget/TextView;

    aget-object v6, v6, v3

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-virtual {v0, v9}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v6, v0, Lorg/telegram/ui/Components/ImportingAlert;->importCountTextView:[Landroid/widget/TextView;

    aget-object v6, v6, v3

    const/high16 v16, 0x41880000    # 17.0f

    const/16 v17, 0x0

    const/4 v11, -0x2

    const/high16 v12, -0x40000000    # -2.0f

    const/16 v13, 0x31

    const/high16 v14, 0x41880000    # 17.0f

    const/high16 v15, 0x43aa0000    # 340.0f

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v7, v6, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, v0, Lorg/telegram/ui/Components/ImportingAlert;->infoTextView:[Landroid/widget/TextView;

    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    aput-object v9, v6, v3

    iget-object v6, v0, Lorg/telegram/ui/Components/ImportingAlert;->infoTextView:[Landroid/widget/TextView;

    aget-object v6, v6, v3

    const/high16 v9, 0x41600000    # 14.0f

    invoke-virtual {v6, v10, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v6, v0, Lorg/telegram/ui/Components/ImportingAlert;->infoTextView:[Landroid/widget/TextView;

    aget-object v6, v6, v3

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextGray3:I

    invoke-virtual {v0, v9}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v6, v0, Lorg/telegram/ui/Components/ImportingAlert;->infoTextView:[Landroid/widget/TextView;

    aget-object v6, v6, v3

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v6, v0, Lorg/telegram/ui/Components/ImportingAlert;->infoTextView:[Landroid/widget/TextView;

    aget-object v6, v6, v3

    const/high16 v16, 0x41f00000    # 30.0f

    const/high16 v17, 0x42300000    # 44.0f

    const/high16 v14, 0x41f00000    # 30.0f

    const/high16 v15, 0x43b80000    # 368.0f

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v7, v6, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, v0, Lorg/telegram/ui/Components/ImportingAlert;->infoTextView:[Landroid/widget/TextView;

    if-nez v3, :cond_0

    aget-object v6, v6, v3

    sget v9, Lorg/telegram/messenger/R$string;->ImportImportingInfo:I

    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_0
    aget-object v6, v6, v3

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroid/view/View;->setAlpha(F)V

    iget-object v6, v0, Lorg/telegram/ui/Components/ImportingAlert;->infoTextView:[Landroid/widget/TextView;

    aget-object v6, v6, v3

    const/high16 v11, 0x41200000    # 10.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v6, v12}, Landroid/view/View;->setTranslationY(F)V

    iget-object v6, v0, Lorg/telegram/ui/Components/ImportingAlert;->importCountTextView:[Landroid/widget/TextView;

    aget-object v6, v6, v3

    invoke-virtual {v6, v9}, Landroid/view/View;->setAlpha(F)V

    iget-object v6, v0, Lorg/telegram/ui/Components/ImportingAlert;->importCountTextView:[Landroid/widget/TextView;

    aget-object v6, v6, v3

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v6, v9}, Landroid/view/View;->setTranslationY(F)V

    :goto_1
    add-int/2addr v3, v10

    goto/16 :goto_0

    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/Components/ImportingAlert;->parentFragment:Lorg/telegram/ui/ChatActivity;

    const-string v3, "ImportCount"

    const/high16 v6, 0x42c80000    # 100.0f

    const-string v7, "%d%%"

    if-eqz v1, :cond_2

    sget v1, Lorg/telegram/messenger/R$string;->ImportImportingTitle:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/ImportingAlert;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getSendMessagesHelper()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Components/ImportingAlert;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Lorg/telegram/messenger/SendMessagesHelper;->getImportingHistory(J)Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Components/ImportingAlert;->percentTextView:Landroid/widget/TextView;

    iget v8, v1, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;->uploadProgress:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-array v9, v10, [Ljava/lang/Object;

    aput-object v8, v9, v4

    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ImportingAlert;->lineProgressView:Lorg/telegram/ui/Components/LineProgressView;

    iget v7, v1, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;->uploadProgress:I

    int-to-float v7, v7

    div-float/2addr v7, v6

    invoke-virtual {v2, v7, v4}, Lorg/telegram/ui/Components/LineProgressView;->setProgress(FZ)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ImportingAlert;->importCountTextView:[Landroid/widget/TextView;

    aget-object v2, v2, v4

    sget v6, Lorg/telegram/messenger/R$string;->ImportCount:I

    invoke-virtual {v1}, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;->getUploadedCount()J

    move-result-wide v7

    invoke-static {v7, v8}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;->getTotalCount()J

    move-result-wide v8

    invoke-static {v8, v9}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v7, v5, v4

    aput-object v1, v5, v10

    invoke-static {v3, v6, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/ImportingAlert;->infoTextView:[Landroid/widget/TextView;

    aget-object v1, v1, v10

    sget v2, Lorg/telegram/messenger/R$string;->ImportDoneInfo:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/ImportingAlert;->importCountTextView:[Landroid/widget/TextView;

    aget-object v1, v1, v10

    sget v2, Lorg/telegram/messenger/R$string;->ImportDoneTitle:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/ImportingAlert;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->historyImportProgressChanged:I

    :goto_2
    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    goto :goto_3

    :cond_2
    sget v1, Lorg/telegram/messenger/R$string;->ImportStickersImportingTitle:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance(I)Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/SendMessagesHelper;->getImportingStickers(Ljava/lang/String;)Lorg/telegram/messenger/SendMessagesHelper$ImportingStickers;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Components/ImportingAlert;->percentTextView:Landroid/widget/TextView;

    iget v8, v1, Lorg/telegram/messenger/SendMessagesHelper$ImportingStickers;->uploadProgress:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-array v9, v10, [Ljava/lang/Object;

    aput-object v8, v9, v4

    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ImportingAlert;->lineProgressView:Lorg/telegram/ui/Components/LineProgressView;

    iget v7, v1, Lorg/telegram/messenger/SendMessagesHelper$ImportingStickers;->uploadProgress:I

    int-to-float v7, v7

    div-float/2addr v7, v6

    invoke-virtual {v2, v7, v4}, Lorg/telegram/ui/Components/LineProgressView;->setProgress(FZ)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ImportingAlert;->importCountTextView:[Landroid/widget/TextView;

    aget-object v2, v2, v4

    sget v6, Lorg/telegram/messenger/R$string;->ImportCount:I

    invoke-virtual {v1}, Lorg/telegram/messenger/SendMessagesHelper$ImportingStickers;->getUploadedCount()J

    move-result-wide v7

    invoke-static {v7, v8}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lorg/telegram/messenger/SendMessagesHelper$ImportingStickers;->getTotalCount()J

    move-result-wide v8

    invoke-static {v8, v9}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v7, v5, v4

    aput-object v1, v5, v10

    invoke-static {v3, v6, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/ImportingAlert;->infoTextView:[Landroid/widget/TextView;

    aget-object v1, v1, v10

    sget v2, Lorg/telegram/messenger/R$string;->ImportStickersDoneInfo:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/ImportingAlert;->importCountTextView:[Landroid/widget/TextView;

    aget-object v1, v1, v10

    sget v2, Lorg/telegram/messenger/R$string;->ImportStickersDoneTitle:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->stickersImportProgressChanged:I

    goto :goto_2

    :goto_3
    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ImportingAlert;->completed:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ImportingAlert;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->getAnimatedDrawable()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setAutoRepeat(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ImportingAlert;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    iget-object v1, p0, Lorg/telegram/ui/Components/ImportingAlert;->completedDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(Lorg/telegram/ui/Components/RLottieDrawable;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ImportingAlert;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method


# virtual methods
.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 12

    const/4 p2, 0x2

    sget v0, Lorg/telegram/messenger/NotificationCenter;->historyImportProgressChanged:I

    const/high16 v1, 0x42c80000    # 100.0f

    const-string v2, "ImportCount"

    const-string v3, "%d%%"

    const-wide v4, 0x40a7700000000000L    # 3000.0

    const-wide v6, 0x403099999999999aL    # 16.6

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ne p1, v0, :cond_3

    array-length p1, p3

    if-le p1, v9, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ImportingAlert;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v10

    iget-object p1, p0, Lorg/telegram/ui/Components/ImportingAlert;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getSendMessagesHelper()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object p1

    invoke-virtual {p1, v10, v11}, Lorg/telegram/messenger/SendMessagesHelper;->getImportingHistory(J)Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ImportingAlert;->setCompleted()V

    return-void

    :cond_1
    iget-boolean p3, p0, Lorg/telegram/ui/Components/ImportingAlert;->completed:Z

    if-nez p3, :cond_2

    iget-object p3, p0, Lorg/telegram/ui/Components/ImportingAlert;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p3}, Lorg/telegram/ui/Components/RLottieImageView;->getAnimatedDrawable()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/ui/Components/RLottieDrawable;->getCurrentFrame()I

    move-result p3

    rsub-int p3, p3, 0xb4

    int-to-double v10, p3

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v10, v10, v6

    add-double/2addr v10, v4

    iget p3, p1, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;->timeUntilFinish:I

    int-to-double v4, p3

    cmpl-double p3, v10, v4

    if-ltz p3, :cond_2

    iget-object p3, p0, Lorg/telegram/ui/Components/ImportingAlert;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p3, v8}, Lorg/telegram/ui/Components/RLottieImageView;->setAutoRepeat(Z)V

    iput-boolean v9, p0, Lorg/telegram/ui/Components/ImportingAlert;->completed:Z

    :cond_2
    iget-object p3, p0, Lorg/telegram/ui/Components/ImportingAlert;->percentTextView:Landroid/widget/TextView;

    iget v0, p1, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;->uploadProgress:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v4, v9, [Ljava/lang/Object;

    aput-object v0, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p0, Lorg/telegram/ui/Components/ImportingAlert;->importCountTextView:[Landroid/widget/TextView;

    aget-object p3, p3, v8

    sget v0, Lorg/telegram/messenger/R$string;->ImportCount:I

    invoke-virtual {p1}, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;->getUploadedCount()J

    move-result-wide v3

    invoke-static {v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;->getTotalCount()J

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v4

    new-array p2, p2, [Ljava/lang/Object;

    aput-object v3, p2, v8

    aput-object v4, p2, v9

    invoke-static {v2, v0, p2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lorg/telegram/ui/Components/ImportingAlert;->lineProgressView:Lorg/telegram/ui/Components/LineProgressView;

    iget p1, p1, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;->uploadProgress:I

    :goto_0
    int-to-float p1, p1

    div-float/2addr p1, v1

    invoke-virtual {p2, p1, v9}, Lorg/telegram/ui/Components/LineProgressView;->setProgress(FZ)V

    goto/16 :goto_1

    :cond_3
    sget v0, Lorg/telegram/messenger/NotificationCenter;->stickersImportProgressChanged:I

    if-ne p1, v0, :cond_7

    array-length p1, p3

    if-le p1, v9, :cond_4

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void

    :cond_4
    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance(I)Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object p1

    iget-object p3, p0, Lorg/telegram/ui/Components/ImportingAlert;->stickersShortName:Ljava/lang/String;

    invoke-virtual {p1, p3}, Lorg/telegram/messenger/SendMessagesHelper;->getImportingStickers(Ljava/lang/String;)Lorg/telegram/messenger/SendMessagesHelper$ImportingStickers;

    move-result-object p1

    if-nez p1, :cond_5

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ImportingAlert;->setCompleted()V

    return-void

    :cond_5
    iget-boolean p3, p0, Lorg/telegram/ui/Components/ImportingAlert;->completed:Z

    if-nez p3, :cond_6

    iget-object p3, p0, Lorg/telegram/ui/Components/ImportingAlert;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p3}, Lorg/telegram/ui/Components/RLottieImageView;->getAnimatedDrawable()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/ui/Components/RLottieDrawable;->getCurrentFrame()I

    move-result p3

    rsub-int p3, p3, 0xb4

    int-to-double v10, p3

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v10, v10, v6

    add-double/2addr v10, v4

    iget p3, p1, Lorg/telegram/messenger/SendMessagesHelper$ImportingStickers;->timeUntilFinish:I

    int-to-double v4, p3

    cmpl-double p3, v10, v4

    if-ltz p3, :cond_6

    iget-object p3, p0, Lorg/telegram/ui/Components/ImportingAlert;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p3, v8}, Lorg/telegram/ui/Components/RLottieImageView;->setAutoRepeat(Z)V

    iput-boolean v9, p0, Lorg/telegram/ui/Components/ImportingAlert;->completed:Z

    :cond_6
    iget-object p3, p0, Lorg/telegram/ui/Components/ImportingAlert;->percentTextView:Landroid/widget/TextView;

    iget v0, p1, Lorg/telegram/messenger/SendMessagesHelper$ImportingStickers;->uploadProgress:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v4, v9, [Ljava/lang/Object;

    aput-object v0, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p0, Lorg/telegram/ui/Components/ImportingAlert;->importCountTextView:[Landroid/widget/TextView;

    aget-object p3, p3, v8

    sget v0, Lorg/telegram/messenger/R$string;->ImportCount:I

    invoke-virtual {p1}, Lorg/telegram/messenger/SendMessagesHelper$ImportingStickers;->getUploadedCount()J

    move-result-wide v3

    invoke-static {v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lorg/telegram/messenger/SendMessagesHelper$ImportingStickers;->getTotalCount()J

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v4

    new-array p2, p2, [Ljava/lang/Object;

    aput-object v3, p2, v8

    aput-object v4, p2, v9

    invoke-static {v2, v0, p2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lorg/telegram/ui/Components/ImportingAlert;->lineProgressView:Lorg/telegram/ui/Components/LineProgressView;

    iget p1, p1, Lorg/telegram/messenger/SendMessagesHelper$ImportingStickers;->uploadProgress:I

    goto/16 :goto_0

    :cond_7
    :goto_1
    return-void
.end method

.method public dismissInternal()V
    .locals 2

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismissInternal()V

    iget-object v0, p0, Lorg/telegram/ui/Components/ImportingAlert;->parentFragment:Lorg/telegram/ui/ChatActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->historyImportProgressChanged:I

    :goto_0
    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    goto :goto_1

    :cond_0
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->stickersImportProgressChanged:I

    goto :goto_0

    :goto_1
    return-void
.end method

.method public setCompleted()V
    .locals 20

    move-object/from16 v0, p0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/ui/Components/ImportingAlert;->completed:Z

    iget-object v2, v0, Lorg/telegram/ui/Components/ImportingAlert;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RLottieImageView;->setAutoRepeat(Z)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ImportingAlert;->cell:Lorg/telegram/ui/Components/ImportingAlert$BottomSheetCell;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v4, 0xfa

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    sget-object v6, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v2, v6}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v6, v0, Lorg/telegram/ui/Components/ImportingAlert;->percentTextView:Landroid/widget/TextView;

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v8, 0x0

    new-array v9, v1, [F

    aput v8, v9, v3

    invoke-static {v6, v7, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    iget-object v9, v0, Lorg/telegram/ui/Components/ImportingAlert;->percentTextView:Landroid/widget/TextView;

    sget-object v10, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/high16 v11, 0x41200000    # 10.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    neg-int v12, v12

    int-to-float v12, v12

    new-array v13, v1, [F

    aput v12, v13, v3

    invoke-static {v9, v10, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    iget-object v12, v0, Lorg/telegram/ui/Components/ImportingAlert;->infoTextView:[Landroid/widget/TextView;

    aget-object v12, v12, v3

    new-array v13, v1, [F

    aput v8, v13, v3

    invoke-static {v12, v7, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    iget-object v13, v0, Lorg/telegram/ui/Components/ImportingAlert;->infoTextView:[Landroid/widget/TextView;

    aget-object v13, v13, v3

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    neg-int v14, v14

    int-to-float v14, v14

    new-array v15, v1, [F

    aput v14, v15, v3

    invoke-static {v13, v10, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    iget-object v14, v0, Lorg/telegram/ui/Components/ImportingAlert;->importCountTextView:[Landroid/widget/TextView;

    aget-object v14, v14, v3

    new-array v15, v1, [F

    aput v8, v15, v3

    invoke-static {v14, v7, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    iget-object v15, v0, Lorg/telegram/ui/Components/ImportingAlert;->importCountTextView:[Landroid/widget/TextView;

    aget-object v15, v15, v3

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    neg-int v11, v11

    int-to-float v11, v11

    new-array v4, v1, [F

    aput v11, v4, v3

    invoke-static {v15, v10, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iget-object v5, v0, Lorg/telegram/ui/Components/ImportingAlert;->infoTextView:[Landroid/widget/TextView;

    aget-object v5, v5, v1

    const/high16 v11, 0x3f800000    # 1.0f

    new-array v15, v1, [F

    aput v11, v15, v3

    invoke-static {v5, v7, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    iget-object v15, v0, Lorg/telegram/ui/Components/ImportingAlert;->infoTextView:[Landroid/widget/TextView;

    aget-object v15, v15, v1

    new-array v11, v1, [F

    aput v8, v11, v3

    invoke-static {v15, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    iget-object v15, v0, Lorg/telegram/ui/Components/ImportingAlert;->importCountTextView:[Landroid/widget/TextView;

    aget-object v15, v15, v1

    new-array v8, v1, [F

    const/high16 v16, 0x3f800000    # 1.0f

    aput v16, v8, v3

    invoke-static {v15, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    iget-object v15, v0, Lorg/telegram/ui/Components/ImportingAlert;->importCountTextView:[Landroid/widget/TextView;

    aget-object v15, v15, v1

    move-object/from16 v18, v2

    new-array v2, v1, [F

    const/16 v17, 0x0

    aput v17, v2, v3

    invoke-static {v15, v10, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-object v15, v0, Lorg/telegram/ui/Components/ImportingAlert;->lineProgressView:Lorg/telegram/ui/Components/LineProgressView;

    move-object/from16 v19, v2

    new-array v2, v1, [F

    aput v17, v2, v3

    invoke-static {v15, v7, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-object v7, v0, Lorg/telegram/ui/Components/ImportingAlert;->cell:Lorg/telegram/ui/Components/ImportingAlert$BottomSheetCell;

    invoke-static {v7}, Lorg/telegram/ui/Components/ImportingAlert$BottomSheetCell;->access$100(Lorg/telegram/ui/Components/ImportingAlert$BottomSheetCell;)Landroid/widget/LinearLayout;

    move-result-object v7

    const/high16 v15, 0x41000000    # 8.0f

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    int-to-float v15, v15

    const/4 v1, 0x2

    new-array v0, v1, [F

    aput v15, v0, v3

    const/4 v15, 0x1

    aput v17, v0, v15

    invoke-static {v7, v10, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const/16 v7, 0xc

    new-array v7, v7, [Landroid/animation/Animator;

    aput-object v6, v7, v3

    aput-object v9, v7, v15

    aput-object v12, v7, v1

    const/4 v1, 0x3

    aput-object v13, v7, v1

    const/4 v1, 0x4

    aput-object v14, v7, v1

    const/4 v1, 0x5

    aput-object v4, v7, v1

    const/4 v1, 0x6

    aput-object v5, v7, v1

    const/4 v1, 0x7

    aput-object v11, v7, v1

    const/16 v1, 0x8

    aput-object v8, v7, v1

    const/16 v1, 0x9

    aput-object v19, v7, v1

    const/16 v1, 0xa

    aput-object v2, v7, v1

    const/16 v1, 0xb

    aput-object v0, v7, v1

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    move-object/from16 v1, p0

    iget-object v2, v1, Lorg/telegram/ui/Components/ImportingAlert;->cell:Lorg/telegram/ui/Components/ImportingAlert$BottomSheetCell;

    invoke-static {v2}, Lorg/telegram/ui/Components/ImportingAlert$BottomSheetCell;->access$000(Lorg/telegram/ui/Components/ImportingAlert$BottomSheetCell;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v4, Landroid/view/animation/OvershootInterpolator;

    const v5, 0x3f828f5c    # 1.02f

    invoke-direct {v4, v5}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v6, 0xfa

    invoke-virtual {v2, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v2, v1, Lorg/telegram/ui/Components/ImportingAlert;->cell:Lorg/telegram/ui/Components/ImportingAlert$BottomSheetCell;

    invoke-static {v2}, Lorg/telegram/ui/Components/ImportingAlert$BottomSheetCell;->access$200(Lorg/telegram/ui/Components/ImportingAlert$BottomSheetCell;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v3, v5}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v2, v1, Lorg/telegram/ui/Components/ImportingAlert;->cell:Lorg/telegram/ui/Components/ImportingAlert$BottomSheetCell;

    invoke-static {v2}, Lorg/telegram/ui/Components/ImportingAlert$BottomSheetCell;->access$200(Lorg/telegram/ui/Components/ImportingAlert$BottomSheetCell;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
