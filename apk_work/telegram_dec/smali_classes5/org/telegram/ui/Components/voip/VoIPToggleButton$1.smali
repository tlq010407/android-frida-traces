.class Lorg/telegram/ui/Components/voip/VoIPToggleButton$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/voip/VoIPToggleButton;->setData(IIIFZLjava/lang/String;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/voip/VoIPToggleButton;

.field final synthetic val$animateText:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/voip/VoIPToggleButton;Z)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton$1;->this$0:Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    iput-boolean p2, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton$1;->val$animateText:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton$1;->this$0:Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    const/4 v0, 0x0

    iput-object v0, p1, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->replaceAnimator:Landroid/animation/ValueAnimator;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton$1;->val$animateText:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object p1, p1, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->textView:[Landroid/widget/TextView;

    aget-object v1, p1, v3

    aget-object v4, p1, v2

    aput-object v4, p1, v3

    aput-object v1, p1, v2

    const/16 p1, 0x8

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton$1;->this$0:Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    invoke-static {p1}, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->access$000(Lorg/telegram/ui/Components/voip/VoIPToggleButton;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton$1;->this$0:Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    iget-object p1, p1, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->icon:[Landroid/graphics/drawable/Drawable;

    aget-object v1, p1, v2

    if-eqz v1, :cond_1

    aput-object v1, p1, v3

    aput-object v0, p1, v2

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton$1;->this$0:Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    invoke-static {p1, v3}, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->access$002(Lorg/telegram/ui/Components/voip/VoIPToggleButton;Z)Z

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton$1;->this$0:Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    invoke-static {p1}, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->access$100(Lorg/telegram/ui/Components/voip/VoIPToggleButton;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton$1;->this$0:Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    iget v0, p1, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->animateToBackgroundColor:I

    iput v0, p1, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->backgroundColor:I

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton$1;->this$0:Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    const/4 v0, 0x0

    iput v0, p1, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->replaceProgress:F

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
