.class public final synthetic Lorg/telegram/ui/web/WebBrowserSettings$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/Utilities$Callback;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/web/WebBrowserSettings;

.field public final synthetic f$1:[Lorg/telegram/ui/web/HistoryFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/web/WebBrowserSettings;[Lorg/telegram/ui/web/HistoryFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/web/WebBrowserSettings$$ExternalSyntheticLambda7;->f$0:Lorg/telegram/ui/web/WebBrowserSettings;

    iput-object p2, p0, Lorg/telegram/ui/web/WebBrowserSettings$$ExternalSyntheticLambda7;->f$1:[Lorg/telegram/ui/web/HistoryFragment;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/web/WebBrowserSettings$$ExternalSyntheticLambda7;->f$0:Lorg/telegram/ui/web/WebBrowserSettings;

    iget-object v1, p0, Lorg/telegram/ui/web/WebBrowserSettings$$ExternalSyntheticLambda7;->f$1:[Lorg/telegram/ui/web/HistoryFragment;

    check-cast p1, Lorg/telegram/ui/web/BrowserHistory$Entry;

    invoke-static {v0, v1, p1}, Lorg/telegram/ui/web/WebBrowserSettings;->$r8$lambda$1QFZFYTQK5c6YQ97NrrM-u56oCE(Lorg/telegram/ui/web/WebBrowserSettings;[Lorg/telegram/ui/web/HistoryFragment;Lorg/telegram/ui/web/BrowserHistory$Entry;)V

    return-void
.end method
