.class public Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/MessageObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GroupedMessagePosition"
.end annotation


# instance fields
.field public aspectRatio:F

.field public edge:Z

.field public flags:I

.field public last:Z

.field public left:F

.field public leftSpanOffset:I

.field public maxX:B

.field public maxY:B

.field public minX:B

.field public minY:B

.field public ph:F

.field public photoHeight:I

.field public photoWidth:I

.field public pw:I

.field public siblingHeights:[F

.field public spanSize:I

.field public top:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public set(IIIIIFI)V
    .locals 0

    int-to-byte p1, p1

    iput-byte p1, p0, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minX:B

    int-to-byte p1, p2

    iput-byte p1, p0, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->maxX:B

    int-to-byte p1, p3

    iput-byte p1, p0, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minY:B

    int-to-byte p1, p4

    iput-byte p1, p0, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->maxY:B

    iput p5, p0, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->pw:I

    iput p5, p0, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    iput p6, p0, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->ph:F

    int-to-byte p1, p7

    iput p1, p0, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    return-void
.end method
