.class Lorg/telegram/ui/SaveToGallerySettingsActivity$Item;
.super Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/SaveToGallerySettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Item"
.end annotation


# instance fields
.field final exception:Lorg/telegram/messenger/SaveToGallerySettingsHelper$DialogException;

.field final synthetic this$0:Lorg/telegram/ui/SaveToGallerySettingsActivity;

.field title:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lorg/telegram/ui/SaveToGallerySettingsActivity;I)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity$Item;->this$0:Lorg/telegram/ui/SaveToGallerySettingsActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;-><init>(IZ)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity$Item;->exception:Lorg/telegram/messenger/SaveToGallerySettingsHelper$DialogException;

    return-void
.end method

.method private constructor <init>(Lorg/telegram/ui/SaveToGallerySettingsActivity;ILjava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity$Item;->this$0:Lorg/telegram/ui/SaveToGallerySettingsActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;-><init>(IZ)V

    iput-object p3, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity$Item;->title:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity$Item;->exception:Lorg/telegram/messenger/SaveToGallerySettingsHelper$DialogException;

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/SaveToGallerySettingsActivity;ILjava/lang/String;Lorg/telegram/ui/SaveToGallerySettingsActivity$1;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/SaveToGallerySettingsActivity$Item;-><init>(Lorg/telegram/ui/SaveToGallerySettingsActivity;ILjava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lorg/telegram/ui/SaveToGallerySettingsActivity;ILorg/telegram/messenger/SaveToGallerySettingsHelper$DialogException;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity$Item;->this$0:Lorg/telegram/ui/SaveToGallerySettingsActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;-><init>(IZ)V

    iput-object p3, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity$Item;->exception:Lorg/telegram/messenger/SaveToGallerySettingsHelper$DialogException;

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/SaveToGallerySettingsActivity;ILorg/telegram/messenger/SaveToGallerySettingsHelper$DialogException;Lorg/telegram/ui/SaveToGallerySettingsActivity$1;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/SaveToGallerySettingsActivity$Item;-><init>(Lorg/telegram/ui/SaveToGallerySettingsActivity;ILorg/telegram/messenger/SaveToGallerySettingsHelper$DialogException;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/SaveToGallerySettingsActivity;ILorg/telegram/ui/SaveToGallerySettingsActivity$1;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/SaveToGallerySettingsActivity$Item;-><init>(Lorg/telegram/ui/SaveToGallerySettingsActivity;I)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lorg/telegram/ui/SaveToGallerySettingsActivity$Item;

    iget v2, p0, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    iget v3, p1, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity$Item;->title:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object p1, p1, Lorg/telegram/ui/SaveToGallerySettingsActivity$Item;->title:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity$Item;->exception:Lorg/telegram/messenger/SaveToGallerySettingsHelper$DialogException;

    if-eqz v2, :cond_5

    iget-object p1, p1, Lorg/telegram/ui/SaveToGallerySettingsActivity$Item;->exception:Lorg/telegram/messenger/SaveToGallerySettingsHelper$DialogException;

    if-eqz p1, :cond_5

    iget-wide v2, v2, Lorg/telegram/messenger/SaveToGallerySettingsHelper$DialogException;->dialogId:J

    iget-wide v4, p1, Lorg/telegram/messenger/SaveToGallerySettingsHelper$DialogException;->dialogId:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :cond_5
    :goto_0
    return v0

    :cond_6
    :goto_1
    return v1
.end method
