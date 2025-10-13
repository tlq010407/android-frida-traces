.class Lcom/huawei/location/gnss/sdm/FB$yn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/huawei/location/sdm/yn;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/location/gnss/sdm/FB;->yn(Lcom/huawei/location/gnss/sdm/FB$Vw;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic yn:Lcom/huawei/location/gnss/sdm/FB$Vw;


# direct methods
.method constructor <init>(Lcom/huawei/location/gnss/sdm/FB;Lcom/huawei/location/gnss/sdm/FB$Vw;)V
    .locals 0

    iput-object p2, p0, Lcom/huawei/location/gnss/sdm/FB$yn;->yn:Lcom/huawei/location/gnss/sdm/FB$Vw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1

    iget-object v0, p0, Lcom/huawei/location/gnss/sdm/FB$yn;->yn:Lcom/huawei/location/gnss/sdm/FB$Vw;

    check-cast v0, Lcom/huawei/location/gnss/sdm/yn;

    iget-object v0, v0, Lcom/huawei/location/gnss/sdm/yn;->yn:Lcom/huawei/location/gnss/sdm/Vw;

    invoke-static {v0, p1}, Lcom/huawei/location/gnss/sdm/Vw;->yn(Lcom/huawei/location/gnss/sdm/Vw;Landroid/location/Location;)V

    return-void
.end method
