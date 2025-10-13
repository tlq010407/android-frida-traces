.class public final synthetic Lcom/huawei/location/crowdsourcing/dC$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/huawei/location/crowdsourcing/common/util/yn;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 0
    check-cast p1, Landroid/net/wifi/ScanResult;

    check-cast p2, Landroid/net/wifi/ScanResult;

    invoke-static {p1, p2}, Lcom/huawei/location/crowdsourcing/dC;->$r8$lambda$qnQAP8t4P60qUq8sDSvtxcLVpB8(Landroid/net/wifi/ScanResult;Landroid/net/wifi/ScanResult;)Z

    move-result p1

    return p1
.end method
