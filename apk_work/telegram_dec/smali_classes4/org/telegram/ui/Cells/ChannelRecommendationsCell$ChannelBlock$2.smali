.class Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock$2;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;-><init>(ILorg/telegram/ui/Cells/ChatMessageCell;[Lorg/telegram/tgnet/TLObject;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;

.field final synthetic val$color:I

.field final synthetic val$paint:Landroid/graphics/Paint;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;Landroid/graphics/Paint;I)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock$2;->this$0:Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;

    iput-object p2, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock$2;->val$paint:Landroid/graphics/Paint;

    iput p3, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock$2;->val$color:I

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock$2;->val$paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public setAlpha(I)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock$2;->val$paint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock$2;->val$color:I

    int-to-float p1, p1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr p1, v2

    invoke-static {v1, p1}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock$2;->val$paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method
