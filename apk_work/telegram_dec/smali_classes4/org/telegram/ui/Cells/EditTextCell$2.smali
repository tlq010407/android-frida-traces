.class Lorg/telegram/ui/Cells/EditTextCell$2;
.super Lorg/telegram/ui/Components/EditTextCaption;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Cells/EditTextCell;-><init>(Landroid/content/Context;Ljava/lang/String;ZZILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Cells/EditTextCell;

.field final synthetic val$allowEntities:Z

.field final synthetic val$maxLength:I

.field final synthetic val$resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Cells/EditTextCell;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Cells/EditTextCell$2;->this$0:Lorg/telegram/ui/Cells/EditTextCell;

    iput p4, p0, Lorg/telegram/ui/Cells/EditTextCell$2;->val$maxLength:I

    iput-object p5, p0, Lorg/telegram/ui/Cells/EditTextCell$2;->val$resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iput-boolean p6, p0, Lorg/telegram/ui/Cells/EditTextCell$2;->val$allowEntities:Z

    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/Components/EditTextCaption;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5

    invoke-super {p0, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/EditTextCell$2;->this$0:Lorg/telegram/ui/Cells/EditTextCell;

    iget-object v1, v0, Lorg/telegram/ui/Cells/EditTextCell;->limit:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    iget-object v2, v0, Lorg/telegram/ui/Cells/EditTextCell;->limitColor:Lorg/telegram/ui/Components/AnimatedColor;

    invoke-static {v0}, Lorg/telegram/ui/Cells/EditTextCell;->access$100(Lorg/telegram/ui/Cells/EditTextCell;)I

    move-result v0

    if-gtz v0, :cond_0

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    goto :goto_0

    :cond_0
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogSearchHint:I

    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Cells/EditTextCell$2;->val$resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/AnimatedColor;->set(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/EditTextCell$2;->this$0:Lorg/telegram/ui/Cells/EditTextCell;

    iget-object v0, v0, Lorg/telegram/ui/Cells/EditTextCell;->limit:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    const/high16 v3, 0x42280000    # 42.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setBounds(IIII)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/EditTextCell$2;->this$0:Lorg/telegram/ui/Cells/EditTextCell;

    iget-object v0, v0, Lorg/telegram/ui/Cells/EditTextCell;->limit:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected extendActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)V
    .locals 6

    iget-boolean p1, p0, Lorg/telegram/ui/Cells/EditTextCell$2;->val$allowEntities:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget p1, Lorg/telegram/messenger/R$id;->menu_bold:I

    invoke-interface {p2, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    const v0, 0x1020035

    invoke-interface {p2, v0}, Landroid/view/Menu;->removeItem(I)V

    :cond_2
    new-instance v0, Landroid/text/SpannableStringBuilder;

    sget v1, Lorg/telegram/messenger/R$string;->Bold:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Lorg/telegram/ui/Components/TypefaceSpan;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/TypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    sget v1, Lorg/telegram/messenger/R$id;->menu_groupbolditalic:I

    const/4 v2, 0x6

    invoke-interface {p2, v1, p1, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    new-instance p1, Landroid/text/SpannableStringBuilder;

    sget v0, Lorg/telegram/messenger/R$string;->Italic:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v0, Lorg/telegram/ui/Components/TypefaceSpan;

    const-string v2, "fonts/rmediumitalic.ttf"

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/TypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-virtual {p1, v0, v3, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    sget v0, Lorg/telegram/messenger/R$id;->menu_italic:I

    const/4 v2, 0x7

    invoke-interface {p2, v1, v0, v2, p1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    new-instance p1, Landroid/text/SpannableStringBuilder;

    sget v0, Lorg/telegram/messenger/R$string;->Strike:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v0, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;

    invoke-direct {v0}, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;-><init>()V

    iget v2, v0, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    const/16 v5, 0x8

    or-int/2addr v2, v5

    iput v2, v0, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    new-instance v2, Lorg/telegram/ui/Components/TextStyleSpan;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/TextStyleSpan;-><init>(Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;)V

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    invoke-virtual {p1, v2, v3, v0, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    sget v0, Lorg/telegram/messenger/R$id;->menu_strike:I

    invoke-interface {p2, v1, v0, v5, p1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    sget p1, Lorg/telegram/messenger/R$id;->menu_regular:I

    sget v0, Lorg/telegram/messenger/R$string;->Regular:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x9

    invoke-interface {p2, v1, p1, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    invoke-super {p0, p1}, Lorg/telegram/ui/Components/EditTextCaption;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/EditTextEffects;->onTextChanged(Ljava/lang/CharSequence;III)V

    iget-object p1, p0, Lorg/telegram/ui/Cells/EditTextCell$2;->this$0:Lorg/telegram/ui/Cells/EditTextCell;

    iget-object p1, p1, Lorg/telegram/ui/Cells/EditTextCell;->limit:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    if-eqz p1, :cond_0

    iget p2, p0, Lorg/telegram/ui/Cells/EditTextCell$2;->val$maxLength:I

    if-lez p2, :cond_0

    invoke-virtual {p1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->cancelAnimation()V

    iget-object p1, p0, Lorg/telegram/ui/Cells/EditTextCell$2;->this$0:Lorg/telegram/ui/Cells/EditTextCell;

    invoke-static {p1}, Lorg/telegram/ui/Cells/EditTextCell;->access$000(Lorg/telegram/ui/Cells/EditTextCell;)V

    :cond_0
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Cells/EditTextCell$2;->this$0:Lorg/telegram/ui/Cells/EditTextCell;

    iget-object v0, v0, Lorg/telegram/ui/Cells/EditTextCell;->limit:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    if-eq p1, v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/EditText;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
