.class public Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;
.super Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$DocumentSelectActivityDelegate;,
        Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;,
        Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;,
        Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;,
        Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$HistoryEntry;
    }
.end annotation


# instance fields
.field private additionalTranslationY:F

.field private allowMusic:Z

.field private backgroundLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private backgroundListAdapter:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;

.field private backgroundListView:Lorg/telegram/ui/Components/RecyclerListView;

.field private canSelectOnlyImageFiles:Z

.field private currentAnimationType:I

.field private currentDir:Ljava/io/File;

.field private delegate:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$DocumentSelectActivityDelegate;

.field private emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

.field private filtersView:Lorg/telegram/ui/Adapters/FiltersView;

.field private filtersViewAnimator:Landroid/animation/AnimatorSet;

.field private hasFiles:Z

.field private ignoreLayout:Z

.field public isSoundPicker:Z

.field private layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;

.field listAnimation:Landroid/animation/ValueAnimator;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private loadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

.field private maxSelectedFiles:I

.field private receiver:Landroid/content/BroadcastReceiver;

.field private receiverRegistered:Z

.field private scrolling:Z

.field private searchAdapter:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;

.field private searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private searching:Z

.field private selectedFiles:Ljava/util/HashMap;

.field public selectedFilesOrder:Ljava/util/ArrayList;

.field private selectedMessages:Ljava/util/HashMap;

.field private sendPressed:Z

.field private sortByName:Z

.field private sortItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;


# direct methods
.method public static synthetic $r8$lambda$89TLNu9HHXMzEaDt8bFSZt-A_Zw(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;Landroid/view/View;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->lambda$new$1(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$DF2sUiPliJSWPwf2eemJDoU4Xvg(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;)I
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->lambda$sortFileItems$8(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Fo4Kacz55YTZm6elg6YaTjUeKRo(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;)I
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->lambda$sortRecentItems$7(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$JsIjcTPif45BLVVOp1dAphW0WOM(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;IFLandroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->lambda$runAnimation$4(IFLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KXLpEMVo8keYFBnoY_FAE_0MRt4(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;ZIJZLjava/lang/Long;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p9}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->lambda$sendSelectedItems$5(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;ZIJZLjava/lang/Long;)V

    return-void
.end method

.method public static synthetic $r8$lambda$T6Wrpf5JKVaTaR4vnze8HCPp4NA(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;Ljava/util/ArrayList;ZILjava/lang/Long;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->lambda$sendSelectedPhotos$6(Ljava/util/ArrayList;ZILjava/lang/Long;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ty8xMzF9TiVzkZ5oa27eFdjqgEE(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;Landroid/view/View;I)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->lambda$new$2(Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$bJTrGtwpS0xdIrP5Jvx4bcV6Jkc(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;Landroid/view/View;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->lambda$new$3(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$qP60ZdA4oSS_tOn_64X7emq6heE(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->lambda$new$0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 19

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move/from16 v0, p3

    move-object/from16 v1, p1

    move-object/from16 v9, p4

    invoke-direct {v7, v1, v8, v9}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v10, 0x0

    iput-boolean v10, v7, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->receiverRegistered:Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v7, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->selectedFiles:Ljava/util/HashMap;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v7, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->selectedFilesOrder:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v7, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->selectedMessages:Ljava/util/HashMap;

    const/4 v11, -0x1

    iput v11, v7, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->maxSelectedFiles:I

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$1;

    invoke-direct {v1, v7}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$1;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)V

    iput-object v1, v7, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;

    invoke-direct {v1, v7, v8}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;Landroid/content/Context;)V

    iput-object v1, v7, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, v7, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->allowMusic:Z

    const/4 v6, 0x2

    if-ne v0, v6, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->isSoundPicker:Z

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->sortFilesByName:Z

    iput-boolean v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->sortByName:Z

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->loadRecentFiles()V

    iput-boolean v10, v7, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->searching:Z

    iget-boolean v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->receiverRegistered:Z

    const/4 v12, 0x4

    if-nez v0, :cond_3

    iput-boolean v1, v7, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->receiverRegistered:Z

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.MEDIA_NOFS"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.MEDIA_UNMOUNTABLE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "file"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x21

    if-lt v2, v3, :cond_2

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    iget-object v3, v7, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->receiver:Landroid/content/BroadcastReceiver;

    invoke-static {v2, v3, v0, v12}, Lcom/android/billingclient/api/zzg$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_2

    :cond_2
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    iget-object v3, v7, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_3
    :goto_2
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/R$drawable;->ic_ab_search:I

    invoke-virtual {v0, v10, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIsSearchField(Z)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$2;

    invoke-direct {v2, v7}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$2;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setActionBarMenuItemSearchListener(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    iput-object v1, v7, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v2, Lorg/telegram/messenger/R$string;->Search:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSearchFieldHint(Ljava/lang/CharSequence;)V

    iget-object v1, v7, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, v7, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-virtual {v7, v2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    invoke-virtual {v7, v2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelHint:I

    invoke-virtual {v7, v2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHintTextColor(I)V

    iget-boolean v1, v7, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->sortByName:Z

    if-eqz v1, :cond_4

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_contacts_time:I

    goto :goto_3

    :cond_4
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_contacts_name:I

    :goto_3
    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    iput-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->sortItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v1, Lorg/telegram/messenger/R$string;->AccDescrContactSorting:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v0, Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-direct {v0, v8, v9}, Lorg/telegram/ui/Components/FlickerLoadingView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->loadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v13, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$3;

    iget-object v3, v7, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->loadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    const/4 v4, 0x1

    move-object v0, v13

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$3;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;Landroid/content/Context;Landroid/view/View;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v13, v7, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    const/high16 v14, -0x40800000    # -1.0f

    invoke-static {v11, v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, v13, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    const/16 v13, 0x8

    invoke-virtual {v0, v13}, Lorg/telegram/ui/Components/StickerEmptyView;->setVisibility(I)V

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$4;

    invoke-direct {v0, v7, v8, v9}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$4;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->backgroundListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v6}, Lorg/telegram/ui/Components/RecyclerListView;->setSectionsType(I)V

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->backgroundListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v10}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    iget-object v15, v7, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->backgroundListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v5, Lorg/telegram/ui/Components/FillLastLinearLayoutManager;

    const/high16 v16, 0x42600000    # 56.0f

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    iget-object v3, v7, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->backgroundListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x1

    const/16 v17, 0x0

    move-object v0, v5

    move-object/from16 v1, p2

    move-object/from16 v18, v3

    move/from16 v3, v17

    move-object v12, v5

    move-object/from16 v5, v18

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/FillLastLinearLayoutManager;-><init>(Landroid/content/Context;IZILandroidx/recyclerview/widget/RecyclerView;)V

    iput-object v12, v7, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->backgroundLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v15, v12}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->backgroundListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v10}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->backgroundListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;

    invoke-direct {v1, v7, v8}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;Landroid/content/Context;)V

    iput-object v1, v7, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->backgroundListAdapter:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->backgroundListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/high16 v12, 0x42400000    # 48.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v10, v10, v10, v1}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->backgroundListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v11, v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->backgroundListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v13}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$5;

    invoke-direct {v0, v7, v8, v9}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$5;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v6}, Lorg/telegram/ui/Components/RecyclerListView;->setSectionsType(I)V

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v10}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    iget-object v13, v7, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v15, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$6;

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    iget-object v6, v7, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$6;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;Landroid/content/Context;IZILandroidx/recyclerview/widget/RecyclerView;)V

    iput-object v15, v7, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v13, v15}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v10}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, v7, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v10, v10, v10, v1}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v11, v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;

    invoke-direct {v0, v7, v8}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;Landroid/content/Context;)V

    iput-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->searchAdapter:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$7;

    invoke-direct {v1, v7}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$7;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$$ExternalSyntheticLambda2;

    invoke-direct {v1, v7}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$$ExternalSyntheticLambda3;

    invoke-direct {v1, v7}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V

    new-instance v0, Lorg/telegram/ui/Adapters/FiltersView;

    invoke-direct {v0, v8, v9}, Lorg/telegram/ui/Adapters/FiltersView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->filtersView:Lorg/telegram/ui/Adapters/FiltersView;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$$ExternalSyntheticLambda4;

    invoke-direct {v1, v7}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->filtersView:Lorg/telegram/ui/Adapters/FiltersView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-virtual {v7, v1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->filtersView:Lorg/telegram/ui/Adapters/FiltersView;

    const/4 v1, -0x2

    const/16 v2, 0x30

    invoke-static {v11, v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->filtersView:Lorg/telegram/ui/Adapters/FiltersView;

    const/high16 v1, 0x42300000    # 44.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslationY(F)V

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->filtersView:Lorg/telegram/ui/Adapters/FiltersView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listRoots()V

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->updateSearchButton()V

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->updateEmptyView()V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->currentDir:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->additionalTranslationY:F

    return p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->currentAnimationType:I

    return p0
.end method

.method static synthetic access$1202(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->currentAnimationType:I

    return p1
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->updateEmptyViewPosition()V

    return-void
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->scrolling:Z

    return p0
.end method

.method static synthetic access$1502(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->scrolling:Z

    return p1
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->backgroundListView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listRoots()V

    return-void
.end method

.method static synthetic access$2300(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->sortByName:Z

    return p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->selectedFiles:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->updateEmptyView()V

    return-void
.end method

.method static synthetic access$2700(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->canSelectOnlyImageFiles:Z

    return p0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/Adapters/FiltersView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->filtersView:Lorg/telegram/ui/Adapters/FiltersView;

    return-object p0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Landroid/animation/AnimatorSet;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->filtersViewAnimator:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$2902(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->filtersViewAnimator:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;Ljava/io/File;)Z
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listFiles(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/Components/FlickerLoadingView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->loadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    return-object p0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/Components/StickerEmptyView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    return-object p0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->selectedMessages:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;Ljava/util/HashMap;Ljava/util/ArrayList;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->sendSelectedPhotos(Ljava/util/HashMap;Ljava/util/ArrayList;ZI)V

    return-void
.end method

.method static synthetic access$3700(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$DocumentSelectActivityDelegate;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->delegate:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$DocumentSelectActivityDelegate;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->updateSearchButton()V

    return-void
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->searching:Z

    return p0
.end method

.method static synthetic access$502(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->searching:Z

    return p1
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->sortItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    return-object p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    return-object p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;

    return-object p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->searchAdapter:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;

    return-object p0
.end method

.method private canClosePicker()Z
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->access$1700(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_1

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->prepareAnimation()V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->access$1700(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->access$1700(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$HistoryEntry;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$HistoryEntry;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->getTopForScroll()I

    move-result v1

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$HistoryEntry;->dir:Ljava/io/File;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listFiles(Ljava/io/File;)Z

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listRoots()V

    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->updateSearchButton()V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->runAnimation(I)V

    return v2

    :cond_1
    return v1
.end method

.method private checkDirectory(Ljava/io/File;)V
    .locals 8

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    const/4 v0, 0x6

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v0

    if-eqz p1, :cond_5

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_5

    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Telegram"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->checkDirectory(Ljava/io/File;)V

    goto :goto_2

    :cond_0
    invoke-virtual {v2, v0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    new-instance v3, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$1;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->title:Ljava/lang/String;

    iput-object v2, v3, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\\."

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x1

    if-le v6, v7, :cond_2

    array-length v6, v5

    sub-int/2addr v6, v7

    aget-object v5, v5, v6

    goto :goto_1

    :cond_2
    const-string v5, "?"

    :goto_1
    iput-object v5, v3, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->ext:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-static {v5, v6}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->subtitle:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, ".png"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, ".gif"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, ".jpeg"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->thumb:Ljava/lang/String;

    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->access$1900(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method private getTopForScroll()I
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    neg-int v2, v2

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    add-int/2addr v2, v0

    :cond_0
    return v2
.end method

.method private static synthetic lambda$new$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$new$1(Landroid/view/View;I)V
    .locals 13

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;

    if-ne v0, v1, :cond_0

    invoke-virtual {v1, p2}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->getItem(I)Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;

    move-result-object p2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->searchAdapter:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    :goto_0
    instance-of v0, p2, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;

    if-eqz v0, :cond_b

    check-cast p2, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;

    iget-object v0, p2, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->file:Ljava/io/File;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    const/4 v3, 0x0

    if-lt v1, v2, :cond_1

    invoke-static {}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$$ExternalSyntheticApiModelOutline0;->m()Z

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->NO_SCOPED_STORAGE:Z

    if-nez v2, :cond_3

    iget v2, p2, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->icon:I

    sget v4, Lorg/telegram/messenger/R$drawable;->files_storage:I

    if-eq v2, v4, :cond_2

    sget v4, Lorg/telegram/messenger/R$drawable;->files_internal:I

    if-ne v2, v4, :cond_3

    :cond_2
    if-nez v1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->delegate:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$DocumentSelectActivityDelegate;

    invoke-interface {p1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$DocumentSelectActivityDelegate;->startDocumentSelectActivity()V

    goto/16 :goto_4

    :cond_3
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_9

    iget p1, p2, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->icon:I

    sget p2, Lorg/telegram/messenger/R$drawable;->files_gallery:I

    if-ne p1, p2, :cond_6

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v4, v0, Lorg/telegram/ui/ChatActivity;

    if-eqz v4, :cond_4

    move-object v1, v0

    check-cast v1, Lorg/telegram/ui/ChatActivity;

    :cond_4
    move-object v11, v1

    new-instance v0, Lorg/telegram/ui/PhotoPickerActivity;

    sget-object v6, Lorg/telegram/messenger/MediaController;->allMediaAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-eqz v11, :cond_5

    const/4 v10, 0x1

    goto :goto_2

    :cond_5
    const/4 v10, 0x0

    :goto_2
    const/4 v12, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x0

    move-object v4, v0

    move-object v7, p1

    move-object v8, p2

    invoke-direct/range {v4 .. v12}, Lorg/telegram/ui/PhotoPickerActivity;-><init>(ILorg/telegram/messenger/MediaController$AlbumEntry;Ljava/util/HashMap;Ljava/util/ArrayList;IZLorg/telegram/ui/ChatActivity;Z)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/PhotoPickerActivity;->setDocumentsPicker(Z)V

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$8;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$8;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;Ljava/util/HashMap;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/PhotoPickerActivity;->setDelegate(Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivityDelegate;)V

    iget p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->maxSelectedFiles:I

    invoke-virtual {v0, p1, v3}, Lorg/telegram/ui/PhotoPickerActivity;->setMaxSelectedPhotos(IZ)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->presentFragment(Lorg/telegram/ui/PhotoPickerActivity;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss(Z)V

    goto/16 :goto_4

    :cond_6
    sget p2, Lorg/telegram/messenger/R$drawable;->files_music:I

    if-ne p1, p2, :cond_7

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->delegate:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$DocumentSelectActivityDelegate;

    if-eqz p1, :cond_c

    invoke-interface {p1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$DocumentSelectActivityDelegate;->startMusicSelectActivity()V

    goto/16 :goto_4

    :cond_7
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->getTopForScroll()I

    move-result p1

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->prepareAnimation()V

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->access$1700(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;)Ljava/util/ArrayList;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->access$1700(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$HistoryEntry;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v1, p2, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$HistoryEntry;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p2, p2, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$HistoryEntry;->dir:Ljava/io/File;

    if-eqz p2, :cond_8

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listFiles(Ljava/io/File;)Z

    goto :goto_3

    :cond_8
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listRoots()V

    :goto_3
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->updateSearchButton()V

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p2, v3, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->runAnimation(I)V

    goto :goto_4

    :cond_9
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_b

    new-instance p1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$HistoryEntry;

    invoke-direct {p1, v1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$HistoryEntry;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$1;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v3

    iput v3, p1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$HistoryEntry;->scrollItem:I

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iput v1, p1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$HistoryEntry;->scrollOffset:I

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->currentDir:Ljava/io/File;

    iput-object v1, p1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$HistoryEntry;->dir:Ljava/io/File;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->getTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$HistoryEntry;->title:Ljava/lang/String;

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->prepareAnimation()V

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->access$1700(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listFiles(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->access$1700(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void

    :cond_a
    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->runAnimation(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object p2, p2, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_b
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->onItemClick(Landroid/view/View;Ljava/lang/Object;)Z

    :cond_c
    :goto_4
    return-void
.end method

.method private synthetic lambda$new$2(Landroid/view/View;I)Z
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;

    if-ne v0, v1, :cond_0

    invoke-virtual {v1, p2}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->getItem(I)Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;

    move-result-object p2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->searchAdapter:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    :goto_0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->onItemClick(Landroid/view/View;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private synthetic lambda$new$3(Landroid/view/View;I)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->filtersView:Lorg/telegram/ui/Adapters/FiltersView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->cancelClickRunnables(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->searchAdapter:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->filtersView:Lorg/telegram/ui/Adapters/FiltersView;

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Adapters/FiltersView;->getFilterAt(I)Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->access$3500(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;)V

    return-void
.end method

.method private synthetic lambda$runAnimation$4(IFLandroid/animation/ValueAnimator;)V
    .locals 4

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    const/4 v0, 0x1

    const v1, 0x3f733333    # 0.95f

    const v2, 0x3d4ccccd    # 0.05f

    const/high16 v3, 0x3f800000    # 1.0f

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    mul-float p2, p2, p3

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sub-float/2addr v3, p3

    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->backgroundListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, p3}, Landroid/view/View;->setAlpha(F)V

    mul-float p3, p3, v2

    add-float/2addr p3, v1

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->backgroundListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, p3}, Landroid/view/View;->setScaleX(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->backgroundListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, p3}, Landroid/view/View;->setScaleY(F)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->backgroundListView:Lorg/telegram/ui/Components/RecyclerListView;

    mul-float p2, p2, p3

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->backgroundListView:Lorg/telegram/ui/Components/RecyclerListView;

    sub-float/2addr v3, p3

    const/4 p2, 0x0

    invoke-static {p2, v3}, Ljava/lang/Math;->max(FF)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->backgroundListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, p3}, Landroid/view/View;->setAlpha(F)V

    mul-float p3, p3, v2

    add-float/2addr p3, v1

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, p3}, Landroid/view/View;->setScaleX(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, p3}, Landroid/view/View;->setScaleY(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->backgroundListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$sendSelectedItems$5(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;ZIJZLjava/lang/Long;)V
    .locals 13

    move-object v0, p0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->sendPressed:Z

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->delegate:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$DocumentSelectActivityDelegate;

    invoke-virtual/range {p9 .. p9}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-wide/from16 v8, p6

    move/from16 v10, p8

    invoke-interface/range {v2 .. v12}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$DocumentSelectActivityDelegate;->didSelectFiles(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;ZIJZJ)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss(Z)V

    return-void
.end method

.method private synthetic lambda$sendSelectedPhotos$6(Ljava/util/ArrayList;ZILjava/lang/Long;)V
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->delegate:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$DocumentSelectActivityDelegate;

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$DocumentSelectActivityDelegate;->didSelectPhotos(Ljava/util/ArrayList;ZIJ)V

    return-void
.end method

.method private synthetic lambda$sortFileItems$8(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;)I
    .locals 6

    iget-object v0, p1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->file:Ljava/io/File;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, p2, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->file:Ljava/io/File;

    const/4 v3, 0x1

    if-nez v2, :cond_1

    return v3

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    iget-object v2, p2, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eq v0, v2, :cond_3

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_3
    if-nez v0, :cond_7

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->sortByName:Z

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->file:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    iget-object p1, p2, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->file:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide p1

    cmp-long v0, v4, p1

    if-nez v0, :cond_5

    const/4 p1, 0x0

    return p1

    :cond_5
    cmp-long v0, v4, p1

    if-lez v0, :cond_6

    return v1

    :cond_6
    return v3

    :cond_7
    :goto_1
    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->file:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p2, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->file:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private synthetic lambda$sortRecentItems$7(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;)I
    .locals 3

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->sortByName:Z

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->file:Ljava/io/File;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p2, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->file:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    iget-object p1, p2, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->file:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide p1

    cmp-long v2, v0, p1

    if-nez v2, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    cmp-long v2, v0, p1

    if-lez v2, :cond_2

    const/4 p1, -0x1

    return p1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method private listFiles(Ljava/io/File;)Z
    .locals 9

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->hasFiles:Z

    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v3, "/sdcard"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v3, "/mnt/sdcard"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v3, "mounted"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v3, "mounted_ro"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->currentDir:Ljava/io/File;

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->access$1800(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->clearDrawableAnimation(Landroid/view/View;)V

    iput-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->scrolling:Z

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->notifyDataSetChanged()V

    return v2

    :cond_1
    sget p1, Lorg/telegram/messenger/R$string;->AccessError:I

    :goto_0
    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->showErrorBox(Ljava/lang/String;)V

    return v0

    :cond_2
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_3

    sget p1, Lorg/telegram/messenger/R$string;->UnknownError:I

    goto :goto_0

    :cond_3
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->currentDir:Ljava/io/File;

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->access$1800(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    const/4 p1, 0x6

    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object p1

    const/4 v3, 0x0

    :goto_2
    array-length v4, v1

    const/4 v5, 0x0

    if-ge v3, v4, :cond_a

    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x2e

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-nez v6, :cond_4

    goto/16 :goto_5

    :cond_4
    invoke-virtual {v4, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    goto/16 :goto_5

    :cond_5
    new-instance v6, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;

    invoke-direct {v6, v5}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$1;)V

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->title:Ljava/lang/String;

    iput-object v4, v6, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_6

    sget v4, Lorg/telegram/messenger/R$drawable;->files_folder:I

    iput v4, v6, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->icon:I

    sget v4, Lorg/telegram/messenger/R$string;->Folder:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v6, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->subtitle:Ljava/lang/String;

    goto :goto_4

    :cond_6
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->hasFiles:Z

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v7, "\\."

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    if-le v8, v2, :cond_7

    array-length v8, v7

    sub-int/2addr v8, v2

    aget-object v7, v7, v8

    goto :goto_3

    :cond_7
    const-string v7, "?"

    :goto_3
    iput-object v7, v6, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->ext:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-static {v7, v8}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->subtitle:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v7, ".jpg"

    invoke-virtual {v5, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_8

    const-string v7, ".png"

    invoke-virtual {v5, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_8

    const-string v7, ".gif"

    invoke-virtual {v5, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_8

    const-string v7, ".jpeg"

    invoke-virtual {v5, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    :cond_8
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v6, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->thumb:Ljava/lang/String;

    :cond_9
    :goto_4
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->access$1800(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    :cond_a
    new-instance p1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;

    invoke-direct {p1, v5}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$1;)V

    const-string v1, ".."

    iput-object v1, p1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->title:Ljava/lang/String;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->access$1700(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_c

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->access$1700(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->access$1700(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$HistoryEntry;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$HistoryEntry;->dir:Ljava/io/File;

    if-nez v1, :cond_b

    goto :goto_7

    :cond_b
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_6
    iput-object v1, p1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->subtitle:Ljava/lang/String;

    goto :goto_8

    :cond_c
    :goto_7
    sget v1, Lorg/telegram/messenger/R$string;->Folder:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :goto_8
    sget v1, Lorg/telegram/messenger/R$drawable;->files_folder:I

    iput v1, p1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->icon:I

    iput-object v5, p1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->file:Ljava/io/File;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->access$1800(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->sortFileItems()V

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->updateSearchButton()V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->clearDrawableAnimation(Landroid/view/View;)V

    iput-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->scrolling:Z

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->getTopForScroll()I

    move-result p1

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->notifyDataSetChanged()V

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1, v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    return v2

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1
.end method

.method private listRoots()V
    .locals 8

    const-string v0, "Telegram"

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->currentDir:Ljava/io/File;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->hasFiles:Z

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->access$1800(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1e

    if-lt v3, v4, :cond_0

    invoke-static {}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$$ExternalSyntheticApiModelOutline0;->m()Z

    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    const-string v5, "mounted"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "mounted_ro"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_1
    new-instance v4, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;

    invoke-direct {v4, v1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$1;)V

    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v5

    if-eqz v5, :cond_2

    sget v5, Lorg/telegram/messenger/R$string;->SdCard:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->title:Ljava/lang/String;

    sget v5, Lorg/telegram/messenger/R$drawable;->files_internal:I

    iput v5, v4, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->icon:I

    sget v5, Lorg/telegram/messenger/R$string;->ExternalFolderInfo:I

    :goto_0
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->subtitle:Ljava/lang/String;

    goto :goto_1

    :cond_2
    sget v5, Lorg/telegram/messenger/R$string;->InternalStorage:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->title:Ljava/lang/String;

    sget v5, Lorg/telegram/messenger/R$drawable;->files_storage:I

    iput v5, v4, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->icon:I

    sget v5, Lorg/telegram/messenger/R$string;->InternalFolderInfo:I

    goto :goto_0

    :goto_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    iput-object v5, v4, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->file:Ljava/io/File;

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;

    invoke-static {v5}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->access$1800(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_3
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    const-string v5, "/proc/mounts"

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_4
    :goto_2
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_a

    const-string v5, "vfat"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "/mnt"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_d

    :catch_0
    move-exception v2

    goto/16 :goto_8

    :cond_5
    :goto_3
    sget-boolean v5, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v5, :cond_6

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_6
    new-instance v5, Ljava/util/StringTokenizer;

    const-string v6, " "

    invoke-direct {v5, v4, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_2

    :cond_7
    const-string v6, "/dev/block/vold"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "/mnt/secure"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "/mnt/asec"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "/mnt/obb"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "/dev/mapper"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "tmpfs"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_8

    const/16 v4, 0x2f

    invoke-virtual {v5, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    const/4 v6, -0x1

    if-eq v4, v6, :cond_8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/storage/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v5, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_8

    move-object v5, v4

    :cond_8
    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v4, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;

    invoke-direct {v4, v1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$1;)V

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "sd"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_9

    sget v6, Lorg/telegram/messenger/R$string;->SdCard:I

    :goto_4
    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_5

    :catch_1
    move-exception v4

    goto :goto_6

    :cond_9
    sget v6, Lorg/telegram/messenger/R$string;->ExternalStorage:I

    goto :goto_4

    :goto_5
    iput-object v6, v4, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->title:Ljava/lang/String;

    sget v6, Lorg/telegram/messenger/R$string;->ExternalFolderInfo:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->subtitle:Ljava/lang/String;

    sget v6, Lorg/telegram/messenger/R$drawable;->files_internal:I

    iput v6, v4, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->icon:I

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v6, v4, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->file:Ljava/io/File;

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;

    invoke-static {v5}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->access$1800(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2

    :goto_6
    :try_start_3
    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2

    :cond_a
    :goto_7
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_a

    :catch_2
    move-exception v2

    goto :goto_9

    :catchall_1
    move-exception v0

    goto/16 :goto_c

    :catch_3
    move-exception v2

    move-object v3, v1

    :goto_8
    :try_start_5
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v3, :cond_b

    goto :goto_7

    :goto_9
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_b
    :goto_a
    :try_start_6
    new-instance v2, Ljava/io/File;

    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_c

    new-instance v3, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;

    invoke-direct {v3, v1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$1;)V

    iput-object v0, v3, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->title:Ljava/lang/String;

    sget v0, Lorg/telegram/messenger/R$string;->AppFolderInfo:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->subtitle:Ljava/lang/String;

    sget v0, Lorg/telegram/messenger/R$drawable;->files_folder:I

    iput v0, v3, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->icon:I

    iput-object v2, v3, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->file:Ljava/io/File;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->access$1800(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_b

    :catch_4
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_c
    :goto_b
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->isSoundPicker:Z

    if-nez v0, :cond_d

    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$1;)V

    sget v2, Lorg/telegram/messenger/R$string;->Gallery:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->title:Ljava/lang/String;

    sget v2, Lorg/telegram/messenger/R$string;->GalleryInfo:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->subtitle:Ljava/lang/String;

    sget v2, Lorg/telegram/messenger/R$drawable;->files_gallery:I

    iput v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->icon:I

    iput-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->file:Ljava/io/File;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->access$1800(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->allowMusic:Z

    if-eqz v0, :cond_e

    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$1;)V

    sget v2, Lorg/telegram/messenger/R$string;->AttachMusic:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->title:Ljava/lang/String;

    sget v2, Lorg/telegram/messenger/R$string;->MusicInfo:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->subtitle:Ljava/lang/String;

    sget v2, Lorg/telegram/messenger/R$drawable;->files_music:I

    iput v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->icon:I

    iput-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->file:Ljava/io/File;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->access$1800(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->access$1900(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_f

    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->hasFiles:Z

    :cond_f
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->clearDrawableAnimation(Landroid/view/View;)V

    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->scrolling:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->notifyDataSetChanged()V

    return-void

    :catchall_2
    move-exception v0

    move-object v1, v3

    :goto_c
    move-object v3, v1

    :goto_d
    if-eqz v3, :cond_10

    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_e

    :catch_5
    move-exception v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_10
    :goto_e
    goto :goto_10

    :goto_f
    throw v0

    :goto_10
    goto :goto_f
.end method

.method private onItemClick(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    instance-of v3, v2, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_b

    check-cast v2, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;

    iget-object v3, v2, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->file:Ljava/io/File;

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v3, v2, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->selectedFiles:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->selectedFiles:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->selectedFilesOrder:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_1
    iget-object v6, v2, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->file:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->canRead()Z

    move-result v6

    if-nez v6, :cond_2

    sget v1, Lorg/telegram/messenger/R$string;->AccessError:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->showErrorBox(Ljava/lang/String;)V

    return v5

    :cond_2
    iget-boolean v6, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->canSelectOnlyImageFiles:Z

    if-eqz v6, :cond_3

    iget-object v6, v2, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->thumb:Ljava/lang/String;

    if-nez v6, :cond_3

    sget v1, Lorg/telegram/messenger/R$string;->PassportUploadNotImage:I

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "PassportUploadNotImage"

    invoke-static {v3, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->showErrorBox(Ljava/lang/String;)V

    return v5

    :cond_3
    iget-object v6, v2, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->file:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/32 v8, 0x7d000000

    cmp-long v10, v6, v8

    if-lez v10, :cond_4

    sget v6, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_4
    iget-object v6, v2, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->file:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide v8, 0xfa000000L

    cmp-long v10, v6, v8

    if-lez v10, :cond_6

    :cond_5
    new-instance v1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v12, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getContainer()Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    sget v15, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    const/4 v14, 0x6

    const/16 v16, 0x0

    move-object v11, v1

    invoke-direct/range {v11 .. v16}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->setVeryLargeFile(Z)V

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    return v5

    :cond_6
    iget v6, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->maxSelectedFiles:I

    if-ltz v6, :cond_7

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->selectedFiles:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    iget v7, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->maxSelectedFiles:I

    if-lt v6, v7, :cond_7

    sget v1, Lorg/telegram/messenger/R$string;->PassportUploadMaxReached:I

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "Files"

    invoke-static {v3, v7, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v2, v3, v5

    const-string v2, "PassportUploadMaxReached"

    invoke-static {v2, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->showErrorBox(Ljava/lang/String;)V

    return v5

    :cond_7
    iget-boolean v6, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->isSoundPicker:Z

    if-eqz v6, :cond_8

    iget-object v6, v2, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->file:Ljava/io/File;

    invoke-virtual {v0, v6}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->isRingtone(Ljava/io/File;)Z

    move-result v6

    if-nez v6, :cond_8

    return v5

    :cond_8
    iget-object v6, v2, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->file:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-nez v10, :cond_9

    return v5

    :cond_9
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-boolean v6, v6, Lorg/telegram/ui/Components/ChatAttachAlert;->storyMediaPicker:Z

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->selectedFiles:Ljava/util/HashMap;

    invoke-virtual {v6, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->selectedFilesOrder:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    :goto_0
    iput-boolean v5, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->scrolling:Z

    move v5, v2

    goto :goto_2

    :cond_a
    :goto_1
    return v5

    :cond_b
    instance-of v3, v2, Lorg/telegram/messenger/MessageObject;

    if-eqz v3, :cond_10

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    new-instance v3, Lorg/telegram/ui/FilteredSearchView$MessageHashId;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v6

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v7

    invoke-direct {v3, v6, v7, v8}, Lorg/telegram/ui/FilteredSearchView$MessageHashId;-><init>(IJ)V

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->selectedMessages:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->selectedMessages:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_c
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->selectedMessages:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    const/16 v7, 0x64

    if-lt v6, v7, :cond_d

    return v5

    :cond_d
    iget-object v5, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->selectedMessages:Ljava/util/HashMap;

    invoke-virtual {v5, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x1

    :goto_2
    instance-of v2, v1, Lorg/telegram/ui/Cells/SharedDocumentCell;

    if-eqz v2, :cond_e

    check-cast v1, Lorg/telegram/ui/Cells/SharedDocumentCell;

    invoke-virtual {v1, v5, v4}, Lorg/telegram/ui/Cells/SharedDocumentCell;->setChecked(ZZ)V

    :cond_e
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    if-eqz v5, :cond_f

    const/4 v2, 0x1

    goto :goto_3

    :cond_f
    const/4 v2, 0x2

    :goto_3
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->updateCountButton(I)V

    return v4

    :cond_10
    return v5
.end method

.method private prepareAnimation()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->backgroundListAdapter:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->access$1700(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->backgroundListAdapter:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->access$1700(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->access$1700(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->backgroundListAdapter:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->access$1800(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->backgroundListAdapter:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->access$1800(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->access$1800(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->backgroundListAdapter:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->access$1900(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->backgroundListAdapter:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->access$1900(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->access$1900(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->backgroundListAdapter:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->backgroundListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->backgroundListView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->backgroundLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->backgroundListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-virtual {v2, v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :cond_0
    return-void
.end method

.method private runAnimation(I)V
    .locals 9

    const/4 v0, 0x2

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listAnimation:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->currentAnimationType:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-ne v4, v5, :cond_1

    goto :goto_1

    :cond_1
    add-int/2addr v3, v1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_1
    const/high16 v4, 0x43160000    # 150.0f

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    if-ne p1, v1, :cond_3

    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->backgroundListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v7, v6}, Landroid/view/View;->setAlpha(F)V

    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->backgroundListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v7, v6}, Landroid/view/View;->setScaleX(F)V

    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->backgroundListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v7, v6}, Landroid/view/View;->setScaleY(F)V

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->backgroundListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v6, v5}, Landroid/view/View;->setTranslationX(F)V

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->backgroundListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->backgroundListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p0, v6, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->backgroundListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationX(F)V

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v5}, Landroid/view/View;->setAlpha(F)V

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listAnimation:Landroid/animation/ValueAnimator;

    goto :goto_3

    :cond_3
    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v7, v5}, Landroid/view/View;->setAlpha(F)V

    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const v8, 0x3f733333    # 0.95f

    invoke-virtual {v7, v8}, Landroid/view/View;->setScaleX(F)V

    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v7, v8}, Landroid/view/View;->setScaleY(F)V

    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->backgroundListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v7, v6}, Landroid/view/View;->setScaleX(F)V

    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->backgroundListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v7, v6}, Landroid/view/View;->setScaleY(F)V

    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->backgroundListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v7, v5}, Landroid/view/View;->setTranslationX(F)V

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->backgroundListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5, v6}, Landroid/view/View;->setAlpha(F)V

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->backgroundListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->backgroundListView:Lorg/telegram/ui/Components/RecyclerListView;

    add-int/2addr v3, v1

    invoke-virtual {p0, v5, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->backgroundListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    goto :goto_2

    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listAnimation:Landroid/animation/ValueAnimator;

    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, p1, v4}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;IF)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listAnimation:Landroid/animation/ValueAnimator;

    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$9;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$9;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)V

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-ne p1, v1, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listAnimation:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xdc

    :goto_4
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto :goto_5

    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listAnimation:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xc8

    goto :goto_4

    :goto_5
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listAnimation:Landroid/animation/ValueAnimator;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private sendSelectedPhotos(Ljava/util/HashMap;Ljava/util/ArrayList;ZI)V
    .locals 5

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->delegate:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$DocumentSelectActivityDelegate;

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->sendPressed:Z

    if-eqz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->sendPressed:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;

    invoke-direct {v3}, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;-><init>()V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    instance-of v4, v2, Lorg/telegram/messenger/MediaController$PhotoEntry;

    if-eqz v4, :cond_3

    check-cast v2, Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-object v4, v2, Lorg/telegram/messenger/MediaController$MediaEditState;->imagePath:Ljava/lang/String;

    if-eqz v4, :cond_1

    :goto_1
    iput-object v4, v3, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->path:Ljava/lang/String;

    goto :goto_2

    :cond_1
    iget-object v4, v2, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    goto :goto_1

    :goto_2
    iget-object v4, v2, Lorg/telegram/messenger/MediaController$MediaEditState;->thumbPath:Ljava/lang/String;

    iput-object v4, v3, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->thumbPath:Ljava/lang/String;

    iget-object v4, v2, Lorg/telegram/messenger/MediaController$MediaEditState;->coverPath:Ljava/lang/String;

    iput-object v4, v3, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->coverPath:Ljava/lang/String;

    iget-object v4, v2, Lorg/telegram/messenger/MediaController$MediaEditState;->editedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iput-object v4, v3, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget-boolean v4, v2, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    iput-boolean v4, v3, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->isVideo:Z

    iget-object v4, v2, Lorg/telegram/messenger/MediaController$MediaEditState;->caption:Ljava/lang/CharSequence;

    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_2
    const/4 v4, 0x0

    :goto_3
    iput-object v4, v3, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->caption:Ljava/lang/String;

    iget-object v4, v2, Lorg/telegram/messenger/MediaController$MediaEditState;->entities:Ljava/util/ArrayList;

    iput-object v4, v3, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->entities:Ljava/util/ArrayList;

    iget-object v4, v2, Lorg/telegram/messenger/MediaController$MediaEditState;->stickers:Ljava/util/ArrayList;

    iput-object v4, v3, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->masks:Ljava/util/ArrayList;

    iget v2, v2, Lorg/telegram/messenger/MediaController$MediaEditState;->ttl:I

    iput v2, v3, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->ttl:I

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget p2, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->getDialogId()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ChatAttachAlert;->getAdditionalMessagesCount()I

    move-result v3

    add-int/2addr p1, v3

    new-instance v3, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$$ExternalSyntheticLambda9;

    invoke-direct {v3, p0, v0, p3, p4}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;Ljava/util/ArrayList;ZI)V

    invoke-static {p2, v1, v2, p1, v3}, Lorg/telegram/ui/Components/AlertsCreator;->ensurePaidMessageConfirmation(IJILorg/telegram/messenger/Utilities$Callback;)Z

    :cond_5
    :goto_4
    return-void
.end method

.method private showErrorBox(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget v1, Lorg/telegram/messenger/R$string;->AppName:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->OK:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void
.end method

.method private sortFileItems()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->currentDir:Ljava/io/File;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->access$1800(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private sortRecentItems()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->access$1900(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private updateEmptyView()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->searchAdapter:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->access$2200(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->searchAdapter:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->sections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->getItemCount()I

    move-result v0

    if-ne v0, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/StickerEmptyView;->setVisibility(I)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->updateEmptyViewPosition()V

    return-void
.end method

.method private updateEmptyViewPosition()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    add-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    int-to-float v0, v2

    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->additionalTranslationY:F

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method private updateSearchButton()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->isSearchFieldVisible()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->hasFiles:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->access$1700(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method


# virtual methods
.method public getButtonsHideOffset()I
    .locals 1

    const/high16 v0, 0x42780000    # 62.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method public getCurrentItemTop()I
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    const v0, 0x7fffffff

    return v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    float-to-int v0, v0

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v0, v3

    if-lez v0, :cond_1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v3

    if-nez v3, :cond_1

    move v1, v0

    :cond_1
    if-ltz v0, :cond_2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    const/high16 v1, 0x41500000    # 13.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getFirstOffset()I
    .locals 2

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->getListTopPadding()I

    move-result v0

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getListTopPadding()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    return v0
.end method

.method public getSelectedItemsCount()I
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->selectedFiles:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->selectedMessages:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v3

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CURSORCOLOR:I

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    sget v18, Lorg/telegram/ui/ActionBar/Theme;->key_dialogScrollGlow:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const-class v11, Lorg/telegram/ui/Cells/ShadowSectionCell;

    const/4 v12, 0x1

    new-array v6, v12, [Ljava/lang/Class;

    const/4 v13, 0x0

    aput-object v11, v6, v13

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    const/4 v9, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    or-int v16, v3, v4

    new-array v3, v12, [Ljava/lang/Class;

    aput-object v11, v3, v13

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v18, 0x0

    move-object v14, v2

    move-object/from16 v17, v3

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    const/4 v10, 0x0

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    const-class v4, Landroid/view/View;

    aput-object v4, v3, v13

    sget-object v18, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    const/16 v16, 0x0

    move-object v14, v2

    move-object/from16 v17, v3

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v24, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const-class v4, Lorg/telegram/ui/Cells/SharedDocumentCell;

    new-array v5, v12, [Ljava/lang/Class;

    aput-object v4, v5, v13

    const-string v6, "nameTextView"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v26

    sget v30, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v27, 0x0

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v25, v5

    invoke-direct/range {v22 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v3, v12, [Ljava/lang/Class;

    aput-object v4, v3, v13

    const-string v5, "dateTextView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v18

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText3:I

    const/16 v21, 0x0

    move-object v14, v2

    move-object/from16 v17, v3

    invoke-direct/range {v14 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v25, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOX:I

    new-array v5, v12, [Ljava/lang/Class;

    aput-object v4, v5, v13

    const-string v6, "checkBox"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v27

    sget v31, Lorg/telegram/ui/ActionBar/Theme;->key_checkbox:I

    const/16 v30, 0x0

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v5

    invoke-direct/range {v23 .. v31}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOXCHECK:I

    new-array v3, v12, [Ljava/lang/Class;

    aput-object v4, v3, v13

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v18

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxCheck:I

    move-object v14, v2

    move-object/from16 v17, v3

    invoke-direct/range {v14 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v25, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    new-array v5, v12, [Ljava/lang/Class;

    aput-object v4, v5, v13

    const-string v6, "thumbImageView"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v27

    sget v31, Lorg/telegram/ui/ActionBar/Theme;->key_files_folderIcon:I

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v5

    invoke-direct/range {v23 .. v31}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    or-int v16, v3, v5

    new-array v3, v12, [Ljava/lang/Class;

    aput-object v4, v3, v13

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v18

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_files_folderIconBackground:I

    move-object v14, v2

    move-object/from16 v17, v3

    invoke-direct/range {v14 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v25, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v5, v12, [Ljava/lang/Class;

    aput-object v4, v5, v13

    const-string v4, "extTextView"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v27

    sget v31, Lorg/telegram/ui/ActionBar/Theme;->key_files_iconText:I

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v5

    invoke-direct/range {v23 .. v31}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public isRingtone(Ljava/io/File;)Z
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->getFileExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-eqz v8, :cond_4

    if-eqz v2, :cond_4

    sget-object v4, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->ringtoneSupportedMimeType:Ljava/util/HashSet;

    invoke-virtual {v4, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_4

    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v4

    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget v2, v2, Lorg/telegram/messenger/MessagesController;->ringtoneSizeMax:I

    int-to-long v6, v2

    cmp-long v2, v4, v6

    if-lez v2, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getContainer()Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    move-result-object p1

    invoke-static {p1, v3}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget v2, Lorg/telegram/messenger/R$string;->TooLargeError:I

    new-array v4, v1, [Ljava/lang/Object;

    const-string v5, "TooLargeError"

    invoke-static {v5, v2, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget v4, Lorg/telegram/messenger/R$string;->ErrorRingtoneSizeTooBig:I

    sget v5, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget v5, v5, Lorg/telegram/messenger/MessagesController;->ringtoneSizeMax:I

    div-int/lit16 v5, v5, 0x400

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v5, v0, v1

    const-string v5, "ErrorRingtoneSizeTooBig"

    invoke-static {v5, v4, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p1, v2, v0, v3}, Lorg/telegram/ui/Components/BulletinFactory;->createErrorBulletinSubtitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    :goto_2
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return v1

    :cond_2
    :try_start_0
    new-instance v2, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V

    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v2, v4, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    const/16 p1, 0x9

    invoke-virtual {v2, p1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    const p1, 0x7fffffff

    :goto_3
    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget v2, v2, Lorg/telegram/messenger/MessagesController;->ringtoneDurationMax:I

    mul-int/lit16 v2, v2, 0x3e8

    if-le p1, v2, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getContainer()Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    move-result-object p1

    invoke-static {p1, v3}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget v2, Lorg/telegram/messenger/R$string;->TooLongError:I

    new-array v4, v1, [Ljava/lang/Object;

    const-string v5, "TooLongError"

    invoke-static {v5, v2, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget v4, Lorg/telegram/messenger/R$string;->ErrorRingtoneDurationTooLong:I

    sget v5, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget v5, v5, Lorg/telegram/messenger/MessagesController;->ringtoneDurationMax:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v5, v0, v1

    const-string v5, "ErrorRingtoneDurationTooLong"

    invoke-static {v5, v4, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    return v0

    :cond_4
    :goto_4
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getContainer()Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    move-result-object p1

    invoke-static {p1, v3}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->InvalidFormatError:I

    new-array v2, v1, [Ljava/lang/Object;

    const-string v4, "InvalidFormatError"

    invoke-static {v4, v0, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/R$string;->ErrorRingtoneInvalidFormat:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2, v3}, Lorg/telegram/ui/Components/BulletinFactory;->createErrorBulletinSubtitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    goto :goto_2
.end method

.method public loadRecentFiles()V
    .locals 11

    :try_start_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->isSoundPicker:Z

    if-eqz v0, :cond_7

    const-string v0, "_id"

    const-string v1, "_data"

    const-string v2, "duration"

    const-string v3, "_size"

    const-string v4, "mime_type"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v8, "is_music != 0"

    const-string v10, "date_added DESC"

    const/4 v9, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/io/File;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const/4 v5, 0x3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const/4 v7, 0x4

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v8, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v8}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    iget v8, v8, Lorg/telegram/messenger/MessagesController;->ringtoneDurationMax:I

    mul-int/lit16 v8, v8, 0x3e8

    int-to-long v8, v8

    cmp-long v10, v3, v8

    if-gtz v10, :cond_0

    sget v3, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget v3, v3, Lorg/telegram/messenger/MessagesController;->ringtoneSizeMax:I

    int-to-long v3, v3

    cmp-long v8, v5, v3

    if-gtz v8, :cond_0

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "audio/mpeg"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "audio/mpeg4"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_1
    new-instance v3, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$1;)V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->title:Ljava/lang/String;

    iput-object v1, v3, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\\."

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    if-le v6, v2, :cond_2

    array-length v6, v5

    sub-int/2addr v6, v2

    aget-object v2, v5, v6

    goto :goto_1

    :cond_2
    const-string v2, "?"

    :goto_1
    iput-object v2, v3, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->ext:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-static {v5, v6}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->subtitle:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v4, ".jpg"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, ".png"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, ".gif"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, ".jpeg"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->thumb:Ljava/lang/String;

    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->access$1900(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :cond_5
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    goto :goto_4

    :goto_2
    if-eqz v0, :cond_6

    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    :try_start_5
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_3
    throw v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :goto_4
    :try_start_6
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_6

    :catch_1
    move-exception v0

    goto :goto_5

    :cond_7
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->checkDirectory(Ljava/io/File;)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->sortRecentItems()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_6

    :goto_5
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_6
    return-void
.end method

.method public needsActionBar()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onBackPressed()Z
    .locals 1

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->canClosePicker()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onBackPressed()Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 2

    :try_start_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->receiverRegistered:Z

    if-eqz v0, :cond_0

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->receiverRegistered:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->closeSearchField()V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->sortItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public onHide()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->sortItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->updateEmptyViewPosition()V

    return-void
.end method

.method public onMenuItemClick(I)V
    .locals 1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->toggleSortFilesByName()V

    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->sortFilesByName:Z

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->sortByName:Z

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->sortRecentItems()V

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->sortFileItems()V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->notifyDataSetChanged()V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->sortItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->sortByName:Z

    if-eqz v0, :cond_0

    sget v0, Lorg/telegram/messenger/R$drawable;->msg_contacts_time:I

    goto :goto_0

    :cond_0
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_contacts_name:I

    :goto_0
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    :cond_1
    return-void
.end method

.method public onPreMeasure(II)V
    .locals 3

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBar;->isSearchFieldVisible()Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->measureKeyboardHeight()I

    move-result p1

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    if-le p1, v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    if-le v2, p1, :cond_1

    int-to-float p1, p2

    const/high16 p2, 0x40600000    # 3.5f

    div-float/2addr p1, p2

    float-to-int p1, p1

    goto :goto_0

    :cond_1
    div-int/lit8 p2, p2, 0x5

    mul-int/lit8 p1, p2, 0x2

    :goto_0
    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    sub-int/2addr p1, p2

    if-gez p1, :cond_2

    const/4 p1, 0x0

    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->setAllowNestedScroll(Z)V

    goto :goto_2

    :cond_3
    :goto_1
    const/high16 p1, 0x42600000    # 56.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->setAllowNestedScroll(Z)V

    :goto_2
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    if-eq p2, p1, :cond_4

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->ignoreLayout:Z

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/high16 v0, 0x42400000    # 48.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {p2, v1, p1, v1, v0}, Landroid/view/View;->setPadding(IIII)V

    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->ignoreLayout:Z

    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->filtersView:Lorg/telegram/ui/Adapters/FiltersView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onResume()V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->notifyDataSetChanged()V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->searchAdapter:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public onShow(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->selectedFiles:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->selectedMessages:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->searchAdapter:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->access$2100(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->selectedFilesOrder:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->access$1700(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listRoots()V

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->updateSearchButton()V

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->updateEmptyView()V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v0, Lorg/telegram/messenger/R$string;->SelectFile:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->sortItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1, v0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    return-void
.end method

.method public requestLayout()V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->ignoreLayout:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public scrollToTop()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void
.end method

.method public sendSelectedItems(ZIJZ)Z
    .locals 16

    move-object/from16 v10, p0

    iget-object v0, v10, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->selectedFiles:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v10, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->selectedMessages:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, v10, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->delegate:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$DocumentSelectActivityDelegate;

    if-eqz v0, :cond_3

    iget-boolean v0, v10, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->sendPressed:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v10, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->selectedMessages:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/FilteredSearchView$MessageHashId;

    iget-object v2, v10, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->selectedMessages:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, v10, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->selectedFilesOrder:Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v0, v10, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getCommentView()Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, v10, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v11, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getDialogId()J

    move-result-wide v12

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, v10, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->getAdditionalMessagesCount()I

    move-result v1

    add-int v14, v0, v1

    new-instance v15, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$$ExternalSyntheticLambda8;

    move-object v0, v15

    move-object/from16 v1, p0

    move/from16 v5, p1

    move/from16 v6, p2

    move-wide/from16 v7, p3

    move/from16 v9, p5

    invoke-direct/range {v0 .. v9}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;ZIJZ)V

    invoke-static {v11, v12, v13, v14, v15}, Lorg/telegram/ui/Components/AlertsCreator;->ensurePaidMessageConfirmation(IJILorg/telegram/messenger/Utilities$Callback;)Z

    move-result v0

    return v0

    :cond_3
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public setCanSelectOnlyImageFiles(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->canSelectOnlyImageFiles:Z

    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$DocumentSelectActivityDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->delegate:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$DocumentSelectActivityDelegate;

    return-void
.end method

.method public setMaxSelectedFiles(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->maxSelectedFiles:I

    return-void
.end method

.method public setTranslationY(F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getSheetContainer()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
