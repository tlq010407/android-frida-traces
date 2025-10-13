.class Lorg/telegram/ui/Stars/SuperRippleFallback$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stars/SuperRippleFallback;->animate(FFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stars/SuperRippleFallback;

.field final synthetic val$effect:Lorg/telegram/ui/Stars/SuperRippleFallback$Effect;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stars/SuperRippleFallback;Lorg/telegram/ui/Stars/SuperRippleFallback$Effect;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stars/SuperRippleFallback$2;->this$0:Lorg/telegram/ui/Stars/SuperRippleFallback;

    iput-object p2, p0, Lorg/telegram/ui/Stars/SuperRippleFallback$2;->val$effect:Lorg/telegram/ui/Stars/SuperRippleFallback$Effect;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/Stars/SuperRippleFallback$2;->this$0:Lorg/telegram/ui/Stars/SuperRippleFallback;

    iget-object p1, p1, Lorg/telegram/ui/Stars/SuperRippleFallback;->effects:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/ui/Stars/SuperRippleFallback$2;->val$effect:Lorg/telegram/ui/Stars/SuperRippleFallback$Effect;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/telegram/ui/Stars/SuperRippleFallback$2;->this$0:Lorg/telegram/ui/Stars/SuperRippleFallback;

    invoke-static {p1}, Lorg/telegram/ui/Stars/SuperRippleFallback;->access$100(Lorg/telegram/ui/Stars/SuperRippleFallback;)V

    return-void
.end method
