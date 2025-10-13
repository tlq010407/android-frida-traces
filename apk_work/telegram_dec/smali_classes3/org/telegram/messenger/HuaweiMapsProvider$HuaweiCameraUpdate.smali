.class public final Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiCameraUpdate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/HuaweiMapsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HuaweiCameraUpdate"
.end annotation


# instance fields
.field private cameraUpdate:Lcom/huawei/hms/maps/CameraUpdate;


# direct methods
.method private constructor <init>(Lcom/huawei/hms/maps/CameraUpdate;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiCameraUpdate;->cameraUpdate:Lcom/huawei/hms/maps/CameraUpdate;

    return-void
.end method

.method synthetic constructor <init>(Lcom/huawei/hms/maps/CameraUpdate;Lorg/telegram/messenger/HuaweiMapsProvider$1;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiCameraUpdate;-><init>(Lcom/huawei/hms/maps/CameraUpdate;)V

    return-void
.end method

.method static synthetic access$1400(Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiCameraUpdate;)Lcom/huawei/hms/maps/CameraUpdate;
    .locals 0

    iget-object p0, p0, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiCameraUpdate;->cameraUpdate:Lcom/huawei/hms/maps/CameraUpdate;

    return-object p0
.end method
