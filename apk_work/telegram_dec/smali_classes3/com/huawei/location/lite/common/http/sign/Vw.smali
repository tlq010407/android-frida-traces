.class public Lcom/huawei/location/lite/common/http/sign/Vw;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/location/lite/common/http/sign/Vw$Vw;
    }
.end annotation


# instance fields
.field private FB:Ljava/lang/String;

.field private LW:Ljava/lang/String;

.field private Vw:Ljava/lang/String;

.field private dC:[Ljava/lang/String;

.field private yn:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/huawei/location/lite/common/http/sign/Vw$yn;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/huawei/location/lite/common/http/sign/Vw;-><init>()V

    return-void
.end method

.method static FB(Lcom/huawei/location/lite/common/http/sign/Vw;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/huawei/location/lite/common/http/sign/Vw;->Vw:Ljava/lang/String;

    return-void
.end method

.method static Vw(Lcom/huawei/location/lite/common/http/sign/Vw;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/huawei/location/lite/common/http/sign/Vw;->yn:Ljava/lang/String;

    return-void
.end method

.method static yn(Lcom/huawei/location/lite/common/http/sign/Vw;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/huawei/location/lite/common/http/sign/Vw;->FB:Ljava/lang/String;

    return-void
.end method

.method static yn(Lcom/huawei/location/lite/common/http/sign/Vw;[Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/huawei/location/lite/common/http/sign/Vw;->dC:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public FB()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/huawei/location/lite/common/http/sign/Vw;->Vw:Ljava/lang/String;

    return-object v0
.end method

.method public LW()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/location/lite/common/http/sign/Vw;->LW:Ljava/lang/String;

    return-object v0
.end method

.method public Vw()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/huawei/location/lite/common/http/sign/Vw;->yn:Ljava/lang/String;

    return-object v0
.end method

.method public dC()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/location/lite/common/http/sign/Vw;->FB:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SignMessageReq{method=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/location/lite/common/http/sign/Vw;->yn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", query=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", payload=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/location/lite/common/http/sign/Vw;->Vw:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", url=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/location/lite/common/http/sign/Vw;->FB:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", tid=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/location/lite/common/http/sign/Vw;->LW:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public yn(Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/huawei/location/lite/common/http/sign/Vw;->LW:Ljava/lang/String;

    return-void
.end method

.method public yn()[Ljava/lang/String;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/huawei/location/lite/common/http/sign/Vw;->dC:[Ljava/lang/String;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method
