.class Lcom/huawei/location/tiles/store/dC$LW;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/location/tiles/store/dC;->Vw(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Vw:Lcom/huawei/location/tiles/store/dC;

.field final synthetic yn:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/huawei/location/tiles/store/dC;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/location/tiles/store/dC$LW;->Vw:Lcom/huawei/location/tiles/store/dC;

    iput-object p2, p0, Lcom/huawei/location/tiles/store/dC$LW;->yn:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SDM-TileStoreManager-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/huawei/location/tiles/store/dC$LW;->Vw:Lcom/huawei/location/tiles/store/dC;

    iget-object v1, p0, Lcom/huawei/location/tiles/store/dC$LW;->yn:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/huawei/location/tiles/store/dC;->yn(Lcom/huawei/location/tiles/store/dC;Ljava/lang/String;)V

    return-void
.end method
