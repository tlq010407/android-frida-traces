.class public final synthetic Lorg/telegram/ui/Stories/recorder/ToggleButton2$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Stories/recorder/ToggleButton2;

.field public final synthetic f$1:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Stories/recorder/ToggleButton2;Ljava/util/concurrent/atomic/AtomicBoolean;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/ToggleButton2$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/Stories/recorder/ToggleButton2;

    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/ToggleButton2$$ExternalSyntheticLambda1;->f$1:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput p3, p0, Lorg/telegram/ui/Stories/recorder/ToggleButton2$$ExternalSyntheticLambda1;->f$2:I

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ToggleButton2$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/Stories/recorder/ToggleButton2;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/ToggleButton2$$ExternalSyntheticLambda1;->f$1:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/ToggleButton2$$ExternalSyntheticLambda1;->f$2:I

    invoke-static {v0, v1, v2, p1}, Lorg/telegram/ui/Stories/recorder/ToggleButton2;->$r8$lambda$7N8XUy7mDOAwptXKcb1iDnTNhcw(Lorg/telegram/ui/Stories/recorder/ToggleButton2;Ljava/util/concurrent/atomic/AtomicBoolean;ILandroid/animation/ValueAnimator;)V

    return-void
.end method
