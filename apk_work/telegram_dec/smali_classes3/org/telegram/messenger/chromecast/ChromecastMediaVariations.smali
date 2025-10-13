.class public Lorg/telegram/messenger/chromecast/ChromecastMediaVariations;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/chromecast/ChromecastMediaVariations$Builder;
    }
.end annotation


# instance fields
.field private final variations:Ljava/util/ArrayList;


# direct methods
.method private constructor <init>(Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/chromecast/ChromecastMediaVariations;->variations:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/ArrayList;Lorg/telegram/messenger/chromecast/ChromecastMediaVariations$1;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/chromecast/ChromecastMediaVariations;-><init>(Ljava/util/ArrayList;)V

    return-void
.end method

.method private constructor <init>(Lorg/telegram/messenger/chromecast/ChromecastMedia;)V
    .locals 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/chromecast/ChromecastMediaVariations;->variations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static of(Lorg/telegram/messenger/chromecast/ChromecastMedia;)Lorg/telegram/messenger/chromecast/ChromecastMediaVariations;
    .locals 1

    new-instance v0, Lorg/telegram/messenger/chromecast/ChromecastMediaVariations;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/chromecast/ChromecastMediaVariations;-><init>(Lorg/telegram/messenger/chromecast/ChromecastMedia;)V

    return-object v0
.end method


# virtual methods
.method public getVariation(I)Lorg/telegram/messenger/chromecast/ChromecastMedia;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/chromecast/ChromecastMediaVariations;->variations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/chromecast/ChromecastMedia;

    return-object p1
.end method

.method public getVariationsCount()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/chromecast/ChromecastMediaVariations;->variations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
