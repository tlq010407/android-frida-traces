.class public final Lorg/telegram/messenger/voip/Instance$TrafficStats;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/voip/Instance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TrafficStats"
.end annotation


# instance fields
.field public final bytesReceivedMobile:J

.field public final bytesReceivedWifi:J

.field public final bytesSentMobile:J

.field public final bytesSentWifi:J


# direct methods
.method public constructor <init>(JJJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/telegram/messenger/voip/Instance$TrafficStats;->bytesSentWifi:J

    iput-wide p3, p0, Lorg/telegram/messenger/voip/Instance$TrafficStats;->bytesReceivedWifi:J

    iput-wide p5, p0, Lorg/telegram/messenger/voip/Instance$TrafficStats;->bytesSentMobile:J

    iput-wide p7, p0, Lorg/telegram/messenger/voip/Instance$TrafficStats;->bytesReceivedMobile:J

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TrafficStats{bytesSentWifi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/telegram/messenger/voip/Instance$TrafficStats;->bytesSentWifi:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", bytesReceivedWifi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/telegram/messenger/voip/Instance$TrafficStats;->bytesReceivedWifi:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", bytesSentMobile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/telegram/messenger/voip/Instance$TrafficStats;->bytesSentMobile:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", bytesReceivedMobile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/telegram/messenger/voip/Instance$TrafficStats;->bytesReceivedMobile:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
