.class Lorg/telegram/messenger/LocaleController$TimeZoneChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/LocaleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeZoneChangedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/LocaleController;


# direct methods
.method public static synthetic $r8$lambda$xG5T9FIIxFHrEorFG2F21OvAjlA(Lorg/telegram/messenger/LocaleController$TimeZoneChangedReceiver;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/LocaleController$TimeZoneChangedReceiver;->lambda$onReceive$0()V

    return-void
.end method

.method private constructor <init>(Lorg/telegram/messenger/LocaleController;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/messenger/LocaleController$TimeZoneChangedReceiver;->this$0:Lorg/telegram/messenger/LocaleController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/messenger/LocaleController;Lorg/telegram/messenger/LocaleController$1;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/LocaleController$TimeZoneChangedReceiver;-><init>(Lorg/telegram/messenger/LocaleController;)V

    return-void
.end method

.method private synthetic lambda$onReceive$0()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/LocaleController$TimeZoneChangedReceiver;->this$0:Lorg/telegram/messenger/LocaleController;

    invoke-virtual {v0}, Lorg/telegram/messenger/LocaleController;->getFormatterDayMonth()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/time/FastDateFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/LocaleController;->recreateFormatters()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    sget-object p1, Lorg/telegram/messenger/ApplicationLoader;->applicationHandler:Landroid/os/Handler;

    new-instance p2, Lorg/telegram/messenger/LocaleController$TimeZoneChangedReceiver$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lorg/telegram/messenger/LocaleController$TimeZoneChangedReceiver$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/LocaleController$TimeZoneChangedReceiver;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
