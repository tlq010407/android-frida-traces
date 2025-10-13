.class public abstract Lcom/huawei/location/lite/common/log/LogConsole;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static IS_DEBUG:Z = false

.field private static final LOG_ADAPTOR:Lcom/huawei/location/lite/common/log/yn;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/huawei/location/lite/common/log/yn;

    invoke-direct {v0}, Lcom/huawei/location/lite/common/log/yn;-><init>()V

    sput-object v0, Lcom/huawei/location/lite/common/log/LogConsole;->LOG_ADAPTOR:Lcom/huawei/location/lite/common/log/yn;

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/huawei/location/lite/common/log/LogConsole;->IS_DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/huawei/location/lite/common/log/LogConsole;->LOG_ADAPTOR:Lcom/huawei/location/lite/common/log/yn;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p0, p1}, Lcom/huawei/location/lite/common/log/yn;->yn(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/huawei/location/lite/common/util/RouterComponentType;->getComponentType()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/huawei/location/lite/common/log/logwrite/LogWriteApi;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 0
    sget-object v0, Lcom/huawei/location/lite/common/log/LogConsole;->LOG_ADAPTOR:Lcom/huawei/location/lite/common/log/yn;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p0, p1}, Lcom/huawei/location/lite/common/log/yn;->yn(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/huawei/location/lite/common/util/RouterComponentType;->getComponentType()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/huawei/location/lite/common/log/logwrite/LogWriteApi;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .line 0
    sget-object v0, Lcom/huawei/location/lite/common/log/LogConsole;->LOG_ADAPTOR:Lcom/huawei/location/lite/common/log/yn;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p0, p1}, Lcom/huawei/location/lite/common/log/yn;->yn(ILjava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-static {p0, p1}, Lcom/huawei/location/lite/common/log/Vw;->yn(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p2

    invoke-static {p0, p2}, Lcom/huawei/location/lite/common/log/Vw;->yn(Ljava/lang/String;[B)V

    :cond_0
    invoke-static {}, Lcom/huawei/location/lite/common/util/RouterComponentType;->getComponentType()I

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lcom/huawei/location/lite/common/log/logwrite/LogWriteApi;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/util/List;Z)V
    .locals 3

    .line 0
    sget-object v0, Lcom/huawei/location/lite/common/log/LogConsole;->LOG_ADAPTOR:Lcom/huawei/location/lite/common/log/yn;

    invoke-static {p1}, Lcom/huawei/location/lite/common/log/Vw;->yn(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v0, v2, p0, v1}, Lcom/huawei/location/lite/common/log/yn;->yn(ILjava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-static {p0, p1}, Lcom/huawei/location/lite/common/log/Vw;->yn(Ljava/lang/String;Ljava/util/List;)[B

    move-result-object p1

    invoke-static {p0, p1}, Lcom/huawei/location/lite/common/log/Vw;->yn(Ljava/lang/String;[B)V

    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 0
    sget-object v0, Lcom/huawei/location/lite/common/log/LogConsole;->LOG_ADAPTOR:Lcom/huawei/location/lite/common/log/yn;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p0, p1}, Lcom/huawei/location/lite/common/log/yn;->yn(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/huawei/location/lite/common/util/RouterComponentType;->getComponentType()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/huawei/location/lite/common/log/logwrite/LogWriteApi;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .line 0
    sget-object v0, Lcom/huawei/location/lite/common/log/LogConsole;->LOG_ADAPTOR:Lcom/huawei/location/lite/common/log/yn;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p0, p1}, Lcom/huawei/location/lite/common/log/yn;->yn(ILjava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-static {p0, p1}, Lcom/huawei/location/lite/common/log/Vw;->yn(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p2

    invoke-static {p0, p2}, Lcom/huawei/location/lite/common/log/Vw;->yn(Ljava/lang/String;[B)V

    :cond_0
    invoke-static {}, Lcom/huawei/location/lite/common/util/RouterComponentType;->getComponentType()I

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lcom/huawei/location/lite/common/log/logwrite/LogWriteApi;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/huawei/location/lite/common/log/LogConsole;->LOG_ADAPTOR:Lcom/huawei/location/lite/common/log/yn;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p0, p1}, Lcom/huawei/location/lite/common/log/yn;->yn(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/huawei/location/lite/common/util/RouterComponentType;->getComponentType()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/huawei/location/lite/common/log/logwrite/LogWriteApi;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
