.class Lcom/huawei/location/logic/d2$yn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/location/logic/d2;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic yn:Lcom/huawei/location/logic/d2;


# direct methods
.method constructor <init>(Lcom/huawei/location/logic/d2;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/location/logic/d2$yn;->yn:Lcom/huawei/location/logic/d2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    iget-object v0, p0, Lcom/huawei/location/logic/d2$yn;->yn:Lcom/huawei/location/logic/d2;

    invoke-static {v0, p1}, Lcom/huawei/location/logic/d2;->yn(Lcom/huawei/location/logic/d2;Landroid/os/Message;)Z

    move-result p1

    return p1
.end method
