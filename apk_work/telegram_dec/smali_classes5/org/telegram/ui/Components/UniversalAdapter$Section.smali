.class Lorg/telegram/ui/Components/UniversalAdapter$Section;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/UniversalAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Section"
.end annotation


# instance fields
.field public end:I

.field public start:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/Components/UniversalAdapter$1;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/UniversalAdapter$Section;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(I)Z
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/UniversalAdapter$Section;->start:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/UniversalAdapter$Section;->end:I

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
