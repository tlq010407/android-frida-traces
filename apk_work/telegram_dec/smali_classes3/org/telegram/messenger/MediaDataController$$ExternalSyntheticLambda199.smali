.class public final synthetic Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda199;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MediaDataController;

.field public final synthetic f$1:Lorg/telegram/messenger/MediaDataController$SearchStickersKey;

.field public final synthetic f$2:Lorg/telegram/messenger/MediaDataController$SearchStickersResult;

.field public final synthetic f$3:Lorg/telegram/messenger/Utilities$Callback;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MediaDataController;Lorg/telegram/messenger/MediaDataController$SearchStickersKey;Lorg/telegram/messenger/MediaDataController$SearchStickersResult;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda199;->f$0:Lorg/telegram/messenger/MediaDataController;

    iput-object p2, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda199;->f$1:Lorg/telegram/messenger/MediaDataController$SearchStickersKey;

    iput-object p3, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda199;->f$2:Lorg/telegram/messenger/MediaDataController$SearchStickersResult;

    iput-object p4, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda199;->f$3:Lorg/telegram/messenger/Utilities$Callback;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda199;->f$0:Lorg/telegram/messenger/MediaDataController;

    iget-object v1, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda199;->f$1:Lorg/telegram/messenger/MediaDataController$SearchStickersKey;

    iget-object v2, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda199;->f$2:Lorg/telegram/messenger/MediaDataController$SearchStickersResult;

    iget-object v3, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda199;->f$3:Lorg/telegram/messenger/Utilities$Callback;

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lorg/telegram/messenger/MediaDataController;->$r8$lambda$QbKukhozfM-PkqY4fUcvhzr6YXA(Lorg/telegram/messenger/MediaDataController;Lorg/telegram/messenger/MediaDataController$SearchStickersKey;Lorg/telegram/messenger/MediaDataController$SearchStickersResult;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
