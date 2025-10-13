.class Lcom/huawei/location/lite/common/android/receiver/GnssAndNetReceiver$2;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/location/lite/common/android/receiver/GnssAndNetReceiver;->registerNetworkObserve()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/location/lite/common/android/receiver/GnssAndNetReceiver;


# direct methods
.method constructor <init>(Lcom/huawei/location/lite/common/android/receiver/GnssAndNetReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/location/lite/common/android/receiver/GnssAndNetReceiver$2;->this$0:Lcom/huawei/location/lite/common/android/receiver/GnssAndNetReceiver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    new-instance p1, Lcom/huawei/secure/android/common/intent/SafeIntent;

    invoke-direct {p1, p2}, Lcom/huawei/secure/android/common/intent/SafeIntent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {p1}, Lcom/huawei/secure/android/common/intent/SafeIntent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/huawei/location/lite/common/android/receiver/GnssAndNetReceiver$2;->this$0:Lcom/huawei/location/lite/common/android/receiver/GnssAndNetReceiver;

    invoke-static {p1}, Lcom/huawei/location/lite/common/android/receiver/GnssAndNetReceiver;->access$000(Lcom/huawei/location/lite/common/android/receiver/GnssAndNetReceiver;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/huawei/location/lite/common/android/receiver/GnssAndNetReceiver$2;->this$0:Lcom/huawei/location/lite/common/android/receiver/GnssAndNetReceiver;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/huawei/location/lite/common/android/receiver/GnssAndNetReceiver;->access$002(Lcom/huawei/location/lite/common/android/receiver/GnssAndNetReceiver;Z)Z

    return-void

    :cond_0
    iget-object p1, p0, Lcom/huawei/location/lite/common/android/receiver/GnssAndNetReceiver$2;->this$0:Lcom/huawei/location/lite/common/android/receiver/GnssAndNetReceiver;

    invoke-virtual {p1}, Lcom/huawei/location/lite/common/android/receiver/GnssAndNetReceiver;->notifyListeners()V

    :cond_1
    return-void
.end method
