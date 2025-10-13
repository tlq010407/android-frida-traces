.class public final Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiUISettings;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/IMapsProvider$IUISettings;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/HuaweiMapsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HuaweiUISettings"
.end annotation


# instance fields
.field private uiSettings:Lcom/huawei/hms/maps/UiSettings;


# direct methods
.method private constructor <init>(Lcom/huawei/hms/maps/UiSettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiUISettings;->uiSettings:Lcom/huawei/hms/maps/UiSettings;

    return-void
.end method

.method synthetic constructor <init>(Lcom/huawei/hms/maps/UiSettings;Lorg/telegram/messenger/HuaweiMapsProvider$1;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiUISettings;-><init>(Lcom/huawei/hms/maps/UiSettings;)V

    return-void
.end method


# virtual methods
.method public setCompassEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiUISettings;->uiSettings:Lcom/huawei/hms/maps/UiSettings;

    invoke-virtual {v0, p1}, Lcom/huawei/hms/maps/UiSettings;->setCompassEnabled(Z)V

    return-void
.end method

.method public setMyLocationButtonEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiUISettings;->uiSettings:Lcom/huawei/hms/maps/UiSettings;

    invoke-virtual {v0, p1}, Lcom/huawei/hms/maps/UiSettings;->setMyLocationButtonEnabled(Z)V

    return-void
.end method

.method public setZoomControlsEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiUISettings;->uiSettings:Lcom/huawei/hms/maps/UiSettings;

    invoke-virtual {v0, p1}, Lcom/huawei/hms/maps/UiSettings;->setZoomControlsEnabled(Z)V

    return-void
.end method
