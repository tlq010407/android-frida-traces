.class public final synthetic Lorg/telegram/messenger/DownloadController$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/DownloadController;

.field public final synthetic f$1:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/DownloadController;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/DownloadController$$ExternalSyntheticLambda4;->f$0:Lorg/telegram/messenger/DownloadController;

    iput-object p2, p0, Lorg/telegram/messenger/DownloadController$$ExternalSyntheticLambda4;->f$1:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/DownloadController$$ExternalSyntheticLambda4;->f$0:Lorg/telegram/messenger/DownloadController;

    iget-object v1, p0, Lorg/telegram/messenger/DownloadController$$ExternalSyntheticLambda4;->f$1:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lorg/telegram/messenger/DownloadController;->$r8$lambda$mso2FcYy-MfwylGUaFPz-FDYSwQ(Lorg/telegram/messenger/DownloadController;Ljava/util/ArrayList;)V

    return-void
.end method
