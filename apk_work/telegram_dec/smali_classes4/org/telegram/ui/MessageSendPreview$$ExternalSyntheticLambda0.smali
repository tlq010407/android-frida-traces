.class public final synthetic Lorg/telegram/ui/MessageSendPreview$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/MessageSendPreview;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/MessageSendPreview;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/MessageSendPreview$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/MessageSendPreview;

    iput-boolean p2, p0, Lorg/telegram/ui/MessageSendPreview$$ExternalSyntheticLambda0;->f$1:Z

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/MessageSendPreview;

    iget-boolean v1, p0, Lorg/telegram/ui/MessageSendPreview$$ExternalSyntheticLambda0;->f$1:Z

    invoke-static {v0, v1, p1}, Lorg/telegram/ui/MessageSendPreview;->$r8$lambda$8rZWT3br8l6DKWNCPGipFR0L78c(Lorg/telegram/ui/MessageSendPreview;ZLandroid/animation/ValueAnimator;)V

    return-void
.end method
