.class public final synthetic Lorg/telegram/ui/Stories/recorder/ToggleButton2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Stories/recorder/ToggleButton2;

.field public final synthetic f$1:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic f$2:Landroid/graphics/drawable/Drawable;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Stories/recorder/ToggleButton2;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/ToggleButton2$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/Stories/recorder/ToggleButton2;

    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/ToggleButton2$$ExternalSyntheticLambda0;->f$1:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lorg/telegram/ui/Stories/recorder/ToggleButton2$$ExternalSyntheticLambda0;->f$2:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ToggleButton2$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/Stories/recorder/ToggleButton2;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/ToggleButton2$$ExternalSyntheticLambda0;->f$1:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/ToggleButton2$$ExternalSyntheticLambda0;->f$2:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v2, p1}, Lorg/telegram/ui/Stories/recorder/ToggleButton2;->$r8$lambda$A4tM51lh7vANWCzIePR_O6INzDM(Lorg/telegram/ui/Stories/recorder/ToggleButton2;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/graphics/drawable/Drawable;Landroid/animation/ValueAnimator;)V

    return-void
.end method
