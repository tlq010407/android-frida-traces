.class public final synthetic Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView$Page$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/Utilities$Callback5;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView$Page;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView$Page;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView$Page$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView$Page;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView$Page$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView$Page;

    move-object v1, p1

    check-cast v1, Lorg/telegram/ui/Components/UItem;

    move-object v2, p2

    check-cast v2, Landroid/view/View;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    check-cast p4, Ljava/lang/Float;

    invoke-virtual {p4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    check-cast p5, Ljava/lang/Float;

    invoke-virtual {p5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView$Page;->$r8$lambda$BCwqsQ05CoODJBgskCQ_SO8vqTY(Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView$Page;Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)V

    return-void
.end method
