.class public final synthetic Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda245;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MediaDataController;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

.field public final synthetic f$2:Ljava/lang/Integer;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Lorg/telegram/messenger/Utilities$Callback;

.field public final synthetic f$5:Z


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MediaDataController;Lorg/telegram/tgnet/TLRPC$InputStickerSet;Ljava/lang/Integer;Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda245;->f$0:Lorg/telegram/messenger/MediaDataController;

    iput-object p2, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda245;->f$1:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    iput-object p3, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda245;->f$2:Ljava/lang/Integer;

    iput-object p4, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda245;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda245;->f$4:Lorg/telegram/messenger/Utilities$Callback;

    iput-boolean p6, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda245;->f$5:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda245;->f$0:Lorg/telegram/messenger/MediaDataController;

    iget-object v1, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda245;->f$1:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    iget-object v2, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda245;->f$2:Ljava/lang/Integer;

    iget-object v3, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda245;->f$3:Ljava/lang/String;

    iget-object v4, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda245;->f$4:Lorg/telegram/messenger/Utilities$Callback;

    iget-boolean v5, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda245;->f$5:Z

    invoke-static/range {v0 .. v5}, Lorg/telegram/messenger/MediaDataController;->$r8$lambda$6O1ztpcNT7uog7WAk_0CERa13nc(Lorg/telegram/messenger/MediaDataController;Lorg/telegram/tgnet/TLRPC$InputStickerSet;Ljava/lang/Integer;Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;Z)V

    return-void
.end method
