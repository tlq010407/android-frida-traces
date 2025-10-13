.class public abstract Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;
.super Lorg/telegram/ui/Components/HintEditText;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText$HintFadeProperty;
    }
.end annotation


# instance fields
.field private animator:Landroid/animation/ObjectAnimator;

.field private hintAnimationCallback:Ljava/lang/Runnable;

.field private hintAnimationValues:Ljava/util/List;

.field private hintAnimations:Ljava/util/List;

.field private hintFadeProperty:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText$HintFadeProperty;

.field private letters:Ljava/util/ArrayList;

.field private oldLetters:Ljava/util/ArrayList;

.field private oldText:Ljava/lang/String;

.field private progress:F

.field private textPaint:Landroid/text/TextPaint;

.field private wasHint:Ljava/lang/String;

.field private wasHintVisible:Ljava/lang/Boolean;


# direct methods
.method public static synthetic $r8$lambda$76maNKFM1wbgeVCpXRqshSiubfw(Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;ZLjava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;->lambda$setHintText$0(ZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/HintEditText;-><init>(Landroid/content/Context;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;->letters:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;->oldLetters:Ljava/util/ArrayList;

    new-instance p1, Landroid/text/TextPaint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;->textPaint:Landroid/text/TextPaint;

    const-string p1, ""

    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;->oldText:Ljava/lang/String;

    new-instance p1, Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText$HintFadeProperty;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText$HintFadeProperty;-><init>(Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;->hintFadeProperty:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText$HintFadeProperty;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;->hintAnimationValues:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;->hintAnimations:Ljava/util/List;

    return-void
.end method

.method static synthetic access$002(Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;->animator:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;->oldLetters:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;->hintAnimationValues:Ljava/util/List;

    return-object p0
.end method

.method private synthetic lambda$setHintText$0(ZLjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;->hintAnimationValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;->hintAnimations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    invoke-super {p0, p2}, Lorg/telegram/ui/Components/HintEditText;->setHintText(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private runHintAnimation(IZLjava/lang/Runnable;)V
    .locals 10

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;->hintAnimationCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-wide/16 v1, 0x5

    if-ge v0, p1, :cond_3

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz p2, :cond_1

    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    const/high16 v5, 0x3f800000    # 1.0f

    :goto_1
    if-eqz p2, :cond_2

    const/high16 v3, 0x3f800000    # 1.0f

    :cond_2
    new-instance v6, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, p0, Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;->hintFadeProperty:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText$HintFadeProperty;

    invoke-direct {v6, v7, v8}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    new-instance v7, Landroidx/dynamicanimation/animation/SpringForce;

    const/high16 v8, 0x42c80000    # 100.0f

    mul-float v3, v3, v8

    invoke-direct {v7, v3}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    const/high16 v9, 0x43fa0000    # 500.0f

    invoke-virtual {v7, v9}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v3

    mul-float v8, v8, v5

    invoke-virtual {v3, v8}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v3

    check-cast v3, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v4, p0, Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;->hintAnimations:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;->hintAnimationValues:Ljava/util/List;

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText$$ExternalSyntheticLambda1;

    invoke-direct {v4, v3}, Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText$$ExternalSyntheticLambda1;-><init>(Landroidx/dynamicanimation/animation/SpringAnimation;)V

    int-to-long v5, v0

    mul-long v5, v5, v1

    invoke-virtual {p0, v4, v5, v6}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iput-object p3, p0, Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;->hintAnimationCallback:Ljava/lang/Runnable;

    int-to-long p1, p1

    mul-long p1, p1, v1

    const-wide/16 v0, 0x96

    add-long/2addr p1, v0

    invoke-virtual {p0, p3, p1, p2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public getHintText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;->wasHint:Ljava/lang/String;

    return-object v0
.end method

.method public getProgress()F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;->progress:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/telegram/ui/Components/HintEditText;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onPreDrawHintCharacter(ILandroid/graphics/Canvas;FF)V
    .locals 0

    iget-object p2, p0, Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;->hintAnimationValues:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_0

    iget-object p2, p0, Lorg/telegram/ui/Components/HintEditText;->hintPaint:Landroid/text/TextPaint;

    iget-object p3, p0, Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;->hintAnimationValues:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 p3, 0x437f0000    # 255.0f

    mul-float p1, p1, p3

    float-to-int p1, p1

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_0
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/EditTextEffects;->onTextChanged(Ljava/lang/CharSequence;III)V

    return-void
.end method

.method public setHintText(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;->wasHintVisible:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_2

    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;->hintAnimationValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;->hintAnimations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;->hintAnimations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;->wasHintVisible:Ljava/lang/Boolean;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    :goto_2
    if-eqz v0, :cond_3

    move-object v2, p1

    goto :goto_3

    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;->wasHint:Ljava/lang/String;

    :goto_3
    if-nez v2, :cond_4

    const-string v2, ""

    :cond_4
    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;->wasHint:Ljava/lang/String;

    if-nez v0, :cond_5

    if-nez v1, :cond_6

    :cond_5
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/HintEditText;->setHintText(Ljava/lang/String;)V

    :cond_6
    if-eqz v1, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0, p1}, Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;ZLjava/lang/String;)V

    invoke-direct {p0, v1, v0, v2}, Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;->runHintAnimation(IZLjava/lang/Runnable;)V

    :cond_7
    return-void
.end method

.method public setNewText(Ljava/lang/String;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    iget-object v3, v0, Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;->oldLetters:Ljava/util/ArrayList;

    if-eqz v3, :cond_8

    iget-object v3, v0, Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;->letters:Ljava/util/ArrayList;

    if-eqz v3, :cond_8

    iget-object v3, v0, Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;->oldText:Ljava/lang/String;

    invoke-static {v3, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v3, v0, Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;->animator:Landroid/animation/ObjectAnimator;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/animation/Animator;->cancel()V

    iput-object v4, v0, Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;->animator:Landroid/animation/ObjectAnimator;

    :cond_1
    iget-object v3, v0, Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;->oldLetters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, v0, Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;->oldLetters:Ljava/util/ArrayList;

    iget-object v5, v0, Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;->letters:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v3, v0, Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;->letters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, v0, Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;->oldText:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    const/4 v6, 0x0

    iput v6, v0, Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;->progress:F

    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_6

    add-int/lit8 v6, v5, 0x1

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    iget-object v7, v0, Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;->oldLetters:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, v0, Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;->oldText:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v5, v7, :cond_3

    iget-object v7, v0, Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;->oldText:Ljava/lang/String;

    invoke-virtual {v7, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_3
    move-object v7, v4

    :goto_2
    if-nez v3, :cond_4

    if-eqz v7, :cond_4

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v7, v0, Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;->letters:Ljava/util/ArrayList;

    iget-object v8, v0, Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;->oldLetters:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/text/StaticLayout;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, v0, Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;->oldLetters:Ljava/util/ArrayList;

    invoke-virtual {v7, v5, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_4
    if-eqz v3, :cond_5

    if-nez v7, :cond_5

    iget-object v5, v0, Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;->oldLetters:Ljava/util/ArrayList;

    new-instance v7, Landroid/text/StaticLayout;

    iget-object v11, v0, Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;->textPaint:Landroid/text/TextPaint;

    sget-object v13, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-string v10, ""

    const/4 v12, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    move-object v9, v7

    invoke-direct/range {v9 .. v16}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    new-instance v5, Landroid/text/StaticLayout;

    iget-object v9, v0, Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v9, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    float-to-double v10, v7

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v10, v10

    sget-object v11, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    move-object v7, v5

    invoke-direct/range {v7 .. v14}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iget-object v7, v0, Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;->letters:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    move v5, v6

    goto :goto_1

    :cond_6
    iget-object v2, v0, Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;->oldLetters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    const-string v3, "progress"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;->animator:Landroid/animation/ObjectAnimator;

    const-wide/16 v3, 0x96

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v2, v0, Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;->animator:Landroid/animation/ObjectAnimator;

    new-instance v3, Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText$1;

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText$1;-><init>(Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    :cond_7
    iput-object v1, v0, Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;->oldText:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    :cond_8
    :goto_4
    return-void

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        0x0
    .end array-data
.end method

.method public setProgress(F)V
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;->progress:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;->progress:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    invoke-super {p0, p1}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setTextSize(IF)V
    .locals 2

    invoke-super {p0, p1, p2}, Lorg/telegram/ui/Components/HintEditText;->setTextSize(IF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {p1, p2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method
