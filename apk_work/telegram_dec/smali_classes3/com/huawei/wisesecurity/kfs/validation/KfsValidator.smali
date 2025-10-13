.class public abstract Lcom/huawei/wisesecurity/kfs/validation/KfsValidator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CACHE_BEAN_META_DATA_MAP:Ljava/util/Map;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/huawei/wisesecurity/kfs/validation/KfsValidator;->CACHE_BEAN_META_DATA_MAP:Ljava/util/Map;

    return-void
.end method

.method public static getBeanMetaData(Ljava/lang/Class;)Lcom/huawei/wisesecurity/kfs/validation/metadata/BeanMetaData;
    .locals 2

    sget-object v0, Lcom/huawei/wisesecurity/kfs/validation/KfsValidator;->CACHE_BEAN_META_DATA_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/huawei/wisesecurity/kfs/validation/metadata/BeanMetaData;

    return-object p0

    :cond_0
    new-instance v1, Lcom/huawei/wisesecurity/kfs/validation/metadata/BeanMetaData;

    invoke-direct {v1, p0}, Lcom/huawei/wisesecurity/kfs/validation/metadata/BeanMetaData;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public static validate(Ljava/lang/Object;)V
    .locals 2

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/wisesecurity/kfs/validation/KfsValidator;->getBeanMetaData(Ljava/lang/Class;)Lcom/huawei/wisesecurity/kfs/validation/metadata/BeanMetaData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/wisesecurity/kfs/validation/metadata/BeanMetaData;->hasConstraints()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p0}, Lcom/huawei/wisesecurity/kfs/validation/metadata/BeanMetaData;->validate(Ljava/lang/Object;)V

    return-void

    :cond_1
    new-instance p0, Lcom/huawei/wisesecurity/kfs/exception/KfsValidationException;

    const-string v0, "validate bean is null"

    invoke-direct {p0, v0}, Lcom/huawei/wisesecurity/kfs/exception/KfsValidationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
