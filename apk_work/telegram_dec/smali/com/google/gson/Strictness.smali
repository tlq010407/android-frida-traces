.class public final enum Lcom/google/gson/Strictness;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/google/gson/Strictness;

.field public static final enum LEGACY_STRICT:Lcom/google/gson/Strictness;

.field public static final enum LENIENT:Lcom/google/gson/Strictness;

.field public static final enum STRICT:Lcom/google/gson/Strictness;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/google/gson/Strictness;

    const-string v1, "LENIENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/gson/Strictness;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gson/Strictness;->LENIENT:Lcom/google/gson/Strictness;

    new-instance v1, Lcom/google/gson/Strictness;

    const-string v3, "LEGACY_STRICT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/gson/Strictness;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/gson/Strictness;->LEGACY_STRICT:Lcom/google/gson/Strictness;

    new-instance v3, Lcom/google/gson/Strictness;

    const-string v5, "STRICT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/google/gson/Strictness;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/gson/Strictness;->STRICT:Lcom/google/gson/Strictness;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/google/gson/Strictness;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/google/gson/Strictness;->$VALUES:[Lcom/google/gson/Strictness;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/gson/Strictness;
    .locals 1

    const-class v0, Lcom/google/gson/Strictness;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/gson/Strictness;

    return-object p0
.end method

.method public static values()[Lcom/google/gson/Strictness;
    .locals 1

    sget-object v0, Lcom/google/gson/Strictness;->$VALUES:[Lcom/google/gson/Strictness;

    invoke-virtual {v0}, [Lcom/google/gson/Strictness;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/gson/Strictness;

    return-object v0
.end method
