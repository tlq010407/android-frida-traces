.class public Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin;
.super Lorg/telegram/ui/Components/Bulletin$ButtonLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/bots/BotDownloads;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DownloadBulletin"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin$BackgroundDrawable;,
        Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin$StatusDrawable;
    }
.end annotation


# instance fields
.field public final background:Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin$BackgroundDrawable;

.field private currentButtonType:I

.field private file:Lorg/telegram/ui/bots/BotDownloads$FileDownload;

.field private final imageView:Landroid/widget/ImageView;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field public final status:Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin$StatusDrawable;

.field private final subtitleView:Landroid/widget/TextView;

.field private final textLayout:Landroid/widget/LinearLayout;

.field private final titleView:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$64rnEAyYJPUBjhVIPF4b0eiCgHE(Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin;->lambda$setButton$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$Kfwamuy1Zso0VXiVoUsH0oAvFt4(Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin;->lambda$setButton$1()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 12

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Bulletin$ButtonLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin;->currentButtonType:I

    iput-object p2, p0, Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    new-instance v0, Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin$BackgroundDrawable;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin$BackgroundDrawable;-><init>(I)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_undo_background:I

    invoke-static {v1, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin$BackgroundDrawable;->setColor(I)Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin$BackgroundDrawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin;->background:Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin$BackgroundDrawable;

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin;->imageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v1, Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin$StatusDrawable;

    invoke-direct {v1, p1, v0}, Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin$StatusDrawable;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v1, p0, Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin;->status:Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin$StatusDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v2, 0x28

    const/high16 v3, 0x42200000    # 40.0f

    const/16 v4, 0x17

    const/high16 v5, 0x40e00000    # 7.0f

    const/4 v6, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin;->textLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v2, -0x1

    const/high16 v3, -0x40000000    # -2.0f

    const/high16 v5, 0x42580000    # 54.0f

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin;->titleView:Landroid/widget/TextView;

    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {v2, v1, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_undo_infoColor:I

    invoke-static {v3, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 v10, 0x0

    const/4 v11, 0x2

    const/4 v5, -0x1

    const/4 v6, -0x2

    const/16 v7, 0x37

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin;->subtitleView:Landroid/widget/TextView;

    const/high16 p1, 0x41500000    # 13.0f

    invoke-virtual {v2, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-static {v3, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v3, -0x1

    const/4 v4, -0x2

    const/16 v5, 0x37

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private synthetic lambda$setButton$0()V
    .locals 2

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Bulletin$Layout;->getBulletin()Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0xabe

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Bulletin;->setDuration(I)Lorg/telegram/ui/Components/Bulletin;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Bulletin;->setCanHide(Z)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin;->file:Lorg/telegram/ui/bots/BotDownloads$FileDownload;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/bots/BotDownloads$FileDownload;->cancel()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$setButton$1()V
    .locals 1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Bulletin$Layout;->getBulletin()Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->hide()V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin;->file:Lorg/telegram/ui/bots/BotDownloads$FileDownload;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/bots/BotDownloads$FileDownload;->open()V

    :cond_1
    return-void
.end method

.method private setButton(I)V
    .locals 3

    iget v0, p0, Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin;->currentButtonType:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin;->currentButtonType:I

    if-nez p1, :cond_2

    const/4 p1, 0x0

    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Bulletin$ButtonLayout;->setButton(Lorg/telegram/ui/Components/Bulletin$Button;)V

    goto :goto_2

    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    new-instance p1, Lorg/telegram/ui/Components/Bulletin$UndoButton;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p1, v1, v0, v2}, Lorg/telegram/ui/Components/Bulletin$UndoButton;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget v0, Lorg/telegram/messenger/R$string;->BotFileDownloadCancel:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Bulletin$UndoButton;->setText(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin$UndoButton;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Bulletin$UndoButton;->setUndoAction(Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin$UndoButton;

    move-result-object p1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Bulletin$Layout;->getBulletin()Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_3
    const/4 v1, 0x2

    if-ne p1, v1, :cond_4

    new-instance p1, Lorg/telegram/ui/Components/Bulletin$UndoButton;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p1, v1, v0, v2}, Lorg/telegram/ui/Components/Bulletin$UndoButton;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget v0, Lorg/telegram/messenger/R$string;->BotFileDownloadOpen:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Bulletin$UndoButton;->setText(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin$UndoButton;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Bulletin$UndoButton;->setUndoAction(Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin$UndoButton;

    move-result-object p1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Bulletin$Layout;->getBulletin()Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Bulletin$Layout;->getBulletin()Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lorg/telegram/ui/Components/Bulletin$UndoButton;->onAttach(Lorg/telegram/ui/Components/Bulletin$Layout;Lorg/telegram/ui/Components/Bulletin;)V

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 1

    const/high16 p2, 0x42880000    # 68.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Lorg/telegram/ui/Components/Bulletin$ButtonLayout;->onMeasure(II)V

    return-void
.end method

.method public set(Lorg/telegram/ui/bots/BotDownloads$FileDownload;)Z
    .locals 7

    iget-object v0, p0, Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin;->file:Lorg/telegram/ui/bots/BotDownloads$FileDownload;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin;->status:Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin$StatusDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin$StatusDrawable;->reset()V

    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin;->file:Lorg/telegram/ui/bots/BotDownloads$FileDownload;

    iget-object v0, p0, Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin;->titleView:Landroid/widget/TextView;

    iget-object v1, p1, Lorg/telegram/ui/bots/BotDownloads$FileDownload;->file_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lorg/telegram/ui/bots/BotDownloads$FileDownload;->isDownloading()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lorg/telegram/ui/bots/BotDownloads$FileDownload;->getProgress()Landroid/util/Pair;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin;->status:Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin$StatusDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin$StatusDrawable;->setProgress(Landroid/util/Pair;)V

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-gtz v0, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin;->subtitleView:Landroid/widget/TextView;

    sget v0, Lorg/telegram/messenger/R$string;->BotFileDownloading:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v0, v3, v5

    if-gtz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin;->subtitleView:Landroid/widget/TextView;

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin;->subtitleView:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :goto_1
    invoke-direct {p0, v2}, Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin;->setButton(I)V

    goto :goto_2

    :cond_3
    iget-boolean v0, p1, Lorg/telegram/ui/bots/BotDownloads$FileDownload;->cancelled:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Bulletin$Layout;->getBulletin()Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->hide()V

    :cond_4
    return v2

    :cond_5
    iget-boolean p1, p1, Lorg/telegram/ui/bots/BotDownloads$FileDownload;->done:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin;->subtitleView:Landroid/widget/TextView;

    sget v0, Lorg/telegram/messenger/R$string;->BotFileDownloaded:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin;->setButton(I)V

    iget-object p1, p0, Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin;->status:Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin$StatusDrawable;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin$StatusDrawable;->setDone(Z)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Bulletin$Layout;->getBulletin()Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/Bulletin;->setCanHide(Z)V

    const/16 v0, 0x1388

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Bulletin;->setDuration(I)Lorg/telegram/ui/Components/Bulletin;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/Bulletin;->setCanHide(Z)V

    :cond_6
    :goto_2
    return v1
.end method

.method public setArrow(I)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin;->background:Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin$BackgroundDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin$BackgroundDrawable;->setArrow(I)V

    return-void
.end method
