.class public Lorg/telegram/messenger/chromecast/ChromecastMediaVariations$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/chromecast/ChromecastMediaVariations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final variations:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/chromecast/ChromecastMediaVariations$Builder;->variations:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public add(Lorg/telegram/messenger/chromecast/ChromecastMedia;)Lorg/telegram/messenger/chromecast/ChromecastMediaVariations$Builder;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/chromecast/ChromecastMediaVariations$Builder;->variations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Lorg/telegram/messenger/chromecast/ChromecastMediaVariations;
    .locals 3

    new-instance v0, Lorg/telegram/messenger/chromecast/ChromecastMediaVariations;

    iget-object v1, p0, Lorg/telegram/messenger/chromecast/ChromecastMediaVariations$Builder;->variations:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/chromecast/ChromecastMediaVariations;-><init>(Ljava/util/ArrayList;Lorg/telegram/messenger/chromecast/ChromecastMediaVariations$1;)V

    return-object v0
.end method
