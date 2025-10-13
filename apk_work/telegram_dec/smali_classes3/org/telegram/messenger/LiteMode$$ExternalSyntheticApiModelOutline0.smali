.class public abstract synthetic Lorg/telegram/messenger/LiteMode$$ExternalSyntheticApiModelOutline0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic m(Landroid/os/BatteryManager;I)I
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result p0

    return p0
.end method
