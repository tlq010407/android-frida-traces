.class Lorg/telegram/ui/GroupCallActivity$53;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/GroupCallActivity;->updateMuteButton(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/GroupCallActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/GroupCallActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/GroupCallActivity$53;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$53;->this$0:Lorg/telegram/ui/GroupCallActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/GroupCallActivity;->access$20502(Lorg/telegram/ui/GroupCallActivity;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    return-void
.end method
