.class public final synthetic Lorg/telegram/ui/ContentPreviewViewer$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ContentPreviewViewer;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Lorg/telegram/tgnet/TLRPC$TL_messages_getMyStickers;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ContentPreviewViewer;Ljava/util/List;Lorg/telegram/tgnet/TLRPC$TL_messages_getMyStickers;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer$$ExternalSyntheticLambda5;->f$0:Lorg/telegram/ui/ContentPreviewViewer;

    iput-object p2, p0, Lorg/telegram/ui/ContentPreviewViewer$$ExternalSyntheticLambda5;->f$1:Ljava/util/List;

    iput-object p3, p0, Lorg/telegram/ui/ContentPreviewViewer$$ExternalSyntheticLambda5;->f$2:Lorg/telegram/tgnet/TLRPC$TL_messages_getMyStickers;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$$ExternalSyntheticLambda5;->f$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object v1, p0, Lorg/telegram/ui/ContentPreviewViewer$$ExternalSyntheticLambda5;->f$1:Ljava/util/List;

    iget-object v2, p0, Lorg/telegram/ui/ContentPreviewViewer$$ExternalSyntheticLambda5;->f$2:Lorg/telegram/tgnet/TLRPC$TL_messages_getMyStickers;

    invoke-static {v0, v1, v2, p1, p2}, Lorg/telegram/ui/ContentPreviewViewer;->$r8$lambda$dTt4Jggh3x1yDl45q1ainKiJx-M(Lorg/telegram/ui/ContentPreviewViewer;Ljava/util/List;Lorg/telegram/tgnet/TLRPC$TL_messages_getMyStickers;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
