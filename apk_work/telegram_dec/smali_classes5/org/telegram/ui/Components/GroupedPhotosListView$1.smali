.class Lorg/telegram/ui/Components/GroupedPhotosListView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/GroupedPhotosListView;->fillList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/GroupedPhotosListView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/GroupedPhotosListView;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/GroupedPhotosListView$1;->this$0:Lorg/telegram/ui/Components/GroupedPhotosListView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/GroupedPhotosListView$1;->this$0:Lorg/telegram/ui/Components/GroupedPhotosListView;

    invoke-static {v0}, Lorg/telegram/ui/Components/GroupedPhotosListView;->access$000(Lorg/telegram/ui/Components/GroupedPhotosListView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/GroupedPhotosListView$1;->this$0:Lorg/telegram/ui/Components/GroupedPhotosListView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/GroupedPhotosListView;->access$002(Lorg/telegram/ui/Components/GroupedPhotosListView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lorg/telegram/ui/Components/GroupedPhotosListView$1;->this$0:Lorg/telegram/ui/Components/GroupedPhotosListView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/GroupedPhotosListView;->fillList()V

    :cond_0
    return-void
.end method
