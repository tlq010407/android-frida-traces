.class public Lorg/telegram/ui/Components/TableLayout;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/TableLayout$TableLayoutDelegate;,
        Lorg/telegram/ui/Components/TableLayout$Child;,
        Lorg/telegram/ui/Components/TableLayout$LayoutParams;,
        Lorg/telegram/ui/Components/TableLayout$Spec;,
        Lorg/telegram/ui/Components/TableLayout$Interval;,
        Lorg/telegram/ui/Components/TableLayout$Alignment;,
        Lorg/telegram/ui/Components/TableLayout$Axis;,
        Lorg/telegram/ui/Components/TableLayout$PackedMap;,
        Lorg/telegram/ui/Components/TableLayout$Bounds;,
        Lorg/telegram/ui/Components/TableLayout$Assoc;,
        Lorg/telegram/ui/Components/TableLayout$MutableInt;,
        Lorg/telegram/ui/Components/TableLayout$Arc;
    }
.end annotation


# static fields
.field public static final BASELINE:Lorg/telegram/ui/Components/TableLayout$Alignment;

.field public static final BOTTOM:Lorg/telegram/ui/Components/TableLayout$Alignment;

.field public static final CENTER:Lorg/telegram/ui/Components/TableLayout$Alignment;

.field public static final END:Lorg/telegram/ui/Components/TableLayout$Alignment;

.field public static final FILL:Lorg/telegram/ui/Components/TableLayout$Alignment;

.field private static final LEADING:Lorg/telegram/ui/Components/TableLayout$Alignment;

.field public static final LEFT:Lorg/telegram/ui/Components/TableLayout$Alignment;

.field public static final RIGHT:Lorg/telegram/ui/Components/TableLayout$Alignment;

.field public static final START:Lorg/telegram/ui/Components/TableLayout$Alignment;

.field public static final TOP:Lorg/telegram/ui/Components/TableLayout$Alignment;

.field private static final TRAILING:Lorg/telegram/ui/Components/TableLayout$Alignment;

.field static final UNDEFINED_ALIGNMENT:Lorg/telegram/ui/Components/TableLayout$Alignment;


# instance fields
.field private backgroundPath:Landroid/graphics/Path;

.field private cellsToFixHeight:Ljava/util/ArrayList;

.field private childrens:Ljava/util/ArrayList;

.field private colCount:I

.field private delegate:Lorg/telegram/ui/Components/TableLayout$TableLayoutDelegate;

.field private drawLines:Z

.field private isRtl:Z

.field private isStriped:Z

.field private itemPaddingLeft:I

.field private itemPaddingTop:I

.field private linePath:Landroid/graphics/Path;

.field private mAlignmentMode:I

.field private mDefaultGap:I

.field private final mHorizontalAxis:Lorg/telegram/ui/Components/TableLayout$Axis;

.field private mLastLayoutParamsHashCode:I

.field private mOrientation:I

.field private mUseDefaultMargins:Z

.field private final mVerticalAxis:Lorg/telegram/ui/Components/TableLayout$Axis;

.field private radii:[F

.field private rect:Landroid/graphics/RectF;

.field private rowSpans:Ljava/util/ArrayList;

.field private textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/telegram/ui/Components/TableLayout$1;

    invoke-direct {v0}, Lorg/telegram/ui/Components/TableLayout$1;-><init>()V

    sput-object v0, Lorg/telegram/ui/Components/TableLayout;->UNDEFINED_ALIGNMENT:Lorg/telegram/ui/Components/TableLayout$Alignment;

    new-instance v0, Lorg/telegram/ui/Components/TableLayout$2;

    invoke-direct {v0}, Lorg/telegram/ui/Components/TableLayout$2;-><init>()V

    sput-object v0, Lorg/telegram/ui/Components/TableLayout;->LEADING:Lorg/telegram/ui/Components/TableLayout$Alignment;

    new-instance v1, Lorg/telegram/ui/Components/TableLayout$3;

    invoke-direct {v1}, Lorg/telegram/ui/Components/TableLayout$3;-><init>()V

    sput-object v1, Lorg/telegram/ui/Components/TableLayout;->TRAILING:Lorg/telegram/ui/Components/TableLayout$Alignment;

    sput-object v0, Lorg/telegram/ui/Components/TableLayout;->TOP:Lorg/telegram/ui/Components/TableLayout$Alignment;

    sput-object v1, Lorg/telegram/ui/Components/TableLayout;->BOTTOM:Lorg/telegram/ui/Components/TableLayout$Alignment;

    sput-object v0, Lorg/telegram/ui/Components/TableLayout;->START:Lorg/telegram/ui/Components/TableLayout$Alignment;

    sput-object v1, Lorg/telegram/ui/Components/TableLayout;->END:Lorg/telegram/ui/Components/TableLayout$Alignment;

    invoke-static {v0}, Lorg/telegram/ui/Components/TableLayout;->createSwitchingAlignment(Lorg/telegram/ui/Components/TableLayout$Alignment;)Lorg/telegram/ui/Components/TableLayout$Alignment;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Components/TableLayout;->LEFT:Lorg/telegram/ui/Components/TableLayout$Alignment;

    invoke-static {v1}, Lorg/telegram/ui/Components/TableLayout;->createSwitchingAlignment(Lorg/telegram/ui/Components/TableLayout$Alignment;)Lorg/telegram/ui/Components/TableLayout$Alignment;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Components/TableLayout;->RIGHT:Lorg/telegram/ui/Components/TableLayout$Alignment;

    new-instance v0, Lorg/telegram/ui/Components/TableLayout$5;

    invoke-direct {v0}, Lorg/telegram/ui/Components/TableLayout$5;-><init>()V

    sput-object v0, Lorg/telegram/ui/Components/TableLayout;->CENTER:Lorg/telegram/ui/Components/TableLayout$Alignment;

    new-instance v0, Lorg/telegram/ui/Components/TableLayout$6;

    invoke-direct {v0}, Lorg/telegram/ui/Components/TableLayout$6;-><init>()V

    sput-object v0, Lorg/telegram/ui/Components/TableLayout;->BASELINE:Lorg/telegram/ui/Components/TableLayout$Alignment;

    new-instance v0, Lorg/telegram/ui/Components/TableLayout$7;

    invoke-direct {v0}, Lorg/telegram/ui/Components/TableLayout$7;-><init>()V

    sput-object v0, Lorg/telegram/ui/Components/TableLayout;->FILL:Lorg/telegram/ui/Components/TableLayout$Alignment;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/Components/TableLayout$TableLayoutDelegate;Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance p1, Lorg/telegram/ui/Components/TableLayout$Axis;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p1, p0, v0, v1}, Lorg/telegram/ui/Components/TableLayout$Axis;-><init>(Lorg/telegram/ui/Components/TableLayout;ZLorg/telegram/ui/Components/TableLayout$1;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/TableLayout;->mHorizontalAxis:Lorg/telegram/ui/Components/TableLayout$Axis;

    new-instance p1, Lorg/telegram/ui/Components/TableLayout$Axis;

    const/4 v2, 0x0

    invoke-direct {p1, p0, v2, v1}, Lorg/telegram/ui/Components/TableLayout$Axis;-><init>(Lorg/telegram/ui/Components/TableLayout;ZLorg/telegram/ui/Components/TableLayout$1;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/TableLayout;->mVerticalAxis:Lorg/telegram/ui/Components/TableLayout$Axis;

    iput v2, p0, Lorg/telegram/ui/Components/TableLayout;->mOrientation:I

    iput-boolean v2, p0, Lorg/telegram/ui/Components/TableLayout;->mUseDefaultMargins:Z

    iput v0, p0, Lorg/telegram/ui/Components/TableLayout;->mAlignmentMode:I

    iput v2, p0, Lorg/telegram/ui/Components/TableLayout;->mLastLayoutParamsHashCode:I

    const/high16 p1, 0x40e00000    # 7.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/TableLayout;->itemPaddingTop:I

    const/high16 p1, 0x41000000    # 8.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/TableLayout;->itemPaddingLeft:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/TableLayout;->cellsToFixHeight:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/TableLayout;->rowSpans:Ljava/util/ArrayList;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/TableLayout;->linePath:Landroid/graphics/Path;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/TableLayout;->backgroundPath:Landroid/graphics/Path;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/TableLayout;->rect:Landroid/graphics/RectF;

    const/16 p1, 0x8

    new-array p1, p1, [F

    iput-object p1, p0, Lorg/telegram/ui/Components/TableLayout;->radii:[F

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/TableLayout;->childrens:Ljava/util/ArrayList;

    iput-object p3, p0, Lorg/telegram/ui/Components/TableLayout;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;

    const/high16 p1, -0x80000000

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/TableLayout;->setRowCount(I)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/TableLayout;->setColumnCount(I)V

    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/TableLayout;->setOrientation(I)V

    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/TableLayout;->setUseDefaultMargins(Z)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/TableLayout;->setAlignmentMode(I)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/TableLayout;->setRowOrderPreserved(Z)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/TableLayout;->setColumnOrderPreserved(Z)V

    iput-object p2, p0, Lorg/telegram/ui/Components/TableLayout;->delegate:Lorg/telegram/ui/Components/TableLayout$TableLayoutDelegate;

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/TableLayout;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/TableLayout;->itemPaddingTop:I

    return p0
.end method

.method static synthetic access$1800(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/Components/TableLayout;->handleInvalidParams(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/TableLayout;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/TableLayout;->itemPaddingLeft:I

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/TableLayout;)Lorg/telegram/ui/Components/TableLayout$TableLayoutDelegate;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/TableLayout;->delegate:Lorg/telegram/ui/Components/TableLayout$TableLayoutDelegate;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/TableLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/TableLayout;->isStriped:Z

    return p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/TableLayout;)[F
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/TableLayout;->radii:[F

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/TableLayout;)Landroid/graphics/RectF;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/TableLayout;->rect:Landroid/graphics/RectF;

    return-object p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/TableLayout;)Landroid/graphics/Path;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/TableLayout;->backgroundPath:Landroid/graphics/Path;

    return-object p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/TableLayout;)Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/TableLayout;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;

    return-object p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/TableLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/TableLayout;->drawLines:Z

    return p0
.end method

.method static append([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p0, p0

    array-length v1, p1

    invoke-static {p1, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method static canStretch(I)Z
    .locals 0

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static clip(Lorg/telegram/ui/Components/TableLayout$Interval;ZI)I
    .locals 1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/TableLayout$Interval;->size()I

    move-result v0

    if-nez p2, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    iget p0, p0, Lorg/telegram/ui/Components/TableLayout$Interval;->min:I

    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    sub-int/2addr p2, p0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method private computeLayoutParamsHashCode()I
    .locals 4

    invoke-virtual {p0}, Lorg/telegram/ui/Components/TableLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/TableLayout;->getChildAt(I)Lorg/telegram/ui/Components/TableLayout$Child;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/TableLayout$Child;->getLayoutParams()Lorg/telegram/ui/Components/TableLayout$LayoutParams;

    move-result-object v3

    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {v3}, Lorg/telegram/ui/Components/TableLayout$LayoutParams;->hashCode()I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method private consistencyCheck()V
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Components/TableLayout;->mLastLayoutParamsHashCode:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/Components/TableLayout;->validateLayoutParams()V

    invoke-direct {p0}, Lorg/telegram/ui/Components/TableLayout;->computeLayoutParamsHashCode()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/TableLayout;->mLastLayoutParamsHashCode:I

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/TableLayout;->computeLayoutParamsHashCode()I

    move-result v1

    if-eq v0, v1, :cond_1

    invoke-direct {p0}, Lorg/telegram/ui/Components/TableLayout;->invalidateStructure()V

    invoke-direct {p0}, Lorg/telegram/ui/Components/TableLayout;->consistencyCheck()V

    :cond_1
    :goto_0
    return-void
.end method

.method private static createSwitchingAlignment(Lorg/telegram/ui/Components/TableLayout$Alignment;)Lorg/telegram/ui/Components/TableLayout$Alignment;
    .locals 1

    new-instance v0, Lorg/telegram/ui/Components/TableLayout$4;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/TableLayout$4;-><init>(Lorg/telegram/ui/Components/TableLayout$Alignment;)V

    return-object v0
.end method

.method private static fits([IIII)Z
    .locals 2

    array-length v0, p0

    const/4 v1, 0x0

    if-le p3, v0, :cond_0

    return v1

    :cond_0
    :goto_0
    if-ge p2, p3, :cond_2

    aget v0, p0, p2

    if-le v0, p1, :cond_1

    return v1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private getDefaultMargin(Lorg/telegram/ui/Components/TableLayout$Child;Lorg/telegram/ui/Components/TableLayout$LayoutParams;ZZ)I
    .locals 4

    .line 0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/TableLayout;->mUseDefaultMargins:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p3, :cond_1

    iget-object p2, p2, Lorg/telegram/ui/Components/TableLayout$LayoutParams;->columnSpec:Lorg/telegram/ui/Components/TableLayout$Spec;

    goto :goto_0

    :cond_1
    iget-object p2, p2, Lorg/telegram/ui/Components/TableLayout$LayoutParams;->rowSpec:Lorg/telegram/ui/Components/TableLayout$Spec;

    :goto_0
    if-eqz p3, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/TableLayout;->mHorizontalAxis:Lorg/telegram/ui/Components/TableLayout$Axis;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/TableLayout;->mVerticalAxis:Lorg/telegram/ui/Components/TableLayout$Axis;

    :goto_1
    iget-object p2, p2, Lorg/telegram/ui/Components/TableLayout$Spec;->span:Lorg/telegram/ui/Components/TableLayout$Interval;

    const/4 v2, 0x1

    if-eqz p3, :cond_3

    iget-boolean v3, p0, Lorg/telegram/ui/Components/TableLayout;->isRtl:Z

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    if-eq v3, p4, :cond_4

    iget p2, p2, Lorg/telegram/ui/Components/TableLayout$Interval;->min:I

    if-nez p2, :cond_5

    goto :goto_3

    :cond_4
    iget p2, p2, Lorg/telegram/ui/Components/TableLayout$Interval;->max:I

    invoke-virtual {v0}, Lorg/telegram/ui/Components/TableLayout$Axis;->getCount()I

    move-result v0

    if-ne p2, v0, :cond_5

    :goto_3
    const/4 v1, 0x1

    :cond_5
    invoke-direct {p0, p1, v1, p3, p4}, Lorg/telegram/ui/Components/TableLayout;->getDefaultMargin(Lorg/telegram/ui/Components/TableLayout$Child;ZZZ)I

    move-result p1

    return p1
.end method

.method private getDefaultMargin(Lorg/telegram/ui/Components/TableLayout$Child;ZZ)I
    .locals 0

    .line 0
    iget p1, p0, Lorg/telegram/ui/Components/TableLayout;->mDefaultGap:I

    div-int/lit8 p1, p1, 0x2

    return p1
.end method

.method private getDefaultMargin(Lorg/telegram/ui/Components/TableLayout$Child;ZZZ)I
    .locals 0

    .line 0
    invoke-direct {p0, p1, p3, p4}, Lorg/telegram/ui/Components/TableLayout;->getDefaultMargin(Lorg/telegram/ui/Components/TableLayout$Child;ZZ)I

    move-result p1

    return p1
.end method

.method private getMargin(Lorg/telegram/ui/Components/TableLayout$Child;ZZ)I
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Components/TableLayout;->mAlignmentMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lorg/telegram/ui/Components/TableLayout;->getMargin1(Lorg/telegram/ui/Components/TableLayout$Child;ZZ)I

    move-result p1

    return p1

    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/TableLayout;->mHorizontalAxis:Lorg/telegram/ui/Components/TableLayout$Axis;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/TableLayout;->mVerticalAxis:Lorg/telegram/ui/Components/TableLayout$Axis;

    :goto_0
    if-eqz p3, :cond_2

    invoke-virtual {v0}, Lorg/telegram/ui/Components/TableLayout$Axis;->getLeadingMargins()[I

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lorg/telegram/ui/Components/TableLayout$Axis;->getTrailingMargins()[I

    move-result-object v0

    :goto_1
    invoke-virtual {p1}, Lorg/telegram/ui/Components/TableLayout$Child;->getLayoutParams()Lorg/telegram/ui/Components/TableLayout$LayoutParams;

    move-result-object p1

    if-eqz p2, :cond_3

    iget-object p1, p1, Lorg/telegram/ui/Components/TableLayout$LayoutParams;->columnSpec:Lorg/telegram/ui/Components/TableLayout$Spec;

    goto :goto_2

    :cond_3
    iget-object p1, p1, Lorg/telegram/ui/Components/TableLayout$LayoutParams;->rowSpec:Lorg/telegram/ui/Components/TableLayout$Spec;

    :goto_2
    iget-object p1, p1, Lorg/telegram/ui/Components/TableLayout$Spec;->span:Lorg/telegram/ui/Components/TableLayout$Interval;

    if-eqz p3, :cond_4

    iget p1, p1, Lorg/telegram/ui/Components/TableLayout$Interval;->min:I

    goto :goto_3

    :cond_4
    iget p1, p1, Lorg/telegram/ui/Components/TableLayout$Interval;->max:I

    :goto_3
    aget p1, v0, p1

    return p1
.end method

.method private getMeasurement(Lorg/telegram/ui/Components/TableLayout$Child;Z)I
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lorg/telegram/ui/Components/TableLayout$Child;->getMeasuredWidth()I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/telegram/ui/Components/TableLayout$Child;->getMeasuredHeight()I

    move-result p1

    :goto_0
    return p1
.end method

.method private getTotalMargin(Lorg/telegram/ui/Components/TableLayout$Child;Z)I
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/ui/Components/TableLayout;->getMargin(Lorg/telegram/ui/Components/TableLayout$Child;ZZ)I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Lorg/telegram/ui/Components/TableLayout;->getMargin(Lorg/telegram/ui/Components/TableLayout$Child;ZZ)I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method private static handleInvalidParams(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ". "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private invalidateStructure()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/TableLayout;->mLastLayoutParamsHashCode:I

    iget-object v0, p0, Lorg/telegram/ui/Components/TableLayout;->mHorizontalAxis:Lorg/telegram/ui/Components/TableLayout$Axis;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/TableLayout$Axis;->invalidateStructure()V

    iget-object v0, p0, Lorg/telegram/ui/Components/TableLayout;->mVerticalAxis:Lorg/telegram/ui/Components/TableLayout$Axis;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/TableLayout$Axis;->invalidateStructure()V

    invoke-direct {p0}, Lorg/telegram/ui/Components/TableLayout;->invalidateValues()V

    return-void
.end method

.method private invalidateValues()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/TableLayout;->mHorizontalAxis:Lorg/telegram/ui/Components/TableLayout$Axis;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/TableLayout;->mVerticalAxis:Lorg/telegram/ui/Components/TableLayout$Axis;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/TableLayout$Axis;->invalidateValues()V

    iget-object v0, p0, Lorg/telegram/ui/Components/TableLayout;->mVerticalAxis:Lorg/telegram/ui/Components/TableLayout$Axis;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/TableLayout$Axis;->invalidateValues()V

    :cond_0
    return-void
.end method

.method static max2([II)I
    .locals 3

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p0, v1

    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return p1
.end method

.method private measureChildWithMargins2(Lorg/telegram/ui/Components/TableLayout$Child;IIIIZ)V
    .locals 0

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/TableLayout;->getTotalMargin(Lorg/telegram/ui/Components/TableLayout$Child;Z)I

    move-result p2

    add-int/2addr p2, p4

    const/4 p3, 0x0

    invoke-direct {p0, p1, p3}, Lorg/telegram/ui/Components/TableLayout;->getTotalMargin(Lorg/telegram/ui/Components/TableLayout$Child;Z)I

    move-result p3

    add-int/2addr p3, p5

    invoke-virtual {p1, p2, p3, p6}, Lorg/telegram/ui/Components/TableLayout$Child;->measure(IIZ)V

    return-void
.end method

.method private measureChildrenWithMargins(IIZ)V
    .locals 11

    invoke-virtual {p0}, Lorg/telegram/ui/Components/TableLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_8

    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/TableLayout;->getChildAt(I)Lorg/telegram/ui/Components/TableLayout$Child;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Components/TableLayout$Child;->getLayoutParams()Lorg/telegram/ui/Components/TableLayout$LayoutParams;

    move-result-object v3

    if-eqz p3, :cond_2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    iget v6, p0, Lorg/telegram/ui/Components/TableLayout;->colCount:I

    const/4 v7, 0x2

    int-to-float v5, v5

    if-ne v6, v7, :cond_0

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    float-to-int v5, v5

    iget v6, p0, Lorg/telegram/ui/Components/TableLayout;->itemPaddingLeft:I

    mul-int/lit8 v6, v6, 0x4

    sub-int/2addr v5, v6

    goto :goto_1

    :cond_0
    const/high16 v6, 0x3fc00000    # 1.5f

    div-float/2addr v5, v6

    float-to-int v5, v5

    :goto_1
    iget-object v6, p0, Lorg/telegram/ui/Components/TableLayout;->delegate:Lorg/telegram/ui/Components/TableLayout$TableLayoutDelegate;

    invoke-static {v4}, Lorg/telegram/ui/Components/TableLayout$Child;->access$1200(Lorg/telegram/ui/Components/TableLayout$Child;)Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;

    move-result-object v8

    invoke-interface {v6, v8, v5}, Lorg/telegram/ui/Components/TableLayout$TableLayoutDelegate;->createTextLayout(Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;I)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/TableLayout$Child;->setTextLayout(Lorg/telegram/ui/ArticleViewer$DrawingText;)V

    iget-object v5, v4, Lorg/telegram/ui/Components/TableLayout$Child;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v5, :cond_1

    iget v5, v4, Lorg/telegram/ui/Components/TableLayout$Child;->textWidth:I

    iget v6, p0, Lorg/telegram/ui/Components/TableLayout;->itemPaddingLeft:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget v5, v4, Lorg/telegram/ui/Components/TableLayout$Child;->textHeight:I

    iget v6, p0, Lorg/telegram/ui/Components/TableLayout;->itemPaddingTop:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    goto :goto_2

    :cond_1
    iput v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    :goto_2
    iget v7, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v9, 0x1

    :goto_3
    move-object v3, p0

    move v5, p1

    move v6, p2

    :goto_4
    invoke-direct/range {v3 .. v9}, Lorg/telegram/ui/Components/TableLayout;->measureChildWithMargins2(Lorg/telegram/ui/Components/TableLayout$Child;IIIIZ)V

    goto :goto_8

    :cond_2
    iget v5, p0, Lorg/telegram/ui/Components/TableLayout;->mOrientation:I

    if-nez v5, :cond_3

    const/4 v5, 0x1

    goto :goto_5

    :cond_3
    const/4 v5, 0x0

    :goto_5
    if-eqz v5, :cond_4

    iget-object v6, v3, Lorg/telegram/ui/Components/TableLayout$LayoutParams;->columnSpec:Lorg/telegram/ui/Components/TableLayout$Spec;

    goto :goto_6

    :cond_4
    iget-object v6, v3, Lorg/telegram/ui/Components/TableLayout$LayoutParams;->rowSpec:Lorg/telegram/ui/Components/TableLayout$Spec;

    :goto_6
    invoke-static {v6, v5}, Lorg/telegram/ui/Components/TableLayout$Spec;->access$1300(Lorg/telegram/ui/Components/TableLayout$Spec;Z)Lorg/telegram/ui/Components/TableLayout$Alignment;

    move-result-object v7

    sget-object v8, Lorg/telegram/ui/Components/TableLayout;->FILL:Lorg/telegram/ui/Components/TableLayout$Alignment;

    if-ne v7, v8, :cond_7

    iget-object v6, v6, Lorg/telegram/ui/Components/TableLayout$Spec;->span:Lorg/telegram/ui/Components/TableLayout$Interval;

    if-eqz v5, :cond_5

    iget-object v7, p0, Lorg/telegram/ui/Components/TableLayout;->mHorizontalAxis:Lorg/telegram/ui/Components/TableLayout$Axis;

    goto :goto_7

    :cond_5
    iget-object v7, p0, Lorg/telegram/ui/Components/TableLayout;->mVerticalAxis:Lorg/telegram/ui/Components/TableLayout$Axis;

    :goto_7
    invoke-virtual {v7}, Lorg/telegram/ui/Components/TableLayout$Axis;->getLocations()[I

    move-result-object v7

    iget v8, v6, Lorg/telegram/ui/Components/TableLayout$Interval;->max:I

    aget v8, v7, v8

    iget v6, v6, Lorg/telegram/ui/Components/TableLayout$Interval;->min:I

    aget v6, v7, v6

    sub-int/2addr v8, v6

    invoke-direct {p0, v4, v5}, Lorg/telegram/ui/Components/TableLayout;->getTotalMargin(Lorg/telegram/ui/Components/TableLayout$Child;Z)I

    move-result v6

    sub-int/2addr v8, v6

    if-eqz v5, :cond_6

    iget v9, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v10, 0x0

    move-object v3, p0

    move v5, p1

    move v6, p2

    move v7, v8

    move v8, v9

    move v9, v10

    goto :goto_4

    :cond_6
    iget v7, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/4 v9, 0x0

    goto :goto_3

    :cond_7
    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method private static procrusteanFill([IIII)V
    .locals 1

    array-length v0, p0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {p0, p1, p2, p3}, Ljava/util/Arrays;->fill([IIII)V

    return-void
.end method

.method private static setCellGroup(Lorg/telegram/ui/Components/TableLayout$LayoutParams;IIII)V
    .locals 1

    new-instance v0, Lorg/telegram/ui/Components/TableLayout$Interval;

    add-int/2addr p2, p1

    invoke-direct {v0, p1, p2}, Lorg/telegram/ui/Components/TableLayout$Interval;-><init>(II)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/TableLayout$LayoutParams;->setRowSpecSpan(Lorg/telegram/ui/Components/TableLayout$Interval;)V

    new-instance p1, Lorg/telegram/ui/Components/TableLayout$Interval;

    add-int/2addr p4, p3

    invoke-direct {p1, p3, p4}, Lorg/telegram/ui/Components/TableLayout$Interval;-><init>(II)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/TableLayout$LayoutParams;->setColumnSpecSpan(Lorg/telegram/ui/Components/TableLayout$Interval;)V

    return-void
.end method

.method public static spec(I)Lorg/telegram/ui/Components/TableLayout$Spec;
    .locals 1

    .line 0
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/telegram/ui/Components/TableLayout;->spec(II)Lorg/telegram/ui/Components/TableLayout$Spec;

    move-result-object p0

    return-object p0
.end method

.method public static spec(II)Lorg/telegram/ui/Components/TableLayout$Spec;
    .locals 1

    .line 0
    sget-object v0, Lorg/telegram/ui/Components/TableLayout;->UNDEFINED_ALIGNMENT:Lorg/telegram/ui/Components/TableLayout$Alignment;

    invoke-static {p0, p1, v0}, Lorg/telegram/ui/Components/TableLayout;->spec(IILorg/telegram/ui/Components/TableLayout$Alignment;)Lorg/telegram/ui/Components/TableLayout$Spec;

    move-result-object p0

    return-object p0
.end method

.method public static spec(IILorg/telegram/ui/Components/TableLayout$Alignment;)Lorg/telegram/ui/Components/TableLayout$Spec;
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/telegram/ui/Components/TableLayout;->spec(IILorg/telegram/ui/Components/TableLayout$Alignment;F)Lorg/telegram/ui/Components/TableLayout$Spec;

    move-result-object p0

    return-object p0
.end method

.method public static spec(IILorg/telegram/ui/Components/TableLayout$Alignment;F)Lorg/telegram/ui/Components/TableLayout$Spec;
    .locals 8

    .line 0
    new-instance v7, Lorg/telegram/ui/Components/TableLayout$Spec;

    const/high16 v0, -0x80000000

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v6, 0x0

    move-object v0, v7

    move v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/TableLayout$Spec;-><init>(ZIILorg/telegram/ui/Components/TableLayout$Alignment;FLorg/telegram/ui/Components/TableLayout$1;)V

    return-object v7
.end method

.method private validateLayoutParams()V
    .locals 14

    iget v0, p0, Lorg/telegram/ui/Components/TableLayout;->mOrientation:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Components/TableLayout;->mHorizontalAxis:Lorg/telegram/ui/Components/TableLayout$Axis;

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/TableLayout;->mVerticalAxis:Lorg/telegram/ui/Components/TableLayout$Axis;

    :goto_1
    iget v2, v2, Lorg/telegram/ui/Components/TableLayout$Axis;->definedCount:I

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    new-array v3, v2, [I

    invoke-virtual {p0}, Lorg/telegram/ui/Components/TableLayout;->getChildCount()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_3
    if-ge v5, v4, :cond_d

    invoke-virtual {p0, v5}, Lorg/telegram/ui/Components/TableLayout;->getChildAt(I)Lorg/telegram/ui/Components/TableLayout$Child;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/ui/Components/TableLayout$Child;->getLayoutParams()Lorg/telegram/ui/Components/TableLayout$LayoutParams;

    move-result-object v8

    if-eqz v0, :cond_3

    iget-object v9, v8, Lorg/telegram/ui/Components/TableLayout$LayoutParams;->rowSpec:Lorg/telegram/ui/Components/TableLayout$Spec;

    goto :goto_4

    :cond_3
    iget-object v9, v8, Lorg/telegram/ui/Components/TableLayout$LayoutParams;->columnSpec:Lorg/telegram/ui/Components/TableLayout$Spec;

    :goto_4
    iget-object v10, v9, Lorg/telegram/ui/Components/TableLayout$Spec;->span:Lorg/telegram/ui/Components/TableLayout$Interval;

    iget-boolean v9, v9, Lorg/telegram/ui/Components/TableLayout$Spec;->startDefined:Z

    invoke-virtual {v10}, Lorg/telegram/ui/Components/TableLayout$Interval;->size()I

    move-result v11

    if-eqz v9, :cond_4

    iget v6, v10, Lorg/telegram/ui/Components/TableLayout$Interval;->min:I

    :cond_4
    if-eqz v0, :cond_5

    iget-object v10, v8, Lorg/telegram/ui/Components/TableLayout$LayoutParams;->columnSpec:Lorg/telegram/ui/Components/TableLayout$Spec;

    goto :goto_5

    :cond_5
    iget-object v10, v8, Lorg/telegram/ui/Components/TableLayout$LayoutParams;->rowSpec:Lorg/telegram/ui/Components/TableLayout$Spec;

    :goto_5
    iget-object v12, v10, Lorg/telegram/ui/Components/TableLayout$Spec;->span:Lorg/telegram/ui/Components/TableLayout$Interval;

    iget-boolean v10, v10, Lorg/telegram/ui/Components/TableLayout$Spec;->startDefined:Z

    invoke-static {v12, v10, v2}, Lorg/telegram/ui/Components/TableLayout;->clip(Lorg/telegram/ui/Components/TableLayout$Interval;ZI)I

    move-result v13

    if-eqz v10, :cond_6

    iget v7, v12, Lorg/telegram/ui/Components/TableLayout$Interval;->min:I

    :cond_6
    if-eqz v2, :cond_b

    if-eqz v9, :cond_7

    if-nez v10, :cond_a

    :cond_7
    :goto_6
    add-int v9, v7, v13

    invoke-static {v3, v6, v7, v9}, Lorg/telegram/ui/Components/TableLayout;->fits([IIII)Z

    move-result v12

    if-nez v12, :cond_a

    if-eqz v10, :cond_8

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_8
    if-gt v9, v2, :cond_9

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_9
    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x0

    goto :goto_6

    :cond_a
    add-int v9, v7, v13

    add-int v10, v6, v11

    invoke-static {v3, v7, v9, v10}, Lorg/telegram/ui/Components/TableLayout;->procrusteanFill([IIII)V

    :cond_b
    if-eqz v0, :cond_c

    invoke-static {v8, v6, v11, v7, v13}, Lorg/telegram/ui/Components/TableLayout;->setCellGroup(Lorg/telegram/ui/Components/TableLayout$LayoutParams;IIII)V

    goto :goto_7

    :cond_c
    invoke-static {v8, v7, v13, v6, v11}, Lorg/telegram/ui/Components/TableLayout;->setCellGroup(Lorg/telegram/ui/Components/TableLayout$LayoutParams;IIII)V

    :goto_7
    add-int/2addr v7, v13

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_d
    return-void
.end method


# virtual methods
.method public addChild(IIII)V
    .locals 18

    .line 0
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    new-instance v3, Lorg/telegram/ui/Components/TableLayout$Child;

    iget-object v4, v0, Lorg/telegram/ui/Components/TableLayout;->childrens:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {v3, v0, v4}, Lorg/telegram/ui/Components/TableLayout$Child;-><init>(Lorg/telegram/ui/Components/TableLayout;I)V

    new-instance v4, Lorg/telegram/ui/Components/TableLayout$LayoutParams;

    invoke-direct {v4}, Lorg/telegram/ui/Components/TableLayout$LayoutParams;-><init>()V

    new-instance v11, Lorg/telegram/ui/Components/TableLayout$Spec;

    new-instance v7, Lorg/telegram/ui/Components/TableLayout$Interval;

    add-int v5, v2, p4

    invoke-direct {v7, v2, v5}, Lorg/telegram/ui/Components/TableLayout$Interval;-><init>(II)V

    sget-object v15, Lorg/telegram/ui/Components/TableLayout;->FILL:Lorg/telegram/ui/Components/TableLayout$Alignment;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v6, 0x0

    move-object v5, v11

    move-object v8, v15

    invoke-direct/range {v5 .. v10}, Lorg/telegram/ui/Components/TableLayout$Spec;-><init>(ZLorg/telegram/ui/Components/TableLayout$Interval;Lorg/telegram/ui/Components/TableLayout$Alignment;FLorg/telegram/ui/Components/TableLayout$1;)V

    iput-object v11, v4, Lorg/telegram/ui/Components/TableLayout$LayoutParams;->rowSpec:Lorg/telegram/ui/Components/TableLayout$Spec;

    new-instance v5, Lorg/telegram/ui/Components/TableLayout$Spec;

    new-instance v14, Lorg/telegram/ui/Components/TableLayout$Interval;

    add-int v6, v1, p3

    invoke-direct {v14, v1, v6}, Lorg/telegram/ui/Components/TableLayout$Interval;-><init>(II)V

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v13, 0x0

    move-object v12, v5

    invoke-direct/range {v12 .. v17}, Lorg/telegram/ui/Components/TableLayout$Spec;-><init>(ZLorg/telegram/ui/Components/TableLayout$Interval;Lorg/telegram/ui/Components/TableLayout$Alignment;FLorg/telegram/ui/Components/TableLayout$1;)V

    iput-object v5, v4, Lorg/telegram/ui/Components/TableLayout$LayoutParams;->columnSpec:Lorg/telegram/ui/Components/TableLayout$Spec;

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/TableLayout$Child;->access$1102(Lorg/telegram/ui/Components/TableLayout$Child;Lorg/telegram/ui/Components/TableLayout$LayoutParams;)Lorg/telegram/ui/Components/TableLayout$LayoutParams;

    iput v2, v3, Lorg/telegram/ui/Components/TableLayout$Child;->rowspan:I

    iget-object v1, v0, Lorg/telegram/ui/Components/TableLayout;->childrens:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/TableLayout;->invalidateStructure()V

    return-void
.end method

.method public addChild(Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;III)V
    .locals 21

    .line 0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    const/4 v4, 0x1

    if-nez p4, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    move/from16 v5, p4

    :goto_0
    new-instance v6, Lorg/telegram/ui/Components/TableLayout$Child;

    iget-object v7, v0, Lorg/telegram/ui/Components/TableLayout;->childrens:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-direct {v6, v0, v7}, Lorg/telegram/ui/Components/TableLayout$Child;-><init>(Lorg/telegram/ui/Components/TableLayout;I)V

    invoke-static {v6, v1}, Lorg/telegram/ui/Components/TableLayout$Child;->access$1202(Lorg/telegram/ui/Components/TableLayout$Child;Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;)Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;

    new-instance v7, Lorg/telegram/ui/Components/TableLayout$LayoutParams;

    invoke-direct {v7}, Lorg/telegram/ui/Components/TableLayout$LayoutParams;-><init>()V

    new-instance v14, Lorg/telegram/ui/Components/TableLayout$Spec;

    new-instance v10, Lorg/telegram/ui/Components/TableLayout$Interval;

    iget v8, v1, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;->rowspan:I

    if-eqz v8, :cond_1

    goto :goto_1

    :cond_1
    const/4 v8, 0x1

    :goto_1
    add-int/2addr v8, v3

    invoke-direct {v10, v3, v8}, Lorg/telegram/ui/Components/TableLayout$Interval;-><init>(II)V

    sget-object v18, Lorg/telegram/ui/Components/TableLayout;->FILL:Lorg/telegram/ui/Components/TableLayout$Alignment;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v9, 0x0

    move-object v8, v14

    move-object/from16 v11, v18

    invoke-direct/range {v8 .. v13}, Lorg/telegram/ui/Components/TableLayout$Spec;-><init>(ZLorg/telegram/ui/Components/TableLayout$Interval;Lorg/telegram/ui/Components/TableLayout$Alignment;FLorg/telegram/ui/Components/TableLayout$1;)V

    iput-object v14, v7, Lorg/telegram/ui/Components/TableLayout$LayoutParams;->rowSpec:Lorg/telegram/ui/Components/TableLayout$Spec;

    new-instance v8, Lorg/telegram/ui/Components/TableLayout$Spec;

    new-instance v9, Lorg/telegram/ui/Components/TableLayout$Interval;

    add-int/2addr v5, v2

    invoke-direct {v9, v2, v5}, Lorg/telegram/ui/Components/TableLayout$Interval;-><init>(II)V

    const/high16 v19, 0x3f800000    # 1.0f

    const/16 v20, 0x0

    const/16 v16, 0x0

    move-object v15, v8

    move-object/from16 v17, v9

    invoke-direct/range {v15 .. v20}, Lorg/telegram/ui/Components/TableLayout$Spec;-><init>(ZLorg/telegram/ui/Components/TableLayout$Interval;Lorg/telegram/ui/Components/TableLayout$Alignment;FLorg/telegram/ui/Components/TableLayout$1;)V

    iput-object v8, v7, Lorg/telegram/ui/Components/TableLayout$LayoutParams;->columnSpec:Lorg/telegram/ui/Components/TableLayout$Spec;

    invoke-static {v6, v7}, Lorg/telegram/ui/Components/TableLayout$Child;->access$1102(Lorg/telegram/ui/Components/TableLayout$Child;Lorg/telegram/ui/Components/TableLayout$LayoutParams;)Lorg/telegram/ui/Components/TableLayout$LayoutParams;

    iput v3, v6, Lorg/telegram/ui/Components/TableLayout$Child;->rowspan:I

    iget-object v2, v0, Lorg/telegram/ui/Components/TableLayout;->childrens:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;->rowspan:I

    if-le v1, v4, :cond_2

    iget-object v2, v0, Lorg/telegram/ui/Components/TableLayout;->rowSpans:Ljava/util/ArrayList;

    new-instance v4, Lorg/telegram/ui/Components/Point;

    int-to-float v5, v3

    add-int/2addr v1, v3

    int-to-float v1, v1

    invoke-direct {v4, v5, v1}, Lorg/telegram/ui/Components/Point;-><init>(FF)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/TableLayout;->invalidateStructure()V

    return-void
.end method

.method public getAlignmentMode()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/TableLayout;->mAlignmentMode:I

    return v0
.end method

.method public getChildAt(I)Lorg/telegram/ui/Components/TableLayout$Child;
    .locals 1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/TableLayout;->childrens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/TableLayout;->childrens:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/TableLayout$Child;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getChildCount()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/TableLayout;->childrens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getColumnCount()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/TableLayout;->mHorizontalAxis:Lorg/telegram/ui/Components/TableLayout$Axis;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/TableLayout$Axis;->getCount()I

    move-result v0

    return v0
.end method

.method getMargin1(Lorg/telegram/ui/Components/TableLayout$Child;ZZ)I
    .locals 3

    invoke-virtual {p1}, Lorg/telegram/ui/Components/TableLayout$Child;->getLayoutParams()Lorg/telegram/ui/Components/TableLayout$LayoutParams;

    move-result-object v0

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_0

    :cond_0
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_0

    :cond_2
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :goto_0
    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_3

    invoke-direct {p0, p1, v0, p2, p3}, Lorg/telegram/ui/Components/TableLayout;->getDefaultMargin(Lorg/telegram/ui/Components/TableLayout$Child;Lorg/telegram/ui/Components/TableLayout$LayoutParams;ZZ)I

    move-result v1

    :cond_3
    return v1
.end method

.method final getMeasurementIncludingMargin(Lorg/telegram/ui/Components/TableLayout$Child;Z)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/TableLayout;->getMeasurement(Lorg/telegram/ui/Components/TableLayout$Child;Z)I

    move-result v0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/TableLayout;->getTotalMargin(Lorg/telegram/ui/Components/TableLayout$Child;Z)I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method public getOrientation()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/TableLayout;->mOrientation:I

    return v0
.end method

.method public getRowCount()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/TableLayout;->mVerticalAxis:Lorg/telegram/ui/Components/TableLayout$Axis;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/TableLayout$Axis;->getCount()I

    move-result v0

    return v0
.end method

.method public getUseDefaultMargins()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/TableLayout;->mUseDefaultMargins:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    invoke-virtual {p0}, Lorg/telegram/ui/Components/TableLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/TableLayout;->getChildAt(I)Lorg/telegram/ui/Components/TableLayout$Child;

    move-result-object v2

    invoke-virtual {v2, p1, p0}, Lorg/telegram/ui/Components/TableLayout$Child;->draw(Landroid/graphics/Canvas;Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/TableLayout;->consistencyCheck()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 30

    move-object/from16 v6, p0

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/TableLayout;->consistencyCheck()V

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/TableLayout;->invalidateValues()V

    const/4 v7, 0x0

    iput v7, v6, Lorg/telegram/ui/Components/TableLayout;->colCount:I

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/TableLayout;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-virtual {v6, v3}, Lorg/telegram/ui/Components/TableLayout;->getChildAt(I)Lorg/telegram/ui/Components/TableLayout$Child;

    move-result-object v4

    iget v5, v6, Lorg/telegram/ui/Components/TableLayout;->colCount:I

    invoke-static {v4}, Lorg/telegram/ui/Components/TableLayout$Child;->access$1100(Lorg/telegram/ui/Components/TableLayout$Child;)Lorg/telegram/ui/Components/TableLayout$LayoutParams;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/ui/Components/TableLayout$LayoutParams;->columnSpec:Lorg/telegram/ui/Components/TableLayout$Spec;

    iget-object v4, v4, Lorg/telegram/ui/Components/TableLayout$Spec;->span:Lorg/telegram/ui/Components/TableLayout$Interval;

    iget v4, v4, Lorg/telegram/ui/Components/TableLayout$Interval;->max:I

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v6, Lorg/telegram/ui/Components/TableLayout;->colCount:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v8, 0x1

    invoke-direct {v6, v0, v1, v8}, Lorg/telegram/ui/Components/TableLayout;->measureChildrenWithMargins(IIZ)V

    iget v2, v6, Lorg/telegram/ui/Components/TableLayout;->mOrientation:I

    if-nez v2, :cond_1

    iget-object v2, v6, Lorg/telegram/ui/Components/TableLayout;->mHorizontalAxis:Lorg/telegram/ui/Components/TableLayout$Axis;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/TableLayout$Axis;->getMeasure(I)I

    move-result v2

    invoke-direct {v6, v0, v1, v7}, Lorg/telegram/ui/Components/TableLayout;->measureChildrenWithMargins(IIZ)V

    iget-object v3, v6, Lorg/telegram/ui/Components/TableLayout;->mVerticalAxis:Lorg/telegram/ui/Components/TableLayout$Axis;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/TableLayout$Axis;->getMeasure(I)I

    move-result v1

    goto :goto_1

    :cond_1
    iget-object v2, v6, Lorg/telegram/ui/Components/TableLayout;->mVerticalAxis:Lorg/telegram/ui/Components/TableLayout$Axis;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/TableLayout$Axis;->getMeasure(I)I

    move-result v2

    invoke-direct {v6, v0, v1, v7}, Lorg/telegram/ui/Components/TableLayout;->measureChildrenWithMargins(IIZ)V

    iget-object v1, v6, Lorg/telegram/ui/Components/TableLayout;->mHorizontalAxis:Lorg/telegram/ui/Components/TableLayout$Axis;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/TableLayout$Axis;->getMeasure(I)I

    move-result v1

    move/from16 v29, v2

    move v2, v1

    move/from16 v1, v29

    :goto_1
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-virtual {v6, v0, v9}, Landroid/view/View;->setMeasuredDimension(II)V

    iget-object v1, v6, Lorg/telegram/ui/Components/TableLayout;->mHorizontalAxis:Lorg/telegram/ui/Components/TableLayout$Axis;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/TableLayout$Axis;->layout(I)V

    iget-object v0, v6, Lorg/telegram/ui/Components/TableLayout;->mVerticalAxis:Lorg/telegram/ui/Components/TableLayout$Axis;

    invoke-virtual {v0, v9}, Lorg/telegram/ui/Components/TableLayout$Axis;->layout(I)V

    iget-object v0, v6, Lorg/telegram/ui/Components/TableLayout;->mHorizontalAxis:Lorg/telegram/ui/Components/TableLayout$Axis;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/TableLayout$Axis;->getLocations()[I

    move-result-object v10

    iget-object v0, v6, Lorg/telegram/ui/Components/TableLayout;->mVerticalAxis:Lorg/telegram/ui/Components/TableLayout$Axis;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/TableLayout$Axis;->getLocations()[I

    move-result-object v11

    iget-object v0, v6, Lorg/telegram/ui/Components/TableLayout;->cellsToFixHeight:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    array-length v0, v10

    sub-int/2addr v0, v8

    aget v12, v10, v0

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/TableLayout;->getChildCount()I

    move-result v13

    const/4 v14, 0x0

    :goto_2
    if-ge v14, v13, :cond_8

    invoke-virtual {v6, v14}, Lorg/telegram/ui/Components/TableLayout;->getChildAt(I)Lorg/telegram/ui/Components/TableLayout$Child;

    move-result-object v15

    invoke-virtual {v15}, Lorg/telegram/ui/Components/TableLayout$Child;->getLayoutParams()Lorg/telegram/ui/Components/TableLayout$LayoutParams;

    move-result-object v0

    iget-object v1, v0, Lorg/telegram/ui/Components/TableLayout$LayoutParams;->columnSpec:Lorg/telegram/ui/Components/TableLayout$Spec;

    iget-object v0, v0, Lorg/telegram/ui/Components/TableLayout$LayoutParams;->rowSpec:Lorg/telegram/ui/Components/TableLayout$Spec;

    iget-object v2, v1, Lorg/telegram/ui/Components/TableLayout$Spec;->span:Lorg/telegram/ui/Components/TableLayout$Interval;

    iget-object v3, v0, Lorg/telegram/ui/Components/TableLayout$Spec;->span:Lorg/telegram/ui/Components/TableLayout$Interval;

    iget v4, v2, Lorg/telegram/ui/Components/TableLayout$Interval;->min:I

    aget v16, v10, v4

    iget v4, v3, Lorg/telegram/ui/Components/TableLayout$Interval;->min:I

    aget v17, v11, v4

    iget v2, v2, Lorg/telegram/ui/Components/TableLayout$Interval;->max:I

    aget v2, v10, v2

    iget v3, v3, Lorg/telegram/ui/Components/TableLayout$Interval;->max:I

    aget v3, v11, v3

    sub-int v18, v2, v16

    sub-int v19, v3, v17

    invoke-direct {v6, v15, v8}, Lorg/telegram/ui/Components/TableLayout;->getMeasurement(Lorg/telegram/ui/Components/TableLayout$Child;Z)I

    move-result v5

    invoke-direct {v6, v15, v7}, Lorg/telegram/ui/Components/TableLayout;->getMeasurement(Lorg/telegram/ui/Components/TableLayout$Child;Z)I

    move-result v4

    invoke-static {v1, v8}, Lorg/telegram/ui/Components/TableLayout$Spec;->access$1300(Lorg/telegram/ui/Components/TableLayout$Spec;Z)Lorg/telegram/ui/Components/TableLayout$Alignment;

    move-result-object v3

    invoke-static {v0, v7}, Lorg/telegram/ui/Components/TableLayout$Spec;->access$1300(Lorg/telegram/ui/Components/TableLayout$Spec;Z)Lorg/telegram/ui/Components/TableLayout$Alignment;

    move-result-object v2

    iget-object v0, v6, Lorg/telegram/ui/Components/TableLayout;->mHorizontalAxis:Lorg/telegram/ui/Components/TableLayout$Axis;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/TableLayout$Axis;->getGroupBounds()Lorg/telegram/ui/Components/TableLayout$PackedMap;

    move-result-object v0

    invoke-virtual {v0, v14}, Lorg/telegram/ui/Components/TableLayout$PackedMap;->getValue(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/TableLayout$Bounds;

    iget-object v1, v6, Lorg/telegram/ui/Components/TableLayout;->mVerticalAxis:Lorg/telegram/ui/Components/TableLayout$Axis;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/TableLayout$Axis;->getGroupBounds()Lorg/telegram/ui/Components/TableLayout$PackedMap;

    move-result-object v1

    invoke-virtual {v1, v14}, Lorg/telegram/ui/Components/TableLayout$PackedMap;->getValue(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/TableLayout$Bounds;

    invoke-virtual {v0, v8}, Lorg/telegram/ui/Components/TableLayout$Bounds;->size(Z)I

    move-result v20

    sub-int v7, v18, v20

    invoke-virtual {v3, v15, v7}, Lorg/telegram/ui/Components/TableLayout$Alignment;->getGravityOffset(Lorg/telegram/ui/Components/TableLayout$Child;I)I

    move-result v7

    invoke-virtual {v1, v8}, Lorg/telegram/ui/Components/TableLayout$Bounds;->size(Z)I

    move-result v20

    move-object/from16 p1, v1

    sub-int v1, v19, v20

    invoke-virtual {v2, v15, v1}, Lorg/telegram/ui/Components/TableLayout$Alignment;->getGravityOffset(Lorg/telegram/ui/Components/TableLayout$Child;I)I

    move-result v20

    invoke-direct {v6, v15, v8, v8}, Lorg/telegram/ui/Components/TableLayout;->getMargin(Lorg/telegram/ui/Components/TableLayout$Child;ZZ)I

    move-result v21

    const/4 v1, 0x0

    invoke-direct {v6, v15, v1, v8}, Lorg/telegram/ui/Components/TableLayout;->getMargin(Lorg/telegram/ui/Components/TableLayout$Child;ZZ)I

    move-result v22

    invoke-direct {v6, v15, v8, v1}, Lorg/telegram/ui/Components/TableLayout;->getMargin(Lorg/telegram/ui/Components/TableLayout$Child;ZZ)I

    move-result v23

    invoke-direct {v6, v15, v1, v1}, Lorg/telegram/ui/Components/TableLayout;->getMargin(Lorg/telegram/ui/Components/TableLayout$Child;ZZ)I

    move-result v24

    add-int v25, v21, v23

    add-int v24, v22, v24

    add-int v26, v5, v25

    const/16 v27, 0x1

    move-object/from16 v28, p1

    move-object/from16 v1, p0

    move-object/from16 p1, v2

    move-object v2, v15

    move-object/from16 p2, v3

    move v8, v4

    move/from16 v4, v26

    move/from16 v26, v9

    move v9, v5

    move/from16 v5, v27

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/TableLayout$Bounds;->getOffset(Lorg/telegram/ui/Components/TableLayout;Lorg/telegram/ui/Components/TableLayout$Child;Lorg/telegram/ui/Components/TableLayout$Alignment;IZ)I

    move-result v27

    add-int v4, v8, v24

    const/4 v5, 0x0

    move-object/from16 v0, v28

    move-object/from16 v3, p1

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/TableLayout$Bounds;->getOffset(Lorg/telegram/ui/Components/TableLayout;Lorg/telegram/ui/Components/TableLayout$Child;Lorg/telegram/ui/Components/TableLayout$Alignment;IZ)I

    move-result v0

    sub-int v1, v18, v25

    move-object/from16 v2, p2

    invoke-virtual {v2, v15, v9, v1}, Lorg/telegram/ui/Components/TableLayout$Alignment;->getSizeInCell(Lorg/telegram/ui/Components/TableLayout$Child;II)I

    move-result v1

    sub-int v2, v19, v24

    invoke-virtual {v3, v15, v8, v2}, Lorg/telegram/ui/Components/TableLayout$Alignment;->getSizeInCell(Lorg/telegram/ui/Components/TableLayout$Child;II)I

    move-result v2

    add-int v16, v16, v7

    add-int v16, v16, v27

    iget-boolean v3, v6, Lorg/telegram/ui/Components/TableLayout;->isRtl:Z

    if-nez v3, :cond_2

    add-int v21, v21, v16

    :goto_3
    move/from16 v3, v21

    goto :goto_4

    :cond_2
    sub-int v3, v12, v1

    sub-int v3, v3, v23

    sub-int v21, v3, v16

    goto :goto_3

    :goto_4
    add-int v17, v17, v20

    add-int v17, v17, v0

    add-int v0, v17, v22

    invoke-static {v15}, Lorg/telegram/ui/Components/TableLayout$Child;->access$1200(Lorg/telegram/ui/Components/TableLayout$Child;)Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {v15}, Lorg/telegram/ui/Components/TableLayout$Child;->getMeasuredWidth()I

    move-result v4

    if-ne v1, v4, :cond_3

    invoke-virtual {v15}, Lorg/telegram/ui/Components/TableLayout$Child;->getMeasuredHeight()I

    move-result v4

    if-eq v2, v4, :cond_4

    :cond_3
    const/4 v4, 0x0

    goto :goto_5

    :cond_4
    const/4 v4, 0x0

    goto :goto_6

    :goto_5
    invoke-virtual {v15, v1, v2, v4}, Lorg/telegram/ui/Components/TableLayout$Child;->measure(IIZ)V

    :goto_6
    invoke-static {v15}, Lorg/telegram/ui/Components/TableLayout$Child;->access$1400(Lorg/telegram/ui/Components/TableLayout$Child;)I

    move-result v5

    if-eqz v5, :cond_7

    invoke-static {v15}, Lorg/telegram/ui/Components/TableLayout$Child;->access$1400(Lorg/telegram/ui/Components/TableLayout$Child;)I

    move-result v5

    if-eq v5, v2, :cond_7

    invoke-static {v15}, Lorg/telegram/ui/Components/TableLayout$Child;->access$1100(Lorg/telegram/ui/Components/TableLayout$Child;)Lorg/telegram/ui/Components/TableLayout$LayoutParams;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/ui/Components/TableLayout$LayoutParams;->rowSpec:Lorg/telegram/ui/Components/TableLayout$Spec;

    iget-object v5, v5, Lorg/telegram/ui/Components/TableLayout$Spec;->span:Lorg/telegram/ui/Components/TableLayout$Interval;

    iget v5, v5, Lorg/telegram/ui/Components/TableLayout$Interval;->max:I

    invoke-static {v15}, Lorg/telegram/ui/Components/TableLayout$Child;->access$1100(Lorg/telegram/ui/Components/TableLayout$Child;)Lorg/telegram/ui/Components/TableLayout$LayoutParams;

    move-result-object v7

    iget-object v7, v7, Lorg/telegram/ui/Components/TableLayout$LayoutParams;->rowSpec:Lorg/telegram/ui/Components/TableLayout$Spec;

    iget-object v7, v7, Lorg/telegram/ui/Components/TableLayout$Spec;->span:Lorg/telegram/ui/Components/TableLayout$Interval;

    iget v7, v7, Lorg/telegram/ui/Components/TableLayout$Interval;->min:I

    sub-int/2addr v5, v7

    const/4 v7, 0x1

    if-gt v5, v7, :cond_7

    iget-object v5, v6, Lorg/telegram/ui/Components/TableLayout;->rowSpans:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v7, 0x0

    :goto_7
    if-ge v7, v5, :cond_6

    iget-object v8, v6, Lorg/telegram/ui/Components/TableLayout;->rowSpans:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/ui/Components/Point;

    iget v9, v8, Lorg/telegram/ui/Components/Point;->x:F

    invoke-static {v15}, Lorg/telegram/ui/Components/TableLayout$Child;->access$1100(Lorg/telegram/ui/Components/TableLayout$Child;)Lorg/telegram/ui/Components/TableLayout$LayoutParams;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/ui/Components/TableLayout$LayoutParams;->rowSpec:Lorg/telegram/ui/Components/TableLayout$Spec;

    iget-object v4, v4, Lorg/telegram/ui/Components/TableLayout$Spec;->span:Lorg/telegram/ui/Components/TableLayout$Interval;

    iget v4, v4, Lorg/telegram/ui/Components/TableLayout$Interval;->min:I

    int-to-float v4, v4

    cmpg-float v4, v9, v4

    if-gtz v4, :cond_5

    iget v4, v8, Lorg/telegram/ui/Components/Point;->y:F

    invoke-static {v15}, Lorg/telegram/ui/Components/TableLayout$Child;->access$1100(Lorg/telegram/ui/Components/TableLayout$Child;)Lorg/telegram/ui/Components/TableLayout$LayoutParams;

    move-result-object v8

    iget-object v8, v8, Lorg/telegram/ui/Components/TableLayout$LayoutParams;->rowSpec:Lorg/telegram/ui/Components/TableLayout$Spec;

    iget-object v8, v8, Lorg/telegram/ui/Components/TableLayout$Spec;->span:Lorg/telegram/ui/Components/TableLayout$Interval;

    iget v8, v8, Lorg/telegram/ui/Components/TableLayout$Interval;->min:I

    int-to-float v8, v8

    cmpl-float v4, v4, v8

    if-lez v4, :cond_5

    goto :goto_8

    :cond_5
    add-int/lit8 v7, v7, 0x1

    const/4 v4, 0x0

    goto :goto_7

    :cond_6
    iget-object v4, v6, Lorg/telegram/ui/Components/TableLayout;->cellsToFixHeight:Ljava/util/ArrayList;

    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_8
    add-int/2addr v1, v3

    add-int/2addr v2, v0

    invoke-virtual {v15, v3, v0, v1, v2}, Lorg/telegram/ui/Components/TableLayout$Child;->layout(IIII)V

    add-int/lit8 v14, v14, 0x1

    move/from16 v9, v26

    const/4 v7, 0x0

    const/4 v8, 0x1

    goto/16 :goto_2

    :cond_8
    move/from16 v26, v9

    iget-object v0, v6, Lorg/telegram/ui/Components/TableLayout;->cellsToFixHeight:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_16

    iget-object v2, v6, Lorg/telegram/ui/Components/TableLayout;->cellsToFixHeight:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/TableLayout$Child;

    invoke-static {v2}, Lorg/telegram/ui/Components/TableLayout$Child;->access$1500(Lorg/telegram/ui/Components/TableLayout$Child;)I

    move-result v3

    invoke-static {v2}, Lorg/telegram/ui/Components/TableLayout$Child;->access$1400(Lorg/telegram/ui/Components/TableLayout$Child;)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v2}, Lorg/telegram/ui/Components/TableLayout$Child;->access$1600(Lorg/telegram/ui/Components/TableLayout$Child;)I

    move-result v4

    const/4 v5, 0x1

    add-int/2addr v4, v5

    iget-object v5, v6, Lorg/telegram/ui/Components/TableLayout;->childrens:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    :goto_a
    if-ge v4, v5, :cond_b

    iget-object v7, v6, Lorg/telegram/ui/Components/TableLayout;->childrens:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/ui/Components/TableLayout$Child;

    invoke-static {v2}, Lorg/telegram/ui/Components/TableLayout$Child;->access$1100(Lorg/telegram/ui/Components/TableLayout$Child;)Lorg/telegram/ui/Components/TableLayout$LayoutParams;

    move-result-object v8

    iget-object v8, v8, Lorg/telegram/ui/Components/TableLayout$LayoutParams;->rowSpec:Lorg/telegram/ui/Components/TableLayout$Spec;

    iget-object v8, v8, Lorg/telegram/ui/Components/TableLayout$Spec;->span:Lorg/telegram/ui/Components/TableLayout$Interval;

    iget v8, v8, Lorg/telegram/ui/Components/TableLayout$Interval;->min:I

    invoke-static {v7}, Lorg/telegram/ui/Components/TableLayout$Child;->access$1100(Lorg/telegram/ui/Components/TableLayout$Child;)Lorg/telegram/ui/Components/TableLayout$LayoutParams;

    move-result-object v10

    iget-object v10, v10, Lorg/telegram/ui/Components/TableLayout$LayoutParams;->rowSpec:Lorg/telegram/ui/Components/TableLayout$Spec;

    iget-object v10, v10, Lorg/telegram/ui/Components/TableLayout$Spec;->span:Lorg/telegram/ui/Components/TableLayout$Interval;

    iget v10, v10, Lorg/telegram/ui/Components/TableLayout$Interval;->min:I

    if-ne v8, v10, :cond_b

    invoke-static {v2}, Lorg/telegram/ui/Components/TableLayout$Child;->access$1400(Lorg/telegram/ui/Components/TableLayout$Child;)I

    move-result v8

    invoke-static {v7}, Lorg/telegram/ui/Components/TableLayout$Child;->access$1400(Lorg/telegram/ui/Components/TableLayout$Child;)I

    move-result v10

    if-ge v8, v10, :cond_9

    const/4 v4, 0x1

    goto :goto_b

    :cond_9
    invoke-static {v7}, Lorg/telegram/ui/Components/TableLayout$Child;->access$1500(Lorg/telegram/ui/Components/TableLayout$Child;)I

    move-result v8

    invoke-static {v7}, Lorg/telegram/ui/Components/TableLayout$Child;->access$1400(Lorg/telegram/ui/Components/TableLayout$Child;)I

    move-result v7

    sub-int/2addr v8, v7

    if-lez v8, :cond_a

    invoke-static {v3, v8}, Ljava/lang/Math;->min(II)I

    move-result v3

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_b
    const/4 v4, 0x0

    :goto_b
    if-nez v4, :cond_e

    invoke-static {v2}, Lorg/telegram/ui/Components/TableLayout$Child;->access$1600(Lorg/telegram/ui/Components/TableLayout$Child;)I

    move-result v5

    const/4 v7, 0x1

    sub-int/2addr v5, v7

    :goto_c
    if-ltz v5, :cond_e

    iget-object v7, v6, Lorg/telegram/ui/Components/TableLayout;->childrens:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/ui/Components/TableLayout$Child;

    invoke-static {v2}, Lorg/telegram/ui/Components/TableLayout$Child;->access$1100(Lorg/telegram/ui/Components/TableLayout$Child;)Lorg/telegram/ui/Components/TableLayout$LayoutParams;

    move-result-object v8

    iget-object v8, v8, Lorg/telegram/ui/Components/TableLayout$LayoutParams;->rowSpec:Lorg/telegram/ui/Components/TableLayout$Spec;

    iget-object v8, v8, Lorg/telegram/ui/Components/TableLayout$Spec;->span:Lorg/telegram/ui/Components/TableLayout$Interval;

    iget v8, v8, Lorg/telegram/ui/Components/TableLayout$Interval;->min:I

    invoke-static {v7}, Lorg/telegram/ui/Components/TableLayout$Child;->access$1100(Lorg/telegram/ui/Components/TableLayout$Child;)Lorg/telegram/ui/Components/TableLayout$LayoutParams;

    move-result-object v10

    iget-object v10, v10, Lorg/telegram/ui/Components/TableLayout$LayoutParams;->rowSpec:Lorg/telegram/ui/Components/TableLayout$Spec;

    iget-object v10, v10, Lorg/telegram/ui/Components/TableLayout$Spec;->span:Lorg/telegram/ui/Components/TableLayout$Interval;

    iget v10, v10, Lorg/telegram/ui/Components/TableLayout$Interval;->min:I

    if-ne v8, v10, :cond_e

    invoke-static {v2}, Lorg/telegram/ui/Components/TableLayout$Child;->access$1400(Lorg/telegram/ui/Components/TableLayout$Child;)I

    move-result v8

    invoke-static {v7}, Lorg/telegram/ui/Components/TableLayout$Child;->access$1400(Lorg/telegram/ui/Components/TableLayout$Child;)I

    move-result v10

    if-ge v8, v10, :cond_c

    const/4 v4, 0x1

    goto :goto_d

    :cond_c
    invoke-static {v7}, Lorg/telegram/ui/Components/TableLayout$Child;->access$1500(Lorg/telegram/ui/Components/TableLayout$Child;)I

    move-result v8

    invoke-static {v7}, Lorg/telegram/ui/Components/TableLayout$Child;->access$1400(Lorg/telegram/ui/Components/TableLayout$Child;)I

    move-result v7

    sub-int/2addr v8, v7

    if-lez v8, :cond_d

    invoke-static {v3, v8}, Ljava/lang/Math;->min(II)I

    move-result v3

    :cond_d
    add-int/lit8 v5, v5, -0x1

    goto :goto_c

    :cond_e
    :goto_d
    if-eqz v4, :cond_f

    :goto_e
    const/4 v2, 0x1

    goto/16 :goto_11

    :cond_f
    invoke-static {v2}, Lorg/telegram/ui/Components/TableLayout$Child;->access$1400(Lorg/telegram/ui/Components/TableLayout$Child;)I

    move-result v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/TableLayout$Child;->setFixedHeight(I)V

    sub-int/2addr v9, v3

    iget-object v4, v6, Lorg/telegram/ui/Components/TableLayout;->childrens:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, v1

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v4, :cond_15

    iget-object v7, v6, Lorg/telegram/ui/Components/TableLayout;->childrens:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/ui/Components/TableLayout$Child;

    if-ne v2, v7, :cond_10

    goto :goto_10

    :cond_10
    invoke-static {v2}, Lorg/telegram/ui/Components/TableLayout$Child;->access$1100(Lorg/telegram/ui/Components/TableLayout$Child;)Lorg/telegram/ui/Components/TableLayout$LayoutParams;

    move-result-object v8

    iget-object v8, v8, Lorg/telegram/ui/Components/TableLayout$LayoutParams;->rowSpec:Lorg/telegram/ui/Components/TableLayout$Spec;

    iget-object v8, v8, Lorg/telegram/ui/Components/TableLayout$Spec;->span:Lorg/telegram/ui/Components/TableLayout$Interval;

    iget v8, v8, Lorg/telegram/ui/Components/TableLayout$Interval;->min:I

    invoke-static {v7}, Lorg/telegram/ui/Components/TableLayout$Child;->access$1100(Lorg/telegram/ui/Components/TableLayout$Child;)Lorg/telegram/ui/Components/TableLayout$LayoutParams;

    move-result-object v10

    iget-object v10, v10, Lorg/telegram/ui/Components/TableLayout$LayoutParams;->rowSpec:Lorg/telegram/ui/Components/TableLayout$Spec;

    iget-object v10, v10, Lorg/telegram/ui/Components/TableLayout$Spec;->span:Lorg/telegram/ui/Components/TableLayout$Interval;

    iget v10, v10, Lorg/telegram/ui/Components/TableLayout$Interval;->min:I

    if-ne v8, v10, :cond_13

    invoke-static {v7}, Lorg/telegram/ui/Components/TableLayout$Child;->access$1400(Lorg/telegram/ui/Components/TableLayout$Child;)I

    move-result v8

    invoke-static {v7}, Lorg/telegram/ui/Components/TableLayout$Child;->access$1500(Lorg/telegram/ui/Components/TableLayout$Child;)I

    move-result v10

    if-eq v8, v10, :cond_12

    iget-object v8, v6, Lorg/telegram/ui/Components/TableLayout;->cellsToFixHeight:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-static {v7}, Lorg/telegram/ui/Components/TableLayout$Child;->access$1600(Lorg/telegram/ui/Components/TableLayout$Child;)I

    move-result v8

    invoke-static {v2}, Lorg/telegram/ui/Components/TableLayout$Child;->access$1600(Lorg/telegram/ui/Components/TableLayout$Child;)I

    move-result v10

    if-ge v8, v10, :cond_11

    add-int/lit8 v5, v5, -0x1

    :cond_11
    add-int/lit8 v0, v0, -0x1

    :cond_12
    invoke-static {v7, v3}, Lorg/telegram/ui/Components/TableLayout$Child;->access$1520(Lorg/telegram/ui/Components/TableLayout$Child;I)I

    invoke-static {v7}, Lorg/telegram/ui/Components/TableLayout$Child;->access$1700(Lorg/telegram/ui/Components/TableLayout$Child;)I

    move-result v8

    invoke-static {v7}, Lorg/telegram/ui/Components/TableLayout$Child;->access$1500(Lorg/telegram/ui/Components/TableLayout$Child;)I

    move-result v10

    const/4 v11, 0x1

    invoke-virtual {v7, v8, v10, v11}, Lorg/telegram/ui/Components/TableLayout$Child;->measure(IIZ)V

    goto :goto_10

    :cond_13
    invoke-static {v2}, Lorg/telegram/ui/Components/TableLayout$Child;->access$1100(Lorg/telegram/ui/Components/TableLayout$Child;)Lorg/telegram/ui/Components/TableLayout$LayoutParams;

    move-result-object v8

    iget-object v8, v8, Lorg/telegram/ui/Components/TableLayout$LayoutParams;->rowSpec:Lorg/telegram/ui/Components/TableLayout$Spec;

    iget-object v8, v8, Lorg/telegram/ui/Components/TableLayout$Spec;->span:Lorg/telegram/ui/Components/TableLayout$Interval;

    iget v8, v8, Lorg/telegram/ui/Components/TableLayout$Interval;->min:I

    invoke-static {v7}, Lorg/telegram/ui/Components/TableLayout$Child;->access$1100(Lorg/telegram/ui/Components/TableLayout$Child;)Lorg/telegram/ui/Components/TableLayout$LayoutParams;

    move-result-object v10

    iget-object v10, v10, Lorg/telegram/ui/Components/TableLayout$LayoutParams;->rowSpec:Lorg/telegram/ui/Components/TableLayout$Spec;

    iget-object v10, v10, Lorg/telegram/ui/Components/TableLayout$Spec;->span:Lorg/telegram/ui/Components/TableLayout$Interval;

    iget v10, v10, Lorg/telegram/ui/Components/TableLayout$Interval;->min:I

    if-ge v8, v10, :cond_14

    iget v8, v7, Lorg/telegram/ui/Components/TableLayout$Child;->y:I

    sub-int/2addr v8, v3

    iput v8, v7, Lorg/telegram/ui/Components/TableLayout$Child;->y:I

    :cond_14
    :goto_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_15
    move v1, v5

    goto/16 :goto_e

    :goto_11
    add-int/2addr v1, v2

    goto/16 :goto_9

    :cond_16
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/TableLayout;->getChildCount()I

    move-result v0

    const/4 v7, 0x0

    :goto_12
    if-ge v7, v0, :cond_17

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/TableLayout;->getChildAt(I)Lorg/telegram/ui/Components/TableLayout$Child;

    move-result-object v1

    iget-object v2, v6, Lorg/telegram/ui/Components/TableLayout;->delegate:Lorg/telegram/ui/Components/TableLayout$TableLayoutDelegate;

    iget-object v3, v1, Lorg/telegram/ui/Components/TableLayout$Child;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/TableLayout$Child;->getTextX()I

    move-result v4

    invoke-virtual {v1}, Lorg/telegram/ui/Components/TableLayout$Child;->getTextY()I

    move-result v1

    invoke-interface {v2, v3, v4, v1}, Lorg/telegram/ui/Components/TableLayout$TableLayoutDelegate;->onLayoutChild(Lorg/telegram/ui/ArticleViewer$DrawingText;II)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_12

    :cond_17
    invoke-virtual {v6, v12, v9}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public removeAllChildrens()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/TableLayout;->childrens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Components/TableLayout;->rowSpans:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Lorg/telegram/ui/Components/TableLayout;->invalidateStructure()V

    return-void
.end method

.method public requestLayout()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->requestLayout()V

    invoke-direct {p0}, Lorg/telegram/ui/Components/TableLayout;->invalidateValues()V

    return-void
.end method

.method public setAlignmentMode(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/TableLayout;->mAlignmentMode:I

    invoke-virtual {p0}, Lorg/telegram/ui/Components/TableLayout;->requestLayout()V

    return-void
.end method

.method public setColumnCount(I)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/TableLayout;->mHorizontalAxis:Lorg/telegram/ui/Components/TableLayout$Axis;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/TableLayout$Axis;->setCount(I)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/TableLayout;->invalidateStructure()V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/TableLayout;->requestLayout()V

    return-void
.end method

.method public setColumnOrderPreserved(Z)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/TableLayout;->mHorizontalAxis:Lorg/telegram/ui/Components/TableLayout$Axis;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/TableLayout$Axis;->setOrderPreserved(Z)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/TableLayout;->invalidateStructure()V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/TableLayout;->requestLayout()V

    return-void
.end method

.method public setDrawLines(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/TableLayout;->drawLines:Z

    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/TableLayout;->mOrientation:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lorg/telegram/ui/Components/TableLayout;->mOrientation:I

    invoke-direct {p0}, Lorg/telegram/ui/Components/TableLayout;->invalidateStructure()V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/TableLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setRowCount(I)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/TableLayout;->mVerticalAxis:Lorg/telegram/ui/Components/TableLayout$Axis;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/TableLayout$Axis;->setCount(I)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/TableLayout;->invalidateStructure()V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/TableLayout;->requestLayout()V

    return-void
.end method

.method public setRowOrderPreserved(Z)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/TableLayout;->mVerticalAxis:Lorg/telegram/ui/Components/TableLayout$Axis;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/TableLayout$Axis;->setOrderPreserved(Z)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/TableLayout;->invalidateStructure()V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/TableLayout;->requestLayout()V

    return-void
.end method

.method public setRtl(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/TableLayout;->isRtl:Z

    return-void
.end method

.method public setStriped(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/TableLayout;->isStriped:Z

    return-void
.end method

.method public setUseDefaultMargins(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/TableLayout;->mUseDefaultMargins:Z

    invoke-virtual {p0}, Lorg/telegram/ui/Components/TableLayout;->requestLayout()V

    return-void
.end method
