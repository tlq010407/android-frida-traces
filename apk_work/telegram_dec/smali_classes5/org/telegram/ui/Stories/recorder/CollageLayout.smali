.class public Lorg/telegram/ui/Stories/recorder/CollageLayout;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;
    }
.end annotation


# static fields
.field private static layouts:Ljava/util/ArrayList;


# instance fields
.field public final columns:[I

.field public final h:I

.field public final parts:Ljava/util/ArrayList;

.field private final src:Ljava/lang/String;

.field public final w:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayout;->parts:Ljava/util/ArrayList;

    if-nez p1, :cond_0

    const-string p1, "."

    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/CollageLayout;->src:Ljava/lang/String;

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayout;->h:I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayout;->columns:[I

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/CollageLayout;->columns:[I

    aget-object v4, p1, v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    aput v4, v3, v1

    aget-object v3, p1, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iput v2, p0, Lorg/telegram/ui/Stories/recorder/CollageLayout;->w:I

    const/4 v1, 0x0

    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_3

    const/4 v2, 0x0

    :goto_2
    aget-object v3, p1, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/CollageLayout;->parts:Ljava/util/ArrayList;

    new-instance v4, Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v2, v1, v5}, Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;-><init>(Lorg/telegram/ui/Stories/recorder/CollageLayout;IILorg/telegram/ui/Stories/recorder/CollageLayout$1;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public static getLayouts()Ljava/util/ArrayList;
    .locals 3

    sget-object v0, Lorg/telegram/ui/Stories/recorder/CollageLayout;->layouts:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/telegram/ui/Stories/recorder/CollageLayout;->layouts:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/CollageLayout;

    const-string v2, "./."

    invoke-direct {v1, v2}, Lorg/telegram/ui/Stories/recorder/CollageLayout;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/telegram/ui/Stories/recorder/CollageLayout;->layouts:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/CollageLayout;

    const-string v2, ".."

    invoke-direct {v1, v2}, Lorg/telegram/ui/Stories/recorder/CollageLayout;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/telegram/ui/Stories/recorder/CollageLayout;->layouts:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/CollageLayout;

    const-string v2, "../."

    invoke-direct {v1, v2}, Lorg/telegram/ui/Stories/recorder/CollageLayout;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/telegram/ui/Stories/recorder/CollageLayout;->layouts:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/CollageLayout;

    const-string v2, "./.."

    invoke-direct {v1, v2}, Lorg/telegram/ui/Stories/recorder/CollageLayout;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/telegram/ui/Stories/recorder/CollageLayout;->layouts:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/CollageLayout;

    const-string v2, "././."

    invoke-direct {v1, v2}, Lorg/telegram/ui/Stories/recorder/CollageLayout;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/telegram/ui/Stories/recorder/CollageLayout;->layouts:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/CollageLayout;

    const-string v2, "..."

    invoke-direct {v1, v2}, Lorg/telegram/ui/Stories/recorder/CollageLayout;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/telegram/ui/Stories/recorder/CollageLayout;->layouts:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/CollageLayout;

    const-string v2, "../.."

    invoke-direct {v1, v2}, Lorg/telegram/ui/Stories/recorder/CollageLayout;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/telegram/ui/Stories/recorder/CollageLayout;->layouts:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/CollageLayout;

    const-string v2, "./../.."

    invoke-direct {v1, v2}, Lorg/telegram/ui/Stories/recorder/CollageLayout;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/telegram/ui/Stories/recorder/CollageLayout;->layouts:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/CollageLayout;

    const-string v2, "../../."

    invoke-direct {v1, v2}, Lorg/telegram/ui/Stories/recorder/CollageLayout;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/telegram/ui/Stories/recorder/CollageLayout;->layouts:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/CollageLayout;

    const-string v2, "../../.."

    invoke-direct {v1, v2}, Lorg/telegram/ui/Stories/recorder/CollageLayout;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-eqz v0, :cond_0

    sget-object v0, Lorg/telegram/ui/Stories/recorder/CollageLayout;->layouts:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/CollageLayout;

    const-string v2, "../../../.."

    invoke-direct {v1, v2}, Lorg/telegram/ui/Stories/recorder/CollageLayout;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/telegram/ui/Stories/recorder/CollageLayout;->layouts:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/CollageLayout;

    const-string v2, ".../.../..."

    invoke-direct {v1, v2}, Lorg/telegram/ui/Stories/recorder/CollageLayout;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/telegram/ui/Stories/recorder/CollageLayout;->layouts:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/CollageLayout;

    const-string v2, "..../..../...."

    invoke-direct {v1, v2}, Lorg/telegram/ui/Stories/recorder/CollageLayout;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/telegram/ui/Stories/recorder/CollageLayout;->layouts:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/CollageLayout;

    const-string v2, ".../.../.../..."

    invoke-direct {v1, v2}, Lorg/telegram/ui/Stories/recorder/CollageLayout;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-object v0, Lorg/telegram/ui/Stories/recorder/CollageLayout;->layouts:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getMaxCount()I
    .locals 3

    invoke-static {}, Lorg/telegram/ui/Stories/recorder/CollageLayout;->getLayouts()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Stories/recorder/CollageLayout;

    iget-object v2, v2, Lorg/telegram/ui/Stories/recorder/CollageLayout;->parts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public static of(I)Lorg/telegram/ui/Stories/recorder/CollageLayout;
    .locals 3

    invoke-static {}, Lorg/telegram/ui/Stories/recorder/CollageLayout;->getLayouts()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Stories/recorder/CollageLayout;

    iget-object v2, v1, Lorg/telegram/ui/Stories/recorder/CollageLayout;->parts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v2, p0, :cond_0

    return-object v1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public delete(I)Lorg/telegram/ui/Stories/recorder/CollageLayout;
    .locals 5

    if-ltz p1, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayout;->parts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/CollageLayout;->parts:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;

    iget v4, v3, Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;->y:I

    if-eq v4, v2, :cond_1

    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v3, Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;->y:I

    :cond_1
    const-string v3, "."

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Lorg/telegram/ui/Stories/recorder/CollageLayout;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/telegram/ui/Stories/recorder/CollageLayout;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lorg/telegram/ui/Stories/recorder/CollageLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayout;->src:Ljava/lang/String;

    check-cast p1, Lorg/telegram/ui/Stories/recorder/CollageLayout;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/CollageLayout;->src:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayout;->src:Ljava/lang/String;

    return-object v0
.end method
