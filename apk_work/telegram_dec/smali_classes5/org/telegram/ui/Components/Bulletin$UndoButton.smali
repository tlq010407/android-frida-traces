.class public final Lorg/telegram/ui/Components/Bulletin$UndoButton;
.super Lorg/telegram/ui/Components/Bulletin$Button;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/Bulletin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UndoButton"
.end annotation


# instance fields
.field private bulletin:Lorg/telegram/ui/Components/Bulletin;

.field private delayedAction:Ljava/lang/Runnable;

.field private isUndone:Z

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private undoAction:Ljava/lang/Runnable;

.field public undoTextView:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$XWY4AS56ibj1e69jFSOTc1jWFPo(Lorg/telegram/ui/Components/Bulletin$UndoButton;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Bulletin$UndoButton;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/ui/Components/Bulletin$UndoButton;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 1

    .line 0
    xor-int/lit8 v0, p2, 0x1

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/telegram/ui/Components/Bulletin$UndoButton;-><init>(Landroid/content/Context;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 11

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Bulletin$Button;-><init>(Landroid/content/Context;)V

    iput-object p4, p0, Lorg/telegram/ui/Components/Bulletin$UndoButton;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    sget p4, Lorg/telegram/ui/ActionBar/Theme;->key_undo_cancelColor:I

    invoke-virtual {p0, p4}, Lorg/telegram/ui/Components/Bulletin$UndoButton;->getThemedColor(I)I

    move-result p4

    const/16 v0, 0x10

    const/high16 v1, 0x19000000

    const v2, 0xffffff

    const/high16 v3, 0x41400000    # 12.0f

    if-eqz p2, :cond_1

    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lorg/telegram/ui/Components/Bulletin$UndoButton;->undoTextView:Landroid/widget/TextView;

    and-int p1, p4, v2

    or-int/2addr p1, v1

    const/4 v5, 0x7

    invoke-static {p1, v5}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin$UndoButton;->undoTextView:Landroid/widget/TextView;

    const/4 v4, 0x1

    const/high16 v5, 0x41600000    # 14.0f

    invoke-virtual {p1, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin$UndoButton;->undoTextView:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin$UndoButton;->undoTextView:Landroid/widget/TextView;

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin$UndoButton;->undoTextView:Landroid/widget/TextView;

    sget v4, Lorg/telegram/messenger/R$string;->Undo:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin$UndoButton;->undoTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin$UndoButton;->undoTextView:Landroid/widget/TextView;

    if-eqz p3, :cond_0

    const/high16 v4, 0x42080000    # 34.0f

    goto :goto_0

    :cond_0
    const/high16 v4, 0x41400000    # 12.0f

    :goto_0
    const/high16 v5, 0x41000000    # 8.0f

    invoke-static {p1, v4, v5, v3, v5}, Lorg/telegram/ui/Components/ViewHelper;->setPaddingRelative(Landroid/view/View;FFFF)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin$UndoButton;->undoTextView:Landroid/widget/TextView;

    const/high16 v9, 0x41000000    # 8.0f

    const/4 v10, 0x0

    const/high16 v4, -0x40000000    # -2.0f

    const/high16 v5, -0x40000000    # -2.0f

    const/16 v6, 0x10

    const/high16 v7, 0x41000000    # 8.0f

    const/4 v8, 0x0

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameRelatively(FFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {p0, p1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    if-eqz p3, :cond_3

    new-instance p1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p1, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget p3, Lorg/telegram/messenger/R$drawable;->chats_undo:I

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance p3, Landroid/graphics/PorterDuffColorFilter;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p3, p4, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    if-nez p2, :cond_2

    and-int p2, p4, v2

    or-int/2addr p2, v1

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    const/4 p2, 0x0

    invoke-static {p1, p2, v3, p2, v3}, Lorg/telegram/ui/Components/ViewHelper;->setPaddingRelative(Landroid/view/View;FFFF)V

    const/high16 p2, 0x42600000    # 56.0f

    const/high16 p3, 0x42400000    # 48.0f

    invoke-static {p2, p3, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameRelatively(FFI)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    new-instance p1, Lorg/telegram/ui/Components/Bulletin$UndoButton$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/Bulletin$UndoButton$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/Bulletin$UndoButton;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Bulletin$UndoButton;->undo()V

    return-void
.end method


# virtual methods
.method protected getThemedColor(I)I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$UndoButton;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getColor(I)I

    move-result p1

    return p1

    :cond_0
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    return p1
.end method

.method public onAttach(Lorg/telegram/ui/Components/Bulletin$Layout;Lorg/telegram/ui/Components/Bulletin;)V
    .locals 0

    iput-object p2, p0, Lorg/telegram/ui/Components/Bulletin$UndoButton;->bulletin:Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method public onDetach(Lorg/telegram/ui/Components/Bulletin$Layout;)V
    .locals 1

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/Components/Bulletin$UndoButton;->bulletin:Lorg/telegram/ui/Components/Bulletin;

    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin$UndoButton;->delayedAction:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Bulletin$UndoButton;->isUndone:Z

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public setDelayedAction(Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin$UndoButton;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/Bulletin$UndoButton;->delayedAction:Ljava/lang/Runnable;

    return-object p0
.end method

.method public setText(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin$UndoButton;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$UndoButton;->undoTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-object p0
.end method

.method public setUndoAction(Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin$UndoButton;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/Bulletin$UndoButton;->undoAction:Ljava/lang/Runnable;

    return-object p0
.end method

.method public undo()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$UndoButton;->bulletin:Lorg/telegram/ui/Components/Bulletin;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Bulletin$UndoButton;->isUndone:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$UndoButton;->undoAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$UndoButton;->bulletin:Lorg/telegram/ui/Components/Bulletin;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->hide()V

    :cond_1
    return-void
.end method
