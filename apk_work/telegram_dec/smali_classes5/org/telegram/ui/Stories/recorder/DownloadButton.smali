.class public Lorg/telegram/ui/Stories/recorder/DownloadButton;
.super Landroid/widget/ImageView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Stories/recorder/DownloadButton$BuildingVideo;,
        Lorg/telegram/ui/Stories/recorder/DownloadButton$PreparingVideoToast;
    }
.end annotation


# instance fields
.field private buildingVideo:Lorg/telegram/ui/Stories/recorder/DownloadButton$BuildingVideo;

.field private container:Landroid/widget/FrameLayout;

.field private currentAccount:I

.field private currentEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

.field private downloading:Z

.field private downloadingVideo:Z

.field private prepare:Lorg/telegram/messenger/Utilities$Callback;

.field private preparing:Z

.field private progressDrawable:Lorg/telegram/ui/Components/CircularProgressDrawable;

.field private resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private savedToGalleryUri:Landroid/net/Uri;

.field private toast:Lorg/telegram/ui/Stories/recorder/DownloadButton$PreparingVideoToast;

.field private wasImageDownloading:Z

.field private wasVideoDownloading:Z


# direct methods
.method public static synthetic $r8$lambda$22AjVVOAh3-RsY6WjZc6c_AWzIE(Lorg/telegram/ui/Stories/recorder/DownloadButton;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/DownloadButton;->lambda$onClickInternal$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$5ztkyw4_aDt3z_u4pWr6N5I7dGw(Lorg/telegram/ui/Stories/recorder/DownloadButton;Landroid/net/Uri;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/DownloadButton;->lambda$onClickInternal$6(Landroid/net/Uri;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NOxNtlNPcq6bRKwrR69ac6g_nMI(Lorg/telegram/ui/Stories/recorder/DownloadButton;Ljava/io/File;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/DownloadButton;->lambda$onClickInternal$3(Ljava/io/File;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OeAKREpL1m4ti0IkRjSXI35NdsM(Lorg/telegram/ui/Stories/recorder/DownloadButton;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/DownloadButton;->lambda$onClickInternal$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$XFwZ07DV4IzYLtlvHBXB2xPSvDY(Lorg/telegram/ui/Stories/recorder/DownloadButton;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/DownloadButton;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_HLY7VWkz7LHKi5ravyl428rwEk(Lorg/telegram/ui/Stories/recorder/DownloadButton;Ljava/io/File;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/DownloadButton;->lambda$onClickInternal$8(Ljava/io/File;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eBXX8vKqvdgGy6ArejdpojeCJ_E(Lorg/telegram/ui/Stories/recorder/DownloadButton;Ljava/io/File;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/DownloadButton;->lambda$onClickInternal$7(Ljava/io/File;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mpdB7uJWnpT5CykrmcybtMpxe1Q(Lorg/telegram/ui/Stories/recorder/DownloadButton;Ljava/lang/Float;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/DownloadButton;->lambda$onClickInternal$4(Ljava/lang/Float;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qdwXPPxhmgIfQqX4UrztkVW0Cwo(Lorg/telegram/ui/Stories/recorder/DownloadButton;Landroid/net/Uri;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/DownloadButton;->lambda$onClickInternal$2(Landroid/net/Uri;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yIXAxDVXMbpmKv10_DA0ex0RkW4(Lorg/telegram/ui/Stories/recorder/DownloadButton;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/DownloadButton;->onClickInternal()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/messenger/Utilities$Callback;ILandroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->wasImageDownloading:Z

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->wasVideoDownloading:Z

    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->prepare:Lorg/telegram/messenger/Utilities$Callback;

    iput p3, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->currentAccount:I

    iput-object p4, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->container:Landroid/widget/FrameLayout;

    iput-object p5, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    sget-object p1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance p1, Landroid/graphics/PorterDuffColorFilter;

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    const/4 p3, -0x1

    invoke-direct {p1, p3, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const p1, 0x20ffffff

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    new-instance p1, Lorg/telegram/ui/Stories/recorder/DownloadButton$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Stories/recorder/DownloadButton$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/recorder/DownloadButton;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Lorg/telegram/ui/Components/CircularProgressDrawable;

    const/high16 p2, 0x41900000    # 18.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    const/high16 p4, 0x40000000    # 2.0f

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    int-to-float p4, p4

    invoke-direct {p1, p2, p4, p3}, Lorg/telegram/ui/Components/CircularProgressDrawable;-><init>(FFI)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->progressDrawable:Lorg/telegram/ui/Components/CircularProgressDrawable;

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/DownloadButton;->updateImage()V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/DownloadButton;->onClick()V

    return-void
.end method

.method private synthetic lambda$onClickInternal$1()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->preparing:Z

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->buildingVideo:Lorg/telegram/ui/Stories/recorder/DownloadButton$BuildingVideo;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Stories/recorder/DownloadButton$BuildingVideo;->stop(Z)V

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->buildingVideo:Lorg/telegram/ui/Stories/recorder/DownloadButton$BuildingVideo;

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->toast:Lorg/telegram/ui/Stories/recorder/DownloadButton$PreparingVideoToast;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/DownloadButton$PreparingVideoToast;->hide()V

    :cond_1
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->downloading:Z

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/DownloadButton;->updateImage()V

    return-void
.end method

.method private synthetic lambda$onClickInternal$2(Landroid/net/Uri;)V
    .locals 4

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->downloading:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->currentEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->toast:Lorg/telegram/ui/Stories/recorder/DownloadButton$PreparingVideoToast;

    sget v1, Lorg/telegram/messenger/R$raw;->ic_save_to_gallery:I

    const-string v2, "VideoSavedHint"

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xdac

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Stories/recorder/DownloadButton$PreparingVideoToast;->setDone(ILjava/lang/CharSequence;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->downloading:Z

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/DownloadButton;->updateImage()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->savedToGalleryUri:Landroid/net/Uri;

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$onClickInternal$3(Ljava/io/File;)V
    .locals 8

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->downloading:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->currentEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v6, Lorg/telegram/ui/Stories/recorder/DownloadButton$$ExternalSyntheticLambda9;

    invoke-direct {v6, p0}, Lorg/telegram/ui/Stories/recorder/DownloadButton$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Stories/recorder/DownloadButton;)V

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static/range {v1 .. v7}, Lorg/telegram/messenger/MediaController;->saveFile(Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$onClickInternal$4(Ljava/lang/Float;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->toast:Lorg/telegram/ui/Stories/recorder/DownloadButton$PreparingVideoToast;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/recorder/DownloadButton$PreparingVideoToast;->setProgress(F)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onClickInternal$5()V
    .locals 4

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->downloading:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->currentEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->toast:Lorg/telegram/ui/Stories/recorder/DownloadButton$PreparingVideoToast;

    sget v1, Lorg/telegram/messenger/R$raw;->error:I

    const-string v2, "VideoConvertFail"

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xdac

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Stories/recorder/DownloadButton$PreparingVideoToast;->setDone(ILjava/lang/CharSequence;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->downloading:Z

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/DownloadButton;->updateImage()V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$onClickInternal$6(Landroid/net/Uri;)V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->downloading:Z

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/DownloadButton;->updateImage()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->toast:Lorg/telegram/ui/Stories/recorder/DownloadButton$PreparingVideoToast;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/DownloadButton$PreparingVideoToast;->hide()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->toast:Lorg/telegram/ui/Stories/recorder/DownloadButton$PreparingVideoToast;

    :cond_0
    new-instance v0, Lorg/telegram/ui/Stories/recorder/DownloadButton$PreparingVideoToast;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Stories/recorder/DownloadButton$PreparingVideoToast;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->toast:Lorg/telegram/ui/Stories/recorder/DownloadButton$PreparingVideoToast;

    sget v1, Lorg/telegram/messenger/R$raw;->ic_save_to_gallery:I

    const-string v2, "PhotoSavedHint"

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x9c4

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Stories/recorder/DownloadButton$PreparingVideoToast;->setDone(ILjava/lang/CharSequence;I)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->container:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->toast:Lorg/telegram/ui/Stories/recorder/DownloadButton$PreparingVideoToast;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->savedToGalleryUri:Landroid/net/Uri;

    return-void
.end method

.method private synthetic lambda$onClickInternal$7(Ljava/io/File;)V
    .locals 7

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v5, Lorg/telegram/ui/Stories/recorder/DownloadButton$$ExternalSyntheticLambda10;

    invoke-direct {v5, p0}, Lorg/telegram/ui/Stories/recorder/DownloadButton$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Stories/recorder/DownloadButton;)V

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/messenger/MediaController;->saveFile(Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;Z)V

    return-void
.end method

.method private synthetic lambda$onClickInternal$8(Ljava/io/File;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->currentEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->buildPhoto(Ljava/io/File;)V

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->downloading:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->currentEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/telegram/ui/Stories/recorder/DownloadButton$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Stories/recorder/DownloadButton$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Stories/recorder/DownloadButton;Ljava/io/File;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private onClick()V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    const/16 v1, 0x1c

    if-le v0, v1, :cond_0

    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->NO_SCOPED_STORAGE:Z

    if-eqz v1, :cond_2

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v1, v2}, Landroidx/core/widget/TextViewCompat$OreoCallback$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x71

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/FilesMigrationService$FilesMigrationBottomSheet$$ExternalSyntheticApiModelOutline1;->m(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_1
    return-void

    :cond_2
    iget-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->downloading:Z

    if-nez v1, :cond_9

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->currentEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->savedToGalleryUri:Landroid/net/Uri;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->savedToGalleryUri:Landroid/net/Uri;

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/DownloadButton$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/os/Bundle;)I

    :goto_0
    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->savedToGalleryUri:Landroid/net/Uri;

    goto :goto_1

    :cond_4
    const/16 v1, 0x1d

    if-ge v0, v1, :cond_5

    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->savedToGalleryUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_5
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->downloading:Z

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->toast:Lorg/telegram/ui/Stories/recorder/DownloadButton$PreparingVideoToast;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/DownloadButton$PreparingVideoToast;->hide()V

    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->toast:Lorg/telegram/ui/Stories/recorder/DownloadButton$PreparingVideoToast;

    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->buildingVideo:Lorg/telegram/ui/Stories/recorder/DownloadButton$BuildingVideo;

    if-eqz v1, :cond_7

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Stories/recorder/DownloadButton$BuildingVideo;->stop(Z)V

    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->buildingVideo:Lorg/telegram/ui/Stories/recorder/DownloadButton$BuildingVideo;

    :cond_7
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->prepare:Lorg/telegram/messenger/Utilities$Callback;

    if-eqz v1, :cond_8

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->preparing:Z

    new-instance v0, Lorg/telegram/ui/Stories/recorder/DownloadButton$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/recorder/DownloadButton$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stories/recorder/DownloadButton;)V

    invoke-interface {v1, v0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    :cond_8
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/DownloadButton;->updateImage()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->prepare:Lorg/telegram/messenger/Utilities$Callback;

    if-nez v0, :cond_9

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/DownloadButton;->onClickInternal()V

    :cond_9
    :goto_2
    return-void
.end method

.method private onClickInternal()V
    .locals 9

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->preparing:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->currentEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->preparing:Z

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->wouldBeVideo()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->downloadingVideo:Z

    new-instance v0, Lorg/telegram/ui/Stories/recorder/DownloadButton$PreparingVideoToast;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Stories/recorder/DownloadButton$PreparingVideoToast;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->toast:Lorg/telegram/ui/Stories/recorder/DownloadButton$PreparingVideoToast;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/DownloadButton$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/DownloadButton$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Stories/recorder/DownloadButton;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/DownloadButton$PreparingVideoToast;->setOnCancelListener(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->container:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->toast:Lorg/telegram/ui/Stories/recorder/DownloadButton$PreparingVideoToast;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->generateVideoPath()Ljava/io/File;

    move-result-object v5

    new-instance v0, Lorg/telegram/ui/Stories/recorder/DownloadButton$BuildingVideo;

    iget v3, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->currentAccount:I

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->currentEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    new-instance v6, Lorg/telegram/ui/Stories/recorder/DownloadButton$$ExternalSyntheticLambda4;

    invoke-direct {v6, p0, v5}, Lorg/telegram/ui/Stories/recorder/DownloadButton$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Stories/recorder/DownloadButton;Ljava/io/File;)V

    new-instance v7, Lorg/telegram/ui/Stories/recorder/DownloadButton$$ExternalSyntheticLambda5;

    invoke-direct {v7, p0}, Lorg/telegram/ui/Stories/recorder/DownloadButton$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Stories/recorder/DownloadButton;)V

    new-instance v8, Lorg/telegram/ui/Stories/recorder/DownloadButton$$ExternalSyntheticLambda6;

    invoke-direct {v8, p0}, Lorg/telegram/ui/Stories/recorder/DownloadButton$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Stories/recorder/DownloadButton;)V

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Stories/recorder/DownloadButton$BuildingVideo;-><init>(ILorg/telegram/ui/Stories/recorder/StoryEntry;Ljava/io/File;Ljava/lang/Runnable;Lorg/telegram/messenger/Utilities$Callback;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->buildingVideo:Lorg/telegram/ui/Stories/recorder/DownloadButton$BuildingVideo;

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->downloadingVideo:Z

    const-string v0, "png"

    invoke-static {v1, v0}, Lorg/telegram/messenger/AndroidUtilities;->generatePicturePath(ZLjava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->toast:Lorg/telegram/ui/Stories/recorder/DownloadButton$PreparingVideoToast;

    sget v2, Lorg/telegram/messenger/R$raw;->error:I

    const-string v3, "UnknownError"

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xdac

    invoke-virtual {v0, v2, v3, v4}, Lorg/telegram/ui/Stories/recorder/DownloadButton$PreparingVideoToast;->setDone(ILjava/lang/CharSequence;I)V

    iput-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->downloading:Z

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/DownloadButton;->updateImage()V

    return-void

    :cond_2
    sget-object v1, Lorg/telegram/messenger/Utilities;->themeQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/ui/Stories/recorder/DownloadButton$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/Stories/recorder/DownloadButton$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Stories/recorder/DownloadButton;Ljava/io/File;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/DownloadButton;->updateImage()V

    :cond_3
    :goto_1
    return-void
.end method

.method private updateImage()V
    .locals 5

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->wasImageDownloading:Z

    iget-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->downloading:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iget-boolean v4, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->downloadingVideo:Z

    if-nez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eq v0, v4, :cond_3

    if-eqz v1, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->downloadingVideo:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->wasImageDownloading:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->progressDrawable:Lorg/telegram/ui/Components/CircularProgressDrawable;

    invoke-static {p0, v0}, Lorg/telegram/messenger/AndroidUtilities;->updateImageViewImageAnimated(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_2
    sget v0, Lorg/telegram/messenger/R$drawable;->media_download:I

    invoke-static {p0, v0}, Lorg/telegram/messenger/AndroidUtilities;->updateImageViewImageAnimated(Landroid/widget/ImageView;I)V

    :cond_3
    :goto_2
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->wasVideoDownloading:Z

    iget-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->downloading:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->downloadingVideo:Z

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    if-eq v0, v1, :cond_7

    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->downloading:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->downloadingVideo:Z

    if-eqz v1, :cond_5

    const/4 v2, 0x1

    :cond_5
    iput-boolean v2, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->wasVideoDownloading:Z

    if-eqz v2, :cond_6

    const v1, 0x3ecccccd    # 0.4f

    goto :goto_4

    :cond_6
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_4
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_7
    return-void
.end method


# virtual methods
.method public setEntry(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->savedToGalleryUri:Landroid/net/Uri;

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->currentEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->buildingVideo:Lorg/telegram/ui/Stories/recorder/DownloadButton$BuildingVideo;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Stories/recorder/DownloadButton$BuildingVideo;->stop(Z)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->buildingVideo:Lorg/telegram/ui/Stories/recorder/DownloadButton$BuildingVideo;

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->toast:Lorg/telegram/ui/Stories/recorder/DownloadButton$PreparingVideoToast;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/DownloadButton$PreparingVideoToast;->hide()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->toast:Lorg/telegram/ui/Stories/recorder/DownloadButton$PreparingVideoToast;

    :cond_1
    if-nez p1, :cond_2

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->downloading:Z

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/DownloadButton;->updateImage()V

    :cond_2
    return-void
.end method

.method public showFailedVideo()V
    .locals 2

    sget v0, Lorg/telegram/messenger/R$raw;->error:I

    const-string v1, "VideoConvertFail"

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Stories/recorder/DownloadButton;->showToast(ILjava/lang/CharSequence;)V

    return-void
.end method

.method public showToast(ILjava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->toast:Lorg/telegram/ui/Stories/recorder/DownloadButton$PreparingVideoToast;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/DownloadButton$PreparingVideoToast;->hide()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->toast:Lorg/telegram/ui/Stories/recorder/DownloadButton$PreparingVideoToast;

    :cond_0
    new-instance v0, Lorg/telegram/ui/Stories/recorder/DownloadButton$PreparingVideoToast;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Stories/recorder/DownloadButton$PreparingVideoToast;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->toast:Lorg/telegram/ui/Stories/recorder/DownloadButton$PreparingVideoToast;

    const/16 v1, 0xdac

    invoke-virtual {v0, p1, p2, v1}, Lorg/telegram/ui/Stories/recorder/DownloadButton$PreparingVideoToast;->setDone(ILjava/lang/CharSequence;I)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->container:Landroid/widget/FrameLayout;

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton;->toast:Lorg/telegram/ui/Stories/recorder/DownloadButton$PreparingVideoToast;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method
