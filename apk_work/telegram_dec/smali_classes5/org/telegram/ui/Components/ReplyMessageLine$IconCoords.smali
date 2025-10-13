.class Lorg/telegram/ui/Components/ReplyMessageLine$IconCoords;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ReplyMessageLine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IconCoords"
.end annotation


# instance fields
.field public a:F

.field public q:Z

.field public s:F

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/telegram/ui/Components/ReplyMessageLine$IconCoords;->x:F

    iput p2, p0, Lorg/telegram/ui/Components/ReplyMessageLine$IconCoords;->y:F

    iput p3, p0, Lorg/telegram/ui/Components/ReplyMessageLine$IconCoords;->s:F

    iput p4, p0, Lorg/telegram/ui/Components/ReplyMessageLine$IconCoords;->a:F

    return-void
.end method

.method public constructor <init>(FFFFZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/ReplyMessageLine$IconCoords;-><init>(FFFF)V

    iput-boolean p5, p0, Lorg/telegram/ui/Components/ReplyMessageLine$IconCoords;->q:Z

    return-void
.end method
