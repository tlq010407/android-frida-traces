.class Lorg/telegram/ui/Cells/GroupCallUserCell$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Cells/GroupCallUserCell;->applyParticipantChanges(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Cells/GroupCallUserCell;

.field final synthetic val$newStatus:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/Cells/GroupCallUserCell;I)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Cells/GroupCallUserCell$4;->this$0:Lorg/telegram/ui/Cells/GroupCallUserCell;

    iput p2, p0, Lorg/telegram/ui/Cells/GroupCallUserCell$4;->val$newStatus:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCallUserCell$4;->this$0:Lorg/telegram/ui/Cells/GroupCallUserCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/GroupCallUserCell;->isSelfUser()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCallUserCell$4;->this$0:Lorg/telegram/ui/Cells/GroupCallUserCell;

    iget v0, p0, Lorg/telegram/ui/Cells/GroupCallUserCell$4;->val$newStatus:I

    invoke-static {p1, v0}, Lorg/telegram/ui/Cells/GroupCallUserCell;->access$400(Lorg/telegram/ui/Cells/GroupCallUserCell;I)V

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCallUserCell$4;->this$0:Lorg/telegram/ui/Cells/GroupCallUserCell;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Cells/GroupCallUserCell;->access$502(Lorg/telegram/ui/Cells/GroupCallUserCell;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    return-void
.end method
