.class public Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView;
.super Lorg/telegram/ui/Components/RLottieImageView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;,
        Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$TransitState;
    }
.end annotation


# instance fields
.field private animatingState:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$TransitState;

.field private currentState:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;

.field private stateMap:Ljava/util/Map;


# direct methods
.method public static synthetic $r8$lambda$47VtL4FdSXetCNTIYfWNdWJVAkY(Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView;->lambda$setState$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    new-instance p1, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$1;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$1;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView;->stateMap:Ljava/util/Map;

    return-void
.end method

.method private getAnyState(Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;)Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$TransitState;
    .locals 5

    invoke-static {}, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$TransitState;->values()[Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$TransitState;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, v3, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$TransitState;->firstState:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;

    if-ne v4, p1, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getState(Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;)Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$TransitState;
    .locals 5

    invoke-static {}, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$TransitState;->values()[Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$TransitState;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, v3, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$TransitState;->firstState:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;

    if-ne v4, p1, :cond_0

    iget-object v4, v3, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$TransitState;->secondState:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;

    if-ne v4, p2, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private synthetic lambda$setState$0()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView;->animatingState:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$TransitState;

    return-void
.end method


# virtual methods
.method public setState(Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;Z)V
    .locals 3

    if-eqz p2, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView;->currentState:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView;->currentState:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView;->currentState:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p2, :cond_3

    if-eqz v0, :cond_3

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView;->getState(Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;)Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$TransitState;

    move-result-object p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView;->currentState:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;

    invoke-direct {p0, v0, p2}, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView;->getState(Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;)Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$TransitState;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView;->animatingState:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$TransitState;

    if-ne p2, v0, :cond_2

    return-void

    :cond_2
    iput-object p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView;->animatingState:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$TransitState;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView;->stateMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/RLottieDrawable;->stop()V

    invoke-virtual {p2, v1, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->setProgress(FZ)V

    invoke-virtual {p2, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->setAutoRepeat(I)V

    new-instance v0, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView;)V

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setOnAnimationEndListener(Ljava/lang/Runnable;)V

    invoke-virtual {p0, p2}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(Lorg/telegram/ui/Components/RLottieDrawable;)V

    new-instance v0, Lorg/telegram/ui/Cells/ShareDialogCell$RepostStoryDrawable$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Lorg/telegram/ui/Cells/ShareDialogCell$RepostStoryDrawable$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/RLottieDrawable;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_3
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView;->stateMap:Ljava/util/Map;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView;->currentState:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView;->getAnyState(Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;)Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$TransitState;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/RLottieDrawable;->stop()V

    invoke-virtual {p2, v1, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->setProgress(FZ)V

    invoke-virtual {p0, p2}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(Lorg/telegram/ui/Components/RLottieDrawable;)V

    :goto_1
    sget-object p2, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$2;->$SwitchMap$org$telegram$ui$Components$ChatActivityEnterViewAnimatedIconView$State:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_5

    const/4 p2, 0x2

    if-eq p1, p2, :cond_4

    goto :goto_3

    :cond_4
    sget p1, Lorg/telegram/messenger/R$string;->AccDescrVideoMessage:I

    :goto_2
    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_5
    sget p1, Lorg/telegram/messenger/R$string;->AccDescrVoiceMessage:I

    goto :goto_2

    :goto_3
    return-void
.end method
