.class public Lorg/telegram/ui/Components/EditTextCaption;
.super Lorg/telegram/ui/Components/EditTextBoldCursor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/EditTextCaption$EditTextCaptionDelegate;
    }
.end annotation


# static fields
.field private static final ACCESSIBILITY_ACTION_SHARE:I = 0x10000000


# instance fields
.field public adaptiveCreateLinkDialog:Z

.field private allowTextEntitiesIntersection:Z

.field private caption:Ljava/lang/String;

.field private captionLayout:Landroid/text/StaticLayout;

.field private copyPasteShowed:Z

.field private creationLinkDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

.field private delegate:Lorg/telegram/ui/Components/EditTextCaption$EditTextCaptionDelegate;

.field private hintColor:I

.field private isInitLineCount:Z

.field private lineCount:I

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private selectionEnd:I

.field private selectionStart:I

.field private triesCount:I

.field private userNameLength:I

.field private xOffset:I

.field private yOffset:I


# direct methods
.method public static synthetic $r8$lambda$4x5Cf_glV1LOd7HVqTkeZayQLt8(Lorg/telegram/ui/Components/EditTextCaption;IILorg/telegram/ui/Components/EditTextBoldCursor;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Components/EditTextCaption;->lambda$makeSelectedUrl$2(IILorg/telegram/ui/Components/EditTextBoldCursor;Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$HPlva6nmODZgisRezaMoiXI9jU4(Lorg/telegram/ui/Components/EditTextCaption;Lorg/telegram/ui/Components/EditTextBoldCursor;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/EditTextCaption;->lambda$makeSelectedUrl$1(Lorg/telegram/ui/Components/EditTextBoldCursor;Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lzHulqFM1L4iJpIpjwqe0a82m38(Lorg/telegram/ui/Components/EditTextCaption;Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EditTextCaption;->lambda$makeSelectedUrl$3(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pCcTxlQ8dV6EAwUJ-KlmcmDpPcA(Lorg/telegram/ui/Components/EditTextBoldCursor;Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/EditTextCaption;->lambda$makeSelectedUrl$4(Lorg/telegram/ui/Components/EditTextBoldCursor;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$w99hVJ-g8PezZJc1Cp768FzOPvA(Lorg/telegram/ui/Components/EditTextBoldCursor;Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/EditTextCaption;->lambda$makeSelectedUrl$5(Lorg/telegram/ui/Components/EditTextBoldCursor;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xQgVI-Qyklou7RbAr3N1m7QDtCo(Lorg/telegram/ui/Components/EditTextCaption;Lorg/telegram/ui/Components/EditTextBoldCursor;Landroid/widget/TextView;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/EditTextCaption;->lambda$makeSelectedUrl$0(Lorg/telegram/ui/Components/EditTextBoldCursor;Landroid/widget/TextView;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Lorg/telegram/ui/Components/EditTextCaption;->triesCount:I

    const/4 p1, -0x1

    iput p1, p0, Lorg/telegram/ui/Components/EditTextCaption;->selectionStart:I

    iput p1, p0, Lorg/telegram/ui/Components/EditTextCaption;->selectionEnd:I

    iput-object p2, p0, Lorg/telegram/ui/Components/EditTextCaption;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inQuote:I

    invoke-static {p1, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->quoteColor:I

    new-instance p1, Lorg/telegram/ui/Components/EditTextCaption$1;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/EditTextCaption$1;-><init>(Lorg/telegram/ui/Components/EditTextCaption;)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/EditTextEffects;->setClipToPadding(Z)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/EditTextCaption;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/EditTextCaption;->lineCount:I

    return p0
.end method

.method static synthetic access$002(Lorg/telegram/ui/Components/EditTextCaption;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/EditTextCaption;->lineCount:I

    return p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/EditTextCaption;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/EditTextCaption;->isInitLineCount:Z

    return p0
.end method

.method static synthetic access$202(Lorg/telegram/ui/Components/EditTextCaption;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/EditTextCaption;->copyPasteShowed:Z

    return p1
.end method

.method private applyTextStyleToSelection(Lorg/telegram/ui/Components/TextStyleSpan;)V
    .locals 6

    iget v0, p0, Lorg/telegram/ui/Components/EditTextCaption;->selectionStart:I

    if-ltz v0, :cond_0

    iget v1, p0, Lorg/telegram/ui/Components/EditTextCaption;->selectionEnd:I

    if-ltz v1, :cond_0

    const/4 v2, -0x1

    iput v2, p0, Lorg/telegram/ui/Components/EditTextCaption;->selectionEnd:I

    iput v2, p0, Lorg/telegram/ui/Components/EditTextCaption;->selectionStart:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    :goto_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    iget-boolean v3, p0, Lorg/telegram/ui/Components/EditTextCaption;->allowTextEntitiesIntersection:Z

    invoke-static {p1, v0, v1, v2, v3}, Lorg/telegram/messenger/MediaDataController;->addStyleToText(Lorg/telegram/ui/Components/TextStyleSpan;IILandroid/text/Spannable;Z)V

    if-nez p1, :cond_4

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    const-class v2, Lorg/telegram/messenger/CodeHighlighting$Span;

    invoke-interface {p1, v0, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/telegram/messenger/CodeHighlighting$Span;

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    array-length v5, v2

    if-ge v4, v5, :cond_1

    aget-object v5, v2, v4

    invoke-interface {p1, v5}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    const-class v2, Lorg/telegram/ui/Components/QuoteSpan;

    invoke-interface {p1, v0, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/telegram/ui/Components/QuoteSpan;

    :goto_2
    array-length v1, v0

    if-ge v3, v1, :cond_3

    aget-object v1, v0, v3

    invoke-interface {p1, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    aget-object v1, v0, v3

    iget-object v1, v1, Lorg/telegram/ui/Components/QuoteSpan;->styleSpan:Lorg/telegram/ui/Components/QuoteSpan$QuoteStyleSpan;

    invoke-interface {p1, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    aget-object v1, v0, v3

    iget-object v1, v1, Lorg/telegram/ui/Components/QuoteSpan;->collapsedSpan:Lorg/telegram/ui/Components/QuoteSpan$QuoteCollapsedPart;

    if-eqz v1, :cond_2

    invoke-interface {p1, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    array-length p1, v0

    if-lez p1, :cond_4

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/EditTextEffects;->invalidateQuotes(Z)V

    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextCaption;->delegate:Lorg/telegram/ui/Components/EditTextCaption$EditTextCaptionDelegate;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lorg/telegram/ui/Components/EditTextCaption$EditTextCaptionDelegate;->onSpansChanged()V

    :cond_5
    return-void
.end method

.method private getThemedColor(I)I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextCaption;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method

.method private synthetic lambda$makeSelectedUrl$0(Lorg/telegram/ui/Components/EditTextBoldCursor;Landroid/widget/TextView;)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "http://"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p2, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const v1, 0x3f333333    # 0.7f

    if-eqz p1, :cond_3

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_3
    const v2, 0x3f333333    # 0.7f

    :goto_2
    invoke-virtual {p2, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-eqz p1, :cond_4

    goto :goto_3

    :cond_4
    const v0, 0x3f333333    # 0.7f

    :goto_3
    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private synthetic lambda$makeSelectedUrl$1(Lorg/telegram/ui/Components/EditTextBoldCursor;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    const-string v0, "clipboard"

    invoke-virtual {p3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/ClipboardManager;

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p3}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object p3

    invoke-virtual {p3, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object p3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    invoke-static {p3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 p3, 0x0

    :goto_0
    if-eqz p3, :cond_0

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p3

    invoke-virtual {p1, v0, p3}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(II)V

    :cond_0
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$makeSelectedUrl$2(IILorg/telegram/ui/Components/EditTextBoldCursor;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 5

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p4

    const-class p5, Landroid/text/style/CharacterStyle;

    invoke-interface {p4, p1, p2, p5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p5

    check-cast p5, [Landroid/text/style/CharacterStyle;

    const/16 v0, 0x21

    if-eqz p5, :cond_2

    array-length v1, p5

    if-lez v1, :cond_2

    const/4 v1, 0x0

    :goto_0
    array-length v2, p5

    if-ge v1, v2, :cond_2

    aget-object v2, p5, v1

    instance-of v3, v2, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    if-nez v3, :cond_1

    instance-of v3, v2, Lorg/telegram/ui/Components/QuoteSpan$QuoteStyleSpan;

    if-nez v3, :cond_1

    invoke-interface {p4, v2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    invoke-interface {p4, v2}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    invoke-interface {p4, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    if-ge v3, p1, :cond_0

    invoke-interface {p4, v2, v3, p1, v0}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    if-le v4, p2, :cond_1

    invoke-interface {p4, v2, p2, v4, v0}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :try_start_0
    new-instance p5, Lorg/telegram/ui/Components/URLSpanReplacement;

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p5, p3}, Lorg/telegram/ui/Components/URLSpanReplacement;-><init>(Ljava/lang/String;)V

    invoke-interface {p4, p5, p1, p2, v0}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextCaption;->delegate:Lorg/telegram/ui/Components/EditTextCaption$EditTextCaptionDelegate;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lorg/telegram/ui/Components/EditTextCaption$EditTextCaptionDelegate;->onSpansChanged()V

    :cond_3
    return-void
.end method

.method private synthetic lambda$makeSelectedUrl$3(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/Components/EditTextCaption;->creationLinkDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method private static synthetic lambda$makeSelectedUrl$4(Lorg/telegram/ui/Components/EditTextBoldCursor;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    return-void
.end method

.method private static synthetic lambda$makeSelectedUrl$5(Lorg/telegram/ui/Components/EditTextBoldCursor;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    return-void
.end method

.method private overrideCallback(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;
    .locals 3

    new-instance v0, Lorg/telegram/ui/Components/EditTextCaption$4;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/EditTextCaption$4;-><init>(Lorg/telegram/ui/Components/EditTextCaption;Landroid/view/ActionMode$Callback;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    new-instance v1, Lorg/telegram/ui/Components/EditTextCaption$5;

    invoke-direct {v1, p0, v0, p1}, Lorg/telegram/ui/Components/EditTextCaption$5;-><init>(Lorg/telegram/ui/Components/EditTextCaption;Landroid/view/ActionMode$Callback;Landroid/view/ActionMode$Callback;)V

    return-object v1

    :cond_0
    return-object v0
.end method


# virtual methods
.method public closeCreationLinkDialog()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextCaption;->creationLinkDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextCaption;->creationLinkDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getAllowTextEntitiesIntersection()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/EditTextCaption;->allowTextEntitiesIntersection:Z

    return v0
.end method

.method public getCaption()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextCaption;->caption:Ljava/lang/String;

    return-object v0
.end method

.method public makeSelectedBold()V
    .locals 2

    new-instance v0, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;

    invoke-direct {v0}, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;-><init>()V

    iget v1, v0, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    new-instance v1, Lorg/telegram/ui/Components/TextStyleSpan;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/TextStyleSpan;-><init>(Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;)V

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/EditTextCaption;->applyTextStyleToSelection(Lorg/telegram/ui/Components/TextStyleSpan;)V

    return-void
.end method

.method public makeSelectedItalic()V
    .locals 2

    new-instance v0, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;

    invoke-direct {v0}, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;-><init>()V

    iget v1, v0, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    new-instance v1, Lorg/telegram/ui/Components/TextStyleSpan;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/TextStyleSpan;-><init>(Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;)V

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/EditTextCaption;->applyTextStyleToSelection(Lorg/telegram/ui/Components/TextStyleSpan;)V

    return-void
.end method

.method public makeSelectedMono()V
    .locals 2

    new-instance v0, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;

    invoke-direct {v0}, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;-><init>()V

    iget v1, v0, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    new-instance v1, Lorg/telegram/ui/Components/TextStyleSpan;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/TextStyleSpan;-><init>(Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;)V

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/EditTextCaption;->applyTextStyleToSelection(Lorg/telegram/ui/Components/TextStyleSpan;)V

    return-void
.end method

.method public makeSelectedQuote()V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/EditTextCaption;->makeSelectedQuote(Z)V

    return-void
.end method

.method public makeSelectedQuote(Z)V
    .locals 3

    .line 0
    iget v0, p0, Lorg/telegram/ui/Components/EditTextCaption;->selectionStart:I

    if-ltz v0, :cond_0

    iget v1, p0, Lorg/telegram/ui/Components/EditTextCaption;->selectionEnd:I

    if-ltz v1, :cond_0

    const/4 v2, -0x1

    iput v2, p0, Lorg/telegram/ui/Components/EditTextCaption;->selectionEnd:I

    iput v2, p0, Lorg/telegram/ui/Components/EditTextCaption;->selectionStart:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    :goto_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2, v0, v1, p1}, Lorg/telegram/ui/Components/QuoteSpan;->putQuoteToEditable(Landroid/text/Editable;IIZ)I

    move-result p1

    if-ltz p1, :cond_1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextEffects;->resetFontMetricsCache()V

    :cond_1
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/EditTextEffects;->invalidateQuotes(Z)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextEffects;->invalidateSpoilers()V

    return-void
.end method

.method public makeSelectedRegular()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/EditTextCaption;->applyTextStyleToSelection(Lorg/telegram/ui/Components/TextStyleSpan;)V

    return-void
.end method

.method public makeSelectedSpoiler()V
    .locals 2

    new-instance v0, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;

    invoke-direct {v0}, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;-><init>()V

    iget v1, v0, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    or-int/lit16 v1, v1, 0x100

    iput v1, v0, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    new-instance v1, Lorg/telegram/ui/Components/TextStyleSpan;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/TextStyleSpan;-><init>(Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;)V

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/EditTextCaption;->applyTextStyleToSelection(Lorg/telegram/ui/Components/TextStyleSpan;)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextEffects;->invalidateSpoilers()V

    return-void
.end method

.method public makeSelectedStrike()V
    .locals 2

    new-instance v0, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;

    invoke-direct {v0}, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;-><init>()V

    iget v1, v0, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    new-instance v1, Lorg/telegram/ui/Components/TextStyleSpan;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/TextStyleSpan;-><init>(Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;)V

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/EditTextCaption;->applyTextStyleToSelection(Lorg/telegram/ui/Components/TextStyleSpan;)V

    return-void
.end method

.method public makeSelectedUnderline()V
    .locals 2

    new-instance v0, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;

    invoke-direct {v0}, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;-><init>()V

    iget v1, v0, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    new-instance v1, Lorg/telegram/ui/Components/TextStyleSpan;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/TextStyleSpan;-><init>(Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;)V

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/EditTextCaption;->applyTextStyleToSelection(Lorg/telegram/ui/Components/TextStyleSpan;)V

    return-void
.end method

.method public makeSelectedUrl()V
    .locals 18

    move-object/from16 v1, p0

    iget-boolean v0, v1, Lorg/telegram/ui/Components/EditTextCaption;->adaptiveCreateLinkDialog:Z

    if-eqz v0, :cond_0

    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialogDecor$Builder;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/ui/Components/EditTextCaption;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialogDecor$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    :goto_0
    move-object v2, v0

    goto :goto_1

    :cond_0
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/ui/Components/EditTextCaption;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_0

    :goto_1
    sget v0, Lorg/telegram/messenger/R$string;->CreateLink:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    new-instance v3, Landroid/widget/FrameLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v4, Lorg/telegram/ui/Components/EditTextCaption$2;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v4, v1, v0}, Lorg/telegram/ui/Components/EditTextCaption$2;-><init>(Lorg/telegram/ui/Components/EditTextCaption;Landroid/content/Context;)V

    const/high16 v0, 0x41900000    # 18.0f

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextSize(IF)V

    const-string v0, "http://"

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/EditTextCaption;->getThemedColor(I)I

    move-result v0

    invoke-virtual {v4, v0}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    sget v0, Lorg/telegram/messenger/R$string;->URL:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHintText(Ljava/lang/CharSequence;)V

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueHeader:I

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/EditTextCaption;->getThemedColor(I)I

    move-result v0

    invoke-virtual {v4, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHeaderHintColor(I)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTransformHintToHeader(Z)V

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteInputField:I

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/EditTextCaption;->getThemedColor(I)I

    move-result v0

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteInputFieldActivated:I

    invoke-direct {v1, v6}, Lorg/telegram/ui/Components/EditTextCaption;->getThemedColor(I)I

    move-result v6

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-direct {v1, v7}, Lorg/telegram/ui/Components/EditTextCaption;->getThemedColor(I)I

    move-result v7

    invoke-virtual {v4, v0, v6, v7}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setLineColors(III)V

    const/4 v0, 0x6

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setImeOptions(I)V

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    const/4 v7, 0x0

    invoke-virtual {v4, v7, v7, v7, v7}, Landroid/view/View;->setPadding(IIII)V

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inTextSelectionHighlight:I

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/EditTextCaption;->getThemedColor(I)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setHighlightColor(I)V

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_TextSelectionCursor:I

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/EditTextCaption;->getThemedColor(I)I

    move-result v0

    invoke-virtual {v4, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHandlesColor(I)V

    const/16 v0, 0x77

    const/4 v8, -0x1

    invoke-static {v8, v8, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v0, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v9, 0x41400000    # 12.0f

    invoke-virtual {v0, v5, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    sget v9, Lorg/telegram/messenger/R$string;->Paste:I

    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v9, 0x41200000    # 10.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-virtual {v0, v10, v7, v9, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v9, 0x11

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setGravity(I)V

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText2:I

    invoke-direct {v1, v9}, Lorg/telegram/ui/Components/EditTextCaption;->getThemedColor(I)I

    move-result v9

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v10, 0x40c00000    # 6.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    const v11, 0x3df5c28f    # 0.12f

    invoke-static {v9, v11}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v11

    const v12, 0x3e19999a    # 0.15f

    invoke-static {v9, v12}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v9

    invoke-static {v10, v11, v9}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v9, 0x3dcccccd    # 0.1f

    const/high16 v10, 0x3fc00000    # 1.5f

    invoke-static {v0, v9, v10}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;FF)V

    const/high16 v16, 0x41c00000    # 24.0f

    const/high16 v17, 0x40400000    # 3.0f

    const/4 v11, -0x2

    const/high16 v12, 0x41d00000    # 26.0f

    const/16 v13, 0x15

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v3, v0, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v9, Lorg/telegram/ui/Components/EditTextCaption$$ExternalSyntheticLambda0;

    invoke-direct {v9, v1, v4, v0}, Lorg/telegram/ui/Components/EditTextCaption$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/EditTextCaption;Lorg/telegram/ui/Components/EditTextBoldCursor;Landroid/widget/TextView;)V

    new-instance v10, Lorg/telegram/ui/Components/EditTextCaption$$ExternalSyntheticLambda1;

    invoke-direct {v10, v1, v4, v9}, Lorg/telegram/ui/Components/EditTextCaption$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/EditTextCaption;Lorg/telegram/ui/Components/EditTextBoldCursor;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lorg/telegram/ui/Components/EditTextCaption$3;

    invoke-direct {v0, v1, v9}, Lorg/telegram/ui/Components/EditTextCaption$3;-><init>(Lorg/telegram/ui/Components/EditTextCaption;Ljava/lang/Runnable;)V

    invoke-virtual {v4, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v10, "clipboard"

    invoke-virtual {v0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v10

    if-eqz v10, :cond_1

    :try_start_0
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    move-object v0, v6

    :goto_2
    if-eqz v0, :cond_1

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {v4, v7, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(II)V

    :cond_1
    invoke-interface {v9}, Ljava/lang/Runnable;->run()V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget v0, v1, Lorg/telegram/ui/Components/EditTextCaption;->selectionStart:I

    if-ltz v0, :cond_2

    iget v3, v1, Lorg/telegram/ui/Components/EditTextCaption;->selectionEnd:I

    if-ltz v3, :cond_2

    iput v8, v1, Lorg/telegram/ui/Components/EditTextCaption;->selectionEnd:I

    iput v8, v1, Lorg/telegram/ui/Components/EditTextCaption;->selectionStart:I

    goto :goto_3

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    :goto_3
    sget v8, Lorg/telegram/messenger/R$string;->OK:I

    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lorg/telegram/ui/Components/EditTextCaption$$ExternalSyntheticLambda2;

    invoke-direct {v9, v1, v0, v3, v4}, Lorg/telegram/ui/Components/EditTextCaption$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/EditTextCaption;IILorg/telegram/ui/Components/EditTextBoldCursor;)V

    invoke-virtual {v2, v8, v9}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget v0, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-boolean v0, v1, Lorg/telegram/ui/Components/EditTextCaption;->adaptiveCreateLinkDialog:Z

    if-eqz v0, :cond_3

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/Components/EditTextCaption;->creationLinkDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    new-instance v2, Lorg/telegram/ui/Components/EditTextCaption$$ExternalSyntheticLambda3;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Components/EditTextCaption$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/EditTextCaption;)V

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, v1, Lorg/telegram/ui/Components/EditTextCaption;->creationLinkDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    new-instance v2, Lorg/telegram/ui/Components/EditTextCaption$$ExternalSyntheticLambda4;

    invoke-direct {v2, v4}, Lorg/telegram/ui/Components/EditTextCaption$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/EditTextBoldCursor;)V

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    iget-object v0, v1, Lorg/telegram/ui/Components/EditTextCaption;->creationLinkDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog;->showDelayed(J)V

    goto :goto_4

    :cond_3
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/Components/EditTextCaption$$ExternalSyntheticLambda5;

    invoke-direct {v2, v4}, Lorg/telegram/ui/Components/EditTextCaption$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/EditTextBoldCursor;)V

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    :goto_4
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_5

    instance-of v2, v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v2, :cond_4

    move-object v2, v0

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :cond_4
    const/high16 v2, 0x41c00000    # 24.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    const/high16 v2, 0x42100000    # 36.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {v4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {v4, v7, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(II)V

    return-void
.end method

.method protected onContextMenuClose()V
    .locals 0

    return-void
.end method

.method protected onContextMenuOpen()V
    .locals 0

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->offsetY:F

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-super {p0, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->onDraw(Landroid/graphics/Canvas;)V

    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextCaption;->captionLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/EditTextCaption;->userNameLength:I

    invoke-virtual {p0}, Landroid/widget/TextView;->length()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    iget v2, p0, Lorg/telegram/ui/Components/EditTextCaption;->hintColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v2, p0, Lorg/telegram/ui/Components/EditTextCaption;->xOffset:I

    int-to-float v2, v2

    iget v3, p0, Lorg/telegram/ui/Components/EditTextCaption;->yOffset:I

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v2, p0, Lorg/telegram/ui/Components/EditTextCaption;->captionLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 6

    invoke-super {p0, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-static {p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->wrap(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextCaption;->caption:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextCaption;->caption:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setHintText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getActionList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->getId()I

    move-result v4

    const/high16 v5, 0x10000000

    if-ne v4, v5, :cond_1

    invoke-virtual {p1, v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->removeAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)Z

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    sget v1, Lorg/telegram/messenger/R$id;->menu_spoiler:I

    sget v2, Lorg/telegram/messenger/R$string;->Spoiler:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    new-instance v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    sget v1, Lorg/telegram/messenger/R$id;->menu_bold:I

    sget v2, Lorg/telegram/messenger/R$string;->Bold:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    new-instance v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    sget v1, Lorg/telegram/messenger/R$id;->menu_italic:I

    sget v2, Lorg/telegram/messenger/R$string;->Italic:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    new-instance v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    sget v1, Lorg/telegram/messenger/R$id;->menu_mono:I

    sget v2, Lorg/telegram/messenger/R$string;->Mono:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    new-instance v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    sget v1, Lorg/telegram/messenger/R$id;->menu_strike:I

    sget v2, Lorg/telegram/messenger/R$string;->Strike:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    new-instance v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    sget v1, Lorg/telegram/messenger/R$id;->menu_underline:I

    sget v2, Lorg/telegram/messenger/R$string;->Underline:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    new-instance v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    sget v1, Lorg/telegram/messenger/R$id;->menu_link:I

    sget v2, Lorg/telegram/messenger/R$string;->CreateLink:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    new-instance v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    sget v1, Lorg/telegram/messenger/R$id;->menu_regular:I

    sget v2, Lorg/telegram/messenger/R$string;->Regular:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    :cond_3
    return-void
.end method

.method protected onLineCountChanged(II)V
    .locals 0

    return-void
.end method

.method protected onMeasure(II)V
    .locals 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p2

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lorg/telegram/ui/Components/EditTextCaption;->isInitLineCount:Z

    invoke-super {p0, p1, p2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->onMeasure(II)V

    iget-boolean p2, p0, Lorg/telegram/ui/Components/EditTextCaption;->isInitLineCount:Z

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result p2

    iput p2, p0, Lorg/telegram/ui/Components/EditTextCaption;->lineCount:I

    :cond_1
    iput-boolean v1, p0, Lorg/telegram/ui/Components/EditTextCaption;->isInitLineCount:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v2, 0x424c0000    # 51.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {p0, p1, v2}, Landroid/view/View;->setMeasuredDimension(II)V

    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_2
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/Components/EditTextCaption;->captionLayout:Landroid/text/StaticLayout;

    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextCaption;->caption:Ljava/lang/String;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_3

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-le p2, v0, :cond_3

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p2

    const/16 v2, 0x40

    if-ne p2, v2, :cond_3

    const/16 p2, 0x20

    invoke-static {p1, p2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result p2

    const/4 v2, -0x1

    if-eq p2, v2, :cond_3

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    add-int/2addr p2, v0

    invoke-interface {p1, v1, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, p1, v1, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result p1

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    sub-int/2addr p2, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr p2, v3

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/EditTextCaption;->userNameLength:I

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextCaption;->caption:Ljava/lang/String;

    sub-int v6, p2, p1

    int-to-float p2, v6

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v0, v2, p2, v3}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v4

    iput p1, p0, Lorg/telegram/ui/Components/EditTextCaption;->xOffset:I

    :try_start_1
    new-instance p1, Landroid/text/StaticLayout;

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    move-object v3, p1

    invoke-direct/range {v3 .. v10}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object p1, p0, Lorg/telegram/ui/Components/EditTextCaption;->captionLayout:Landroid/text/StaticLayout;

    invoke-virtual {p1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result p1

    if-lez p1, :cond_2

    iget p1, p0, Lorg/telegram/ui/Components/EditTextCaption;->xOffset:I

    int-to-float p1, p1

    iget-object p2, p0, Lorg/telegram/ui/Components/EditTextCaption;->captionLayout:Landroid/text/StaticLayout;

    invoke-virtual {p2, v1}, Landroid/text/Layout;->getLineLeft(I)F

    move-result p2

    neg-float p2, p2

    add-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lorg/telegram/ui/Components/EditTextCaption;->xOffset:I

    goto :goto_3

    :catch_1
    move-exception p1

    goto :goto_4

    :cond_2
    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iget-object p2, p0, Lorg/telegram/ui/Components/EditTextCaption;->captionLayout:Landroid/text/StaticLayout;

    invoke-virtual {p2, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result p2

    sub-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    const/high16 p2, 0x3f000000    # 0.5f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lorg/telegram/ui/Components/EditTextCaption;->yOffset:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :goto_4
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_3
    :goto_5
    return-void
.end method

.method public onTextContextMenuItem(I)Z
    .locals 9

    const-class v0, Lorg/telegram/ui/Components/QuoteSpan$QuoteStyleSpan;

    const v1, 0x1020022

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "clipboard"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    invoke-virtual {v1}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroid/content/ClipData;->getItemCount()I

    move-result v4

    if-ne v4, v2, :cond_8

    invoke-virtual {v1}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v4

    const-string v5, "text/html"

    invoke-virtual {v4, v5}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    :try_start_0
    invoke-virtual {v1, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getHtmlText()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-static {v1}, Lorg/telegram/messenger/utils/CopyUtilities;->fromHTML(Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v1

    invoke-direct {v4, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    const/4 v5, 0x0

    invoke-static {v4, v1, v3, v5}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z[I)Ljava/lang/CharSequence;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    const-class v5, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-virtual {v4, v3, v1, v5}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    if-eqz v1, :cond_0

    const/4 v5, 0x0

    :goto_0
    array-length v6, v1

    if-ge v5, v6, :cond_0

    aget-object v6, v1, v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v7

    invoke-static {}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getCacheTypeForEnterView()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->applyFontMetrics(Landroid/graphics/Paint$FontMetricsInt;I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6, v1, v5, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lorg/telegram/ui/Components/QuoteSpan$QuoteStyleSpan;

    if-eqz v6, :cond_1

    array-length v6, v6

    if-lez v6, :cond_1

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    invoke-virtual {v4, v3, v6, v0}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/telegram/ui/Components/QuoteSpan$QuoteStyleSpan;

    :goto_1
    array-length v6, v0

    if-ge v3, v6, :cond_2

    aget-object v6, v0, v3

    invoke-virtual {v4, v6}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    aget-object v6, v0, v3

    iget-object v6, v6, Lorg/telegram/ui/Components/QuoteSpan$QuoteStyleSpan;->span:Lorg/telegram/ui/Components/QuoteSpan;

    invoke-virtual {v4, v6}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-static {v4}, Lorg/telegram/ui/Components/QuoteSpan;->normalizeQuotes(Landroid/text/Editable;)V

    :cond_2
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0, v1, v5, v4}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :goto_2
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    :cond_3
    const v0, 0x1020021

    if-ne p1, v0, :cond_5

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    :try_start_1
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->addToClipboard(Ljava/lang/CharSequence;)Z

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->closeContextMenu()V

    iget-object v3, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->floatingActionMode:Lorg/telegram/ui/ActionBar/FloatingActionMode;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/FloatingActionMode;->finish()V

    :cond_4
    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return v2

    :cond_5
    const v0, 0x1020020

    if-ne p1, v0, :cond_8

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    :try_start_2
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->addToClipboard(Ljava/lang/CharSequence;)Z

    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4}, Landroid/text/SpannableStringBuilder;-><init>()V

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5, v3, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_6
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-eq v1, v3, :cond_7

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-interface {v3, v1, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_7
    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(II)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return v2

    :catch_1
    :cond_8
    :goto_3
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTextContextMenuItem(I)Z

    move-result p1

    return p1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    if-nez p1, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/EditTextCaption;->copyPasteShowed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->onWindowFocusChanged(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/EditTextCaption;->performMenuAction(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->performAccessibilityAction(ILandroid/os/Bundle;)Z

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

.method public performMenuAction(I)Z
    .locals 2

    sget v0, Lorg/telegram/messenger/R$id;->menu_regular:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextCaption;->makeSelectedRegular()V

    return v1

    :cond_0
    sget v0, Lorg/telegram/messenger/R$id;->menu_bold:I

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextCaption;->makeSelectedBold()V

    return v1

    :cond_1
    sget v0, Lorg/telegram/messenger/R$id;->menu_italic:I

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextCaption;->makeSelectedItalic()V

    return v1

    :cond_2
    sget v0, Lorg/telegram/messenger/R$id;->menu_mono:I

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextCaption;->makeSelectedMono()V

    return v1

    :cond_3
    sget v0, Lorg/telegram/messenger/R$id;->menu_link:I

    if-ne p1, v0, :cond_4

    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextCaption;->makeSelectedUrl()V

    return v1

    :cond_4
    sget v0, Lorg/telegram/messenger/R$id;->menu_strike:I

    if-ne p1, v0, :cond_5

    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextCaption;->makeSelectedStrike()V

    return v1

    :cond_5
    sget v0, Lorg/telegram/messenger/R$id;->menu_underline:I

    if-ne p1, v0, :cond_6

    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextCaption;->makeSelectedUnderline()V

    return v1

    :cond_6
    sget v0, Lorg/telegram/messenger/R$id;->menu_spoiler:I

    if-ne p1, v0, :cond_7

    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextCaption;->makeSelectedSpoiler()V

    return v1

    :cond_7
    sget v0, Lorg/telegram/messenger/R$id;->menu_quote:I

    if-ne p1, v0, :cond_8

    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextCaption;->makeSelectedQuote()V

    return v1

    :cond_8
    const/4 p1, 0x0

    return p1
.end method

.method public setAllowTextEntitiesIntersection(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/EditTextCaption;->allowTextEntitiesIntersection:Z

    return-void
.end method

.method public setCaption(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextCaption;->caption:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextCaption;->caption:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    iput-object p1, p0, Lorg/telegram/ui/Components/EditTextCaption;->caption:Ljava/lang/String;

    if-eqz p1, :cond_3

    const/16 v0, 0xa

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/EditTextCaption;->caption:Ljava/lang/String;

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_4
    :goto_0
    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Components/EditTextCaption$EditTextCaptionDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/EditTextCaption;->delegate:Lorg/telegram/ui/Components/EditTextCaption$EditTextCaptionDelegate;

    return-void
.end method

.method public setHintColor(I)V
    .locals 0

    invoke-super {p0, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHintColor(I)V

    iput p1, p0, Lorg/telegram/ui/Components/EditTextCaption;->hintColor:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setSelectionOverride(II)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/EditTextCaption;->selectionStart:I

    iput p2, p0, Lorg/telegram/ui/Components/EditTextCaption;->selectionEnd:I

    return-void
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EditTextCaption;->overrideCallback(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;

    move-result-object p1

    invoke-super {p0, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EditTextCaption;->overrideCallback(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;

    move-result-object p1

    invoke-super {p0, p1, p2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method
