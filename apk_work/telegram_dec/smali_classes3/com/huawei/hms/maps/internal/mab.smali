.class public Lcom/huawei/hms/maps/internal/mab;
.super Lcom/huawei/hms/maps/internal/ILocationSourceDelegate$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hms/maps/internal/mab$maa;
    }
.end annotation


# instance fields
.field private a:Lcom/huawei/hms/maps/LocationSource;


# direct methods
.method public constructor <init>(Lcom/huawei/hms/maps/LocationSource;)V
    .locals 0

    invoke-direct {p0}, Lcom/huawei/hms/maps/internal/ILocationSourceDelegate$Stub;-><init>()V

    iput-object p1, p0, Lcom/huawei/hms/maps/internal/mab;->a:Lcom/huawei/hms/maps/LocationSource;

    return-void
.end method


# virtual methods
.method public activate(Lcom/huawei/hms/maps/internal/IOnLocationChangeListener;)V
    .locals 2

    const-string v0, "LocationSourceDelegate"

    const-string v1, "active"

    invoke-static {v0, v1}, Lcom/huawei/hms/maps/utils/LogM;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/huawei/hms/maps/internal/mab;->a:Lcom/huawei/hms/maps/LocationSource;

    new-instance v1, Lcom/huawei/hms/maps/internal/mab$maa;

    invoke-direct {v1, p1}, Lcom/huawei/hms/maps/internal/mab$maa;-><init>(Lcom/huawei/hms/maps/internal/IOnLocationChangeListener;)V

    invoke-interface {v0, v1}, Lcom/huawei/hms/maps/LocationSource;->activate(Lcom/huawei/hms/maps/LocationSource$OnLocationChangedListener;)V

    return-void
.end method

.method public deactivate()V
    .locals 2

    const-string v0, "LocationSourceDelegate"

    const-string v1, "deactivate"

    invoke-static {v0, v1}, Lcom/huawei/hms/maps/utils/LogM;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/huawei/hms/maps/internal/mab;->a:Lcom/huawei/hms/maps/LocationSource;

    invoke-interface {v0}, Lcom/huawei/hms/maps/LocationSource;->deactivate()V

    return-void
.end method
