.class Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->updateIconColor(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

.field final synthetic val$newColor:I

.field final synthetic val$newSpeakingFrameColor:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;II)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$7;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iput p2, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$7;->val$newColor:I

    iput p3, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$7;->val$newSpeakingFrameColor:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$7;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$7;->val$newColor:I

    iput v0, p1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->lastIconColor:I

    iput v0, p1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->animateToColor:I

    iget v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$7;->val$newSpeakingFrameColor:I

    iput v0, p1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->lastSpeakingFrameColor:I

    iget-object p1, p1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->speakingPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$7;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget v0, p1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->progressToSpeaking:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p1}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->invalidate()V

    :cond_0
    return-void
.end method
