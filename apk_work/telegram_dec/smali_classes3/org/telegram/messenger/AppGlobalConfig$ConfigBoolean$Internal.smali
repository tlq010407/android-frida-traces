.class Lorg/telegram/messenger/AppGlobalConfig$ConfigBoolean$Internal;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/AppGlobalConfig$ConfigInternal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/AppGlobalConfig$ConfigBoolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Internal"
.end annotation


# instance fields
.field private final defaultValue:Z

.field private final name:Ljava/lang/String;

.field private value:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/AppGlobalConfig$ConfigBoolean$Internal;->name:Ljava/lang/String;

    iput-boolean p2, p0, Lorg/telegram/messenger/AppGlobalConfig$ConfigBoolean$Internal;->defaultValue:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ZLorg/telegram/messenger/AppGlobalConfig$1;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/AppGlobalConfig$ConfigBoolean$Internal;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$900(Lorg/telegram/messenger/AppGlobalConfig$ConfigBoolean$Internal;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/messenger/AppGlobalConfig$ConfigBoolean$Internal;->value:Z

    return p0
.end method


# virtual methods
.method public apply(Landroid/content/SharedPreferences$Editor;Lorg/telegram/tgnet/TLRPC$JSONValue;)Z
    .locals 1

    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_jsonBool;

    if-eqz v0, :cond_0

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_jsonBool;

    iget-boolean p2, p2, Lorg/telegram/tgnet/TLRPC$TL_jsonBool;->value:Z

    iget-boolean v0, p0, Lorg/telegram/messenger/AppGlobalConfig$ConfigBoolean$Internal;->value:Z

    if-eq p2, v0, :cond_0

    iput-boolean p2, p0, Lorg/telegram/messenger/AppGlobalConfig$ConfigBoolean$Internal;->value:Z

    iget-object v0, p0, Lorg/telegram/messenger/AppGlobalConfig$ConfigBoolean$Internal;->name:Ljava/lang/String;

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public load(Landroid/content/SharedPreferences;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/AppGlobalConfig$ConfigBoolean$Internal;->name:Ljava/lang/String;

    iget-boolean v1, p0, Lorg/telegram/messenger/AppGlobalConfig$ConfigBoolean$Internal;->defaultValue:Z

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/messenger/AppGlobalConfig$ConfigBoolean$Internal;->value:Z

    return-void
.end method
