.class Lorg/telegram/ui/Components/InviteMembersBottomSheet$ItemAnimator;
.super Landroidx/recyclerview/widget/DefaultItemAnimator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/InviteMembersBottomSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemAnimator"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/InviteMembersBottomSheet;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/InviteMembersBottomSheet;)V
    .locals 2

    iput-object p1, p0, Lorg/telegram/ui/Components/InviteMembersBottomSheet$ItemAnimator;->this$0:Lorg/telegram/ui/Components/InviteMembersBottomSheet;

    invoke-direct {p0}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iput-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->translationInterpolator:Landroid/view/animation/Interpolator;

    const-wide/16 v0, 0x96

    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setMoveDuration(J)V

    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setAddDuration(J)V

    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setRemoveDuration(J)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->setShowWithoutAnimation(Z)V

    return-void
.end method
