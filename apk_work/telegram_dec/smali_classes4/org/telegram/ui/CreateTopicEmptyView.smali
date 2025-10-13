.class public Lorg/telegram/ui/CreateTopicEmptyView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field backupImageView:Lorg/telegram/ui/Components/BackupImageView;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 9

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lorg/telegram/ui/CreateTopicEmptyView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/high16 p3, 0x41900000    # 18.0f

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    const-string v0, "paintChatActionBackground"

    invoke-direct {p0, v0}, Lorg/telegram/ui/CreateTopicEmptyView;->getThemedPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-static {p3, p0, p2, v0}, Lorg/telegram/ui/ActionBar/Theme;->createServiceDrawable(ILandroid/view/View;Landroid/view/View;Landroid/graphics/Paint;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/high16 p2, 0x41800000    # 16.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    const/high16 v0, 0x41400000    # 12.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {p0, p3, v1, p2, v0}, Landroid/view/View;->setPadding(IIII)V

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance p3, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {p3, p1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lorg/telegram/ui/CreateTopicEmptyView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    new-instance p3, Landroid/widget/TextView;

    invoke-direct {p3, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v0, 0x41700000    # 15.0f

    invoke-virtual {p3, p2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_serviceText:I

    invoke-direct {p0, v0}, Lorg/telegram/ui/CreateTopicEmptyView;->getThemedColor(I)I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v1, 0x43520000    # 210.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    sget v1, Lorg/telegram/messenger/R$string;->AlmostDone:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x41500000    # 13.0f

    invoke-virtual {v1, p2, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-direct {p0, v0}, Lorg/telegram/ui/CreateTopicEmptyView;->getThemedColor(I)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 p1, 0x43200000    # 160.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setMaxWidth(I)V

    sget p1, Lorg/telegram/messenger/R$string;->TopicEmptyViewDescription:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/CreateTopicEmptyView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v7, 0x0

    const/16 v8, 0x8

    const/16 v2, 0x3a

    const/16 v3, 0x3a

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x8

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v2, -0x2

    const/4 v3, -0x2

    const/4 v6, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, -0x2

    invoke-static {p1, p1, p2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lorg/telegram/ui/CreateTopicEmptyView;->setSticker()V

    return-void
.end method

.method private getThemedColor(I)I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/CreateTopicEmptyView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method

.method private getThemedPaint(Ljava/lang/String;)Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/CreateTopicEmptyView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getThemePaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method private setSticker()V
    .locals 10

    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    const-string v1, "\ud83e\udd73"

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MediaDataController;->getEmojiAnimatedSticker(Ljava/lang/CharSequence;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_emptyListPlaceholder:I

    const v3, 0x3e4ccccd    # 0.2f

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/DocumentObject;->getSvgThumb(Ljava/util/ArrayList;IF)Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    move-result-object v8

    if-eqz v8, :cond_0

    const/16 v1, 0x200

    invoke-virtual {v8, v1, v1}, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->overrideWidthAndHeight(II)V

    :cond_0
    invoke-static {v0}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v5

    iget-object v4, p0, Lorg/telegram/ui/CreateTopicEmptyView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    const-string v7, "tgs"

    const/4 v6, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
