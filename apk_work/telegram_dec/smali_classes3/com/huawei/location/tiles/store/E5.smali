.class Lcom/huawei/location/tiles/store/E5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic yn:Lcom/huawei/location/tiles/store/dC;


# direct methods
.method constructor <init>(Lcom/huawei/location/tiles/store/dC;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/location/tiles/store/E5;->yn:Lcom/huawei/location/tiles/store/dC;

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

    iget-object v0, p0, Lcom/huawei/location/tiles/store/E5;->yn:Lcom/huawei/location/tiles/store/dC;

    invoke-static {v0}, Lcom/huawei/location/tiles/store/dC;->Vw(Lcom/huawei/location/tiles/store/dC;)V

    return-void
.end method
