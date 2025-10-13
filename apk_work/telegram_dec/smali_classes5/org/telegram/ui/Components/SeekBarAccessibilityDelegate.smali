.class public abstract Lorg/telegram/ui/Components/SeekBarAccessibilityDelegate;
.super Landroid/view/View$AccessibilityDelegate;
.source "SourceFile"


# static fields
.field private static final SEEK_BAR_CLASS_NAME:Ljava/lang/CharSequence;


# instance fields
.field private final accessibilityEventRunnables:Ljava/util/Map;

.field private final onAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;


# direct methods
.method public static synthetic $r8$lambda$w5UpdJCuWMcYRFTGnChRlfOfsjc(Lorg/telegram/ui/Components/SeekBarAccessibilityDelegate;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SeekBarAccessibilityDelegate;->lambda$postAccessibilityEventRunnable$0(Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/widget/SeekBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Components/SeekBarAccessibilityDelegate;->SEEK_BAR_CLASS_NAME:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/SeekBarAccessibilityDelegate;->accessibilityEventRunnables:Ljava/util/Map;

    new-instance v0, Lorg/telegram/ui/Components/SeekBarAccessibilityDelegate$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/SeekBarAccessibilityDelegate$1;-><init>(Lorg/telegram/ui/Components/SeekBarAccessibilityDelegate;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/SeekBarAccessibilityDelegate;->onAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/SeekBarAccessibilityDelegate;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/SeekBarAccessibilityDelegate;->accessibilityEventRunnables:Ljava/util/Map;

    return-object p0
.end method

.method private synthetic lambda$postAccessibilityEventRunnable$0(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Landroid/view/View$AccessibilityDelegate;->sendAccessibilityEvent(Landroid/view/View;I)V

    return-void
.end method

.method private postAccessibilityEventRunnable(Landroid/view/View;)V
    .locals 3

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SeekBarAccessibilityDelegate;->accessibilityEventRunnables:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/SeekBarAccessibilityDelegate;->accessibilityEventRunnables:Ljava/util/Map;

    new-instance v1, Lorg/telegram/ui/Components/SeekBarAccessibilityDelegate$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/SeekBarAccessibilityDelegate$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/SeekBarAccessibilityDelegate;Landroid/view/View;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/telegram/ui/Components/SeekBarAccessibilityDelegate;->onAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :goto_0
    const-wide/16 v1, 0x190

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method protected abstract canScrollBackward(Landroid/view/View;)Z
.end method

.method protected abstract canScrollForward(Landroid/view/View;)Z
.end method

.method protected abstract doScroll(Landroid/view/View;Z)V
.end method

.method protected getContentDescription(Landroid/view/View;)Ljava/lang/CharSequence;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Components/SeekBarAccessibilityDelegate;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    .line 0
    sget-object v0, Lorg/telegram/ui/Components/SeekBarAccessibilityDelegate;->SEEK_BAR_CLASS_NAME:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/SeekBarAccessibilityDelegate;->getContentDescription(Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/SeekBarAccessibilityDelegate;->canScrollBackward(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/telegram/ui/Components/SeekBarAccessibilityDelegate$$ExternalSyntheticApiModelOutline0;->m()Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    move-result-object v0

    invoke-static {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$$ExternalSyntheticApiModelOutline7;->m(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_1
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/SeekBarAccessibilityDelegate;->canScrollForward(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lorg/telegram/ui/Components/SeekBarAccessibilityDelegate$$ExternalSyntheticApiModelOutline1;->m()Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    move-result-object p1

    invoke-static {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$$ExternalSyntheticApiModelOutline7;->m(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_2
    return-void
.end method

.method public final onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/Components/SeekBarAccessibilityDelegate;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/telegram/ui/Components/SeekBarAccessibilityDelegate;->performAccessibilityActionInternal(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public final performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lorg/telegram/ui/Components/SeekBarAccessibilityDelegate;->performAccessibilityActionInternal(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public performAccessibilityActionInternal(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 2

    .line 0
    const/16 p3, 0x1000

    const/4 v0, 0x0

    const/16 v1, 0x2000

    if-eq p2, p3, :cond_1

    if-ne p2, v1, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    const/4 p3, 0x1

    if-ne p2, v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/SeekBarAccessibilityDelegate;->doScroll(Landroid/view/View;Z)V

    if-eqz p1, :cond_3

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SeekBarAccessibilityDelegate;->postAccessibilityEventRunnable(Landroid/view/View;)V

    :cond_3
    return p3
.end method
