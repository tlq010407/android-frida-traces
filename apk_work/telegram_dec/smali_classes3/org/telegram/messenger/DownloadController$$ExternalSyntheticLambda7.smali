.class public final synthetic Lorg/telegram/messenger/DownloadController$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/DownloadController;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/DownloadController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/DownloadController$$ExternalSyntheticLambda7;->f$0:Lorg/telegram/messenger/DownloadController;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/DownloadController$$ExternalSyntheticLambda7;->f$0:Lorg/telegram/messenger/DownloadController;

    invoke-static {v0, p1, p2}, Lorg/telegram/messenger/DownloadController;->$r8$lambda$3-XCINFDrpmT681ezG92zUagPh8(Lorg/telegram/messenger/DownloadController;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
