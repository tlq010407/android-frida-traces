.class public abstract Lcom/huawei/location/lite/common/util/StringUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final INT_PATTERN:Ljava/util/regex/Pattern;

.field private static final VALID_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "\\d+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/huawei/location/lite/common/util/StringUtil;->INT_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "^[.0-9a-zA-Z_-]{1,}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/huawei/location/lite/common/util/StringUtil;->VALID_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public static isEmpty(Ljava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
