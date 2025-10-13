.class public Lorg/telegram/ui/Components/RecyclerListView$FastScroll;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/RecyclerListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FastScroll"
.end annotation


# instance fields
.field private activeColor:I

.field private arrowPath:Landroid/graphics/Path;

.field private bubbleProgress:F

.field private currentLetter:Ljava/lang/String;

.field fastScrollBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field fastScrollShadowDrawable:Landroid/graphics/drawable/Drawable;

.field private floatingDateProgress:F

.field private floatingDateVisible:Z

.field private fromTop:Z

.field private fromWidth:F

.field hideFloatingDateRunnable:Ljava/lang/Runnable;

.field private inLetterLayout:Landroid/text/StaticLayout;

.field private inactiveColor:I

.field isMoving:Z

.field isRtl:Z

.field public isVisible:Z

.field private lastLetterY:F

.field private lastUpdateTime:J

.field private lastY:F

.field private letterLayout:Landroid/text/StaticLayout;

.field private letterPaint:Landroid/text/TextPaint;

.field private oldLetterLayout:Landroid/text/StaticLayout;

.field private outLetterLayout:Landroid/text/StaticLayout;

.field private paint:Landroid/graphics/Paint;

.field private paint2:Landroid/graphics/Paint;

.field private path:Landroid/graphics/Path;

.field private positionWithOffset:[I

.field private pressed:Z

.field private progress:F

.field private radii:[F

.field private rect:Landroid/graphics/RectF;

.field private replaceLayoutProgress:F

.field private scrollX:I

.field private stableLetterLayout:Landroid/text/StaticLayout;

.field private startDy:F

.field startTime:J

.field startY:F

.field private textX:F

.field private textY:F

.field final synthetic this$0:Lorg/telegram/ui/Components/RecyclerListView;

.field public topOffset:I

.field touchSlop:F

.field private type:I

.field public usePadding:Z

.field viewAlpha:F

.field visibilityAlpha:F


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/RecyclerListView;Landroid/content/Context;I)V
    .locals 7

    iput-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->usePadding:Z

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->rect:Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->paint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->paint2:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->replaceLayoutProgress:F

    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v2, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterPaint:Landroid/text/TextPaint;

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->path:Landroid/graphics/Path;

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->arrowPath:Landroid/graphics/Path;

    const/16 v2, 0x8

    new-array v3, v2, [F

    iput-object v3, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->radii:[F

    const/4 v3, 0x2

    new-array v3, v3, [I

    iput-object v3, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->positionWithOffset:[I

    new-instance v3, Lorg/telegram/ui/Components/RecyclerListView$FastScroll$1;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll$1;-><init>(Lorg/telegram/ui/Components/RecyclerListView$FastScroll;)V

    iput-object v3, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->hideFloatingDateRunnable:Ljava/lang/Runnable;

    iput v1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->viewAlpha:F

    iput p3, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->type:I

    const/4 v1, 0x0

    if-nez p3, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterPaint:Landroid/text/TextPaint;

    const/high16 v3, 0x42340000    # 45.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    sget-boolean p1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    iput-boolean p1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->isRtl:Z

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->isRtl:Z

    iget-object v3, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterPaint:Landroid/text/TextPaint;

    const/high16 v4, 0x41500000    # 13.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v3, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterPaint:Landroid/text/TextPaint;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v3, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->paint2:Landroid/graphics/Paint;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    iget-object v5, p1, Lorg/telegram/ui/Components/RecyclerListView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    sget v3, Lorg/telegram/messenger/R$drawable;->calendar_date:I

    invoke-static {p2, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->fastScrollBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    iget-object p1, p1, Lorg/telegram/ui/Components/RecyclerListView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v4, p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    const/4 v4, -0x1

    const v6, 0x3dcccccd    # 0.1f

    invoke-static {p1, v4, v6}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p1

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, p1, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->radii:[F

    const/high16 v3, 0x42300000    # 44.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    aput v3, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-boolean p1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->isRtl:Z

    if-eqz p1, :cond_2

    const/high16 p1, 0x41200000    # 10.0f

    :goto_1
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    goto :goto_3

    :cond_2
    if-nez p3, :cond_3

    const/16 p1, 0x84

    goto :goto_2

    :cond_3
    const/16 p1, 0xf0

    :goto_2
    add-int/lit8 p1, p1, -0xf

    int-to-float p1, p1

    goto :goto_1

    :goto_3
    iput p1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->scrollX:I

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->updateColors()V

    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->touchSlop:F

    sget p1, Lorg/telegram/messenger/R$drawable;->fast_scroll_shadow:I

    invoke-static {p2, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->fastScrollShadowDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/RecyclerListView$FastScroll;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->pressed:Z

    return p0
.end method

.method static synthetic access$202(Lorg/telegram/ui/Components/RecyclerListView$FastScroll;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->floatingDateVisible:Z

    return p1
.end method

.method static synthetic access$3100(Lorg/telegram/ui/Components/RecyclerListView$FastScroll;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->getCurrentLetter(Z)V

    return-void
.end method

.method static synthetic access$3200(Lorg/telegram/ui/Components/RecyclerListView$FastScroll;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->updateColors()V

    return-void
.end method

.method private getCurrentLetter(Z)V
    .locals 32

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    instance-of v2, v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v2, :cond_8

    check-cast v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    iget-object v2, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    instance-of v4, v2, Lorg/telegram/ui/Components/RecyclerListView$FastScrollAdapter;

    if-eqz v4, :cond_8

    check-cast v2, Lorg/telegram/ui/Components/RecyclerListView$FastScrollAdapter;

    iget-object v4, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    iget v5, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->progress:F

    iget-object v6, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->positionWithOffset:[I

    invoke-virtual {v2, v4, v5, v6}, Lorg/telegram/ui/Components/RecyclerListView$FastScrollAdapter;->getPositionForScrollProgress(Lorg/telegram/ui/Components/RecyclerListView;F[I)V

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    iget-object v5, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->positionWithOffset:[I

    aget v6, v5, v4

    aget v5, v5, v3

    neg-int v5, v5

    iget-object v7, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v7}, Lorg/telegram/ui/Components/RecyclerListView;->access$300(Lorg/telegram/ui/Components/RecyclerListView;)I

    move-result v7

    add-int/2addr v5, v7

    invoke-virtual {v1, v6, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->positionWithOffset:[I

    aget v1, v1, v4

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/RecyclerListView$FastScrollAdapter;->getLetter(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    iget-object v1, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterLayout:Landroid/text/StaticLayout;

    if-eqz v1, :cond_1

    iput-object v1, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->oldLetterLayout:Landroid/text/StaticLayout;

    :cond_1
    iput-object v2, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterLayout:Landroid/text/StaticLayout;

    goto/16 :goto_5

    :cond_2
    iget-object v5, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->currentLetter:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    iput-object v1, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->currentLetter:Ljava/lang/String;

    iget v5, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->type:I

    const/4 v13, 0x2

    if-nez v5, :cond_3

    new-instance v3, Landroid/text/StaticLayout;

    iget-object v7, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterPaint:Landroid/text/TextPaint;

    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v8, 0x3e8

    const/high16 v10, 0x3f800000    # 1.0f

    move-object v5, v3

    move-object v6, v1

    invoke-direct/range {v5 .. v12}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v3, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterLayout:Landroid/text/StaticLayout;

    goto/16 :goto_2

    :cond_3
    iget-object v5, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterLayout:Landroid/text/StaticLayout;

    iput-object v5, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->outLetterLayout:Landroid/text/StaticLayout;

    iget-object v5, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterPaint:Landroid/text/TextPaint;

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    float-to-int v5, v5

    add-int/lit8 v22, v5, 0x1

    new-instance v14, Landroid/text/StaticLayout;

    iget-object v7, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterPaint:Landroid/text/TextPaint;

    sget-object v31, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    move-object v5, v14

    move-object v6, v1

    move/from16 v8, v22

    move-object/from16 v9, v31

    invoke-direct/range {v5 .. v12}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v14, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterLayout:Landroid/text/StaticLayout;

    iget-object v5, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->outLetterLayout:Landroid/text/StaticLayout;

    if-eqz v5, :cond_6

    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->outLetterLayout:Landroid/text/StaticLayout;

    invoke-virtual {v7}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    if-eqz v6, :cond_4

    if-eqz v5, :cond_4

    array-length v7, v6

    if-ne v7, v13, :cond_4

    array-length v7, v5

    if-ne v7, v13, :cond_4

    aget-object v7, v6, v3

    aget-object v8, v5, v3

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->outLetterLayout:Landroid/text/StaticLayout;

    invoke-virtual {v7}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Landroid/text/SpannableStringBuilder;

    invoke-direct {v8, v7}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v9, Lorg/telegram/ui/Components/EmptyStubSpan;

    invoke-direct {v9}, Lorg/telegram/ui/Components/EmptyStubSpan;-><init>()V

    aget-object v5, v5, v4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v8, v9, v5, v10, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iget-object v5, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterPaint:Landroid/text/TextPaint;

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    float-to-int v5, v5

    add-int/lit8 v26, v5, 0x1

    new-instance v5, Landroid/text/StaticLayout;

    iget-object v7, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterPaint:Landroid/text/TextPaint;

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/high16 v28, 0x3f800000    # 1.0f

    move-object/from16 v23, v5

    move-object/from16 v24, v8

    move-object/from16 v25, v7

    move-object/from16 v27, v31

    invoke-direct/range {v23 .. v30}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v5, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->outLetterLayout:Landroid/text/StaticLayout;

    new-instance v15, Landroid/text/SpannableStringBuilder;

    invoke-direct {v15, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v5, Lorg/telegram/ui/Components/EmptyStubSpan;

    invoke-direct {v5}, Lorg/telegram/ui/Components/EmptyStubSpan;-><init>()V

    aget-object v7, v6, v4

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v15, v5, v7, v8, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    new-instance v5, Landroid/text/StaticLayout;

    iget-object v7, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterPaint:Landroid/text/TextPaint;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/high16 v19, 0x3f800000    # 1.0f

    move-object v14, v5

    move-object/from16 v16, v7

    move/from16 v17, v22

    move-object/from16 v18, v31

    invoke-direct/range {v14 .. v21}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v5, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->inLetterLayout:Landroid/text/StaticLayout;

    new-instance v15, Landroid/text/SpannableStringBuilder;

    invoke-direct {v15, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Lorg/telegram/ui/Components/EmptyStubSpan;

    invoke-direct {v1}, Lorg/telegram/ui/Components/EmptyStubSpan;-><init>()V

    aget-object v5, v6, v4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v15, v1, v4, v5, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    new-instance v1, Landroid/text/StaticLayout;

    iget-object v5, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterPaint:Landroid/text/TextPaint;

    move-object v14, v1

    move-object/from16 v16, v5

    invoke-direct/range {v14 .. v21}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v1, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->stableLetterLayout:Landroid/text/StaticLayout;

    goto :goto_0

    :cond_4
    iget-object v1, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterLayout:Landroid/text/StaticLayout;

    iput-object v1, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->inLetterLayout:Landroid/text/StaticLayout;

    iput-object v2, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->stableLetterLayout:Landroid/text/StaticLayout;

    :goto_0
    iget-object v1, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->outLetterLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/Layout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->fromWidth:F

    const/4 v1, 0x0

    iput v1, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->replaceLayoutProgress:F

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->getProgress()F

    move-result v1

    iget v5, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->lastLetterY:F

    cmpl-float v1, v1, v5

    if-lez v1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    :goto_1
    iput-boolean v3, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->fromTop:Z

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->getProgress()F

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->lastLetterY:F

    :goto_2
    iput-object v2, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->oldLetterLayout:Landroid/text/StaticLayout;

    iget-object v1, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v1

    if-lez v1, :cond_8

    iget-object v1, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, v4}, Landroid/text/Layout;->getLineWidth(I)F

    iget-object v1, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, v4}, Landroid/text/Layout;->getLineLeft(I)F

    iget-boolean v1, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->isRtl:Z

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, 0x42b00000    # 88.0f

    if-eqz v1, :cond_7

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    iget-object v6, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterLayout:Landroid/text/StaticLayout;

    invoke-virtual {v6, v4}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v6

    sub-float/2addr v5, v6

    div-float/2addr v5, v2

    add-float/2addr v1, v5

    :goto_3
    iget-object v2, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v4}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v2

    sub-float/2addr v1, v2

    iput v1, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->textX:F

    goto :goto_4

    :cond_7
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    iget-object v5, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterLayout:Landroid/text/StaticLayout;

    invoke-virtual {v5, v4}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v5

    sub-float/2addr v1, v5

    div-float/2addr v1, v2

    goto :goto_3

    :goto_4
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/2addr v1, v13

    int-to-float v1, v1

    iput v1, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->textY:F

    :cond_8
    :goto_5
    return-void
.end method

.method private updateColors()V
    .locals 3

    iget v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->type:I

    if-nez v0, :cond_0

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_fastScrollInactive:I

    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, v1, Lorg/telegram/ui/Components/RecyclerListView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/high16 v0, -0x1000000

    const/16 v1, 0x66

    invoke-static {v0, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    :goto_0
    iput v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->inactiveColor:I

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_fastScrollActive:I

    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, v1, Lorg/telegram/ui/Components/RecyclerListView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->activeColor:I

    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->inactiveColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->type:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterPaint:Landroid/text/TextPaint;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_fastScrollText:I

    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v2, v2, Lorg/telegram/ui/Components/RecyclerListView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterPaint:Landroid/text/TextPaint;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    goto :goto_1

    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public getAlpha()F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->viewAlpha:F

    return v0
.end method

.method public getProgress()F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->progress:F

    return v0
.end method

.method public getScrollBarY()I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    const/high16 v1, 0x42580000    # 54.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->progress:F

    mul-float v0, v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    const/high16 v1, 0x41880000    # 17.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isPressed()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->pressed:Z

    return v0
.end method

.method public layout(IIII)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v0}, Lorg/telegram/ui/Components/RecyclerListView;->access$400(Lorg/telegram/ui/Components/RecyclerListView;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->usePadding:Z

    if-eqz v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    goto :goto_0

    :cond_0
    iget v2, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->topOffset:I

    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v3, v2

    const/high16 v4, 0x42580000    # 54.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->progress:F

    mul-float v3, v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    add-int/2addr v2, v3

    iget-object v3, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->rect:Landroid/graphics/RectF;

    iget v4, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->scrollX:I

    int-to-float v4, v4

    const/high16 v5, 0x41400000    # 12.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v6, v2

    int-to-float v6, v6

    iget v7, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->scrollX:I

    const/high16 v8, 0x40a00000    # 5.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    add-int/2addr v7, v8

    int-to-float v7, v7

    const/high16 v8, 0x42280000    # 42.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    add-int/2addr v8, v2

    int-to-float v8, v8

    invoke-virtual {v3, v4, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    iget v3, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->type:I

    const/4 v4, -0x1

    const/high16 v6, 0x41000000    # 8.0f

    const/4 v7, 0x2

    const/high16 v8, 0x40800000    # 4.0f

    const/high16 v9, 0x41c00000    # 24.0f

    const/4 v10, 0x0

    const/high16 v11, 0x40000000    # 2.0f

    if-nez v3, :cond_1

    iget-object v3, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->paint:Landroid/graphics/Paint;

    iget v12, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->inactiveColor:I

    iget v13, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->activeColor:I

    iget v14, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->bubbleProgress:F

    invoke-static {v12, v13, v14}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v12

    invoke-virtual {v3, v12}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->rect:Landroid/graphics/RectF;

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    int-to-float v12, v12

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    int-to-float v13, v13

    iget-object v14, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v12, v13, v14}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    :cond_1
    iget-object v3, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->paint:Landroid/graphics/Paint;

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    iget-object v13, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v13, v13, Lorg/telegram/ui/Components/RecyclerListView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v12, v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v12

    const v13, 0x3dcccccd    # 0.1f

    invoke-static {v12, v4, v13}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v12

    invoke-virtual {v3, v12}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v3, 0x41d80000    # 27.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    add-int/2addr v12, v2

    int-to-float v12, v12

    iget-object v13, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->fastScrollShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    iget-object v15, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->fastScrollShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v15

    sub-int/2addr v14, v15

    iget-object v15, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->fastScrollShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v15

    div-int/2addr v15, v7

    int-to-float v15, v15

    sub-float v15, v12, v15

    float-to-int v15, v15

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    iget-object v5, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->fastScrollShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    div-int/2addr v5, v7

    int-to-float v5, v5

    add-float/2addr v12, v5

    float-to-int v5, v12

    invoke-virtual {v13, v14, v15, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v4, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->fastScrollShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget v4, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->scrollX:I

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v3, v2

    int-to-float v3, v3

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    iget-object v12, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v3, v5, v12}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v3, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->paint:Landroid/graphics/Paint;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    iget-object v5, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v5, v5, Lorg/telegram/ui/Components/RecyclerListView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v3, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->scrollX:I

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x42080000    # 34.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v4, v2

    int-to-float v4, v4

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    iget v12, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->bubbleProgress:F

    mul-float v5, v5, v12

    add-float/2addr v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v3, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->arrowPath:Landroid/graphics/Path;

    iget-object v4, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v3, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->scrollX:I

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v4, v2

    int-to-float v4, v4

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    iget v12, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->bubbleProgress:F

    mul-float v5, v5, v12

    sub-float/2addr v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    const/high16 v4, 0x43340000    # 180.0f

    invoke-virtual {v1, v4, v10, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v3, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->arrowPath:Landroid/graphics/Path;

    iget-object v4, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :goto_1
    iget v3, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->type:I

    const/high16 v4, 0x41f00000    # 30.0f

    const/high16 v5, 0x437f0000    # 255.0f

    const/4 v12, 0x1

    const/high16 v13, 0x3f800000    # 1.0f

    if-nez v3, :cond_c

    iget-boolean v3, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->isMoving:Z

    if-nez v3, :cond_2

    iget v3, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->bubbleProgress:F

    cmpl-float v3, v3, v10

    if-eqz v3, :cond_15

    :cond_2
    iget-object v3, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->paint:Landroid/graphics/Paint;

    iget v6, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->bubbleProgress:F

    mul-float v6, v6, v5

    float-to-int v5, v6

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v3, v2

    const/high16 v4, 0x42380000    # 46.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v2, v4

    const/high16 v4, 0x41400000    # 12.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    if-gt v2, v5, :cond_3

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v5, v2

    int-to-float v2, v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    goto :goto_2

    :cond_3
    move v4, v2

    const/4 v2, 0x0

    :goto_2
    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    int-to-float v9, v4

    invoke-virtual {v1, v6, v9}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v6, 0x41e80000    # 29.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    const/high16 v11, 0x42200000    # 40.0f

    const/high16 v14, 0x42300000    # 44.0f

    cmpg-float v9, v2, v9

    if-gtz v9, :cond_4

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v2, v6

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    mul-float v2, v2, v6

    add-float/2addr v8, v2

    goto :goto_3

    :cond_4
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v2, v9

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v2, v6

    sub-float v2, v13, v2

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    mul-float v2, v2, v6

    add-float/2addr v2, v8

    move v8, v9

    move v9, v2

    :goto_3
    iget-boolean v2, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->isRtl:Z

    const/4 v6, 0x4

    const/4 v11, 0x6

    const/4 v14, 0x0

    if-eqz v2, :cond_5

    iget-object v15, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->radii:[F

    aget v16, v15, v14

    cmpl-float v16, v16, v9

    if-nez v16, :cond_6

    aget v15, v15, v11

    cmpl-float v15, v15, v8

    if-nez v15, :cond_6

    :cond_5
    if-nez v2, :cond_a

    iget-object v15, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->radii:[F

    aget v16, v15, v7

    cmpl-float v16, v16, v9

    if-nez v16, :cond_6

    aget v15, v15, v6

    cmpl-float v15, v15, v8

    if-eqz v15, :cond_a

    :cond_6
    if-eqz v2, :cond_7

    iget-object v2, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->radii:[F

    aput v9, v2, v12

    aput v9, v2, v14

    const/4 v6, 0x7

    aput v8, v2, v6

    aput v8, v2, v11

    goto :goto_4

    :cond_7
    iget-object v2, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->radii:[F

    const/4 v11, 0x3

    aput v9, v2, v11

    aput v9, v2, v7

    const/4 v7, 0x5

    aput v8, v2, v7

    aput v8, v2, v6

    :goto_4
    iget-object v2, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->path:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    iget-object v2, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->rect:Landroid/graphics/RectF;

    iget-boolean v6, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->isRtl:Z

    if-eqz v6, :cond_8

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    goto :goto_5

    :cond_8
    const/4 v5, 0x0

    :goto_5
    iget-boolean v6, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->isRtl:Z

    if-eqz v6, :cond_9

    const/high16 v6, 0x42c40000    # 98.0f

    goto :goto_6

    :cond_9
    const/high16 v6, 0x42b00000    # 88.0f

    :goto_6
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x42b00000    # 88.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v2, v5, v10, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->path:Landroid/graphics/Path;

    iget-object v5, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->rect:Landroid/graphics/RectF;

    iget-object v6, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->radii:[F

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v5, v6, v7}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->path:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    :cond_a
    iget-object v2, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterLayout:Landroid/text/StaticLayout;

    if-eqz v2, :cond_b

    goto :goto_7

    :cond_b
    iget-object v2, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->oldLetterLayout:Landroid/text/StaticLayout;

    :goto_7
    if-eqz v2, :cond_15

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v5, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->bubbleProgress:F

    iget v6, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->scrollX:I

    int-to-float v6, v6

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v1, v5, v5, v6, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v3, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->path:Landroid/graphics/Path;

    iget-object v4, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget v3, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->textX:F

    iget v4, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->textY:F

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v2, v1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    :goto_8
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_e

    :cond_c
    if-ne v3, v12, :cond_15

    iget-object v2, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterLayout:Landroid/text/StaticLayout;

    if-eqz v2, :cond_15

    iget v2, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->floatingDateProgress:F

    cmpl-float v2, v2, v10

    if-eqz v2, :cond_15

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v2, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->floatingDateProgress:F

    const v3, 0x3e99999a    # 0.3f

    mul-float v2, v2, v3

    const v3, 0x3f333333    # 0.7f

    add-float/2addr v2, v3

    iget-object v3, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->rect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    const/high16 v7, 0x41400000    # 12.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    int-to-float v7, v14

    sub-float/2addr v3, v7

    iget-object v7, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->rect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerY()F

    move-result v7

    invoke-virtual {v1, v2, v2, v3, v7}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v2, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->rect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->rect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    iget v7, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->bubbleProgress:F

    mul-float v4, v4, v7

    sub-float/2addr v3, v4

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget-object v4, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4}, Landroid/text/Layout;->getHeight()I

    const/high16 v4, 0x40c00000    # 6.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    iget v4, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->replaceLayoutProgress:F

    iget-object v7, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterLayout:Landroid/text/StaticLayout;

    invoke-virtual {v7}, Landroid/text/Layout;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float v4, v4, v7

    iget v7, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->fromWidth:F

    iget v14, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->replaceLayoutProgress:F

    sub-float v14, v13, v14

    mul-float v7, v7, v14

    add-float/2addr v4, v7

    iget-object v7, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->rect:Landroid/graphics/RectF;

    sub-float v4, v3, v4

    const/high16 v14, 0x42100000    # 36.0f

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    int-to-float v14, v14

    sub-float/2addr v4, v14

    iget-object v14, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterLayout:Landroid/text/StaticLayout;

    invoke-virtual {v14}, Landroid/text/Layout;->getHeight()I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v14, v11

    sub-float v14, v2, v14

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    int-to-float v15, v15

    sub-float/2addr v14, v15

    const/high16 v15, 0x41400000    # 12.0f

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    int-to-float v15, v15

    sub-float v15, v3, v15

    iget-object v12, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterLayout:Landroid/text/StaticLayout;

    invoke-virtual {v12}, Landroid/text/Layout;->getHeight()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v12, v11

    add-float/2addr v12, v2

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v12, v6

    invoke-virtual {v7, v4, v14, v15, v12}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v4, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->paint2:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getAlpha()I

    move-result v4

    iget-object v6, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterPaint:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getAlpha()I

    move-result v6

    iget-object v7, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->paint2:Landroid/graphics/Paint;

    int-to-float v12, v4

    iget v14, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->floatingDateProgress:F

    mul-float v12, v12, v14

    float-to-int v12, v12

    invoke-virtual {v7, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v7, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->fastScrollBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v12, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->rect:Landroid/graphics/RectF;

    iget v14, v12, Landroid/graphics/RectF;->left:F

    float-to-int v14, v14

    iget v15, v12, Landroid/graphics/RectF;->top:F

    float-to-int v15, v15

    iget v10, v12, Landroid/graphics/RectF;->right:F

    float-to-int v10, v10

    iget v12, v12, Landroid/graphics/RectF;->bottom:F

    float-to-int v12, v12

    invoke-virtual {v7, v14, v15, v10, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v7, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->fastScrollBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget v10, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->floatingDateProgress:F

    mul-float v10, v10, v5

    float-to-int v5, v10

    invoke-virtual {v7, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v5, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->fastScrollBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget v5, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->replaceLayoutProgress:F

    cmpl-float v7, v5, v13

    if-eqz v7, :cond_e

    const v7, 0x3dda740e

    add-float/2addr v5, v7

    iput v5, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->replaceLayoutProgress:F

    cmpl-float v5, v5, v13

    if-lez v5, :cond_d

    iput v13, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->replaceLayoutProgress:F

    goto :goto_9

    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    :cond_e
    :goto_9
    iget v5, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->replaceLayoutProgress:F

    const/high16 v7, 0x41700000    # 15.0f

    cmpl-float v5, v5, v13

    if-eqz v5, :cond_14

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v5, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->rect:Landroid/graphics/RectF;

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v5, v8, v10}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v5, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->rect:Landroid/graphics/RectF;

    invoke-virtual {v1, v5}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    iget-object v5, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->outLetterLayout:Landroid/text/StaticLayout;

    if-eqz v5, :cond_10

    iget-object v5, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterPaint:Landroid/text/TextPaint;

    int-to-float v8, v6

    iget v10, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->floatingDateProgress:F

    mul-float v8, v8, v10

    iget v10, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->replaceLayoutProgress:F

    sub-float v10, v13, v10

    mul-float v8, v8, v10

    float-to-int v8, v8

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v5, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->outLetterLayout:Landroid/text/StaticLayout;

    invoke-virtual {v5}, Landroid/text/Layout;->getWidth()I

    move-result v5

    int-to-float v5, v5

    sub-float v5, v3, v5

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v5, v8

    iget-object v8, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->outLetterLayout:Landroid/text/StaticLayout;

    invoke-virtual {v8}, Landroid/text/Layout;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v11

    sub-float v8, v2, v8

    iget-boolean v10, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->fromTop:Z

    if-eqz v10, :cond_f

    const/4 v10, -0x1

    goto :goto_a

    :cond_f
    const/4 v10, 0x1

    :goto_a
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    mul-int v10, v10, v12

    int-to-float v10, v10

    iget v12, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->replaceLayoutProgress:F

    mul-float v10, v10, v12

    add-float/2addr v8, v10

    invoke-virtual {v1, v5, v8}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v5, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->outLetterLayout:Landroid/text/StaticLayout;

    invoke-virtual {v5, v1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_10
    iget-object v5, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->inLetterLayout:Landroid/text/StaticLayout;

    if-eqz v5, :cond_12

    iget-object v5, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterPaint:Landroid/text/TextPaint;

    int-to-float v8, v6

    iget v10, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->floatingDateProgress:F

    mul-float v8, v8, v10

    iget v10, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->replaceLayoutProgress:F

    mul-float v8, v8, v10

    float-to-int v8, v8

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v5, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->inLetterLayout:Landroid/text/StaticLayout;

    invoke-virtual {v5}, Landroid/text/Layout;->getWidth()I

    move-result v5

    int-to-float v5, v5

    sub-float v5, v3, v5

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v5, v8

    iget-object v8, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->inLetterLayout:Landroid/text/StaticLayout;

    invoke-virtual {v8}, Landroid/text/Layout;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v11

    sub-float v8, v2, v8

    iget-boolean v10, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->fromTop:Z

    if-eqz v10, :cond_11

    const/16 v16, 0x1

    goto :goto_b

    :cond_11
    const/16 v16, -0x1

    :goto_b
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    mul-int v7, v7, v16

    int-to-float v7, v7

    iget v10, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->replaceLayoutProgress:F

    sub-float v10, v13, v10

    mul-float v7, v7, v10

    add-float/2addr v8, v7

    invoke-virtual {v1, v5, v8}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v5, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->inLetterLayout:Landroid/text/StaticLayout;

    invoke-virtual {v5, v1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_12
    iget-object v5, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->stableLetterLayout:Landroid/text/StaticLayout;

    if-eqz v5, :cond_13

    iget-object v5, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterPaint:Landroid/text/TextPaint;

    int-to-float v7, v6

    iget v8, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->floatingDateProgress:F

    mul-float v7, v7, v8

    float-to-int v7, v7

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v5, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->stableLetterLayout:Landroid/text/StaticLayout;

    invoke-virtual {v5}, Landroid/text/Layout;->getWidth()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v3, v5

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v3, v5

    iget-object v5, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->stableLetterLayout:Landroid/text/StaticLayout;

    invoke-virtual {v5}, Landroid/text/Layout;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v11

    sub-float/2addr v2, v5

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v2, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->stableLetterLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_13
    :goto_c
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_d

    :cond_14
    iget-object v5, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterPaint:Landroid/text/TextPaint;

    int-to-float v8, v6

    iget v10, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->floatingDateProgress:F

    mul-float v8, v8, v10

    float-to-int v8, v8

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v5, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterLayout:Landroid/text/StaticLayout;

    invoke-virtual {v5}, Landroid/text/Layout;->getWidth()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v3, v5

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v3, v5

    iget-object v5, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterLayout:Landroid/text/StaticLayout;

    invoke-virtual {v5}, Landroid/text/Layout;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v11

    sub-float/2addr v2, v5

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    iget v7, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->replaceLayoutProgress:F

    sub-float v7, v13, v7

    mul-float v5, v5, v7

    add-float/2addr v2, v5

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v2, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    goto :goto_c

    :goto_d
    iget-object v2, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->paint2:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_8

    :cond_15
    :goto_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->lastUpdateTime:J

    sub-long v3, v1, v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-ltz v7, :cond_16

    const-wide/16 v5, 0x11

    cmp-long v7, v3, v5

    if-lez v7, :cond_17

    :cond_16
    const-wide/16 v3, 0x11

    :cond_17
    iget-boolean v5, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->isMoving:Z

    const/high16 v6, 0x42f00000    # 120.0f

    if-eqz v5, :cond_18

    iget-object v7, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterLayout:Landroid/text/StaticLayout;

    if-eqz v7, :cond_18

    iget v7, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->bubbleProgress:F

    cmpg-float v7, v7, v13

    if-ltz v7, :cond_1a

    :cond_18
    if-eqz v5, :cond_19

    iget-object v5, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterLayout:Landroid/text/StaticLayout;

    if-nez v5, :cond_1c

    :cond_19
    iget v5, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->bubbleProgress:F

    const/4 v7, 0x0

    cmpl-float v5, v5, v7

    if-lez v5, :cond_1c

    :cond_1a
    iput-wide v1, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->lastUpdateTime:J

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    iget-boolean v1, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->isMoving:Z

    if-eqz v1, :cond_1b

    iget-object v1, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterLayout:Landroid/text/StaticLayout;

    if-eqz v1, :cond_1b

    iget v1, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->bubbleProgress:F

    long-to-float v2, v3

    div-float/2addr v2, v6

    add-float/2addr v1, v2

    iput v1, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->bubbleProgress:F

    cmpl-float v1, v1, v13

    if-lez v1, :cond_1c

    iput v13, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->bubbleProgress:F

    goto :goto_f

    :cond_1b
    iget v1, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->bubbleProgress:F

    long-to-float v2, v3

    div-float/2addr v2, v6

    sub-float/2addr v1, v2

    iput v1, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->bubbleProgress:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1c

    iput v2, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->bubbleProgress:F

    :cond_1c
    :goto_f
    iget-boolean v1, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->floatingDateVisible:Z

    if-eqz v1, :cond_1d

    iget v2, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->floatingDateProgress:F

    cmpl-float v5, v2, v13

    if-eqz v5, :cond_1d

    long-to-float v1, v3

    div-float/2addr v1, v6

    add-float/2addr v2, v1

    iput v2, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->floatingDateProgress:F

    cmpl-float v1, v2, v13

    if-lez v1, :cond_1e

    iput v13, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->floatingDateProgress:F

    goto :goto_10

    :cond_1d
    if-nez v1, :cond_1f

    iget v1, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->floatingDateProgress:F

    const/4 v2, 0x0

    cmpl-float v5, v1, v2

    if-eqz v5, :cond_1f

    long-to-float v3, v3

    div-float/2addr v3, v6

    sub-float/2addr v1, v3

    iput v1, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->floatingDateProgress:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1e

    iput v2, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->floatingDateProgress:F

    :cond_1e
    :goto_10
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    :cond_1f
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    iget p1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->type:I

    if-nez p1, :cond_0

    const/high16 p1, 0x43040000    # 132.0f

    goto :goto_0

    :cond_0
    const/high16 p1, 0x43700000    # 240.0f

    :goto_0
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->arrowPath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->arrowPath:Landroid/graphics/Path;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2}, Landroid/graphics/Path;->setLastPoint(FF)V

    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->arrowPath:Landroid/graphics/Path;

    const/high16 p2, 0x40800000    # 4.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->arrowPath:Landroid/graphics/Path;

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    neg-int p2, p2

    int-to-float p2, p2

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->arrowPath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->isVisible:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->pressed:Z

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/high16 v2, 0x42580000    # 54.0f

    const/high16 v3, 0x41400000    # 12.0f

    const/4 v4, 0x1

    if-eqz v0, :cond_c

    if-eq v0, v4, :cond_9

    const/4 v5, 0x2

    if-eq v0, v5, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_9

    iget-boolean p1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->pressed:Z

    return p1

    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->pressed:Z

    if-nez v0, :cond_2

    return v4

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->startY:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->touchSlop:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    iput-boolean v4, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->isMoving:Z

    :cond_3
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->isMoving:Z

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->startDy:F

    add-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    const/high16 v3, 0x42280000    # 42.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    iget v3, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->startDy:F

    add-float/2addr v1, v3

    cmpg-float v3, p1, v0

    if-gez v3, :cond_4

    move p1, v0

    goto :goto_0

    :cond_4
    cmpl-float v0, p1, v1

    if-lez v0, :cond_5

    move p1, v1

    :cond_5
    :goto_0
    iget v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->lastY:F

    sub-float v0, p1, v0

    iput p1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->lastY:F

    iget p1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->progress:F

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    add-float/2addr p1, v0

    iput p1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->progress:F

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_6

    :goto_1
    iput v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->progress:F

    goto :goto_2

    :cond_6
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_7

    goto :goto_1

    :cond_7
    :goto_2
    invoke-direct {p0, v4}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->getCurrentLetter(Z)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_8
    return v4

    :cond_9
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->pressed:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->isMoving:Z

    if-nez v0, :cond_a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v5, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->startTime:J

    sub-long/2addr v2, v5

    const-wide/16 v5, 0x96

    cmp-long v0, v2, v5

    if-gez v0, :cond_a

    instance-of v0, p1, Lorg/telegram/ui/Components/RecyclerListView$FastScrollAdapter;

    if-eqz v0, :cond_a

    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/Components/RecyclerListView$FastScrollAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView$FastScrollAdapter;->onFastScrollSingleTap()V

    :cond_a
    iput-boolean v1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->isMoving:Z

    iput-boolean v1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->pressed:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->lastUpdateTime:J

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    instance-of v0, p1, Lorg/telegram/ui/Components/RecyclerListView$FastScrollAdapter;

    if-eqz v0, :cond_b

    check-cast p1, Lorg/telegram/ui/Components/RecyclerListView$FastScrollAdapter;

    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView$FastScrollAdapter;->onFinishFastScroll(Lorg/telegram/ui/Components/RecyclerListView;)V

    :cond_b
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->showFloatingDate()V

    return v4

    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->lastY:F

    iput p1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->startY:F

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr p1, v2

    int-to-float p1, p1

    iget v2, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->progress:F

    mul-float p1, p1, v2

    float-to-double v5, p1

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-float p1, v5

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr p1, v2

    iget-boolean v2, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->isRtl:Z

    const/high16 v3, 0x41c80000    # 25.0f

    if-eqz v2, :cond_d

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-gtz v2, :cond_15

    :cond_d
    iget-boolean v2, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->isRtl:Z

    if-nez v2, :cond_e

    const/high16 v2, 0x42d60000    # 107.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, v0, v2

    if-ltz v2, :cond_15

    :cond_e
    iget v2, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->lastY:F

    cmpg-float v5, v2, p1

    if-ltz v5, :cond_15

    const/high16 v5, 0x41f00000    # 30.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, p1

    cmpl-float v2, v2, v6

    if-lez v2, :cond_f

    goto :goto_3

    :cond_f
    iget v2, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->type:I

    if-ne v2, v4, :cond_13

    iget-boolean v2, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->floatingDateVisible:Z

    if-nez v2, :cond_13

    iget-boolean v2, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->isRtl:Z

    if-eqz v2, :cond_10

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-gtz v2, :cond_12

    :cond_10
    iget-boolean v2, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->isRtl:Z

    if-nez v2, :cond_11

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-ltz v0, :cond_12

    :cond_11
    iget v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->lastY:F

    cmpg-float v2, v0, p1

    if-ltz v2, :cond_12

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, p1

    cmpl-float v0, v0, v2

    if-lez v0, :cond_13

    :cond_12
    return v1

    :cond_13
    iget v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->lastY:F

    sub-float/2addr v0, p1

    iput v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->startDy:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->startTime:J

    iput-boolean v4, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->pressed:Z

    iput-boolean v1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->isMoving:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->lastUpdateTime:J

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->showFloatingDate()V

    instance-of v0, p1, Lorg/telegram/ui/Components/RecyclerListView$FastScrollAdapter;

    if-eqz v0, :cond_14

    check-cast p1, Lorg/telegram/ui/Components/RecyclerListView$FastScrollAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView$FastScrollAdapter;->onStartFastScroll()V

    :cond_14
    return v4

    :cond_15
    :goto_3
    return v1
.end method

.method public setAlpha(F)V
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->viewAlpha:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->viewAlpha:F

    iget v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->visibilityAlpha:F

    mul-float p1, p1, v0

    invoke-super {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public setIsVisible(Z)V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->isVisible:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->isVisible:Z

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->visibilityAlpha:F

    iget v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->viewAlpha:F

    mul-float v0, v0, p1

    invoke-super {p0, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    return-void
.end method

.method public setProgress(F)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->progress:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setVisibilityAlpha(F)V
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->visibilityAlpha:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->visibilityAlpha:F

    iget v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->viewAlpha:F

    mul-float v0, v0, p1

    invoke-super {p0, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public showFloatingDate()V
    .locals 3

    iget v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->type:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->floatingDateVisible:Z

    if-nez v0, :cond_1

    iput-boolean v1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->floatingDateVisible:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->hideFloatingDateRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->hideFloatingDateRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method
