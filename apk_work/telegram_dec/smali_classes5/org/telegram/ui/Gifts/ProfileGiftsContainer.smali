.class public abstract Lorg/telegram/ui/Gifts/ProfileGiftsContainer;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Gifts/ProfileGiftsContainer$TextFactory;,
        Lorg/telegram/ui/Gifts/ProfileGiftsContainer$UnpinSheet;
    }
.end annotation


# static fields
.field private static final cachedLastEmojis:Ljava/util/HashMap;


# instance fields
.field private final bulletinContainer:Landroid/widget/FrameLayout;

.field private final button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

.field private final buttonContainer:Landroid/widget/FrameLayout;

.field private buttonContainerHeightDp:I

.field private final buttonShadow:Landroid/view/View;

.field private final checkbox:Lorg/telegram/ui/Components/CheckBox2;

.field private final checkboxLayout:Landroid/widget/LinearLayout;

.field private checkboxRequestId:I

.field private final checkboxTextView:Landroid/widget/TextView;

.field private final currentAccount:I

.field private final dialogId:J

.field private final emptyView:Landroid/widget/FrameLayout;

.field private final emptyViewButton:Landroid/widget/TextView;

.field private final emptyViewTitle:Landroid/widget/TextView;

.field private final fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private final list:Lorg/telegram/ui/Stars/StarsController$GiftsList;

.field private final listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

.field private final reorder:Landroidx/recyclerview/widget/ItemTouchHelper;

.field private reordering:Z

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private visibleHeight:I


# direct methods
.method public static synthetic $r8$lambda$1ozbVTdp7lh1yJ3-BprHoNRPS9k(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->lambda$onItemLongPress$10(Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;)V

    return-void
.end method

.method public static synthetic $r8$lambda$21Rcy_NVbnMJoM6-VsA1RPFmwy8(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;Landroid/view/View;Z)Lorg/telegram/ui/Components/BulletinFactory;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->lambda$onItemLongPress$7(Landroid/view/View;Z)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$5GNGLbKjiMKIxUP9pgATW3oL9AA(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->lambda$onItemLongPress$13(Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9AdNYa5HRKp3YLwB7eV5d_1nUdE(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->lambda$onItemLongPress$14(Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ANpfPXdaW5_lq0UmmVoYVJaFJSc(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->lambda$onItemLongPress$11(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$G7apFLWRYm7AuKSYCnkky_K_U3Y(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;ZILandroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->lambda$new$4(ZILandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HVDWdbQjWkqMiwiqg2-TUEeCB-M(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->lambda$onItemLongPress$8(Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$L5UO4-gYQKm1oG-m4lXa3g-jVRM(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;Ljava/lang/Long;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->lambda$onItemClick$6(Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;Ljava/lang/Long;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NBZdAS0bkd6mqM2CioCFhXbG1bI(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RH6ACu7Kn2nrtfUIhEI5lEDi7LE(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->lambda$onItemLongPress$9()V

    return-void
.end method

.method public static synthetic $r8$lambda$aflA7GEdjim_eTxqWQj_zTxh4Q8(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->lambda$onItemClick$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$dl76oRel2Y0QBccXfztvVHWomVw(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->lambda$onItemLongPress$12(Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gBjRSfw-m75bd-UgsvB7mUxRyGI(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ILandroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->lambda$new$3(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pkQG4qG42XS37VsupBN_mt76asQ(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->lambda$new$2(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$y-TVCxDZ1PmJqcrs_VpyG7EHzMk(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->lambda$new$1(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->cachedLastEmojis:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;IJLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v13, p2

    move/from16 v14, p3

    move-object/from16 v15, p6

    const/4 v12, 0x0

    const/4 v11, 0x1

    invoke-direct {v0, v13}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v10, -0x1

    iput v10, v0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->checkboxRequestId:I

    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iput v2, v0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->visibleHeight:I

    iput-object v1, v0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iput v14, v0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->currentAccount:I

    invoke-static/range {p4 .. p5}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static/range {p3 .. p3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-static/range {p4 .. p5}, Lorg/telegram/messenger/DialogObject;->getEncryptedChatId(J)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:J

    :goto_0
    iput-wide v2, v0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->dialogId:J

    goto :goto_1

    :cond_0
    move-wide/from16 v2, p4

    goto :goto_0

    :goto_1
    invoke-static/range {p3 .. p3}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object v2

    iget-wide v3, v0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->dialogId:J

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/Stars/StarsController;->invalidateProfileGifts(J)V

    invoke-static/range {p3 .. p3}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object v2

    iget-wide v3, v0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->dialogId:J

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/Stars/StarsController;->getProfileGiftsList(J)Lorg/telegram/ui/Stars/StarsController$GiftsList;

    move-result-object v9

    iput-object v9, v0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->list:Lorg/telegram/ui/Stars/StarsController$GiftsList;

    iput-boolean v11, v9, Lorg/telegram/ui/Stars/StarsController$GiftsList;->shown:Z

    invoke-virtual {v9}, Lorg/telegram/ui/Stars/StarsController$GiftsList;->resetFilters()V

    invoke-virtual {v9}, Lorg/telegram/ui/Stars/StarsController$GiftsList;->load()V

    iput-object v15, v0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v8, v15}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v7, v15}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    const v4, 0x3d23d70a    # 0.04f

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v3

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->blendOver(II)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v6, Lorg/telegram/ui/Components/UniversalRecyclerView;

    new-instance v5, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda0;

    invoke-direct {v5, v0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;)V

    new-instance v4, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda1;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;)V

    new-instance v3, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda2;

    invoke-direct {v3, v0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;)V

    const/16 v16, 0x3

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v2, v6

    move-object/from16 v20, v3

    move-object/from16 v3, p2

    move-object/from16 v21, v4

    move/from16 v4, p3

    move-object/from16 v22, v5

    move/from16 v5, v18

    move-object/from16 v23, v6

    move/from16 v6, v19

    move/from16 v24, v7

    move-object/from16 v7, v22

    move/from16 v25, v8

    move-object/from16 v8, v21

    move-object/from16 v26, v9

    move-object/from16 v9, v20

    move-object/from16 v10, p6

    move/from16 v11, v16

    const/4 v14, 0x0

    move/from16 v12, v17

    invoke-direct/range {v2 .. v12}, Lorg/telegram/ui/Components/UniversalRecyclerView;-><init>(Landroid/content/Context;IIZLorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/messenger/Utilities$Callback5;Lorg/telegram/messenger/Utilities$Callback5Return;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;II)V

    move-object/from16 v2, v23

    iput-object v2, v0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object v3, v2, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {v3, v14}, Lorg/telegram/ui/Components/UniversalAdapter;->setApplyBackground(Z)V

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setSelectorType(I)V

    invoke-virtual {v2, v14}, Lorg/telegram/ui/Components/RecyclerListView;->setSelectorDrawableColor(I)V

    const/high16 v3, 0x41100000    # 9.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v2, v4, v14, v3, v14}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v2, v14}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    invoke-virtual {v2, v14}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    const/16 v3, 0x77

    const/4 v4, -0x1

    invoke-static {v4, v4, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$1;

    invoke-direct {v5, v0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$1;-><init>(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;)V

    invoke-virtual {v2, v5}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    new-instance v5, Landroidx/recyclerview/widget/ItemTouchHelper;

    new-instance v6, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$2;

    invoke-direct {v6, v0, v1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$2;-><init>(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-direct {v5, v6}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    iput-object v5, v0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->reorder:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-virtual {v5, v2}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v13}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->emptyView:Landroid/widget/FrameLayout;

    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v13}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v7, 0x11

    const/4 v8, -0x2

    invoke-static {v8, v8, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v1, v5, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v7, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v7, v13}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    new-instance v9, Lorg/telegram/ui/Components/RLottieDrawable;

    sget v10, Lorg/telegram/messenger/R$raw;->utyan_empty:I

    const/high16 v11, 0x42f00000    # 120.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    const-string v14, "utyan_empty"

    invoke-direct {v9, v10, v14, v12, v11}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v7, v9}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v17, 0x78

    const/16 v18, 0x78

    const/16 v19, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v5, v7, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, v13}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v7, v0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->emptyViewTitle:Landroid/widget/TextView;

    const/high16 v9, 0x41880000    # 17.0f

    invoke-virtual {v7, v6, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    move/from16 v9, v24

    invoke-static {v9, v15}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextColor(I)V

    sget v9, Lorg/telegram/messenger/R$string;->ProfileGiftsNotFoundTitle:I

    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v17, -0x2

    const/16 v18, -0x2

    const/16 v21, 0xc

    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v5, v7, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, v13}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v7, v0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->emptyViewButton:Landroid/widget/TextView;

    const/high16 v9, 0x41600000    # 14.0f

    invoke-virtual {v7, v6, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-static {v10, v15}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v11

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setTextColor(I)V

    sget v11, Lorg/telegram/messenger/R$string;->ProfileGiftsNotFoundButton:I

    invoke-static {v11}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v11, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda3;

    invoke-direct {v11, v0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;)V

    invoke-virtual {v7, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/high16 v11, 0x41200000    # 10.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    const/high16 v14, 0x40800000    # 4.0f

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    invoke-virtual {v7, v12, v9, v6, v14}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-static {v10, v15}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v6

    const v9, 0x3dcccccd    # 0.1f

    invoke-static {v6, v9}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v6

    const/4 v9, 0x4

    invoke-static {v6, v9, v9}, Lorg/telegram/ui/ActionBar/Theme;->createRadSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-static {v7}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;)V

    const/16 v21, 0x8

    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v5, v7, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v4, v4, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v13}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->buttonContainer:Landroid/widget/FrameLayout;

    move/from16 v2, v25

    invoke-static {v2, v15}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    const/16 v2, 0x57

    invoke-static {v4, v8, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/view/View;

    invoke-direct {v3, v13}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->buttonShadow:Landroid/view/View;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_dialogGrayLine:I

    invoke-static {v5, v15}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundColor(I)V

    sget v5, Lorg/telegram/messenger/AndroidUtilities;->density:F

    const/high16 v6, 0x3f800000    # 1.0f

    div-float v5, v6, v5

    const/high16 v7, -0x40800000    # -1.0f

    const/16 v8, 0x37

    invoke-static {v7, v5, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(FFI)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, v13}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->bulletinContainer:Landroid/widget/FrameLayout;

    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v13}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->checkboxLayout:Landroid/widget/LinearLayout;

    const/high16 v7, 0x41400000    # 12.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    const/high16 v9, 0x41000000    # 8.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-virtual {v5, v8, v10, v7, v9}, Landroid/view/View;->setPadding(IIII)V

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-static {v7, v15}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v7

    const/4 v8, 0x6

    invoke-static {v7, v8, v8}, Lorg/telegram/ui/ActionBar/Theme;->createRadSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v7, Lorg/telegram/ui/Components/CheckBox2;

    const/16 v8, 0x18

    invoke-direct {v7, v13, v8, v15}, Lorg/telegram/ui/Components/CheckBox2;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v7, v0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->checkbox:Lorg/telegram/ui/Components/CheckBox2;

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_radioBackgroundChecked:I

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxDisabled:I

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxCheck:I

    invoke-virtual {v7, v8, v9, v10}, Lorg/telegram/ui/Components/CheckBox2;->setColor(III)V

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lorg/telegram/ui/Components/CheckBox2;->setDrawUnchecked(Z)V

    const/4 v8, 0x0

    invoke-virtual {v7, v8, v8}, Lorg/telegram/ui/Components/CheckBox2;->setChecked(ZZ)V

    const/16 v9, 0xa

    invoke-virtual {v7, v9}, Lorg/telegram/ui/Components/CheckBox2;->setDrawBackgroundAsArc(I)V

    const/16 v21, 0x0

    const/16 v16, 0x1a

    const/16 v17, 0x1a

    const/16 v18, 0x10

    const/16 v19, 0x0

    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v5, v7, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, v13}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v9, v0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->checkboxTextView:Landroid/widget/TextView;

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-static {v10, v15}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v10, 0x41600000    # 14.0f

    const/4 v12, 0x1

    invoke-virtual {v9, v12, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    sget v10, Lorg/telegram/messenger/R$string;->Gift2ChannelNotify:I

    invoke-static {v10}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v16, -0x2

    const/16 v17, -0x2

    const/16 v19, 0x9

    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget v9, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float v9, v6, v9

    const/high16 v10, 0x40c00000    # 6.0f

    add-float v20, v9, v10

    const/16 v21, 0x0

    const/high16 v22, 0x40c00000    # 6.0f

    const/high16 v17, 0x42180000    # 38.0f

    const/16 v18, 0x11

    const/16 v19, 0x0

    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v1, v5, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const v9, 0x3ccccccd    # 0.025f

    const/high16 v10, 0x3fc00000    # 1.5f

    invoke-static {v5, v9, v10}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;FF)V

    new-instance v9, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda4;

    move/from16 v8, p3

    const/4 v10, 0x0

    invoke-direct {v9, v0, v15, v8}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V

    invoke-virtual {v5, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v9, v26

    iget-object v9, v9, Lorg/telegram/ui/Stars/StarsController$GiftsList;->chat_notifications_enabled:Ljava/lang/Boolean;

    if-eqz v9, :cond_1

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-virtual {v7, v9, v10}, Lorg/telegram/ui/Components/CheckBox2;->setChecked(ZZ)V

    :cond_1
    invoke-static/range {p3 .. p3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    move-object/from16 p4, v3

    iget-wide v2, v0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->dialogId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v7, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    move-object/from16 p5, v5

    iget-wide v4, v0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->dialogId:J

    const-wide/16 v16, 0x0

    cmp-long v3, v4, v16

    if-ltz v3, :cond_3

    if-eqz v2, :cond_2

    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->isBot(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v12, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v12, 0x1

    :goto_3
    new-instance v2, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-direct {v2, v13, v15}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v2, v0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    new-instance v3, Landroid/text/SpannableStringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "G "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v12, :cond_5

    iget-wide v13, v0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->dialogId:J

    cmp-long v5, v13, v16

    if-gez v5, :cond_4

    sget v5, Lorg/telegram/messenger/R$string;->ProfileGiftsSendChannel:I

    :goto_4
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_5

    :cond_4
    sget v5, Lorg/telegram/messenger/R$string;->ProfileGiftsSendUser:I

    invoke-static {v13, v14}, Lorg/telegram/messenger/DialogObject;->getShortName(J)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x1

    new-array v13, v9, [Ljava/lang/Object;

    aput-object v7, v13, v10

    invoke-static {v5, v13}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_5

    :cond_5
    sget v5, Lorg/telegram/messenger/R$string;->ProfileGiftsSend:I

    goto :goto_4

    :goto_5
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v4, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget v5, Lorg/telegram/messenger/R$drawable;->filled_gift_simple:I

    invoke-direct {v4, v5}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(I)V

    const/16 v5, 0x21

    const/4 v7, 0x1

    invoke-virtual {v3, v4, v10, v7, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v2, v3, v10}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v6, v3

    add-float v17, v6, v11

    const/high16 v18, 0x41200000    # 10.0f

    const/high16 v19, 0x41200000    # 10.0f

    const/4 v13, -0x1

    const/high16 v14, 0x42400000    # 48.0f

    const/16 v15, 0x77

    const/high16 v16, 0x41200000    # 10.0f

    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda5;

    invoke-direct {v1, v0, v12, v8}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;ZI)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->canSwitchNotify()Z

    move-result v1

    const/16 v12, 0x8

    if-eqz v1, :cond_6

    const/16 v1, 0x8

    goto :goto_6

    :cond_6
    const/4 v1, 0x0

    :goto_6
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->canSwitchNotify()Z

    move-result v1

    if-eqz v1, :cond_7

    move-object/from16 v1, p5

    const/4 v12, 0x0

    goto :goto_7

    :cond_7
    move-object/from16 v1, p5

    :goto_7
    invoke-virtual {v1, v12}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->canSwitchNotify()Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v1, 0x32

    goto :goto_8

    :cond_8
    const/16 v1, 0x44

    :goto_8
    iput v1, v0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->buttonContainerHeightDp:I

    const/16 v1, 0xc8

    const/4 v2, -0x1

    const/16 v3, 0x57

    invoke-static {v2, v1, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    move-object/from16 v2, p4

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;)Lorg/telegram/ui/Components/UniversalRecyclerView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;)Z
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->isLoadingVisible()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;)Lorg/telegram/ui/Stars/StarsController$GiftsList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->list:Lorg/telegram/ui/Stars/StarsController$GiftsList;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->reordering:Z

    return p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;)Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    return-object p0
.end method

.method private isLoadingVisible()Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lorg/telegram/ui/Components/FlickerLoadingView;

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->list:Lorg/telegram/ui/Stars/StarsController$GiftsList;

    invoke-virtual {p1}, Lorg/telegram/ui/Stars/StarsController$GiftsList;->resetFilters()V

    return-void
.end method

.method private synthetic lambda$new$1(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->checkboxRequestId:I

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->bulletinContainer:Landroid/widget/FrameLayout;

    invoke-static {v0, p2}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/BulletinFactory;->showForError(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$2(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    new-instance p2, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda16;

    invoke-direct {p2, p0, p3, p1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$3(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ILandroid/view/View;)V
    .locals 4

    iget-object p3, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->checkbox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {p3}, Lorg/telegram/ui/Components/CheckBox2;->isChecked()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-virtual {p3, v0, v1}, Lorg/telegram/ui/Components/CheckBox2;->setChecked(ZZ)V

    iget-object p3, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->checkbox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {p3}, Lorg/telegram/ui/Components/CheckBox2;->isChecked()Z

    move-result p3

    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->bulletinContainer:Landroid/widget/FrameLayout;

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    if-eqz p3, :cond_0

    sget v2, Lorg/telegram/messenger/R$raw;->silent_unmute:I

    goto :goto_0

    :cond_0
    sget v2, Lorg/telegram/messenger/R$raw;->silent_mute:I

    :goto_0
    if-eqz p3, :cond_1

    sget v3, Lorg/telegram/messenger/R$string;->Gift2ChannelNotifyChecked:I

    goto :goto_1

    :cond_1
    sget v3, Lorg/telegram/messenger/R$string;->Gift2ChannelNotifyNotChecked:I

    :goto_1
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletinDetail(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->list:Lorg/telegram/ui/Stars/StarsController$GiftsList;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->chat_notifications_enabled:Ljava/lang/Boolean;

    iget v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->checkboxRequestId:I

    if-ltz v0, :cond_2

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v2, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->checkboxRequestId:I

    invoke-virtual {v0, v2, v1}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->checkboxRequestId:I

    :cond_2
    new-instance v0, Lorg/telegram/tgnet/tl/TL_stars$toggleChatStarGiftNotifications;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stars$toggleChatStarGiftNotifications;-><init>()V

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->dialogId:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_stars$toggleChatStarGiftNotifications;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iput-boolean p3, v0, Lorg/telegram/tgnet/tl/TL_stars$toggleChatStarGiftNotifications;->enabled:Z

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance p3, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda13;

    invoke-direct {p3, p0, p1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {p2, v0, p3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private synthetic lambda$new$4(ZILandroid/view/View;)V
    .locals 7

    if-eqz p1, :cond_0

    new-instance p1, Lorg/telegram/ui/Gifts/GiftSheet;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-wide v3, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->dialogId:J

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    move v2, p2

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Gifts/GiftSheet;-><init>(Landroid/content/Context;IJLjava/util/List;Ljava/lang/Runnable;)V

    invoke-static {p2}, Lorg/telegram/messenger/BirthdayController;->getInstance(I)Lorg/telegram/messenger/BirthdayController;

    move-result-object p2

    iget-wide v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->dialogId:J

    invoke-virtual {p2, v0, v1}, Lorg/telegram/messenger/BirthdayController;->isToday(J)Z

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Gifts/GiftSheet;->setBirthday(Z)Lorg/telegram/ui/Gifts/GiftSheet;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Gifts/GiftSheet;->show()V

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lorg/telegram/messenger/BirthdayController;->getInstance(I)Lorg/telegram/messenger/BirthdayController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/BirthdayController;->getState()Lorg/telegram/messenger/BirthdayController$BirthdayState;

    move-result-object p1

    const/4 p2, 0x2

    const-wide/16 v0, 0x0

    invoke-static {p2, v0, v1, p1}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->open(IJLorg/telegram/messenger/BirthdayController$BirthdayState;)Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;

    :goto_0
    return-void
.end method

.method private synthetic lambda$onItemClick$5()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onItemClick$6(Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;Ljava/lang/Long;)V
    .locals 7

    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->list:Lorg/telegram/ui/Stars/StarsController$GiftsList;

    iget-object v0, v0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v3

    const/4 p1, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    iget-object p3, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-static {p3}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p3

    invoke-virtual {p2}, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->BoughtResoldGiftTitle:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->BoughtResoldGiftText:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p2, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->title:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->num:I

    int-to-long v5, p2

    const/16 p2, 0x2c

    invoke-static {v5, v6, p2}, Lorg/telegram/messenger/LocaleController;->formatNumber(JC)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v4, v0, [Ljava/lang/Object;

    aput-object p2, v4, p1

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, v1, v2, p2}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p2

    :goto_0
    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/Bulletin;->hideAfterBottomSheet(Z)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-static {v1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v1

    invoke-virtual {p2}, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p2

    sget v2, Lorg/telegram/messenger/R$string;->BoughtResoldGiftToTitle:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->BoughtResoldGiftToText:I

    iget v4, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->currentAccount:I

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lorg/telegram/messenger/DialogObject;->getShortName(IJ)Ljava/lang/String;

    move-result-object p3

    new-array v4, v0, [Ljava/lang/Object;

    aput-object p3, v4, p1

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p2, v2, p3}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p2

    goto :goto_0

    :goto_1
    sget-object p1, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/telegram/ui/LaunchActivity;->getFireworksOverlay()Lorg/telegram/ui/Components/FireworksOverlay;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/FireworksOverlay;->start(Z)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$onItemLongPress$10(Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;)V
    .locals 8

    new-instance v7, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$3;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->currentAccount:I

    iget-wide v4, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->dialogId:J

    iget-object v6, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$3;-><init>(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;Landroid/content/Context;IJLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v0, 0x0

    invoke-virtual {v7, p1, v0}, Lorg/telegram/ui/Stars/StarGiftSheet;->set(Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;Lorg/telegram/ui/Stars/StarsController$IGiftsList;)Lorg/telegram/ui/Stars/StarGiftSheet;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stars/StarGiftSheet;->toggleWear(Z)V

    return-void
.end method

.method private synthetic lambda$onItemLongPress$11(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->addToClipboard(Ljava/lang/CharSequence;)Z

    iget-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-static {p1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createCopyLinkBulletin(Z)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method private synthetic lambda$onItemLongPress$12(Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;)V
    .locals 8

    new-instance v7, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$4;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->currentAccount:I

    iget-wide v4, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->dialogId:J

    iget-object v6, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$4;-><init>(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;Landroid/content/Context;IJLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v0, 0x0

    invoke-virtual {v7, p1, v0}, Lorg/telegram/ui/Stars/StarGiftSheet;->set(Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;Lorg/telegram/ui/Stars/StarsController$IGiftsList;)Lorg/telegram/ui/Stars/StarGiftSheet;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stars/StarGiftSheet;->onSharePressed(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$onItemLongPress$13(Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;)V
    .locals 3

    iget-boolean v0, p1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->pinned_to_top:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->unsaved:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p2, v0, v1}, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->setPinned(ZZ)V

    iget-object v2, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->list:Lorg/telegram/ui/Stars/StarsController$GiftsList;

    invoke-virtual {v2, p1, v0, v0}, Lorg/telegram/ui/Stars/StarsController$GiftsList;->togglePinned(Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;ZZ)Z

    :cond_0
    iget-boolean v0, p1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->unsaved:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->unsaved:Z

    invoke-virtual {p2, p1, v1}, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->setStarsGift(Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;Z)V

    new-instance p2, Lorg/telegram/tgnet/tl/TL_stars$saveStarGift;

    invoke-direct {p2}, Lorg/telegram/tgnet/tl/TL_stars$saveStarGift;-><init>()V

    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->list:Lorg/telegram/ui/Stars/StarsController$GiftsList;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stars/StarsController$GiftsList;->getInput(Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;)Lorg/telegram/tgnet/tl/TL_stars$InputSavedStarGift;

    move-result-object v0

    iput-object v0, p2, Lorg/telegram/tgnet/tl/TL_stars$saveStarGift;->stargift:Lorg/telegram/tgnet/tl/TL_stars$InputSavedStarGift;

    iget-boolean p1, p1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->unsaved:Z

    iput-boolean p1, p2, Lorg/telegram/tgnet/tl/TL_stars$saveStarGift;->unsave:Z

    iget p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private synthetic lambda$onItemLongPress$14(Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;)V
    .locals 8

    new-instance v7, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$5;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->currentAccount:I

    iget-wide v4, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->dialogId:J

    iget-object v6, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$5;-><init>(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;Landroid/content/Context;IJLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v0, 0x0

    invoke-virtual {v7, p1, v0}, Lorg/telegram/ui/Stars/StarGiftSheet;->set(Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;Lorg/telegram/ui/Stars/StarsController$IGiftsList;)Lorg/telegram/ui/Stars/StarGiftSheet;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Stars/StarGiftSheet;->openTransfer()V

    return-void
.end method

.method private synthetic lambda$onItemLongPress$7(Landroid/view/View;Z)Lorg/telegram/ui/Components/BulletinFactory;
    .locals 1

    check-cast p1, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->setPinned(ZZ)V

    iget-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    iget-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-static {p1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$onItemLongPress$8(Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;Landroid/view/View;)V
    .locals 10

    iget-boolean v0, p1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->unsaved:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iput-boolean v2, p1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->unsaved:Z

    invoke-virtual {p2, p1, v1}, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->setStarsGift(Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;Z)V

    new-instance p2, Lorg/telegram/tgnet/tl/TL_stars$saveStarGift;

    invoke-direct {p2}, Lorg/telegram/tgnet/tl/TL_stars$saveStarGift;-><init>()V

    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->list:Lorg/telegram/ui/Stars/StarsController$GiftsList;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stars/StarsController$GiftsList;->getInput(Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;)Lorg/telegram/tgnet/tl/TL_stars$InputSavedStarGift;

    move-result-object v0

    iput-object v0, p2, Lorg/telegram/tgnet/tl/TL_stars$saveStarGift;->stargift:Lorg/telegram/tgnet/tl/TL_stars$InputSavedStarGift;

    iget-boolean v0, p1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->unsaved:Z

    iput-boolean v0, p2, Lorg/telegram/tgnet/tl/TL_stars$saveStarGift;->unsave:Z

    iget v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    const/4 v3, 0x0

    const/16 v4, 0x40

    invoke-virtual {v0, p2, v3, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    :cond_0
    iget-boolean p2, p1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->pinned_to_top:Z

    xor-int/2addr p2, v1

    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->list:Lorg/telegram/ui/Stars/StarsController$GiftsList;

    invoke-virtual {v0, p1, p2, v2}, Lorg/telegram/ui/Stars/StarsController$GiftsList;->togglePinned(Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$UnpinSheet;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-wide v5, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->dialogId:J

    iget-object v8, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    new-instance v9, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda17;

    invoke-direct {v9, p0, p3, p2}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;Landroid/view/View;Z)V

    move-object v3, v0

    move-object v7, p1

    invoke-direct/range {v3 .. v9}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$UnpinSheet;-><init>(Landroid/content/Context;JLorg/telegram/tgnet/tl/TL_stars$SavedStarGift;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/messenger/Utilities$Callback0Return;)V

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    return-void

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-static {p1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    if-eqz p2, :cond_2

    sget v0, Lorg/telegram/messenger/R$raw;->ic_pin:I

    sget v3, Lorg/telegram/messenger/R$string;->Gift2PinnedTitle:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$string;->Gift2PinnedSubtitle:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v0, v3, v4}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    goto :goto_1

    :cond_2
    sget v0, Lorg/telegram/messenger/R$raw;->ic_unpin:I

    sget v3, Lorg/telegram/messenger/R$string;->Gift2Unpinned:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    goto :goto_0

    :goto_1
    check-cast p3, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;

    invoke-virtual {p3, p2, v1}, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->setPinned(ZZ)V

    iget-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method

.method private synthetic lambda$onItemLongPress$9()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->setReordering(Z)V

    return-void
.end method

.method private setReordering(Z)V
    .locals 4

    iget-boolean v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->reordering:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->reordering:Z

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->updatedReordering(Z)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v3, v1, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;

    if-eqz v3, :cond_1

    check-cast v1, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;

    invoke-virtual {v1, p1, v2}, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->setReordering(ZZ)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object v0, v0, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/telegram/ui/Components/UniversalAdapter;->updateWithoutNotify()V

    :cond_3
    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v0, p1, Lorg/telegram/ui/ProfileActivity;

    if-eqz v0, :cond_4

    check-cast p1, Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/ProfileActivity;->scrollToSharedMedia(Z)V

    :cond_4
    return-void
.end method


# virtual methods
.method public canFilter()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public canFilterHidden()Z
    .locals 5

    iget-wide v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->dialogId:J

    iget v2, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-wide v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->dialogId:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    iget v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->dialogId:J

    neg-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lorg/telegram/messenger/ChatObject;->canUserDoAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result v0

    return v0
.end method

.method public canReorder()Z
    .locals 5

    iget-wide v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->dialogId:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_2

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget v2, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_2
    iget v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->dialogId:J

    neg-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lorg/telegram/messenger/ChatObject;->canUserDoAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result v0

    return v0
.end method

.method public canSwitchNotify()Z
    .locals 6

    iget-wide v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->dialogId:J

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-ltz v5, :cond_0

    return v4

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->list:Lorg/telegram/ui/Stars/StarsController$GiftsList;

    iget-object v0, v0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->chat_notifications_enabled:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    const/4 v4, 0x1

    :cond_1
    return v4
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 6

    sget p2, Lorg/telegram/messenger/NotificationCenter;->starUserGiftsLoaded:I

    const/16 v0, 0x44

    const/16 v1, 0x32

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-ne p1, p2, :cond_6

    aget-object p1, p3, v3

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iget-wide v4, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->dialogId:J

    cmp-long p3, p1, v4

    if-nez p3, :cond_a

    iget-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {p0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->canSwitchNotify()Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 p2, 0x8

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->checkboxLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->canSwitchNotify()Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 v2, 0x0

    :cond_1
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->canSwitchNotify()Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 v0, 0x32

    :cond_2
    iput v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->buttonContainerHeightDp:I

    iget-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->list:Lorg/telegram/ui/Stars/StarsController$GiftsList;

    iget-object p1, p1, Lorg/telegram/ui/Stars/StarsController$GiftsList;->chat_notifications_enabled:Ljava/lang/Boolean;

    const/4 p2, 0x1

    if-eqz p1, :cond_3

    iget-object p3, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->checkbox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p3, p1, p2}, Lorg/telegram/ui/Components/CheckBox2;->setChecked(ZZ)V

    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    if-eqz p1, :cond_4

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->canScrollVertically(I)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-direct {p0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->isLoadingVisible()Z

    move-result p1

    if-eqz p1, :cond_a

    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->list:Lorg/telegram/ui/Stars/StarsController$GiftsList;

    invoke-virtual {p1}, Lorg/telegram/ui/Stars/StarsController$GiftsList;->load()V

    goto :goto_2

    :cond_6
    sget p2, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    if-ne p1, p2, :cond_a

    iget-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {p0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->canSwitchNotify()Z

    move-result p2

    if-eqz p2, :cond_7

    const/16 p2, 0x8

    goto :goto_1

    :cond_7
    const/4 p2, 0x0

    :goto_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->checkboxLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->canSwitchNotify()Z

    move-result p2

    if-eqz p2, :cond_8

    const/4 v2, 0x0

    :cond_8
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->canSwitchNotify()Z

    move-result p1

    if-eqz p1, :cond_9

    const/16 v0, 0x32

    :cond_9
    iput v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->buttonContainerHeightDp:I

    iget p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->visibleHeight:I

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->setVisibleHeight(I)V

    :cond_a
    :goto_2
    return-void
.end method

.method public fillItems(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 7

    iget-object p2, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->list:Lorg/telegram/ui/Stars/StarsController$GiftsList;

    invoke-virtual {p2}, Lorg/telegram/ui/Stars/StarsController$GiftsList;->hasFilters()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->list:Lorg/telegram/ui/Stars/StarsController$GiftsList;

    iget-object p2, p2, Lorg/telegram/ui/Stars/StarsController$GiftsList;->gifts:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-gtz p2, :cond_0

    iget-object p2, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->list:Lorg/telegram/ui/Stars/StarsController$GiftsList;

    iget-boolean v0, p2, Lorg/telegram/ui/Stars/StarsController$GiftsList;->endReached:Z

    if-eqz v0, :cond_0

    iget-boolean p2, p2, Lorg/telegram/ui/Stars/StarsController$GiftsList;->loading:Z

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->list:Lorg/telegram/ui/Stars/StarsController$GiftsList;

    const/4 v0, 0x3

    if-eqz p2, :cond_2

    iget p2, p2, Lorg/telegram/ui/Stars/StarsController$GiftsList;->totalCount:I

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p2, 0x3

    :goto_1
    const/4 v1, 0x1

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iget-object v2, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    if-eqz v2, :cond_3

    invoke-virtual {v2, p2}, Lorg/telegram/ui/Components/UniversalRecyclerView;->setSpanCount(I)V

    :cond_3
    const/high16 p2, 0x41400000    # 12.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asSpace(I)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->list:Lorg/telegram/ui/Stars/StarsController$GiftsList;

    if-eqz p2, :cond_8

    iget-object p2, p2, Lorg/telegram/ui/Stars/StarsController$GiftsList;->gifts:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    const/4 v2, 0x3

    :cond_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    invoke-static {v4, v3, v1}, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell$Factory;->asStarGift(ILorg/telegram/tgnet/tl/TL_stars$SavedStarGift;Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v3

    iget-boolean v4, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->reordering:Z

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/UItem;->setReordering(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, -0x1

    if-nez v2, :cond_4

    goto :goto_2

    :cond_5
    iget-object p2, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->list:Lorg/telegram/ui/Stars/StarsController$GiftsList;

    iget-boolean v3, p2, Lorg/telegram/ui/Stars/StarsController$GiftsList;->loading:Z

    if-nez v3, :cond_6

    iget-boolean p2, p2, Lorg/telegram/ui/Stars/StarsController$GiftsList;->endReached:Z

    if-nez p2, :cond_8

    :cond_6
    :goto_3
    if-gtz v2, :cond_7

    const/4 p2, 0x3

    goto :goto_4

    :cond_7
    move p2, v2

    :goto_4
    if-ge v4, p2, :cond_8

    add-int/lit8 v4, v4, 0x1

    const/16 p2, 0x22

    invoke-static {v4, p2}, Lorg/telegram/ui/Components/UItem;->asFlicker(II)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/UItem;->setSpanCount(I)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    const/high16 p2, 0x41a00000    # 20.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asSpace(I)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->dialogId:J

    iget p2, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v2

    cmp-long p2, v0, v2

    if-nez p2, :cond_9

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p2, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    sget p2, Lorg/telegram/messenger/R$string;->ProfileGiftsInfo:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/high16 p2, 0x41c00000    # 24.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    const/high16 v3, 0x41600000    # 14.0f

    const/4 v5, 0x1

    const/16 v2, 0x11

    invoke-static/range {v1 .. v6}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$TextFactory;->asText(IIFLjava/lang/CharSequence;ZI)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    const/high16 p2, 0x42a40000    # 82.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asSpace(I)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getCurrentListView()Lorg/telegram/ui/Components/RecyclerListView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    return-object v0
.end method

.method public getGiftsCount()I
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->list:Lorg/telegram/ui/Stars/StarsController$GiftsList;

    if-eqz v0, :cond_0

    iget v0, v0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->totalCount:I

    if-lez v0, :cond_0

    return v0

    :cond_0
    iget-wide v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->dialogId:J

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    iget v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->dialogId:J

    if-ltz v5, :cond_2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$UserFull;->stargifts_count:I

    :cond_1
    return v4

    :cond_2
    neg-long v1, v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v0

    if-eqz v0, :cond_3

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->stargifts_count:I

    :cond_3
    return v4
.end method

.method public getLastEmojis(Landroid/graphics/Paint$FontMetricsInt;)Ljava/lang/CharSequence;
    .locals 9

    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->list:Lorg/telegram/ui/Stars/StarsController$GiftsList;

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Landroid/util/Pair;

    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-wide v3, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->dialogId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->list:Lorg/telegram/ui/Stars/StarsController$GiftsList;

    iget-object v2, v2, Lorg/telegram/ui/Stars/StarsController$GiftsList;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->list:Lorg/telegram/ui/Stars/StarsController$GiftsList;

    iget-boolean p1, p1, Lorg/telegram/ui/Stars/StarsController$GiftsList;->loading:Z

    if-eqz p1, :cond_1

    sget-object p1, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->cachedLastEmojis:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    if-eqz p1, :cond_1

    return-object p1

    :cond_1
    return-object v1

    :cond_2
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x3

    if-ge v6, v7, :cond_5

    iget-object v6, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->list:Lorg/telegram/ui/Stars/StarsController$GiftsList;

    iget-object v6, v6, Lorg/telegram/ui/Stars/StarsController$GiftsList;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_5

    iget-object v6, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->list:Lorg/telegram/ui/Stars/StarsController$GiftsList;

    iget-object v6, v6, Lorg/telegram/ui/Stars/StarsController$GiftsList;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    iget-object v6, v6, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    invoke-virtual {v6}, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v6

    if-nez v6, :cond_3

    goto :goto_1

    :cond_3
    iget-wide v7, v6, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_1

    :cond_4
    iget-wide v7, v6, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    return-object v1

    :cond_6
    new-instance v1, Landroid/text/SpannableStringBuilder;

    const-string v2, " "

    invoke-direct {v1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_7

    new-instance v5, Landroid/text/SpannableStringBuilder;

    const-string v6, "x"

    invoke-direct {v5, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$Document;

    new-instance v7, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    const v8, 0x3f666666    # 0.9f

    invoke-direct {v7, v6, v8, p1}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;-><init>(Lorg/telegram/tgnet/TLRPC$Document;FLandroid/graphics/Paint$FontMetricsInt;)V

    const/16 v6, 0x21

    const/4 v8, 0x1

    invoke-virtual {v5, v7, v4, v8, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v1, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    sget-object p1, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->cachedLastEmojis:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public getLastEmojisHash()J
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->list:Lorg/telegram/ui/Stars/StarsController$GiftsList;

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_2

    iget-object v2, v2, Lorg/telegram/ui/Stars/StarsController$GiftsList;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    :cond_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x3

    if-ge v5, v7, :cond_2

    iget-object v7, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->list:Lorg/telegram/ui/Stars/StarsController$GiftsList;

    iget-object v7, v7, Lorg/telegram/ui/Stars/StarsController$GiftsList;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_2

    iget-object v7, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->list:Lorg/telegram/ui/Stars/StarsController$GiftsList;

    iget-object v7, v7, Lorg/telegram/ui/Stars/StarsController$GiftsList;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    iget-object v7, v7, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    invoke-virtual {v7}, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v7

    if-nez v7, :cond_1

    goto :goto_1

    :cond_1
    iget-wide v8, v7, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-wide v7, v7, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v3, v7, v0

    aput-object v4, v7, v1

    invoke-static {v7}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v3

    int-to-long v3, v3

    add-int/2addr v5, v1

    :goto_1
    add-int/2addr v6, v1

    goto :goto_0

    :cond_2
    :goto_2
    return-wide v3
.end method

.method public getList()Lorg/telegram/ui/Stars/StarsController$GiftsList;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->list:Lorg/telegram/ui/Stars/StarsController$GiftsList;

    return-object v0
.end method

.method public isReordering()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->reordering:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->starUserGiftsLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->list:Lorg/telegram/ui/Stars/StarsController$GiftsList;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->shown:Z

    invoke-virtual {v0}, Lorg/telegram/ui/Stars/StarsController$GiftsList;->load()V

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-virtual {p0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->resetReordering()V

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->starUserGiftsLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->list:Lorg/telegram/ui/Stars/StarsController$GiftsList;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->shown:Z

    :cond_0
    return-void
.end method

.method public onItemClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)V
    .locals 6

    iget-object p1, p1, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    instance-of p2, p1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    if-eqz p2, :cond_4

    check-cast p1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    iget-boolean p2, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->reordering:Z

    if-eqz p2, :cond_3

    iget-object p2, p1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    instance-of p2, p2, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-boolean p2, p1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->pinned_to_top:Z

    const/4 p3, 0x1

    xor-int/2addr p2, p3

    const/4 p4, 0x0

    if-eqz p2, :cond_1

    iget-boolean p5, p1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->unsaved:Z

    if-eqz p5, :cond_1

    iput-boolean p4, p1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->unsaved:Z

    new-instance p5, Lorg/telegram/tgnet/tl/TL_stars$saveStarGift;

    invoke-direct {p5}, Lorg/telegram/tgnet/tl/TL_stars$saveStarGift;-><init>()V

    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->list:Lorg/telegram/ui/Stars/StarsController$GiftsList;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stars/StarsController$GiftsList;->getInput(Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;)Lorg/telegram/tgnet/tl/TL_stars$InputSavedStarGift;

    move-result-object v0

    iput-object v0, p5, Lorg/telegram/tgnet/tl/TL_stars$saveStarGift;->stargift:Lorg/telegram/tgnet/tl/TL_stars$InputSavedStarGift;

    iget-boolean v0, p1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->unsaved:Z

    iput-boolean v0, p5, Lorg/telegram/tgnet/tl/TL_stars$saveStarGift;->unsave:Z

    iget v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x40

    invoke-virtual {v0, p5, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    :cond_1
    iget-object p5, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->list:Lorg/telegram/ui/Stars/StarsController$GiftsList;

    invoke-virtual {p5, p1, p2, p3}, Lorg/telegram/ui/Stars/StarsController$GiftsList;->togglePinned(Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;ZZ)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-static {p1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget p3, Lorg/telegram/messenger/R$raw;->chats_infotip:I

    iget p5, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->currentAccount:I

    invoke-static {p5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p5

    iget p5, p5, Lorg/telegram/messenger/MessagesController;->stargiftsPinnedToTopLimit:I

    const-string v0, "GiftsPinLimit"

    invoke-static {v0, p5}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, p3, p5}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :cond_2
    if-eqz p2, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {p1, p4}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    goto :goto_0

    :cond_3
    new-instance p2, Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->currentAccount:I

    iget-wide v3, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->dialogId:J

    iget-object v5, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Stars/StarGiftSheet;-><init>(Landroid/content/Context;IJLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    new-instance p3, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda14;

    invoke-direct {p3, p0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;)V

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Stars/StarGiftSheet;->setOnGiftUpdatedListener(Ljava/lang/Runnable;)Lorg/telegram/ui/Stars/StarGiftSheet;

    move-result-object p2

    new-instance p3, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda15;

    invoke-direct {p3, p0, p1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;)V

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Stars/StarGiftSheet;->setOnBoughtGift(Lorg/telegram/messenger/Utilities$Callback2;)Lorg/telegram/ui/Stars/StarGiftSheet;

    move-result-object p2

    iget-object p3, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->list:Lorg/telegram/ui/Stars/StarsController$GiftsList;

    invoke-virtual {p2, p1, p3}, Lorg/telegram/ui/Stars/StarGiftSheet;->set(Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;Lorg/telegram/ui/Stars/StarsController$IGiftsList;)Lorg/telegram/ui/Stars/StarGiftSheet;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Stars/StarGiftSheet;->show()V

    :cond_4
    :goto_0
    return-void
.end method

.method public onItemLongPress(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)Z
    .locals 6

    instance-of p3, p2, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;

    const/4 p4, 0x0

    if-eqz p3, :cond_11

    iget-object p1, p1, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    instance-of p3, p1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    if-eqz p3, :cond_11

    move-object p3, p2

    check-cast p3, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;

    check-cast p1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    iget-object p5, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-static {p5, p2}, Lorg/telegram/ui/Components/ItemOptions;->makeOptions(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p5

    iget-object v0, p1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    instance-of v0, v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->canReorder()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->unsaved:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->pinned_to_top:Z

    if-nez v0, :cond_3

    :cond_0
    iget-boolean v0, p1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->pinned_to_top:Z

    if-eqz v0, :cond_1

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_unpin:I

    goto :goto_0

    :cond_1
    sget v2, Lorg/telegram/messenger/R$drawable;->msg_pin:I

    :goto_0
    if-eqz v0, :cond_2

    sget v0, Lorg/telegram/messenger/R$string;->Gift2Unpin:I

    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    sget v0, Lorg/telegram/messenger/R$string;->Gift2Pin:I

    goto :goto_1

    :goto_2
    new-instance v3, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda6;

    invoke-direct {v3, p0, p1, p3, p2}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;Landroid/view/View;)V

    invoke-virtual {p5, v2, v0, v3}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    iget-boolean p2, p1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->pinned_to_top:Z

    sget v0, Lorg/telegram/messenger/R$drawable;->tabs_reorder:I

    sget v2, Lorg/telegram/messenger/R$string;->Gift2Reorder:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda7;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;)V

    invoke-virtual {p5, p2, v0, v2, v3}, Lorg/telegram/ui/Components/ItemOptions;->addIf(ZILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    :cond_3
    iget-object p2, p1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    move-object v0, p2

    check-cast v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    iget-object p2, p2, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->slug:Ljava/lang/String;

    if-eqz p2, :cond_4

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->linkPrefix:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/nft/"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    iget-object v2, v2, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->slug:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    :cond_4
    const/4 p2, 0x0

    :goto_3
    iget v2, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->currentAccount:I

    iget-object v3, v0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->owner_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v3}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Stars/StarGiftSheet;->isMineWithActions(IJ)Z

    move-result v2

    if-eqz v2, :cond_7

    iget v2, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->currentAccount:I

    invoke-static {v2, v0}, Lorg/telegram/ui/Stars/StarGiftSheet;->isWorn(ILorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget v2, Lorg/telegram/messenger/R$drawable;->menu_takeoff:I

    goto :goto_4

    :cond_5
    sget v2, Lorg/telegram/messenger/R$drawable;->menu_wear:I

    :goto_4
    if-eqz v0, :cond_6

    sget v0, Lorg/telegram/messenger/R$string;->Gift2Unwear:I

    goto :goto_5

    :cond_6
    sget v0, Lorg/telegram/messenger/R$string;->Gift2Wear:I

    :goto_5
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda8;

    invoke-direct {v3, p0, p1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;)V

    invoke-virtual {p5, v2, v0, v3}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    :cond_7
    if-eqz p2, :cond_8

    const/4 v0, 0x1

    goto :goto_6

    :cond_8
    const/4 v0, 0x0

    :goto_6
    sget v2, Lorg/telegram/messenger/R$drawable;->msg_link2:I

    sget v3, Lorg/telegram/messenger/R$string;->CopyLink:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda9;

    invoke-direct {v4, p0, p2}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;Ljava/lang/String;)V

    invoke-virtual {p5, v0, v2, v3, v4}, Lorg/telegram/ui/Components/ItemOptions;->addIf(ZILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    if-eqz p2, :cond_9

    const/4 p2, 0x1

    goto :goto_7

    :cond_9
    const/4 p2, 0x0

    :goto_7
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_share:I

    sget v2, Lorg/telegram/messenger/R$string;->ShareFile:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda10;

    invoke-direct {v3, p0, p1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;)V

    invoke-virtual {p5, p2, v0, v2, v3}, Lorg/telegram/ui/Components/ItemOptions;->addIf(ZILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    :cond_a
    iget p2, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->currentAccount:I

    iget-wide v2, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->dialogId:J

    invoke-static {p2, v2, v3}, Lorg/telegram/ui/Stars/StarGiftSheet;->isMineWithActions(IJ)Z

    move-result p2

    if-eqz p2, :cond_d

    iget-boolean p2, p1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->unsaved:Z

    if-eqz p2, :cond_b

    sget v0, Lorg/telegram/messenger/R$drawable;->msg_message:I

    goto :goto_8

    :cond_b
    sget v0, Lorg/telegram/messenger/R$drawable;->menu_hide_gift:I

    :goto_8
    if-eqz p2, :cond_c

    sget p2, Lorg/telegram/messenger/R$string;->Gift2ShowGift:I

    goto :goto_9

    :cond_c
    sget p2, Lorg/telegram/messenger/R$string;->Gift2HideGift:I

    :goto_9
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance v2, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda11;

    invoke-direct {v2, p0, p1, p3}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;)V

    invoke-virtual {p5, v0, p2, v2}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    :cond_d
    iget-object p2, p1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    instance-of v0, p2, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    if-eqz v0, :cond_f

    check-cast p2, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    iget v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v2

    iget-object p2, p2, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->owner_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {p2}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v4

    cmp-long p2, v4, v2

    if-nez p2, :cond_e

    const/4 p2, 0x1

    goto :goto_a

    :cond_e
    const/4 p2, 0x0

    :goto_a
    sget v0, Lorg/telegram/messenger/R$drawable;->menu_transfer:I

    sget v2, Lorg/telegram/messenger/R$string;->Gift2TransferOption:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda12;

    invoke-direct {v3, p0, p1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;)V

    invoke-virtual {p5, p2, v0, v2, v3}, Lorg/telegram/ui/Components/ItemOptions;->addIf(ZILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    :cond_f
    invoke-virtual {p5}, Lorg/telegram/ui/Components/ItemOptions;->getItemsCount()I

    move-result p1

    if-gtz p1, :cond_10

    return p4

    :cond_10
    const/4 p1, 0x5

    invoke-virtual {p5, p1}, Lorg/telegram/ui/Components/ItemOptions;->setGravity(I)Lorg/telegram/ui/Components/ItemOptions;

    invoke-virtual {p5, v1}, Lorg/telegram/ui/Components/ItemOptions;->setBlur(Z)Lorg/telegram/ui/Components/ItemOptions;

    invoke-virtual {p5}, Lorg/telegram/ui/Components/ItemOptions;->allowMoveScrim()Lorg/telegram/ui/Components/ItemOptions;

    sget-object p1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget p2, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/high16 p2, 0x42000000    # 32.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    sub-int p2, p1, p2

    int-to-float p1, p1

    const p4, 0x3f19999a    # 0.6f

    mul-float p1, p1, p4

    float-to-int p1, p1

    invoke-virtual {p5, p2, p1}, Lorg/telegram/ui/Components/ItemOptions;->animateToSize(II)Lorg/telegram/ui/Components/ItemOptions;

    invoke-virtual {p5}, Lorg/telegram/ui/Components/ItemOptions;->hideScrimUnder()Lorg/telegram/ui/Components/ItemOptions;

    invoke-virtual {p5, v1}, Lorg/telegram/ui/Components/ItemOptions;->forceBottom(Z)Lorg/telegram/ui/Components/ItemOptions;

    invoke-virtual {p5}, Lorg/telegram/ui/Components/ItemOptions;->show()Lorg/telegram/ui/Components/ItemOptions;

    iget-object p1, p3, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/ImageReceiver;->startAnimation(Z)V

    return v1

    :cond_11
    return p4
.end method

.method protected abstract processColor(I)I
.end method

.method public resetReordering()V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->reordering:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->list:Lorg/telegram/ui/Stars/StarsController$GiftsList;

    invoke-virtual {v0}, Lorg/telegram/ui/Stars/StarsController$GiftsList;->sendPinnedOrder()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->setReordering(Z)V

    return-void
.end method

.method public setVisibleHeight(I)V
    .locals 3

    iput p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->visibleHeight:I

    invoke-virtual {p0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->canSwitchNotify()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->bulletinContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    neg-int v1, v1

    add-int/2addr v1, p1

    iget v2, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->buttonContainerHeightDp:I

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    const/high16 v2, 0x43480000    # 200.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->buttonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    neg-int v1, v1

    add-int/2addr v1, p1

    iget p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->buttonContainerHeightDp:I

    int-to-float p1, p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    int-to-float p1, v1

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->bulletinContainer:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->buttonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    :goto_0
    return-void
.end method

.method public updateColors()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->updateColors()V

    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    iget-object v3, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->processColor(I)I

    move-result v3

    invoke-static {v1, v3}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->emptyViewTitle:Landroid/widget/TextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    iget-object v3, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->emptyViewButton:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->emptyViewButton:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    const v2, 0x3dcccccd    # 0.1f

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v1

    const/4 v2, 0x4

    invoke-static {v1, v2, v2}, Lorg/telegram/ui/ActionBar/Theme;->createRadSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->buttonContainer:Landroid/widget/FrameLayout;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    iget-object v2, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->buttonShadow:Landroid/view/View;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogGrayLine:I

    iget-object v2, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->checkboxTextView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    iget-object v2, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->checkboxLayout:Landroid/widget/LinearLayout;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    iget-object v2, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    const/4 v2, 0x6

    invoke-static {v1, v2, v2}, Lorg/telegram/ui/ActionBar/Theme;->createRadSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected abstract updatedReordering(Z)V
.end method
