.class Lorg/telegram/ui/ActionBar/ActionBarLayout$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ActionBar/ActionBarLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

.field final synthetic val$backAnimation:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/ActionBar/ActionBarLayout;Z)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$1;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iput-boolean p2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$1;->val$backAnimation:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$1;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$1;->val$backAnimation:Z

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$900(Lorg/telegram/ui/ActionBar/ActionBarLayout;Z)V

    return-void
.end method
