.class Lorg/telegram/messenger/camera/CameraController$CompareSizesByArea;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/camera/CameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CompareSizesByArea"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/telegram/messenger/camera/Size;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 0
    check-cast p1, Lorg/telegram/messenger/camera/Size;

    check-cast p2, Lorg/telegram/messenger/camera/Size;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/camera/CameraController$CompareSizesByArea;->compare(Lorg/telegram/messenger/camera/Size;Lorg/telegram/messenger/camera/Size;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/telegram/messenger/camera/Size;Lorg/telegram/messenger/camera/Size;)I
    .locals 4

    .line 0
    invoke-virtual {p1}, Lorg/telegram/messenger/camera/Size;->getWidth()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1}, Lorg/telegram/messenger/camera/Size;->getHeight()I

    move-result p1

    int-to-long v2, p1

    mul-long v0, v0, v2

    invoke-virtual {p2}, Lorg/telegram/messenger/camera/Size;->getWidth()I

    move-result p1

    int-to-long v2, p1

    invoke-virtual {p2}, Lorg/telegram/messenger/camera/Size;->getHeight()I

    move-result p1

    int-to-long p1, p1

    mul-long v2, v2, p1

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->signum(J)I

    move-result p1

    return p1
.end method
