.class public final synthetic Lorg/telegram/messenger/DownloadController$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/DownloadController;

.field public final synthetic f$1:Lorg/telegram/messenger/MessageObject;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/DownloadController;Lorg/telegram/messenger/MessageObject;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/DownloadController$$ExternalSyntheticLambda12;->f$0:Lorg/telegram/messenger/DownloadController;

    iput-object p2, p0, Lorg/telegram/messenger/DownloadController$$ExternalSyntheticLambda12;->f$1:Lorg/telegram/messenger/MessageObject;

    iput p3, p0, Lorg/telegram/messenger/DownloadController$$ExternalSyntheticLambda12;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/DownloadController$$ExternalSyntheticLambda12;->f$0:Lorg/telegram/messenger/DownloadController;

    iget-object v1, p0, Lorg/telegram/messenger/DownloadController$$ExternalSyntheticLambda12;->f$1:Lorg/telegram/messenger/MessageObject;

    iget v2, p0, Lorg/telegram/messenger/DownloadController$$ExternalSyntheticLambda12;->f$2:I

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/DownloadController;->$r8$lambda$f7_R-kOXf_LiagAZYva90hZkd-4(Lorg/telegram/messenger/DownloadController;Lorg/telegram/messenger/MessageObject;I)V

    return-void
.end method
