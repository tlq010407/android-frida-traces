.class public final synthetic Lorg/telegram/messenger/video/VideoAds$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/video/VideoAds;

.field public final synthetic f$1:Lorg/telegram/ui/Components/Bulletin;

.field public final synthetic f$2:Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/video/VideoAds;Lorg/telegram/ui/Components/Bulletin;Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/video/VideoAds$$ExternalSyntheticLambda16;->f$0:Lorg/telegram/messenger/video/VideoAds;

    iput-object p2, p0, Lorg/telegram/messenger/video/VideoAds$$ExternalSyntheticLambda16;->f$1:Lorg/telegram/ui/Components/Bulletin;

    iput-object p3, p0, Lorg/telegram/messenger/video/VideoAds$$ExternalSyntheticLambda16;->f$2:Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/video/VideoAds$$ExternalSyntheticLambda16;->f$0:Lorg/telegram/messenger/video/VideoAds;

    iget-object v1, p0, Lorg/telegram/messenger/video/VideoAds$$ExternalSyntheticLambda16;->f$1:Lorg/telegram/ui/Components/Bulletin;

    iget-object v2, p0, Lorg/telegram/messenger/video/VideoAds$$ExternalSyntheticLambda16;->f$2:Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/video/VideoAds;->$r8$lambda$hbb6V9uq1nw7voaE-GbIp2QC3II(Lorg/telegram/messenger/video/VideoAds;Lorg/telegram/ui/Components/Bulletin;Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;)V

    return-void
.end method
