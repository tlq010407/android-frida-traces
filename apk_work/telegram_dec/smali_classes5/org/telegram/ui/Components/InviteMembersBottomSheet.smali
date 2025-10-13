.class public Lorg/telegram/ui/Components/InviteMembersBottomSheet;
.super Lorg/telegram/ui/Components/UsersAlertBase;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/InviteMembersBottomSheet$InviteMembersBottomSheetDelegate;,
        Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer;,
        Lorg/telegram/ui/Components/InviteMembersBottomSheet$SearchAdapter;,
        Lorg/telegram/ui/Components/InviteMembersBottomSheet$ListAdapter;,
        Lorg/telegram/ui/Components/InviteMembersBottomSheet$ItemAnimator;
    }
.end annotation


# instance fields
.field private additionalHeight:I

.field private chatId:J

.field private contacts:Ljava/util/ArrayList;

.field private contactsEndRow:I

.field private contactsStartRow:I

.field private copyLinkRow:I

.field private currentAnimation:Landroid/animation/AnimatorSet;

.field private currentDeletingSpan:Lorg/telegram/ui/Components/GroupCreateSpan;

.field private currentDoneButtonAnimation:Landroid/animation/AnimatorSet;

.field private delegate:Lorg/telegram/ui/GroupCreateActivity$ContactsAddActivityDelegate;

.field private dialogsDelegate:Lorg/telegram/ui/Components/InviteMembersBottomSheet$InviteMembersBottomSheetDelegate;

.field private dialogsServerOnly:Ljava/util/ArrayList;

.field private emptyRow:I

.field enterEventSent:Z

.field private final floatingButton:Landroid/widget/ImageView;

.field private ignoreUsers:Landroidx/collection/LongSparseArray;

.field invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

.field private lastRow:I

.field linkGenerating:Z

.field private maxSize:I

.field private noContactsStubRow:I

.field private parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private rowCount:I

.field private scrollViewH:I

.field private searchAdapter:Lorg/telegram/ui/Components/InviteMembersBottomSheet$SearchAdapter;

.field private searchAdditionalHeight:I

.field private selectedContacts:Landroidx/collection/LongSparseArray;

.field private spanClickListener:Landroid/view/View$OnClickListener;

.field private spanEnter:Z

.field private final spansContainer:Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer;

.field private spansEnterAnimator:Landroid/animation/ValueAnimator;

.field private spansEnterProgress:F

.field private final spansScrollView:Landroid/widget/ScrollView;

.field private touchSlop:F

.field y:F


# direct methods
.method public static synthetic $r8$lambda$60h1CqH-YVHgQNlddRT-rxNU3fw(Lorg/telegram/ui/Components/InviteMembersBottomSheet;JLorg/telegram/ui/ActionBar/BaseFragment;Landroidx/collection/LongSparseArray;Landroid/content/Context;Landroid/view/View;I)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p7}, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->lambda$new$0(JLorg/telegram/ui/ActionBar/BaseFragment;Landroidx/collection/LongSparseArray;Landroid/content/Context;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$DWJph8e5tjxFu99nIZJWSYECYz4(Lorg/telegram/ui/Components/InviteMembersBottomSheet;Landroid/content/Context;JLandroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->lambda$new$2(Landroid/content/Context;JLandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HPhb5555Pw3t2cLui7n7p1s9SmQ(Lorg/telegram/ui/Components/InviteMembersBottomSheet;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->lambda$generateLink$7(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZvdpehcT4RY6ChYyGCLMlHQIwqg(Lorg/telegram/ui/Components/InviteMembersBottomSheet;Lorg/telegram/ui/Components/EditTextBoldCursor;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->lambda$onSearchViewTouched$5(Lorg/telegram/ui/Components/EditTextBoldCursor;)V

    return-void
.end method

.method public static synthetic $r8$lambda$csXRrtmYzAZkjWQ7kX3IOd0WBGw(Lorg/telegram/ui/Components/EditTextBoldCursor;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->lambda$onSearchViewTouched$4(Lorg/telegram/ui/Components/EditTextBoldCursor;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dfxa6Fc6u18xPr2bFdpzMzshZis(Lorg/telegram/ui/Components/InviteMembersBottomSheet;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->lambda$spansCountChanged$3(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iu5yAe6V55KpheguHj6UYPpmlBA(Lorg/telegram/ui/Components/InviteMembersBottomSheet;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->lambda$new$1(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$pTcK69kS7pqfGrGxmKbK0qJHYFQ(Lorg/telegram/ui/Components/InviteMembersBottomSheet;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->lambda$generateLink$8(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vjJdXhJsr29dh-9ohA-1a_tguyY(Lorg/telegram/ui/Components/EditTextBoldCursor;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->lambda$onSearchViewTouched$6(Lorg/telegram/ui/Components/EditTextBoldCursor;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroidx/collection/LongSparseArray;JLorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-wide/from16 v9, p4

    const/4 v11, 0x2

    const/4 v12, 0x1

    const/4 v13, 0x0

    move/from16 v0, p2

    move-object/from16 v1, p7

    invoke-direct {v7, v8, v13, v0, v1}, Lorg/telegram/ui/Components/UsersAlertBase;-><init>(Landroid/content/Context;ZILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v7, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->contacts:Ljava/util/ArrayList;

    new-instance v1, Landroidx/collection/LongSparseArray;

    invoke-direct {v1}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v1, v7, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->selectedContacts:Landroidx/collection/LongSparseArray;

    const/4 v14, 0x0

    iput v14, v7, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->spansEnterProgress:F

    new-instance v1, Lorg/telegram/ui/Components/InviteMembersBottomSheet$1;

    invoke-direct {v1, v7}, Lorg/telegram/ui/Components/InviteMembersBottomSheet$1;-><init>(Lorg/telegram/ui/Components/InviteMembersBottomSheet;)V

    iput-object v1, v7, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->spanClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v5, p3

    iput-object v5, v7, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->ignoreUsers:Landroidx/collection/LongSparseArray;

    iput-boolean v13, v7, Lorg/telegram/ui/Components/UsersAlertBase;->needSnapToTop:Z

    move-object/from16 v4, p6

    iput-object v4, v7, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iput-wide v9, v7, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->chatId:J

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar()V

    iget-object v1, v7, Lorg/telegram/ui/Components/UsersAlertBase;->searchView:Lorg/telegram/ui/Components/UsersAlertBase$SearchField;

    iget-object v1, v1, Lorg/telegram/ui/Components/UsersAlertBase$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v2, Lorg/telegram/messenger/R$string;->SearchForChats:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    int-to-float v1, v1

    iput v1, v7, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->touchSlop:F

    new-instance v1, Lorg/telegram/ui/Components/InviteMembersBottomSheet$SearchAdapter;

    invoke-direct {v1, v7}, Lorg/telegram/ui/Components/InviteMembersBottomSheet$SearchAdapter;-><init>(Lorg/telegram/ui/Components/InviteMembersBottomSheet;)V

    iput-object v1, v7, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->searchAdapter:Lorg/telegram/ui/Components/InviteMembersBottomSheet$SearchAdapter;

    iput-object v1, v7, Lorg/telegram/ui/Components/UsersAlertBase;->searchListViewAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    iget-object v1, v7, Lorg/telegram/ui/Components/UsersAlertBase;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/Components/InviteMembersBottomSheet$ListAdapter;

    const/4 v3, 0x0

    invoke-direct {v2, v7, v3}, Lorg/telegram/ui/Components/InviteMembersBottomSheet$ListAdapter;-><init>(Lorg/telegram/ui/Components/InviteMembersBottomSheet;Lorg/telegram/ui/Components/InviteMembersBottomSheet$1;)V

    iput-object v2, v7, Lorg/telegram/ui/Components/UsersAlertBase;->listViewAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v1, v7, Lorg/telegram/ui/Components/UsersAlertBase;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {v1, v13, v13}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(ZZ)V

    iget-object v1, v7, Lorg/telegram/ui/Components/UsersAlertBase;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    const/16 v15, 0x8

    invoke-virtual {v1, v15}, Lorg/telegram/ui/Components/StickerEmptyView;->setVisibility(I)V

    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController;->contacts:Ljava/util/ArrayList;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget v2, v7, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_contact;

    iget-wide v13, v3, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$User;->self:Z

    if-nez v3, :cond_1

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$User;->deleted:Z

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, v7, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/2addr v1, v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    goto :goto_0

    :cond_2
    new-instance v13, Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer;

    invoke-direct {v13, v7, v8}, Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer;-><init>(Lorg/telegram/ui/Components/InviteMembersBottomSheet;Landroid/content/Context;)V

    iput-object v13, v7, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->spansContainer:Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer;

    iget-object v14, v7, Lorg/telegram/ui/Components/UsersAlertBase;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v6, Lorg/telegram/ui/Components/InviteMembersBottomSheet$$ExternalSyntheticLambda2;

    move-object v0, v6

    move-object/from16 v1, p0

    move-wide/from16 v2, p4

    move-object/from16 v4, p6

    move-object/from16 v5, p3

    move-object v12, v6

    move-object/from16 v6, p1

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/InviteMembersBottomSheet$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/InviteMembersBottomSheet;JLorg/telegram/ui/ActionBar/BaseFragment;Landroidx/collection/LongSparseArray;Landroid/content/Context;)V

    invoke-virtual {v14, v12}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    iget-object v0, v7, Lorg/telegram/ui/Components/UsersAlertBase;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/InviteMembersBottomSheet$ItemAnimator;

    invoke-direct {v1, v7}, Lorg/telegram/ui/Components/InviteMembersBottomSheet$ItemAnimator;-><init>(Lorg/telegram/ui/Components/InviteMembersBottomSheet;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->updateRows()V

    new-instance v0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$2;

    invoke-direct {v0, v7, v8}, Lorg/telegram/ui/Components/InviteMembersBottomSheet$2;-><init>(Lorg/telegram/ui/Components/InviteMembersBottomSheet;Landroid/content/Context;)V

    iput-object v0, v7, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->spansScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v15}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {v0, v13}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    iget-object v1, v7, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, v7, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->floatingButton:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/high16 v1, 0x42600000    # 56.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionBackground:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionPressedBackground:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorCircleDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-ge v3, v4, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/R$drawable;->floating_shadow:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    new-instance v6, Landroid/graphics/PorterDuffColorFilter;

    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    const/high16 v13, -0x1000000

    invoke-direct {v6, v13, v12}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    new-instance v6, Lorg/telegram/ui/Components/CombinedDrawable;

    const/4 v12, 0x0

    invoke-direct {v6, v5, v2, v12, v12}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v6, v2, v1}, Lorg/telegram/ui/Components/CombinedDrawable;->setIconSize(II)V

    move-object v2, v6

    :cond_3
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionIcon:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    sget v1, Lorg/telegram/messenger/R$drawable;->floating_check:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/high16 v1, 0x40800000    # 4.0f

    if-lt v3, v4, :cond_4

    new-instance v2, Landroid/animation/StateListAnimator;

    invoke-direct {v2}, Landroid/animation/StateListAnimator;-><init>()V

    const v5, 0x10100a7

    filled-new-array {v5}, [I

    move-result-object v5

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    int-to-float v12, v12

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    int-to-float v13, v13

    new-array v14, v11, [F

    const/4 v15, 0x0

    aput v12, v14, v15

    const/4 v12, 0x1

    aput v13, v14, v12

    const-string v12, "translationZ"

    invoke-static {v0, v12, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    move-object/from16 p2, v12

    const-wide/16 v11, 0xc8

    invoke-virtual {v13, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v13

    invoke-static {v2, v5, v13}, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticApiModelOutline0;->m(Landroid/animation/StateListAnimator;[ILandroid/animation/Animator;)V

    new-array v5, v15, [I

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    int-to-float v13, v13

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    const/4 v14, 0x2

    new-array v14, v14, [F

    aput v13, v14, v15

    const/4 v13, 0x1

    aput v6, v14, v13

    move-object/from16 v6, p2

    invoke-static {v0, v6, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v6, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticApiModelOutline0;->m(Landroid/animation/StateListAnimator;[ILandroid/animation/Animator;)V

    invoke-static {v0, v2}, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticApiModelOutline1;->m(Landroid/widget/ImageView;Landroid/animation/StateListAnimator;)V

    new-instance v2, Lorg/telegram/ui/Components/InviteMembersBottomSheet$3;

    invoke-direct {v2, v7}, Lorg/telegram/ui/Components/InviteMembersBottomSheet$3;-><init>(Lorg/telegram/ui/Components/InviteMembersBottomSheet;)V

    invoke-static {v0, v2}, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticApiModelOutline2;->m(Landroid/widget/ImageView;Landroid/view/ViewOutlineProvider;)V

    :cond_4
    new-instance v2, Lorg/telegram/ui/Components/InviteMembersBottomSheet$$ExternalSyntheticLambda3;

    invoke-direct {v2, v7, v8, v9, v10}, Lorg/telegram/ui/Components/InviteMembersBottomSheet$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/InviteMembersBottomSheet;Landroid/content/Context;J)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    sget v2, Lorg/telegram/messenger/R$string;->Next:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v2, v7, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    const/16 v5, 0x3c

    const/16 v6, 0x38

    if-lt v3, v4, :cond_5

    const/16 v8, 0x38

    goto :goto_2

    :cond_5
    const/16 v8, 0x3c

    :goto_2
    if-lt v3, v4, :cond_6

    const/16 v5, 0x38

    :cond_6
    int-to-float v3, v5

    const/high16 v4, 0x41600000    # 14.0f

    const/high16 v5, 0x41600000    # 14.0f

    const/16 v6, 0x55

    const/high16 v9, 0x41600000    # 14.0f

    const/high16 v10, 0x41600000    # 14.0f

    move/from16 p1, v8

    move/from16 p2, v3

    move/from16 p3, v6

    move/from16 p4, v9

    move/from16 p5, v10

    move/from16 p6, v4

    move/from16 p7, v5

    invoke-static/range {p1 .. p7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v7, Lorg/telegram/ui/Components/UsersAlertBase;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v0, v7, Lorg/telegram/ui/Components/UsersAlertBase;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v0, v7, Lorg/telegram/ui/Components/UsersAlertBase;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/InviteMembersBottomSheet;)Lorg/telegram/ui/Components/GroupCreateSpan;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->currentDeletingSpan:Lorg/telegram/ui/Components/GroupCreateSpan;

    return-object p0
.end method

.method static synthetic access$002(Lorg/telegram/ui/Components/InviteMembersBottomSheet;Lorg/telegram/ui/Components/GroupCreateSpan;)Lorg/telegram/ui/Components/GroupCreateSpan;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->currentDeletingSpan:Lorg/telegram/ui/Components/GroupCreateSpan;

    return-object p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/InviteMembersBottomSheet;)Landroidx/collection/LongSparseArray;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->selectedContacts:Landroidx/collection/LongSparseArray;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/InviteMembersBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->additionalHeight:I

    return p0
.end method

.method static synthetic access$1002(Lorg/telegram/ui/Components/InviteMembersBottomSheet;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->additionalHeight:I

    return p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/InviteMembersBottomSheet;)Lorg/telegram/ui/Components/InviteMembersBottomSheet$InviteMembersBottomSheetDelegate;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->dialogsDelegate:Lorg/telegram/ui/Components/InviteMembersBottomSheet$InviteMembersBottomSheetDelegate;

    return-object p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/InviteMembersBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->contactsStartRow:I

    return p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/InviteMembersBottomSheet;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->dialogsServerOnly:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/InviteMembersBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/InviteMembersBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/InviteMembersBottomSheet;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->contacts:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Components/InviteMembersBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->contactsEndRow:I

    return p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Components/InviteMembersBottomSheet;)Landroidx/collection/LongSparseArray;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->ignoreUsers:Landroidx/collection/LongSparseArray;

    return-object p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Components/InviteMembersBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->copyLinkRow:I

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/InviteMembersBottomSheet;)Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->spansContainer:Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer;

    return-object p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Components/InviteMembersBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->emptyRow:I

    return p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Components/InviteMembersBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->lastRow:I

    return p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Components/InviteMembersBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->noContactsStubRow:I

    return p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/Components/InviteMembersBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->rowCount:I

    return p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/Components/InviteMembersBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->searchAdditionalHeight:I

    return p0
.end method

.method static synthetic access$2402(Lorg/telegram/ui/Components/InviteMembersBottomSheet;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->searchAdditionalHeight:I

    return p1
.end method

.method static synthetic access$2500(Lorg/telegram/ui/Components/InviteMembersBottomSheet;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->spanEnter:Z

    return p0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/Components/InviteMembersBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->scrollViewH:I

    return p0
.end method

.method static synthetic access$2602(Lorg/telegram/ui/Components/InviteMembersBottomSheet;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->scrollViewH:I

    return p1
.end method

.method static synthetic access$2700(Lorg/telegram/ui/Components/InviteMembersBottomSheet;)Landroid/animation/AnimatorSet;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->currentAnimation:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$2702(Lorg/telegram/ui/Components/InviteMembersBottomSheet;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->currentAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$2800(Lorg/telegram/ui/Components/InviteMembersBottomSheet;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/InviteMembersBottomSheet;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->spansCountChanged(Z)V

    return-void
.end method

.method static synthetic access$3100(Lorg/telegram/ui/Components/InviteMembersBottomSheet;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/Components/InviteMembersBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/InviteMembersBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->maxSize:I

    return p0
.end method

.method static synthetic access$502(Lorg/telegram/ui/Components/InviteMembersBottomSheet;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->maxSize:I

    return p1
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/InviteMembersBottomSheet;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->spansEnterProgress:F

    return p0
.end method

.method static synthetic access$602(Lorg/telegram/ui/Components/InviteMembersBottomSheet;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->spansEnterProgress:F

    return p1
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/InviteMembersBottomSheet;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/InviteMembersBottomSheet;)Landroid/widget/ScrollView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->spansScrollView:Landroid/widget/ScrollView;

    return-object p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/InviteMembersBottomSheet;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->floatingButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method private generateLink()V
    .locals 4

    iget-boolean v0, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->linkGenerating:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->linkGenerating:Z

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messages_exportChatInvite;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messages_exportChatInvite;-><init>()V

    iput-boolean v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_exportChatInvite;->legacy_revoke_permanent:Z

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v2, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->chatId:J

    neg-long v2, v2

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_exportChatInvite;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/Components/InviteMembersBottomSheet$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/InviteMembersBottomSheet$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/InviteMembersBottomSheet;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private synthetic lambda$generateLink$7(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 2

    if-nez p1, :cond_2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    iput-object p2, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-wide v0, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->chatId:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    iput-object p2, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->exported_invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->link:Ljava/lang/String;

    if-nez p1, :cond_1

    return-void

    :cond_1
    sget-object p1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string p2, "clipboard"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ClipboardManager;

    iget-object p2, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->link:Ljava/lang/String;

    const-string v0, "label"

    invoke-static {v0, p2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-static {p1}, Lorg/telegram/ui/Components/BulletinFactory;->createCopyLinkBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->dismiss()V

    :cond_2
    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->linkGenerating:Z

    return-void
.end method

.method private synthetic lambda$generateLink$8(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    new-instance v0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/Components/InviteMembersBottomSheet$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Components/InviteMembersBottomSheet;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$0(JLorg/telegram/ui/ActionBar/BaseFragment;Landroidx/collection/LongSparseArray;Landroid/content/Context;Landroid/view/View;I)V
    .locals 3

    iget-object p6, p0, Lorg/telegram/ui/Components/UsersAlertBase;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p6}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p6

    iget-object v0, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->searchAdapter:Lorg/telegram/ui/Components/InviteMembersBottomSheet$SearchAdapter;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p6, v0, :cond_3

    invoke-static {v0}, Lorg/telegram/ui/Components/InviteMembersBottomSheet$SearchAdapter;->access$3300(Lorg/telegram/ui/Components/InviteMembersBottomSheet$SearchAdapter;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget-object p2, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->searchAdapter:Lorg/telegram/ui/Components/InviteMembersBottomSheet$SearchAdapter;

    invoke-static {p2}, Lorg/telegram/ui/Components/InviteMembersBottomSheet$SearchAdapter;->access$3400(Lorg/telegram/ui/Components/InviteMembersBottomSheet$SearchAdapter;)Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getGlobalSearch()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    iget-object p3, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->searchAdapter:Lorg/telegram/ui/Components/InviteMembersBottomSheet$SearchAdapter;

    invoke-static {p3}, Lorg/telegram/ui/Components/InviteMembersBottomSheet$SearchAdapter;->access$3400(Lorg/telegram/ui/Components/InviteMembersBottomSheet$SearchAdapter;)Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getLocalServerSearch()Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    add-int/lit8 p7, p7, -0x1

    if-ltz p7, :cond_0

    if-ge p7, p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->searchAdapter:Lorg/telegram/ui/Components/InviteMembersBottomSheet$SearchAdapter;

    invoke-static {p1}, Lorg/telegram/ui/Components/InviteMembersBottomSheet$SearchAdapter;->access$3300(Lorg/telegram/ui/Components/InviteMembersBottomSheet$SearchAdapter;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    move-object v2, p1

    check-cast v2, Lorg/telegram/tgnet/TLObject;

    goto :goto_2

    :cond_0
    if-lt p7, p1, :cond_1

    add-int p6, p3, p1

    if-ge p7, p6, :cond_1

    iget-object p2, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->searchAdapter:Lorg/telegram/ui/Components/InviteMembersBottomSheet$SearchAdapter;

    invoke-static {p2}, Lorg/telegram/ui/Components/InviteMembersBottomSheet$SearchAdapter;->access$3400(Lorg/telegram/ui/Components/InviteMembersBottomSheet$SearchAdapter;)Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getLocalServerSearch()Ljava/util/ArrayList;

    move-result-object p2

    sub-int/2addr p7, p1

    :goto_1
    invoke-virtual {p2, p7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_1
    add-int p6, p1, p3

    if-le p7, p6, :cond_2

    add-int/2addr p2, p1

    add-int/2addr p2, p3

    if-gt p7, p2, :cond_2

    iget-object p2, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->searchAdapter:Lorg/telegram/ui/Components/InviteMembersBottomSheet$SearchAdapter;

    invoke-static {p2}, Lorg/telegram/ui/Components/InviteMembersBottomSheet$SearchAdapter;->access$3400(Lorg/telegram/ui/Components/InviteMembersBottomSheet$SearchAdapter;)Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getGlobalSearch()Ljava/util/ArrayList;

    move-result-object p2

    sub-int/2addr p7, p1

    sub-int/2addr p7, p3

    sub-int/2addr p7, v1

    goto :goto_1

    :cond_2
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->dialogsDelegate:Lorg/telegram/ui/Components/InviteMembersBottomSheet$InviteMembersBottomSheetDelegate;

    if-eqz p1, :cond_8

    iget-object p1, p0, Lorg/telegram/ui/Components/UsersAlertBase;->searchView:Lorg/telegram/ui/Components/UsersAlertBase$SearchField;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/UsersAlertBase$SearchField;->closeSearch()V

    goto/16 :goto_4

    :cond_3
    iget p6, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->copyLinkRow:I

    if-ne p7, p6, :cond_7

    iget p6, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p6

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p7

    invoke-virtual {p6, p7}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p6

    iget p7, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p7}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p7

    invoke-virtual {p7, p1, p2}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object p1

    if-eqz p6, :cond_4

    invoke-static {p6}, Lorg/telegram/messenger/ChatObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$Chat;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p6

    if-nez p6, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "https://"

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p6, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p6

    iget-object p6, p6, Lorg/telegram/messenger/MessagesController;->linkPrefix:Ljava/lang/String;

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p6, "/"

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_4
    if-eqz p1, :cond_5

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->exported_invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    if-eqz p1, :cond_5

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->link:Ljava/lang/String;

    goto :goto_3

    :cond_5
    invoke-direct {p0}, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->generateLink()V

    move-object p1, v2

    :goto_3
    if-nez p1, :cond_6

    return-void

    :cond_6
    sget-object p2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string p6, "clipboard"

    invoke-virtual {p2, p6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/ClipboardManager;

    const-string p6, "label"

    invoke-static {p6, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->dismiss()V

    invoke-static {p3}, Lorg/telegram/ui/Components/BulletinFactory;->createCopyLinkBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    goto :goto_4

    :cond_7
    iget p1, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->contactsStartRow:I

    if-lt p7, p1, :cond_8

    iget p1, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->contactsEndRow:I

    if-ge p7, p1, :cond_8

    iget-object p1, p0, Lorg/telegram/ui/Components/UsersAlertBase;->listViewAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    check-cast p1, Lorg/telegram/ui/Components/InviteMembersBottomSheet$ListAdapter;

    invoke-virtual {p1, p7}, Lorg/telegram/ui/Components/InviteMembersBottomSheet$ListAdapter;->getObject(I)Lorg/telegram/tgnet/TLObject;

    move-result-object v2

    :cond_8
    :goto_4
    if-eqz v2, :cond_e

    instance-of p1, v2, Lorg/telegram/tgnet/TLRPC$User;

    const-wide/16 p2, 0x0

    if-eqz p1, :cond_9

    move-object p1, v2

    check-cast p1, Lorg/telegram/tgnet/TLRPC$User;

    iget-wide p6, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    goto :goto_5

    :cond_9
    instance-of p1, v2, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz p1, :cond_a

    move-object p1, v2

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide p6, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long p6, p6

    goto :goto_5

    :cond_a
    move-wide p6, p2

    :goto_5
    if-eqz p4, :cond_b

    invoke-virtual {p4, p6, p7}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result p1

    if-ltz p1, :cond_b

    return-void

    :cond_b
    cmp-long p1, p6, p2

    if-eqz p1, :cond_d

    iget-object p1, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->selectedContacts:Landroidx/collection/LongSparseArray;

    invoke-virtual {p1, p6, p7}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result p1

    if-ltz p1, :cond_c

    iget-object p1, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->selectedContacts:Landroidx/collection/LongSparseArray;

    invoke-virtual {p1, p6, p7}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/GroupCreateSpan;

    iget-object p2, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->selectedContacts:Landroidx/collection/LongSparseArray;

    invoke-virtual {p2, p6, p7}, Landroidx/collection/LongSparseArray;->remove(J)V

    iget-object p2, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->spansContainer:Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer;->removeSpan(Lorg/telegram/ui/Components/GroupCreateSpan;)V

    goto :goto_6

    :cond_c
    new-instance p1, Lorg/telegram/ui/Components/GroupCreateSpan;

    invoke-direct {p1, p5, v2}, Lorg/telegram/ui/Components/GroupCreateSpan;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    iget-object p2, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->spanClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->selectedContacts:Landroidx/collection/LongSparseArray;

    invoke-virtual {p2, p6, p7, p1}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    iget-object p2, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->spansContainer:Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer;

    invoke-virtual {p2, p1, v1}, Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer;->addSpan(Lorg/telegram/ui/Components/GroupCreateSpan;Z)V

    :cond_d
    :goto_6
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->spansCountChanged(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Components/UsersAlertBase;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->updateVisibleRows(Lorg/telegram/ui/Components/RecyclerListView;)V

    :cond_e
    return-void
.end method

.method private synthetic lambda$new$1(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->onAddToGroupDone(I)V

    return-void
.end method

.method private synthetic lambda$new$2(Landroid/content/Context;JLandroid/view/View;)V
    .locals 6

    const/4 p4, 0x0

    const/4 v0, 0x1

    iget-object v1, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->dialogsDelegate:Lorg/telegram/ui/Components/InviteMembersBottomSheet$InviteMembersBottomSheetDelegate;

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->selectedContacts:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1}, Landroidx/collection/LongSparseArray;->size()I

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->dialogsDelegate:Lorg/telegram/ui/Components/InviteMembersBottomSheet$InviteMembersBottomSheetDelegate;

    if-eqz v1, :cond_3

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->selectedContacts:Landroidx/collection/LongSparseArray;

    invoke-virtual {p2}, Landroidx/collection/LongSparseArray;->size()I

    move-result p2

    if-ge p4, p2, :cond_2

    iget-object p2, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->selectedContacts:Landroidx/collection/LongSparseArray;

    invoke-virtual {p2, p4}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr p4, v0

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->dialogsDelegate:Lorg/telegram/ui/Components/InviteMembersBottomSheet$InviteMembersBottomSheetDelegate;

    invoke-interface {p2, p1}, Lorg/telegram/ui/Components/InviteMembersBottomSheet$InviteMembersBottomSheetDelegate;->didSelectDialogs(Ljava/util/ArrayList;)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->dismiss()V

    goto/16 :goto_5

    :cond_3
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-direct {v1, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->selectedContacts:Landroidx/collection/LongSparseArray;

    invoke-virtual {p1}, Landroidx/collection/LongSparseArray;->size()I

    move-result p1

    new-array v2, p4, [Ljava/lang/Object;

    const-string v3, "AddManyMembersAlertTitle"

    invoke-static {v3, p1, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->selectedContacts:Landroidx/collection/LongSparseArray;

    invoke-virtual {v3}, Landroidx/collection/LongSparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    iget-object v3, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->selectedContacts:Landroidx/collection/LongSparseArray;

    invoke-virtual {v3, v2}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v3

    iget v5, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v5, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_5

    const-string v4, ", "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const-string v4, "**"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v5, v3}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    add-int/2addr v2, v0

    goto :goto_1

    :cond_6
    iget v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v2, p2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p2

    iget-object p3, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->selectedContacts:Landroidx/collection/LongSparseArray;

    invoke-virtual {p3}, Landroidx/collection/LongSparseArray;->size()I

    move-result p3

    const/4 v2, 0x5

    if-le p3, v2, :cond_8

    new-instance p1, Landroid/text/SpannableStringBuilder;

    iget-object p3, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->selectedContacts:Landroidx/collection/LongSparseArray;

    invoke-virtual {p3}, Landroidx/collection/LongSparseArray;->size()I

    move-result p3

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    new-array v2, v0, [Ljava/lang/Object;

    aput-object p2, v2, p4

    const-string p2, "AddManyMembersAlertNamesText"

    invoke-static {p2, p3, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->selectedContacts:Landroidx/collection/LongSparseArray;

    invoke-virtual {p2}, Landroidx/collection/LongSparseArray;->size()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-array p3, v0, [Ljava/lang/Object;

    aput-object p2, p3, p4

    const-string p2, "%d"

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result p3

    if-ltz p3, :cond_7

    new-instance p4, Lorg/telegram/ui/Components/TypefaceSpan;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-direct {p4, v0}, Lorg/telegram/ui/Components/TypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p2, p3

    const/16 v0, 0x21

    invoke-virtual {p1, p4, p3, p2, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_7
    :goto_3
    invoke-virtual {v1, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_4

    :cond_8
    sget p3, Lorg/telegram/messenger/R$string;->AddMembersAlertNamesText:I

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, p4

    aput-object p2, v2, v0

    const-string p1, "AddMembersAlertNamesText"

    invoke-static {p1, p3, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    goto :goto_3

    :goto_4
    sget p1, Lorg/telegram/messenger/R$string;->Add:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/Components/InviteMembersBottomSheet$$ExternalSyntheticLambda5;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/InviteMembersBottomSheet$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/InviteMembersBottomSheet;)V

    invoke-virtual {v1, p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget p1, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {v1, p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    :goto_5
    return-void
.end method

.method private static synthetic lambda$onSearchViewTouched$4(Lorg/telegram/ui/Components/EditTextBoldCursor;)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    return-void
.end method

.method private synthetic lambda$onSearchViewTouched$5(Lorg/telegram/ui/Components/EditTextBoldCursor;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->setFocusable(Z)V

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    new-instance v0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$$ExternalSyntheticLambda6;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/InviteMembersBottomSheet$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/EditTextBoldCursor;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$onSearchViewTouched$6(Lorg/telegram/ui/Components/EditTextBoldCursor;)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    return-void
.end method

.method private synthetic lambda$spansCountChanged$3(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->spansEnterProgress:F

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private onAddToGroupDone(I)V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->selectedContacts:Landroidx/collection/LongSparseArray;

    invoke-virtual {v2}, Landroidx/collection/LongSparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->selectedContacts:Landroidx/collection/LongSparseArray;

    invoke-virtual {v3, v1}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->delegate:Lorg/telegram/ui/GroupCreateActivity$ContactsAddActivityDelegate;

    if-eqz v1, :cond_1

    invoke-interface {v1, v0, p1}, Lorg/telegram/ui/GroupCreateActivity$ContactsAddActivityDelegate;->didSelectUsers(Ljava/util/ArrayList;I)V

    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->dismiss()V

    return-void
.end method

.method private spansCountChanged(Z)V
    .locals 12

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->selectedContacts:Landroidx/collection/LongSparseArray;

    invoke-virtual {v3}, Landroidx/collection/LongSparseArray;->size()I

    move-result v3

    const/4 v4, 0x0

    if-lez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget-boolean v5, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->spanEnter:Z

    if-eq v5, v3, :cond_c

    iget-object v5, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->spansEnterAnimator:Landroid/animation/ValueAnimator;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/animation/Animator;->removeAllListeners()V

    iget-object v5, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->spansEnterAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    iput-boolean v3, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->spanEnter:Z

    if-eqz v3, :cond_2

    iget-object v5, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->spansScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz p1, :cond_7

    iget p1, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->spansEnterProgress:F

    if-eqz v3, :cond_3

    const/high16 v7, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    :goto_1
    new-array v8, v1, [F

    aput p1, v8, v4

    aput v7, v8, v2

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->spansEnterAnimator:Landroid/animation/ValueAnimator;

    new-instance v7, Lorg/telegram/ui/Components/InviteMembersBottomSheet$$ExternalSyntheticLambda4;

    invoke-direct {v7, p0}, Lorg/telegram/ui/Components/InviteMembersBottomSheet$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/InviteMembersBottomSheet;)V

    invoke-virtual {p1, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->spansEnterAnimator:Landroid/animation/ValueAnimator;

    new-instance v7, Lorg/telegram/ui/Components/InviteMembersBottomSheet$4;

    invoke-direct {v7, p0, v3}, Lorg/telegram/ui/Components/InviteMembersBottomSheet$4;-><init>(Lorg/telegram/ui/Components/InviteMembersBottomSheet;Z)V

    invoke-virtual {p1, v7}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->spansEnterAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v7, 0x96

    invoke-virtual {p1, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->spansEnterAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    iget-boolean p1, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->spanEnter:Z

    const-wide/16 v7, 0xb4

    if-nez p1, :cond_5

    iget-object p1, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->dialogsDelegate:Lorg/telegram/ui/Components/InviteMembersBottomSheet$InviteMembersBottomSheetDelegate;

    if-nez p1, :cond_5

    iget-object p1, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->currentDoneButtonAnimation:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_4
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->currentDoneButtonAnimation:Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->floatingButton:Landroid/widget/ImageView;

    sget-object v6, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v9, v2, [F

    aput v5, v9, v4

    invoke-static {v3, v6, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v6, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->floatingButton:Landroid/widget/ImageView;

    sget-object v9, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v10, v2, [F

    aput v5, v10, v4

    invoke-static {v6, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    iget-object v9, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->floatingButton:Landroid/widget/ImageView;

    sget-object v10, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v11, v2, [F

    aput v5, v11, v4

    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    new-array v0, v0, [Landroid/animation/Animator;

    aput-object v3, v0, v4

    aput-object v6, v0, v2

    aput-object v5, v0, v1

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->currentDoneButtonAnimation:Landroid/animation/AnimatorSet;

    new-instance v0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$5;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/InviteMembersBottomSheet$5;-><init>(Lorg/telegram/ui/Components/InviteMembersBottomSheet;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->currentDoneButtonAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p1, v7, v8}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object p1, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->currentDoneButtonAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_4

    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->currentDoneButtonAnimation:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_6
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->currentDoneButtonAnimation:Landroid/animation/AnimatorSet;

    iget-object p1, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->floatingButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->currentDoneButtonAnimation:Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->floatingButton:Landroid/widget/ImageView;

    sget-object v5, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v9, v2, [F

    aput v6, v9, v4

    invoke-static {v3, v5, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v5, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->floatingButton:Landroid/widget/ImageView;

    sget-object v9, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v10, v2, [F

    aput v6, v10, v4

    invoke-static {v5, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    iget-object v9, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->floatingButton:Landroid/widget/ImageView;

    sget-object v10, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v11, v2, [F

    aput v6, v11, v4

    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    new-array v0, v0, [Landroid/animation/Animator;

    aput-object v3, v0, v4

    aput-object v5, v0, v2

    aput-object v6, v0, v1

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_2

    :cond_7
    if-eqz v3, :cond_8

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_8
    const/4 p1, 0x0

    :goto_3
    iput p1, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->spansEnterProgress:F

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    if-nez v3, :cond_9

    iget-object p1, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->spansScrollView:Landroid/widget/ScrollView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    iget-object p1, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->currentDoneButtonAnimation:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_a
    iget-boolean p1, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->spanEnter:Z

    if-nez p1, :cond_b

    iget-object p1, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->dialogsDelegate:Lorg/telegram/ui/Components/InviteMembersBottomSheet$InviteMembersBottomSheetDelegate;

    if-nez p1, :cond_b

    iget-object p1, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->floatingButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/view/View;->setScaleY(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->floatingButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/view/View;->setScaleX(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->floatingButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->floatingButton:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    :cond_b
    iget-object p1, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->floatingButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v6}, Landroid/view/View;->setScaleY(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->floatingButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v6}, Landroid/view/View;->setScaleX(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->floatingButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v6}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->floatingButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_c
    :goto_4
    return-void
.end method

.method private updateRows()V
    .locals 2

    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->contactsStartRow:I

    iput v0, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->contactsEndRow:I

    iput v0, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->copyLinkRow:I

    iput v0, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->noContactsStubRow:I

    const/4 v0, 0x1

    iput v0, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->rowCount:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->emptyRow:I

    iget-object v0, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->dialogsDelegate:Lorg/telegram/ui/Components/InviteMembersBottomSheet$InviteMembersBottomSheetDelegate;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->hasLink()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->copyLinkRow:I

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->contactsStartRow:I

    iget-object v1, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->contacts:Ljava/util/ArrayList;

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->contactsEndRow:I

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->dialogsServerOnly:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->contactsStartRow:I

    iget-object v1, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->dialogsServerOnly:Ljava/util/ArrayList;

    goto :goto_0

    :cond_2
    iget v0, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->noContactsStubRow:I

    :goto_1
    iget v0, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->lastRow:I

    return-void
.end method


# virtual methods
.method protected canGenerateLink()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected createContainerView(Landroid/content/Context;)Lorg/telegram/ui/Components/UsersAlertBase$ContainerView;
    .locals 1

    new-instance v0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$6;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/InviteMembersBottomSheet$6;-><init>(Lorg/telegram/ui/Components/InviteMembersBottomSheet;Landroid/content/Context;)V

    return-object v0
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    sget p2, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->dialogsDelegate:Lorg/telegram/ui/Components/InviteMembersBottomSheet$InviteMembersBottomSheetDelegate;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->dialogsServerOnly:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    iget p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/messenger/MessagesController;->dialogsServerOnly:Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->dialogsServerOnly:Ljava/util/ArrayList;

    iget-object p1, p0, Lorg/telegram/ui/Components/UsersAlertBase;->listViewAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 2

    invoke-super {p0}, Lorg/telegram/ui/Components/UsersAlertBase;->dismiss()V

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public dismissInternal()V
    .locals 3

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismissInternal()V

    iget-boolean v0, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->enterEventSent:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    instance-of v1, v0, Lorg/telegram/ui/LaunchActivity;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/LaunchActivity;->getActionBarLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v1

    invoke-interface {v1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lorg/telegram/ui/LaunchActivity;->getActionBarLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v1, v0, Lorg/telegram/ui/ChatActivity;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0, v2, v2}, Lorg/telegram/ui/ChatActivity;->onEditTextDialogClose(ZZ)V

    :cond_0
    return-void
.end method

.method protected hasLink()Z
    .locals 4

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->chatId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->chatId:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$Chat;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-eqz v1, :cond_2

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->exported_invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->canGenerateLink()Z

    move-result v0

    return v0
.end method

.method protected onSearchViewTouched(Landroid/view/MotionEvent;Lorg/telegram/ui/Components/EditTextBoldCursor;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget p1, p0, Lorg/telegram/ui/Components/UsersAlertBase;->scrollOffsetY:I

    int-to-float p1, p1

    iput p1, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->y:F

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    iget p1, p0, Lorg/telegram/ui/Components/UsersAlertBase;->scrollOffsetY:I

    int-to-float p1, p1

    iget v1, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->y:F

    sub-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v1, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->touchSlop:F

    cmpg-float p1, p1, v1

    if-gez p1, :cond_4

    iget-boolean p1, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->enterEventSent:Z

    if-nez p1, :cond_4

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p1

    instance-of v1, p1, Lorg/telegram/ui/LaunchActivity;

    if-eqz v1, :cond_1

    check-cast p1, Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/LaunchActivity;->getActionBarLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v1

    invoke-interface {v1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lorg/telegram/ui/LaunchActivity;->getActionBarLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p1

    invoke-interface {p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v0

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/ActionBar/BaseFragment;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    instance-of v1, p1, Lorg/telegram/ui/ChatActivity;

    if-eqz v1, :cond_3

    check-cast p1, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->needEnterText()Z

    move-result p1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->enterEventSent:Z

    new-instance v0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lorg/telegram/ui/Components/InviteMembersBottomSheet$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/InviteMembersBottomSheet;Lorg/telegram/ui/Components/EditTextBoldCursor;)V

    if-eqz p1, :cond_2

    const-wide/16 p1, 0xc8

    goto :goto_1

    :cond_2
    const-wide/16 p1, 0x0

    :goto_1
    invoke-static {v0, p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_2

    :cond_3
    iput-boolean v0, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->enterEventSent:Z

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->setFocusable(Z)V

    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    new-instance p1, Lorg/telegram/ui/Components/InviteMembersBottomSheet$$ExternalSyntheticLambda1;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/InviteMembersBottomSheet$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/EditTextBoldCursor;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_4
    :goto_2
    return-void
.end method

.method protected search(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->searchAdapter:Lorg/telegram/ui/Components/InviteMembersBottomSheet$SearchAdapter;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/InviteMembersBottomSheet$SearchAdapter;->searchDialogs(Ljava/lang/String;)V

    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Components/InviteMembersBottomSheet$InviteMembersBottomSheetDelegate;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->dialogsDelegate:Lorg/telegram/ui/Components/InviteMembersBottomSheet$InviteMembersBottomSheetDelegate;

    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    invoke-virtual {p1, p0, p2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    new-instance p1, Ljava/util/ArrayList;

    iget p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/messenger/MessagesController;->dialogsServerOnly:Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->dialogsServerOnly:Ljava/util/ArrayList;

    invoke-direct {p0}, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->updateRows()V

    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/GroupCreateActivity$ContactsAddActivityDelegate;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->delegate:Lorg/telegram/ui/GroupCreateActivity$ContactsAddActivityDelegate;

    return-void
.end method

.method public setSelectedContacts(Ljava/util/ArrayList;)V
    .locals 11

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/telegram/messenger/DialogObject;->isChatDialog(J)Z

    move-result v6

    if-eqz v6, :cond_0

    iget v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    neg-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    goto :goto_1

    :cond_0
    iget v4, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    :goto_1
    new-instance v4, Lorg/telegram/ui/Components/GroupCreateSpan;

    iget-object v5, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->spansContainer:Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lorg/telegram/ui/Components/GroupCreateSpan;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    iget-object v3, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->spansContainer:Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer;

    invoke-virtual {v3, v4, v1}, Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer;->addSpan(Lorg/telegram/ui/Components/GroupCreateSpan;Z)V

    iget-object v3, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->spanClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->spansCountChanged(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->spansContainer:Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-ge v2, v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    const/high16 v3, 0x42600000    # 56.0f

    if-nez v2, :cond_4

    if-eqz v0, :cond_3

    goto :goto_4

    :cond_3
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    :goto_3
    iput v2, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->maxSize:I

    goto :goto_5

    :cond_4
    :goto_4
    const/high16 v2, 0x43100000    # 144.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    goto :goto_3

    :goto_5
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    const v4, 0x3f4ccccd    # 0.8f

    if-eqz v2, :cond_5

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, v4

    :goto_6
    float-to-int v0, v0

    goto :goto_7

    :cond_5
    if-eqz v0, :cond_6

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    goto :goto_7

    :cond_6
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    mul-float v0, v0, v4

    const/high16 v2, 0x43f00000    # 480.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_6

    :goto_7
    const/high16 v2, 0x41d00000    # 26.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int v2, v0, v2

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_8
    if-ge v5, p1, :cond_9

    iget-object v7, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->spansContainer:Lorg/telegram/ui/Components/InviteMembersBottomSheet$SpansContainer;

    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    instance-of v8, v7, Lorg/telegram/ui/Components/GroupCreateSpan;

    if-nez v8, :cond_7

    goto :goto_9

    :cond_7
    const/high16 v8, -0x80000000

    invoke-static {v0, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    const/high16 v9, 0x42000000    # 32.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/view/View;->measure(II)V

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v6

    if-le v8, v2, :cond_8

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    const/high16 v8, 0x41000000    # 8.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    add-int/2addr v6, v8

    add-int/2addr v4, v6

    const/4 v6, 0x0

    :cond_8
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    const/high16 v8, 0x41100000    # 9.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    add-int/2addr v7, v8

    add-int/2addr v6, v7

    :goto_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_9
    const/high16 p1, 0x42280000    # 42.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    add-int/2addr v4, p1

    iget-object p1, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->dialogsDelegate:Lorg/telegram/ui/Components/InviteMembersBottomSheet$InviteMembersBottomSheetDelegate;

    if-eqz p1, :cond_b

    iget-boolean p1, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->spanEnter:Z

    if-eqz p1, :cond_a

    iget p1, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->maxSize:I

    invoke-static {p1, v4}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_a

    :cond_a
    const/4 p1, 0x0

    goto :goto_a

    :cond_b
    iget p1, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->maxSize:I

    invoke-static {p1, v4}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/high16 v0, 0x42500000    # 52.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int/2addr p1, v0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    :goto_a
    iget v0, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->searchAdditionalHeight:I

    iget-object v2, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->selectedContacts:Landroidx/collection/LongSparseArray;

    invoke-virtual {v2}, Landroidx/collection/LongSparseArray;->size()I

    move-result v2

    if-lez v2, :cond_c

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    :cond_c
    iput v1, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->searchAdditionalHeight:I

    iget v2, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->additionalHeight:I

    if-ne p1, v2, :cond_d

    if-eq v0, v1, :cond_e

    :cond_d
    iput p1, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->additionalHeight:I

    :cond_e
    return-void
.end method
