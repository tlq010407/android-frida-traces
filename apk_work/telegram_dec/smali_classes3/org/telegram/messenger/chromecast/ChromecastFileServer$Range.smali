.class Lorg/telegram/messenger/chromecast/ChromecastFileServer$Range;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/chromecast/ChromecastFileServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Range"
.end annotation


# instance fields
.field final end:J

.field final start:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/telegram/messenger/chromecast/ChromecastFileServer$Range;->start:J

    iput-wide p3, p0, Lorg/telegram/messenger/chromecast/ChromecastFileServer$Range;->end:J

    return-void
.end method
