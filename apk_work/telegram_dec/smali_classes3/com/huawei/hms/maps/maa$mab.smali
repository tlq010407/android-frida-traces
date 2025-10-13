.class Lcom/huawei/hms/maps/maa$mab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/maps/maa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "mab"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Consumer;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/huawei/hms/maps/maa;


# direct methods
.method private constructor <init>(Lcom/huawei/hms/maps/maa;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/huawei/hms/maps/maa$mab;->a:Lcom/huawei/hms/maps/maa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/huawei/hms/maps/maa;Lcom/huawei/hms/maps/maa$1;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/huawei/hms/maps/maa$mab;-><init>(Lcom/huawei/hms/maps/maa;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lcom/huawei/hms/maps/maa$mab;->a:Lcom/huawei/hms/maps/maa;

    invoke-static {v0}, Lcom/huawei/hms/maps/maa;->b(Lcom/huawei/hms/maps/maa;)V

    iget-object v0, p0, Lcom/huawei/hms/maps/maa$mab;->a:Lcom/huawei/hms/maps/maa;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/huawei/hms/maps/maa;->a(Lcom/huawei/hms/maps/maa;Z)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCreator: throwable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; createdFlag = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/huawei/hms/maps/maa$mab;->a:Lcom/huawei/hms/maps/maa;

    invoke-static {p1}, Lcom/huawei/hms/maps/maa;->c(Lcom/huawei/hms/maps/maa;)Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AbsDeferredLifecycleHelper"

    invoke-static {v0, p1}, Lcom/huawei/hms/maps/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/huawei/hms/maps/maa$mab;->a(Ljava/lang/Throwable;)V

    return-void
.end method
