.class public Lcom/huawei/riemann/location/bean/log/GalRti;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public rtiList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/huawei/riemann/location/bean/log/GalRtiItem;",
            ">;"
        }
    .end annotation
.end field

.field public satNumber:I

.field public valid:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/riemann/location/bean/log/GalRti;->rtiList:Ljava/util/List;

    return-void
.end method
