.class public Lcom/huawei/location/logic/E5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private FB:J

.field private LW:Ljava/util/List;

.field private Vw:I

.field private yn:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IJLjava/util/List;Lcom/huawei/hms/location/LocationRequest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/huawei/location/logic/E5;->yn:Ljava/lang/String;

    iput p2, p0, Lcom/huawei/location/logic/E5;->Vw:I

    iput-wide p3, p0, Lcom/huawei/location/logic/E5;->FB:J

    iput-object p5, p0, Lcom/huawei/location/logic/E5;->LW:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public FB()I
    .locals 1

    iget v0, p0, Lcom/huawei/location/logic/E5;->Vw:I

    return v0
.end method

.method public LW()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/location/logic/E5;->yn:Ljava/lang/String;

    return-object v0
.end method

.method public Vw()J
    .locals 2

    iget-wide v0, p0, Lcom/huawei/location/logic/E5;->FB:J

    return-wide v0
.end method

.method public yn()Ljava/util/List;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/huawei/location/logic/E5;->LW:Ljava/util/List;

    return-object v0
.end method

.method public yn(J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/huawei/location/logic/E5;->FB:J

    return-void
.end method

.method public yn(Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/huawei/location/logic/E5;->yn:Ljava/lang/String;

    return-void
.end method

.method public yn(Ljava/util/List;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/huawei/location/logic/E5;->LW:Ljava/util/List;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/huawei/location/logic/E5;->LW:Ljava/util/List;

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    return-void
.end method
