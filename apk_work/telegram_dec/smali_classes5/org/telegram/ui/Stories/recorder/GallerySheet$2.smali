.class Lorg/telegram/ui/Stories/recorder/GallerySheet$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/recorder/GallerySheet;->animate(ZLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/recorder/GallerySheet;

.field final synthetic val$done:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/recorder/GallerySheet;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/GallerySheet$2;->this$0:Lorg/telegram/ui/Stories/recorder/GallerySheet;

    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/GallerySheet$2;->val$done:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/GallerySheet$2;->this$0:Lorg/telegram/ui/Stories/recorder/GallerySheet;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Stories/recorder/GallerySheet;->access$002(Lorg/telegram/ui/Stories/recorder/GallerySheet;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/GallerySheet$2;->this$0:Lorg/telegram/ui/Stories/recorder/GallerySheet;

    invoke-static {p1, v0}, Lorg/telegram/ui/Stories/recorder/GallerySheet;->access$102(Lorg/telegram/ui/Stories/recorder/GallerySheet;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/GallerySheet$2;->val$done:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
