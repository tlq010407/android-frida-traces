.class public Lcom/huawei/location/activity/model/yn;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/location/activity/model/yn$Vw;
    }
.end annotation


# instance fields
.field private E5:I

.field private FB:I

.field private LW:I

.field private Vw:I

.field private d2:I

.field private dC:I

.field private ut:Lcom/huawei/location/activity/model/yn$Vw;

.field public yn:Ljava/util/List;

.field private zp:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x2

    iput v0, p0, Lcom/huawei/location/activity/model/yn;->Vw:I

    iput v0, p0, Lcom/huawei/location/activity/model/yn;->FB:I

    iput v0, p0, Lcom/huawei/location/activity/model/yn;->LW:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/location/activity/model/yn;->dC:I

    iput v0, p0, Lcom/huawei/location/activity/model/yn;->E5:I

    iput v0, p0, Lcom/huawei/location/activity/model/yn;->d2:I

    iput v0, p0, Lcom/huawei/location/activity/model/yn;->zp:I

    new-instance v0, Lcom/huawei/location/activity/model/yn$Vw;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/huawei/location/activity/model/yn$Vw;-><init>(Lcom/huawei/location/activity/model/yn;Lcom/huawei/location/activity/model/yn$yn;)V

    iput-object v0, p0, Lcom/huawei/location/activity/model/yn;->ut:Lcom/huawei/location/activity/model/yn$Vw;

    return-void
.end method

.method private yn(II)V
    .locals 2

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "report \uff01  statu is : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/location/activity/model/yn;->Vw:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " inOrOut is : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ATProvider"

    invoke-static {v1, v0}, Lcom/huawei/location/lite/common/log/LogConsole;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/huawei/location/activity/RiemannSoftArService;->getInstance()Lcom/huawei/location/activity/RiemannSoftArService;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/huawei/location/activity/RiemannSoftArService;->onStatusChanged(II)V

    return-void
.end method

.method static yn(Lcom/huawei/location/activity/model/yn;I)V
    .locals 7

    .line 0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " GET NEW RESULT : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " currentStatus is : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/location/activity/model/yn;->Vw:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ATProvider"

    invoke-static {v1, v0}, Lcom/huawei/location/lite/common/log/LogConsole;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/huawei/location/activity/model/yn;->FB:I

    iget v0, p0, Lcom/huawei/location/activity/model/yn;->Vw:I

    const/4 v1, 0x1

    const/4 v2, -0x2

    if-ne v0, v2, :cond_0

    iput p1, p0, Lcom/huawei/location/activity/model/yn;->Vw:I

    :goto_0
    invoke-direct {p0, p1, v1}, Lcom/huawei/location/activity/model/yn;->yn(II)V

    goto :goto_3

    :cond_0
    const/16 v3, 0xa

    const/4 v4, 0x0

    if-ne p1, v0, :cond_2

    iget p1, p0, Lcom/huawei/location/activity/model/yn;->dC:I

    if-nez p1, :cond_1

    goto :goto_3

    :cond_1
    iget p1, p0, Lcom/huawei/location/activity/model/yn;->zp:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/huawei/location/activity/model/yn;->zp:I

    if-lt p1, v3, :cond_7

    iput v4, p0, Lcom/huawei/location/activity/model/yn;->dC:I

    iput v4, p0, Lcom/huawei/location/activity/model/yn;->E5:I

    iput v4, p0, Lcom/huawei/location/activity/model/yn;->d2:I

    iput v4, p0, Lcom/huawei/location/activity/model/yn;->zp:I

    goto :goto_3

    :cond_2
    iget v5, p0, Lcom/huawei/location/activity/model/yn;->E5:I

    add-int/2addr v5, v1

    iput v5, p0, Lcom/huawei/location/activity/model/yn;->E5:I

    iput v1, p0, Lcom/huawei/location/activity/model/yn;->dC:I

    iget v6, p0, Lcom/huawei/location/activity/model/yn;->LW:I

    if-eq v6, v2, :cond_6

    const/4 v2, -0x1

    if-ne v6, v2, :cond_3

    goto :goto_2

    :cond_3
    if-ne v5, v3, :cond_4

    if-eq v0, v2, :cond_4

    const/4 p1, 0x2

    invoke-direct {p0, v0, p1}, Lcom/huawei/location/activity/model/yn;->yn(II)V

    iput v2, p0, Lcom/huawei/location/activity/model/yn;->Vw:I

    :cond_4
    iget p1, p0, Lcom/huawei/location/activity/model/yn;->FB:I

    iget v0, p0, Lcom/huawei/location/activity/model/yn;->LW:I

    if-ne p1, v0, :cond_5

    iget p1, p0, Lcom/huawei/location/activity/model/yn;->d2:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/huawei/location/activity/model/yn;->d2:I

    goto :goto_1

    :cond_5
    iput p1, p0, Lcom/huawei/location/activity/model/yn;->LW:I

    iput v1, p0, Lcom/huawei/location/activity/model/yn;->d2:I

    :goto_1
    iget p1, p0, Lcom/huawei/location/activity/model/yn;->d2:I

    if-lt p1, v3, :cond_7

    iput v4, p0, Lcom/huawei/location/activity/model/yn;->dC:I

    iput v4, p0, Lcom/huawei/location/activity/model/yn;->E5:I

    iput v4, p0, Lcom/huawei/location/activity/model/yn;->d2:I

    iput v4, p0, Lcom/huawei/location/activity/model/yn;->zp:I

    iget p1, p0, Lcom/huawei/location/activity/model/yn;->LW:I

    iput p1, p0, Lcom/huawei/location/activity/model/yn;->Vw:I

    iput v2, p0, Lcom/huawei/location/activity/model/yn;->LW:I

    goto :goto_0

    :cond_6
    :goto_2
    iput p1, p0, Lcom/huawei/location/activity/model/yn;->LW:I

    :cond_7
    :goto_3
    return-void
.end method


# virtual methods
.method public Vw()V
    .locals 1

    const/4 v0, -0x2

    iput v0, p0, Lcom/huawei/location/activity/model/yn;->Vw:I

    iput v0, p0, Lcom/huawei/location/activity/model/yn;->FB:I

    iput v0, p0, Lcom/huawei/location/activity/model/yn;->LW:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/location/activity/model/yn;->dC:I

    iput v0, p0, Lcom/huawei/location/activity/model/yn;->E5:I

    iput v0, p0, Lcom/huawei/location/activity/model/yn;->d2:I

    iput v0, p0, Lcom/huawei/location/activity/model/yn;->zp:I

    return-void
.end method

.method public yn()Lcom/huawei/location/activity/model/yn$Vw;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/huawei/location/activity/model/yn;->ut:Lcom/huawei/location/activity/model/yn$Vw;

    return-object v0
.end method
