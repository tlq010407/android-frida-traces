.class Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter$4;
.super Lorg/telegram/ui/Components/Premium/StarParticlesView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter$4;->this$1:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/Premium/StarParticlesView;-><init>(Landroid/content/Context;)V

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

.method protected onMeasure(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Lorg/telegram/ui/Components/Premium/StarParticlesView;->onMeasure(II)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView;->drawable:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->rect2:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    const/high16 v1, 0x42500000    # 52.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, p2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method
