.class Lorg/telegram/ui/Stars/SuperRipple$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stars/SuperRipple;->animate(FFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stars/SuperRipple;

.field final synthetic val$effect:Lorg/telegram/ui/Stars/SuperRipple$Effect;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stars/SuperRipple;Lorg/telegram/ui/Stars/SuperRipple$Effect;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stars/SuperRipple$1;->this$0:Lorg/telegram/ui/Stars/SuperRipple;

    iput-object p2, p0, Lorg/telegram/ui/Stars/SuperRipple$1;->val$effect:Lorg/telegram/ui/Stars/SuperRipple$Effect;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/Stars/SuperRipple$1;->this$0:Lorg/telegram/ui/Stars/SuperRipple;

    iget-object p1, p1, Lorg/telegram/ui/Stars/SuperRipple;->effects:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/ui/Stars/SuperRipple$1;->val$effect:Lorg/telegram/ui/Stars/SuperRipple$Effect;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/telegram/ui/Stars/SuperRipple$1;->this$0:Lorg/telegram/ui/Stars/SuperRipple;

    invoke-static {p1}, Lorg/telegram/ui/Stars/SuperRipple;->access$100(Lorg/telegram/ui/Stars/SuperRipple;)V

    return-void
.end method
