.class Lorg/telegram/ui/Components/Bulletin$ParentLayout$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Bulletin$ParentLayout;-><init>(Lorg/telegram/ui/Components/Bulletin$Layout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/Bulletin$ParentLayout;

.field final synthetic val$layout:Lorg/telegram/ui/Components/Bulletin$Layout;


# direct methods
.method public static synthetic $r8$lambda$FaYD42HwHRRb5cA9gykoS1IVDnk(Lorg/telegram/ui/Components/Bulletin$ParentLayout$1;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/Bulletin$ParentLayout$1;->lambda$onFling$0(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$V6A0CjIhWmV-fAcEIQPQ3X99qLc(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Components/Bulletin$ParentLayout$1;->lambda$onFling$3(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method

.method public static synthetic $r8$lambda$hpClar3SJ9n2u54BIUlDANz8lOM(Lorg/telegram/ui/Components/Bulletin$ParentLayout$1;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/Bulletin$ParentLayout$1;->lambda$onFling$2(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$xoZIPdijjfJwdC9lJa1tRQDP12M(Lorg/telegram/ui/Components/Bulletin$Layout;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/telegram/ui/Components/Bulletin$ParentLayout$1;->lambda$onFling$1(Lorg/telegram/ui/Components/Bulletin$Layout;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Components/Bulletin$ParentLayout;Lorg/telegram/ui/Components/Bulletin$Layout;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/Bulletin$ParentLayout$1;->this$0:Lorg/telegram/ui/Components/Bulletin$ParentLayout;

    iput-object p2, p0, Lorg/telegram/ui/Components/Bulletin$ParentLayout$1;->val$layout:Lorg/telegram/ui/Components/Bulletin$Layout;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method private synthetic lambda$onFling$0(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin$ParentLayout$1;->this$0:Lorg/telegram/ui/Components/Bulletin$ParentLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin$ParentLayout;->onHide()V

    return-void
.end method

.method private static synthetic lambda$onFling$1(Lorg/telegram/ui/Components/Bulletin$Layout;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    int-to-float p0, p0

    cmpl-float p0, p2, p0

    if-lez p0, :cond_0

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onFling$2(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin$ParentLayout$1;->this$0:Lorg/telegram/ui/Components/Bulletin$ParentLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin$ParentLayout;->onHide()V

    return-void
.end method

.method private static synthetic lambda$onFling$3(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    const/4 p2, 0x0

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_0

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin$ParentLayout$1;->this$0:Lorg/telegram/ui/Components/Bulletin$ParentLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/Bulletin$ParentLayout;->access$1200(Lorg/telegram/ui/Components/Bulletin$ParentLayout;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin$ParentLayout$1;->this$0:Lorg/telegram/ui/Components/Bulletin$ParentLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/Bulletin$ParentLayout$1;->val$layout:Lorg/telegram/ui/Components/Bulletin$Layout;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/Bulletin$Layout;->access$1400(Lorg/telegram/ui/Components/Bulletin$Layout;Z)Z

    move-result v1

    invoke-static {p1, v1}, Lorg/telegram/ui/Components/Bulletin$ParentLayout;->access$1302(Lorg/telegram/ui/Components/Bulletin$ParentLayout;Z)Z

    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin$ParentLayout$1;->this$0:Lorg/telegram/ui/Components/Bulletin$ParentLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/Bulletin$ParentLayout$1;->val$layout:Lorg/telegram/ui/Components/Bulletin$Layout;

    invoke-static {v1, v0}, Lorg/telegram/ui/Components/Bulletin$Layout;->access$1400(Lorg/telegram/ui/Components/Bulletin$Layout;Z)Z

    move-result v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/Bulletin$ParentLayout;->access$1502(Lorg/telegram/ui/Components/Bulletin$ParentLayout;Z)Z

    return v2

    :cond_0
    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p2, 0x44fa0000    # 2000.0f

    const/4 p4, 0x0

    cmpl-float p1, p1, p2

    if-lez p1, :cond_5

    const/4 p1, 0x1

    const/4 p2, 0x0

    cmpg-float v0, p3, p2

    if-gez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$ParentLayout$1;->this$0:Lorg/telegram/ui/Components/Bulletin$ParentLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/Bulletin$ParentLayout;->access$1300(Lorg/telegram/ui/Components/Bulletin$ParentLayout;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    cmpl-float v0, p3, p2

    if-lez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$ParentLayout$1;->this$0:Lorg/telegram/ui/Components/Bulletin$ParentLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/Bulletin$ParentLayout;->access$1500(Lorg/telegram/ui/Components/Bulletin$ParentLayout;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 p4, 0x1

    :cond_2
    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v1, p0, Lorg/telegram/ui/Components/Bulletin$ParentLayout$1;->val$layout:Lorg/telegram/ui/Components/Bulletin$Layout;

    sget-object v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-static {p3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Components/Bulletin$ParentLayout$1;->val$layout:Lorg/telegram/ui/Components/Bulletin$Layout;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float v3, v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v3, v3, v4

    invoke-direct {v0, v1, v2, v3}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)V

    if-nez p4, :cond_3

    new-instance v1, Lorg/telegram/ui/Components/Bulletin$ParentLayout$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/Bulletin$ParentLayout$1$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/Bulletin$ParentLayout$1;)V

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    iget-object v1, p0, Lorg/telegram/ui/Components/Bulletin$ParentLayout$1;->val$layout:Lorg/telegram/ui/Components/Bulletin$Layout;

    new-instance v2, Lorg/telegram/ui/Components/Bulletin$ParentLayout$1$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Components/Bulletin$ParentLayout$1$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/Bulletin$Layout;)V

    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    :cond_3
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    const/high16 v3, 0x42c80000    # 100.0f

    invoke-virtual {v1, v3}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v0, p3}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    if-eqz p4, :cond_4

    new-instance p4, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v1, p0, Lorg/telegram/ui/Components/Bulletin$ParentLayout$1;->val$layout:Lorg/telegram/ui/Components/Bulletin$Layout;

    sget-object v3, Landroidx/dynamicanimation/animation/DynamicAnimation;->ALPHA:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {p4, v1, v3, p2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)V

    new-instance p2, Lorg/telegram/ui/Components/Bulletin$ParentLayout$1$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/Bulletin$ParentLayout$1$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/Bulletin$ParentLayout$1;)V

    invoke-virtual {p4, p2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    new-instance p2, Lorg/telegram/ui/Components/Bulletin$ParentLayout$1$$ExternalSyntheticLambda3;

    invoke-direct {p2}, Lorg/telegram/ui/Components/Bulletin$ParentLayout$1$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {p4, p2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p2

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {p2, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v0, p3}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    invoke-virtual {p4}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    :cond_4
    iget-object p2, p0, Lorg/telegram/ui/Components/Bulletin$ParentLayout$1;->this$0:Lorg/telegram/ui/Components/Bulletin$ParentLayout;

    invoke-static {p2, p1}, Lorg/telegram/ui/Components/Bulletin$ParentLayout;->access$1202(Lorg/telegram/ui/Components/Bulletin$ParentLayout;Z)Z

    return p1

    :cond_5
    return p4
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin$ParentLayout$1;->this$0:Lorg/telegram/ui/Components/Bulletin$ParentLayout;

    invoke-static {p1, p3}, Lorg/telegram/ui/Components/Bulletin$ParentLayout;->access$1616(Lorg/telegram/ui/Components/Bulletin$ParentLayout;F)F

    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin$ParentLayout$1;->this$0:Lorg/telegram/ui/Components/Bulletin$ParentLayout;

    invoke-static {p1, p4}, Lorg/telegram/ui/Components/Bulletin$ParentLayout;->access$1716(Lorg/telegram/ui/Components/Bulletin$ParentLayout;F)F

    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin$ParentLayout$1;->this$0:Lorg/telegram/ui/Components/Bulletin$ParentLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/Bulletin$ParentLayout;->access$1600(Lorg/telegram/ui/Components/Bulletin$ParentLayout;)F

    move-result p1

    iget-object p2, p0, Lorg/telegram/ui/Components/Bulletin$ParentLayout$1;->this$0:Lorg/telegram/ui/Components/Bulletin$ParentLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/Bulletin$ParentLayout;->access$1700(Lorg/telegram/ui/Components/Bulletin$ParentLayout;)F

    move-result p2

    const/4 p4, 0x0

    invoke-static {p4, p4, p1, p2}, Lorg/telegram/messenger/Utilities;->dist(FFFF)F

    move-result p1

    sget p2, Lorg/telegram/messenger/AndroidUtilities;->touchSlop:F

    const/4 v0, 0x1

    cmpl-float p1, p1, p2

    if-lez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin$ParentLayout$1;->this$0:Lorg/telegram/ui/Components/Bulletin$ParentLayout;

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/Bulletin$ParentLayout;->access$1802(Lorg/telegram/ui/Components/Bulletin$ParentLayout;Z)Z

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin$ParentLayout$1;->this$0:Lorg/telegram/ui/Components/Bulletin$ParentLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/Bulletin$ParentLayout;->access$1900(Lorg/telegram/ui/Components/Bulletin$ParentLayout;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin$ParentLayout$1;->val$layout:Lorg/telegram/ui/Components/Bulletin$Layout;

    iget-object p2, p0, Lorg/telegram/ui/Components/Bulletin$ParentLayout$1;->this$0:Lorg/telegram/ui/Components/Bulletin$ParentLayout;

    invoke-static {p2, p3}, Lorg/telegram/ui/Components/Bulletin$ParentLayout;->access$2024(Lorg/telegram/ui/Components/Bulletin$ParentLayout;F)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin$ParentLayout$1;->this$0:Lorg/telegram/ui/Components/Bulletin$ParentLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/Bulletin$ParentLayout;->access$2000(Lorg/telegram/ui/Components/Bulletin$ParentLayout;)F

    move-result p1

    cmpl-float p1, p1, p4

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin$ParentLayout$1;->this$0:Lorg/telegram/ui/Components/Bulletin$ParentLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/Bulletin$ParentLayout;->access$2000(Lorg/telegram/ui/Components/Bulletin$ParentLayout;)F

    move-result p1

    cmpg-float p1, p1, p4

    if-gez p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin$ParentLayout$1;->this$0:Lorg/telegram/ui/Components/Bulletin$ParentLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/Bulletin$ParentLayout;->access$1300(Lorg/telegram/ui/Components/Bulletin$ParentLayout;)Z

    move-result p1

    if-nez p1, :cond_3

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin$ParentLayout$1;->this$0:Lorg/telegram/ui/Components/Bulletin$ParentLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/Bulletin$ParentLayout;->access$2000(Lorg/telegram/ui/Components/Bulletin$ParentLayout;)F

    move-result p1

    cmpl-float p1, p1, p4

    if-lez p1, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin$ParentLayout$1;->this$0:Lorg/telegram/ui/Components/Bulletin$ParentLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/Bulletin$ParentLayout;->access$1500(Lorg/telegram/ui/Components/Bulletin$ParentLayout;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin$ParentLayout$1;->val$layout:Lorg/telegram/ui/Components/Bulletin$Layout;

    iget-object p2, p0, Lorg/telegram/ui/Components/Bulletin$ParentLayout$1;->this$0:Lorg/telegram/ui/Components/Bulletin$ParentLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/Bulletin$ParentLayout;->access$2000(Lorg/telegram/ui/Components/Bulletin$ParentLayout;)F

    move-result p2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    iget-object p3, p0, Lorg/telegram/ui/Components/Bulletin$ParentLayout$1;->val$layout:Lorg/telegram/ui/Components/Bulletin$Layout;

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p2, p3

    const/high16 p3, 0x3f800000    # 1.0f

    sub-float/2addr p3, p2

    invoke-virtual {p1, p3}, Landroid/view/View;->setAlpha(F)V

    :cond_4
    return v0
.end method
