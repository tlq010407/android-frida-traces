.class public Lorg/telegram/ui/Components/ReorderingBulletinLayout;
.super Lorg/telegram/ui/Components/Bulletin$SimpleLayout;
.source "SourceFile"


# instance fields
.field private final hintDrawable:Lorg/telegram/ui/Components/ReorderingHintDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    invoke-direct {p0, p1, p3}, Lorg/telegram/ui/Components/Bulletin$SimpleLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin$SimpleLayout;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin$SimpleLayout;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/high16 p2, -0x40800000    # -1.0f

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin$SimpleLayout;->imageView:Landroid/widget/ImageView;

    new-instance p2, Lorg/telegram/ui/Components/ReorderingHintDrawable;

    invoke-direct {p2}, Lorg/telegram/ui/Components/ReorderingHintDrawable;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Components/ReorderingBulletinLayout;->hintDrawable:Lorg/telegram/ui/Components/ReorderingHintDrawable;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method protected onEnterTransitionEnd()V
    .locals 1

    invoke-super {p0}, Lorg/telegram/ui/Components/Bulletin$Layout;->onEnterTransitionEnd()V

    iget-object v0, p0, Lorg/telegram/ui/Components/ReorderingBulletinLayout;->hintDrawable:Lorg/telegram/ui/Components/ReorderingHintDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ReorderingHintDrawable;->startAnimation()V

    return-void
.end method

.method protected onExitTransitionEnd()V
    .locals 1

    invoke-super {p0}, Lorg/telegram/ui/Components/Bulletin$Layout;->onExitTransitionEnd()V

    iget-object v0, p0, Lorg/telegram/ui/Components/ReorderingBulletinLayout;->hintDrawable:Lorg/telegram/ui/Components/ReorderingHintDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ReorderingHintDrawable;->resetAnimation()V

    return-void
.end method
