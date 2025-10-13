.class public Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;
.super Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$SearchAdapter;,
        Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$ListAdapter;,
        Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$AudioSelectDelegate;
    }
.end annotation


# instance fields
.field private audioEntries:Ljava/util/ArrayList;

.field private currentEmptyView:Landroid/view/View;

.field private currentPanTranslationProgress:F

.field private delegate:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$AudioSelectDelegate;

.field private emptyImageView:Landroid/widget/ImageView;

.field private emptySubtitleTextView:Landroid/widget/TextView;

.field private emptyTitleTextView:Landroid/widget/TextView;

.field private emptyView:Landroid/widget/LinearLayout;

.field private frameLayout:Landroid/widget/FrameLayout;

.field private ignoreLayout:Z

.field private layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$ListAdapter;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private loadingAudio:Z

.field private maxSelectedFiles:I

.field private playingAudio:Lorg/telegram/messenger/MessageObject;

.field private progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

.field private searchAdapter:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$SearchAdapter;

.field private searchField:Lorg/telegram/ui/Components/SearchField;

.field private selectedAudios:Landroid/util/LongSparseArray;

.field private selectedAudiosOrder:Ljava/util/ArrayList;

.field private sendPressed:Z

.field private shadow:Landroid/view/View;

.field private shadowAnimation:Landroid/animation/AnimatorSet;


# direct methods
.method public static synthetic $r8$lambda$5AoJtF1J4lAoUqMFKo9d-tuoyj8(Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->lambda$loadAudio$4(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BZ0YhO9X4gy-mPi9ZmDCmacG_Cs(Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;Ljava/util/ArrayList;ZIJZLjava/lang/Long;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p7}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->lambda$sendSelectedItems$3(Ljava/util/ArrayList;ZIJZLjava/lang/Long;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_Iglxxi4PAYDvO2fjcxKUakTfpo(Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;Landroid/view/View;I)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->lambda$new$2(Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$fjc8s4mVggCk6Atgvja-eJE56-M(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->lambda$new$0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$gvvTwcxQk4a9mGBkjlTCDiJdbQU(Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;Landroid/view/View;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->lambda$new$1(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$ioFkxNy7QQb3mxai4SIb_zwsppA(Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->lambda$loadAudio$5()V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 20

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v0, p3

    invoke-direct/range {p0 .. p3}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v9, -0x1

    iput v9, v7, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->maxSelectedFiles:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v7, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->audioEntries:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v7, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->selectedAudiosOrder:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/LongSparseArray;

    invoke-direct {v1}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v1, v7, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->selectedAudios:Landroid/util/LongSparseArray;

    iget-object v1, v7, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidReset:I

    invoke-virtual {v1, v7, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget-object v1, v7, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidStart:I

    invoke-virtual {v1, v7, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget-object v1, v7, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingPlayStateChanged:I

    invoke-virtual {v1, v7, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->loadAudio()V

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v8}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v7, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->frameLayout:Landroid/widget/FrameLayout;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-virtual {v7, v2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$1;

    const/4 v10, 0x0

    invoke-direct {v1, v7, v8, v10, v0}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$1;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v1, v7, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->searchField:Lorg/telegram/ui/Components/SearchField;

    sget v2, Lorg/telegram/messenger/R$string;->SearchMusic:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/SearchField;->setHint(Ljava/lang/String;)V

    iget-object v1, v7, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->frameLayout:Landroid/widget/FrameLayout;

    iget-object v2, v7, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->searchField:Lorg/telegram/ui/Components/SearchField;

    const/16 v11, 0x33

    invoke-static {v9, v9, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lorg/telegram/ui/Components/EmptyTextProgressView;

    const/4 v2, 0x0

    invoke-direct {v1, v8, v2, v0}, Lorg/telegram/ui/Components/EmptyTextProgressView;-><init>(Landroid/content/Context;Landroid/view/View;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v1, v7, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showProgress()V

    iget-object v1, v7, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v9, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v7, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v7, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->emptyView:Landroid/widget/LinearLayout;

    const/4 v12, 0x1

    invoke-virtual {v1, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v1, v7, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->emptyView:Landroid/widget/LinearLayout;

    const/16 v3, 0x11

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v1, v7, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->emptyView:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v7, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->emptyView:Landroid/widget/LinearLayout;

    invoke-static {v9, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v7, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->emptyView:Landroid/widget/LinearLayout;

    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, v7, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->emptyImageView:Landroid/widget/ImageView;

    sget v2, Lorg/telegram/messenger/R$drawable;->music_empty:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, v7, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->emptyImageView:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_dialogEmptyImage:I

    invoke-virtual {v7, v4}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(I)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v1, v7, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->emptyView:Landroid/widget/LinearLayout;

    iget-object v2, v7, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->emptyImageView:Landroid/widget/ImageView;

    const/4 v4, -0x2

    invoke-static {v4, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, v7, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->emptyTitleTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogEmptyText:I

    invoke-virtual {v7, v2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, v7, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->emptyTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v1, v7, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->emptyTitleTextView:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, v7, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->emptyTitleTextView:Landroid/widget/TextView;

    const/high16 v4, 0x41880000    # 17.0f

    invoke-virtual {v1, v12, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, v7, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->emptyTitleTextView:Landroid/widget/TextView;

    const/high16 v4, 0x42200000    # 40.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v1, v5, v10, v6, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v1, v7, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->emptyView:Landroid/widget/LinearLayout;

    iget-object v5, v7, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->emptyTitleTextView:Landroid/widget/TextView;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/4 v13, -0x2

    const/4 v14, -0x2

    const/16 v15, 0x11

    const/16 v16, 0x0

    const/16 v17, 0xb

    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, v7, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->emptySubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, v7, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->emptySubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v1, v7, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->emptySubtitleTextView:Landroid/widget/TextView;

    const/high16 v2, 0x41700000    # 15.0f

    invoke-virtual {v1, v12, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, v7, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->emptySubtitleTextView:Landroid/widget/TextView;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v1, v2, v10, v3, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v1, v7, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->emptyView:Landroid/widget/LinearLayout;

    iget-object v2, v7, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->emptySubtitleTextView:Landroid/widget/TextView;

    const/16 v17, 0x6

    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$2;

    invoke-direct {v1, v7, v8, v0}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$2;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v1, v7, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v10}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    iget-object v13, v7, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v14, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$3;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v0, 0x41100000    # 9.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    iget-object v6, v7, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v0, v14

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$3;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;Landroid/content/Context;IZILandroidx/recyclerview/widget/RecyclerView;)V

    iput-object v14, v7, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v13, v14}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v10}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v10}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/4 v13, -0x1

    const/high16 v14, -0x40800000    # -1.0f

    const/16 v15, 0x33

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$ListAdapter;

    invoke-direct {v1, v7, v8}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$ListAdapter;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;Landroid/content/Context;)V

    iput-object v1, v7, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$ListAdapter;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogScrollGlow:I

    invoke-virtual {v7, v1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setGlowColor(I)V

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$$ExternalSyntheticLambda1;

    invoke-direct {v1, v7}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$$ExternalSyntheticLambda2;

    invoke-direct {v1, v7}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$4;

    invoke-direct {v1, v7}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$4;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$SearchAdapter;

    invoke-direct {v0, v7, v8}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$SearchAdapter;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;Landroid/content/Context;)V

    iput-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->searchAdapter:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$SearchAdapter;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getShadowHeight()I

    move-result v1

    invoke-direct {v0, v9, v1, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    const/high16 v1, 0x42680000    # 58.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    new-instance v1, Landroid/view/View;

    invoke-direct {v1, v8}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, v7, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->shadow:Landroid/view/View;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogShadowLine:I

    invoke-virtual {v7, v2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v1, v7, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->shadow:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, v7, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->shadow:Landroid/view/View;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v1, v7, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->shadow:Landroid/view/View;

    invoke-virtual {v7, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->frameLayout:Landroid/widget/FrameLayout;

    const/16 v1, 0x3a

    invoke-static {v9, v1, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->updateEmptyView()V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;)Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$ListAdapter;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$ListAdapter;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->updateEmptyView()V

    return-void
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->emptySubtitleTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;)Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$SearchAdapter;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->searchAdapter:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$SearchAdapter;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->updateEmptyViewPosition()V

    return-void
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;)Landroid/animation/AnimatorSet;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->shadowAnimation:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$502(Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->shadowAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->shadow:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->audioEntries:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$802(Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;Lorg/telegram/messenger/MessageObject;)Lorg/telegram/messenger/MessageObject;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->playingAudio:Lorg/telegram/messenger/MessageObject;

    return-object p1
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;)Landroid/util/LongSparseArray;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->selectedAudios:Landroid/util/LongSparseArray;

    return-object p0
.end method

.method private synthetic lambda$loadAudio$4(Ljava/util/ArrayList;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->loadingAudio:Z

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->audioEntries:Ljava/util/ArrayList;

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$ListAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$ListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private synthetic lambda$loadAudio$5()V
    .locals 15

    const-string v4, "duration"

    const-string v5, "album"

    const-string v0, "_id"

    const-string v1, "artist"

    const-string v2, "title"

    const-string v3, "_data"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v9, "is_music != 0"

    const-string v11, "title"

    const/4 v10, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const v2, -0x77359400

    :goto_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Lorg/telegram/messenger/MediaController$AudioEntry;

    invoke-direct {v3}, Lorg/telegram/messenger/MediaController$AudioEntry;-><init>()V

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    int-to-long v5, v5

    iput-wide v5, v3, Lorg/telegram/messenger/MediaController$AudioEntry;->id:J

    const/4 v5, 0x1

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lorg/telegram/messenger/MediaController$AudioEntry;->author:Ljava/lang/String;

    const/4 v6, 0x2

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lorg/telegram/messenger/MediaController$AudioEntry;->title:Ljava/lang/String;

    const/4 v6, 0x3

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lorg/telegram/messenger/MediaController$AudioEntry;->path:Ljava/lang/String;

    const/4 v7, 0x4

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    long-to-int v8, v7

    iput v8, v3, Lorg/telegram/messenger/MediaController$AudioEntry;->duration:I

    const/4 v7, 0x5

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lorg/telegram/messenger/MediaController$AudioEntry;->genre:Ljava/lang/String;

    new-instance v7, Ljava/io/File;

    iget-object v8, v3, Lorg/telegram/messenger/MediaController$AudioEntry;->path:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    iput-boolean v5, v8, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    iput v2, v8, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    new-instance v11, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v11}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v11, v8, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    new-instance v11, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v11}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v11, v8, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-object v12, v8, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-object v13, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v13, v13, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v13}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v13

    invoke-virtual {v13}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v13

    iput-wide v13, v11, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    iput-wide v13, v12, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    div-long/2addr v11, v9

    long-to-int v9, v11

    iput v9, v8, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    const-string v9, ""

    iput-object v9, v8, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    iget-object v9, v3, Lorg/telegram/messenger/MediaController$AudioEntry;->path:Ljava/lang/String;

    iput-object v9, v8, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    new-instance v9, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    invoke-direct {v9}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;-><init>()V

    iput-object v9, v8, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget v10, v9, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    or-int/2addr v10, v6

    iput v10, v9, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    new-instance v10, Lorg/telegram/tgnet/TLRPC$TL_document;

    invoke-direct {v10}, Lorg/telegram/tgnet/TLRPC$TL_document;-><init>()V

    iput-object v10, v9, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget v9, v8, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit16 v9, v9, 0x300

    iput v9, v8, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    invoke-static {v7}, Lorg/telegram/messenger/FileLoader;->getFileExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, v8, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const-wide/16 v11, 0x0

    iput-wide v11, v10, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iput-wide v11, v10, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    new-array v11, v4, [B

    iput-object v11, v10, Lorg/telegram/tgnet/TLRPC$Document;->file_reference:[B

    iget v11, v8, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    iput v11, v10, Lorg/telegram/tgnet/TLRPC$Document;->date:I

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "audio/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_0

    goto :goto_1

    :cond_0
    const-string v9, "mp3"

    :goto_1
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v10, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    iget-object v9, v8, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v10

    long-to-int v11, v10

    int-to-long v10, v11

    iput-wide v10, v9, Lorg/telegram/tgnet/TLRPC$Document;->size:J

    iget-object v9, v8, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iput v4, v9, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    new-instance v9, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    invoke-direct {v9}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;-><init>()V

    iget v10, v3, Lorg/telegram/messenger/MediaController$AudioEntry;->duration:I

    int-to-double v10, v10

    iput-wide v10, v9, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->duration:D

    iget-object v10, v3, Lorg/telegram/messenger/MediaController$AudioEntry;->title:Ljava/lang/String;

    iput-object v10, v9, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->title:Ljava/lang/String;

    iget-object v10, v3, Lorg/telegram/messenger/MediaController$AudioEntry;->author:Ljava/lang/String;

    iput-object v10, v9, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->performer:Ljava/lang/String;

    iget v10, v9, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->flags:I

    or-int/2addr v6, v10

    iput v6, v9, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->flags:I

    iget-object v6, v8, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;-><init>()V

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->file_name:Ljava/lang/String;

    iget-object v7, v8, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lorg/telegram/messenger/MessageObject;

    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v7, v7, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-direct {v6, v7, v8, v4, v5}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    iput-object v6, v3, Lorg/telegram/messenger/MediaController$AudioEntry;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    goto :goto_2

    :cond_1
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    :catch_0
    move-exception v1

    goto :goto_4

    :goto_2
    if-eqz v1, :cond_2

    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_3
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_5
    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;Ljava/util/ArrayList;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$new$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$new$1(Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->onItemClick(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$new$2(Landroid/view/View;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->onItemClick(Landroid/view/View;)V

    const/4 p1, 0x1

    return p1
.end method

.method private synthetic lambda$sendSelectedItems$3(Ljava/util/ArrayList;ZIJZLjava/lang/Long;)V
    .locals 11

    move-object v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->delegate:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$AudioSelectDelegate;

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->getCommentView()Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EditTextEmoji;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    move-object v2, p1

    move v4, p2

    move v5, p3

    move-wide v6, p4

    move/from16 v8, p6

    invoke-interface/range {v1 .. v10}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$AudioSelectDelegate;->didSelectAudio(Ljava/util/ArrayList;Ljava/lang/CharSequence;ZIJZJ)V

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss(Z)V

    return-void
.end method

.method private loadAudio()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->loadingAudio:Z

    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private onItemClick(Landroid/view/View;)V
    .locals 14

    const/4 v0, 0x0

    const/4 v1, 0x1

    instance-of v2, p1, Lorg/telegram/ui/Cells/SharedAudioCell;

    if-nez v2, :cond_0

    return-void

    :cond_0
    check-cast p1, Lorg/telegram/ui/Cells/SharedAudioCell;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MediaController$AudioEntry;

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-boolean v3, v3, Lorg/telegram/ui/Components/ChatAttachAlert;->isStoryAudioPicker:Z

    if-eqz v3, :cond_1

    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->sendPressed:Z

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object p1, v2, Lorg/telegram/messenger/MediaController$AudioEntry;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->delegate:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$AudioSelectDelegate;

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->getCommentView()Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EditTextEmoji;->getText()Landroid/text/Editable;

    move-result-object v6

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    invoke-interface/range {v4 .. v13}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$AudioSelectDelegate;->didSelectAudio(Ljava/util/ArrayList;Ljava/lang/CharSequence;ZIJZJ)V

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->selectedAudios:Landroid/util/LongSparseArray;

    iget-wide v4, v2, Lorg/telegram/messenger/MediaController$AudioEntry;->id:J

    invoke-virtual {v3, v4, v5}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    move-result v3

    if-ltz v3, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->selectedAudios:Landroid/util/LongSparseArray;

    iget-wide v4, v2, Lorg/telegram/messenger/MediaController$AudioEntry;->id:J

    invoke-virtual {v3, v4, v5}, Landroid/util/LongSparseArray;->remove(J)V

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->selectedAudiosOrder:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Cells/SharedAudioCell;->setChecked(ZZ)V

    goto :goto_1

    :cond_2
    iget v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->maxSelectedFiles:I

    if-ltz v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->selectedAudios:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    iget v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->maxSelectedFiles:I

    if-lt v3, v4, :cond_3

    sget p1, Lorg/telegram/messenger/R$string;->PassportUploadMaxReached:I

    new-array v2, v0, [Ljava/lang/Object;

    const-string v3, "Files"

    invoke-static {v3, v4, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v0

    const-string v0, "PassportUploadMaxReached"

    invoke-static {v0, p1, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->showErrorBox(Ljava/lang/String;)V

    return-void

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->selectedAudios:Landroid/util/LongSparseArray;

    iget-wide v3, v2, Lorg/telegram/messenger/MediaController$AudioEntry;->id:J

    invoke-virtual {v0, v3, v4, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->selectedAudiosOrder:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v1, v1}, Lorg/telegram/ui/Cells/SharedAudioCell;->setChecked(ZZ)V

    goto :goto_0

    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x2

    :goto_2
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->updateCountButton(I)V

    return-void
.end method

.method private runShadowAnimation(Z)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->shadow:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    if-nez p1, :cond_6

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->shadow:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_6

    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->shadow:Landroid/view/View;

    if-eqz p1, :cond_2

    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_0
    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    if-eqz p1, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->shadow:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->shadowAnimation:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_4
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->shadowAnimation:Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->shadow:Landroid/view/View;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    if-eqz p1, :cond_5

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_5
    const/4 v5, 0x0

    :goto_1
    new-array v6, v1, [F

    aput v5, v6, v0

    invoke-static {v3, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-array v1, v1, [Landroid/animation/Animator;

    aput-object v3, v1, v0

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->shadowAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->shadowAnimation:Landroid/animation/AnimatorSet;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$5;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$5;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->shadowAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    :cond_6
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

.method private updateEmptyView()V
    .locals 3

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->loadingAudio:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->currentEmptyView:Landroid/view/View;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->emptyView:Landroid/widget/LinearLayout;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->searchAdapter:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$SearchAdapter;

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->emptyTitleTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->NoAudioFound:I

    :goto_1
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->emptyTitleTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->NoAudioFiles:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->emptySubtitleTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->NoAudioFilesInfo:I

    goto :goto_1

    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->emptyView:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->currentEmptyView:Landroid/view/View;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    goto :goto_0

    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->searchAdapter:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$SearchAdapter;

    if-ne v0, v2, :cond_2

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$SearchAdapter;->access$400(Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$SearchAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    :goto_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    goto :goto_5

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->audioEntries:Ljava/util/ArrayList;

    goto :goto_4

    :goto_5
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->currentEmptyView:Landroid/view/View;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    :cond_3
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->updateEmptyViewPosition()V

    return-void
.end method

.method private updateEmptyViewPosition()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->currentEmptyView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->currentEmptyView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    add-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    int-to-float v0, v2

    iget v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->currentPanTranslationProgress:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method


# virtual methods
.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 4

    sget p2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidReset:I

    if-eq p1, p2, :cond_0

    sget v0, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidStart:I

    if-eq p1, v0, :cond_0

    sget v0, Lorg/telegram/messenger/NotificationCenter;->messagePlayingPlayStateChanged:I

    if-ne p1, v0, :cond_6

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, p2, :cond_4

    sget p2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingPlayStateChanged:I

    if-ne p1, p2, :cond_1

    goto :goto_1

    :cond_1
    sget p2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidStart:I

    if-ne p1, p2, :cond_6

    aget-object p1, p3, v1

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    iget-wide p1, p1, Lorg/telegram/messenger/MessageObject;->eventId:J

    const-wide/16 v2, 0x0

    cmp-long p3, p1, v2

    if-eqz p3, :cond_2

    return-void

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_6

    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p3, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    instance-of v2, p3, Lorg/telegram/ui/Cells/SharedAudioCell;

    if-eqz v2, :cond_3

    check-cast p3, Lorg/telegram/ui/Cells/SharedAudioCell;

    invoke-virtual {p3}, Lorg/telegram/ui/Cells/SharedAudioCell;->getMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p3, v1, v0}, Lorg/telegram/ui/Cells/SharedAudioCell;->updateButtonState(ZZ)V

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    :goto_2
    if-ge p2, p1, :cond_6

    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p3, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    instance-of v2, p3, Lorg/telegram/ui/Cells/SharedAudioCell;

    if-eqz v2, :cond_5

    check-cast p3, Lorg/telegram/ui/Cells/SharedAudioCell;

    invoke-virtual {p3}, Lorg/telegram/ui/Cells/SharedAudioCell;->getMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {p3, v1, v0}, Lorg/telegram/ui/Cells/SharedAudioCell;->updateButtonState(ZZ)V

    :cond_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_6
    return-void
.end method

.method public getCurrentItemTop()I
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    const v0, 0x7fffffff

    return v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v0, v3

    if-lez v0, :cond_1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v3

    if-nez v3, :cond_1

    move v3, v0

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-ltz v0, :cond_2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->runShadowAnimation(Z)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->runShadowAnimation(Z)V

    move v0, v3

    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->frameLayout:Landroid/widget/FrameLayout;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getFirstOffset()I
    .locals 2

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->getListTopPadding()I

    move-result v0

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getListTopPadding()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    return v0
.end method

.method public getSelected()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->selectedAudiosOrder:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->selectedAudiosOrder:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MediaController$AudioEntry;

    iget-object v2, v2, Lorg/telegram/messenger/MediaController$AudioEntry;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getSelectedItemsCount()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->selectedAudios:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    return v0
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 33
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

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->frameLayout:Landroid/widget/FrameLayout;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->searchField:Lorg/telegram/ui/Components/SearchField;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/SearchField;->getSearchBackground()Landroid/view/View;

    move-result-object v12

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v18, Lorg/telegram/ui/ActionBar/Theme;->key_dialogSearchBackground:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->searchField:Lorg/telegram/ui/Components/SearchField;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    const-class v12, Lorg/telegram/ui/Components/SearchField;

    const/4 v13, 0x1

    new-array v6, v13, [Ljava/lang/Class;

    const/4 v14, 0x0

    aput-object v12, v6, v14

    const-string v3, "searchIconImageView"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v7

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_dialogSearchIcon:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, v2

    move/from16 v11, v23

    invoke-direct/range {v3 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->searchField:Lorg/telegram/ui/Components/SearchField;

    sget v17, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    new-array v4, v13, [Ljava/lang/Class;

    aput-object v12, v4, v14

    const-string v5, "clearSearchImageView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v19

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v20, 0x0

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    invoke-direct/range {v15 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->searchField:Lorg/telegram/ui/Components/SearchField;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/SearchField;->getSearchEditText()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v6

    sget v7, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_dialogSearchText:I

    const/4 v11, 0x0

    move-object v5, v2

    invoke-direct/range {v5 .. v12}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->searchField:Lorg/telegram/ui/Components/SearchField;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/SearchField;->getSearchEditText()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v16

    sget v17, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_dialogSearchHint:I

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v15, v2

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->searchField:Lorg/telegram/ui/Components/SearchField;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/SearchField;->getSearchEditText()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v4

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CURSORCOLOR:I

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addedIcon:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->emptyImageView:Landroid/widget/ImageView;

    sget v17, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_dialogEmptyImage:I

    move-object v15, v2

    move-object/from16 v16, v3

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->emptyTitleTextView:Landroid/widget/TextView;

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_dialogEmptyText:I

    const/4 v10, 0x0

    move-object v4, v2

    move/from16 v11, v22

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->emptySubtitleTextView:Landroid/widget/TextView;

    sget v17, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    move-object v15, v2

    move-object/from16 v16, v3

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_dialogScrollGlow:I

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v17, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    move-object v15, v2

    move-object/from16 v16, v3

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v7, v13, [Ljava/lang/Class;

    const-class v3, Landroid/view/View;

    aput-object v3, v7, v14

    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    const/4 v6, 0x0

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    sget v17, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_emptyListPlaceholder:I

    move-object v15, v2

    move-object/from16 v16, v3

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_PROGRESSBAR:I

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_progressCircle:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v17, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOX:I

    const-class v4, Lorg/telegram/ui/Cells/SharedAudioCell;

    new-array v5, v13, [Ljava/lang/Class;

    aput-object v4, v5, v14

    const-string v6, "checkBox"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v19

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_checkbox:I

    const/16 v22, 0x0

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v5

    invoke-direct/range {v15 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v26, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOXCHECK:I

    new-array v5, v13, [Ljava/lang/Class;

    aput-object v4, v5, v14

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v28

    sget v32, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxCheck:I

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v29, 0x0

    move-object/from16 v24, v2

    move-object/from16 v25, v3

    move-object/from16 v27, v5

    invoke-direct/range {v24 .. v32}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v17, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v5, v13, [Ljava/lang/Class;

    aput-object v4, v5, v14

    sget-object v19, Lorg/telegram/ui/ActionBar/Theme;->chat_contextResult_titleTextPaint:Landroid/text/TextPaint;

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v5

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v25, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v5, v13, [Ljava/lang/Class;

    aput-object v4, v5, v14

    sget-object v27, Lorg/telegram/ui/ActionBar/Theme;->chat_contextResult_descriptionTextPaint:Landroid/text/TextPaint;

    sget v30, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    const/16 v28, 0x0

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v5

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public onContainerTranslationUpdated(F)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->currentPanTranslationProgress:F

    invoke-super {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onContainerTranslationUpdated(F)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->updateEmptyViewPosition()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->onHide()V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidReset:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidStart:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagePlayingPlayStateChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public onDismiss()Z
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->playingAudio:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->playingAudio:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MediaController;->isPlayingMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lorg/telegram/messenger/MediaController;->cleanupPlayer(ZZ)V

    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onDismiss()Z

    move-result v0

    return v0
.end method

.method public onHidden()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->selectedAudios:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->selectedAudiosOrder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public onHide()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->playingAudio:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->playingAudio:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MediaController;->isPlayingMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lorg/telegram/messenger/MediaController;->cleanupPlayer(ZZ)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->playingAudio:Lorg/telegram/messenger/MessageObject;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->updateEmptyViewPosition()V

    return-void
.end method

.method public onPreMeasure(II)V
    .locals 3

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->measureKeyboardHeight()I

    move-result p1

    const/high16 v0, 0x41a00000    # 20.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-le p1, v0, :cond_0

    const/high16 p1, 0x41000000    # 8.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p2, v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->setAllowNestedScroll(Z)V

    goto :goto_1

    :cond_0
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    if-le v0, p1, :cond_1

    int-to-float p1, p2

    const/high16 p2, 0x40600000    # 3.5f

    div-float/2addr p1, p2

    float-to-int p1, p1

    goto :goto_0

    :cond_1
    div-int/lit8 p2, p2, 0x5

    mul-int/lit8 p2, p2, 0x2

    move p1, p2

    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->setAllowNestedScroll(Z)V

    :goto_1
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    if-eq p2, p1, :cond_2

    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->ignoreLayout:Z

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/high16 v0, 0x42400000    # 48.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {p2, v2, p1, v2, v0}, Landroid/view/View;->setPadding(IIII)V

    iput-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->ignoreLayout:Z

    :cond_2
    return-void
.end method

.method public onShow(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$ListAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$ListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public requestLayout()V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->ignoreLayout:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public scrollToTop()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void
.end method

.method public sendSelectedItems(ZIJZ)Z
    .locals 14

    move-object v8, p0

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->selectedAudios:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->delegate:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$AudioSelectDelegate;

    if-eqz v0, :cond_2

    iget-boolean v0, v8, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->sendPressed:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, v8, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->sendPressed:Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->selectedAudiosOrder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->selectedAudiosOrder:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MediaController$AudioEntry;

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$AudioEntry;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v9, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getDialogId()J

    move-result-wide v10

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, v8, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->getAdditionalMessagesCount()I

    move-result v1

    add-int v12, v0, v1

    new-instance v13, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$$ExternalSyntheticLambda3;

    move-object v0, v13

    move-object v1, p0

    move v3, p1

    move/from16 v4, p2

    move-wide/from16 v5, p3

    move/from16 v7, p5

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;Ljava/util/ArrayList;ZIJZ)V

    invoke-static {v9, v10, v11, v12, v13}, Lorg/telegram/ui/Components/AlertsCreator;->ensurePaidMessageConfirmation(IJILorg/telegram/messenger/Utilities$Callback;)Z

    move-result v0

    return v0

    :cond_2
    :goto_1
    return v1
.end method

.method public setDelegate(Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$AudioSelectDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->delegate:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$AudioSelectDelegate;

    return-void
.end method

.method public setMaxSelectedFiles(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->maxSelectedFiles:I

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
