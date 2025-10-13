.class public Lorg/telegram/messenger/AppGlobalConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/AppGlobalConfig$ConfigInt;,
        Lorg/telegram/messenger/AppGlobalConfig$ConfigLong;,
        Lorg/telegram/messenger/AppGlobalConfig$ConfigTime;,
        Lorg/telegram/messenger/AppGlobalConfig$ConfigDouble;,
        Lorg/telegram/messenger/AppGlobalConfig$ConfigInternal;,
        Lorg/telegram/messenger/AppGlobalConfig$ConfigBoolean;,
        Lorg/telegram/messenger/AppGlobalConfig$ConfigString;
    }
.end annotation


# instance fields
.field private final map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/AppGlobalConfig$ConfigInternal;",
            ">;"
        }
    .end annotation
.end field

.field public final starsPaidMessagesChannelAmountDefault:Lorg/telegram/messenger/AppGlobalConfig$ConfigInt;

.field public final starsSuggestedPostAgeMin:Lorg/telegram/messenger/AppGlobalConfig$ConfigTime;

.field public final starsSuggestedPostAmountMax:Lorg/telegram/messenger/AppGlobalConfig$ConfigInt;

.field public final starsSuggestedPostAmountMin:Lorg/telegram/messenger/AppGlobalConfig$ConfigInt;

.field public final starsSuggestedPostCommissionPermille:Lorg/telegram/messenger/AppGlobalConfig$ConfigInt;

.field public final starsSuggestedPostFutureMax:Lorg/telegram/messenger/AppGlobalConfig$ConfigTime;

.field public final starsSuggestedPostFutureMin:Lorg/telegram/messenger/AppGlobalConfig$ConfigTime;

.field public final tonSuggestedPostAmountMax:Lorg/telegram/messenger/AppGlobalConfig$ConfigLong;

.field public final tonSuggestedPostAmountMin:Lorg/telegram/messenger/AppGlobalConfig$ConfigLong;

.field public final tonSuggestedPostCommissionPermille:Lorg/telegram/messenger/AppGlobalConfig$ConfigInt;

.field public final tonUsdRate:Lorg/telegram/messenger/AppGlobalConfig$ConfigDouble;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/AppGlobalConfig;->map:Ljava/util/HashMap;

    const-string v0, "stars_paid_messages_channel_amount_default"

    const/16 v1, 0xa

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/AppGlobalConfig;->ofInt(Ljava/lang/String;I)Lorg/telegram/messenger/AppGlobalConfig$ConfigInt;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/AppGlobalConfig;->starsPaidMessagesChannelAmountDefault:Lorg/telegram/messenger/AppGlobalConfig$ConfigInt;

    const-string v0, "stars_suggested_post_commission_permille"

    const/16 v1, 0x352

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/AppGlobalConfig;->ofInt(Ljava/lang/String;I)Lorg/telegram/messenger/AppGlobalConfig$ConfigInt;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/AppGlobalConfig;->starsSuggestedPostCommissionPermille:Lorg/telegram/messenger/AppGlobalConfig$ConfigInt;

    const-string v0, "stars_suggested_post_amount_min"

    const/4 v2, 0x5

    invoke-direct {p0, v0, v2}, Lorg/telegram/messenger/AppGlobalConfig;->ofInt(Ljava/lang/String;I)Lorg/telegram/messenger/AppGlobalConfig$ConfigInt;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/AppGlobalConfig;->starsSuggestedPostAmountMin:Lorg/telegram/messenger/AppGlobalConfig$ConfigInt;

    const-string v0, "stars_suggested_post_amount_max"

    const v2, 0x186a0

    invoke-direct {p0, v0, v2}, Lorg/telegram/messenger/AppGlobalConfig;->ofInt(Ljava/lang/String;I)Lorg/telegram/messenger/AppGlobalConfig$ConfigInt;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/AppGlobalConfig;->starsSuggestedPostAmountMax:Lorg/telegram/messenger/AppGlobalConfig$ConfigInt;

    const-string v0, "ton_suggested_post_commission_permille"

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/AppGlobalConfig;->ofInt(Ljava/lang/String;I)Lorg/telegram/messenger/AppGlobalConfig$ConfigInt;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/AppGlobalConfig;->tonSuggestedPostCommissionPermille:Lorg/telegram/messenger/AppGlobalConfig$ConfigInt;

    const-string v0, "ton_suggested_post_amount_min"

    const-wide/32 v1, 0x989680

    invoke-direct {p0, v0, v1, v2}, Lorg/telegram/messenger/AppGlobalConfig;->ofLong(Ljava/lang/String;J)Lorg/telegram/messenger/AppGlobalConfig$ConfigLong;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/AppGlobalConfig;->tonSuggestedPostAmountMin:Lorg/telegram/messenger/AppGlobalConfig$ConfigLong;

    const-string v0, "ton_suggested_post_amount_max"

    const-wide v1, 0x9184e72a000L

    invoke-direct {p0, v0, v1, v2}, Lorg/telegram/messenger/AppGlobalConfig;->ofLong(Ljava/lang/String;J)Lorg/telegram/messenger/AppGlobalConfig$ConfigLong;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/AppGlobalConfig;->tonSuggestedPostAmountMax:Lorg/telegram/messenger/AppGlobalConfig$ConfigLong;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-string v1, "stars_suggested_post_age_min"

    const-wide/32 v2, 0x15180

    invoke-direct {p0, v1, v2, v3, v0}, Lorg/telegram/messenger/AppGlobalConfig;->ofTime(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)Lorg/telegram/messenger/AppGlobalConfig$ConfigTime;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/AppGlobalConfig;->starsSuggestedPostAgeMin:Lorg/telegram/messenger/AppGlobalConfig$ConfigTime;

    const-string v1, "stars_suggested_post_future_min"

    const-wide/16 v2, 0x12c

    invoke-direct {p0, v1, v2, v3, v0}, Lorg/telegram/messenger/AppGlobalConfig;->ofTime(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)Lorg/telegram/messenger/AppGlobalConfig$ConfigTime;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/AppGlobalConfig;->starsSuggestedPostFutureMin:Lorg/telegram/messenger/AppGlobalConfig$ConfigTime;

    const-string v1, "stars_suggested_post_future_max"

    const-wide/32 v2, 0x28de80

    invoke-direct {p0, v1, v2, v3, v0}, Lorg/telegram/messenger/AppGlobalConfig;->ofTime(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)Lorg/telegram/messenger/AppGlobalConfig$ConfigTime;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/AppGlobalConfig;->starsSuggestedPostFutureMax:Lorg/telegram/messenger/AppGlobalConfig$ConfigTime;

    const-string v0, "ton_usd_rate"

    const-wide/high16 v1, 0x4008000000000000L    # 3.0

    invoke-direct {p0, v0, v1, v2}, Lorg/telegram/messenger/AppGlobalConfig;->ofDouble(Ljava/lang/String;D)Lorg/telegram/messenger/AppGlobalConfig$ConfigDouble;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/AppGlobalConfig;->tonUsdRate:Lorg/telegram/messenger/AppGlobalConfig$ConfigDouble;

    return-void
.end method

.method private ofBoolean(Ljava/lang/String;Z)Lorg/telegram/messenger/AppGlobalConfig$ConfigBoolean;
    .locals 2

    new-instance v0, Lorg/telegram/messenger/AppGlobalConfig$ConfigBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lorg/telegram/messenger/AppGlobalConfig$ConfigBoolean;-><init>(Ljava/lang/String;ZLorg/telegram/messenger/AppGlobalConfig$1;)V

    iget-object p2, p0, Lorg/telegram/messenger/AppGlobalConfig;->map:Ljava/util/HashMap;

    invoke-static {v0}, Lorg/telegram/messenger/AppGlobalConfig$ConfigBoolean;->access$1700(Lorg/telegram/messenger/AppGlobalConfig$ConfigBoolean;)Lorg/telegram/messenger/AppGlobalConfig$ConfigBoolean$Internal;

    move-result-object v1

    invoke-virtual {p2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private ofDouble(Ljava/lang/String;D)Lorg/telegram/messenger/AppGlobalConfig$ConfigDouble;
    .locals 2

    new-instance v0, Lorg/telegram/messenger/AppGlobalConfig$ConfigDouble;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/telegram/messenger/AppGlobalConfig$ConfigDouble;-><init>(Ljava/lang/String;DLorg/telegram/messenger/AppGlobalConfig$1;)V

    iget-object p2, p0, Lorg/telegram/messenger/AppGlobalConfig;->map:Ljava/util/HashMap;

    invoke-static {v0}, Lorg/telegram/messenger/AppGlobalConfig$ConfigDouble;->access$1500(Lorg/telegram/messenger/AppGlobalConfig$ConfigDouble;)Lorg/telegram/messenger/AppGlobalConfig$ConfigDouble$Internal;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private ofInt(Ljava/lang/String;I)Lorg/telegram/messenger/AppGlobalConfig$ConfigInt;
    .locals 2

    new-instance v0, Lorg/telegram/messenger/AppGlobalConfig$ConfigInt;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lorg/telegram/messenger/AppGlobalConfig$ConfigInt;-><init>(Ljava/lang/String;ILorg/telegram/messenger/AppGlobalConfig$1;)V

    iget-object p2, p0, Lorg/telegram/messenger/AppGlobalConfig;->map:Ljava/util/HashMap;

    invoke-static {v0}, Lorg/telegram/messenger/AppGlobalConfig$ConfigInt;->access$1100(Lorg/telegram/messenger/AppGlobalConfig$ConfigInt;)Lorg/telegram/messenger/AppGlobalConfig$ConfigInt$Internal;

    move-result-object v1

    invoke-virtual {p2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private ofLong(Ljava/lang/String;J)Lorg/telegram/messenger/AppGlobalConfig$ConfigLong;
    .locals 2

    new-instance v0, Lorg/telegram/messenger/AppGlobalConfig$ConfigLong;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/telegram/messenger/AppGlobalConfig$ConfigLong;-><init>(Ljava/lang/String;JLorg/telegram/messenger/AppGlobalConfig$1;)V

    iget-object p2, p0, Lorg/telegram/messenger/AppGlobalConfig;->map:Ljava/util/HashMap;

    invoke-static {v0}, Lorg/telegram/messenger/AppGlobalConfig$ConfigLong;->access$1300(Lorg/telegram/messenger/AppGlobalConfig$ConfigLong;)Lorg/telegram/messenger/AppGlobalConfig$ConfigLong$Internal;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private ofString(Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/AppGlobalConfig$ConfigString;
    .locals 2

    new-instance v0, Lorg/telegram/messenger/AppGlobalConfig$ConfigString;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lorg/telegram/messenger/AppGlobalConfig$ConfigString;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/AppGlobalConfig$1;)V

    iget-object p2, p0, Lorg/telegram/messenger/AppGlobalConfig;->map:Ljava/util/HashMap;

    invoke-static {v0}, Lorg/telegram/messenger/AppGlobalConfig$ConfigString;->access$1900(Lorg/telegram/messenger/AppGlobalConfig$ConfigString;)Lorg/telegram/messenger/AppGlobalConfig$ConfigString$Internal;

    move-result-object v1

    invoke-virtual {p2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private ofTime(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)Lorg/telegram/messenger/AppGlobalConfig$ConfigTime;
    .locals 7

    new-instance v6, Lorg/telegram/messenger/AppGlobalConfig$ConfigTime;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p1

    move-object v2, p4

    move-wide v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/AppGlobalConfig$ConfigTime;-><init>(Ljava/lang/String;Ljava/util/concurrent/TimeUnit;JLorg/telegram/messenger/AppGlobalConfig$1;)V

    iget-object p2, p0, Lorg/telegram/messenger/AppGlobalConfig;->map:Ljava/util/HashMap;

    invoke-static {v6}, Lorg/telegram/messenger/AppGlobalConfig$ConfigTime;->access$2100(Lorg/telegram/messenger/AppGlobalConfig$ConfigTime;)Lorg/telegram/messenger/AppGlobalConfig$ConfigLong$Internal;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v6
.end method


# virtual methods
.method public apply(Landroid/content/SharedPreferences$Editor;Lorg/telegram/tgnet/TLRPC$TL_jsonObject;)Z
    .locals 6

    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$TL_jsonObject;->value:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v3, p2, Lorg/telegram/tgnet/TLRPC$TL_jsonObject;->value:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_jsonObjectValue;

    iget-object v4, p0, Lorg/telegram/messenger/AppGlobalConfig;->map:Ljava/util/HashMap;

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$TL_jsonObjectValue;->key:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/AppGlobalConfig$ConfigInternal;

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_jsonObjectValue;->value:Lorg/telegram/tgnet/TLRPC$JSONValue;

    invoke-interface {v4, p1, v3}, Lorg/telegram/messenger/AppGlobalConfig$ConfigInternal;->apply(Landroid/content/SharedPreferences$Editor;Lorg/telegram/tgnet/TLRPC$JSONValue;)Z

    move-result v3

    or-int/2addr v2, v3

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public load(Landroid/content/SharedPreferences;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/AppGlobalConfig;->map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/AppGlobalConfig$ConfigInternal;

    :try_start_0
    invoke-interface {v1, p1}, Lorg/telegram/messenger/AppGlobalConfig$ConfigInternal;->load(Landroid/content/SharedPreferences;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-void
.end method
