.class Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$5;
.super Lorg/telegram/ui/Components/Premium/StarParticlesView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;->makeParticlesView(Landroid/content/Context;II)Lorg/telegram/ui/Components/Premium/StarParticlesView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/StarParticlesView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Premium/StarParticlesView;->setClipWithGradient()V

    return-void
.end method


# virtual methods
.method protected configure()V
    .locals 3

    invoke-super {p0}, Lorg/telegram/ui/Components/Premium/StarParticlesView;->configure()V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView;->drawable:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->useGradient:Z

    const/4 v2, 0x0

    iput-boolean v2, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->useBlur:Z

    iput-boolean v1, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->forceMaxAlpha:Z

    iput-boolean v1, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->checkBounds:Z

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->init()V

    return-void
.end method

.method protected getStarsRectWidth()I
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    return v0
.end method
