.class public final Lcom/huawei/hms/maps/model/IndoorBuilding;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/huawei/hms/maps/model/internal/IIndoorBuildingDelegate;


# direct methods
.method public constructor <init>(Lcom/huawei/hms/maps/model/internal/IIndoorBuildingDelegate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/huawei/hms/maps/model/IndoorBuilding;->a:Lcom/huawei/hms/maps/model/internal/IIndoorBuildingDelegate;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getActiveLevelIndex()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDefaultLevelIndex()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getLevels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/huawei/hms/maps/model/IndoorLevel;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isUnderground()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
