.class public abstract synthetic Lorg/telegram/ui/web/BotWebViewContainer$Delegate$-CC;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static $default$getBotSensors(Lorg/telegram/ui/web/BotWebViewContainer$Delegate;)Lorg/telegram/ui/bots/BotSensors;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static $default$isClipboardAvailable(Lorg/telegram/ui/web/BotWebViewContainer$Delegate;)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public static $default$onCloseToTabs(Lorg/telegram/ui/web/BotWebViewContainer$Delegate;)V
    .locals 1

    const/4 v0, 0x0

    .line 0
    invoke-interface {p0, v0}, Lorg/telegram/ui/web/BotWebViewContainer$Delegate;->onCloseRequested(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static $default$onEmojiStatusGranted(Lorg/telegram/ui/web/BotWebViewContainer$Delegate;Z)V
    .locals 0

    .line 0
    return-void
.end method

.method public static $default$onEmojiStatusSet(Lorg/telegram/ui/web/BotWebViewContainer$Delegate;Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 0

    .line 0
    return-void
.end method

.method public static $default$onFullscreenRequested(Lorg/telegram/ui/web/BotWebViewContainer$Delegate;Z)Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "UNSUPPORTED"

    return-object p0
.end method

.method public static $default$onInstantClose(Lorg/telegram/ui/web/BotWebViewContainer$Delegate;)V
    .locals 1

    const/4 v0, 0x0

    .line 0
    invoke-interface {p0, v0}, Lorg/telegram/ui/web/BotWebViewContainer$Delegate;->onCloseRequested(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static $default$onLocationGranted(Lorg/telegram/ui/web/BotWebViewContainer$Delegate;Z)V
    .locals 0

    .line 0
    return-void
.end method

.method public static $default$onOpenBackFromTabs(Lorg/telegram/ui/web/BotWebViewContainer$Delegate;)V
    .locals 0

    .line 0
    return-void
.end method

.method public static $default$onOrientationLockChanged(Lorg/telegram/ui/web/BotWebViewContainer$Delegate;Z)V
    .locals 0

    .line 0
    return-void
.end method

.method public static $default$onSendWebViewData(Lorg/telegram/ui/web/BotWebViewContainer$Delegate;Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method public static $default$onSharedTo(Lorg/telegram/ui/web/BotWebViewContainer$Delegate;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    return-void
.end method

.method public static $default$onWebAppBackgroundChanged(Lorg/telegram/ui/web/BotWebViewContainer$Delegate;ZI)V
    .locals 0

    .line 0
    return-void
.end method

.method public static $default$onWebAppReady(Lorg/telegram/ui/web/BotWebViewContainer$Delegate;)V
    .locals 0

    .line 0
    return-void
.end method

.method public static $default$onWebAppSetNavigationBarColor(Lorg/telegram/ui/web/BotWebViewContainer$Delegate;I)V
    .locals 0

    .line 0
    return-void
.end method
