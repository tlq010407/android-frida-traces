.class public final synthetic Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Landroid/widget/FrameLayout;

.field public final synthetic f$1:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic f$2:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/FrameLayout;Ljava/util/concurrent/atomic/AtomicBoolean;Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda3;->f$0:Landroid/widget/FrameLayout;

    iput-object p2, p0, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda3;->f$1:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda3;->f$2:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    iput-object p4, p0, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda3;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda3;->f$0:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda3;->f$1:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v2, p0, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda3;->f$2:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    iget-object v3, p0, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda3;->f$3:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, p1}, Lorg/telegram/ui/CallLogActivity;->$r8$lambda$EqwvQSNDdBdaRsGn-3DLh4dn39Y(Landroid/widget/FrameLayout;Ljava/util/concurrent/atomic/AtomicBoolean;Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;Ljava/lang/String;Landroid/animation/ValueAnimator;)V

    return-void
.end method
