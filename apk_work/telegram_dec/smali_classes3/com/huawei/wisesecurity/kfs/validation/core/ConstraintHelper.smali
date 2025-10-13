.class public abstract Lcom/huawei/wisesecurity/kfs/validation/core/ConstraintHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final VALIDATORS_MAP:Ljava/util/Map;


# direct methods
.method public static constructor <clinit>()V
    .locals 17

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/huawei/wisesecurity/kfs/validation/core/ConstraintHelper;->VALIDATORS_MAP:Ljava/util/Map;

    new-instance v1, Lcom/huawei/wisesecurity/kfs/validation/core/ValidatorDescriptorImpl;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Lcom/huawei/wisesecurity/kfs/validation/constrains/validator/KfsNotNullValidator;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-direct {v1, v3}, Lcom/huawei/wisesecurity/kfs/validation/core/ValidatorDescriptorImpl;-><init>([Ljava/lang/Class;)V

    const-class v3, Lcom/huawei/wisesecurity/kfs/validation/constrains/KfsNotNull;

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/huawei/wisesecurity/kfs/validation/core/ValidatorDescriptorImpl;

    const/16 v3, 0xc

    new-array v4, v3, [Ljava/lang/Class;

    const-class v6, Lcom/huawei/wisesecurity/kfs/validation/constrains/validator/notempty/KfsNotEmptyValidatorForCharSequence;

    aput-object v6, v4, v5

    const-class v6, Lcom/huawei/wisesecurity/kfs/validation/constrains/validator/notempty/KfsNotEmptyValidatorForCollection;

    aput-object v6, v4, v2

    const-class v6, Lcom/huawei/wisesecurity/kfs/validation/constrains/validator/notempty/KfsNotEmptyValidatorForMap;

    const/4 v7, 0x2

    aput-object v6, v4, v7

    const-class v6, Lcom/huawei/wisesecurity/kfs/validation/constrains/validator/notempty/array/KfsNotEmptyValidatorForBooleanArray;

    const/4 v8, 0x3

    aput-object v6, v4, v8

    const-class v6, Lcom/huawei/wisesecurity/kfs/validation/constrains/validator/notempty/array/KfsNotEmptyValidatorForByteArray;

    const/4 v9, 0x4

    aput-object v6, v4, v9

    const-class v6, Lcom/huawei/wisesecurity/kfs/validation/constrains/validator/notempty/array/KfsNotEmptyValidatorForCharArray;

    const/4 v10, 0x5

    aput-object v6, v4, v10

    const-class v6, Lcom/huawei/wisesecurity/kfs/validation/constrains/validator/notempty/array/KfsNotEmptyValidatorForDoubleArray;

    const/4 v11, 0x6

    aput-object v6, v4, v11

    const-class v6, Lcom/huawei/wisesecurity/kfs/validation/constrains/validator/notempty/array/KfsNotEmptyValidatorForFloatArray;

    const/4 v12, 0x7

    aput-object v6, v4, v12

    const-class v6, Lcom/huawei/wisesecurity/kfs/validation/constrains/validator/notempty/array/KfsNotEmptyValidatorForIntArray;

    const/16 v13, 0x8

    aput-object v6, v4, v13

    const-class v6, Lcom/huawei/wisesecurity/kfs/validation/constrains/validator/notempty/array/KfsNotEmptyValidatorForLongArray;

    const/16 v14, 0x9

    aput-object v6, v4, v14

    const-class v6, Lcom/huawei/wisesecurity/kfs/validation/constrains/validator/notempty/array/KfsNotEmptyValidatorForShortArray;

    const/16 v15, 0xa

    aput-object v6, v4, v15

    const-class v6, Lcom/huawei/wisesecurity/kfs/validation/constrains/validator/notempty/array/KfsNotEmptyValidatorForObjectArray;

    const/16 v16, 0xb

    aput-object v6, v4, v16

    invoke-direct {v1, v4}, Lcom/huawei/wisesecurity/kfs/validation/core/ValidatorDescriptorImpl;-><init>([Ljava/lang/Class;)V

    const-class v4, Lcom/huawei/wisesecurity/kfs/validation/constrains/KfsNotEmpty;

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/huawei/wisesecurity/kfs/validation/core/ValidatorDescriptorImpl;

    new-array v4, v9, [Ljava/lang/Class;

    const-class v6, Lcom/huawei/wisesecurity/kfs/validation/constrains/validator/in/KfsInValidatorForString;

    aput-object v6, v4, v5

    const-class v6, Lcom/huawei/wisesecurity/kfs/validation/constrains/validator/in/KfsInValidatorForInteger;

    aput-object v6, v4, v2

    const-class v6, Lcom/huawei/wisesecurity/kfs/validation/constrains/validator/in/KfsInValidatorForLong;

    aput-object v6, v4, v7

    const-class v6, Lcom/huawei/wisesecurity/kfs/validation/constrains/validator/in/KfsInValidatorForShort;

    aput-object v6, v4, v8

    invoke-direct {v1, v4}, Lcom/huawei/wisesecurity/kfs/validation/core/ValidatorDescriptorImpl;-><init>([Ljava/lang/Class;)V

    const-class v4, Lcom/huawei/wisesecurity/kfs/validation/constrains/KfsIn;

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/huawei/wisesecurity/kfs/validation/core/ValidatorDescriptorImpl;

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Lcom/huawei/wisesecurity/kfs/validation/constrains/validator/size/KfsSizeValidatorForCharSequence;

    aput-object v4, v3, v5

    const-class v4, Lcom/huawei/wisesecurity/kfs/validation/constrains/validator/size/KfsSizeValidatorForCollection;

    aput-object v4, v3, v2

    const-class v4, Lcom/huawei/wisesecurity/kfs/validation/constrains/validator/size/KfsSizeValidatorForMap;

    aput-object v4, v3, v7

    const-class v4, Lcom/huawei/wisesecurity/kfs/validation/constrains/validator/size/array/KfsSizeValidatorForBooleanArray;

    aput-object v4, v3, v8

    const-class v4, Lcom/huawei/wisesecurity/kfs/validation/constrains/validator/size/array/KfsSizeValidatorForByteArray;

    aput-object v4, v3, v9

    const-class v4, Lcom/huawei/wisesecurity/kfs/validation/constrains/validator/size/array/KfsSizeValidatorForCharArray;

    aput-object v4, v3, v10

    const-class v4, Lcom/huawei/wisesecurity/kfs/validation/constrains/validator/size/array/KfsSizeValidatorForDoubleArray;

    aput-object v4, v3, v11

    const-class v4, Lcom/huawei/wisesecurity/kfs/validation/constrains/validator/size/array/KfsSizeValidatorForFloatArray;

    aput-object v4, v3, v12

    const-class v4, Lcom/huawei/wisesecurity/kfs/validation/constrains/validator/size/array/KfsSizeValidatorForIntArray;

    aput-object v4, v3, v13

    const-class v4, Lcom/huawei/wisesecurity/kfs/validation/constrains/validator/size/array/KfsSizeValidatorForLongArray;

    aput-object v4, v3, v14

    const-class v4, Lcom/huawei/wisesecurity/kfs/validation/constrains/validator/size/array/KfsSizeValidatorForShortArray;

    aput-object v4, v3, v15

    const-class v4, Lcom/huawei/wisesecurity/kfs/validation/constrains/validator/size/array/KfsSizeValidatorForObjectArray;

    aput-object v4, v3, v16

    invoke-direct {v1, v3}, Lcom/huawei/wisesecurity/kfs/validation/core/ValidatorDescriptorImpl;-><init>([Ljava/lang/Class;)V

    const-class v3, Lcom/huawei/wisesecurity/kfs/validation/constrains/KfsSize;

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/huawei/wisesecurity/kfs/validation/core/ValidatorDescriptorImpl;

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Lcom/huawei/wisesecurity/kfs/validation/constrains/validator/KfsNotBlankValidator;

    aput-object v4, v3, v5

    invoke-direct {v1, v3}, Lcom/huawei/wisesecurity/kfs/validation/core/ValidatorDescriptorImpl;-><init>([Ljava/lang/Class;)V

    const-class v3, Lcom/huawei/wisesecurity/kfs/validation/constrains/KfsNotBlank;

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/huawei/wisesecurity/kfs/validation/core/ValidatorDescriptorImpl;

    new-array v3, v7, [Ljava/lang/Class;

    const-class v4, Lcom/huawei/wisesecurity/kfs/validation/constrains/validator/number/min/KfsMinValidatorForInteger;

    aput-object v4, v3, v5

    const-class v4, Lcom/huawei/wisesecurity/kfs/validation/constrains/validator/number/min/KfsMinValidatorForLong;

    aput-object v4, v3, v2

    invoke-direct {v1, v3}, Lcom/huawei/wisesecurity/kfs/validation/core/ValidatorDescriptorImpl;-><init>([Ljava/lang/Class;)V

    const-class v3, Lcom/huawei/wisesecurity/kfs/validation/constrains/KfsMin;

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/huawei/wisesecurity/kfs/validation/core/ValidatorDescriptorImpl;

    new-array v3, v7, [Ljava/lang/Class;

    const-class v4, Lcom/huawei/wisesecurity/kfs/validation/constrains/validator/number/max/KfsMaxValidatorForInteger;

    aput-object v4, v3, v5

    const-class v4, Lcom/huawei/wisesecurity/kfs/validation/constrains/validator/number/max/KfsMaxValidatorForLong;

    aput-object v4, v3, v2

    invoke-direct {v1, v3}, Lcom/huawei/wisesecurity/kfs/validation/core/ValidatorDescriptorImpl;-><init>([Ljava/lang/Class;)V

    const-class v3, Lcom/huawei/wisesecurity/kfs/validation/constrains/KfsMax;

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/huawei/wisesecurity/kfs/validation/core/ValidatorDescriptorImpl;

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Lcom/huawei/wisesecurity/kfs/validation/constrains/validator/KfsIntegerRangeValidator;

    aput-object v4, v3, v5

    invoke-direct {v1, v3}, Lcom/huawei/wisesecurity/kfs/validation/core/ValidatorDescriptorImpl;-><init>([Ljava/lang/Class;)V

    const-class v3, Lcom/huawei/wisesecurity/kfs/validation/constrains/KfsIntegerRange;

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/huawei/wisesecurity/kfs/validation/core/ValidatorDescriptorImpl;

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Lcom/huawei/wisesecurity/kfs/validation/constrains/validator/KfsLongRangeValidator;

    aput-object v4, v3, v5

    invoke-direct {v1, v3}, Lcom/huawei/wisesecurity/kfs/validation/core/ValidatorDescriptorImpl;-><init>([Ljava/lang/Class;)V

    const-class v3, Lcom/huawei/wisesecurity/kfs/validation/constrains/KfsLongRange;

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/huawei/wisesecurity/kfs/validation/core/ValidatorDescriptorImpl;

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Lcom/huawei/wisesecurity/kfs/validation/constrains/validator/KfsStringRangeValidator;

    aput-object v4, v3, v5

    invoke-direct {v1, v3}, Lcom/huawei/wisesecurity/kfs/validation/core/ValidatorDescriptorImpl;-><init>([Ljava/lang/Class;)V

    const-class v3, Lcom/huawei/wisesecurity/kfs/validation/constrains/KfsStringRange;

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/huawei/wisesecurity/kfs/validation/core/ValidatorDescriptorImpl;

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Lcom/huawei/wisesecurity/kfs/validation/constrains/validator/KfsStringNotEmptyValidator;

    aput-object v3, v2, v5

    invoke-direct {v1, v2}, Lcom/huawei/wisesecurity/kfs/validation/core/ValidatorDescriptorImpl;-><init>([Ljava/lang/Class;)V

    const-class v2, Lcom/huawei/wisesecurity/kfs/validation/constrains/KfsStringNotEmpty;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getValidator(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;
    .locals 3

    sget-object v0, Lcom/huawei/wisesecurity/kfs/validation/core/ConstraintHelper;->VALIDATORS_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/wisesecurity/kfs/validation/core/ValidatorDescriptor;

    invoke-interface {v0, p1}, Lcom/huawei/wisesecurity/kfs/validation/core/ValidatorDescriptor;->getValidator(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/huawei/wisesecurity/kfs/exception/KfsValidationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported target class:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for constraint:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/huawei/wisesecurity/kfs/exception/KfsValidationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
