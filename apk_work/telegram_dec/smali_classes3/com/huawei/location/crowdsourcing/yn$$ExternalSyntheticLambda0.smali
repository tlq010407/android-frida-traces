.class public final synthetic Lcom/huawei/location/crowdsourcing/yn$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/huawei/location/crowdsourcing/common/util/Vw;


# instance fields
.field public final synthetic f$0:J

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(JJ)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/huawei/location/crowdsourcing/yn$$ExternalSyntheticLambda0;->f$0:J

    iput-wide p3, p0, Lcom/huawei/location/crowdsourcing/yn$$ExternalSyntheticLambda0;->f$1:J

    return-void
.end method


# virtual methods
.method public final yn(Ljava/lang/Object;)Z
    .locals 4

    .line 0
    iget-wide v0, p0, Lcom/huawei/location/crowdsourcing/yn$$ExternalSyntheticLambda0;->f$0:J

    iget-wide v2, p0, Lcom/huawei/location/crowdsourcing/yn$$ExternalSyntheticLambda0;->f$1:J

    check-cast p1, Lcom/huawei/location/crowdsourcing/common/entity/yn;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/huawei/location/crowdsourcing/yn;->$r8$lambda$xp5VV-f1gPEjwFIoRd5fZBpTlzY(JJLcom/huawei/location/crowdsourcing/common/entity/yn;)Z

    move-result p1

    return p1
.end method
