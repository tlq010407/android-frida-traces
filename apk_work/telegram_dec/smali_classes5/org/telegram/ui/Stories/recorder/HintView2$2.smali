.class Lorg/telegram/ui/Stories/recorder/HintView2$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/recorder/HintView2;->bounceShow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/recorder/HintView2;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/recorder/HintView2;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2$2;->this$0:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2$2;->this$0:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->access$102(Lorg/telegram/ui/Stories/recorder/HintView2;F)F

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2$2;->this$0:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
