.class public final Lorg/telegram/ui/web/BotWebViewContainer$PopupButton;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/web/BotWebViewContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PopupButton"
.end annotation


# instance fields
.field public id:Ljava/lang/String;

.field public text:Ljava/lang/String;

.field public textColorKey:I


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$PopupButton;->textColorKey:I

    const-string v1, "id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/web/BotWebViewContainer$PopupButton;->id:Ljava/lang/String;

    const-string v1, "type"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x3

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "default"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_1
    const-string v2, "close"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_2
    const-string v2, "ok"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v2, "cancel"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_4
    const-string v2, "destructive"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x5

    :cond_0
    :goto_0
    if-eq v0, v5, :cond_4

    if-eq v0, v6, :cond_3

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_1

    goto :goto_1

    :cond_1
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    iput v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$PopupButton;->textColorKey:I

    :goto_1
    const-string v0, "text"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_2
    iput-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$PopupButton;->text:Ljava/lang/String;

    goto :goto_4

    :cond_2
    sget p1, Lorg/telegram/messenger/R$string;->Cancel:I

    :goto_3
    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_3
    sget p1, Lorg/telegram/messenger/R$string;->Close:I

    goto :goto_3

    :cond_4
    sget p1, Lorg/telegram/messenger/R$string;->OK:I

    goto :goto_3

    :goto_4
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6d138a7e -> :sswitch_4
        -0x5185d186 -> :sswitch_3
        0xddc -> :sswitch_2
        0x5a5ddf8 -> :sswitch_1
        0x5c13d641 -> :sswitch_0
    .end sparse-switch
.end method
