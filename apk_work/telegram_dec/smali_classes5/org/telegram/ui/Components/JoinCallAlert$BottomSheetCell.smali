.class public Lorg/telegram/ui/Components/JoinCallAlert$BottomSheetCell;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/JoinCallAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BottomSheetCell"
.end annotation


# instance fields
.field private background:Landroid/view/View;

.field private hasBackground:Z

.field private text:Ljava/lang/CharSequence;

.field private textView:[Landroid/widget/TextView;

.field final synthetic this$0:Lorg/telegram/ui/Components/JoinCallAlert;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/JoinCallAlert;Landroid/content/Context;Z)V
    .locals 11

    const/4 v0, 0x0

    iput-object p1, p0, Lorg/telegram/ui/Components/JoinCallAlert$BottomSheetCell;->this$0:Lorg/telegram/ui/Components/JoinCallAlert;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x2

    new-array v1, p1, [Landroid/widget/TextView;

    iput-object v1, p0, Lorg/telegram/ui/Components/JoinCallAlert$BottomSheetCell;->textView:[Landroid/widget/TextView;

    const/4 v1, 0x1

    xor-int/lit8 v2, p3, 0x1

    iput-boolean v2, p0, Lorg/telegram/ui/Components/JoinCallAlert$BottomSheetCell;->hasBackground:Z

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v2, Landroid/view/View;

    invoke-direct {v2, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/Components/JoinCallAlert$BottomSheetCell;->background:Landroid/view/View;

    iget-boolean v3, p0, Lorg/telegram/ui/Components/JoinCallAlert$BottomSheetCell;->hasBackground:Z

    if-eqz v3, :cond_0

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    new-array v4, v1, [F

    const/high16 v5, 0x40800000    # 4.0f

    aput v5, v4, v0

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme$AdaptiveRipple;->filledRectByKey(I[F)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/JoinCallAlert$BottomSheetCell;->background:Landroid/view/View;

    const/4 v3, 0x0

    if-eqz p3, :cond_1

    const/4 v8, 0x0

    goto :goto_0

    :cond_1
    const/high16 p3, 0x41800000    # 16.0f

    const/high16 v8, 0x41800000    # 16.0f

    :goto_0
    const/high16 v9, 0x41800000    # 16.0f

    const/high16 v10, 0x41800000    # 16.0f

    const/4 v4, -0x1

    const/high16 v5, -0x40800000    # -1.0f

    const/4 v6, 0x0

    const/high16 v7, 0x41800000    # 16.0f

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p3

    invoke-virtual {p0, v2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p3, 0x0

    :goto_1
    if-ge p3, p1, :cond_5

    iget-object v2, p0, Lorg/telegram/ui/Components/JoinCallAlert$BottomSheetCell;->textView:[Landroid/widget/TextView;

    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    aput-object v4, v2, p3

    iget-object v2, p0, Lorg/telegram/ui/Components/JoinCallAlert$BottomSheetCell;->textView:[Landroid/widget/TextView;

    aget-object v2, v2, p3

    invoke-virtual {v2, v0}, Landroid/view/View;->setFocusable(Z)V

    iget-object v2, p0, Lorg/telegram/ui/Components/JoinCallAlert$BottomSheetCell;->textView:[Landroid/widget/TextView;

    aget-object v2, v2, p3

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLines(I)V

    iget-object v2, p0, Lorg/telegram/ui/Components/JoinCallAlert$BottomSheetCell;->textView:[Landroid/widget/TextView;

    aget-object v2, v2, p3

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v2, p0, Lorg/telegram/ui/Components/JoinCallAlert$BottomSheetCell;->textView:[Landroid/widget/TextView;

    aget-object v2, v2, p3

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v2, p0, Lorg/telegram/ui/Components/JoinCallAlert$BottomSheetCell;->textView:[Landroid/widget/TextView;

    aget-object v2, v2, p3

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v2, p0, Lorg/telegram/ui/Components/JoinCallAlert$BottomSheetCell;->textView:[Landroid/widget/TextView;

    aget-object v2, v2, p3

    const/16 v4, 0x11

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    iget-boolean v2, p0, Lorg/telegram/ui/Components/JoinCallAlert$BottomSheetCell;->hasBackground:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Components/JoinCallAlert$BottomSheetCell;->textView:[Landroid/widget/TextView;

    aget-object v2, v2, p3

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_buttonText:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lorg/telegram/ui/Components/JoinCallAlert$BottomSheetCell;->textView:[Landroid/widget/TextView;

    aget-object v2, v2, p3

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Components/JoinCallAlert$BottomSheetCell;->textView:[Landroid/widget/TextView;

    aget-object v2, v2, p3

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_2
    iget-object v2, p0, Lorg/telegram/ui/Components/JoinCallAlert$BottomSheetCell;->textView:[Landroid/widget/TextView;

    aget-object v2, v2, p3

    invoke-virtual {v2, p1}, Landroid/view/View;->setImportantForAccessibility(I)V

    iget-object v2, p0, Lorg/telegram/ui/Components/JoinCallAlert$BottomSheetCell;->textView:[Landroid/widget/TextView;

    aget-object v2, v2, p3

    const/high16 v4, 0x41600000    # 14.0f

    invoke-virtual {v2, v1, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v2, p0, Lorg/telegram/ui/Components/JoinCallAlert$BottomSheetCell;->textView:[Landroid/widget/TextView;

    aget-object v2, v2, p3

    iget-boolean v4, p0, Lorg/telegram/ui/Components/JoinCallAlert$BottomSheetCell;->hasBackground:Z

    if-eqz v4, :cond_3

    const/4 v4, 0x0

    goto :goto_3

    :cond_3
    const/high16 v4, 0x41500000    # 13.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    :goto_3
    invoke-virtual {v2, v0, v0, v0, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v2, p0, Lorg/telegram/ui/Components/JoinCallAlert$BottomSheetCell;->textView:[Landroid/widget/TextView;

    aget-object v2, v2, p3

    const/high16 v9, 0x41c00000    # 24.0f

    const/4 v10, 0x0

    const/4 v4, -0x2

    const/high16 v5, -0x40000000    # -2.0f

    const/16 v6, 0x11

    const/high16 v7, 0x41c00000    # 24.0f

    const/4 v8, 0x0

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-ne p3, v1, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/Components/JoinCallAlert$BottomSheetCell;->textView:[Landroid/widget/TextView;

    aget-object v2, v2, p3

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    :cond_4
    add-int/2addr p3, v1

    goto/16 :goto_1

    :cond_5
    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/JoinCallAlert$BottomSheetCell;)[Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/JoinCallAlert$BottomSheetCell;->textView:[Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/JoinCallAlert$BottomSheetCell;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/JoinCallAlert$BottomSheetCell;->background:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-string v0, "android.widget.Button"

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    iget-boolean p2, p0, Lorg/telegram/ui/Components/JoinCallAlert$BottomSheetCell;->hasBackground:Z

    if-eqz p2, :cond_0

    const/high16 p2, 0x42a00000    # 80.0f

    goto :goto_0

    :cond_0
    const/high16 p2, 0x42480000    # 50.0f

    :goto_0
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Z)V
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x2

    iput-object p1, p0, Lorg/telegram/ui/Components/JoinCallAlert$BottomSheetCell;->text:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    if-nez p2, :cond_0

    iget-object p2, p0, Lorg/telegram/ui/Components/JoinCallAlert$BottomSheetCell;->textView:[Landroid/widget/TextView;

    aget-object p2, p2, v2

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Components/JoinCallAlert$BottomSheetCell;->textView:[Landroid/widget/TextView;

    aget-object p2, p2, v0

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/JoinCallAlert$BottomSheetCell;->this$0:Lorg/telegram/ui/Components/JoinCallAlert;

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/JoinCallAlert;->access$002(Lorg/telegram/ui/Components/JoinCallAlert;Z)Z

    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v3, 0xb4

    invoke-virtual {p1, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p2, p0, Lorg/telegram/ui/Components/JoinCallAlert$BottomSheetCell;->textView:[Landroid/widget/TextView;

    aget-object p2, p2, v2

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v4, 0x0

    new-array v5, v1, [F

    fill-array-data v5, :array_0

    invoke-static {p2, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    iget-object v5, p0, Lorg/telegram/ui/Components/JoinCallAlert$BottomSheetCell;->textView:[Landroid/widget/TextView;

    aget-object v5, v5, v2

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/high16 v7, 0x41200000    # 10.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    neg-int v8, v8

    int-to-float v8, v8

    new-array v9, v1, [F

    aput v4, v9, v2

    aput v8, v9, v0

    invoke-static {v5, v6, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    iget-object v8, p0, Lorg/telegram/ui/Components/JoinCallAlert$BottomSheetCell;->textView:[Landroid/widget/TextView;

    aget-object v8, v8, v0

    new-array v9, v1, [F

    fill-array-data v9, :array_1

    invoke-static {v8, v3, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v8, p0, Lorg/telegram/ui/Components/JoinCallAlert$BottomSheetCell;->textView:[Landroid/widget/TextView;

    aget-object v8, v8, v0

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    new-array v9, v1, [F

    aput v7, v9, v2

    aput v4, v9, v0

    invoke-static {v8, v6, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const/4 v6, 0x4

    new-array v6, v6, [Landroid/animation/Animator;

    aput-object p2, v6, v2

    aput-object v5, v6, v0

    aput-object v3, v6, v1

    const/4 p2, 0x3

    aput-object v4, v6, p2

    invoke-virtual {p1, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance p2, Lorg/telegram/ui/Components/JoinCallAlert$BottomSheetCell$1;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/JoinCallAlert$BottomSheetCell$1;-><init>(Lorg/telegram/ui/Components/JoinCallAlert$BottomSheetCell;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    :goto_0
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
