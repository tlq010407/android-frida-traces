.class public final synthetic Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda72;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ArticleViewer;

.field public final synthetic f$1:Lorg/telegram/ui/ArticleViewer$BlockChannelCell;

.field public final synthetic f$2:I

.field public final synthetic f$3:Lorg/telegram/tgnet/TLRPC$TL_error;

.field public final synthetic f$4:Lorg/telegram/tgnet/TLRPC$TL_channels_joinChannel;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$BlockChannelCell;ILorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_channels_joinChannel;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda72;->f$0:Lorg/telegram/ui/ArticleViewer;

    iput-object p2, p0, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda72;->f$1:Lorg/telegram/ui/ArticleViewer$BlockChannelCell;

    iput p3, p0, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda72;->f$2:I

    iput-object p4, p0, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda72;->f$3:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p5, p0, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda72;->f$4:Lorg/telegram/tgnet/TLRPC$TL_channels_joinChannel;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda72;->f$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda72;->f$1:Lorg/telegram/ui/ArticleViewer$BlockChannelCell;

    iget v2, p0, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda72;->f$2:I

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda72;->f$3:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda72;->f$4:Lorg/telegram/tgnet/TLRPC$TL_channels_joinChannel;

    invoke-static {v0, v1, v2, v3, v4}, Lorg/telegram/ui/ArticleViewer;->$r8$lambda$RnBy2OD2ytEFTqLiL1mgI5iP7Zc(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$BlockChannelCell;ILorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_channels_joinChannel;)V

    return-void
.end method
