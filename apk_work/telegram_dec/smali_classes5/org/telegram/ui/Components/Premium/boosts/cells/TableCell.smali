.class public Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private final dateNameTextView:Landroid/widget/TextView;

.field private final dateTextView:Landroid/widget/TextView;

.field private fromFrameLayout:Landroid/widget/FrameLayout;

.field private final fromImageView:Lorg/telegram/ui/Components/BackupImageView;

.field private final fromNameTextView:Landroid/widget/TextView;

.field private final fromTextView:Landroid/widget/TextView;

.field private giftCode:Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;

.field private final giftNameTextView:Landroid/widget/TextView;

.field private final giftTextView:Landroid/widget/TextView;

.field private final linePaint:Landroid/graphics/Paint;

.field private final reasonNameTextView:Landroid/widget/TextView;

.field private final reasonTextView:Landroid/widget/TextView;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private final roundPath:Landroid/graphics/Path;

.field private final roundRect:Landroid/graphics/RectF;

.field private tableRow4:Landroid/widget/TableRow;

.field private toFrameLayout:Landroid/widget/FrameLayout;

.field private final toImageView:Lorg/telegram/ui/Components/BackupImageView;

.field private final toNameTextView:Landroid/widget/TextView;

.field private final toTextView:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$CpRPlXKT_fEQ514l--77FhsNQLY(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->lambda$setData$0(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EITu6bVmGYWk9SR8Ememutw_2TY(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->lambda$setData$2(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$Chat;)V

    return-void
.end method

.method public static synthetic $r8$lambda$N4Arapk_g1jMSVOvHWUFGhMhj3U(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->lambda$setData$1(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Xw36Xi0oyPoL7n82OdetOsJeQ-Q(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->lambda$setData$5(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cPnBG3bcyTQg0i0ADJUOn9JPp-A(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$User;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->lambda$setData$4(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$User;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oCWiLvmQuQWhwE0cSyFbyB9IPoQ(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$User;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->lambda$setData$7(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$User;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qxcb9iDctZWrVpIID4RVkT_OI94(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$Chat;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->lambda$setData$3(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$Chat;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rIJK3wDuCa8I963h360SaKH1kc0(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->lambda$setData$6(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$User;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 35

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->linePaint:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    iput-object v4, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->roundPath:Landroid/graphics/Path;

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->roundRect:Landroid/graphics/RectF;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    sget v3, Lorg/telegram/messenger/R$string;->BoostingFrom:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4}, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->createTextView(Ljava/lang/String;Z)Landroid/widget/TextView;

    move-result-object v3

    iput-object v3, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->fromNameTextView:Landroid/widget/TextView;

    sget v5, Lorg/telegram/messenger/R$string;->BoostingTo:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5, v4}, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->createTextView(Ljava/lang/String;Z)Landroid/widget/TextView;

    move-result-object v5

    iput-object v5, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->toNameTextView:Landroid/widget/TextView;

    sget v6, Lorg/telegram/messenger/R$string;->BoostingGift:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6, v4}, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->createTextView(Ljava/lang/String;Z)Landroid/widget/TextView;

    move-result-object v6

    iput-object v6, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->giftNameTextView:Landroid/widget/TextView;

    sget v7, Lorg/telegram/messenger/R$string;->BoostingReason:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7, v4}, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->createTextView(Ljava/lang/String;Z)Landroid/widget/TextView;

    move-result-object v7

    iput-object v7, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->reasonNameTextView:Landroid/widget/TextView;

    sget v8, Lorg/telegram/messenger/R$string;->BoostingDate:I

    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8, v4}, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->createTextView(Ljava/lang/String;Z)Landroid/widget/TextView;

    move-result-object v8

    iput-object v8, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->dateNameTextView:Landroid/widget/TextView;

    const/4 v9, 0x1

    invoke-direct {v0, v9}, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->createTextView(Z)Landroid/widget/TextView;

    move-result-object v10

    iput-object v10, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->fromTextView:Landroid/widget/TextView;

    invoke-direct {v0, v9}, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->createTextView(Z)Landroid/widget/TextView;

    move-result-object v11

    iput-object v11, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->toTextView:Landroid/widget/TextView;

    invoke-direct {v0, v4}, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->createTextView(Z)Landroid/widget/TextView;

    move-result-object v12

    iput-object v12, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->giftTextView:Landroid/widget/TextView;

    invoke-direct {v0, v9}, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->createTextView(Z)Landroid/widget/TextView;

    move-result-object v13

    iput-object v13, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->reasonTextView:Landroid/widget/TextView;

    invoke-direct {v0, v4}, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->createTextView(Z)Landroid/widget/TextView;

    move-result-object v14

    iput-object v14, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->dateTextView:Landroid/widget/TextView;

    new-instance v15, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v15, v1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v15, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->fromImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v16, 0x41400000    # 12.0f

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-virtual {v15, v9}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    new-instance v9, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v9, v1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v9, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->toImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v9, v4}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    new-instance v4, Landroid/widget/TableRow;

    invoke-direct {v4, v1}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->fromFrameLayout:Landroid/widget/FrameLayout;

    sget-boolean v17, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/16 v18, 0x3

    const/16 v19, 0x5

    if-eqz v17, :cond_0

    const/16 v22, 0x5

    goto :goto_0

    :cond_0
    const/16 v22, 0x3

    :goto_0
    const/16 v27, 0x0

    if-eqz v17, :cond_1

    const/16 v23, 0x0

    goto :goto_1

    :cond_1
    const/high16 v23, 0x41400000    # 12.0f

    :goto_1
    if-eqz v17, :cond_2

    const/high16 v25, 0x41400000    # 12.0f

    goto :goto_2

    :cond_2
    const/16 v25, 0x0

    :goto_2
    const/16 v26, 0x0

    const/16 v20, 0x18

    const/high16 v21, 0x41c00000    # 24.0f

    const/16 v24, 0x0

    move-object/from16 v17, v8

    invoke-static/range {v20 .. v26}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v2, v15, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->fromFrameLayout:Landroid/widget/FrameLayout;

    sget-boolean v8, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    move-object/from16 v20, v14

    if-eqz v8, :cond_3

    const/4 v15, 0x5

    goto :goto_3

    :cond_3
    const/4 v15, 0x3

    :goto_3
    const/16 v14, 0x10

    or-int/lit8 v30, v15, 0x10

    if-eqz v8, :cond_4

    const/16 v31, 0x0

    goto :goto_4

    :cond_4
    const/high16 v31, 0x41e80000    # 29.0f

    :goto_4
    if-eqz v8, :cond_5

    const/high16 v33, 0x41e80000    # 29.0f

    goto :goto_5

    :cond_5
    const/16 v33, 0x0

    :goto_5
    const/16 v34, 0x0

    const/16 v28, -0x2

    const/high16 v29, -0x40000000    # -2.0f

    const/16 v32, 0x0

    invoke-static/range {v28 .. v34}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v2, v10, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/TableRow$LayoutParams;

    sget-boolean v8, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v8, :cond_6

    const/high16 v8, 0x3f800000    # 1.0f

    goto :goto_6

    :cond_6
    const/4 v8, 0x0

    :goto_6
    const/4 v15, -0x2

    invoke-direct {v2, v15, v15, v8}, Landroid/widget/TableRow$LayoutParams;-><init>(IIF)V

    iput v14, v2, Landroid/widget/TableRow$LayoutParams;->gravity:I

    sget-boolean v8, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v8, :cond_7

    iget-object v8, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->fromFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v8, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v2, v15, v15}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    :goto_7
    invoke-virtual {v4, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_8

    :cond_7
    new-instance v8, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v8, v15, v15}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v3, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->fromFrameLayout:Landroid/widget/FrameLayout;

    goto :goto_7

    :goto_8
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->fromFrameLayout:Landroid/widget/FrameLayout;

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v8, v3, v10}, Landroid/view/View;->setPadding(IIII)V

    new-instance v2, Landroid/widget/TableRow;

    invoke-direct {v2, v1}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->toFrameLayout:Landroid/widget/FrameLayout;

    sget-boolean v8, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v8, :cond_8

    const/16 v30, 0x5

    goto :goto_9

    :cond_8
    const/16 v30, 0x3

    :goto_9
    if-eqz v8, :cond_9

    const/16 v31, 0x0

    goto :goto_a

    :cond_9
    const/high16 v31, 0x41400000    # 12.0f

    :goto_a
    if-eqz v8, :cond_a

    const/high16 v33, 0x41400000    # 12.0f

    goto :goto_b

    :cond_a
    const/16 v33, 0x0

    :goto_b
    const/16 v34, 0x0

    const/16 v28, 0x18

    const/high16 v29, 0x41c00000    # 24.0f

    const/16 v32, 0x0

    invoke-static/range {v28 .. v34}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v3, v9, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->toFrameLayout:Landroid/widget/FrameLayout;

    sget-boolean v8, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v8, :cond_b

    const/16 v18, 0x5

    :cond_b
    or-int/lit8 v30, v18, 0x10

    if-eqz v8, :cond_c

    const/16 v31, 0x0

    goto :goto_c

    :cond_c
    const/high16 v31, 0x41e80000    # 29.0f

    :goto_c
    if-eqz v8, :cond_d

    const/high16 v33, 0x41e80000    # 29.0f

    goto :goto_d

    :cond_d
    const/16 v33, 0x0

    :goto_d
    const/16 v34, 0x0

    const/16 v28, -0x2

    const/high16 v29, -0x40000000    # -2.0f

    const/16 v32, 0x0

    invoke-static/range {v28 .. v34}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v3, v11, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/TableRow$LayoutParams;

    sget-boolean v8, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v8, :cond_e

    const/high16 v8, 0x3f800000    # 1.0f

    goto :goto_e

    :cond_e
    const/4 v8, 0x0

    :goto_e
    invoke-direct {v3, v15, v15, v8}, Landroid/widget/TableRow$LayoutParams;-><init>(IIF)V

    iput v14, v3, Landroid/widget/TableRow$LayoutParams;->gravity:I

    sget-boolean v8, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v8, :cond_f

    iget-object v8, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->toFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v8, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v3, v15, v15}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    :goto_f
    invoke-virtual {v2, v5, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_10

    :cond_f
    new-instance v8, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v8, v15, v15}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v5, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->toFrameLayout:Landroid/widget/FrameLayout;

    goto :goto_f

    :goto_10
    iget-object v3, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->toFrameLayout:Landroid/widget/FrameLayout;

    const/high16 v5, 0x40c00000    # 6.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/4 v9, 0x0

    invoke-virtual {v3, v9, v8, v9, v5}, Landroid/view/View;->setPadding(IIII)V

    new-instance v3, Landroid/widget/TableRow;

    invoke-direct {v3, v1}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_10

    new-instance v5, Landroid/widget/TableRow$LayoutParams;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v5, v15, v15, v8}, Landroid/widget/TableRow$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v12, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v5, v15, v15}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_11

    :cond_10
    new-instance v5, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v5, v15, v15}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v5, v15, v15}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v12, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_11
    new-instance v5, Landroid/widget/TableRow;

    invoke-direct {v5, v1}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->tableRow4:Landroid/widget/TableRow;

    sget-boolean v6, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v6, :cond_11

    new-instance v6, Landroid/widget/TableRow$LayoutParams;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v6, v15, v15, v8}, Landroid/widget/TableRow$LayoutParams;-><init>(IIF)V

    invoke-virtual {v5, v13, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->tableRow4:Landroid/widget/TableRow;

    new-instance v6, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v6, v15, v15}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v7, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_12

    :cond_11
    new-instance v6, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v6, v15, v15}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v7, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->tableRow4:Landroid/widget/TableRow;

    new-instance v6, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v6, v15, v15}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v13, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_12
    new-instance v5, Landroid/widget/TableRow;

    invoke-direct {v5, v1}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    sget-boolean v6, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v6, :cond_12

    new-instance v6, Landroid/widget/TableRow$LayoutParams;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v6, v15, v15, v7}, Landroid/widget/TableRow$LayoutParams;-><init>(IIF)V

    move-object/from16 v7, v20

    invoke-virtual {v5, v7, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v6, v15, v15}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    move-object/from16 v8, v17

    invoke-virtual {v5, v8, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_13

    :cond_12
    move-object/from16 v8, v17

    move-object/from16 v7, v20

    new-instance v6, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v6, v15, v15}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v8, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v6, v15, v15}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v7, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_13
    new-instance v6, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell$1;

    move-object/from16 v7, p2

    invoke-direct {v6, v0, v1, v7}, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell$1;-><init>(Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v6, v4}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v6, v2}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v6, v3}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->tableRow4:Landroid/widget/TableRow;

    invoke-virtual {v6, v1}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v6, v5}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_13

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v6, v1, v2}, Landroid/widget/TableLayout;->setColumnShrinkable(IZ)V

    goto :goto_14

    :cond_13
    const/4 v2, 0x1

    invoke-virtual {v6, v2, v2}, Landroid/widget/TableLayout;->setColumnShrinkable(IZ)V

    :goto_14
    const/4 v1, -0x1

    const/high16 v2, -0x40000000    # -2.0f

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_14

    new-instance v1, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell$2;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell$2;-><init>(Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;)V

    invoke-static {v6, v1}, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell$$ExternalSyntheticApiModelOutline0;->m(Landroid/widget/TableLayout;Landroid/view/ViewOutlineProvider;)V

    const/4 v1, 0x1

    invoke-static {v6, v1}, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell$$ExternalSyntheticApiModelOutline1;->m(Landroid/widget/TableLayout;Z)V

    :cond_14
    const/high16 v1, 0x41600000    # 14.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/high16 v3, 0x41900000    # 18.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;)Landroid/graphics/RectF;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->roundRect:Landroid/graphics/RectF;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;)Landroid/graphics/Path;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->roundPath:Landroid/graphics/Path;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;)Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->linePaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;)Landroid/widget/TableRow;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->tableRow4:Landroid/widget/TableRow;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->dateTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method private createTextView(Ljava/lang/String;Z)Landroid/widget/TextView;
    .locals 5

    .line 0
    if-eqz p2, :cond_0

    new-instance v0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteLinkText:I

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLinkTextColor(I)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    :goto_0
    if-eqz p2, :cond_1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlue:I

    goto :goto_1

    :cond_1
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v1, 0x1

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    if-nez p2, :cond_3

    sget-boolean p2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p2, :cond_2

    const/4 p2, 0x5

    goto :goto_2

    :cond_2
    const/4 p2, 0x3

    :goto_2
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setGravity(I)V

    :cond_3
    if-eqz p1, :cond_6

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_graySection:I

    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    sget-boolean p1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/high16 p2, 0x41400000    # 12.0f

    const/high16 v1, 0x42000000    # 32.0f

    if-eqz p1, :cond_4

    const/high16 p1, 0x42000000    # 32.0f

    goto :goto_3

    :cond_4
    const/high16 p1, 0x41400000    # 12.0f

    :goto_3
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    const/high16 v2, 0x41300000    # 11.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_5

    goto :goto_4

    :cond_5
    const/high16 p2, 0x42000000    # 32.0f

    :goto_4
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, p1, v3, p2, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_5

    :cond_6
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    sget-object p1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    :goto_5
    return-object v0
.end method

.method private createTextView(Z)Landroid/widget/TextView;
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->createTextView(Ljava/lang/String;Z)Landroid/widget/TextView;

    move-result-object p1

    return-object p1
.end method

.method private static synthetic lambda$setData$0(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;)V
    .locals 0

    invoke-interface {p0, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$setData$1(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;Landroid/view/View;)V
    .locals 0

    invoke-interface {p0, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$setData$2(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 0

    invoke-interface {p0, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$setData$3(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$Chat;Landroid/view/View;)V
    .locals 0

    invoke-interface {p0, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$setData$4(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$User;Landroid/view/View;)V
    .locals 0

    invoke-interface {p0, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$setData$5(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;)V
    .locals 0

    invoke-interface {p0, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$setData$6(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 0

    invoke-interface {p0, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$setData$7(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$User;Landroid/view/View;)V
    .locals 0

    invoke-interface {p0, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public setData(Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 8

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->giftCode:Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;

    new-instance v0, Ljava/util/Date;

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;->date:I

    int-to-long v1, v1

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/LocaleController;->getFormatterYear()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/LocaleController;->getFormatterDay()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->dateTextView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->formatDateAtTime:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v0, v4, v1

    const-string v0, "formatDateAtTime"

    invoke-static {v0, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->reasonTextView:Landroid/widget/TextView;

    iget-boolean v2, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;->via_giveaway:Z

    if-eqz v2, :cond_0

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlue:I

    goto :goto_0

    :cond_0
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v2}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v2

    neg-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    iget-boolean v3, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;->via_giveaway:Z

    const-string v4, "**"

    if-eqz v3, :cond_1

    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    sget v3, Lorg/telegram/messenger/R$string;->BoostingGiveaway:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageLinkIn:I

    new-instance v6, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell$$ExternalSyntheticLambda2;

    invoke-direct {v6, p2, p1}, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;)V

    iget-object v7, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v3, v5, v6, v7}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;IILjava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->reasonTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->reasonTextView:Landroid/widget/TextView;

    new-instance v3, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell$$ExternalSyntheticLambda3;

    invoke-direct {v3, p2, p1}, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;)V

    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->reasonTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    sget v2, Lorg/telegram/messenger/R$string;->BoostingYouWereSelected:I

    goto :goto_2

    :cond_2
    sget v2, Lorg/telegram/messenger/R$string;->BoostingYouWereSelectedGroup:I

    :goto_2
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->reasonTextView:Landroid/widget/TextView;

    const/4 v3, 0x0

    goto :goto_1

    :goto_3
    iget v2, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;->months:I

    const/16 v3, 0xc

    if-ne v2, v3, :cond_3

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "Years"

    invoke-static {v3, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_3
    new-array v3, v5, [Ljava/lang/Object;

    const-string v6, "Months"

    invoke-static {v6, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_4
    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->giftTextView:Landroid/widget/TextView;

    sget v6, Lorg/telegram/messenger/R$string;->BoostingTelegramPremiumFor:I

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v5

    const-string v2, "BoostingTelegramPremiumFor"

    invoke-static {v2, v6, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v0, :cond_4

    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageLinkIn:I

    new-instance v3, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell$$ExternalSyntheticLambda4;

    invoke-direct {v3, p2, v0}, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$Chat;)V

    iget-object v6, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2, v5, v3, v6}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;IILjava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->fromTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v3

    invoke-static {v1, v3, v5}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->fromImageView:Lorg/telegram/ui/Components/BackupImageView;

    new-instance v2, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>(Lorg/telegram/tgnet/TLRPC$Chat;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->fromFrameLayout:Landroid/widget/FrameLayout;

    new-instance v2, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell$$ExternalSyntheticLambda5;

    invoke-direct {v2, p2, v0}, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$Chat;)V

    :goto_5
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_6

    :cond_4
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->fromTextView:Landroid/widget/TextView;

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->fromTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v3

    invoke-static {v2, v3, v5}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->fromImageView:Lorg/telegram/ui/Components/BackupImageView;

    new-instance v2, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>(Lorg/telegram/tgnet/TLRPC$User;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->fromFrameLayout:Landroid/widget/FrameLayout;

    new-instance v2, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell$$ExternalSyntheticLambda6;

    invoke-direct {v2, p2, v0}, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$User;)V

    goto :goto_5

    :goto_6
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;->to_id:J

    const-wide/16 v2, -0x1

    const/16 v6, 0x8

    cmp-long v7, v0, v2

    if-nez v7, :cond_5

    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;->via_giveaway:Z

    if-eqz v0, :cond_5

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    sget v1, Lorg/telegram/messenger/R$string;->BoostingIncompleteGiveaway:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageLinkIn:I

    new-instance v2, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell$$ExternalSyntheticLambda7;

    invoke-direct {v2, p2, p1}, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;)V

    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1, v5, v2, p2}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;IILjava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->reasonTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->toTextView:Landroid/widget/TextView;

    sget v0, Lorg/telegram/messenger/R$string;->BoostingNoRecipient:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->toTextView:Landroid/widget/TextView;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->toTextView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v5, p2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->toTextView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v5, p2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->toImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p2, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7

    :cond_5
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;->to_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-eqz v0, :cond_6

    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageLinkIn:I

    new-instance v3, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell$$ExternalSyntheticLambda8;

    invoke-direct {v3, p2, v0}, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$User;)V

    iget-object v4, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2, v5, v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;IILjava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->toTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v3

    invoke-static {v1, v3, v5}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->toImageView:Lorg/telegram/ui/Components/BackupImageView;

    new-instance v2, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>(Lorg/telegram/tgnet/TLRPC$User;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->toFrameLayout:Landroid/widget/FrameLayout;

    new-instance v2, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell$$ExternalSyntheticLambda9;

    invoke-direct {v2, p2, v0}, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$User;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    :goto_7
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;->boost:Lorg/telegram/tgnet/tl/TL_stories$Boost;

    if-eqz p1, :cond_7

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->tableRow4:Landroid/widget/TableRow;

    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    return-void
.end method
