.class final enum Lcom/huawei/location/crowdsourcing/Config$Vw;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/location/crowdsourcing/Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Vw"
.end annotation


# static fields
.field public static final enum FB:Lcom/huawei/location/crowdsourcing/Config$Vw;

.field public static final enum LW:Lcom/huawei/location/crowdsourcing/Config$Vw;

.field public static final enum Vw:Lcom/huawei/location/crowdsourcing/Config$Vw;

.field private static final synthetic dC:[Lcom/huawei/location/crowdsourcing/Config$Vw;

.field public static final enum yn:Lcom/huawei/location/crowdsourcing/Config$Vw;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/huawei/location/crowdsourcing/Config$Vw;

    const-string v1, "CLOSE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/huawei/location/crowdsourcing/Config$Vw;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/location/crowdsourcing/Config$Vw;->yn:Lcom/huawei/location/crowdsourcing/Config$Vw;

    new-instance v1, Lcom/huawei/location/crowdsourcing/Config$Vw;

    const-string v3, "OPEN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/huawei/location/crowdsourcing/Config$Vw;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/huawei/location/crowdsourcing/Config$Vw;->Vw:Lcom/huawei/location/crowdsourcing/Config$Vw;

    new-instance v3, Lcom/huawei/location/crowdsourcing/Config$Vw;

    const-string v5, "WIFI"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/huawei/location/crowdsourcing/Config$Vw;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/huawei/location/crowdsourcing/Config$Vw;->FB:Lcom/huawei/location/crowdsourcing/Config$Vw;

    new-instance v5, Lcom/huawei/location/crowdsourcing/Config$Vw;

    const-string v7, "CELL"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/huawei/location/crowdsourcing/Config$Vw;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/huawei/location/crowdsourcing/Config$Vw;->LW:Lcom/huawei/location/crowdsourcing/Config$Vw;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/huawei/location/crowdsourcing/Config$Vw;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/huawei/location/crowdsourcing/Config$Vw;->dC:[Lcom/huawei/location/crowdsourcing/Config$Vw;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/location/crowdsourcing/Config$Vw;
    .locals 1

    const-class v0, Lcom/huawei/location/crowdsourcing/Config$Vw;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/huawei/location/crowdsourcing/Config$Vw;

    return-object p0
.end method

.method public static values()[Lcom/huawei/location/crowdsourcing/Config$Vw;
    .locals 1

    sget-object v0, Lcom/huawei/location/crowdsourcing/Config$Vw;->dC:[Lcom/huawei/location/crowdsourcing/Config$Vw;

    invoke-virtual {v0}, [Lcom/huawei/location/crowdsourcing/Config$Vw;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/location/crowdsourcing/Config$Vw;

    return-object v0
.end method
