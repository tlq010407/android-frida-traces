.class public Lorg/telegram/ui/Adapters/MentionsAdapter$HashtagHint;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Adapters/MentionsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HashtagHint"
.end annotation


# instance fields
.field private final avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field private final imageView:Lorg/telegram/ui/Components/BackupImageView;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private final textLayout:Landroid/widget/LinearLayout;

.field private final textView:Landroid/widget/TextView;

.field private final titleView:Landroid/widget/TextView;

.field private final transparent:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 9

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$HashtagHint;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iput-object p3, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$HashtagHint;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iput-boolean p2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$HashtagHint;->transparent:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v0, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$HashtagHint;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v1, 0x41e00000    # 28.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    const/16 v7, 0xc

    const/4 v8, 0x0

    const/16 v2, 0x1c

    const/16 v3, 0x1c

    const/16 v4, 0x13

    const/16 v5, 0xc

    const/4 v6, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$HashtagHint;->textLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v8, 0x4

    const/4 v2, -0x1

    const/4 v3, -0x2

    const/16 v4, 0x37

    const/4 v5, 0x0

    const/4 v6, 0x4

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$HashtagHint;->titleView:Landroid/widget/TextView;

    const/high16 v3, 0x41700000    # 15.0f

    invoke-virtual {v2, v1, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v3, p3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$HashtagHint;->textView:Landroid/widget/TextView;

    const/high16 p1, 0x41500000    # 13.0f

    invoke-virtual {v2, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    if-eqz p2, :cond_0

    invoke-static {v3, p3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    const/high16 p2, 0x3f000000    # 0.5f

    invoke-static {p1, p2}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result p1

    goto :goto_0

    :cond_0
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    invoke-static {p1, p3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    :goto_0
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public set(ILjava/lang/String;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    new-instance p1, Lorg/telegram/ui/Components/CombinedDrawable;

    const/high16 p3, 0x41e00000    # 28.0f

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    iget-object v3, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$HashtagHint;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-static {p3, v2}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object p3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->menu_hashtag:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {p1, p3, v2}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const p3, -0x40d70a3d    # -0.66f

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    invoke-virtual {p1, p3, v1}, Lorg/telegram/ui/Components/CombinedDrawable;->setIconOffset(II)V

    const/high16 p3, 0x41a00000    # 20.0f

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    invoke-virtual {p1, v2, p3}, Lorg/telegram/ui/Components/CombinedDrawable;->setIconSize(II)V

    iget-object p3, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$HashtagHint;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p3, p1}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$HashtagHint;->titleView:Landroid/widget/TextView;

    sget p3, Lorg/telegram/messenger/R$string;->HashtagSuggestion1Title:I

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v1

    invoke-static {p3, v0}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$HashtagHint;->textView:Landroid/widget/TextView;

    sget p2, Lorg/telegram/messenger/R$string;->HashtagSuggestion1Text:I

    :goto_0
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$HashtagHint;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$Chat;)V

    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$HashtagHint;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$HashtagHint;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {p1, p3, v2}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$HashtagHint;->titleView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->HashtagSuggestion2Title:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "@"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lorg/telegram/messenger/ChatObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$Chat;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v0, [Ljava/lang/Object;

    aput-object p2, p3, v1

    invoke-static {v2, p3}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const/16 p3, 0x8

    invoke-static {p2, p3}, Lorg/telegram/ui/PremiumPreviewFragment;->applyNewSpan(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$HashtagHint;->textView:Landroid/widget/TextView;

    sget p2, Lorg/telegram/messenger/R$string;->HashtagSuggestion2Text:I

    goto :goto_0

    :goto_1
    return-void
.end method
