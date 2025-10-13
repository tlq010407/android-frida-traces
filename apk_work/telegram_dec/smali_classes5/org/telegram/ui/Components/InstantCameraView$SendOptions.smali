.class public Lorg/telegram/ui/Components/InstantCameraView$SendOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/InstantCameraView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SendOptions"
.end annotation


# instance fields
.field effectId:J

.field notify:Z

.field scheduleDate:I

.field stars:J

.field ttl:I


# direct methods
.method public constructor <init>(ZIIJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lorg/telegram/ui/Components/InstantCameraView$SendOptions;->notify:Z

    iput p2, p0, Lorg/telegram/ui/Components/InstantCameraView$SendOptions;->scheduleDate:I

    iput p3, p0, Lorg/telegram/ui/Components/InstantCameraView$SendOptions;->ttl:I

    iput-wide p4, p0, Lorg/telegram/ui/Components/InstantCameraView$SendOptions;->effectId:J

    iput-wide p6, p0, Lorg/telegram/ui/Components/InstantCameraView$SendOptions;->stars:J

    return-void
.end method
