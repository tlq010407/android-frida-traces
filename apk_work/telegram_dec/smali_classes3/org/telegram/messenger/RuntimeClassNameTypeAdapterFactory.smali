.class public final Lorg/telegram/messenger/RuntimeClassNameTypeAdapterFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/gson/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/gson/TypeAdapterFactory;"
    }
.end annotation


# instance fields
.field private final baseType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final exclusionStrategy:Lcom/google/gson/ExclusionStrategy;

.field private final labelToSubtype:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final subtypeToLabel:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final typeFieldName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/Class;Ljava/lang/String;Lcom/google/gson/ExclusionStrategy;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Lcom/google/gson/ExclusionStrategy;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/RuntimeClassNameTypeAdapterFactory;->labelToSubtype:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/RuntimeClassNameTypeAdapterFactory;->subtypeToLabel:Ljava/util/Map;

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/telegram/messenger/RuntimeClassNameTypeAdapterFactory;->baseType:Ljava/lang/Class;

    iput-object p2, p0, Lorg/telegram/messenger/RuntimeClassNameTypeAdapterFactory;->typeFieldName:Ljava/lang/String;

    iput-object p3, p0, Lorg/telegram/messenger/RuntimeClassNameTypeAdapterFactory;->exclusionStrategy:Lcom/google/gson/ExclusionStrategy;

    return-void

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method static synthetic access$000(Lorg/telegram/messenger/RuntimeClassNameTypeAdapterFactory;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/telegram/messenger/RuntimeClassNameTypeAdapterFactory;->typeFieldName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/messenger/RuntimeClassNameTypeAdapterFactory;)Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Lorg/telegram/messenger/RuntimeClassNameTypeAdapterFactory;->baseType:Ljava/lang/Class;

    return-object p0
.end method

.method public static of(Ljava/lang/Class;)Lorg/telegram/messenger/RuntimeClassNameTypeAdapterFactory;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lorg/telegram/messenger/RuntimeClassNameTypeAdapterFactory<",
            "TT;>;"
        }
    .end annotation

    .line 0
    new-instance v0, Lorg/telegram/messenger/RuntimeClassNameTypeAdapterFactory;

    const-string v1, "class"

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lorg/telegram/messenger/RuntimeClassNameTypeAdapterFactory;-><init>(Ljava/lang/Class;Ljava/lang/String;Lcom/google/gson/ExclusionStrategy;)V

    return-object v0
.end method

.method public static of(Ljava/lang/Class;Ljava/lang/String;Lcom/google/gson/ExclusionStrategy;)Lorg/telegram/messenger/RuntimeClassNameTypeAdapterFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "Lcom/google/gson/ExclusionStrategy;",
            ")",
            "Lorg/telegram/messenger/RuntimeClassNameTypeAdapterFactory<",
            "TT;>;"
        }
    .end annotation

    .line 0
    new-instance v0, Lorg/telegram/messenger/RuntimeClassNameTypeAdapterFactory;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/messenger/RuntimeClassNameTypeAdapterFactory;-><init>(Ljava/lang/Class;Ljava/lang/String;Lcom/google/gson/ExclusionStrategy;)V

    return-object v0
.end method


# virtual methods
.method public create(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/Gson;",
            "Lcom/google/gson/reflect/TypeToken<",
            "TR;>;)",
            "Lcom/google/gson/TypeAdapter;"
        }
    .end annotation

    iget-object v0, p0, Lorg/telegram/messenger/RuntimeClassNameTypeAdapterFactory;->exclusionStrategy:Lcom/google/gson/ExclusionStrategy;

    invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/gson/ExclusionStrategy;->shouldSkipClass(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, p0, p2}, Lcom/google/gson/Gson;->getDelegateAdapter(Lcom/google/gson/TypeAdapterFactory;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    new-instance v6, Lorg/telegram/messenger/RuntimeClassNameTypeAdapterFactory$1;

    move-object v0, v6

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/RuntimeClassNameTypeAdapterFactory$1;-><init>(Lorg/telegram/messenger/RuntimeClassNameTypeAdapterFactory;Ljava/util/Map;Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;Ljava/util/Map;)V

    invoke-virtual {v6}, Lcom/google/gson/TypeAdapter;->nullSafe()Lcom/google/gson/TypeAdapter;

    move-result-object p1

    return-object p1
.end method

.method public registerSubtype(Ljava/lang/Class;)Lorg/telegram/messenger/RuntimeClassNameTypeAdapterFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+TT;>;)",
            "Lorg/telegram/messenger/RuntimeClassNameTypeAdapterFactory<",
            "TT;>;"
        }
    .end annotation

    .line 0
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/RuntimeClassNameTypeAdapterFactory;->registerSubtype(Ljava/lang/Class;Ljava/lang/String;)Lorg/telegram/messenger/RuntimeClassNameTypeAdapterFactory;

    move-result-object p1

    return-object p1
.end method

.method public registerSubtype(Ljava/lang/Class;Ljava/lang/String;)Lorg/telegram/messenger/RuntimeClassNameTypeAdapterFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+TT;>;",
            "Ljava/lang/String;",
            ")",
            "Lorg/telegram/messenger/RuntimeClassNameTypeAdapterFactory<",
            "TT;>;"
        }
    .end annotation

    .line 0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/RuntimeClassNameTypeAdapterFactory;->subtypeToLabel:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/RuntimeClassNameTypeAdapterFactory;->labelToSubtype:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/RuntimeClassNameTypeAdapterFactory;->labelToSubtype:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/telegram/messenger/RuntimeClassNameTypeAdapterFactory;->subtypeToLabel:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "types and labels must be unique"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 p1, 0x0

    throw p1
.end method
