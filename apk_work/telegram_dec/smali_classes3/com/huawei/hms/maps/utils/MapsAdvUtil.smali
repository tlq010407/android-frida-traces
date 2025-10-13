.class public Lcom/huawei/hms/maps/utils/MapsAdvUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/huawei/hms/maps/utils/MapsAdvUtil;

    invoke-direct {v1}, Lcom/huawei/hms/maps/utils/MapsAdvUtil;-><init>()V

    const-class v1, Lcom/huawei/hms/maps/utils/MapsAdvUtil;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {p0, v0, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The class:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not found."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "MapsAdvUtil"

    invoke-static {v1, p0}, Lcom/huawei/hms/maps/utils/LogM;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v0
.end method

.method public static containsMapsAdvance()Z
    .locals 1

    const-string v0, "com.huawei.hms.maps.HuaweiMapEx"

    invoke-static {v0}, Lcom/huawei/hms/maps/utils/MapsAdvUtil;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static containsMapsBasic()Z
    .locals 1

    const-string v0, "com.huawei.hms.maps.provider.inhuawei.MapViewDelegate"

    invoke-static {v0}, Lcom/huawei/hms/maps/utils/MapsAdvUtil;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getAccessToken()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/huawei/hms/maps/utils/MapsAdvUtil;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static setAccessToken(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/huawei/hms/maps/utils/MapsAdvUtil;->a:Ljava/lang/String;

    return-void
.end method
