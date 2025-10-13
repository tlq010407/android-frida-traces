.class public abstract Lcom/huawei/location/nlp/scan/LW;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private FB:Z

.field protected Vw:J

.field protected yn:Lcom/huawei/location/nlp/api/Vw;


# direct methods
.method public constructor <init>(Lcom/huawei/location/nlp/api/Vw;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lcom/huawei/location/nlp/scan/LW;->Vw:J

    iput-object p1, p0, Lcom/huawei/location/nlp/scan/LW;->yn:Lcom/huawei/location/nlp/api/Vw;

    const-string p1, "android.telephony.CellInfoNr"

    invoke-static {p1}, Lcom/huawei/location/lite/common/util/ReflectionUtils;->isSupportClass(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/huawei/location/nlp/scan/LW;->FB:Z

    return-void
.end method

.method private yn(JJJLcom/huawei/location/nlp/network/request/cell/HwCellInfo;)V
    .locals 5

    .line 0
    const-wide v0, 0x12a05f200L

    cmp-long v2, p5, v0

    if-gtz v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p7}, Lcom/huawei/location/nlp/network/request/cell/CurrentCell;->getBoottime()J

    move-result-wide v0

    sub-long/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    const-wide v2, 0x6fc23ac00L

    cmp-long v4, p1, v2

    if-lez v4, :cond_1

    return-void

    :cond_1
    sub-long/2addr p3, v0

    invoke-static {p3, p4}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    cmp-long p3, p1, v2

    if-gez p3, :cond_2

    return-void

    :cond_2
    add-long/2addr v0, p5

    invoke-virtual {p7, v0, v1}, Lcom/huawei/location/nlp/network/request/cell/CurrentCell;->setBoottime(J)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "amendCellTimeStamp bootTime is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7}, Lcom/huawei/location/nlp/network/request/cell/CurrentCell;->getBoottime()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ScanBase"

    invoke-static {p2, p1}, Lcom/huawei/location/lite/common/log/LogConsole;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private yn(Lcom/huawei/location/nlp/network/request/cell/HwCellInfo;)Z
    .locals 10

    .line 0
    invoke-virtual {p1}, Lcom/huawei/location/nlp/network/request/cell/CurrentCell;->getMcc()I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "ScanBase"

    const/4 v3, 0x1

    if-lt v0, v3, :cond_b

    invoke-virtual {p1}, Lcom/huawei/location/nlp/network/request/cell/CurrentCell;->getMcc()I

    move-result v0

    const v4, 0x7fffffff

    if-lt v0, v4, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-virtual {p1}, Lcom/huawei/location/nlp/network/request/cell/CurrentCell;->getMnc()I

    move-result v0

    if-ltz v0, :cond_a

    invoke-virtual {p1}, Lcom/huawei/location/nlp/network/request/cell/CurrentCell;->getMnc()I

    move-result v0

    if-lt v0, v4, :cond_1

    goto/16 :goto_5

    :cond_1
    invoke-virtual {p1}, Lcom/huawei/location/nlp/network/request/cell/CurrentCell;->getRssi()S

    move-result v0

    const/16 v5, -0x8b

    if-lt v0, v5, :cond_9

    invoke-virtual {p1}, Lcom/huawei/location/nlp/network/request/cell/CurrentCell;->getRssi()S

    move-result v0

    const/4 v5, -0x1

    if-le v0, v5, :cond_2

    goto/16 :goto_4

    :cond_2
    invoke-virtual {p1}, Lcom/huawei/location/nlp/network/request/cell/CurrentCell;->getRat()I

    move-result v0

    const-wide/16 v5, 0x1

    const/4 v7, 0x4

    invoke-virtual {p1}, Lcom/huawei/location/nlp/network/request/cell/CurrentCell;->getCellId()J

    move-result-wide v8

    if-ne v0, v7, :cond_3

    cmp-long v0, v8, v5

    if-ltz v0, :cond_8

    invoke-virtual {p1}, Lcom/huawei/location/nlp/network/request/cell/CurrentCell;->getCellId()J

    move-result-wide v5

    const-wide v8, 0x7fffffffffffffffL

    cmp-long v0, v5, v8

    if-gez v0, :cond_8

    goto :goto_0

    :cond_3
    cmp-long v0, v8, v5

    if-ltz v0, :cond_8

    invoke-virtual {p1}, Lcom/huawei/location/nlp/network/request/cell/CurrentCell;->getCellId()J

    move-result-wide v5

    const-wide/32 v8, 0x7fffffff

    cmp-long v0, v5, v8

    if-gez v0, :cond_8

    :goto_0
    invoke-virtual {p1}, Lcom/huawei/location/nlp/network/request/cell/CurrentCell;->getRat()I

    move-result v0

    if-ne v0, v7, :cond_4

    invoke-virtual {p1}, Lcom/huawei/location/nlp/network/request/cell/CurrentCell;->getLac()I

    move-result v0

    if-ltz v0, :cond_7

    invoke-virtual {p1}, Lcom/huawei/location/nlp/network/request/cell/CurrentCell;->getLac()I

    move-result v0

    const v5, 0xffffff

    if-gt v0, v5, :cond_7

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/huawei/location/nlp/network/request/cell/CurrentCell;->getLac()I

    move-result v0

    if-ltz v0, :cond_7

    invoke-virtual {p1}, Lcom/huawei/location/nlp/network/request/cell/CurrentCell;->getLac()I

    move-result v0

    const v5, 0xffff

    if-gt v0, v5, :cond_7

    :goto_1
    invoke-virtual {p1}, Lcom/huawei/location/nlp/network/request/cell/HwCellInfo;->getChannelNumber()I

    move-result v0

    if-lt v0, v3, :cond_6

    invoke-virtual {p1}, Lcom/huawei/location/nlp/network/request/cell/HwCellInfo;->getChannelNumber()I

    move-result p1

    if-lt p1, v4, :cond_5

    goto :goto_2

    :cond_5
    return v3

    :cond_6
    :goto_2
    const-string p1, "hwCellInfo is invalid, channelNumber error"

    :goto_3
    invoke-static {v2, p1}, Lcom/huawei/location/lite/common/log/LogConsole;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_7
    const-string p1, "hwCellInfo is invalid, lac error"

    goto :goto_3

    :cond_8
    const-string p1, "hwCellInfo is invalid, cellId error"

    goto :goto_3

    :cond_9
    :goto_4
    const-string p1, "hwCellInfo is invalid, rssi error"

    goto :goto_3

    :cond_a
    :goto_5
    const-string p1, "hwCellInfo is invalid, mnc error"

    goto :goto_3

    :cond_b
    :goto_6
    const-string p1, "hwCellInfo is invalid, mcc error"

    goto :goto_3
.end method

.method public static yn(Ljava/util/List;Ljava/util/List;)Z
    .locals 6

    .line 0
    const/4 v0, 0x0

    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_1

    return v0

    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/location/nlp/network/request/wifi/WifiInfo;

    invoke-virtual {v3}, Lcom/huawei/location/nlp/network/request/wifi/WifiInfo;->getMac()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/huawei/location/nlp/network/request/wifi/WifiInfo;->getRssi()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_5

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/location/nlp/network/request/wifi/WifiInfo;

    invoke-virtual {v2}, Lcom/huawei/location/nlp/network/request/wifi/WifiInfo;->getMac()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    return v0

    :cond_3
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2}, Lcom/huawei/location/nlp/network/request/wifi/WifiInfo;->getRssi()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    return v0

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_5
    const/4 p0, 0x1

    return p0

    :cond_6
    :goto_2
    const-string p0, "ScanBase"

    const-string p1, "wifi cache is null"

    invoke-static {p0, p1}, Lcom/huawei/location/lite/common/log/LogConsole;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method


# virtual methods
.method public Vw(Ljava/util/List;)Landroid/util/Pair;
    .locals 21

    move-object/from16 v8, p0

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/util/Pair;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, v1, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_0
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "ScanBase"

    const/4 v5, 0x2

    const/4 v12, 0x1

    if-eqz v3, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/CellInfo;

    invoke-virtual {v3}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v6

    const/4 v7, 0x4

    const/16 v13, 0x1d

    const/4 v14, 0x3

    const/16 v15, 0x18

    if-eqz v6, :cond_9

    instance-of v6, v3, Landroid/telephony/CellInfoGsm;

    if-eqz v6, :cond_3

    new-instance v4, Lcom/huawei/location/nlp/network/request/cell/HwCellInfo;

    invoke-direct {v4}, Lcom/huawei/location/nlp/network/request/cell/HwCellInfo;-><init>()V

    move-object v5, v3

    check-cast v5, Landroid/telephony/CellInfoGsm;

    invoke-virtual {v3}, Landroid/telephony/CellInfo;->getTimeStamp()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/huawei/location/nlp/network/request/cell/CurrentCell;->setBoottime(J)V

    invoke-virtual {v5}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/CellIdentityGsm;->getMcc()I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/huawei/location/nlp/network/request/cell/CurrentCell;->setMcc(I)V

    invoke-virtual {v5}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/CellIdentityGsm;->getMnc()I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/huawei/location/nlp/network/request/cell/CurrentCell;->setMnc(I)V

    invoke-virtual {v5}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/CellIdentityGsm;->getLac()I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/huawei/location/nlp/network/request/cell/CurrentCell;->setLac(I)V

    invoke-virtual {v5}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/CellIdentityGsm;->getCid()I

    move-result v3

    int-to-long v6, v3

    invoke-virtual {v4, v6, v7}, Lcom/huawei/location/nlp/network/request/cell/CurrentCell;->setCellId(J)V

    invoke-virtual {v5}, Landroid/telephony/CellInfoGsm;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthGsm;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/CellSignalStrengthGsm;->getDbm()I

    move-result v3

    int-to-short v3, v3

    invoke-virtual {v4, v3}, Lcom/huawei/location/nlp/network/request/cell/CurrentCell;->setRssi(S)V

    invoke-virtual {v4, v12}, Lcom/huawei/location/nlp/network/request/cell/CurrentCell;->setRat(I)V

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v15, :cond_2

    invoke-virtual {v5}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v3

    invoke-static {v3}, Lcom/huawei/hms/support/api/location/common/OfflineLocationUtil$$ExternalSyntheticApiModelOutline14;->m(Landroid/telephony/CellIdentityGsm;)I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/huawei/location/nlp/network/request/cell/HwCellInfo;->setChannelNumber(I)V

    :cond_2
    invoke-direct {v8, v4}, Lcom/huawei/location/nlp/scan/LW;->yn(Lcom/huawei/location/nlp/network/request/cell/HwCellInfo;)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_3
    instance-of v6, v3, Landroid/telephony/CellInfoWcdma;

    if-eqz v6, :cond_5

    new-instance v4, Lcom/huawei/location/nlp/network/request/cell/HwCellInfo;

    invoke-direct {v4}, Lcom/huawei/location/nlp/network/request/cell/HwCellInfo;-><init>()V

    move-object v6, v3

    check-cast v6, Landroid/telephony/CellInfoWcdma;

    invoke-virtual {v3}, Landroid/telephony/CellInfo;->getTimeStamp()J

    move-result-wide v12

    invoke-virtual {v4, v12, v13}, Lcom/huawei/location/nlp/network/request/cell/CurrentCell;->setBoottime(J)V

    invoke-virtual {v6}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/CellIdentityWcdma;->getMcc()I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/huawei/location/nlp/network/request/cell/CurrentCell;->setMcc(I)V

    invoke-virtual {v6}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/CellIdentityWcdma;->getMnc()I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/huawei/location/nlp/network/request/cell/CurrentCell;->setMnc(I)V

    invoke-virtual {v6}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/CellIdentityWcdma;->getLac()I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/huawei/location/nlp/network/request/cell/CurrentCell;->setLac(I)V

    invoke-virtual {v6}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    move-result v3

    int-to-long v12, v3

    invoke-virtual {v4, v12, v13}, Lcom/huawei/location/nlp/network/request/cell/CurrentCell;->setCellId(J)V

    invoke-virtual {v6}, Landroid/telephony/CellInfoWcdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthWcdma;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/CellSignalStrengthWcdma;->getDbm()I

    move-result v3

    int-to-short v3, v3

    invoke-virtual {v4, v3}, Lcom/huawei/location/nlp/network/request/cell/CurrentCell;->setRssi(S)V

    invoke-virtual {v4, v5}, Lcom/huawei/location/nlp/network/request/cell/CurrentCell;->setRat(I)V

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v15, :cond_4

    invoke-virtual {v6}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v3

    invoke-static {v3}, Lcom/huawei/hms/support/api/location/common/OfflineLocationUtil$$ExternalSyntheticApiModelOutline16;->m(Landroid/telephony/CellIdentityWcdma;)I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/huawei/location/nlp/network/request/cell/HwCellInfo;->setChannelNumber(I)V

    :cond_4
    invoke-direct {v8, v4}, Lcom/huawei/location/nlp/scan/LW;->yn(Lcom/huawei/location/nlp/network/request/cell/HwCellInfo;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_5
    instance-of v5, v3, Landroid/telephony/CellInfoLte;

    if-eqz v5, :cond_7

    new-instance v4, Lcom/huawei/location/nlp/network/request/cell/HwCellInfo;

    invoke-direct {v4}, Lcom/huawei/location/nlp/network/request/cell/HwCellInfo;-><init>()V

    move-object v5, v3

    check-cast v5, Landroid/telephony/CellInfoLte;

    invoke-virtual {v3}, Landroid/telephony/CellInfo;->getTimeStamp()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/huawei/location/nlp/network/request/cell/CurrentCell;->setBoottime(J)V

    invoke-virtual {v5}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/CellIdentityLte;->getMcc()I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/huawei/location/nlp/network/request/cell/CurrentCell;->setMcc(I)V

    invoke-virtual {v5}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/CellIdentityLte;->getMnc()I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/huawei/location/nlp/network/request/cell/CurrentCell;->setMnc(I)V

    invoke-virtual {v5}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/huawei/location/nlp/network/request/cell/CurrentCell;->setLac(I)V

    invoke-virtual {v5}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result v3

    int-to-long v6, v3

    invoke-virtual {v4, v6, v7}, Lcom/huawei/location/nlp/network/request/cell/CurrentCell;->setCellId(J)V

    invoke-virtual {v5}, Landroid/telephony/CellInfoLte;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/CellSignalStrengthLte;->getDbm()I

    move-result v3

    int-to-short v3, v3

    invoke-virtual {v4, v3}, Lcom/huawei/location/nlp/network/request/cell/CurrentCell;->setRssi(S)V

    invoke-virtual {v4, v14}, Lcom/huawei/location/nlp/network/request/cell/CurrentCell;->setRat(I)V

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v15, :cond_6

    invoke-virtual {v5}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v3

    invoke-static {v3}, Lcom/huawei/hms/support/api/location/common/OfflineLocationUtil$$ExternalSyntheticApiModelOutline4;->m(Landroid/telephony/CellIdentityLte;)I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/huawei/location/nlp/network/request/cell/HwCellInfo;->setChannelNumber(I)V

    :cond_6
    invoke-direct {v8, v4}, Lcom/huawei/location/nlp/scan/LW;->yn(Lcom/huawei/location/nlp/network/request/cell/HwCellInfo;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_1

    :cond_7
    iget-boolean v5, v8, Lcom/huawei/location/nlp/scan/LW;->FB:Z

    if-eqz v5, :cond_8

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v13, :cond_1

    invoke-static {v3}, Lcom/huawei/hms/support/api/location/common/OfflineLocationUtil$$ExternalSyntheticApiModelOutline2;->m(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v3}, Lcom/huawei/hms/support/api/location/common/OfflineLocationUtil$$ExternalSyntheticApiModelOutline3;->m(Ljava/lang/Object;)Landroid/telephony/CellInfoNr;

    move-result-object v4

    invoke-static {v4}, Lcom/huawei/hms/support/api/location/common/OfflineLocationUtil$$ExternalSyntheticApiModelOutline5;->m(Landroid/telephony/CellInfoNr;)Landroid/telephony/CellIdentity;

    move-result-object v5

    invoke-static {v5}, Lcom/huawei/hms/support/api/location/common/OfflineLocationUtil$$ExternalSyntheticApiModelOutline6;->m(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {v5}, Lcom/huawei/hms/support/api/location/common/OfflineLocationUtil$$ExternalSyntheticApiModelOutline7;->m(Ljava/lang/Object;)Landroid/telephony/CellIdentityNr;

    move-result-object v5

    invoke-static {v5}, Lcom/huawei/hms/support/api/location/common/OfflineLocationUtil$$ExternalSyntheticApiModelOutline8;->m(Landroid/telephony/CellIdentityNr;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5}, Lcom/huawei/hms/support/api/location/common/OfflineLocationUtil$$ExternalSyntheticApiModelOutline9;->m(Landroid/telephony/CellIdentityNr;)Ljava/lang/String;

    move-result-object v12

    if-eqz v6, :cond_1

    if-eqz v12, :cond_1

    new-instance v13, Lcom/huawei/location/nlp/network/request/cell/HwCellInfo;

    invoke-direct {v13}, Lcom/huawei/location/nlp/network/request/cell/HwCellInfo;-><init>()V

    invoke-virtual {v3}, Landroid/telephony/CellInfo;->getTimeStamp()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Lcom/huawei/location/nlp/network/request/cell/CurrentCell;->setBoottime(J)V

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v13, v3}, Lcom/huawei/location/nlp/network/request/cell/CurrentCell;->setMcc(I)V

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v13, v3}, Lcom/huawei/location/nlp/network/request/cell/CurrentCell;->setMnc(I)V

    invoke-static {v5}, Lcom/huawei/hms/support/api/location/common/OfflineLocationUtil$$ExternalSyntheticApiModelOutline10;->m(Landroid/telephony/CellIdentityNr;)I

    move-result v3

    invoke-virtual {v13, v3}, Lcom/huawei/location/nlp/network/request/cell/CurrentCell;->setLac(I)V

    invoke-static {v5}, Lcom/huawei/hms/support/api/location/common/OfflineLocationUtil$$ExternalSyntheticApiModelOutline11;->m(Landroid/telephony/CellIdentityNr;)J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Lcom/huawei/location/nlp/network/request/cell/CurrentCell;->setCellId(J)V

    invoke-virtual {v8, v4}, Lcom/huawei/location/nlp/scan/LW;->yn(Landroid/telephony/CellInfoNr;)I

    move-result v3

    int-to-short v3, v3

    invoke-virtual {v13, v3}, Lcom/huawei/location/nlp/network/request/cell/CurrentCell;->setRssi(S)V

    invoke-virtual {v13, v7}, Lcom/huawei/location/nlp/network/request/cell/CurrentCell;->setRat(I)V

    invoke-static {v5}, Lcom/huawei/hms/support/api/location/common/OfflineLocationUtil$$ExternalSyntheticApiModelOutline13;->m(Landroid/telephony/CellIdentityNr;)I

    move-result v3

    invoke-virtual {v13, v3}, Lcom/huawei/location/nlp/network/request/cell/HwCellInfo;->setChannelNumber(I)V

    invoke-direct {v8, v13}, Lcom/huawei/location/nlp/scan/LW;->yn(Lcom/huawei/location/nlp/network/request/cell/HwCellInfo;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_8
    const-string v3, "getCurrentCellList fail"

    invoke-static {v4, v3}, Lcom/huawei/location/lite/common/log/LogConsole;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    instance-of v6, v3, Landroid/telephony/CellInfoGsm;

    if-eqz v6, :cond_b

    check-cast v3, Landroid/telephony/CellInfoGsm;

    new-instance v4, Lcom/huawei/location/nlp/network/request/cell/HwNeighborCellInfo;

    invoke-direct {v4}, Lcom/huawei/location/nlp/network/request/cell/HwNeighborCellInfo;-><init>()V

    invoke-virtual {v3}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/CellIdentityGsm;->getMcc()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/huawei/location/nlp/network/request/cell/CurrentCell;->setMcc(I)V

    invoke-virtual {v3}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/CellIdentityGsm;->getMnc()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/huawei/location/nlp/network/request/cell/CurrentCell;->setMnc(I)V

    invoke-virtual {v3}, Landroid/telephony/CellInfoGsm;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthGsm;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/CellSignalStrengthGsm;->getDbm()I

    move-result v5

    int-to-short v5, v5

    invoke-virtual {v4, v5}, Lcom/huawei/location/nlp/network/request/cell/CurrentCell;->setRssi(S)V

    invoke-virtual {v4, v12}, Lcom/huawei/location/nlp/network/request/cell/CurrentCell;->setRat(I)V

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v15, :cond_a

    invoke-virtual {v3}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v5

    invoke-static {v5}, Lcom/huawei/hms/support/api/location/common/OfflineLocationUtil$$ExternalSyntheticApiModelOutline14;->m(Landroid/telephony/CellIdentityGsm;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/huawei/location/nlp/network/request/cell/HwCellInfo;->setChannelNumber(I)V

    invoke-virtual {v3}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v3

    invoke-static {v3}, Lcom/huawei/hms/support/api/location/common/OfflineLocationUtil$$ExternalSyntheticApiModelOutline15;->m(Landroid/telephony/CellIdentityGsm;)I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/huawei/location/nlp/network/request/cell/HwNeighborCellInfo;->setPhysicalIdentity(I)V

    :cond_a
    :goto_2
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_b
    instance-of v6, v3, Landroid/telephony/CellInfoWcdma;

    if-eqz v6, :cond_c

    check-cast v3, Landroid/telephony/CellInfoWcdma;

    new-instance v4, Lcom/huawei/location/nlp/network/request/cell/HwNeighborCellInfo;

    invoke-direct {v4}, Lcom/huawei/location/nlp/network/request/cell/HwNeighborCellInfo;-><init>()V

    invoke-virtual {v3}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/CellIdentityWcdma;->getMcc()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/huawei/location/nlp/network/request/cell/CurrentCell;->setMcc(I)V

    invoke-virtual {v3}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/CellIdentityWcdma;->getMnc()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/huawei/location/nlp/network/request/cell/CurrentCell;->setMnc(I)V

    invoke-virtual {v3}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/CellIdentityWcdma;->getPsc()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/huawei/location/nlp/network/request/cell/HwNeighborCellInfo;->setPhysicalIdentity(I)V

    invoke-virtual {v3}, Landroid/telephony/CellInfoWcdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthWcdma;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/CellSignalStrengthWcdma;->getDbm()I

    move-result v6

    int-to-short v6, v6

    invoke-virtual {v4, v6}, Lcom/huawei/location/nlp/network/request/cell/CurrentCell;->setRssi(S)V

    invoke-virtual {v4, v5}, Lcom/huawei/location/nlp/network/request/cell/CurrentCell;->setRat(I)V

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v15, :cond_a

    invoke-virtual {v3}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v3

    invoke-static {v3}, Lcom/huawei/hms/support/api/location/common/OfflineLocationUtil$$ExternalSyntheticApiModelOutline16;->m(Landroid/telephony/CellIdentityWcdma;)I

    move-result v3

    :goto_3
    invoke-virtual {v4, v3}, Lcom/huawei/location/nlp/network/request/cell/HwCellInfo;->setChannelNumber(I)V

    goto :goto_2

    :cond_c
    instance-of v5, v3, Landroid/telephony/CellInfoLte;

    if-eqz v5, :cond_d

    check-cast v3, Landroid/telephony/CellInfoLte;

    new-instance v4, Lcom/huawei/location/nlp/network/request/cell/HwNeighborCellInfo;

    invoke-direct {v4}, Lcom/huawei/location/nlp/network/request/cell/HwNeighborCellInfo;-><init>()V

    invoke-virtual {v3}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/CellIdentityLte;->getMcc()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/huawei/location/nlp/network/request/cell/CurrentCell;->setMcc(I)V

    invoke-virtual {v3}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/CellIdentityLte;->getMnc()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/huawei/location/nlp/network/request/cell/CurrentCell;->setMnc(I)V

    invoke-virtual {v3}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/CellIdentityLte;->getPci()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/huawei/location/nlp/network/request/cell/HwNeighborCellInfo;->setPhysicalIdentity(I)V

    invoke-virtual {v3}, Landroid/telephony/CellInfoLte;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/CellSignalStrengthLte;->getDbm()I

    move-result v5

    int-to-short v5, v5

    invoke-virtual {v4, v5}, Lcom/huawei/location/nlp/network/request/cell/CurrentCell;->setRssi(S)V

    invoke-virtual {v4, v14}, Lcom/huawei/location/nlp/network/request/cell/CurrentCell;->setRat(I)V

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v15, :cond_a

    invoke-virtual {v3}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v3

    invoke-static {v3}, Lcom/huawei/hms/support/api/location/common/OfflineLocationUtil$$ExternalSyntheticApiModelOutline4;->m(Landroid/telephony/CellIdentityLte;)I

    move-result v3

    goto :goto_3

    :cond_d
    iget-boolean v5, v8, Lcom/huawei/location/nlp/scan/LW;->FB:Z

    if-eqz v5, :cond_f

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v13, :cond_1

    invoke-static {v3}, Lcom/huawei/hms/support/api/location/common/OfflineLocationUtil$$ExternalSyntheticApiModelOutline2;->m(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    goto/16 :goto_0

    :cond_e
    invoke-static {v3}, Lcom/huawei/hms/support/api/location/common/OfflineLocationUtil$$ExternalSyntheticApiModelOutline3;->m(Ljava/lang/Object;)Landroid/telephony/CellInfoNr;

    move-result-object v3

    invoke-static {v3}, Lcom/huawei/hms/support/api/location/common/OfflineLocationUtil$$ExternalSyntheticApiModelOutline5;->m(Landroid/telephony/CellInfoNr;)Landroid/telephony/CellIdentity;

    move-result-object v4

    invoke-static {v4}, Lcom/huawei/hms/support/api/location/common/OfflineLocationUtil$$ExternalSyntheticApiModelOutline6;->m(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v4}, Lcom/huawei/hms/support/api/location/common/OfflineLocationUtil$$ExternalSyntheticApiModelOutline7;->m(Ljava/lang/Object;)Landroid/telephony/CellIdentityNr;

    move-result-object v4

    invoke-static {v4}, Lcom/huawei/hms/support/api/location/common/OfflineLocationUtil$$ExternalSyntheticApiModelOutline8;->m(Landroid/telephony/CellIdentityNr;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Lcom/huawei/hms/support/api/location/common/OfflineLocationUtil$$ExternalSyntheticApiModelOutline9;->m(Landroid/telephony/CellIdentityNr;)Ljava/lang/String;

    move-result-object v6

    if-eqz v5, :cond_1

    if-eqz v6, :cond_1

    new-instance v12, Lcom/huawei/location/nlp/network/request/cell/HwNeighborCellInfo;

    invoke-direct {v12}, Lcom/huawei/location/nlp/network/request/cell/HwNeighborCellInfo;-><init>()V

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v12, v5}, Lcom/huawei/location/nlp/network/request/cell/CurrentCell;->setMcc(I)V

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v12, v5}, Lcom/huawei/location/nlp/network/request/cell/CurrentCell;->setMnc(I)V

    invoke-static {v4}, Lcom/huawei/hms/support/api/location/common/OfflineLocationUtil$$ExternalSyntheticApiModelOutline12;->m(Landroid/telephony/CellIdentityNr;)I

    move-result v5

    invoke-virtual {v12, v5}, Lcom/huawei/location/nlp/network/request/cell/HwNeighborCellInfo;->setPhysicalIdentity(I)V

    invoke-virtual {v8, v3}, Lcom/huawei/location/nlp/scan/LW;->yn(Landroid/telephony/CellInfoNr;)I

    move-result v3

    int-to-short v3, v3

    invoke-virtual {v12, v3}, Lcom/huawei/location/nlp/network/request/cell/CurrentCell;->setRssi(S)V

    invoke-virtual {v12, v7}, Lcom/huawei/location/nlp/network/request/cell/CurrentCell;->setRat(I)V

    invoke-static {v4}, Lcom/huawei/hms/support/api/location/common/OfflineLocationUtil$$ExternalSyntheticApiModelOutline13;->m(Landroid/telephony/CellIdentityNr;)I

    move-result v3

    invoke-virtual {v12, v3}, Lcom/huawei/location/nlp/network/request/cell/HwCellInfo;->setChannelNumber(I)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_f
    const-string v3, "getNeighborCellInfoList fail"

    invoke-static {v4, v3}, Lcom/huawei/location/lite/common/log/LogConsole;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_10
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v16

    cmp-long v0, v16, v14

    if-gez v0, :cond_11

    move-wide/from16 v18, v1

    goto :goto_4

    :cond_11
    sub-long v0, v16, v14

    move-wide/from16 v18, v0

    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "current cell is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", neighbor Cell size is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/huawei/location/lite/common/log/LogConsole;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-ne v13, v5, :cond_12

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/location/nlp/network/request/cell/HwCellInfo;

    invoke-virtual {v1}, Lcom/huawei/location/nlp/network/request/cell/CurrentCell;->getMcc()I

    move-result v1

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/location/nlp/network/request/cell/HwCellInfo;

    invoke-virtual {v2}, Lcom/huawei/location/nlp/network/request/cell/CurrentCell;->getMcc()I

    move-result v2

    if-ne v1, v2, :cond_12

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/location/nlp/network/request/cell/HwCellInfo;

    invoke-virtual {v1}, Lcom/huawei/location/nlp/network/request/cell/CurrentCell;->getMnc()I

    move-result v1

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/location/nlp/network/request/cell/HwCellInfo;

    invoke-virtual {v2}, Lcom/huawei/location/nlp/network/request/cell/CurrentCell;->getMnc()I

    move-result v2

    if-ne v1, v2, :cond_12

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/location/nlp/network/request/cell/HwCellInfo;

    invoke-virtual {v1}, Lcom/huawei/location/nlp/network/request/cell/CurrentCell;->getRat()I

    move-result v1

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/location/nlp/network/request/cell/HwCellInfo;

    invoke-virtual {v2}, Lcom/huawei/location/nlp/network/request/cell/CurrentCell;->getRat()I

    move-result v2

    if-ne v1, v2, :cond_12

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/location/nlp/network/request/cell/HwCellInfo;

    invoke-virtual {v8, v0, v11, v9}, Lcom/huawei/location/nlp/scan/LW;->yn(Lcom/huawei/location/nlp/network/request/cell/HwCellInfo;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/huawei/location/nlp/network/request/cell/HwCellInfo;

    move-object/from16 v0, p0

    move-wide v1, v14

    move-wide/from16 v3, v16

    move-wide/from16 v5, v18

    invoke-direct/range {v0 .. v7}, Lcom/huawei/location/nlp/scan/LW;->yn(JJJLcom/huawei/location/nlp/network/request/cell/HwCellInfo;)V

    new-instance v0, Landroid/util/Pair;

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/location/nlp/network/request/cell/HwCellInfo;

    invoke-virtual {v1}, Lcom/huawei/location/nlp/network/request/cell/CurrentCell;->getBoottime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, v1, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_6

    :cond_12
    const-wide/16 v1, -0x1

    const/4 v12, 0x0

    :goto_5
    if-ge v12, v13, :cond_14

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/huawei/location/nlp/network/request/cell/HwCellInfo;

    invoke-virtual {v8, v7, v11, v9}, Lcom/huawei/location/nlp/scan/LW;->yn(Lcom/huawei/location/nlp/network/request/cell/HwCellInfo;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v7}, Lcom/huawei/location/nlp/network/request/cell/CurrentCell;->getBoottime()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-ltz v0, :cond_13

    move-object/from16 v0, p0

    move-wide v1, v14

    move-wide/from16 v3, v16

    move-wide/from16 v5, v18

    move-object/from16 v20, v7

    invoke-direct/range {v0 .. v7}, Lcom/huawei/location/nlp/scan/LW;->yn(JJJLcom/huawei/location/nlp/network/request/cell/HwCellInfo;)V

    invoke-virtual/range {v20 .. v20}, Lcom/huawei/location/nlp/network/request/cell/CurrentCell;->getBoottime()J

    move-result-wide v0

    move-wide v1, v0

    :cond_13
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_14
    new-instance v0, Landroid/util/Pair;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, v1, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_6
    return-object v0
.end method

.method public yn(Landroid/telephony/CellInfoNr;)I
    .locals 7

    .line 0
    invoke-static {p1}, Lcom/huawei/hms/support/api/location/common/OfflineLocationUtil$$ExternalSyntheticApiModelOutline0;->m(Landroid/telephony/CellInfoNr;)Landroid/telephony/CellSignalStrength;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrength;->getDbm()I

    move-result v0

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_5

    invoke-static {p1}, Lcom/huawei/hms/support/api/location/common/OfflineLocationUtil$$ExternalSyntheticApiModelOutline0;->m(Landroid/telephony/CellInfoNr;)Landroid/telephony/CellSignalStrength;

    move-result-object p1

    invoke-static {p1}, Lcom/huawei/hms/support/api/location/common/OfflineLocationUtil$$ExternalSyntheticApiModelOutline1;->m(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    return v1

    :cond_0
    invoke-static {p1}, Lcom/huawei/hms/framework/common/NetworkUtil$$ExternalSyntheticApiModelOutline1;->m(Ljava/lang/Object;)Landroid/telephony/CellSignalStrengthNr;

    move-result-object p1

    invoke-static {p1}, Lcom/huawei/hms/framework/common/NetworkUtil$$ExternalSyntheticApiModelOutline2;->m(Landroid/telephony/CellSignalStrengthNr;)I

    move-result v2

    invoke-static {p1}, Lcom/huawei/hms/framework/common/NetworkUtil$$ExternalSyntheticApiModelOutline3;->m(Landroid/telephony/CellSignalStrengthNr;)I

    move-result v3

    invoke-static {p1}, Lcom/huawei/hms/framework/common/NetworkUtil$$ExternalSyntheticApiModelOutline4;->m(Landroid/telephony/CellSignalStrengthNr;)I

    move-result v4

    invoke-static {p1}, Lcom/huawei/hms/framework/common/NetworkUtil$$ExternalSyntheticApiModelOutline7;->m(Landroid/telephony/CellSignalStrengthNr;)I

    move-result v5

    invoke-static {p1}, Lcom/huawei/hms/framework/common/NetworkUtil$$ExternalSyntheticApiModelOutline8;->m(Landroid/telephony/CellSignalStrengthNr;)I

    move-result v6

    invoke-static {p1}, Lcom/huawei/hms/framework/common/NetworkUtil$$ExternalSyntheticApiModelOutline9;->m(Landroid/telephony/CellSignalStrengthNr;)I

    move-result p1

    if-eq v2, v1, :cond_2

    if-eq v3, v1, :cond_2

    if-eq v4, v1, :cond_2

    if-lez v2, :cond_1

    neg-int p1, v2

    move v0, p1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    if-eq v5, v1, :cond_4

    if-eq v6, v1, :cond_4

    if-eq p1, v1, :cond_4

    if-lez v5, :cond_3

    neg-int v0, v5

    goto :goto_0

    :cond_3
    move v0, v5

    goto :goto_0

    :cond_4
    const-string p1, "ScanBase"

    const-string v1, "getCellSignalStrength error"

    invoke-static {p1, v1}, Lcom/huawei/location/lite/common/log/LogConsole;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_0
    return v0
.end method

.method public yn(Ljava/util/List;)Landroid/util/Pair;
    .locals 18

    .line 0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-wide/16 v2, -0x1

    move-wide v4, v2

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/ScanResult;

    iget-object v7, v6, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    const-string v8, ":"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x10

    invoke-static {v7, v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v10

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v8, v6, Landroid/net/wifi/ScanResult;->timestamp:J

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v13

    iget v12, v6, Landroid/net/wifi/ScanResult;->level:I

    iget-wide v7, v6, Landroid/net/wifi/ScanResult;->timestamp:J

    iget v15, v6, Landroid/net/wifi/ScanResult;->frequency:I

    const-wide/16 v16, 0x1

    cmp-long v6, v10, v16

    if-ltz v6, :cond_0

    const-wide v16, 0xfffffffffffeL

    cmp-long v6, v10, v16

    if-gtz v6, :cond_0

    const/16 v6, -0x78

    const/4 v9, 0x0

    const/16 v16, 0x1

    if-le v12, v6, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    if-gez v12, :cond_2

    const/4 v9, 0x1

    :cond_2
    and-int/2addr v6, v9

    if-eqz v6, :cond_0

    const-wide/16 v16, 0x0

    cmp-long v6, v7, v16

    if-lez v6, :cond_0

    const/16 v6, 0x960

    if-lt v15, v6, :cond_3

    const/16 v6, 0x9c4

    if-gt v15, v6, :cond_3

    goto :goto_2

    :cond_3
    const/16 v6, 0x1324

    if-lt v15, v6, :cond_0

    const/16 v6, 0x16da

    if-gt v15, v6, :cond_0

    :goto_2
    cmp-long v6, v13, v4

    if-lez v6, :cond_4

    move-wide v4, v13

    :cond_4
    new-instance v6, Lcom/huawei/location/nlp/network/request/wifi/WifiInfo;

    move-object v9, v6

    invoke-direct/range {v9 .. v15}, Lcom/huawei/location/nlp/network/request/wifi/WifiInfo;-><init>(JIJI)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "convertScanResult size is "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", current time is "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", bootTimeMax is "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v6, "ScanBase"

    invoke-static {v6, v1}, Lcom/huawei/location/lite/common/log/LogConsole;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/util/Pair;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v1, v4, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "filterResult, wifiScanResult bootTime is "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/huawei/location/lite/common/log/LogConsole;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v4, 0x78

    if-le v0, v4, :cond_a

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    new-instance v7, Lcom/huawei/location/nlp/scan/FB;

    move-object/from16 v8, p0

    invoke-direct {v7, v8}, Lcom/huawei/location/nlp/scan/FB;-><init>(Lcom/huawei/location/nlp/scan/LW;)V

    invoke-static {v0, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/4 v10, -0x1

    :cond_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/huawei/location/nlp/network/request/wifi/WifiInfo;

    invoke-virtual {v11}, Lcom/huawei/location/nlp/network/request/wifi/WifiInfo;->getTime()J

    move-result-wide v12

    sub-long v12, v5, v12

    const v14, 0x7a1200

    int-to-long v14, v14

    cmp-long v16, v12, v14

    if-ltz v16, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    :cond_7
    invoke-virtual {v11}, Lcom/huawei/location/nlp/network/request/wifi/WifiInfo;->getMac()J

    move-result-wide v12

    const-wide/16 v14, 0x10

    div-long/2addr v12, v14

    cmp-long v16, v2, v12

    if-nez v16, :cond_8

    invoke-virtual {v11}, Lcom/huawei/location/nlp/network/request/wifi/WifiInfo;->getFrequency()I

    move-result v12

    if-eq v10, v12, :cond_9

    :cond_8
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v11}, Lcom/huawei/location/nlp/network/request/wifi/WifiInfo;->getMac()J

    move-result-wide v2

    div-long/2addr v2, v14

    invoke-virtual {v11}, Lcom/huawei/location/nlp/network/request/wifi/WifiInfo;->getFrequency()I

    move-result v10

    :cond_9
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v12

    add-int/2addr v11, v12

    if-ne v11, v4, :cond_6

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    :cond_a
    move-object/from16 v8, p0

    :cond_b
    :goto_3
    return-object v1
.end method

.method public yn(Lcom/huawei/location/nlp/network/request/cell/HwCellInfo;Ljava/util/List;Ljava/util/List;)V
    .locals 15

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/huawei/location/nlp/network/request/cell/CurrentCell;->getMcc()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/huawei/location/nlp/network/request/cell/CurrentCell;->getMnc()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/huawei/location/nlp/network/request/cell/CurrentCell;->getRat()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v2, v3, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/huawei/location/nlp/network/request/cell/CurrentCell;->getRat()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/huawei/location/nlp/network/request/cell/HwCellInfo;->getChannelNumber()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    :goto_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_5

    :goto_2
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_5

    move-object/from16 v5, p2

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/huawei/location/nlp/network/request/cell/HwNeighborCellInfo;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/huawei/location/nlp/network/request/cell/CurrentCell;->getMcc()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/huawei/location/nlp/network/request/cell/CurrentCell;->getMnc()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    if-eqz v2, :cond_2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/huawei/location/nlp/network/request/cell/HwCellInfo;->getChannelNumber()I

    move-result v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_2
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    new-instance v7, Lcom/huawei/location/nlp/network/request/cell/NeighborCell;

    invoke-virtual {v6}, Lcom/huawei/location/nlp/network/request/cell/HwCellInfo;->getChannelNumber()I

    move-result v8

    invoke-virtual {v6}, Lcom/huawei/location/nlp/network/request/cell/HwNeighborCellInfo;->getPhysicalIdentity()I

    move-result v9

    invoke-virtual {v6}, Lcom/huawei/location/nlp/network/request/cell/CurrentCell;->getRssi()S

    move-result v6

    invoke-direct {v7, v8, v9, v6}, Lcom/huawei/location/nlp/network/request/cell/NeighborCell;-><init>(IIS)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    new-instance v0, Lcom/huawei/location/nlp/network/request/cell/CurrentCell;

    invoke-virtual/range {p1 .. p1}, Lcom/huawei/location/nlp/network/request/cell/CurrentCell;->getBoottime()J

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Lcom/huawei/location/nlp/network/request/cell/CurrentCell;->getMcc()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Lcom/huawei/location/nlp/network/request/cell/CurrentCell;->getMnc()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Lcom/huawei/location/nlp/network/request/cell/CurrentCell;->getLac()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Lcom/huawei/location/nlp/network/request/cell/CurrentCell;->getCellId()J

    move-result-wide v11

    invoke-virtual/range {p1 .. p1}, Lcom/huawei/location/nlp/network/request/cell/CurrentCell;->getRat()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Lcom/huawei/location/nlp/network/request/cell/CurrentCell;->getRssi()S

    move-result v14

    move-object v5, v0

    invoke-direct/range {v5 .. v14}, Lcom/huawei/location/nlp/network/request/cell/CurrentCell;-><init>(JIIIJIS)V

    new-instance v1, Lcom/huawei/location/nlp/network/request/cell/CellSourceInfo;

    invoke-direct {v1, v0, v3}, Lcom/huawei/location/nlp/network/request/cell/CellSourceInfo;-><init>(Lcom/huawei/location/nlp/network/request/cell/CurrentCell;Ljava/util/List;)V

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
