.class public abstract Lcom/huawei/secure/android/common/intent/IntentUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static hasIntentBomb(Landroid/content/Intent;)Z
    .locals 3

    const/4 v0, 0x1

    const-string v1, "IntentUtils"

    if-nez p0, :cond_0

    const-string p0, "intent is null"

    invoke-static {v1, p0}, Lcom/huawei/secure/android/common/activity/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    instance-of v2, p0, Lcom/huawei/secure/android/common/intent/SafeIntent;

    if-eqz v2, :cond_1

    const-string v0, "safe intent"

    invoke-static {v1, v0}, Lcom/huawei/secure/android/common/activity/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    check-cast p0, Lcom/huawei/secure/android/common/intent/SafeIntent;

    invoke-virtual {p0}, Lcom/huawei/secure/android/common/intent/SafeIntent;->hasIntentBomb()Z

    move-result v0

    goto :goto_0

    :cond_1
    :try_start_0
    const-string v2, "ANYTHING"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    nop

    :goto_0
    if-eqz v0, :cond_2

    const-string p0, "hasIntentBomb"

    invoke-static {v1, p0}, Lcom/huawei/secure/android/common/activity/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return v0
.end method
