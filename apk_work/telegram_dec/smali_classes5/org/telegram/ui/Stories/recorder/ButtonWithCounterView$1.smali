.class Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setSubText(Ljava/lang/CharSequence;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView$1;->this$0:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView$1;->this$0:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->access$002(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Z)Z

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView$1;->this$0:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->subText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;Z)V

    return-void
.end method
