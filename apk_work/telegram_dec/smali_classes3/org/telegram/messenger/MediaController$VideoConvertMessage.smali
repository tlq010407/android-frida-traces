.class public Lorg/telegram/messenger/MediaController$VideoConvertMessage;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/MediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VideoConvertMessage"
.end annotation


# instance fields
.field public currentAccount:I

.field public foreground:Z

.field public foregroundConversion:Z

.field public messageObject:Lorg/telegram/messenger/MessageObject;

.field public videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/VideoEditedInfo;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MediaController$VideoConvertMessage;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget p1, p1, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    iput p1, p0, Lorg/telegram/messenger/MediaController$VideoConvertMessage;->currentAccount:I

    iput-object p2, p0, Lorg/telegram/messenger/MediaController$VideoConvertMessage;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iput-boolean p3, p0, Lorg/telegram/messenger/MediaController$VideoConvertMessage;->foreground:Z

    iput-boolean p4, p0, Lorg/telegram/messenger/MediaController$VideoConvertMessage;->foregroundConversion:Z

    return-void
.end method
