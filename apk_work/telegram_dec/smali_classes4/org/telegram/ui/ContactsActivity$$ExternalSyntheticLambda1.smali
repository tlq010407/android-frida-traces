.class public final synthetic Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Landroid/animation/ValueAnimator;

.field public final synthetic f$1:Landroid/view/ViewGroup;


# direct methods
.method public synthetic constructor <init>(Landroid/animation/ValueAnimator;Landroid/view/ViewGroup;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda1;->f$0:Landroid/animation/ValueAnimator;

    iput-object p2, p0, Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda1;->f$1:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda1;->f$0:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda1;->f$1:Landroid/view/ViewGroup;

    invoke-static {v0, v1, p1}, Lorg/telegram/ui/ContactsActivity;->$r8$lambda$15dggOJC1MPSrxls8qzQ_bEQRUQ(Landroid/animation/ValueAnimator;Landroid/view/ViewGroup;Landroid/animation/ValueAnimator;)V

    return-void
.end method
