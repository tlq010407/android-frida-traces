.class public final enum Lcom/huawei/hms/opendevice/n$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/opendevice/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/huawei/hms/opendevice/n$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/huawei/hms/opendevice/n$b;

.field public static final enum b:Lcom/huawei/hms/opendevice/n$b;

.field public static final enum c:Lcom/huawei/hms/opendevice/n$b;

.field public static final enum d:Lcom/huawei/hms/opendevice/n$b;

.field public static final enum e:Lcom/huawei/hms/opendevice/n$b;

.field public static final enum f:Lcom/huawei/hms/opendevice/n$b;

.field public static final synthetic g:[Lcom/huawei/hms/opendevice/n$b;


# instance fields
.field public h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v0, Lcom/huawei/hms/opendevice/n$b;

    const/4 v1, 0x0

    const-string v2, "ios"

    const-string v3, "IOS"

    invoke-direct {v0, v3, v1, v2}, Lcom/huawei/hms/opendevice/n$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/huawei/hms/opendevice/n$b;->a:Lcom/huawei/hms/opendevice/n$b;

    new-instance v2, Lcom/huawei/hms/opendevice/n$b;

    const/4 v3, 0x1

    const-string v4, "android"

    const-string v5, "ANDROID"

    invoke-direct {v2, v5, v3, v4}, Lcom/huawei/hms/opendevice/n$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/huawei/hms/opendevice/n$b;->b:Lcom/huawei/hms/opendevice/n$b;

    new-instance v4, Lcom/huawei/hms/opendevice/n$b;

    const/4 v5, 0x2

    const-string v6, "harmony"

    const-string v7, "HARMONY"

    invoke-direct {v4, v7, v5, v6}, Lcom/huawei/hms/opendevice/n$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/huawei/hms/opendevice/n$b;->c:Lcom/huawei/hms/opendevice/n$b;

    new-instance v6, Lcom/huawei/hms/opendevice/n$b;

    const/4 v7, 0x3

    const-string v8, "windows"

    const-string v9, "WINDOWS"

    invoke-direct {v6, v9, v7, v8}, Lcom/huawei/hms/opendevice/n$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/huawei/hms/opendevice/n$b;->d:Lcom/huawei/hms/opendevice/n$b;

    new-instance v8, Lcom/huawei/hms/opendevice/n$b;

    const/4 v9, 0x4

    const-string v10, "embed"

    const-string v11, "EMBED"

    invoke-direct {v8, v11, v9, v10}, Lcom/huawei/hms/opendevice/n$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/huawei/hms/opendevice/n$b;->e:Lcom/huawei/hms/opendevice/n$b;

    new-instance v10, Lcom/huawei/hms/opendevice/n$b;

    const/4 v11, 0x5

    const-string v12, "others"

    const-string v13, "OTHERS"

    invoke-direct {v10, v13, v11, v12}, Lcom/huawei/hms/opendevice/n$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/huawei/hms/opendevice/n$b;->f:Lcom/huawei/hms/opendevice/n$b;

    const/4 v12, 0x6

    new-array v12, v12, [Lcom/huawei/hms/opendevice/n$b;

    aput-object v0, v12, v1

    aput-object v2, v12, v3

    aput-object v4, v12, v5

    aput-object v6, v12, v7

    aput-object v8, v12, v9

    aput-object v10, v12, v11

    sput-object v12, Lcom/huawei/hms/opendevice/n$b;->g:[Lcom/huawei/hms/opendevice/n$b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/huawei/hms/opendevice/n$b;->h:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/hms/opendevice/n$b;
    .locals 1

    const-class v0, Lcom/huawei/hms/opendevice/n$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/huawei/hms/opendevice/n$b;

    return-object p0
.end method

.method public static values()[Lcom/huawei/hms/opendevice/n$b;
    .locals 1

    sget-object v0, Lcom/huawei/hms/opendevice/n$b;->g:[Lcom/huawei/hms/opendevice/n$b;

    invoke-virtual {v0}, [Lcom/huawei/hms/opendevice/n$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/hms/opendevice/n$b;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/opendevice/n$b;->h:Ljava/lang/String;

    return-object v0
.end method
