.class Lorg/telegram/messenger/MediaController$GalleryObserverExternal;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/MediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GalleryObserverExternal"
.end annotation


# direct methods
.method public static synthetic $r8$lambda$RXdudxX90yFWybAMOEn80RyiCv0()V
    .locals 0

    .line 0
    invoke-static {}, Lorg/telegram/messenger/MediaController$GalleryObserverExternal;->lambda$onChange$0()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method private static synthetic lambda$onChange$0()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->access$1902(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    const/4 v0, 0x0

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->loadGalleryPhotosAlbums(I)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    invoke-static {}, Lorg/telegram/messenger/MediaController;->access$1900()Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Lorg/telegram/messenger/MediaController;->access$1900()Ljava/lang/Runnable;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    new-instance p1, Lorg/telegram/messenger/MediaController$GalleryObserverExternal$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lorg/telegram/messenger/MediaController$GalleryObserverExternal$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1}, Lorg/telegram/messenger/MediaController;->access$1902(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    const-wide/16 v0, 0x7d0

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method
