.class public final synthetic Lorg/telegram/messenger/HuaweiLocationProvider$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/huawei/hmf/tasks/OnCompleteListener;


# instance fields
.field public final synthetic f$0:Landroidx/core/util/Consumer;


# direct methods
.method public synthetic constructor <init>(Landroidx/core/util/Consumer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/HuaweiLocationProvider$$ExternalSyntheticLambda2;->f$0:Landroidx/core/util/Consumer;

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/huawei/hmf/tasks/Task;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/HuaweiLocationProvider$$ExternalSyntheticLambda2;->f$0:Landroidx/core/util/Consumer;

    invoke-static {v0, p1}, Lorg/telegram/messenger/HuaweiLocationProvider;->$r8$lambda$iULb_NOxg32Xy1GhJFuZj4jfowM(Landroidx/core/util/Consumer;Lcom/huawei/hmf/tasks/Task;)V

    return-void
.end method
