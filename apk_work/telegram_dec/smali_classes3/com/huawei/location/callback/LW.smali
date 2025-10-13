.class public abstract Lcom/huawei/location/callback/LW;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private Vw:Lcom/huawei/location/router/interfaces/IRouterCallback;

.field private yn:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Vw()Lcom/huawei/location/router/interfaces/IRouterCallback;
    .locals 1

    iget-object v0, p0, Lcom/huawei/location/callback/LW;->Vw:Lcom/huawei/location/router/interfaces/IRouterCallback;

    return-object v0
.end method

.method public yn()Landroid/app/PendingIntent;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/huawei/location/callback/LW;->yn:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public yn(Landroid/app/PendingIntent;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/huawei/location/callback/LW;->yn:Landroid/app/PendingIntent;

    return-void
.end method

.method public yn(Lcom/huawei/location/router/interfaces/IRouterCallback;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/huawei/location/callback/LW;->Vw:Lcom/huawei/location/router/interfaces/IRouterCallback;

    return-void
.end method
