.class Lorg/telegram/messenger/ApplicationLoader$2;
.super Lorg/telegram/ui/Components/ForegroundDetector;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/ApplicationLoader;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/ApplicationLoader;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/ApplicationLoader;Landroid/app/Application;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/ApplicationLoader$2;->this$0:Lorg/telegram/messenger/ApplicationLoader;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/ForegroundDetector;-><init>(Landroid/app/Application;)V

    return-void
.end method


# virtual methods
.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ForegroundDetector;->isBackground()Z

    move-result v0

    invoke-super {p0, p1}, Lorg/telegram/ui/Components/ForegroundDetector;->onActivityStarted(Landroid/app/Activity;)V

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    invoke-static {p1}, Lorg/telegram/messenger/ApplicationLoader;->access$100(Z)V

    :cond_0
    return-void
.end method
