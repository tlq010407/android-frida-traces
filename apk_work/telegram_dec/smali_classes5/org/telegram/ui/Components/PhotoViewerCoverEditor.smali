.class public Lorg/telegram/ui/Components/PhotoViewerCoverEditor;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field public actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

.field private aspectRatio:F

.field public button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

.field public close:Ljava/lang/Runnable;

.field private gallerySheet:Lorg/telegram/ui/Stories/recorder/GallerySheet;

.field private onGalleryListener:Lorg/telegram/messenger/Utilities$Callback;

.field public openGalleryButton:Lorg/telegram/ui/Components/EditCoverButton;

.field private time:J

.field public timelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

.field private videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;


# direct methods
.method public static synthetic $r8$lambda$kgNoaoyXofcOM8WB0XqmSoHuVYo(Lorg/telegram/ui/Components/PhotoViewerCoverEditor;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/PhotoViewerCoverEditor;->lambda$new$1(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rgXYhpoIhZKi5hj8ri1geiPpG6s(Lorg/telegram/ui/Components/PhotoViewerCoverEditor;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoViewerCoverEditor;->lambda$new$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/PhotoViewer;Lorg/telegram/ui/Components/BlurringShader$BlurManager;)V
    .locals 10

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/telegram/ui/Components/PhotoViewerCoverEditor;->time:J

    const v0, 0x3fb1eb85    # 1.39f

    iput v0, p0, Lorg/telegram/ui/Components/PhotoViewerCoverEditor;->aspectRatio:F

    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-direct {v0, p1, p2}, Lorg/telegram/ui/ActionBar/ActionBar;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCoverEditor;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCoverEditor;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$string;->EditorSetCoverTitle:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCoverEditor;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCoverEditor;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v3, 0x22ffffff

    invoke-virtual {v0, v3, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCoverEditor;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v3, Lorg/telegram/ui/Components/PhotoViewerCoverEditor$1;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/PhotoViewerCoverEditor$1;-><init>(Lorg/telegram/ui/Components/PhotoViewerCoverEditor;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCoverEditor;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v3, -0x2

    const/16 v4, 0x37

    invoke-static {v1, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/Stories/recorder/TimelineView;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, v0

    move-object v4, p1

    move-object v7, p2

    move-object v8, p4

    invoke-direct/range {v3 .. v8}, Lorg/telegram/ui/Stories/recorder/TimelineView;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/BlurringShader$BlurManager;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCoverEditor;->timelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->setCover()V

    iget-object p4, p0, Lorg/telegram/ui/Components/PhotoViewerCoverEditor;->timelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

    invoke-static {}, Lorg/telegram/ui/Stories/recorder/TimelineView;->heightDp()I

    move-result v0

    int-to-float v4, v0

    const/4 v8, 0x0

    const/high16 v9, 0x42940000    # 74.0f

    const/4 v3, -0x1

    const/16 v5, 0x57

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p4, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-direct {p4, p1, p2}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p4, p0, Lorg/telegram/ui/Components/PhotoViewerCoverEditor;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    sget v0, Lorg/telegram/messenger/R$string;->EditorSetCoverSave:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0, v2}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    iget-object p4, p0, Lorg/telegram/ui/Components/PhotoViewerCoverEditor;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const/high16 v5, 0x41200000    # 10.0f

    const/high16 v6, 0x41200000    # 10.0f

    const/4 v0, -0x1

    const/high16 v1, 0x42400000    # 48.0f

    const/16 v2, 0x57

    const/high16 v3, 0x41200000    # 10.0f

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p4, Lorg/telegram/ui/Components/EditCoverButton;

    sget v0, Lorg/telegram/messenger/R$string;->EditorSetCoverGallery:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p4, p1, p3, v0, v1}, Lorg/telegram/ui/Components/EditCoverButton;-><init>(Landroid/content/Context;Lorg/telegram/ui/PhotoViewer;Ljava/lang/CharSequence;Z)V

    iput-object p4, p0, Lorg/telegram/ui/Components/PhotoViewerCoverEditor;->openGalleryButton:Lorg/telegram/ui/Components/EditCoverButton;

    new-instance p3, Lorg/telegram/ui/Components/PhotoViewerCoverEditor$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, p1, p2}, Lorg/telegram/ui/Components/PhotoViewerCoverEditor$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/PhotoViewerCoverEditor;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {p4, p3}, Lorg/telegram/ui/Components/EditCoverButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerCoverEditor;->openGalleryButton:Lorg/telegram/ui/Components/EditCoverButton;

    const/high16 v5, 0x42700000    # 60.0f

    const/high16 v6, 0x43060000    # 134.0f

    const/4 v0, -0x1

    const/high16 v1, 0x42000000    # 32.0f

    const/high16 v3, 0x42700000    # 60.0f

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerCoverEditor;->timelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

    new-instance p2, Lorg/telegram/ui/Components/PhotoViewerCoverEditor$2;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/PhotoViewerCoverEditor$2;-><init>(Lorg/telegram/ui/Components/PhotoViewerCoverEditor;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Stories/recorder/TimelineView;->setDelegate(Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/PhotoViewerCoverEditor;)Lorg/telegram/ui/Components/VideoPlayer;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/PhotoViewerCoverEditor;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/PhotoViewerCoverEditor;)J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/ui/Components/PhotoViewerCoverEditor;->time:J

    return-wide v0
.end method

.method static synthetic access$102(Lorg/telegram/ui/Components/PhotoViewerCoverEditor;J)J
    .locals 0

    iput-wide p1, p0, Lorg/telegram/ui/Components/PhotoViewerCoverEditor;->time:J

    return-wide p1
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCoverEditor;->gallerySheet:Lorg/telegram/ui/Stories/recorder/GallerySheet;

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)V
    .locals 6

    iget-object p3, p0, Lorg/telegram/ui/Components/PhotoViewerCoverEditor;->gallerySheet:Lorg/telegram/ui/Stories/recorder/GallerySheet;

    if-nez p3, :cond_0

    new-instance p3, Lorg/telegram/ui/Stories/recorder/GallerySheet;

    sget v0, Lorg/telegram/messenger/R$string;->VideoChooseCover:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget v5, p0, Lorg/telegram/ui/Components/PhotoViewerCoverEditor;->aspectRatio:F

    const/4 v4, 0x1

    move-object v0, p3

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Stories/recorder/GallerySheet;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/String;ZF)V

    iput-object p3, p0, Lorg/telegram/ui/Components/PhotoViewerCoverEditor;->gallerySheet:Lorg/telegram/ui/Stories/recorder/GallerySheet;

    new-instance p1, Lorg/telegram/ui/Components/PhotoViewerCoverEditor$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/PhotoViewerCoverEditor$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/PhotoViewerCoverEditor;)V

    invoke-virtual {p3, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setOnDismissListener(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerCoverEditor;->gallerySheet:Lorg/telegram/ui/Stories/recorder/GallerySheet;

    iget-object p2, p0, Lorg/telegram/ui/Components/PhotoViewerCoverEditor;->onGalleryListener:Lorg/telegram/messenger/Utilities$Callback;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Stories/recorder/GallerySheet;->setOnGalleryImage(Lorg/telegram/messenger/Utilities$Callback;)V

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerCoverEditor;->gallerySheet:Lorg/telegram/ui/Stories/recorder/GallerySheet;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/GallerySheet;->show()V

    return-void
.end method


# virtual methods
.method public closeGallery()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCoverEditor;->gallerySheet:Lorg/telegram/ui/Stories/recorder/GallerySheet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/GallerySheet;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCoverEditor;->gallerySheet:Lorg/telegram/ui/Stories/recorder/GallerySheet;

    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 7

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCoverEditor;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoViewerCoverEditor;->timelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Stories/recorder/TimelineView;->setVideo(ZLjava/lang/String;JF)V

    return-void
.end method

.method public getTime()J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/ui/Components/PhotoViewerCoverEditor;->time:J

    return-wide v0
.end method

.method public set(Lorg/telegram/messenger/MediaController$PhotoEntry;Lorg/telegram/ui/Components/VideoPlayer;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 10

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCoverEditor;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v0, p3}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->updateColors(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iget p3, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->width:I

    const v0, 0x3fb1eb85    # 1.39f

    if-lez p3, :cond_0

    iget v1, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->height:I

    if-lez v1, :cond_0

    int-to-float v1, v1

    int-to-float p3, p3

    div-float/2addr v1, p3

    const p3, 0x3f59999a    # 0.85f

    invoke-static {v1, v0, p3}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result p3

    iput p3, p0, Lorg/telegram/ui/Components/PhotoViewerCoverEditor;->aspectRatio:F

    goto :goto_0

    :cond_0
    iput v0, p0, Lorg/telegram/ui/Components/PhotoViewerCoverEditor;->aspectRatio:F

    :goto_0
    iput-object p2, p0, Lorg/telegram/ui/Components/PhotoViewerCoverEditor;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    iget-wide v0, p1, Lorg/telegram/messenger/MediaController$MediaEditState;->coverSavedPosition:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-ltz p1, :cond_1

    iput-wide v0, p0, Lorg/telegram/ui/Components/PhotoViewerCoverEditor;->time:J

    const/4 p1, 0x0

    invoke-virtual {p2, v0, v1, p1}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(JZ)V

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lorg/telegram/ui/Components/VideoPlayer;->getCurrentPosition()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/PhotoViewerCoverEditor;->time:J

    :goto_1
    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoViewerCoverEditor;->timelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/VideoPlayer;->getCurrentUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Lorg/telegram/ui/Components/VideoPlayer;->getDuration()J

    move-result-wide v7

    iget-object p1, p2, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getVolume()F

    move-result v9

    const/4 v5, 0x0

    invoke-virtual/range {v4 .. v9}, Lorg/telegram/ui/Stories/recorder/TimelineView;->setVideo(ZLjava/lang/String;JF)V

    invoke-virtual {p2}, Lorg/telegram/ui/Components/VideoPlayer;->getDuration()J

    move-result-wide v0

    const-wide/16 v4, 0x3c

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    long-to-float p1, v4

    const p3, 0x40333333    # 2.8f

    div-float/2addr p3, p1

    iget-wide v4, p0, Lorg/telegram/ui/Components/PhotoViewerCoverEditor;->time:J

    long-to-float p1, v4

    invoke-virtual {p2}, Lorg/telegram/ui/Components/VideoPlayer;->getDuration()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    long-to-float p2, v4

    div-float/2addr p1, p2

    const/high16 p2, 0x3f800000    # 1.0f

    sub-float/2addr p2, p3

    mul-float p1, p1, p2

    iget-object p2, p0, Lorg/telegram/ui/Components/PhotoViewerCoverEditor;->timelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Stories/recorder/TimelineView;->setVideoLeft(F)V

    iget-object p2, p0, Lorg/telegram/ui/Components/PhotoViewerCoverEditor;->timelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

    add-float/2addr p1, p3

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Stories/recorder/TimelineView;->setVideoRight(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerCoverEditor;->timelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

    invoke-virtual {p1, v2, v3, v0, v1}, Lorg/telegram/ui/Stories/recorder/TimelineView;->setCoverVideo(JJ)V

    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerCoverEditor;->timelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/TimelineView;->normalizeScrollByVideo()V

    return-void
.end method

.method public setOnClose(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerCoverEditor;->close:Ljava/lang/Runnable;

    return-void
.end method

.method public setOnGalleryImage(Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/Utilities$Callback<",
            "Lorg/telegram/messenger/MediaController$PhotoEntry;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerCoverEditor;->onGalleryListener:Lorg/telegram/messenger/Utilities$Callback;

    return-void
.end method
