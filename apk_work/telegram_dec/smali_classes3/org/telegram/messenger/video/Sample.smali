.class public Lorg/telegram/messenger/video/Sample;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private offset:J

.field private size:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/telegram/messenger/video/Sample;->offset:J

    iput-wide p3, p0, Lorg/telegram/messenger/video/Sample;->size:J

    return-void
.end method


# virtual methods
.method public getOffset()J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/messenger/video/Sample;->offset:J

    return-wide v0
.end method

.method public getSize()J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/messenger/video/Sample;->size:J

    return-wide v0
.end method
