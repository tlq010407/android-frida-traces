.class Lorg/telegram/messenger/AppGlobalConfig$ConfigString$Internal;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/AppGlobalConfig$ConfigInternal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/AppGlobalConfig$ConfigString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Internal"
.end annotation


# instance fields
.field private final defaultValue:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/AppGlobalConfig$ConfigString$Internal;->name:Ljava/lang/String;

    iput-object p2, p0, Lorg/telegram/messenger/AppGlobalConfig$ConfigString$Internal;->defaultValue:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/AppGlobalConfig$1;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/AppGlobalConfig$ConfigString$Internal;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lorg/telegram/messenger/AppGlobalConfig$ConfigString$Internal;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/telegram/messenger/AppGlobalConfig$ConfigString$Internal;->value:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public apply(Landroid/content/SharedPreferences$Editor;Lorg/telegram/tgnet/TLRPC$JSONValue;)Z
    .locals 2

    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_jsonString;

    if-eqz v0, :cond_0

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_jsonString;

    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$TL_jsonString;->value:Ljava/lang/String;

    iget-object v1, p0, Lorg/telegram/messenger/AppGlobalConfig$ConfigString$Internal;->value:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_jsonString;->value:Ljava/lang/String;

    iput-object p2, p0, Lorg/telegram/messenger/AppGlobalConfig$ConfigString$Internal;->value:Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/messenger/AppGlobalConfig$ConfigString$Internal;->name:Ljava/lang/String;

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public load(Landroid/content/SharedPreferences;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/AppGlobalConfig$ConfigString$Internal;->name:Ljava/lang/String;

    iget-object v1, p0, Lorg/telegram/messenger/AppGlobalConfig$ConfigString$Internal;->defaultValue:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/messenger/AppGlobalConfig$ConfigString$Internal;->value:Ljava/lang/String;

    return-void
.end method
