.class Lorg/telegram/ui/Cells/FeaturedStickerSetCell2$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Cells/FeaturedStickerSetCell2;->setStickersSet(Lorg/telegram/tgnet/TLRPC$StickerSetCovered;ZZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Cells/FeaturedStickerSetCell2;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Cells/FeaturedStickerSetCell2;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell2$2;->this$0:Lorg/telegram/ui/Cells/FeaturedStickerSetCell2;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell2$2;->this$0:Lorg/telegram/ui/Cells/FeaturedStickerSetCell2;

    invoke-static {p1}, Lorg/telegram/ui/Cells/FeaturedStickerSetCell2;->access$000(Lorg/telegram/ui/Cells/FeaturedStickerSetCell2;)Z

    move-result p1

    const/4 v0, 0x4

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell2$2;->this$0:Lorg/telegram/ui/Cells/FeaturedStickerSetCell2;

    invoke-static {p1}, Lorg/telegram/ui/Cells/FeaturedStickerSetCell2;->access$100(Lorg/telegram/ui/Cells/FeaturedStickerSetCell2;)Lorg/telegram/ui/Components/ProgressButton;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell2$2;->this$0:Lorg/telegram/ui/Cells/FeaturedStickerSetCell2;

    invoke-static {p1}, Lorg/telegram/ui/Cells/FeaturedStickerSetCell2;->access$200(Lorg/telegram/ui/Cells/FeaturedStickerSetCell2;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell2$2;->this$0:Lorg/telegram/ui/Cells/FeaturedStickerSetCell2;

    invoke-static {p1}, Lorg/telegram/ui/Cells/FeaturedStickerSetCell2;->access$300(Lorg/telegram/ui/Cells/FeaturedStickerSetCell2;)Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell2$2;->this$0:Lorg/telegram/ui/Cells/FeaturedStickerSetCell2;

    invoke-static {p1}, Lorg/telegram/ui/Cells/FeaturedStickerSetCell2;->access$400(Lorg/telegram/ui/Cells/FeaturedStickerSetCell2;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell2$2;->this$0:Lorg/telegram/ui/Cells/FeaturedStickerSetCell2;

    invoke-static {p1}, Lorg/telegram/ui/Cells/FeaturedStickerSetCell2;->access$100(Lorg/telegram/ui/Cells/FeaturedStickerSetCell2;)Lorg/telegram/ui/Components/ProgressButton;

    move-result-object p1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell2$2;->this$0:Lorg/telegram/ui/Cells/FeaturedStickerSetCell2;

    invoke-static {p1}, Lorg/telegram/ui/Cells/FeaturedStickerSetCell2;->access$200(Lorg/telegram/ui/Cells/FeaturedStickerSetCell2;)Landroid/widget/TextView;

    move-result-object p1

    goto :goto_1

    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell2$2;->this$0:Lorg/telegram/ui/Cells/FeaturedStickerSetCell2;

    invoke-static {p1}, Lorg/telegram/ui/Cells/FeaturedStickerSetCell2;->access$300(Lorg/telegram/ui/Cells/FeaturedStickerSetCell2;)Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    move-result-object p1

    const/16 v0, 0x8

    goto :goto_0

    :goto_3
    return-void
.end method
