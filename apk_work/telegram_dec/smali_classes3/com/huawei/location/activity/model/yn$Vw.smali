.class Lcom/huawei/location/activity/model/yn$Vw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/huawei/location/base/activity/callback/ARCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/location/activity/model/yn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Vw"
.end annotation


# instance fields
.field final synthetic yn:Lcom/huawei/location/activity/model/yn;


# direct methods
.method private constructor <init>(Lcom/huawei/location/activity/model/yn;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/huawei/location/activity/model/yn$Vw;->yn:Lcom/huawei/location/activity/model/yn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/huawei/location/activity/model/yn;Lcom/huawei/location/activity/model/yn$yn;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/huawei/location/activity/model/yn$Vw;-><init>(Lcom/huawei/location/activity/model/yn;)V

    return-void
.end method


# virtual methods
.method public onActivityRecognition(Lcom/huawei/hms/location/entity/activity/ActivityRecognitionResult;)V
    .locals 6

    iget-object v0, p0, Lcom/huawei/location/activity/model/yn$Vw;->yn:Lcom/huawei/location/activity/model/yn;

    invoke-virtual {p1}, Lcom/huawei/hms/location/entity/activity/ActivityRecognitionResult;->getProbableActivities()Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, Lcom/huawei/location/activity/model/yn;->yn:Ljava/util/List;

    iget-object p1, p0, Lcom/huawei/location/activity/model/yn$Vw;->yn:Lcom/huawei/location/activity/model/yn;

    iget-object v0, p1, Lcom/huawei/location/activity/model/yn;->yn:Ljava/util/List;

    if-nez v0, :cond_0

    const-string p1, "ATProvider"

    const-string v0, "detectedActivities is null."

    invoke-static {p1, v0}, Lcom/huawei/location/lite/common/log/LogConsole;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huawei/hms/location/entity/activity/DetectedActivity;

    invoke-virtual {v4}, Lcom/huawei/hms/location/entity/activity/DetectedActivity;->getType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huawei/hms/location/entity/activity/DetectedActivity;

    invoke-virtual {v4}, Lcom/huawei/hms/location/entity/activity/DetectedActivity;->getConfidence()I

    move-result v4

    if-le v4, v2, :cond_2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/hms/location/entity/activity/DetectedActivity;

    invoke-virtual {v1}, Lcom/huawei/hms/location/entity/activity/DetectedActivity;->getType()I

    move-result v1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/hms/location/entity/activity/DetectedActivity;

    invoke-virtual {v2}, Lcom/huawei/hms/location/entity/activity/DetectedActivity;->getConfidence()I

    move-result v2

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-static {p1, v1}, Lcom/huawei/location/activity/model/yn;->yn(Lcom/huawei/location/activity/model/yn;I)V

    return-void
.end method
