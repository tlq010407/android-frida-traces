.class Lorg/telegram/messenger/pip/source/PipSourcePlaceholder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/pip/source/PipSourcePlaceholder$PlaceholderDrawable;
    }
.end annotation


# instance fields
.field private placeholder:Landroid/graphics/Bitmap;

.field private placeholderActivityDrawable:Landroid/graphics/drawable/Drawable;

.field private final placeholderActivityView:Landroid/view/View;

.field private placeholderSourceDrawable:Landroid/graphics/drawable/Drawable;

.field private final placeholderSourceView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/pip/source/PipSourcePlaceholder;->placeholderActivityView:Landroid/view/View;

    iput-object p2, p0, Lorg/telegram/messenger/pip/source/PipSourcePlaceholder;->placeholderSourceView:Landroid/view/View;

    return-void
.end method

.method private maybeClearPlaceholder()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/pip/source/PipSourcePlaceholder;->placeholderSourceDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/pip/source/PipSourcePlaceholder;->placeholderActivityDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/pip/source/PipSourcePlaceholder;->placeholder:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/pip/source/PipSourcePlaceholder;->placeholder:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    invoke-virtual {p0}, Lorg/telegram/messenger/pip/source/PipSourcePlaceholder;->stopPlaceholderForActivity()V

    invoke-virtual {p0}, Lorg/telegram/messenger/pip/source/PipSourcePlaceholder;->stopPlaceholderForSource()V

    return-void
.end method

.method public setPlaceholder(Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/pip/source/PipSourcePlaceholder;->placeholder:Landroid/graphics/Bitmap;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/pip/source/PipSourcePlaceholder;->clear()V

    iput-object p1, p0, Lorg/telegram/messenger/pip/source/PipSourcePlaceholder;->placeholder:Landroid/graphics/Bitmap;

    new-instance p1, Lorg/telegram/messenger/pip/source/PipSourcePlaceholder$PlaceholderDrawable;

    iget-object v0, p0, Lorg/telegram/messenger/pip/source/PipSourcePlaceholder;->placeholder:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lorg/telegram/messenger/pip/source/PipSourcePlaceholder$PlaceholderDrawable;-><init>(Landroid/graphics/Bitmap;Lorg/telegram/messenger/pip/source/PipSourcePlaceholder$1;)V

    iput-object p1, p0, Lorg/telegram/messenger/pip/source/PipSourcePlaceholder;->placeholderActivityDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lorg/telegram/messenger/pip/source/PipSourcePlaceholder;->placeholderActivityView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lorg/telegram/messenger/pip/source/PipSourcePlaceholder;->placeholderSourceView:Landroid/view/View;

    if-eqz p1, :cond_1

    new-instance p1, Lorg/telegram/messenger/pip/source/PipSourcePlaceholder$PlaceholderDrawable;

    iget-object v0, p0, Lorg/telegram/messenger/pip/source/PipSourcePlaceholder;->placeholder:Landroid/graphics/Bitmap;

    invoke-direct {p1, v0, v1}, Lorg/telegram/messenger/pip/source/PipSourcePlaceholder$PlaceholderDrawable;-><init>(Landroid/graphics/Bitmap;Lorg/telegram/messenger/pip/source/PipSourcePlaceholder$1;)V

    iput-object p1, p0, Lorg/telegram/messenger/pip/source/PipSourcePlaceholder;->placeholderSourceDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lorg/telegram/messenger/pip/source/PipSourcePlaceholder;->placeholderSourceView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public stopPlaceholderForActivity()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/pip/source/PipSourcePlaceholder;->placeholderActivityDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/pip/source/PipSourcePlaceholder;->placeholderActivityView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iput-object v1, p0, Lorg/telegram/messenger/pip/source/PipSourcePlaceholder;->placeholderActivityDrawable:Landroid/graphics/drawable/Drawable;

    :cond_0
    invoke-direct {p0}, Lorg/telegram/messenger/pip/source/PipSourcePlaceholder;->maybeClearPlaceholder()V

    return-void
.end method

.method public stopPlaceholderForSource()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/pip/source/PipSourcePlaceholder;->placeholderSourceDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/pip/source/PipSourcePlaceholder;->placeholderSourceDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lorg/telegram/messenger/pip/source/PipSourcePlaceholder;->placeholderSourceView:Landroid/view/View;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-direct {p0}, Lorg/telegram/messenger/pip/source/PipSourcePlaceholder;->maybeClearPlaceholder()V

    return-void
.end method
