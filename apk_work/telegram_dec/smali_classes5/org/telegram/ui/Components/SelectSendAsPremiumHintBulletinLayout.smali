.class public Lorg/telegram/ui/Components/SelectSendAsPremiumHintBulletinLayout;
.super Lorg/telegram/ui/Components/Bulletin$MultiLineLayout;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ZLjava/lang/Runnable;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Bulletin$MultiLineLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iget-object p3, p0, Lorg/telegram/ui/Components/Bulletin$MultiLineLayout;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    sget v0, Lorg/telegram/messenger/R$drawable;->msg_premium_prolfilestar:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p3, v0}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p3, p0, Lorg/telegram/ui/Components/Bulletin$MultiLineLayout;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_undo_infoColor:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/Bulletin$Layout;->getThemedColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p3, v0}, Lorg/telegram/ui/Components/BackupImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object p3, p0, Lorg/telegram/ui/Components/Bulletin$MultiLineLayout;->textView:Landroid/widget/TextView;

    sget v0, Lorg/telegram/messenger/R$string;->SelectSendAsPeerPremiumHint:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p3, Lorg/telegram/ui/Components/Bulletin$UndoButton;

    const/4 v0, 0x1

    invoke-direct {p3, p1, v0, p2}, Lorg/telegram/ui/Components/Bulletin$UndoButton;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget p1, Lorg/telegram/messenger/R$string;->SelectSendAsPeerPremiumOpen:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lorg/telegram/ui/Components/Bulletin$UndoButton;->setText(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin$UndoButton;

    invoke-virtual {p3, p4}, Lorg/telegram/ui/Components/Bulletin$UndoButton;->setUndoAction(Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin$UndoButton;

    invoke-virtual {p0, p3}, Lorg/telegram/ui/Components/Bulletin$ButtonLayout;->setButton(Lorg/telegram/ui/Components/Bulletin$Button;)V

    return-void
.end method
