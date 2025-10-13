.class Lcom/huawei/location/logic/LW$Vw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/location/logic/LW;->yn(Lcom/huawei/location/callback/d2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic yn:Lcom/huawei/location/callback/d2;


# direct methods
.method constructor <init>(Lcom/huawei/location/logic/LW;Lcom/huawei/location/callback/d2;)V
    .locals 0

    iput-object p2, p0, Lcom/huawei/location/logic/LW$Vw;->yn:Lcom/huawei/location/callback/d2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/huawei/location/lite/common/android/context/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/location/lite/common/util/LocationUtil;->isLocationEnabled(Landroid/content/Context;)Z

    move-result v0

    invoke-static {}, Lcom/huawei/location/lite/common/android/context/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/location/lite/common/util/NetworkUtil;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v1

    iget-object v2, p0, Lcom/huawei/location/logic/LW$Vw;->yn:Lcom/huawei/location/callback/d2;

    invoke-virtual {v2, v0, v1}, Lcom/huawei/location/callback/d2;->yn(ZZ)V

    return-void
.end method
