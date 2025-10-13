.class public final synthetic Lorg/telegram/messenger/HuaweiLocationProvider$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/huawei/hms/api/HuaweiApiClient$OnConnectionFailedListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/ILocationServiceProvider$IAPIOnConnectionFailedListener;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/ILocationServiceProvider$IAPIOnConnectionFailedListener;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/HuaweiLocationProvider$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/messenger/ILocationServiceProvider$IAPIOnConnectionFailedListener;

    return-void
.end method


# virtual methods
.method public final onConnectionFailed(Lcom/huawei/hms/api/ConnectionResult;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/HuaweiLocationProvider$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/messenger/ILocationServiceProvider$IAPIOnConnectionFailedListener;

    invoke-static {v0, p1}, Lorg/telegram/messenger/HuaweiLocationProvider;->$r8$lambda$3H0D4OkV5rkDJWynl3fKT2YNbM8(Lorg/telegram/messenger/ILocationServiceProvider$IAPIOnConnectionFailedListener;Lcom/huawei/hms/api/ConnectionResult;)V

    return-void
.end method
