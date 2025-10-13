.class Lcom/huawei/location/lite/common/http/sign/ucs/yn$FB;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/huawei/wisesecurity/ucs/credential/outer/HACapability;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/location/lite/common/http/sign/ucs/yn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FB"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/huawei/location/lite/common/http/sign/ucs/yn$yn;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/huawei/location/lite/common/http/sign/ucs/yn$FB;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Landroid/content/Context;Ljava/lang/String;Lcom/huawei/wisesecurity/kfs/ha/message/ReportMsgBuilder;)V
    .locals 1

    invoke-static {}, Lcom/huawei/location/lite/common/report/Tracker;->getInstance()Lcom/huawei/location/lite/common/report/Tracker;

    move-result-object p1

    invoke-interface {p3}, Lcom/huawei/wisesecurity/kfs/ha/message/ReportMsgBuilder;->build()Ljava/util/LinkedHashMap;

    move-result-object p3

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2, p3}, Lcom/huawei/location/lite/common/report/Tracker;->onEvent(ILjava/lang/String;Ljava/util/LinkedHashMap;)V

    return-void
.end method
