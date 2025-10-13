.class public Lorg/telegram/ui/CalendarActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/CalendarActivity$MonthView;,
        Lorg/telegram/ui/CalendarActivity$CalendarAdapter;,
        Lorg/telegram/ui/CalendarActivity$PeriodDay;,
        Lorg/telegram/ui/CalendarActivity$Callback;,
        Lorg/telegram/ui/CalendarActivity$RowAnimationValue;
    }
.end annotation


# instance fields
.field activeTextPaint:Landroid/text/TextPaint;

.field adapter:Lorg/telegram/ui/CalendarActivity$CalendarAdapter;

.field backDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

.field blackoutPaint:Landroid/graphics/Paint;

.field private blurredView:Landroid/view/View;

.field private bottomBar:Landroid/widget/FrameLayout;

.field private calendarType:I

.field callback:Lorg/telegram/ui/CalendarActivity$Callback;

.field private canClearHistory:Z

.field chatActivity:Lorg/telegram/ui/ChatActivity;

.field private checkEnterItems:Z

.field contentView:Landroid/widget/FrameLayout;

.field private dateSelectedEnd:I

.field private dateSelectedStart:I

.field private dialogId:J

.field endReached:Z

.field private inSelectionMode:Z

.field private isOpened:Z

.field lastDaysSelected:I

.field lastId:I

.field lastInSelectionMode:Z

.field layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private loading:Z

.field private mediaSpoilerEffect:Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

.field messagesByYearMounth:Landroid/util/SparseArray;

.field private minDate:I

.field minMontYear:I

.field monthCount:I

.field private path:Landroid/graphics/Path;

.field private photosVideosTypeFilter:I

.field removeDaysButton:Landroid/widget/TextView;

.field selectDaysButton:Landroid/widget/TextView;

.field selectDaysHint:Lorg/telegram/ui/Components/HintView;

.field private selectOutlinePaint:Landroid/graphics/Paint;

.field private selectPaint:Landroid/graphics/Paint;

.field selectedMonth:I

.field selectedYear:I

.field private selectionAnimator:Landroid/animation/ValueAnimator;

.field startFromMonth:I

.field startFromYear:I

.field startOffset:I

.field private storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

.field private storiesPlaceDay:I

.field private storiesPlaceDrawAbove:Lorg/telegram/ui/Stories/StoryViewer$HolderDrawAbove;

.field private storiesPlaceProvider:Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;

.field textPaint:Landroid/text/TextPaint;

.field textPaint2:Landroid/text/TextPaint;

.field private topicId:J


# direct methods
.method public static synthetic $r8$lambda$1uaIeSWehfv9-bJIugmlIOeKv48(Lorg/telegram/ui/CalendarActivity;Ljava/util/Calendar;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/CalendarActivity;->lambda$loadNext$3(Ljava/util/Calendar;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CAOXmTMGSn3xPBIq8_6JbqjRZco(Lorg/telegram/ui/CalendarActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/CalendarActivity;->lambda$createView$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZAtorA1ff7Ya2T_EaNBv2knE1ls(Lorg/telegram/ui/CalendarActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/CalendarActivity;->lambda$createView$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qhtR6ewb3iAMzVYxvRR-ByzrF8k(Lorg/telegram/ui/CalendarActivity;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/CalendarActivity;->lambda$animateSelection$4(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zPi6JVGkMlVQDU_oKJxTtM1BG6M(Lorg/telegram/ui/CalendarActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Ljava/util/Calendar;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/CalendarActivity;->lambda$loadNext$2(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Ljava/util/Calendar;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;II)V
    .locals 3

    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>(Landroid/os/Bundle;)V

    new-instance p1, Landroid/text/TextPaint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/CalendarActivity;->textPaint:Landroid/text/TextPaint;

    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/CalendarActivity;->activeTextPaint:Landroid/text/TextPaint;

    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/CalendarActivity;->textPaint2:Landroid/text/TextPaint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/CalendarActivity;->selectOutlinePaint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/CalendarActivity;->selectPaint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/CalendarActivity;->blackoutPaint:Landroid/graphics/Paint;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/CalendarActivity;->messagesByYearMounth:Landroid/util/SparseArray;

    const/4 p1, 0x0

    iput p1, p0, Lorg/telegram/ui/CalendarActivity;->startOffset:I

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/CalendarActivity;->path:Landroid/graphics/Path;

    new-instance p1, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    invoke-direct {p1}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/CalendarActivity;->mediaSpoilerEffect:Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    iput p2, p0, Lorg/telegram/ui/CalendarActivity;->photosVideosTypeFilter:I

    if-eqz p3, :cond_0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    int-to-long p2, p3

    const-wide/16 v1, 0x3e8

    mul-long p2, p2, v1

    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p2

    iput p2, p0, Lorg/telegram/ui/CalendarActivity;->selectedYear:I

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/CalendarActivity;->selectedMonth:I

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/CalendarActivity;->selectOutlinePaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lorg/telegram/ui/CalendarActivity;->selectOutlinePaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object p1, p0, Lorg/telegram/ui/CalendarActivity;->selectOutlinePaint:Landroid/graphics/Paint;

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/CalendarActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/CalendarActivity;->storiesPlaceDay:I

    return p0
.end method

.method static synthetic access$002(Lorg/telegram/ui/CalendarActivity;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/CalendarActivity;->storiesPlaceDay:I

    return p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/CalendarActivity;)Lorg/telegram/ui/Stories/StoryViewer$HolderDrawAbove;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/CalendarActivity;->storiesPlaceDrawAbove:Lorg/telegram/ui/Stories/StoryViewer$HolderDrawAbove;

    return-object p0
.end method

.method static synthetic access$102(Lorg/telegram/ui/CalendarActivity;Lorg/telegram/ui/Stories/StoryViewer$HolderDrawAbove;)Lorg/telegram/ui/Stories/StoryViewer$HolderDrawAbove;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/CalendarActivity;->storiesPlaceDrawAbove:Lorg/telegram/ui/Stories/StoryViewer$HolderDrawAbove;

    return-object p1
.end method

.method static synthetic access$1300(Lorg/telegram/ui/CalendarActivity;Lorg/telegram/ui/CalendarActivity$MonthView;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/CalendarActivity;->updateRowSelections(Lorg/telegram/ui/CalendarActivity$MonthView;Z)V

    return-void
.end method

.method static synthetic access$1400(Lorg/telegram/ui/CalendarActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/CalendarActivity;->calendarType:I

    return p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/CalendarActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/CalendarActivity;->canClearHistory:Z

    return p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/CalendarActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/CalendarActivity;)Lorg/telegram/ui/Stories/StoriesController$StoriesList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/CalendarActivity;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    return-object p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/CalendarActivity;)Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/CalendarActivity;->storiesPlaceProvider:Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;

    return-object p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/CalendarActivity;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/CalendarActivity;->selectionAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$1902(Lorg/telegram/ui/CalendarActivity;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/CalendarActivity;->selectionAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$200(Lorg/telegram/ui/CalendarActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/CalendarActivity;->checkEnterItems:Z

    return p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/CalendarActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method static synthetic access$202(Lorg/telegram/ui/CalendarActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/CalendarActivity;->checkEnterItems:Z

    return p1
.end method

.method static synthetic access$2100(Lorg/telegram/ui/CalendarActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/CalendarActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/CalendarActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/CalendarActivity;)J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/ui/CalendarActivity;->dialogId:J

    return-wide v0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/CalendarActivity;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/CalendarActivity;->blurredView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$2502(Lorg/telegram/ui/CalendarActivity;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/CalendarActivity;->blurredView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$2600(Lorg/telegram/ui/CalendarActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/CalendarActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/CalendarActivity;->prepareBlurBitmap()V

    return-void
.end method

.method static synthetic access$2800(Lorg/telegram/ui/CalendarActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/CalendarActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/CalendarActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/CalendarActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/CalendarActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/CalendarActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/CalendarActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/CalendarActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$3800(Lorg/telegram/ui/CalendarActivity;)Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/CalendarActivity;->selectPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$3900(Lorg/telegram/ui/CalendarActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/CalendarActivity;->minDate:I

    return p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/CalendarActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/CalendarActivity;->checkLoadNext()V

    return-void
.end method

.method static synthetic access$4000(Lorg/telegram/ui/CalendarActivity;)Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/CalendarActivity;->selectOutlinePaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$4100(Lorg/telegram/ui/CalendarActivity;)Landroid/graphics/Path;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/CalendarActivity;->path:Landroid/graphics/Path;

    return-object p0
.end method

.method static synthetic access$4200(Lorg/telegram/ui/CalendarActivity;)Lorg/telegram/ui/Components/spoilers/SpoilerEffect;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/CalendarActivity;->mediaSpoilerEffect:Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    return-object p0
.end method

.method static synthetic access$4300(Lorg/telegram/ui/CalendarActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/CalendarActivity;->updateColors()V

    return-void
.end method

.method static synthetic access$4400(Lorg/telegram/ui/CalendarActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method static synthetic access$4500(Lorg/telegram/ui/CalendarActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method static synthetic access$4600(Lorg/telegram/ui/CalendarActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method static synthetic access$4700(Lorg/telegram/ui/CalendarActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/CalendarActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/CalendarActivity;->dateSelectedStart:I

    return p0
.end method

.method static synthetic access$502(Lorg/telegram/ui/CalendarActivity;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/CalendarActivity;->dateSelectedStart:I

    return p1
.end method

.method static synthetic access$600(Lorg/telegram/ui/CalendarActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/CalendarActivity;->dateSelectedEnd:I

    return p0
.end method

.method static synthetic access$602(Lorg/telegram/ui/CalendarActivity;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/CalendarActivity;->dateSelectedEnd:I

    return p1
.end method

.method static synthetic access$700(Lorg/telegram/ui/CalendarActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/CalendarActivity;->inSelectionMode:Z

    return p0
.end method

.method static synthetic access$702(Lorg/telegram/ui/CalendarActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/CalendarActivity;->inSelectionMode:Z

    return p1
.end method

.method static synthetic access$800(Lorg/telegram/ui/CalendarActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/CalendarActivity;->updateTitle()V

    return-void
.end method

.method static synthetic access$900(Lorg/telegram/ui/CalendarActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/CalendarActivity;->animateSelection()V

    return-void
.end method

.method private animateSelection()V
    .locals 7

    const/4 v0, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    const-wide/16 v3, 0x12c

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v2

    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v3, Lorg/telegram/ui/CalendarActivity$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lorg/telegram/ui/CalendarActivity$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/CalendarActivity;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v3, Lorg/telegram/ui/CalendarActivity$10;

    invoke-direct {v3, p0}, Lorg/telegram/ui/CalendarActivity$10;-><init>(Lorg/telegram/ui/CalendarActivity;)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    iput-object v2, p0, Lorg/telegram/ui/CalendarActivity;->selectionAnimator:Landroid/animation/ValueAnimator;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/CalendarActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_0

    iget-object v4, p0, Lorg/telegram/ui/CalendarActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/CalendarActivity$MonthView;

    invoke-direct {p0, v4, v0}, Lorg/telegram/ui/CalendarActivity;->updateRowSelections(Lorg/telegram/ui/CalendarActivity$MonthView;Z)V

    add-int/2addr v3, v0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_1
    iget-object v4, p0, Lorg/telegram/ui/CalendarActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getCachedChildCount()I

    move-result v4

    if-ge v3, v4, :cond_1

    iget-object v4, p0, Lorg/telegram/ui/CalendarActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView;->getCachedChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/CalendarActivity$MonthView;

    invoke-direct {p0, v4, v2}, Lorg/telegram/ui/CalendarActivity;->updateRowSelections(Lorg/telegram/ui/CalendarActivity$MonthView;Z)V

    iget v5, p0, Lorg/telegram/ui/CalendarActivity;->dateSelectedStart:I

    iget v6, p0, Lorg/telegram/ui/CalendarActivity;->dateSelectedEnd:I

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/CalendarActivity$MonthView;->access$1100(Lorg/telegram/ui/CalendarActivity$MonthView;II)V

    invoke-static {v4, v1}, Lorg/telegram/ui/CalendarActivity$MonthView;->access$1200(Lorg/telegram/ui/CalendarActivity$MonthView;F)V

    add-int/2addr v3, v0

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_2
    iget-object v4, p0, Lorg/telegram/ui/CalendarActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getHiddenChildCount()I

    move-result v4

    if-ge v3, v4, :cond_2

    iget-object v4, p0, Lorg/telegram/ui/CalendarActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView;->getHiddenChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/CalendarActivity$MonthView;

    invoke-direct {p0, v4, v2}, Lorg/telegram/ui/CalendarActivity;->updateRowSelections(Lorg/telegram/ui/CalendarActivity$MonthView;Z)V

    iget v5, p0, Lorg/telegram/ui/CalendarActivity;->dateSelectedStart:I

    iget v6, p0, Lorg/telegram/ui/CalendarActivity;->dateSelectedEnd:I

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/CalendarActivity$MonthView;->access$1100(Lorg/telegram/ui/CalendarActivity$MonthView;II)V

    invoke-static {v4, v1}, Lorg/telegram/ui/CalendarActivity$MonthView;->access$1200(Lorg/telegram/ui/CalendarActivity$MonthView;F)V

    add-int/2addr v3, v0

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_3
    iget-object v4, p0, Lorg/telegram/ui/CalendarActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getAttachedScrapChildCount()I

    move-result v4

    if-ge v3, v4, :cond_3

    iget-object v4, p0, Lorg/telegram/ui/CalendarActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView;->getAttachedScrapChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/CalendarActivity$MonthView;

    invoke-direct {p0, v4, v2}, Lorg/telegram/ui/CalendarActivity;->updateRowSelections(Lorg/telegram/ui/CalendarActivity$MonthView;Z)V

    iget v5, p0, Lorg/telegram/ui/CalendarActivity;->dateSelectedStart:I

    iget v6, p0, Lorg/telegram/ui/CalendarActivity;->dateSelectedEnd:I

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/CalendarActivity$MonthView;->access$1100(Lorg/telegram/ui/CalendarActivity$MonthView;II)V

    invoke-static {v4, v1}, Lorg/telegram/ui/CalendarActivity$MonthView;->access$1200(Lorg/telegram/ui/CalendarActivity$MonthView;F)V

    add-int/2addr v3, v0

    goto :goto_3

    :cond_3
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private checkLoadNext()V
    .locals 4

    iget-boolean v0, p0, Lorg/telegram/ui/CalendarActivity;->loading:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lorg/telegram/ui/CalendarActivity;->endReached:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const v0, 0x7fffffff

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/CalendarActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/CalendarActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lorg/telegram/ui/CalendarActivity$MonthView;

    if-eqz v3, :cond_1

    check-cast v2, Lorg/telegram/ui/CalendarActivity$MonthView;

    iget v3, v2, Lorg/telegram/ui/CalendarActivity$MonthView;->currentYear:I

    mul-int/lit8 v3, v3, 0x64

    iget v2, v2, Lorg/telegram/ui/CalendarActivity$MonthView;->currentMonthInYear:I

    add-int/2addr v3, v2

    if-ge v3, v0, :cond_1

    move v0, v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget v1, p0, Lorg/telegram/ui/CalendarActivity;->minMontYear:I

    div-int/lit8 v2, v1, 0x64

    mul-int/lit8 v2, v2, 0xc

    rem-int/lit8 v1, v1, 0x64

    add-int/2addr v2, v1

    div-int/lit8 v1, v0, 0x64

    mul-int/lit8 v1, v1, 0xc

    rem-int/lit8 v0, v0, 0x64

    add-int/2addr v1, v0

    add-int/lit8 v2, v2, 0x3

    if-lt v2, v1, :cond_3

    invoke-direct {p0}, Lorg/telegram/ui/CalendarActivity;->loadNext()V

    :cond_3
    :goto_1
    return-void
.end method

.method private synthetic lambda$animateSelection$4(Landroid/animation/ValueAnimator;)V
    .locals 2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/CalendarActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/CalendarActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/CalendarActivity$MonthView;

    invoke-static {v1, p1}, Lorg/telegram/ui/CalendarActivity$MonthView;->access$1200(Lorg/telegram/ui/CalendarActivity$MonthView;F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic lambda$createView$0(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/CalendarActivity;->inSelectionMode:Z

    invoke-direct {p0}, Lorg/telegram/ui/CalendarActivity;->updateTitle()V

    return-void
.end method

.method private synthetic lambda$createView$1(Landroid/view/View;)V
    .locals 8

    iget v1, p0, Lorg/telegram/ui/CalendarActivity;->lastDaysSelected:I

    if-nez v1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/CalendarActivity;->selectDaysHint:Lorg/telegram/ui/Components/HintView;

    if-nez p1, :cond_0

    new-instance p1, Lorg/telegram/ui/Components/HintView;

    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x8

    invoke-direct {p1, v0, v1}, Lorg/telegram/ui/Components/HintView;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lorg/telegram/ui/CalendarActivity;->selectDaysHint:Lorg/telegram/ui/Components/HintView;

    const/high16 v0, 0x41c00000    # 24.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/HintView;->setExtraTranslationY(F)V

    iget-object p1, p0, Lorg/telegram/ui/CalendarActivity;->contentView:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity;->selectDaysHint:Lorg/telegram/ui/Components/HintView;

    const/high16 v6, 0x41980000    # 19.0f

    const/4 v7, 0x0

    const/4 v1, -0x2

    const/high16 v2, -0x40000000    # -2.0f

    const/16 v3, 0x33

    const/high16 v4, 0x41980000    # 19.0f

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lorg/telegram/ui/CalendarActivity;->selectDaysHint:Lorg/telegram/ui/Components/HintView;

    sget v0, Lorg/telegram/messenger/R$string;->SelectDaysTooltip:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/HintView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/CalendarActivity;->selectDaysHint:Lorg/telegram/ui/Components/HintView;

    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity;->bottomBar:Landroid/widget/FrameLayout;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/HintView;->showForView(Landroid/view/View;Z)Z

    return-void

    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-wide v2, p0, Lorg/telegram/ui/CalendarActivity;->dialogId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    new-instance v5, Lorg/telegram/ui/CalendarActivity$8;

    invoke-direct {v5, p0}, Lorg/telegram/ui/CalendarActivity$8;-><init>(Lorg/telegram/ui/CalendarActivity;)V

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/AlertsCreator;->createClearDaysDialogAlert(Lorg/telegram/ui/ActionBar/BaseFragment;ILorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;ZLorg/telegram/messenger/MessagesStorage$BooleanCallback;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method private synthetic lambda$loadNext$2(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Ljava/util/Calendar;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    if-nez p1, :cond_c

    move-object/from16 v2, p2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_messages_searchResultsCalendar;

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_searchResultsCalendar;->periods:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x5

    const/4 v7, 0x2

    const/4 v8, 0x0

    const-wide/16 v9, 0x3e8

    const/4 v11, 0x1

    if-ge v4, v5, :cond_5

    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_searchResultsCalendar;->periods:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_searchResultsCalendarPeriod;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$TL_searchResultsCalendarPeriod;->date:I

    int-to-long v12, v5

    mul-long v12, v12, v9

    invoke-virtual {v1, v12, v13}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v1, v11}, Ljava/util/Calendar;->get(I)I

    move-result v5

    mul-int/lit8 v5, v5, 0x64

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    add-int/2addr v5, v7

    iget-object v7, v0, Lorg/telegram/ui/CalendarActivity;->messagesByYearMounth:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/SparseArray;

    if-nez v7, :cond_0

    new-instance v7, Landroid/util/SparseArray;

    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    iget-object v12, v0, Lorg/telegram/ui/CalendarActivity;->messagesByYearMounth:Landroid/util/SparseArray;

    invoke-virtual {v12, v5, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    new-instance v12, Lorg/telegram/ui/CalendarActivity$PeriodDay;

    invoke-direct {v12, v0, v8}, Lorg/telegram/ui/CalendarActivity$PeriodDay;-><init>(Lorg/telegram/ui/CalendarActivity;Lorg/telegram/ui/CalendarActivity$1;)V

    new-instance v13, Lorg/telegram/messenger/MessageObject;

    iget v14, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    iget-object v15, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_searchResultsCalendar;->messages:Ljava/util/ArrayList;

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/telegram/tgnet/TLRPC$Message;

    invoke-direct {v13, v14, v15, v3, v3}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    iput-object v13, v12, Lorg/telegram/ui/CalendarActivity$PeriodDay;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual/range {p3 .. p3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v13

    div-long/2addr v13, v9

    long-to-int v9, v13

    iput v9, v12, Lorg/telegram/ui/CalendarActivity$PeriodDay;->date:I

    iget v9, v0, Lorg/telegram/ui/CalendarActivity;->startOffset:I

    iget-object v10, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_searchResultsCalendar;->periods:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/tgnet/TLRPC$TL_searchResultsCalendarPeriod;

    iget v10, v10, Lorg/telegram/tgnet/TLRPC$TL_searchResultsCalendarPeriod;->count:I

    add-int/2addr v9, v10

    iput v9, v0, Lorg/telegram/ui/CalendarActivity;->startOffset:I

    iput v9, v12, Lorg/telegram/ui/CalendarActivity$PeriodDay;->startOffset:I

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    sub-int/2addr v6, v11

    invoke-virtual {v7, v6, v8}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-virtual {v7, v6, v8}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/ui/CalendarActivity$PeriodDay;

    iget-boolean v8, v8, Lorg/telegram/ui/CalendarActivity$PeriodDay;->hasImage:Z

    if-nez v8, :cond_2

    :cond_1
    invoke-virtual {v7, v6, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    iget v6, v0, Lorg/telegram/ui/CalendarActivity;->minMontYear:I

    if-lt v5, v6, :cond_3

    if-nez v6, :cond_4

    :cond_3
    iput v5, v0, Lorg/telegram/ui/CalendarActivity;->minMontYear:I

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    div-long/2addr v4, v9

    long-to-int v5, v4

    iget v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_searchResultsCalendar;->min_date:I

    iput v4, v0, Lorg/telegram/ui/CalendarActivity;->minDate:I

    :goto_1
    int-to-long v12, v4

    mul-long v12, v12, v9

    invoke-virtual {v1, v12, v13}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v12, 0xb

    invoke-virtual {v1, v12, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v12, 0xc

    invoke-virtual {v1, v12, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v12, 0xd

    invoke-virtual {v1, v12, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v12, 0xe

    invoke-virtual {v1, v12, v3}, Ljava/util/Calendar;->set(II)V

    invoke-virtual/range {p3 .. p3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    div-long/2addr v12, v9

    int-to-long v14, v5

    cmp-long v16, v12, v14

    if-lez v16, :cond_9

    iput-boolean v3, v0, Lorg/telegram/ui/CalendarActivity;->loading:Z

    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_searchResultsCalendar;->messages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_searchResultsCalendar;->messages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v11

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Message;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iput v4, v0, Lorg/telegram/ui/CalendarActivity;->lastId:I

    iput-boolean v3, v0, Lorg/telegram/ui/CalendarActivity;->endReached:Z

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/CalendarActivity;->checkLoadNext()V

    goto :goto_2

    :cond_6
    iput-boolean v11, v0, Lorg/telegram/ui/CalendarActivity;->endReached:Z

    :goto_2
    iget-boolean v4, v0, Lorg/telegram/ui/CalendarActivity;->isOpened:Z

    if-eqz v4, :cond_7

    iput-boolean v11, v0, Lorg/telegram/ui/CalendarActivity;->checkEnterItems:Z

    :cond_7
    iget-object v4, v0, Lorg/telegram/ui/CalendarActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    invoke-virtual/range {p3 .. p3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    div-long/2addr v4, v9

    iget v1, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_searchResultsCalendar;->min_date:I

    int-to-long v1, v1

    sub-long/2addr v4, v1

    const-wide/32 v1, 0x2820a8

    div-long/2addr v4, v1

    long-to-int v1, v4

    add-int/2addr v1, v11

    iget-object v2, v0, Lorg/telegram/ui/CalendarActivity;->adapter:Lorg/telegram/ui/CalendarActivity$CalendarAdapter;

    iget v4, v0, Lorg/telegram/ui/CalendarActivity;->monthCount:I

    invoke-virtual {v2, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    iget v2, v0, Lorg/telegram/ui/CalendarActivity;->monthCount:I

    if-le v1, v2, :cond_8

    iget-object v3, v0, Lorg/telegram/ui/CalendarActivity;->adapter:Lorg/telegram/ui/CalendarActivity$CalendarAdapter;

    add-int/2addr v2, v11

    invoke-virtual {v3, v2, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    iput v1, v0, Lorg/telegram/ui/CalendarActivity;->monthCount:I

    :cond_8
    iget-boolean v1, v0, Lorg/telegram/ui/CalendarActivity;->endReached:Z

    if-eqz v1, :cond_c

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->resumeDelayedFragmentAnimation()V

    goto :goto_3

    :cond_9
    invoke-virtual {v1, v11}, Ljava/util/Calendar;->get(I)I

    move-result v12

    mul-int/lit8 v12, v12, 0x64

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v13

    add-int/2addr v12, v13

    iget-object v13, v0, Lorg/telegram/ui/CalendarActivity;->messagesByYearMounth:Landroid/util/SparseArray;

    invoke-virtual {v13, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/SparseArray;

    if-nez v13, :cond_a

    new-instance v13, Landroid/util/SparseArray;

    invoke-direct {v13}, Landroid/util/SparseArray;-><init>()V

    iget-object v14, v0, Lorg/telegram/ui/CalendarActivity;->messagesByYearMounth:Landroid/util/SparseArray;

    invoke-virtual {v14, v12, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_a
    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v12

    sub-int/2addr v12, v11

    invoke-virtual {v13, v12, v8}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-nez v14, :cond_b

    new-instance v14, Lorg/telegram/ui/CalendarActivity$PeriodDay;

    invoke-direct {v14, v0, v8}, Lorg/telegram/ui/CalendarActivity$PeriodDay;-><init>(Lorg/telegram/ui/CalendarActivity;Lorg/telegram/ui/CalendarActivity$1;)V

    iput-boolean v3, v14, Lorg/telegram/ui/CalendarActivity$PeriodDay;->hasImage:Z

    invoke-virtual/range {p3 .. p3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v15

    div-long v6, v15, v9

    long-to-int v7, v6

    iput v7, v14, Lorg/telegram/ui/CalendarActivity$PeriodDay;->date:I

    invoke-virtual {v13, v12, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_b
    const v6, 0x15180

    add-int/2addr v4, v6

    const/4 v6, 0x5

    const/4 v7, 0x2

    goto/16 :goto_1

    :cond_c
    :goto_3
    return-void
.end method

.method private synthetic lambda$loadNext$3(Ljava/util/Calendar;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    new-instance v0, Lorg/telegram/ui/CalendarActivity$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p3, p2, p1}, Lorg/telegram/ui/CalendarActivity$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/CalendarActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Ljava/util/Calendar;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private loadNext()V
    .locals 6

    iget-boolean v0, p0, Lorg/telegram/ui/CalendarActivity;->loading:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lorg/telegram/ui/CalendarActivity;->endReached:Z

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lorg/telegram/ui/CalendarActivity;->updateFromStoriesList()V

    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    const/4 v1, 0x0

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->load(ZI)Z

    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->isLoading()Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/CalendarActivity;->loading:Z

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/CalendarActivity;->loading:Z

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getSearchResultsCalendar;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messages_getSearchResultsCalendar;-><init>()V

    iget v2, p0, Lorg/telegram/ui/CalendarActivity;->photosVideosTypeFilter:I

    if-ne v2, v0, :cond_2

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterPhotos;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterPhotos;-><init>()V

    :goto_0
    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getSearchResultsCalendar;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    goto :goto_1

    :cond_2
    const/4 v0, 0x2

    if-ne v2, v0, :cond_3

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterVideo;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterVideo;-><init>()V

    goto :goto_0

    :cond_3
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterPhotoVideo;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterPhotoVideo;-><init>()V

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v2, p0, Lorg/telegram/ui/CalendarActivity;->dialogId:J

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getSearchResultsCalendar;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget-wide v2, p0, Lorg/telegram/ui/CalendarActivity;->topicId:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_4

    iget-wide v2, p0, Lorg/telegram/ui/CalendarActivity;->dialogId:J

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_4

    iget v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getSearchResultsCalendar;->flags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getSearchResultsCalendar;->flags:I

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v2, p0, Lorg/telegram/ui/CalendarActivity;->topicId:J

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getSearchResultsCalendar;->saved_peer_id:Lorg/telegram/tgnet/TLRPC$InputPeer;

    :cond_4
    iget v0, p0, Lorg/telegram/ui/CalendarActivity;->lastId:I

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getSearchResultsCalendar;->offset_id:I

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/CalendarActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/CalendarActivity$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, v0}, Lorg/telegram/ui/CalendarActivity$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/CalendarActivity;Ljava/util/Calendar;)V

    invoke-virtual {v2, v1, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_5
    :goto_2
    return-void
.end method

.method private prepareBlurBitmap()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity;->blurredView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40c00000    # 6.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getView()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    float-to-int v1, v2

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const v4, 0x3e2aaaab

    invoke-virtual {v3, v4, v4}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v4}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getView()Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    div-int/lit16 v0, v0, 0xb4

    const/4 v1, 0x7

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v2, v0}, Lorg/telegram/messenger/Utilities;->stackBlurBitmap(Landroid/graphics/Bitmap;I)V

    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity;->blurredView:Landroid/view/View;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity;->blurredView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity;->blurredView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private updateColors()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity;->activeTextPaint:Landroid/text/TextPaint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity;->textPaint:Landroid/text/TextPaint;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity;->textPaint2:Landroid/text/TextPaint;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity;->backDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/BackDrawable;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    return-void
.end method

.method private updateFromStoriesList()V
    .locals 15

    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->isLoading()Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/CalendarActivity;->loading:Z

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/CalendarActivity;->messagesByYearMounth:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    const v1, 0x7fffffff

    iput v1, p0, Lorg/telegram/ui/CalendarActivity;->minDate:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/CalendarActivity;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    iget-object v3, v3, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x5

    const/4 v5, 0x2

    const/4 v6, 0x0

    const-wide/16 v7, 0x3e8

    const/4 v9, 0x1

    if-ge v2, v3, :cond_4

    iget-object v3, p0, Lorg/telegram/ui/CalendarActivity;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    iget-object v3, v3, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    iget v10, p0, Lorg/telegram/ui/CalendarActivity;->minDate:I

    iget-object v11, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v11, v11, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    iput v10, p0, Lorg/telegram/ui/CalendarActivity;->minDate:I

    iget-object v10, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v10, v10, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    int-to-long v10, v10

    mul-long v10, v10, v7

    invoke-virtual {v0, v10, v11}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v10

    mul-int/lit8 v10, v10, 0x64

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/2addr v10, v5

    iget-object v5, p0, Lorg/telegram/ui/CalendarActivity;->messagesByYearMounth:Landroid/util/SparseArray;

    invoke-virtual {v5, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseArray;

    if-nez v5, :cond_0

    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    iget-object v11, p0, Lorg/telegram/ui/CalendarActivity;->messagesByYearMounth:Landroid/util/SparseArray;

    invoke-virtual {v11, v10, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    sub-int/2addr v4, v9

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/ui/CalendarActivity$PeriodDay;

    if-nez v9, :cond_1

    new-instance v9, Lorg/telegram/ui/CalendarActivity$PeriodDay;

    invoke-direct {v9, p0, v6}, Lorg/telegram/ui/CalendarActivity$PeriodDay;-><init>(Lorg/telegram/ui/CalendarActivity;Lorg/telegram/ui/CalendarActivity$1;)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v9, Lorg/telegram/ui/CalendarActivity$PeriodDay;->storyItems:Ljava/util/ArrayList;

    :cond_1
    iget-object v6, v9, Lorg/telegram/ui/CalendarActivity$PeriodDay;->storyItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v3, v9, Lorg/telegram/ui/CalendarActivity$PeriodDay;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v11

    div-long/2addr v11, v7

    long-to-int v3, v11

    iput v3, v9, Lorg/telegram/ui/CalendarActivity$PeriodDay;->date:I

    invoke-virtual {v5, v4, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget v3, p0, Lorg/telegram/ui/CalendarActivity;->minMontYear:I

    if-lt v10, v3, :cond_2

    if-nez v3, :cond_3

    :cond_2
    iput v10, p0, Lorg/telegram/ui/CalendarActivity;->minMontYear:I

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    div-long/2addr v2, v7

    long-to-int v3, v2

    iget v2, p0, Lorg/telegram/ui/CalendarActivity;->minDate:I

    :goto_1
    if-ge v2, v3, :cond_7

    int-to-long v10, v2

    mul-long v10, v10, v7

    invoke-virtual {v0, v10, v11}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v10, 0xb

    invoke-virtual {v0, v10, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v10, 0xc

    invoke-virtual {v0, v10, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v10, 0xd

    invoke-virtual {v0, v10, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v10, 0xe

    invoke-virtual {v0, v10, v1}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v10

    mul-int/lit8 v10, v10, 0x64

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lorg/telegram/ui/CalendarActivity;->messagesByYearMounth:Landroid/util/SparseArray;

    invoke-virtual {v11, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/SparseArray;

    if-nez v11, :cond_5

    new-instance v11, Landroid/util/SparseArray;

    invoke-direct {v11}, Landroid/util/SparseArray;-><init>()V

    iget-object v12, p0, Lorg/telegram/ui/CalendarActivity;->messagesByYearMounth:Landroid/util/SparseArray;

    invoke-virtual {v12, v10, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_5
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v10

    sub-int/2addr v10, v9

    invoke-virtual {v11, v10, v6}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-nez v12, :cond_6

    new-instance v12, Lorg/telegram/ui/CalendarActivity$PeriodDay;

    invoke-direct {v12, p0, v6}, Lorg/telegram/ui/CalendarActivity$PeriodDay;-><init>(Lorg/telegram/ui/CalendarActivity;Lorg/telegram/ui/CalendarActivity$1;)V

    iput-boolean v1, v12, Lorg/telegram/ui/CalendarActivity$PeriodDay;->hasImage:Z

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v13

    div-long/2addr v13, v7

    long-to-int v14, v13

    iput v14, v12, Lorg/telegram/ui/CalendarActivity$PeriodDay;->date:I

    invoke-virtual {v11, v10, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_6
    const v10, 0x15180

    add-int/2addr v2, v10

    goto :goto_1

    :cond_7
    iget-object v2, p0, Lorg/telegram/ui/CalendarActivity;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->isFull()Z

    move-result v2

    iput-boolean v2, p0, Lorg/telegram/ui/CalendarActivity;->endReached:Z

    iget-boolean v2, p0, Lorg/telegram/ui/CalendarActivity;->isOpened:Z

    if-eqz v2, :cond_8

    iput-boolean v9, p0, Lorg/telegram/ui/CalendarActivity;->checkEnterItems:Z

    :cond_8
    iget-object v2, p0, Lorg/telegram/ui/CalendarActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    div-long/2addr v2, v7

    iget v0, p0, Lorg/telegram/ui/CalendarActivity;->minDate:I

    int-to-long v4, v0

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x2820a8

    div-long/2addr v2, v4

    long-to-int v0, v2

    add-int/2addr v0, v9

    iget-object v2, p0, Lorg/telegram/ui/CalendarActivity;->adapter:Lorg/telegram/ui/CalendarActivity$CalendarAdapter;

    iget v3, p0, Lorg/telegram/ui/CalendarActivity;->monthCount:I

    invoke-virtual {v2, v1, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    iget v1, p0, Lorg/telegram/ui/CalendarActivity;->monthCount:I

    if-le v0, v1, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/CalendarActivity;->adapter:Lorg/telegram/ui/CalendarActivity$CalendarAdapter;

    add-int/2addr v1, v9

    invoke-virtual {v2, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    iput v0, p0, Lorg/telegram/ui/CalendarActivity;->monthCount:I

    :cond_9
    iget-boolean v0, p0, Lorg/telegram/ui/CalendarActivity;->endReached:Z

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->resumeDelayedFragmentAnimation()V

    :cond_a
    return-void
.end method

.method private updateRowSelections(Lorg/telegram/ui/CalendarActivity$MonthView;Z)V
    .locals 13

    iget v0, p0, Lorg/telegram/ui/CalendarActivity;->dateSelectedStart:I

    if-eqz v0, :cond_9

    iget v0, p0, Lorg/telegram/ui/CalendarActivity;->dateSelectedEnd:I

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v0, p1, Lorg/telegram/ui/CalendarActivity$MonthView;->messagesByDays:Landroid/util/SparseArray;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    if-nez p2, :cond_2

    invoke-virtual {p1, v0}, Lorg/telegram/ui/CalendarActivity$MonthView;->dismissRowAnimations(Z)V

    :cond_2
    iget v1, p1, Lorg/telegram/ui/CalendarActivity$MonthView;->startDayOfWeek:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, -0x1

    :goto_0
    iget v4, p1, Lorg/telegram/ui/CalendarActivity$MonthView;->daysInMonth:I

    if-ge v3, v4, :cond_7

    iget-object v4, p1, Lorg/telegram/ui/CalendarActivity$MonthView;->messagesByDays:Landroid/util/SparseArray;

    const/4 v8, 0x0

    invoke-virtual {v4, v3, v8}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/CalendarActivity$PeriodDay;

    if-eqz v4, :cond_4

    iget v4, v4, Lorg/telegram/ui/CalendarActivity$PeriodDay;->date:I

    iget v8, p0, Lorg/telegram/ui/CalendarActivity;->dateSelectedStart:I

    if-lt v4, v8, :cond_4

    iget v8, p0, Lorg/telegram/ui/CalendarActivity;->dateSelectedEnd:I

    if-gt v4, v8, :cond_4

    if-ne v6, v2, :cond_3

    move v6, v1

    :cond_3
    move v10, v1

    move v9, v6

    goto :goto_1

    :cond_4
    move v9, v6

    move v10, v7

    :goto_1
    add-int/lit8 v1, v1, 0x1

    const/4 v4, 0x7

    if-lt v1, v4, :cond_6

    if-eq v9, v2, :cond_5

    if-eq v10, v2, :cond_5

    const/4 v11, 0x1

    :goto_2
    move-object v7, p1

    move v8, v5

    move v12, p2

    invoke-virtual/range {v7 .. v12}, Lorg/telegram/ui/CalendarActivity$MonthView;->animateRow(IIIZZ)V

    goto :goto_3

    :cond_5
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v9, 0x0

    goto :goto_2

    :goto_3
    add-int/lit8 v5, v5, 0x1

    const/4 v1, 0x0

    const/4 v6, -0x1

    const/4 v7, -0x1

    goto :goto_4

    :cond_6
    move v6, v9

    move v7, v10

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_7
    if-eq v6, v2, :cond_8

    if-eq v7, v2, :cond_8

    const/4 v8, 0x1

    move-object v4, p1

    move v9, p2

    invoke-virtual/range {v4 .. v9}, Lorg/telegram/ui/CalendarActivity$MonthView;->animateRow(IIIZZ)V

    goto :goto_6

    :cond_8
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v9, 0x0

    move-object v7, p1

    move v8, v5

    move v12, p2

    invoke-virtual/range {v7 .. v12}, Lorg/telegram/ui/CalendarActivity$MonthView;->animateRow(IIIZZ)V

    goto :goto_6

    :cond_9
    :goto_5
    invoke-virtual {p1, p2}, Lorg/telegram/ui/CalendarActivity$MonthView;->dismissRowAnimations(Z)V

    :goto_6
    return-void
.end method

.method private updateTitle()V
    .locals 11

    iget-boolean v0, p0, Lorg/telegram/ui/CalendarActivity;->canClearHistory:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/messenger/R$string;->Calendar:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity;->backDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/BackDrawable;->setRotation(FZ)V

    return-void

    :cond_0
    iget v0, p0, Lorg/telegram/ui/CalendarActivity;->dateSelectedStart:I

    iget v3, p0, Lorg/telegram/ui/CalendarActivity;->dateSelectedEnd:I

    const/4 v4, 0x0

    if-ne v0, v3, :cond_1

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    sub-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const v3, 0x15180

    div-int/2addr v0, v3

    add-int/2addr v0, v2

    :goto_0
    iget-boolean v3, p0, Lorg/telegram/ui/CalendarActivity;->lastInSelectionMode:Z

    iget v5, p0, Lorg/telegram/ui/CalendarActivity;->lastDaysSelected:I

    if-ne v0, v5, :cond_2

    iget-boolean v6, p0, Lorg/telegram/ui/CalendarActivity;->inSelectionMode:Z

    if-eq v3, v6, :cond_10

    :cond_2
    if-le v5, v0, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    iput v0, p0, Lorg/telegram/ui/CalendarActivity;->lastDaysSelected:I

    iget-boolean v5, p0, Lorg/telegram/ui/CalendarActivity;->inSelectionMode:Z

    iput-boolean v5, p0, Lorg/telegram/ui/CalendarActivity;->lastInSelectionMode:Z

    const/high16 v6, 0x3f800000    # 1.0f

    if-lez v0, :cond_4

    new-array v5, v4, [Ljava/lang/Object;

    const-string v7, "Days"

    invoke-static {v7, v0, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    :goto_2
    iget-object v7, p0, Lorg/telegram/ui/CalendarActivity;->backDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    invoke-virtual {v7, v6, v2}, Lorg/telegram/ui/ActionBar/BackDrawable;->setRotation(FZ)V

    goto :goto_3

    :cond_4
    if-eqz v5, :cond_5

    sget v5, Lorg/telegram/messenger/R$string;->SelectDays:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_5
    sget v5, Lorg/telegram/messenger/R$string;->Calendar:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lorg/telegram/ui/CalendarActivity;->backDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    invoke-virtual {v7, v1, v2}, Lorg/telegram/ui/ActionBar/BackDrawable;->setRotation(FZ)V

    :goto_3
    if-le v0, v2, :cond_6

    iget-object v7, p0, Lorg/telegram/ui/CalendarActivity;->removeDaysButton:Landroid/widget/TextView;

    sget v8, Lorg/telegram/messenger/R$string;->ClearHistoryForTheseDays:I

    new-array v9, v4, [Ljava/lang/Object;

    const-string v10, "ClearHistoryForTheseDays"

    invoke-static {v10, v8, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    :goto_4
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_6
    if-gtz v0, :cond_7

    iget-boolean v7, p0, Lorg/telegram/ui/CalendarActivity;->inSelectionMode:Z

    if-eqz v7, :cond_8

    :cond_7
    iget-object v7, p0, Lorg/telegram/ui/CalendarActivity;->removeDaysButton:Landroid/widget/TextView;

    sget v8, Lorg/telegram/messenger/R$string;->ClearHistoryForThisDay:I

    new-array v9, v4, [Ljava/lang/Object;

    const-string v10, "ClearHistoryForThisDay"

    invoke-static {v10, v8, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_4

    :cond_8
    :goto_5
    iget-object v7, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-wide/16 v8, 0x96

    invoke-virtual {v7, v5, v3, v8, v9}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleAnimated(Ljava/lang/CharSequence;ZJ)V

    iget-boolean v3, p0, Lorg/telegram/ui/CalendarActivity;->inSelectionMode:Z

    if-eqz v3, :cond_9

    if-lez v0, :cond_a

    :cond_9
    iget-object v3, p0, Lorg/telegram/ui/CalendarActivity;->selectDaysHint:Lorg/telegram/ui/Components/HintView;

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Lorg/telegram/ui/Components/HintView;->hide()V

    :cond_a
    const/16 v3, 0x8

    const/4 v5, 0x0

    const/high16 v7, 0x41a00000    # 20.0f

    if-gtz v0, :cond_d

    iget-boolean v10, p0, Lorg/telegram/ui/CalendarActivity;->inSelectionMode:Z

    if-eqz v10, :cond_b

    goto :goto_6

    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity;->selectDaysButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v3, :cond_c

    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity;->selectDaysButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity;->selectDaysButton:Landroid/widget/TextView;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity;->selectDaysButton:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity;->selectDaysButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity;->removeDaysButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity;->selectDaysButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity;->removeDaysButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/HideViewAfterAnimation;

    iget-object v3, p0, Lorg/telegram/ui/CalendarActivity;->removeDaysButton:Landroid/widget/TextView;

    invoke-direct {v1, v3}, Lorg/telegram/ui/Components/HideViewAfterAnimation;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity;->selectDaysButton:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity;->removeDaysButton:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_7

    :cond_d
    :goto_6
    iget-object v10, p0, Lorg/telegram/ui/CalendarActivity;->removeDaysButton:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-ne v10, v3, :cond_e

    iget-object v3, p0, Lorg/telegram/ui/CalendarActivity;->removeDaysButton:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v3, p0, Lorg/telegram/ui/CalendarActivity;->removeDaysButton:Landroid/widget/TextView;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    neg-int v10, v10

    int-to-float v10, v10

    invoke-virtual {v3, v10}, Landroid/view/View;->setTranslationY(F)V

    :cond_e
    iget-object v3, p0, Lorg/telegram/ui/CalendarActivity;->removeDaysButton:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lorg/telegram/ui/CalendarActivity;->selectDaysButton:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v3, p0, Lorg/telegram/ui/CalendarActivity;->removeDaysButton:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v3, p0, Lorg/telegram/ui/CalendarActivity;->selectDaysButton:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3, v5}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v5, Lorg/telegram/ui/Components/HideViewAfterAnimation;

    iget-object v7, p0, Lorg/telegram/ui/CalendarActivity;->selectDaysButton:Landroid/widget/TextView;

    invoke-direct {v5, v7}, Lorg/telegram/ui/Components/HideViewAfterAnimation;-><init>(Landroid/view/View;)V

    invoke-virtual {v3, v5}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v3, p0, Lorg/telegram/ui/CalendarActivity;->removeDaysButton:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    if-nez v0, :cond_f

    const/high16 v6, 0x3f000000    # 0.5f

    :cond_f
    invoke-virtual {v3, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity;->selectDaysButton:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity;->removeDaysButton:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_10
    :goto_7
    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 14

    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity;->textPaint:Landroid/text/TextPaint;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity;->textPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity;->textPaint2:Landroid/text/TextPaint;

    const/high16 v3, 0x41300000    # 11.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity;->textPaint2:Landroid/text/TextPaint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity;->textPaint2:Landroid/text/TextPaint;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity;->activeTextPaint:Landroid/text/TextPaint;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity;->activeTextPaint:Landroid/text/TextPaint;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity;->activeTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    new-instance v0, Lorg/telegram/ui/CalendarActivity$2;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/CalendarActivity$2;-><init>(Lorg/telegram/ui/CalendarActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/CalendarActivity;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->createActionBar(Landroid/content/Context;)Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity;->contentView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$string;->Calendar:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setCastShadows(Z)V

    new-instance v0, Lorg/telegram/ui/CalendarActivity$3;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/CalendarActivity$3;-><init>(Lorg/telegram/ui/CalendarActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/CalendarActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v2, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/CalendarActivity;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->setReverseLayout(Z)V

    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/CalendarActivity$CalendarAdapter;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lorg/telegram/ui/CalendarActivity$CalendarAdapter;-><init>(Lorg/telegram/ui/CalendarActivity;Lorg/telegram/ui/CalendarActivity$1;)V

    iput-object v3, p0, Lorg/telegram/ui/CalendarActivity;->adapter:Lorg/telegram/ui/CalendarActivity$CalendarAdapter;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/CalendarActivity$4;

    invoke-direct {v3, p0}, Lorg/telegram/ui/CalendarActivity$4;-><init>(Lorg/telegram/ui/CalendarActivity;)V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    iget v0, p0, Lorg/telegram/ui/CalendarActivity;->calendarType:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/CalendarActivity;->canClearHistory:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/CalendarActivity;->contentView:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lorg/telegram/ui/CalendarActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v5, 0x0

    if-eqz v0, :cond_1

    const/high16 v6, 0x42400000    # 48.0f

    const/high16 v13, 0x42400000    # 48.0f

    goto :goto_1

    :cond_1
    const/4 v13, 0x0

    :goto_1
    const/4 v7, -0x1

    const/high16 v8, -0x40800000    # -1.0f

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x42100000    # 36.0f

    const/4 v12, 0x0

    invoke-static/range {v7 .. v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget v3, Lorg/telegram/messenger/R$string;->CalendarWeekNameShortMonday:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v3, Lorg/telegram/messenger/R$string;->CalendarWeekNameShortTuesday:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v3, Lorg/telegram/messenger/R$string;->CalendarWeekNameShortWednesday:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget v3, Lorg/telegram/messenger/R$string;->CalendarWeekNameShortThursday:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget v3, Lorg/telegram/messenger/R$string;->CalendarWeekNameShortFriday:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    sget v3, Lorg/telegram/messenger/R$string;->CalendarWeekNameShortSaturday:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v11

    sget v3, Lorg/telegram/messenger/R$string;->CalendarWeekNameShortSunday:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v12

    filled-new-array/range {v6 .. v12}, [Ljava/lang/String;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$drawable;->header_shadow:I

    invoke-static {p1, v4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    new-instance v6, Lorg/telegram/ui/CalendarActivity$5;

    invoke-direct {v6, p0, p1, v3, v4}, Lorg/telegram/ui/CalendarActivity$5;-><init>(Lorg/telegram/ui/CalendarActivity;Landroid/content/Context;[Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lorg/telegram/ui/CalendarActivity;->contentView:Landroid/widget/FrameLayout;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v7, -0x1

    const/high16 v8, 0x42180000    # 38.0f

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v7 .. v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v6, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v4, Lorg/telegram/ui/CalendarActivity$6;

    invoke-direct {v4, p0}, Lorg/telegram/ui/CalendarActivity$6;-><init>(Lorg/telegram/ui/CalendarActivity;)V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    iget-object v3, p0, Lorg/telegram/ui/CalendarActivity;->contentView:Landroid/widget/FrameLayout;

    iput-object v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iput v4, p0, Lorg/telegram/ui/CalendarActivity;->startFromYear:I

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, p0, Lorg/telegram/ui/CalendarActivity;->startFromMonth:I

    iget v6, p0, Lorg/telegram/ui/CalendarActivity;->selectedYear:I

    if-eqz v6, :cond_2

    iget v7, p0, Lorg/telegram/ui/CalendarActivity;->startFromYear:I

    sub-int/2addr v7, v6

    mul-int/lit8 v7, v7, 0xc

    add-int/2addr v7, v3

    iget v3, p0, Lorg/telegram/ui/CalendarActivity;->selectedMonth:I

    sub-int/2addr v7, v3

    add-int/lit8 v3, v7, 0x1

    iput v3, p0, Lorg/telegram/ui/CalendarActivity;->monthCount:I

    iget-object v3, p0, Lorg/telegram/ui/CalendarActivity;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    const/high16 v6, 0x42f00000    # 120.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v3, v7, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :cond_2
    iget v3, p0, Lorg/telegram/ui/CalendarActivity;->monthCount:I

    const/4 v6, 0x3

    if-ge v3, v6, :cond_3

    iput v6, p0, Lorg/telegram/ui/CalendarActivity;->monthCount:I

    :cond_3
    new-instance v3, Lorg/telegram/ui/ActionBar/BackDrawable;

    invoke-direct {v3, v1}, Lorg/telegram/ui/ActionBar/BackDrawable;-><init>(Z)V

    iput-object v3, p0, Lorg/telegram/ui/CalendarActivity;->backDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    iget-object v6, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v6, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lorg/telegram/ui/CalendarActivity;->backDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    invoke-virtual {v3, v5, v1}, Lorg/telegram/ui/ActionBar/BackDrawable;->setRotation(FZ)V

    invoke-direct {p0}, Lorg/telegram/ui/CalendarActivity;->loadNext()V

    invoke-direct {p0}, Lorg/telegram/ui/CalendarActivity;->updateColors()V

    iget-object v3, p0, Lorg/telegram/ui/CalendarActivity;->activeTextPaint:Landroid/text/TextPaint;

    const/4 v5, -0x1

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    if-eqz v0, :cond_4

    new-instance v0, Lorg/telegram/ui/CalendarActivity$7;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/CalendarActivity$7;-><init>(Lorg/telegram/ui/CalendarActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/CalendarActivity;->bottomBar:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity;->bottomBar:Landroid/widget/FrameLayout;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getShadowHeight()I

    move-result v3

    invoke-virtual {v0, v1, v3, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity;->bottomBar:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/CalendarActivity;->selectDaysButton:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity;->selectDaysButton:Landroid/widget/TextView;

    const/high16 v3, 0x41700000    # 15.0f

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity;->selectDaysButton:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity;->selectDaysButton:Landroid/widget/TextView;

    new-instance v5, Lorg/telegram/ui/CalendarActivity$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lorg/telegram/ui/CalendarActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/CalendarActivity;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity;->selectDaysButton:Landroid/widget/TextView;

    sget v5, Lorg/telegram/messenger/R$string;->SelectDays:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity;->selectDaysButton:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAllCaps(Z)V

    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity;->bottomBar:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lorg/telegram/ui/CalendarActivity;->selectDaysButton:Landroid/widget/TextView;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v6, -0x1

    const/high16 v7, -0x40800000    # -1.0f

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v6 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/CalendarActivity;->removeDaysButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object p1, p0, Lorg/telegram/ui/CalendarActivity;->removeDaysButton:Landroid/widget/TextView;

    invoke-virtual {p1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object p1, p0, Lorg/telegram/ui/CalendarActivity;->removeDaysButton:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p1, p0, Lorg/telegram/ui/CalendarActivity;->removeDaysButton:Landroid/widget/TextView;

    new-instance v0, Lorg/telegram/ui/CalendarActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/CalendarActivity$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/CalendarActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lorg/telegram/ui/CalendarActivity;->removeDaysButton:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setAllCaps(Z)V

    iget-object p1, p0, Lorg/telegram/ui/CalendarActivity;->removeDaysButton:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/CalendarActivity;->bottomBar:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity;->removeDaysButton:Landroid/widget/TextView;

    const/4 v5, -0x1

    const/high16 v6, -0x40800000    # -1.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lorg/telegram/ui/CalendarActivity;->contentView:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity;->bottomBar:Landroid/widget/FrameLayout;

    const/high16 v6, 0x42400000    # 48.0f

    const/16 v7, 0x50

    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lorg/telegram/ui/CalendarActivity;->selectDaysButton:Landroid/widget/TextView;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_fieldOverlayText:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    const/16 v2, 0x33

    invoke-static {v1, v2}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    invoke-static {v1, v4}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lorg/telegram/ui/CalendarActivity;->removeDaysButton:Landroid/widget/TextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-static {v3, v2}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v2

    invoke-static {v2, v4}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lorg/telegram/ui/CalendarActivity;->selectDaysButton:Landroid/widget/TextView;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/CalendarActivity;->removeDaysButton:Landroid/widget/TextView;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object p1
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    sget p2, Lorg/telegram/messenger/NotificationCenter;->storiesListUpdated:I

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/CalendarActivity;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    const/4 p2, 0x0

    aget-object p2, p3, p2

    check-cast p2, Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    if-ne p1, p2, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/CalendarActivity;->updateFromStoriesList()V

    :cond_0
    return-void
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 9

    new-instance v8, Lorg/telegram/ui/CalendarActivity$9;

    invoke-direct {v8, p0}, Lorg/telegram/ui/CalendarActivity$9;-><init>(Lorg/telegram/ui/CalendarActivity;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v6, v8

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemeDescriptions()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public isLightStatusBar()Z
    .locals 6

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I[ZZ)I

    move-result v0

    invoke-static {v0}, Landroidx/core/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v0

    const-wide v3, 0x3fe6666660000000L    # 0.699999988079071

    cmpl-double v5, v0, v3

    if-lez v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public needDelayOpenAnimation()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onBackPressed()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/CalendarActivity;->inSelectionMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/CalendarActivity;->inSelectionMode:Z

    iput v0, p0, Lorg/telegram/ui/CalendarActivity;->dateSelectedEnd:I

    iput v0, p0, Lorg/telegram/ui/CalendarActivity;->dateSelectedStart:I

    invoke-direct {p0}, Lorg/telegram/ui/CalendarActivity;->updateTitle()V

    invoke-direct {p0}, Lorg/telegram/ui/CalendarActivity;->animateSelection()V

    return v0

    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBackPressed()Z

    move-result v0

    return v0
.end method

.method public onFragmentCreate()Z
    .locals 7

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "dialog_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/CalendarActivity;->dialogId:J

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "topic_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/CalendarActivity;->topicId:J

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/CalendarActivity;->calendarType:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v0

    iget-wide v4, p0, Lorg/telegram/ui/CalendarActivity;->dialogId:J

    invoke-virtual {v0, v4, v5, v3}, Lorg/telegram/ui/Stories/StoriesController;->getStoriesList(JI)Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/telegram/ui/CalendarActivity;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    goto :goto_1

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v0

    iget-wide v4, p0, Lorg/telegram/ui/CalendarActivity;->dialogId:J

    invoke-virtual {v0, v4, v5, v2}, Lorg/telegram/ui/Stories/StoriesController;->getStoriesList(JI)Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    move-result-object v0

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    if-eqz v0, :cond_2

    new-instance v0, Lorg/telegram/ui/CalendarActivity$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/CalendarActivity$1;-><init>(Lorg/telegram/ui/CalendarActivity;)V

    iput-object v0, p0, Lorg/telegram/ui/CalendarActivity;->storiesPlaceProvider:Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;

    :cond_2
    iget-wide v0, p0, Lorg/telegram/ui/CalendarActivity;->dialogId:J

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-ltz v6, :cond_3

    iput-boolean v2, p0, Lorg/telegram/ui/CalendarActivity;->canClearHistory:Z

    goto :goto_2

    :cond_3
    iput-boolean v3, p0, Lorg/telegram/ui/CalendarActivity;->canClearHistory:Z

    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    if-eqz v0, :cond_4

    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->storiesListUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    :cond_4
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 2

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->storiesListUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    :cond_0
    return-void
.end method

.method public onTransitionAnimationEnd(ZZ)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/CalendarActivity;->blurredView:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/CalendarActivity;->blurredView:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/CalendarActivity;->blurredView:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public onTransitionAnimationProgress(ZF)V
    .locals 1

    invoke-super {p0, p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationProgress(ZF)V

    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity;->blurredView:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/CalendarActivity;->blurredView:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/CalendarActivity;->blurredView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onTransitionAnimationStart(ZZ)V
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationStart(ZZ)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/CalendarActivity;->isOpened:Z

    return-void
.end method

.method public setCallback(Lorg/telegram/ui/CalendarActivity$Callback;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/CalendarActivity;->callback:Lorg/telegram/ui/CalendarActivity$Callback;

    return-void
.end method

.method public setChatActivity(Lorg/telegram/ui/ChatActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/CalendarActivity;->chatActivity:Lorg/telegram/ui/ChatActivity;

    return-void
.end method
