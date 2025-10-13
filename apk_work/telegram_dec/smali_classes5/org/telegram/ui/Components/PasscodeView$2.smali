.class Lorg/telegram/ui/Components/PasscodeView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PasscodeView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/PasscodeView;


# direct methods
.method public static synthetic $r8$lambda$yIfWbzKcAp1LKqEEcryH9gb8w4w(Lorg/telegram/ui/Components/PasscodeView$2;ZLorg/telegram/ui/Components/MotionBackgroundDrawable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/PasscodeView$2;->lambda$beforeTextChanged$0(ZLorg/telegram/ui/Components/MotionBackgroundDrawable;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Components/PasscodeView;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/PasscodeView$2;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$beforeTextChanged$0(ZLorg/telegram/ui/Components/MotionBackgroundDrawable;)V
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->switchToNextPosition(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->switchToPrevPosition(Z)V

    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/PasscodeView$2;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/PasscodeView;->access$700(Lorg/telegram/ui/Components/PasscodeView;Lorg/telegram/ui/Components/MotionBackgroundDrawable;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/Components/PasscodeView$2;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-static {p1}, Lorg/telegram/ui/Components/PasscodeView;->access$1000(Lorg/telegram/ui/Components/PasscodeView;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->length()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    sget p1, Lorg/telegram/messenger/SharedConfig;->passcodeType:I

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/PasscodeView$2;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/PasscodeView;->access$1100(Lorg/telegram/ui/Components/PasscodeView;Z)V

    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    iget-object p1, p0, Lorg/telegram/ui/Components/PasscodeView$2;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-static {p1}, Lorg/telegram/ui/Components/PasscodeView;->access$500(Lorg/telegram/ui/Components/PasscodeView;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    instance-of p1, p1, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    if-eqz p1, :cond_7

    iget-object p1, p0, Lorg/telegram/ui/Components/PasscodeView$2;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-static {p1}, Lorg/telegram/ui/Components/PasscodeView;->access$500(Lorg/telegram/ui/Components/PasscodeView;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setAnimationProgressProvider(Lorg/telegram/messenger/GenericProvider;)V

    invoke-virtual {p1}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->getPosAnimationProgress()F

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p3, :cond_0

    if-ne p4, v1, :cond_0

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->switchToNextPosition(Z)V

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    if-ne p3, v1, :cond_1

    if-nez p4, :cond_1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->switchToPrevPosition(Z)V

    const/4 p3, 0x0

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_7

    const/high16 p4, 0x3f800000    # 1.0f

    cmpl-float p2, p2, p4

    if-ltz p2, :cond_2

    iget-object p2, p0, Lorg/telegram/ui/Components/PasscodeView$2;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-static {p2, p1}, Lorg/telegram/ui/Components/PasscodeView;->access$700(Lorg/telegram/ui/Components/PasscodeView;Lorg/telegram/ui/Components/MotionBackgroundDrawable;)V

    goto/16 :goto_4

    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/Components/PasscodeView$2;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-static {p2}, Lorg/telegram/ui/Components/PasscodeView;->access$800(Lorg/telegram/ui/Components/PasscodeView;)Ljava/util/LinkedList;

    move-result-object p2

    new-instance p4, Lorg/telegram/ui/Components/PasscodeView$2$$ExternalSyntheticLambda0;

    invoke-direct {p4, p0, p3, p1}, Lorg/telegram/ui/Components/PasscodeView$2$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/PasscodeView$2;ZLorg/telegram/ui/Components/MotionBackgroundDrawable;)V

    invoke-virtual {p2, p4}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/telegram/ui/Components/PasscodeView$2;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-static {p1}, Lorg/telegram/ui/Components/PasscodeView;->access$900(Lorg/telegram/ui/Components/PasscodeView;)Ljava/util/LinkedList;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    iget-object p4, p0, Lorg/telegram/ui/Components/PasscodeView$2;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-static {p4}, Lorg/telegram/ui/Components/PasscodeView;->access$800(Lorg/telegram/ui/Components/PasscodeView;)Ljava/util/LinkedList;

    move-result-object p4

    invoke-virtual {p4}, Ljava/util/LinkedList;->size()I

    move-result p4

    if-ge v0, p4, :cond_4

    iget-object p4, p0, Lorg/telegram/ui/Components/PasscodeView$2;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-static {p4}, Lorg/telegram/ui/Components/PasscodeView;->access$800(Lorg/telegram/ui/Components/PasscodeView;)Ljava/util/LinkedList;

    move-result-object p4

    invoke-virtual {p4, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Runnable;

    iget-object v1, p0, Lorg/telegram/ui/Components/PasscodeView$2;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-static {v1}, Lorg/telegram/ui/Components/PasscodeView;->access$900(Lorg/telegram/ui/Components/PasscodeView;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v1, p3, :cond_3

    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {p2, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Runnable;

    iget-object p4, p0, Lorg/telegram/ui/Components/PasscodeView$2;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-static {p4}, Lorg/telegram/ui/Components/PasscodeView;->access$800(Lorg/telegram/ui/Components/PasscodeView;)Ljava/util/LinkedList;

    move-result-object p4

    invoke-virtual {p4, p3}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget-object p3, p0, Lorg/telegram/ui/Components/PasscodeView$2;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-static {p3}, Lorg/telegram/ui/Components/PasscodeView;->access$900(Lorg/telegram/ui/Components/PasscodeView;)Ljava/util/LinkedList;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/LinkedList;->size()I

    move-result p3

    if-ge p2, p3, :cond_6

    iget-object p3, p0, Lorg/telegram/ui/Components/PasscodeView$2;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-static {p3}, Lorg/telegram/ui/Components/PasscodeView;->access$900(Lorg/telegram/ui/Components/PasscodeView;)Ljava/util/LinkedList;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    goto :goto_3

    :cond_7
    :goto_4
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
