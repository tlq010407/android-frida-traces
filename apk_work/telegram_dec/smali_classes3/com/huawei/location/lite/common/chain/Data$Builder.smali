.class public final Lcom/huawei/location/lite/common/chain/Data$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/location/lite/common/chain/Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mValues:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/huawei/location/lite/common/chain/Data$Builder;->mValues:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public build()Lcom/huawei/location/lite/common/chain/Data;
    .locals 2

    new-instance v0, Lcom/huawei/location/lite/common/chain/Data;

    iget-object v1, p0, Lcom/huawei/location/lite/common/chain/Data$Builder;->mValues:Ljava/util/Map;

    invoke-direct {v0, v1}, Lcom/huawei/location/lite/common/chain/Data;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)Lcom/huawei/location/lite/common/chain/Data$Builder;
    .locals 4

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/huawei/location/lite/common/chain/Data$Builder;->mValues:Ljava/util/Map;

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Integer;

    if-eq v0, v1, :cond_2

    const-class v1, Ljava/lang/String;

    if-eq v0, v1, :cond_2

    instance-of v1, p2, Ljava/io/Serializable;

    if-nez v1, :cond_2

    instance-of v1, p2, Landroid/os/Parcelable;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object v0, v2, p1

    const-string p1, "Key %s has invalid type %s"

    invoke-static {v1, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/huawei/location/lite/common/chain/Data$Builder;->mValues:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-object p0
.end method

.method public putAll(Lcom/huawei/location/lite/common/chain/Data;)Lcom/huawei/location/lite/common/chain/Data$Builder;
    .locals 0

    .line 0
    iget-object p1, p1, Lcom/huawei/location/lite/common/chain/Data;->mValues:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/huawei/location/lite/common/chain/Data$Builder;->putAll(Ljava/util/Map;)Lcom/huawei/location/lite/common/chain/Data$Builder;

    return-object p0
.end method

.method public putAll(Ljava/util/Map;)Lcom/huawei/location/lite/common/chain/Data$Builder;
    .locals 2

    .line 0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/huawei/location/lite/common/chain/Data$Builder;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/huawei/location/lite/common/chain/Data$Builder;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public putInt(Ljava/lang/String;I)Lcom/huawei/location/lite/common/chain/Data$Builder;
    .locals 1

    iget-object v0, p0, Lcom/huawei/location/lite/common/chain/Data$Builder;->mValues:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)Lcom/huawei/location/lite/common/chain/Data$Builder;
    .locals 1

    iget-object v0, p0, Lcom/huawei/location/lite/common/chain/Data$Builder;->mValues:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/location/lite/common/chain/Data$Builder;
    .locals 1

    iget-object v0, p0, Lcom/huawei/location/lite/common/chain/Data$Builder;->mValues:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
