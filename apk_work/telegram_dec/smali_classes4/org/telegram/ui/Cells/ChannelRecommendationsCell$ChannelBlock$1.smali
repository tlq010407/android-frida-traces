.class Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock$1;
.super Lorg/telegram/ui/Components/ButtonBounce;
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

.field final synthetic val$cell:Lorg/telegram/ui/Cells/ChatMessageCell;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;Landroid/view/View;Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock$1;->this$0:Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;

    iput-object p3, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock$1;->val$cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/ButtonBounce;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public invalidate()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock$1;->val$cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->invalidateOutbounds()V

    return-void
.end method
