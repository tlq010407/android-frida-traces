.class public final synthetic Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/huawei/hms/maps/HuaweiMap$OnCameraIdleListener;


# instance fields
.field public final synthetic f$0:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onCameraIdle()V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
