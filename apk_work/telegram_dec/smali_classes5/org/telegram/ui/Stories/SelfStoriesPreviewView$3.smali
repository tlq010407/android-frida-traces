.class Lorg/telegram/ui/Stories/SelfStoriesPreviewView$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->scrollToPosition(IZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/SelfStoriesPreviewView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/SelfStoriesPreviewView;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView$3;->this$0:Lorg/telegram/ui/Stories/SelfStoriesPreviewView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView$3;->this$0:Lorg/telegram/ui/Stories/SelfStoriesPreviewView;

    const/4 v0, 0x0

    iput-object v0, p1, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->scrollAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method
