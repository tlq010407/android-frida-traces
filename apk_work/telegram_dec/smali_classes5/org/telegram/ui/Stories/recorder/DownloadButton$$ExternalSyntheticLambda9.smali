.class public final synthetic Lorg/telegram/ui/Stories/recorder/DownloadButton$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/Utilities$Callback;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Stories/recorder/DownloadButton;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Stories/recorder/DownloadButton;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton$$ExternalSyntheticLambda9;->f$0:Lorg/telegram/ui/Stories/recorder/DownloadButton;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton$$ExternalSyntheticLambda9;->f$0:Lorg/telegram/ui/Stories/recorder/DownloadButton;

    check-cast p1, Landroid/net/Uri;

    invoke-static {v0, p1}, Lorg/telegram/ui/Stories/recorder/DownloadButton;->$r8$lambda$qdwXPPxhmgIfQqX4UrztkVW0Cwo(Lorg/telegram/ui/Stories/recorder/DownloadButton;Landroid/net/Uri;)V

    return-void
.end method
