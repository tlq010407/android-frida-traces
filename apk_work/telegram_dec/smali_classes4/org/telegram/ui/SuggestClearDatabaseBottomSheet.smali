.class public Lorg/telegram/ui/SuggestClearDatabaseBottomSheet;
.super Lorg/telegram/ui/ActionBar/BottomSheet;
.source "SourceFile"


# static fields
.field private static dialog:Lorg/telegram/ui/SuggestClearDatabaseBottomSheet;


# instance fields
.field fragment:Lorg/telegram/ui/ActionBar/BaseFragment;


# direct methods
.method public static synthetic $r8$lambda$mTqBTGq3KzrFVzvYRtiCazGxjOc(Lorg/telegram/ui/SuggestClearDatabaseBottomSheet;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/SuggestClearDatabaseBottomSheet;->lambda$new$0(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$nYsqJ1RXmHGX4Nf_7a3E266jF0o(Lorg/telegram/ui/SuggestClearDatabaseBottomSheet;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/SuggestClearDatabaseBottomSheet;->lambda$new$1(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)V

    return-void
.end method

.method private constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;Z)V

    iput-object v1, v0, Lorg/telegram/ui/SuggestClearDatabaseBottomSheet;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v6, Lorg/telegram/ui/Components/StickerImageView;

    iget v7, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-direct {v6, v2, v7}, Lorg/telegram/ui/Components/StickerImageView;-><init>(Landroid/content/Context;I)V

    const/4 v7, 0x7

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/StickerImageView;->setStickerNum(I)V

    invoke-virtual {v6}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v7

    invoke-virtual {v7, v5}, Lorg/telegram/messenger/ImageReceiver;->setAutoRepeat(I)V

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v8, 0x90

    const/16 v9, 0x90

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/16 v12, 0x10

    invoke-static/range {v8 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v7, 0x800003

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setGravity(I)V

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v9, 0x41a00000    # 20.0f

    invoke-virtual {v6, v5, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    sget v9, Lorg/telegram/messenger/R$string;->SuggestClearDatabaseTitle:I

    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v15, 0x41a80000    # 21.0f

    const/16 v16, 0x0

    const/4 v10, -0x1

    const/high16 v11, -0x40000000    # -2.0f

    const/4 v12, 0x0

    const/high16 v13, 0x41a80000    # 21.0f

    const/high16 v14, 0x41f00000    # 30.0f

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v4, v6, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v7, 0x41700000    # 15.0f

    invoke-virtual {v6, v5, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    sget v7, Lorg/telegram/messenger/R$string;->SuggestClearDatabaseMessage:I

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/messenger/MessagesStorage;->getDatabaseSize()J

    move-result-wide v8

    invoke-static {v8, v9}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v8

    new-array v9, v5, [Ljava/lang/Object;

    aput-object v8, v9, v3

    const-string v8, "SuggestClearDatabaseMessage"

    invoke-static {v8, v7, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v14, 0x41800000    # 16.0f

    const/4 v8, -0x1

    const/high16 v9, -0x40000000    # -2.0f

    const/4 v10, 0x0

    const/high16 v11, 0x41a80000    # 21.0f

    const/high16 v12, 0x41700000    # 15.0f

    invoke-static/range {v8 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v7, 0x42080000    # 34.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-virtual {v6, v8, v3, v7, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v3, 0x11

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {v6, v5, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    sget v3, Lorg/telegram/messenger/R$string;->ClearLocalDatabase:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_buttonText:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v7

    const/16 v8, 0x78

    invoke-static {v7, v8}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v7

    invoke-static {v3, v5, v7}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/high16 v12, 0x41800000    # 16.0f

    const/high16 v13, 0x41800000    # 16.0f

    const/4 v7, -0x1

    const/high16 v8, 0x42400000    # 48.0f

    const/4 v9, 0x0

    const/high16 v10, 0x41800000    # 16.0f

    const/high16 v11, 0x41700000    # 15.0f

    invoke-static/range {v7 .. v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v4, v6, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Lorg/telegram/ui/SuggestClearDatabaseBottomSheet$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/SuggestClearDatabaseBottomSheet$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/SuggestClearDatabaseBottomSheet;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {v6, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/widget/ScrollView;

    invoke-direct {v1, v2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v4}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setCustomView(Landroid/view/View;)V

    return-void
.end method

.method public static dismissDialog()V
    .locals 1

    sget-object v0, Lorg/telegram/ui/SuggestClearDatabaseBottomSheet;->dialog:Lorg/telegram/ui/SuggestClearDatabaseBottomSheet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/SuggestClearDatabaseBottomSheet;->dismiss()V

    const/4 v0, 0x0

    sput-object v0, Lorg/telegram/ui/SuggestClearDatabaseBottomSheet;->dialog:Lorg/telegram/ui/SuggestClearDatabaseBottomSheet;

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$0(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/MessagesController;->clearQueryTime()V

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesStorage;->clearLocalDatabase()V

    return-void
.end method

.method private synthetic lambda$new$1(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)V
    .locals 2

    new-instance p2, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v0, Lorg/telegram/messenger/R$string;->LocalDatabaseClearTextTitle:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget v0, Lorg/telegram/messenger/R$string;->LocalDatabaseClearText:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget v0, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget v0, Lorg/telegram/messenger/R$string;->CacheClear:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/SuggestClearDatabaseBottomSheet$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/SuggestClearDatabaseBottomSheet$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/SuggestClearDatabaseBottomSheet;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {p2, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    const/4 p1, -0x1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public static show(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 1

    sget-object v0, Lorg/telegram/ui/SuggestClearDatabaseBottomSheet;->dialog:Lorg/telegram/ui/SuggestClearDatabaseBottomSheet;

    if-nez v0, :cond_0

    new-instance v0, Lorg/telegram/ui/SuggestClearDatabaseBottomSheet;

    invoke-direct {v0, p0}, Lorg/telegram/ui/SuggestClearDatabaseBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    sput-object v0, Lorg/telegram/ui/SuggestClearDatabaseBottomSheet;->dialog:Lorg/telegram/ui/SuggestClearDatabaseBottomSheet;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    :cond_0
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    const/4 v0, 0x0

    sput-object v0, Lorg/telegram/ui/SuggestClearDatabaseBottomSheet;->dialog:Lorg/telegram/ui/SuggestClearDatabaseBottomSheet;

    return-void
.end method
