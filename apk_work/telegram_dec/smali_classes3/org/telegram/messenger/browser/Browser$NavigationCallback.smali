.class Lorg/telegram/messenger/browser/Browser$NavigationCallback;
.super Lorg/telegram/messenger/support/customtabs/CustomTabsCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/browser/Browser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NavigationCallback"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/support/customtabs/CustomTabsCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/messenger/browser/Browser$1;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/browser/Browser$NavigationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onNavigationEvent(ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
