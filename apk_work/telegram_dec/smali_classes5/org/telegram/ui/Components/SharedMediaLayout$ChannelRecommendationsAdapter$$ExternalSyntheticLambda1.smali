.class public final synthetic Lorg/telegram/ui/Components/SharedMediaLayout$ChannelRecommendationsAdapter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/SharedMediaLayout$ChannelRecommendationsAdapter;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$Chat;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/SharedMediaLayout$ChannelRecommendationsAdapter;Lorg/telegram/tgnet/TLRPC$Chat;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$ChannelRecommendationsAdapter$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/Components/SharedMediaLayout$ChannelRecommendationsAdapter;

    iput-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$ChannelRecommendationsAdapter$$ExternalSyntheticLambda1;->f$1:Lorg/telegram/tgnet/TLRPC$Chat;

    iput p3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$ChannelRecommendationsAdapter$$ExternalSyntheticLambda1;->f$2:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$ChannelRecommendationsAdapter$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/Components/SharedMediaLayout$ChannelRecommendationsAdapter;

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$ChannelRecommendationsAdapter$$ExternalSyntheticLambda1;->f$1:Lorg/telegram/tgnet/TLRPC$Chat;

    iget v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$ChannelRecommendationsAdapter$$ExternalSyntheticLambda1;->f$2:I

    invoke-static {v0, v1, v2, p1}, Lorg/telegram/ui/Components/SharedMediaLayout$ChannelRecommendationsAdapter;->$r8$lambda$919cB8d5-w3TfjqZgbknE8KP6NQ(Lorg/telegram/ui/Components/SharedMediaLayout$ChannelRecommendationsAdapter;Lorg/telegram/tgnet/TLRPC$Chat;ILandroid/view/View;)V

    return-void
.end method
