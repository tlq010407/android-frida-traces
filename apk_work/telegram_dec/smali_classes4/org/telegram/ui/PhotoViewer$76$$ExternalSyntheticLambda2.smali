.class public final synthetic Lorg/telegram/ui/PhotoViewer$76$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/PhotoViewer$76;

.field public final synthetic f$1:Landroid/animation/AnimatorSet;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/PhotoViewer$76;Landroid/animation/AnimatorSet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$76$$ExternalSyntheticLambda2;->f$0:Lorg/telegram/ui/PhotoViewer$76;

    iput-object p2, p0, Lorg/telegram/ui/PhotoViewer$76$$ExternalSyntheticLambda2;->f$1:Landroid/animation/AnimatorSet;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$76$$ExternalSyntheticLambda2;->f$0:Lorg/telegram/ui/PhotoViewer$76;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$76$$ExternalSyntheticLambda2;->f$1:Landroid/animation/AnimatorSet;

    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoViewer$76;->$r8$lambda$Pcmz8Onxfs1ypbZiPR7cWcVyaBA(Lorg/telegram/ui/PhotoViewer$76;Landroid/animation/AnimatorSet;)V

    return-void
.end method
