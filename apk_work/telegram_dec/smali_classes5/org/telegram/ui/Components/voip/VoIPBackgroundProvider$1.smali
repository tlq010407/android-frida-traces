.class Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;->setHasVideo(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider$1;->this$0:Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider$1;->this$0:Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;->access$002(Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;Z)Z

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider$1;->this$0:Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;

    invoke-static {p1}, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;->access$100(Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;)Landroid/graphics/Paint;

    move-result-object p1

    const/16 v0, 0x23

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider$1;->this$0:Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;

    invoke-static {p1}, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;->access$200(Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;)Landroid/graphics/Paint;

    move-result-object p1

    const/16 v1, 0x66

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider$1;->this$0:Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;

    invoke-static {p1}, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;->access$300(Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;)Landroid/graphics/Paint;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider$1;->this$0:Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;->invalidateViews()V

    return-void
.end method
