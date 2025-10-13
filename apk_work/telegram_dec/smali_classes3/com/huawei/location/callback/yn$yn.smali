.class public Lcom/huawei/location/callback/yn$yn;
.super Lcom/huawei/location/callback/LW;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/location/callback/yn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "yn"
.end annotation


# instance fields
.field private FB:Lcom/huawei/location/base/activity/callback/ARCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/huawei/location/callback/LW;-><init>()V

    return-void
.end method


# virtual methods
.method public FB()Lcom/huawei/location/base/activity/callback/ARCallback;
    .locals 1

    iget-object v0, p0, Lcom/huawei/location/callback/yn$yn;->FB:Lcom/huawei/location/base/activity/callback/ARCallback;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    instance-of v0, p1, Lcom/huawei/location/callback/yn$yn;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/huawei/location/callback/yn$yn;

    iget-object v1, p0, Lcom/huawei/location/callback/yn$yn;->FB:Lcom/huawei/location/base/activity/callback/ARCallback;

    iget-object v0, v0, Lcom/huawei/location/callback/yn$yn;->FB:Lcom/huawei/location/base/activity/callback/ARCallback;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public yn(Lcom/huawei/location/base/activity/callback/ARCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/location/callback/yn$yn;->FB:Lcom/huawei/location/base/activity/callback/ARCallback;

    return-void
.end method
