.class public Lorg/telegram/ui/bots/WebViewRequestProps;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public allowWrite:Z

.field public app:Lorg/telegram/tgnet/TLRPC$BotApp;

.field public botId:J

.field public botUser:Lorg/telegram/tgnet/TLRPC$User;

.field public buttonText:Ljava/lang/String;

.field public buttonUrl:Ljava/lang/String;

.field public compact:Z

.field public currentAccount:I

.field public flags:I

.field public fullscreen:Z

.field public monoforumTopicId:J

.field public peerId:J

.field public replyToMsgId:I

.field public response:Lorg/telegram/tgnet/TLObject;

.field public responseTime:J

.field public silent:Z

.field public startParam:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static of(IJJLjava/lang/String;Ljava/lang/String;IIJZLorg/telegram/tgnet/TLRPC$BotApp;ZLjava/lang/String;Lorg/telegram/tgnet/TLRPC$User;IZZ)Lorg/telegram/ui/bots/WebViewRequestProps;
    .locals 7

    move/from16 v0, p17

    move/from16 v1, p18

    const-string v2, "mode"

    new-instance v3, Lorg/telegram/ui/bots/WebViewRequestProps;

    invoke-direct {v3}, Lorg/telegram/ui/bots/WebViewRequestProps;-><init>()V

    move v4, p0

    iput v4, v3, Lorg/telegram/ui/bots/WebViewRequestProps;->currentAccount:I

    move-wide v4, p1

    iput-wide v4, v3, Lorg/telegram/ui/bots/WebViewRequestProps;->peerId:J

    move-wide v4, p3

    iput-wide v4, v3, Lorg/telegram/ui/bots/WebViewRequestProps;->botId:J

    move-object v4, p5

    iput-object v4, v3, Lorg/telegram/ui/bots/WebViewRequestProps;->buttonText:Ljava/lang/String;

    move-object v4, p6

    iput-object v4, v3, Lorg/telegram/ui/bots/WebViewRequestProps;->buttonUrl:Ljava/lang/String;

    move v5, p7

    iput v5, v3, Lorg/telegram/ui/bots/WebViewRequestProps;->type:I

    move v5, p8

    iput v5, v3, Lorg/telegram/ui/bots/WebViewRequestProps;->replyToMsgId:I

    move-wide/from16 v5, p9

    iput-wide v5, v3, Lorg/telegram/ui/bots/WebViewRequestProps;->monoforumTopicId:J

    move/from16 v5, p11

    iput-boolean v5, v3, Lorg/telegram/ui/bots/WebViewRequestProps;->silent:Z

    move-object/from16 v5, p12

    iput-object v5, v3, Lorg/telegram/ui/bots/WebViewRequestProps;->app:Lorg/telegram/tgnet/TLRPC$BotApp;

    move/from16 v5, p13

    iput-boolean v5, v3, Lorg/telegram/ui/bots/WebViewRequestProps;->allowWrite:Z

    move-object/from16 v5, p14

    iput-object v5, v3, Lorg/telegram/ui/bots/WebViewRequestProps;->startParam:Ljava/lang/String;

    move-object/from16 v5, p15

    iput-object v5, v3, Lorg/telegram/ui/bots/WebViewRequestProps;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    move/from16 v5, p16

    iput v5, v3, Lorg/telegram/ui/bots/WebViewRequestProps;->flags:I

    iput-boolean v0, v3, Lorg/telegram/ui/bots/WebViewRequestProps;->compact:Z

    iput-boolean v1, v3, Lorg/telegram/ui/bots/WebViewRequestProps;->fullscreen:Z

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {p6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "compact"

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    iput-boolean v1, v3, Lorg/telegram/ui/bots/WebViewRequestProps;->compact:Z

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "fullscreen"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, v3, Lorg/telegram/ui/bots/WebViewRequestProps;->fullscreen:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-object v3
.end method


# virtual methods
.method public applyResponse(Lorg/telegram/tgnet/TLObject;)V
    .locals 2

    iput-object p1, p0, Lorg/telegram/ui/bots/WebViewRequestProps;->response:Lorg/telegram/tgnet/TLObject;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/bots/WebViewRequestProps;->responseTime:J

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    instance-of v0, p1, Lorg/telegram/ui/bots/WebViewRequestProps;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/telegram/ui/bots/WebViewRequestProps;

    iget v0, p0, Lorg/telegram/ui/bots/WebViewRequestProps;->currentAccount:I

    iget v2, p1, Lorg/telegram/ui/bots/WebViewRequestProps;->currentAccount:I

    if-ne v0, v2, :cond_5

    iget-wide v2, p0, Lorg/telegram/ui/bots/WebViewRequestProps;->peerId:J

    iget-wide v4, p1, Lorg/telegram/ui/bots/WebViewRequestProps;->peerId:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_5

    iget-wide v2, p0, Lorg/telegram/ui/bots/WebViewRequestProps;->botId:J

    iget-wide v4, p1, Lorg/telegram/ui/bots/WebViewRequestProps;->botId:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/bots/WebViewRequestProps;->buttonUrl:Ljava/lang/String;

    iget-object v2, p1, Lorg/telegram/ui/bots/WebViewRequestProps;->buttonUrl:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lorg/telegram/ui/bots/WebViewRequestProps;->type:I

    iget v2, p1, Lorg/telegram/ui/bots/WebViewRequestProps;->type:I

    if-ne v0, v2, :cond_5

    iget v0, p0, Lorg/telegram/ui/bots/WebViewRequestProps;->replyToMsgId:I

    iget v2, p1, Lorg/telegram/ui/bots/WebViewRequestProps;->replyToMsgId:I

    if-ne v0, v2, :cond_5

    iget-boolean v0, p0, Lorg/telegram/ui/bots/WebViewRequestProps;->silent:Z

    iget-boolean v2, p1, Lorg/telegram/ui/bots/WebViewRequestProps;->silent:Z

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/bots/WebViewRequestProps;->app:Lorg/telegram/tgnet/TLRPC$BotApp;

    const-wide/16 v2, 0x0

    if-nez v0, :cond_1

    move-wide v4, v2

    goto :goto_0

    :cond_1
    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$BotApp;->id:J

    :goto_0
    iget-object v0, p1, Lorg/telegram/ui/bots/WebViewRequestProps;->app:Lorg/telegram/tgnet/TLRPC$BotApp;

    if-nez v0, :cond_2

    move-wide v6, v2

    goto :goto_1

    :cond_2
    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$BotApp;->id:J

    :goto_1
    cmp-long v0, v4, v6

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lorg/telegram/ui/bots/WebViewRequestProps;->allowWrite:Z

    iget-boolean v4, p1, Lorg/telegram/ui/bots/WebViewRequestProps;->allowWrite:Z

    if-ne v0, v4, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/bots/WebViewRequestProps;->startParam:Ljava/lang/String;

    iget-object v4, p1, Lorg/telegram/ui/bots/WebViewRequestProps;->startParam:Ljava/lang/String;

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/bots/WebViewRequestProps;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v0, :cond_3

    move-wide v4, v2

    goto :goto_2

    :cond_3
    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    :goto_2
    iget-object v0, p1, Lorg/telegram/ui/bots/WebViewRequestProps;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    :goto_3
    cmp-long v0, v4, v2

    if-nez v0, :cond_5

    iget v0, p0, Lorg/telegram/ui/bots/WebViewRequestProps;->flags:I

    iget p1, p1, Lorg/telegram/ui/bots/WebViewRequestProps;->flags:I

    if-ne v0, p1, :cond_5

    const/4 v1, 0x1

    :cond_5
    return v1
.end method
