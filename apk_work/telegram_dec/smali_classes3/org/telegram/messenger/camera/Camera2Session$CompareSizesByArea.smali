.class Lorg/telegram/messenger/camera/Camera2Session$CompareSizesByArea;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/camera/Camera2Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CompareSizesByArea"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/util/Size;",
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
.method public compare(Landroid/util/Size;Landroid/util/Size;)I
    .locals 4

    .line 0
    invoke-static {p1}, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticApiModelOutline0;->m(Landroid/util/Size;)I

    move-result v0

    int-to-long v0, v0

    invoke-static {p1}, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticApiModelOutline8;->m(Landroid/util/Size;)I

    move-result p1

    int-to-long v2, p1

    mul-long v0, v0, v2

    invoke-static {p2}, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticApiModelOutline0;->m(Landroid/util/Size;)I

    move-result p1

    int-to-long v2, p1

    invoke-static {p2}, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticApiModelOutline8;->m(Landroid/util/Size;)I

    move-result p1

    int-to-long p1, p1

    mul-long v2, v2, p1

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->signum(J)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 0
    invoke-static {p1}, Landroidx/core/os/BundleKt$$ExternalSyntheticApiModelOutline1;->m(Ljava/lang/Object;)Landroid/util/Size;

    move-result-object p1

    invoke-static {p2}, Landroidx/core/os/BundleKt$$ExternalSyntheticApiModelOutline1;->m(Ljava/lang/Object;)Landroid/util/Size;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/camera/Camera2Session$CompareSizesByArea;->compare(Landroid/util/Size;Landroid/util/Size;)I

    move-result p1

    return p1
.end method
