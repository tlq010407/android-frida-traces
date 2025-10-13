.class public final Lorg/telegram/messenger/HuaweiLocationProvider$HuaweiApiClientImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/ILocationServiceProvider$IMapApiClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/HuaweiLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HuaweiApiClientImpl"
.end annotation


# instance fields
.field private apiClient:Lcom/huawei/hms/api/HuaweiApiClient;


# direct methods
.method private constructor <init>(Lcom/huawei/hms/api/HuaweiApiClient;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/HuaweiLocationProvider$HuaweiApiClientImpl;->apiClient:Lcom/huawei/hms/api/HuaweiApiClient;

    return-void
.end method

.method synthetic constructor <init>(Lcom/huawei/hms/api/HuaweiApiClient;Lorg/telegram/messenger/HuaweiLocationProvider$1;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/HuaweiLocationProvider$HuaweiApiClientImpl;-><init>(Lcom/huawei/hms/api/HuaweiApiClient;)V

    return-void
.end method


# virtual methods
.method public connect()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/HuaweiLocationProvider$HuaweiApiClientImpl;->apiClient:Lcom/huawei/hms/api/HuaweiApiClient;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/huawei/hms/api/HuaweiApiClient;->connect(Landroid/app/Activity;)V

    return-void
.end method

.method public disconnect()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/HuaweiLocationProvider$HuaweiApiClientImpl;->apiClient:Lcom/huawei/hms/api/HuaweiApiClient;

    invoke-virtual {v0}, Lcom/huawei/hms/api/HuaweiApiClient;->disconnect()V

    return-void
.end method
