.class public Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private awaitingKeyboard:Z

.field public ignoring:Z

.field private keyboardHeight:I

.field private lastKeyboardHeight:I

.field private final listener:Lorg/telegram/messenger/Utilities$Callback;

.field private final onGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private final onLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private realRootView:Landroid/view/View;

.field private final rect:Landroid/graphics/Rect;

.field private final rootView:Landroid/view/View;


# direct methods
.method public static synthetic $r8$lambda$8TLbUM72M5Y-6BgxGFS2SsS9fDs(Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->update()V

    return-void
.end method

.method public static synthetic $r8$lambda$_ZtOZInTCnnrDaVI2QguSqgCS8k(Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p9}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->lambda$new$0(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;-><init>(Landroid/view/View;ZLorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;ZLorg/telegram/messenger/Utilities$Callback;)V
    .locals 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->rect:Landroid/graphics/Rect;

    new-instance v0, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->onLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;)V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->onGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->rootView:Landroid/view/View;

    iput-object p3, p0, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->listener:Lorg/telegram/messenger/Utilities$Callback;

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->realRootView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p3

    invoke-virtual {p3, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_0
    new-instance p3, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier$1;

    invoke-direct {p3, p0, p2, p1}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier$1;-><init>(Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;ZLandroid/view/View;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method static synthetic access$002(Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->realRootView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->onGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;)Landroid/view/View$OnLayoutChangeListener;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->onLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    return-object p0
.end method

.method private synthetic lambda$new$0(Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->update()V

    return-void
.end method

.method private update()V
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->ignoring:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->rootView:Landroid/view/View;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->realRootView:Landroid/view/View;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->rootView:Landroid/view/View;

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->keyboardHeight:I

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->lastKeyboardHeight:I

    if-eq v1, v0, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    iput v0, p0, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->lastKeyboardHeight:I

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->fire()V

    :cond_3
    return-void
.end method


# virtual methods
.method public awaitKeyboard()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->awaitingKeyboard:Z

    return-void
.end method

.method public fire()V
    .locals 3

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->awaitingKeyboard:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->keyboardHeight:I

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->awaitingKeyboard:Z

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->listener:Lorg/telegram/messenger/Utilities$Callback;

    if-eqz v0, :cond_2

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->keyboardHeight:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public getKeyboardHeight()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->keyboardHeight:I

    return v0
.end method

.method public ignore(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->ignoring:Z

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->update()V

    return-void
.end method

.method public keyboardVisible()Z
    .locals 3

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->keyboardHeight:I

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v1, v2

    if-gt v0, v1, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->awaitingKeyboard:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
