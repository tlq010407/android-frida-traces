.class public final Lcom/huawei/location/lite/common/http/sign/yn$yn;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/location/lite/common/http/sign/yn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "yn"
.end annotation


# instance fields
.field yn:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/huawei/location/lite/common/http/sign/yn$yn;->yn:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public yn(Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/location/lite/common/http/sign/yn$yn;
    .locals 1

    iget-object v0, p0, Lcom/huawei/location/lite/common/http/sign/yn$yn;->yn:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
