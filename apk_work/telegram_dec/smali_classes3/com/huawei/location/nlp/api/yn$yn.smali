.class Lcom/huawei/location/nlp/api/yn$yn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/huawei/location/nlp/api/Vw;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/location/nlp/api/yn;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic yn:Lcom/huawei/location/nlp/api/yn;


# direct methods
.method public static synthetic $r8$lambda$7ELKIXLs5W5aKY-d16M52LKRKjI(Lcom/huawei/location/nlp/api/yn$yn;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/huawei/location/nlp/api/yn$yn;->Vw()V

    return-void
.end method

.method constructor <init>(Lcom/huawei/location/nlp/api/yn;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/location/nlp/api/yn$yn;->yn:Lcom/huawei/location/nlp/api/yn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic Vw()V
    .locals 2

    iget-object v0, p0, Lcom/huawei/location/nlp/api/yn$yn;->yn:Lcom/huawei/location/nlp/api/yn;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/huawei/location/nlp/api/yn;->yn(Lcom/huawei/location/nlp/api/yn;Z)V

    return-void
.end method


# virtual methods
.method public yn()V
    .locals 2

    iget-object v0, p0, Lcom/huawei/location/nlp/api/yn$yn;->yn:Lcom/huawei/location/nlp/api/yn;

    invoke-static {v0}, Lcom/huawei/location/nlp/api/yn;->yn(Lcom/huawei/location/nlp/api/yn;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "NLPClient"

    const-string v1, "isCacheAvailable is false, do request"

    invoke-static {v0, v1}, Lcom/huawei/location/lite/common/log/LogConsole;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/huawei/location/lite/common/util/ExecutorUtil;->getInstance()Lcom/huawei/location/lite/common/util/ExecutorUtil;

    move-result-object v0

    new-instance v1, Lcom/huawei/location/nlp/api/yn$yn$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/huawei/location/nlp/api/yn$yn$$ExternalSyntheticLambda0;-><init>(Lcom/huawei/location/nlp/api/yn$yn;)V

    invoke-virtual {v0, v1}, Lcom/huawei/location/lite/common/util/ExecutorUtil;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
