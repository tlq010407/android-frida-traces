.class public abstract Lcom/huawei/location/lite/common/android/context/ContextUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static mContext:Landroid/content/Context;

.field private static mHMSContext:Landroid/content/Context;


# direct methods
.method public static getContext()Landroid/content/Context;
    .locals 2

    sget-object v0, Lcom/huawei/location/lite/common/android/context/ContextUtil;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Context is null , must init first!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getHMSContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/huawei/location/lite/common/android/context/ContextUtil;->mHMSContext:Landroid/content/Context;

    if-nez v0, :cond_0

    sget-object v0, Lcom/huawei/location/lite/common/android/context/ContextUtil;->mContext:Landroid/content/Context;

    :cond_0
    return-object v0
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/huawei/location/lite/common/android/context/ContextUtil;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/huawei/location/lite/common/android/context/ContextUtil;->mContext:Landroid/content/Context;

    :cond_0
    return-void
.end method
