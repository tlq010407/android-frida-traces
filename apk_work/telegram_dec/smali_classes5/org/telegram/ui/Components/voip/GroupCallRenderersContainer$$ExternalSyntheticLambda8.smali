.class public final synthetic Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

.field public final synthetic f$1:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$$ExternalSyntheticLambda8;->f$0:Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    iput-object p2, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$$ExternalSyntheticLambda8;->f$1:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$$ExternalSyntheticLambda8;->f$0:Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$$ExternalSyntheticLambda8;->f$1:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    invoke-static {v0, v1, p1}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->$r8$lambda$qUw210iTLThJI8wvw1UBh1YqPX4(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;Landroid/animation/ValueAnimator;)V

    return-void
.end method
